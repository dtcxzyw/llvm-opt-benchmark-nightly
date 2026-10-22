Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/xfrm_state?download=true
inline.NumInlined: 439
inline.NumDeleted: 167
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@xfrm_state_register_afinfo:bb.a
; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -97, 1) i32 @xfrm_state_unregister_afinfo(ptr nofree noundef readonly captures(address) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i8, ptr %0, align 8                 ; 2 uses
  %i.b = icmp ugt i8 %i.a, 45
  br i1 %i.b, label %bb.b, label %.critedge, !prof !19

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "1228: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1228b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1228) #15, !srcloc !152
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 3106, i32 2305, i64 16) #15, !srcloc !153
  tail call void asm sideeffect "1229: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1229b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1229) #15, !srcloc !154
  br label %bb.f

.critedge:                                        ; preds = %bb.a
  tail call void @_raw_spin_lock_bh(ptr noundef @xfrm_state_afinfo_lock) #14
  %i.c = load i8, ptr %0, align 8
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr [8 x i8], ptr @xfrm_state_afinfo, i64 %i.d ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.e, label %bb.c, !prof !19

bb.c:                                             ; preds = %.critedge
  %i.g = zext nneg i8 %i.a to i64
  %i.h = getelementptr [8 x i8], ptr @xfrm_state_afinfo, i64 %i.g
  %i.i = load volatile ptr, ptr %i.h, align 8
  %.not17 = icmp eq ptr %i.i, %0
  br i1 %.not17, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store volatile ptr null, ptr %i.e, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %.critedge
  %.014 = phi i32 [ 0, %.critedge ], [ 0, %bb.d ], [ -22, %bb.c ]
  tail call void @_raw_spin_unlock_bh(ptr noundef @xfrm_state_afinfo_lock) #14
  tail call void @synchronize_rcu() #14
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %.0 = phi i32 [ %.014, %bb.e ], [ -97, %bb.b ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, argmem: none, target_mem: none)
define dso_local ptr @xfrm_state_afinfo_get_rcu(i32 noundef %0) #9 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ugt i32 %0, 45
  br i1 %i.a, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr [8 x i8], ptr @xfrm_state_afinfo, i64 %i.b
  %i.d = load volatile ptr, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @xfrm_state_mtu(ptr noundef %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 760
  %i.b = load volatile ptr, ptr %i.a, align 8     ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 232
  %i.d = load i8, ptr %i.c, align 8
  %i.e = icmp eq i8 %i.d, 2
  %i.f = icmp ne ptr %i.b, null
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.b, i64 8
  %i.h = load i8, ptr %i.g, align 8
  %.not = icmp eq i8 %i.h, 50
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr i8, ptr %0, i64 276
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %.not47 = icmp sgt i32 %1, %i.j
  %i.k = sub i32 %1, %i.j
  %spec.select = select i1 %.not47, i32 %i.k, i32 1
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %0, i64 800
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 32
  %.val = load ptr, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %.val, i64 36
  %.val.val = load i32, ptr %i.o, align 4
  %i.p = add i32 %.val.val, 3
  %i.q = and i32 %i.p, -4
  %i.r = getelementptr i8, ptr %0, i64 252
  %i.s = load i8, ptr %i.r, align 4
  switch i8 %i.s, label %bb.f [
    i8 0, label %bb.e
    i8 4, label %bb.e
    i8 1, label %bb.j
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.t = getelementptr i8, ptr %0, i64 258
  %i.u = load i16, ptr %i.t, align 2              ; 2 uses
  %switch.selectcmp = icmp eq i16 %i.u, 10
  %switch.select = select i1 %switch.selectcmp, i32 40, i32 0
  %switch.selectcmp48 = icmp eq i16 %i.u, 2
  %switch.select49 = select i1 %switch.selectcmp48, i32 20, i32 %switch.select
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.v = getelementptr i8, ptr %0, i64 816
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not44 = icmp eq ptr %i.w, null
  br i1 %.not44, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr i8, ptr %i.w, i64 56
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not45 = icmp eq ptr %i.y, null
  br i1 %.not45, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = tail call i32 %i.y(ptr noundef %0, i32 noundef %1) #14
  br label %bb.m

bb.i:                                             ; preds = %bb.f, %bb.g
  tail call void asm sideeffect "1241: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1241b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1241) #15, !srcloc !155
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 3192, i32 2307, i64 16) #15, !srcloc !156
  tail call void asm sideeffect "1242: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1242b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1242) #15, !srcloc !157
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.i, %bb.d
  %.035 = phi i32 [ 0, %bb.i ], [ 0, %bb.d ], [ %switch.select49, %bb.e ] ; 2 uses
  %i.aa = getelementptr i8, ptr %0, i64 276
  %i.ab = load i32, ptr %i.aa, align 4
  %.val50 = load i32, ptr %i.m, align 8
  %i.ac = add i32 %i.ab, %.035
  %i.ad = add i32 %i.ac, %.val50                  ; 2 uses
  %.not46 = icmp ugt i32 %1, %i.ad
  br i1 %.not46, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ae = sub nuw i32 %1, %i.ad
  %i.af = sub i32 0, %i.q
  %i.ag = and i32 %i.ae, %i.af                    ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = add nsw i32 %.035, -2
  %i.aj = add i32 %i.ai, %i.ag
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %bb.k, %bb.j, %bb.l, %bb.h
  %.0 = phi i32 [ %i.aj, %bb.l ], [ 1, %bb.k ], [ %i.z, %bb.h ], [ %spec.select, %bb.c ], [ 1, %bb.j ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @__xfrm_init_state(ptr noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 258
  %i.b = load i16, ptr %i.a, align 2              ; 7 uses
  %.not = icmp eq i16 %i.b, 2                     ; 2 uses
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 808
  %i.d = load i8, ptr %i.c, align 8
  switch i8 %i.d, label %bb.e [
    i8 0, label %bb.c
    i8 2, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %.val = load ptr, ptr %0, align 8
  %i.e = getelementptr i8, ptr %.val, i64 1449
  %i.f = load volatile i8, ptr %i.e, align 1
  %.not95 = icmp eq i8 %i.f, 0
  br i1 %.not95, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %0, i64 257        ; 2 uses
  %i.h = load i8, ptr %i.g, align 1
  %i.i = or i8 %i.h, 4
  store i8 %i.i, ptr %i.g, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.a
  %i.j = getelementptr i8, ptr %0, i64 180
  %i.k = load i16, ptr %i.j, align 4              ; 3 uses
  %.not96 = icmp eq i16 %i.k, 0
  %i.l = getelementptr i8, ptr %0, i64 252
  %i.m = load i8, ptr %i.l, align 4               ; 10 uses
  %i.n = icmp ugt i8 %i.m, 5                      ; 2 uses
  br i1 %.not96, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.n, label %xfrm_get_mode.exit.thread, label %bb.g, !prof !19

bb.g:                                             ; preds = %bb.f
  switch i16 %i.k, label %xfrm_get_mode.exit.thread [
    i16 2, label %bb.h
    i16 10, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %2 = add nsw i8 %i.m, -4
  %3 = icmp ult i8 %2, -2
  br i1 %3, label %xfrm_get_mode.exit, label %xfrm_get_mode.exit.thread

bb.i:                                             ; preds = %bb.g
  %.not.i.a = icmp eq i8 %i.m, 3
  br i1 %.not.i.a, label %xfrm_get_mode.exit.thread, label %xfrm_get_mode.exit

xfrm_get_mode.exit:                               ; preds = %bb.i, %bb.h
  %xfrm4_mode_map.sink = phi ptr [ @xfrm4_mode_map, %bb.h ], [ @xfrm6_mode_map, %bb.i ]
  %4 = zext nneg i8 %i.m to i64
  %5 = getelementptr [3 x i8], ptr %xfrm4_mode_map.sink, i64 %4 ; 4 uses
  %i.o = icmp eq ptr %5, null
  br i1 %i.o, label %xfrm_get_mode.exit.thread, label %bb.k

xfrm_get_mode.exit.thread:                        ; preds = %bb.h, %bb.i, %bb.g, %bb.f, %xfrm_get_mode.exit
  tail call void @do_trace_netlink_extack(ptr noundef @__xfrm_init_state.__msg) #14
  %.not117 = icmp eq ptr %1, null
  br i1 %.not117, label %bb.bh, label %bb.j

bb.j:                                             ; preds = %xfrm_get_mode.exit.thread
  store ptr @__xfrm_init_state.__msg, ptr %1, align 8
  br label %bb.bh

bb.k:                                             ; preds = %xfrm_get_mode.exit
  %i.p = getelementptr i8, ptr %5, i64 2
  %i.q = load i8, ptr %i.p, align 1
  %i.r = and i8 %i.q, 1
  %.not100 = icmp eq i8 %i.r, 0
  br i1 %.not100, label %bb.l, label %bb.x

bb.l:                                             ; preds = %bb.k
  %.not101 = icmp eq i16 %i.b, %i.k
  br i1 %.not101, label %.lr.ph.i.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @do_trace_netlink_extack(ptr noundef @__xfrm_init_state.__msg.6) #14
  %.not102 = icmp eq ptr %1, null
  br i1 %.not102, label %bb.bh, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr @__xfrm_init_state.__msg.6, ptr %1, align 8
  br label %bb.bh

bb.o:                                             ; preds = %bb.e
  br i1 %i.n, label %xfrm_get_mode.exit120.thread, label %bb.p, !prof !19

bb.p:                                             ; preds = %bb.o
  switch i16 %i.b, label %xfrm_get_mode.exit120.thread [
    i16 2, label %bb.q
    i16 10, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %6 = add nsw i8 %i.m, -4
  %7 = icmp ult i8 %6, -2
  br i1 %7, label %xfrm_get_mode.exit120, label %xfrm_get_mode.exit120.thread

bb.r:                                             ; preds = %bb.p
  %.not.i118 = icmp eq i8 %i.m, 3
  br i1 %.not.i118, label %xfrm_get_mode.exit120.thread, label %xfrm_get_mode.exit120

xfrm_get_mode.exit120:                            ; preds = %bb.r, %bb.q
  %xfrm4_mode_map.sink164 = phi ptr [ @xfrm4_mode_map, %bb.q ], [ @xfrm6_mode_map, %bb.r ]
  %8 = zext nneg i8 %i.m to i64
  %9 = getelementptr [3 x i8], ptr %xfrm4_mode_map.sink164, i64 %8 ; 2 uses
  %i.s = icmp eq ptr %9, null
  br i1 %i.s, label %xfrm_get_mode.exit120.thread, label %bb.t

xfrm_get_mode.exit120.thread:                     ; preds = %bb.q, %bb.r, %bb.p, %bb.o, %xfrm_get_mode.exit120
  tail call void @do_trace_netlink_extack(ptr noundef @__xfrm_init_state.__msg.7) #14
  %.not99 = icmp eq ptr %1, null
  br i1 %.not99, label %bb.bh, label %bb.s

bb.s:                                             ; preds = %xfrm_get_mode.exit120.thread
  store ptr @__xfrm_init_state.__msg.7, ptr %1, align 8
  br label %bb.bh

bb.t:                                             ; preds = %xfrm_get_mode.exit120
  %i.t = getelementptr i8, ptr %0, i64 768
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(3) %i.t, ptr noundef nonnull align 1 dereferenceable(3) %9, i64 3, i1 false)
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %10 = add nsw i8 %i.m, -4
  %11 = icmp ult i8 %10, -2
  br i1 %11, label %xfrm_get_mode.exit123, label %.lr.ph.i

bb.v:                                             ; preds = %bb.t
  %.not.i121 = icmp eq i8 %i.m, 3
  br i1 %.not.i121, label %.lr.ph.i, label %xfrm_get_mode.exit123

xfrm_get_mode.exit123:                            ; preds = %bb.v, %bb.u
  %xfrm4_mode_map.sink165 = phi ptr [ @xfrm4_mode_map, %bb.u ], [ @xfrm6_mode_map, %bb.v ]
  %12 = zext nneg i8 %i.m to i64
  %13 = getelementptr [3 x i8], ptr %xfrm4_mode_map.sink165, i64 %12 ; 3 uses
  %.not97 = icmp eq ptr %13, null
  br i1 %.not97, label %.lr.ph.i, label %bb.w

bb.w:                                             ; preds = %xfrm_get_mode.exit123
  %i.u = getelementptr i8, ptr %13, i64 2
  %i.v = load i8, ptr %i.u, align 1
  %i.w = and i8 %i.v, 1
  %.not98 = icmp eq i8 %i.w, 0
  br i1 %.not98, label %.lr.ph.i, label %.lr.ph.i.sink.split

bb.x:                                             ; preds = %bb.k
  %i.x = getelementptr i8, ptr %0, i64 768
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(3) %i.x, ptr noundef nonnull align 1 dereferenceable(3) %5, i64 3, i1 false)
  %i.y = icmp ugt i16 %i.b, 45
  br i1 %i.y, label %xfrm_get_type.exit.thread, label %.lr.ph.i, !prof !158

.lr.ph.i.sink.split:                              ; preds = %bb.w, %bb.l
  %.sink167 = phi i64 [ 768, %bb.l ], [ 771, %bb.w ]
  %.sink166 = phi ptr [ %5, %bb.l ], [ %13, %bb.w ]
  %i.z = getelementptr i8, ptr %0, i64 %.sink167
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(3) %i.z, ptr noundef nonnull align 1 dereferenceable(3) %.sink166, i64 3, i1 false)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.sink.split, %bb.w, %xfrm_get_mode.exit123, %bb.u, %bb.v, %bb.x
  %.in = getelementptr i8, ptr %0, i64 136
  %i.aa = load i8, ptr %.in, align 4              ; 3 uses
  %i.ab = zext nneg i16 %i.b to i32
  %i.ac = zext nneg i16 %i.b to i64
  %i.ad = getelementptr [8 x i8], ptr @xfrm_state_afinfo, i64 %i.ac ; 2 uses
  %i.ae = zext i8 %i.aa to i32
  tail call void @__rcu_read_lock() #14
  %i.af = load volatile ptr, ptr %i.ad, align 8   ; 2 uses
  %.not.i26.i = icmp eq ptr %i.af, null
  br i1 %.not.i26.i, label %xfrm_get_type.exit.thread140, label %xfrm_state_get_afinfo.exit.preheader.i, !prof !21

xfrm_state_get_afinfo.exit.preheader.i:           ; preds = %.lr.ph.i
  switch i8 %i.aa, label %.critedge.i [
    i8 108, label %bb.ae
    i8 51, label %bb.y
    i8 50, label %bb.z
    i8 4, label %bb.aa
    i8 60, label %bb.ab
    i8 43, label %bb.ac
    i8 41, label %bb.ad
  ]

bb.y:                                             ; preds = %xfrm_state_get_afinfo.exit.preheader.i
  br label %bb.ae

bb.z:                                             ; preds = %xfrm_state_get_afinfo.exit.preheader.i
  br label %bb.ae

bb.aa:                                            ; preds = %xfrm_state_get_afinfo.exit.preheader.i
  br label %bb.ae

bb.ab:                                            ; preds = %xfrm_state_get_afinfo.exit.preheader.i
  br label %bb.ae

bb.ac:                                            ; preds = %xfrm_state_get_afinfo.exit.preheader.i
  br label %bb.ae

bb.ad:                                            ; preds = %xfrm_state_get_afinfo.exit.preheader.i
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %xfrm_state_get_afinfo.exit.preheader.i
  %.sink.i = phi i64 [ 32, %bb.ad ], [ 56, %bb.ac ], [ 64, %bb.ab ], [ 24, %bb.aa ], [ 16, %bb.z ], [ 48, %bb.y ], [ 40, %xfrm_state_get_afinfo.exit.preheader.i ]
  %i.ag = getelementptr i8, ptr %i.af, i64 %.sink.i
  %.1.i = load ptr, ptr %i.ag, align 8            ; 3 uses
  %.not.i124 = icmp eq ptr %.1.i, null
  br i1 %.not.i124, label %.critedge.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ah = load ptr, ptr %.1.i, align 8
  %i.ai = tail call zeroext i1 @try_module_get(ptr noundef %i.ah) #14
  br i1 %i.ai, label %bb.ap, label %.critedge.i, !prof !20

.critedge.i:                                      ; preds = %bb.af, %bb.ae, %xfrm_state_get_afinfo.exit.preheader.i
  tail call void @__rcu_read_unlock() #14
  %i.aj = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef @.str.23, i32 noundef %i.ab, i32 noundef %i.ae) #14 ; 0 uses
  tail call void @__rcu_read_lock() #14
  %i.ak = load volatile ptr, ptr %i.ad, align 8   ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %xfrm_get_type.exit.thread140, label %xfrm_state_get_afinfo.exit.1.i, !prof !159

xfrm_state_get_afinfo.exit.1.i:                   ; preds = %.critedge.i
  switch i8 %i.aa, label %xfrm_get_type.exit.thread140 [
    i8 108, label %bb.al
    i8 51, label %bb.ak
    i8 50, label %bb.aj
    i8 4, label %bb.ai
    i8 60, label %bb.ah
    i8 43, label %bb.ag
    i8 41, label %bb.am
  ]

bb.ag:                                            ; preds = %xfrm_state_get_afinfo.exit.1.i
  br label %bb.am

bb.ah:                                            ; preds = %xfrm_state_get_afinfo.exit.1.i
  br label %bb.am

bb.ai:                                            ; preds = %xfrm_state_get_afinfo.exit.1.i
  br label %bb.am

bb.aj:                                            ; preds = %xfrm_state_get_afinfo.exit.1.i
  br label %bb.am

bb.ak:                                            ; preds = %xfrm_state_get_afinfo.exit.1.i
  br label %bb.am

bb.al:                                            ; preds = %xfrm_state_get_afinfo.exit.1.i
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %xfrm_state_get_afinfo.exit.1.i
  %.sink29.i = phi i64 [ 40, %bb.al ], [ 48, %bb.ak ], [ 16, %bb.aj ], [ 24, %bb.ai ], [ 64, %bb.ah ], [ 56, %bb.ag ], [ 32, %xfrm_state_get_afinfo.exit.1.i ]
  %i.al = getelementptr i8, ptr %i.ak, i64 %.sink29.i
  %.1.1.i = load ptr, ptr %i.al, align 8          ; 3 uses
  %.not.1.i = icmp eq ptr %.1.1.i, null
  br i1 %.not.1.i, label %xfrm_get_type.exit.thread140, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.am = load ptr, ptr %.1.1.i, align 8
  %i.an = tail call zeroext i1 @try_module_get(ptr noundef %i.am) #14
  br i1 %i.an, label %bb.ap, label %xfrm_get_type.exit.thread140, !prof !20

xfrm_get_type.exit.thread140:                     ; preds = %.lr.ph.i, %.critedge.i, %bb.an, %bb.am, %xfrm_state_get_afinfo.exit.1.i
  tail call void @__rcu_read_unlock() #14
  br label %xfrm_get_type.exit.thread

xfrm_get_type.exit.thread:                        ; preds = %bb.x, %xfrm_get_type.exit.thread140
  %i.ao = getelementptr i8, ptr %0, i64 760
  store ptr null, ptr %i.ao, align 8
  tail call void @do_trace_netlink_extack(ptr noundef @__xfrm_init_state.__msg.8) #14
  %.not116 = icmp eq ptr %1, null
  br i1 %.not116, label %bb.bh, label %bb.ao

bb.ao:                                            ; preds = %xfrm_get_type.exit.thread
  store ptr @__xfrm_init_state.__msg.8, ptr %1, align 8
  br label %bb.bh

bb.ap:                                            ; preds = %bb.an, %bb.af
  %.019.ph.i = phi ptr [ %.1.1.i, %bb.an ], [ %.1.i, %bb.af ] ; 2 uses
  tail call void @__rcu_read_unlock() #14
  %i.ap = getelementptr i8, ptr %0, i64 760
  store ptr %.019.ph.i, ptr %i.ap, align 8
  %i.aq = getelementptr i8, ptr %.019.ph.i, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = tail call i32 %i.ar(ptr noundef %0, ptr noundef %1) #14 ; 2 uses
  %.not103 = icmp eq i32 %i.as, 0
  br i1 %.not103, label %bb.aq, label %bb.bh

bb.aq:                                            ; preds = %bb.ap
  %i.at = getelementptr i8, ptr %0, i64 252
  %i.au = load i8, ptr %i.at, align 4             ; 6 uses
  %i.av = icmp ugt i8 %i.au, 5
  br i1 %i.av, label %xfrm_get_mode.exit128.thread, label %bb.ar, !prof !19

bb.ar:                                            ; preds = %bb.aq
  switch i16 %i.b, label %xfrm_get_mode.exit128.thread [
    i16 2, label %bb.as
    i16 10, label %bb.at
  ]

bb.as:                                            ; preds = %bb.ar
  %14 = add nsw i8 %i.au, -4
  %15 = icmp ult i8 %14, -2
  br i1 %15, label %xfrm_get_mode.exit128, label %xfrm_get_mode.exit128.thread

bb.at:                                            ; preds = %bb.ar
  %.not.i126 = icmp eq i8 %i.au, 3
  br i1 %.not.i126, label %xfrm_get_mode.exit128.thread, label %xfrm_get_mode.exit128

xfrm_get_mode.exit128:                            ; preds = %bb.at, %bb.as
  %xfrm4_mode_map.sink168 = phi ptr [ @xfrm4_mode_map, %bb.as ], [ @xfrm6_mode_map, %bb.at ]
  %16 = zext nneg i8 %i.au to i64
  %17 = getelementptr [3 x i8], ptr %xfrm4_mode_map.sink168, i64 %16 ; 2 uses
  %.not104 = icmp eq ptr %17, null
  br i1 %.not104, label %xfrm_get_mode.exit128.thread, label %bb.av

xfrm_get_mode.exit128.thread:                     ; preds = %bb.as, %bb.at, %bb.ar, %bb.aq, %xfrm_get_mode.exit128
  tail call void @do_trace_netlink_extack(ptr noundef @__xfrm_init_state.__msg.9) #14
  %.not105 = icmp eq ptr %1, null
  br i1 %.not105, label %bb.bh, label %bb.au

bb.au:                                            ; preds = %xfrm_get_mode.exit128.thread
  store ptr @__xfrm_init_state.__msg.9, ptr %1, align 8
  br label %bb.bh

bb.av:                                            ; preds = %xfrm_get_mode.exit128
  %i.aw = getelementptr i8, ptr %0, i64 774
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 2 dereferenceable(3) %i.aw, ptr noundef nonnull align 1 dereferenceable(3) %17, i64 3, i1 false)
  %i.ax = getelementptr i8, ptr %0, i64 432
  %i.ay = load i32, ptr %i.ax, align 8
  %.not106 = icmp eq i32 %i.ay, 0
  br i1 %.not106, label %.preheader.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.az = getelementptr i8, ptr %0, i64 808
  %i.ba = load i8, ptr %i.az, align 8
  %.not107 = icmp eq i8 %i.ba, 2
  br i1 %.not107, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void @do_trace_netlink_extack(ptr noundef @__xfrm_init_state.__msg.10) #14
  %.not115 = icmp eq ptr %1, null
  br i1 %.not115, label %bb.bh, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store ptr @__xfrm_init_state.__msg.10, ptr %1, align 8
  br label %bb.bh

bb.az:                                            ; preds = %bb.aw
  %i.bb = getelementptr i8, ptr %0, i64 424
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %.not108 = icmp eq ptr %i.bc, null
  br i1 %.not108, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.bd = load i16, ptr %i.bc, align 4
  %.not109 = icmp eq i16 %i.bd, 2
  br i1 %.not109, label %.preheader.i, label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba
  tail call void @do_trace_netlink_extack(ptr noundef @__xfrm_init_state.__msg.11) #14
  %.not114 = icmp eq ptr %1, null
  br i1 %.not114, label %bb.bh, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  store ptr @__xfrm_init_state.__msg.11, ptr %1, align 8
  br label %bb.bh

.preheader.i:                                     ; preds = %bb.av, %bb.ba
  %i.be = zext nneg i8 %i.au to i64
  %i.bf = getelementptr [8 x i8], ptr @xfrm_mode_cbs_map, i64 %i.be ; 2 uses
  %i.bg = icmp eq i8 %i.au, 5
  tail call void @__rcu_read_lock() #14
  %i.bh = load volatile ptr, ptr %i.bf, align 8   ; 4 uses
  %.not.peel.i = icmp eq ptr %i.bh, null          ; 2 uses
  br i1 %i.bg, label %.preheader.split.preheader.i, label %.preheader.split.us.i

.preheader.split.preheader.i:                     ; preds = %.preheader.i
  br i1 %.not.peel.i, label %.preheader.split.i, label %bb.bd

bb.bd:                                            ; preds = %.preheader.split.preheader.i
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call zeroext i1 @try_module_get(ptr noundef %i.bi) #14
  br i1 %i.bj, label %select.unfold, label %.preheader.split.i

.preheader.split.us.i:                            ; preds = %.preheader.i
  br i1 %.not.peel.i, label %xfrm_get_mode_cbs.exit.thread146, label %.loopexit.sink.split.sink.split.i

.preheader.split.i:                               ; preds = %bb.bd, %.preheader.split.preheader.i
  tail call void @__rcu_read_unlock() #14
  %i.bk = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef @.str.24) #14 ; 0 uses
  tail call void @__rcu_read_lock() #14
  %i.bl = load volatile ptr, ptr %i.bf, align 8   ; 2 uses
  %.not.i131 = icmp eq ptr %i.bl, null
  br i1 %.not.i131, label %xfrm_get_mode_cbs.exit.thread146, label %.loopexit.sink.split.sink.split.i

.loopexit.sink.split.sink.split.i:                ; preds = %.preheader.split.i, %.preheader.split.us.i
  %.sink.i129 = phi ptr [ %i.bh, %.preheader.split.us.i ], [ %i.bl, %.preheader.split.i ] ; 2 uses
  %i.bm = load ptr, ptr %.sink.i129, align 8
  %i.bn = tail call zeroext i1 @try_module_get(ptr noundef %i.bm) #14
  br i1 %i.bn, label %select.unfold, label %xfrm_get_mode_cbs.exit.thread146

xfrm_get_mode_cbs.exit.thread146:                 ; preds = %.preheader.split.us.i, %.preheader.split.i, %.loopexit.sink.split.sink.split.i
  tail call void @__rcu_read_unlock() #14
  %i.bo = getelementptr i8, ptr %0, i64 816
  store ptr null, ptr %i.bo, align 8
  br label %bb.bh

select.unfold:                                    ; preds = %.loopexit.sink.split.sink.split.i, %bb.bd
  %.0.ph.i = phi ptr [ %i.bh, %bb.bd ], [ %.sink.i129, %.loopexit.sink.split.sink.split.i ] ; 3 uses
  tail call void @__rcu_read_unlock() #14
  %i.bp = getelementptr i8, ptr %0, i64 816       ; 3 uses
  store ptr %.0.ph.i, ptr %i.bp, align 8
  %i.bq = getelementptr i8, ptr %.0.ph.i, i64 8
  %i.br = load ptr, ptr %i.bq, align 8            ; 2 uses
  %.not111 = icmp eq ptr %i.br, null
  br i1 %.not111, label %.thread, label %bb.be

.thread:                                          ; preds = %select.unfold
  %i.bs = load ptr, ptr %.0.ph.i, align 8
  tail call void @module_put(ptr noundef %i.bs) #14
  br label %bb.bh

bb.be:                                            ; preds = %select.unfold
  %i.bt = tail call i32 %i.br(ptr noundef %0) #14 ; 3 uses
  %.pre = load ptr, ptr %i.bp, align 8
  %i.bu = load ptr, ptr %.pre, align 8
  tail call void @module_put(ptr noundef %i.bu) #14
  %.not112 = icmp eq i32 %i.bt, 0
  br i1 %.not112, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.bv = getelementptr i8, ptr %0, i64 824
  %i.bw = load ptr, ptr %i.bv, align 8
  %.not113 = icmp eq ptr %i.bw, null
  br i1 %.not113, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store ptr null, ptr %i.bp, align 8
  br label %bb.bh

bb.bh:                                            ; preds = %.thread, %xfrm_get_mode_cbs.exit.thread146, %bb.s, %xfrm_get_mode.exit120.thread, %bb.ap, %bb.be, %bb.bf, %bb.bg, %bb.j, %xfrm_get_mode.exit.thread, %bb.n, %bb.m, %bb.ao, %xfrm_get_type.exit.thread, %bb.au, %xfrm_get_mode.exit128.thread, %bb.ay, %bb.ax, %bb.bc, %bb.bb
  %.1 = phi i32 [ -22, %bb.bb ], [ -93, %bb.m ], [ %i.as, %bb.ap ], [ -93, %xfrm_get_mode.exit128.thread ], [ -22, %bb.ax ], [ %i.bt, %bb.bf ], [ %i.bt, %bb.bg ], [ 0, %bb.be ], [ 0, %xfrm_get_mode_cbs.exit.thread146 ], [ -93, %xfrm_get_type.exit.thread ], [ -93, %xfrm_get_mode.exit.thread ], [ -93, %bb.j ], [ -93, %bb.n ], [ -93, %bb.ao ], [ -93, %bb.au ], [ -22, %bb.ay ], [ -22, %bb.bc ], [ -93, %xfrm_get_mode.exit120.thread ], [ -93, %bb.s ], [ 0, %.thread ]
  ret i32 %.1
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @xfrm_init_state(ptr noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @__xfrm_init_state(ptr noundef %0, ptr noundef %1) #16 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @xfrm_init_replay(ptr noundef %0, ptr noundef null) #14 ; 2 uses
  %.not10 = icmp eq i32 %i.b, 0
  br i1 %.not10, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %0, i64 232
  store i8 2, ptr %i.c, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ %i.a, %bb.a ], [ %i.b, %bb.b ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @xfrm_init_replay(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -12, 1) i32 @xfrm_state_init(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.kmem_cache_args, align 8    ; 3 uses
  %.not = icmp eq ptr %0, @init_net
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false)
  store i32 8, ptr %1, align 8
  %i.a = call ptr @__kmem_cache_create_args(ptr noundef @.str.12, i32 noundef 832, ptr noundef nonnull %1, i32 noundef 272) #14
  store ptr %i.a, ptr @xfrm_state_cache, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr i8, ptr %0, i64 3072       ; 3 uses
  store volatile ptr %i.b, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %0, i64 3080
  store volatile ptr %i.b, ptr %i.c, align 8
  %i.d = call ptr @xfrm_hash_alloc(i32 noundef 64) #14 ; 3 uses
  %.not52 = icmp eq ptr %i.d, null
  br i1 %.not52, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !160
  %i.e = getelementptr i8, ptr %0, i64 3088
  store volatile ptr %i.d, ptr %i.e, align 16
  %i.f = call ptr @xfrm_hash_alloc(i32 noundef 64) #14 ; 3 uses
  %.not53 = icmp eq ptr %i.f, null
  br i1 %.not53, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !161
  %i.g = getelementptr i8, ptr %0, i64 3096
  store volatile ptr %i.f, ptr %i.g, align 8
  %i.h = call ptr @xfrm_hash_alloc(i32 noundef 64) #14 ; 3 uses
  %.not54 = icmp eq ptr %i.h, null
  br i1 %.not54, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !162
  %i.i = getelementptr i8, ptr %0, i64 3104
  store volatile ptr %i.h, ptr %i.i, align 32
  %i.j = call ptr @xfrm_hash_alloc(i32 noundef 64) #14 ; 3 uses
  %.not55 = icmp eq ptr %i.j, null
  br i1 %.not55, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !163
  %i.k = getelementptr i8, ptr %0, i64 3112
  store volatile ptr %i.j, ptr %i.k, align 8
  %i.l = call noalias dereferenceable_or_null(8) ptr @pcpu_alloc_noprof(i64 noundef 8, i64 noundef 8, i1 noundef zeroext false, i32 noundef 3264) #19 ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 3120
  store ptr %i.l, ptr %i.m, align 16
end_hunk_0
