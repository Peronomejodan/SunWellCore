/*
 * Copyright (C) 
 * Copyright (C) 
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#ifndef _FORMATIONS_H
#define _FORMATIONS_H

#include "Define.h"
#include "UnorderedMap.h"
#include <map>

class Creature;
class CreatureGroup;

struct FormationInfo
{
    uint32 leaderGUID;
    float follow_dist;
    float follow_angle;
    uint8 groupAI;
    uint16 point_1;
    uint16 point_2;
};

typedef UNORDERED_MAP<uint32/*memberDBGUID*/, FormationInfo*>   CreatureGroupInfoType;

class FormationMgr
{
    friend class ACE_Singleton<FormationMgr, ACE_Null_Mutex>;
    public:
        FormationMgr() { }
        ~FormationMgr();
        void AddCreatureToGroup(uint32 group_id, Creature* creature);
        void RemoveCreatureFromGroup(CreatureGroup* group, Creature* creature);
        void LoadCreatureFormations();
        CreatureGroupInfoType CreatureGroupMap;
};

class CreatureGroup
{
    public:
        // pussywizard: moved public to the top so it compiles and typedef is public
        typedef std::map<Creature*, FormationInfo*>  CreatureGroupMemberType;

        //Group cannot be created empty
        explicit CreatureGroup(uint32 id) : m_leader(NULL), m_groupID(id), m_Formed(false) {}
        ~CreatureGroup() {}

        Creature* getLeader() const { return m_leader; }
        uint32 GetId() const { return m_groupID; }
        bool isEmpty() const { return m_members.empty(); }
        bool isFormed() const { return m_Formed; }
        const CreatureGroupMemberType& GetMembers() const { return m_members; }

        void AddMember(Creature* member);
        void RemoveMember(Creature* member);
        void FormationReset(bool dismiss);

        void LeaderMoveTo(float x, float y, float z, bool run);
        void MemberAttackStart(Creature* member, Unit* target);

    private:
        Creature* m_leader; //Important do not forget sometimes to work with pointers instead synonims :D:D
        CreatureGroupMemberType m_members;

        uint32 m_groupID;
        bool m_Formed;
};

#define sFormationMgr ACE_Singleton<FormationMgr, ACE_Null_Mutex>::instance()

#endif
