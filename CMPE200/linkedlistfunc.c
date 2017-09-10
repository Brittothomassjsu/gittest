#include<stdio.h>
#include<stdlib.h>
typedef unsigned int u32;
typedef unsigned long long u64;
union node_t {
  u64 d64;
  struct {
 	  u32 value;
 	  u32 next;
  } s;
};
union list_t {
  u64 d64;
  struct {
 	  u32 head;
 	  u32 tail;
  } s;};
void list_init(union list_t* list)
{
  list->d64 = 0;
}
void list_head_append(union list_t *list, u32 nID, union node_t* nodes)
{
    if (list->d64 == 0) {
        list->s.head = nID;
        list->s.tail = nID;
    } else {
        union node_t * head = &nodes[nID];
        head->s.next = list->s.head;
        list->s.head = nID;
    }}
