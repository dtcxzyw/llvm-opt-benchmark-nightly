Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/xfrm_policy?download=true
inline.NumInlined: 689
inline.NumDeleted: 277
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@xfrm_resolve_and_create_bundle:bb.a
  %i.mc = load i16, ptr %i.mb, align 8
  %i.md = and i16 %i.mc, 64
  %.not5.i.i = icmp eq i16 %i.md, 0
  br i1 %.not5.i.i, label %xfrm_dst_child.exit.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.me = getelementptr i8, ptr %.2155321.i, i64 232
  %i.mf = load ptr, ptr %i.me, align 8
  br label %xfrm_dst_child.exit.i

xfrm_dst_child.exit.i:                            ; preds = %bb.cu, %bb.ct
  %.0.i206.i = phi ptr [ %i.mf, %bb.cu ], [ null, %bb.ct ] ; 2 uses
  %.not170.i = icmp eq ptr %.0.i206.i, %.1158.i
  br i1 %.not170.i, label %xfrm_bundle_create.exit, label %.lr.ph.i35, !llvm.loop !127

.lr.ph325.i:                                      ; preds = %xfrm_state_put.exit.i36, %.lr.ph325.preheader.i
  %indvars.iv375.i = phi i64 [ %i.ir, %.lr.ph325.preheader.i ], [ %indvars.iv.next376.i, %xfrm_state_put.exit.i36 ] ; 2 uses
  %i.mg = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv375.i
  %i.mh = load ptr, ptr %i.mg, align 8            ; 2 uses
  %i.mi = getelementptr i8, ptr %i.mh, i64 104    ; 3 uses
  %i.mj = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.mi, i32 -1, ptr elementtype(i32) %i.mi) #22, !srcloc !15 ; 2 uses
  %i.mk = icmp eq i32 %i.mj, 1
  br i1 %i.mk, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %.lr.ph325.i
  %i.ml = icmp slt i32 %i.mj, 1
  br i1 %i.ml, label %bb.cw, label %xfrm_state_put.exit.i36, !prof !11

bb.cw:                                            ; preds = %bb.cv
  call void @refcount_warn_saturate(ptr noundef %i.mi, i32 noundef 3) #20
  br label %xfrm_state_put.exit.i36

bb.cx:                                            ; preds = %.lr.ph325.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #22, !srcloc !16
  call void @__xfrm_state_destroy(ptr noundef %i.mh) #20
  br label %xfrm_state_put.exit.i36

xfrm_state_put.exit.i36:                          ; preds = %bb.cx, %bb.cw, %bb.cv
  %indvars.iv.next376.i = add nuw nsw i64 %indvars.iv375.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next376.i to i32
  %exitcond378.not.i = icmp eq i32 %i.cd, %lftr.wideiv.i
  br i1 %exitcond378.not.i, label %xfrm_fill_dst.exit.thread.i, label %.lr.ph325.i, !llvm.loop !128

xfrm_fill_dst.exit.thread.i:                      ; preds = %xfrm_fill_dst.exit.i, %.lr.ph.i35, %xfrm_state_put.exit.i36, %xfrm_fill_dst.exit.thread232.i, %bb.bw, %bb.bv
  %.3152.i = phi ptr [ %.1150.i, %xfrm_fill_dst.exit.thread232.i ], [ %.2151.i, %bb.bv ], [ %.1150.i, %bb.bw ], [ %.2151.i, %xfrm_state_put.exit.i36 ], [ %.1150.i, %.lr.ph.i35 ], [ %.1150.i, %xfrm_fill_dst.exit.i ] ; 2 uses
  %.2146.i = phi i32 [ -22, %xfrm_fill_dst.exit.thread232.i ], [ %.1145.i, %bb.bv ], [ -19, %bb.bw ], [ %.1145.i, %xfrm_state_put.exit.i36 ], [ -22, %.lr.ph.i35 ], [ %i.lo, %xfrm_fill_dst.exit.i ]
  %.not183.i = icmp eq ptr %.3152.i, null
  br i1 %.not183.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %xfrm_fill_dst.exit.thread.i
  call void @dst_release_immediate(ptr noundef nonnull %.3152.i) #20
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %xfrm_fill_dst.exit.thread.i
  %i.mm = sext i32 %.2146.i to i64
  %i.mn = inttoptr i64 %i.mm to ptr
  br label %xfrm_bundle_create.exit

xfrm_bundle_create.exit:                          ; preds = %xfrm_dst_child.exit.i, %xfrm_init_pmtu.exit.preheader.i, %bb.cz
  %.0160.i = phi ptr [ %i.mn, %bb.cz ], [ %.1150.i, %xfrm_init_pmtu.exit.preheader.i ], [ %.1150.i, %xfrm_dst_child.exit.i ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.mo = icmp ugt ptr %.0160.i, inttoptr (i64 -4096 to ptr)
  br i1 %i.mo, label %bb.db, label %bb.da

bb.da:                                            ; preds = %xfrm_bundle_create.exit
  %i.mp = getelementptr i8, ptr %.0160.i, i64 268
  store i32 %i.cd, ptr %i.mp, align 4
  %i.mq = getelementptr i8, ptr %.0160.i, i64 264
  store i32 %1, ptr %i.mq, align 8
  %i.mr = getelementptr i8, ptr %.0160.i, i64 248
  %i.ms = shl nuw nsw i64 %wide.trip.count.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 %i.mr, ptr noundef align 8 %0, i64 %i.ms, i1 false)
  %i.mt = load ptr, ptr %0, align 8
  %i.mu = getelementptr i8, ptr %i.mt, i64 104
  %i.mv = load volatile i32, ptr %i.mu, align 4
  %i.mw = getelementptr i8, ptr %.0160.i, i64 276
  store i32 %i.mv, ptr %i.mw, align 4
  br label %bb.db

bb.db:                                            ; preds = %xfrm_bundle_create.exit, %bb.z, %bb.da, %bb.aa
  %.0 = phi ptr [ %.0160.i, %bb.da ], [ %i.cq, %bb.aa ], [ null, %bb.z ], [ %.0160.i, %xfrm_bundle_create.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @xfrm_pols_put(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #7 align 16 prefalign(16) {
bb.a:
  %.04 = add i32 %1, -1                           ; 2 uses
  %i.a = icmp sgt i32 %.04, -1
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext nneg i32 %.04 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %xfrm_pol_put.exit
  %indvars.iv = phi i64 [ %i.b, %.lr.ph.preheader ], [ %indvars.iv.next, %xfrm_pol_put.exit ] ; 3 uses
  %i.c = getelementptr [8 x i8], ptr %0, i64 %indvars.iv
  %i.d = load ptr, ptr %i.c, align 8              ; 5 uses
  %i.e = getelementptr i8, ptr %i.d, i64 56       ; 3 uses
  %i.f = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.e, i32 -1, ptr elementtype(i32) %i.e) #22, !srcloc !15 ; 2 uses
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = icmp slt i32 %i.f, 1
  br i1 %i.h, label %bb.c, label %xfrm_pol_put.exit, !prof !11

bb.c:                                             ; preds = %bb.b
  tail call void @refcount_warn_saturate(ptr noundef %i.e, i32 noundef 3) #20
  br label %xfrm_pol_put.exit

bb.d:                                             ; preds = %.lr.ph
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #22, !srcloc !16
  %i.i = getelementptr i8, ptr %i.d, i64 296
  %i.j = load i8, ptr %i.i, align 8
  %.not.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "1166: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1166b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1166) #22, !srcloc !17
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 466, i32 0, i64 16) #22, !srcloc !18
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %i.d, i64 64
  %i.l = tail call i32 @timer_delete(ptr noundef %i.k) #20
  %.not5.i.i = icmp eq i32 %i.l, 0
  br i1 %.not5.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr i8, ptr %i.d, i64 328
  %i.n = tail call i32 @timer_delete(ptr noundef %i.m) #20
  %.not6.i.i = icmp eq i32 %i.n, 0
  br i1 %.not6.i.i, label %xfrm_policy_destroy.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void asm sideeffect "1167: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1167b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1167) #22, !srcloc !19
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 469, i32 0, i64 16) #22, !srcloc !20
  unreachable

xfrm_policy_destroy.exit.i:                       ; preds = %bb.g
  %i.o = getelementptr i8, ptr %i.d, i64 776
  tail call void @call_rcu(ptr noundef %i.o, ptr noundef nonnull @xfrm_policy_destroy_rcu) #20
  br label %xfrm_pol_put.exit

xfrm_pol_put.exit:                                ; preds = %bb.b, %bb.c, %xfrm_policy_destroy.exit.i
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.p = icmp sgt i64 %indvars.iv, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge, !llvm.loop !107

._crit_edge:                                      ; preds = %xfrm_pol_put.exit, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc ptr @xfrm_bundle_lookup(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, ptr %.0.val, i8 %.8.val, i32 noundef %3) unnamed_addr #1 align 16 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false), !annotation !21
  %i.b = tail call fastcc ptr @xfrm_policy_lookup(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, i8 noundef zeroext 1, i32 noundef %3) #23, !srcloc !129 ; 21 uses
  store ptr %i.b, ptr %i.a, align 16
  %.not.i = icmp eq ptr %i.b, null
  %i.c = ptrtoint ptr %i.b to i64                 ; 3 uses
  br i1 %.not.i, label %xfrm_pols_put.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt ptr %i.b, inttoptr (i64 -4096 to ptr)
  br i1 %i.d, label %xfrm_expand_policies.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.e = getelementptr i8, ptr %i.b, i64 380
  %i.f = load i8, ptr %i.e, align 4               ; 2 uses
  %i.g = zext i8 %i.f to i32
  %i.h = getelementptr i8, ptr %i.b, i64 378
  %i.i = load i8, ptr %i.h, align 2
  %.not17.i = icmp eq i8 %i.i, 0
  br i1 %.not17.i, label %bb.c, label %.thread26

bb.c:                                             ; preds = %.lr.ph.preheader.i
  %i.j = icmp eq i8 %i.f, 0
  br i1 %i.j, label %.thread26, label %bb.d

xfrm_expand_policies.exit:                        ; preds = %bb.b
  %i.k = and i64 %i.c, 2147483648
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %xfrm_pols_put.exit, label %xfrm_pols_put.exit60

bb.d:                                             ; preds = %bb.c
  %i.l = call fastcc ptr @xfrm_resolve_and_create_bundle(ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef %1, i16 noundef zeroext %2, ptr noundef %.0.val) #23, !srcloc !130 ; 4 uses
  %i.m = icmp ugt ptr %i.l, inttoptr (i64 -4096 to ptr)
  br i1 %i.m, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.n = ptrtoint ptr %i.l to i64                 ; 4 uses
  %i.o = trunc i64 %i.n to i32
  switch i32 %i.o, label %.lr.ph.i52 [
    i32 -66, label %.lr.ph.i52.preheader
    i32 -11, label %.thread26
  ]

.lr.ph.i52.preheader:                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %i.b, i64 56       ; 3 uses
  %i.q = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.p, i32 -1, ptr elementtype(i32) %i.p) #22, !srcloc !15 ; 2 uses
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i52.preheader
  %i.s = icmp slt i32 %i.q, 1
  br i1 %i.s, label %bb.g, label %xfrm_pols_put.exit, !prof !11

bb.g:                                             ; preds = %bb.f
  tail call void @refcount_warn_saturate(ptr noundef %i.p, i32 noundef 3) #20
  br label %xfrm_pols_put.exit

bb.h:                                             ; preds = %.lr.ph.i52.preheader
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #22, !srcloc !16
  %i.t = getelementptr i8, ptr %i.b, i64 296
  %i.u = load i8, ptr %i.t, align 8
  %.not.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  tail call void asm sideeffect "1166: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1166b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1166) #22, !srcloc !17
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 466, i32 0, i64 16) #22, !srcloc !18
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.v = getelementptr i8, ptr %i.b, i64 64
  %i.w = tail call i32 @timer_delete(ptr noundef %i.v) #20
  %.not5.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not5.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr i8, ptr %i.b, i64 328
  %i.y = tail call i32 @timer_delete(ptr noundef %i.x) #20
  %.not6.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not6.i.i.i, label %xfrm_policy_destroy.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void asm sideeffect "1167: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1167b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1167) #22, !srcloc !19
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 469, i32 0, i64 16) #22, !srcloc !20
  unreachable

xfrm_policy_destroy.exit.i.i:                     ; preds = %bb.k
  %i.z = getelementptr i8, ptr %i.b, i64 776
  tail call void @call_rcu(ptr noundef %i.z, ptr noundef nonnull @xfrm_policy_destroy_rcu) #20
  br label %xfrm_pols_put.exit

bb.m:                                             ; preds = %bb.d
  %i.aa = icmp eq ptr %i.l, null
  br i1 %i.aa, label %.thread26, label %xfrm_pols_put.exit

.thread26:                                        ; preds = %.lr.ph.preheader.i, %bb.m, %bb.e, %bb.c
  %.1 = phi i32 [ 0, %bb.c ], [ %i.g, %bb.e ], [ 0, %bb.m ], [ -1, %.lr.ph.preheader.i ] ; 2 uses
  %i.ab = icmp ugt i16 %2, 10
  br i1 %i.ab, label %.lr.ph.preheader.i40, label %bb.n, !prof !11

bb.n:                                             ; preds = %.thread26
  %i.ac = zext nneg i16 %2 to i64
  tail call void @__rcu_read_lock() #20
  %i.ad = getelementptr [8 x i8], ptr @xfrm_policy_afinfo, i64 %i.ac
  %i.ae = load volatile ptr, ptr %i.ad, align 8
  %.not.i.i.i37 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i37, label %xfrm_alloc_dst.exit.thread53.i, label %xfrm_policy_get_afinfo.exit.i.i, !prof !11

xfrm_policy_get_afinfo.exit.i.i:                  ; preds = %bb.n
  switch i16 %2, label %bb.p [
    i16 2, label %bb.q
    i16 10, label %bb.o
  ]

bb.o:                                             ; preds = %xfrm_policy_get_afinfo.exit.i.i
  br label %bb.q

bb.p:                                             ; preds = %xfrm_policy_get_afinfo.exit.i.i
  tail call void asm sideeffect "1260: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1260b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1260) #22, !srcloc !115
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 2615, i32 0, i64 16) #22, !srcloc !116
  unreachable

bb.q:                                             ; preds = %bb.o, %xfrm_policy_get_afinfo.exit.i.i
  %.sink.i.i = phi i64 [ 3648, %bb.o ], [ 3456, %xfrm_policy_get_afinfo.exit.i.i ]
  %i.af = getelementptr i8, ptr %0, i64 %.sink.i.i
  %i.ag = tail call ptr @dst_alloc(ptr noundef %i.af, ptr noundef null, i32 noundef 0, i16 noundef zeroext 0) #20 ; 22 uses
  %.not14.i.i = icmp eq ptr %i.ag, null
  br i1 %.not14.i.i, label %xfrm_alloc_dst.exit.thread53.i, label %xfrm_alloc_dst.exit.i, !prof !11

xfrm_alloc_dst.exit.thread53.i:                   ; preds = %bb.q, %bb.n
  %.0.ph.i.ph.i = phi ptr [ inttoptr (i64 -105 to ptr), %bb.q ], [ inttoptr (i64 -22 to ptr), %bb.n ]
  tail call void @__rcu_read_unlock() #20
  br label %.lr.ph.preheader.i40

xfrm_alloc_dst.exit.i:                            ; preds = %bb.q
  %i.ah = getelementptr i8, ptr %i.ag, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(160) %i.ah, i8 0, i64 160, i1 false)
  tail call void @__rcu_read_unlock() #20
  %i.ai = icmp ugt ptr %i.ag, inttoptr (i64 -4096 to ptr)
  %i.aj = and i8 %.8.val, 2
  %.not.i38 = icmp eq i8 %i.aj, 0
  %or.cond = select i1 %i.ai, i1 true, i1 %.not.i38
  br i1 %or.cond, label %xfrm_create_dummy_bundle.exit, label %bb.r

bb.r:                                             ; preds = %xfrm_alloc_dst.exit.i
  %i.ak = getelementptr i8, ptr %0, i64 3392
  %i.al = load i32, ptr %i.ak, align 64
  %i.am = icmp ne i32 %i.al, 0
  %i.an = icmp slt i32 %.1, 1
  %or.cond.i = or i1 %i.an, %i.am
  br i1 %or.cond.i, label %xfrm_create_dummy_bundle.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ao = getelementptr i8, ptr %.0.val, i64 64   ; 6 uses
  %i.ap = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock addl $2, $0", "=*m,={@ccs},er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ao, i32 1, ptr elementtype(i32) %i.ao) #22, !srcloc !22 ; 2 uses
  %i.aq = icmp ult i8 %i.ap, 2
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = trunc nuw i8 %i.ap to i1
  br i1 %i.ar, label %rcuref_get.exit.i.i, label %dst_hold.exit.i, !prof !11

rcuref_get.exit.i.i:                              ; preds = %bb.s
  %i.as = tail call zeroext i1 @rcuref_get_slowpath(ptr noundef %i.ao) #20
  br i1 %i.as, label %dst_hold.exit.i, label %bb.t, !prof !23

bb.t:                                             ; preds = %rcuref_get.exit.i.i
  tail call void asm sideeffect "828: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 828b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 828) #22, !srcloc !24
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.7, i32 247, i32 2305, i64 16) #22, !srcloc !25
  tail call void asm sideeffect "829: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 829b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 829) #22, !srcloc !26
  br label %dst_hold.exit.i

dst_hold.exit.i:                                  ; preds = %bb.t, %rcuref_get.exit.i.i, %bb.s
  %i.at = getelementptr i8, ptr %i.ag, i64 224
  store ptr %.0.val, ptr %i.at, align 8
  %i.au = getelementptr i8, ptr %i.ag, i64 16
  %i.av = load i64, ptr %i.au, align 8            ; 4 uses
  %.not.i.i43.i = icmp eq i64 %i.av, 0
  br i1 %.not.i.i43.i, label %bb.u, label %bb.v, !prof !11

bb.u:                                             ; preds = %dst_hold.exit.i
  tail call void asm sideeffect "824: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 824b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 824) #22, !srcloc !117
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.7, i32 133, i32 0, i64 16) #22, !srcloc !118
  unreachable

bb.v:                                             ; preds = %dst_hold.exit.i
  %i.aw = and i64 %i.av, 1
  %.not7.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not7.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ax = getelementptr i8, ptr %i.ag, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr i8, ptr %i.ay, i64 40
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call ptr %i.ba(ptr noundef nonnull %i.ag, i64 noundef %i.av) #20, !inline_history !131
  br label %dst_metrics_write_ptr.exit.i.i

bb.x:                                             ; preds = %bb.v
  %i.bc = and i64 %i.av, -4
  %i.bd = inttoptr i64 %i.bc to ptr
  br label %dst_metrics_write_ptr.exit.i.i

dst_metrics_write_ptr.exit.i.i:                   ; preds = %bb.x, %bb.w
  %.0.i.i.i = phi ptr [ %i.bb, %bb.w ], [ %i.bd, %bb.x ] ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not.i.i, label %dst_copy_metrics.exit.i, label %bb.y

bb.y:                                             ; preds = %dst_metrics_write_ptr.exit.i.i
  %i.be = getelementptr i8, ptr %.0.val, i64 16
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = and i64 %i.bf, -4
  %i.bh = inttoptr i64 %i.bg to ptr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %.0.i.i.i, ptr noundef align 4 dereferenceable(68) %i.bh, i64 68, i1 false)
  br label %dst_copy_metrics.exit.i

dst_copy_metrics.exit.i:                          ; preds = %bb.y, %dst_metrics_write_ptr.exit.i.i
  %i.bi = getelementptr i8, ptr %i.ag, i64 58
  store i16 -1, ptr %i.bi, align 2
  %i.bj = getelementptr i8, ptr %i.ag, i64 56     ; 2 uses
  %i.bk = load i16, ptr %i.bj, align 8
  %i.bl = or i16 %i.bk, 64
  store i16 %i.bl, ptr %i.bj, align 8
  %i.bm = load volatile i64, ptr @jiffies, align 64
  %i.bn = getelementptr i8, ptr %i.ag, i64 72
  store i64 %i.bm, ptr %i.bn, align 8
  %i.bo = getelementptr i8, ptr %i.ag, i64 40
  store ptr @dst_discard, ptr %i.bo, align 8
  %i.bp = getelementptr i8, ptr %i.ag, i64 48
  store ptr @xdst_queue_output, ptr %i.bp, align 8
  %i.bq = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock addl $2, $0", "=*m,={@ccs},er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ao, i32 1, ptr elementtype(i32) %i.ao) #22, !srcloc !22 ; 2 uses
  %i.br = icmp ult i8 %i.bq, 2
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = trunc nuw i8 %i.bq to i1
  br i1 %i.bs, label %rcuref_get.exit.i44.i, label %dst_hold.exit45.i, !prof !11

rcuref_get.exit.i44.i:                            ; preds = %dst_copy_metrics.exit.i
  %i.bt = tail call zeroext i1 @rcuref_get_slowpath(ptr noundef %i.ao) #20
  br i1 %i.bt, label %dst_hold.exit45.i, label %bb.z, !prof !23

bb.z:                                             ; preds = %rcuref_get.exit.i44.i
  tail call void asm sideeffect "828: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 828b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 828) #22, !srcloc !24
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.7, i32 247, i32 2305, i64 16) #22, !srcloc !25
  tail call void asm sideeffect "829: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 829b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 829) #22, !srcloc !26
  br label %dst_hold.exit45.i

dst_hold.exit45.i:                                ; preds = %bb.z, %rcuref_get.exit.i44.i, %dst_copy_metrics.exit.i
  %i.bu = getelementptr i8, ptr %i.ag, i64 232
  store ptr %.0.val, ptr %i.bu, align 8
  %i.bv = getelementptr i8, ptr %i.ag, i64 240
  store ptr %.0.val, ptr %i.bv, align 8
  %i.bw = getelementptr i8, ptr %.0.val, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = load i16, ptr %i.bx, align 64
  %i.bz = icmp eq i16 %i.by, 10
  br i1 %i.bz, label %bb.aa, label %xfrm_init_path.exit.i

bb.aa:                                            ; preds = %dst_hold.exit45.i
  %i.ca = getelementptr i8, ptr %.0.val, i64 144
  %i.cb = load i32, ptr %i.ca, align 8            ; 2 uses
  %.not.i.i46.i = icmp eq i32 %i.cb, 0
  br i1 %.not.i.i46.i, label %bb.ab, label %rt6_get_cookie.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  tail call void @__rcu_read_lock() #20
  %i.cc = getelementptr i8, ptr %.0.val, i64 136
  %i.cd = load volatile ptr, ptr %i.cc, align 8   ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not10.i.i.i, label %fib6_get_cookie_safe.exit.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ce = getelementptr i8, ptr %i.cd, i64 16
  %i.cf = load volatile ptr, ptr %i.ce, align 8   ; 2 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.not.i.i.i, label %fib6_get_cookie_safe.exit.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cg = getelementptr i8, ptr %i.cf, i64 36
  %i.ch = load volatile i32, ptr %i.cg, align 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #22, !srcloc !122
  br label %fib6_get_cookie_safe.exit.i.i.i

fib6_get_cookie_safe.exit.i.i.i:                  ; preds = %bb.ad, %bb.ac, %bb.ab
  %.011.i.i.i = phi i32 [ 0, %bb.ab ], [ %i.ch, %bb.ad ], [ 0, %bb.ac ]
  tail call void @__rcu_read_unlock() #20
  br label %rt6_get_cookie.exit.i.i

rt6_get_cookie.exit.i.i:                          ; preds = %fib6_get_cookie_safe.exit.i.i.i, %bb.aa
  %.0.i.i47.i = phi i32 [ %.011.i.i.i, %fib6_get_cookie_safe.exit.i.i.i ], [ %i.cb, %bb.aa ]
  %i.ci = getelementptr i8, ptr %i.ag, i64 292
  store i32 %.0.i.i47.i, ptr %i.ci, align 4
  %i.cj = getelementptr i8, ptr %i.ag, i64 220
  store i16 0, ptr %i.cj, align 4
  br label %xfrm_init_path.exit.i

xfrm_init_path.exit.i:                            ; preds = %rt6_get_cookie.exit.i.i, %dst_hold.exit45.i
  %i.ck = load ptr, ptr %.0.val, align 8          ; 2 uses
  %.not41.i = icmp eq ptr %i.ck, null
  br i1 %.not41.i, label %xfrm_fill_dst.exit.thread.i, label %bb.ae

bb.ae:                                            ; preds = %xfrm_init_path.exit.i
  %i.cl = getelementptr i8, ptr %i.ag, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = load i16, ptr %i.cm, align 64           ; 2 uses
  %i.co = icmp ugt i16 %i.cn, 10
  br i1 %i.co, label %xfrm_fill_dst.exit.thread.i, label %bb.af, !prof !11

bb.af:                                            ; preds = %bb.ae
  %i.cp = zext nneg i16 %i.cn to i64
  tail call void @__rcu_read_lock() #20
  %i.cq = getelementptr [8 x i8], ptr @xfrm_policy_afinfo, i64 %i.cp
  %i.cr = load volatile ptr, ptr %i.cq, align 8   ; 2 uses
  %.not.i.i48.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i48.i, label %xfrm_fill_dst.exit.thread60.i, label %xfrm_fill_dst.exit.i, !prof !11

xfrm_fill_dst.exit.thread60.i:                    ; preds = %bb.af
  tail call void @__rcu_read_unlock() #20
  br label %xfrm_fill_dst.exit.thread.i

xfrm_fill_dst.exit.i:                             ; preds = %bb.af
  %i.cs = getelementptr i8, ptr %i.cr, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = tail call i32 %i.ct(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ck, ptr noundef %1) #20, !inline_history !132 ; 2 uses
  tail call void @__rcu_read_unlock() #20
  %.not42.i = icmp eq i32 %i.cu, 0
  br i1 %.not42.i, label %xfrm_create_dummy_bundle.exit, label %xfrm_fill_dst.exit.thread.i

xfrm_fill_dst.exit.thread.i:                      ; preds = %xfrm_fill_dst.exit.i, %xfrm_fill_dst.exit.thread60.i, %bb.ae, %xfrm_init_path.exit.i
  %.037.i = phi i32 [ %i.cu, %xfrm_fill_dst.exit.i ], [ -19, %xfrm_init_path.exit.i ], [ -22, %xfrm_fill_dst.exit.thread60.i ], [ -22, %bb.ae ]
  tail call void @dst_release(ptr noundef nonnull %i.ag) #20
  %i.cv = sext i32 %.037.i to i64
  %i.cw = inttoptr i64 %i.cv to ptr
  br label %xfrm_create_dummy_bundle.exit

xfrm_create_dummy_bundle.exit:                    ; preds = %xfrm_alloc_dst.exit.i, %bb.r, %xfrm_fill_dst.exit.i, %xfrm_fill_dst.exit.thread.i
  %.038.i = phi ptr [ %i.ag, %xfrm_fill_dst.exit.i ], [ %i.ag, %xfrm_alloc_dst.exit.i ], [ %i.ag, %bb.r ], [ %i.cw, %xfrm_fill_dst.exit.thread.i ] ; 6 uses
  %i.cx = icmp ugt ptr %.038.i, inttoptr (i64 -4096 to ptr)
  br i1 %i.cx, label %.lr.ph.preheader.i40, label %bb.an

.lr.ph.preheader.i40:                             ; preds = %xfrm_create_dummy_bundle.exit, %xfrm_alloc_dst.exit.thread53.i, %.thread26
  %.038.i29 = phi ptr [ %.038.i, %xfrm_create_dummy_bundle.exit ], [ inttoptr (i64 -22 to ptr), %.thread26 ], [ %.0.ph.i.ph.i, %xfrm_alloc_dst.exit.thread53.i ] ; 3 uses
  %i.cy = getelementptr i8, ptr %i.b, i64 56      ; 3 uses
  %i.cz = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cy, i32 -1, ptr elementtype(i32) %i.cy) #22, !srcloc !15 ; 2 uses
  %i.da = icmp eq i32 %i.cz, 1
  br i1 %i.da, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.preheader.i40
  %i.db = icmp slt i32 %i.cz, 1
  br i1 %i.db, label %bb.ah, label %xfrm_pols_put.exit, !prof !11

bb.ah:                                            ; preds = %bb.ag
  tail call void @refcount_warn_saturate(ptr noundef %i.cy, i32 noundef 3) #20
  br label %xfrm_pols_put.exit

bb.ai:                                            ; preds = %.lr.ph.preheader.i40
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #22, !srcloc !16
  %i.dc = getelementptr i8, ptr %i.b, i64 296
  %i.dd = load i8, ptr %i.dc, align 8
  %.not.i.i.i45 = icmp eq i8 %i.dd, 0
  br i1 %.not.i.i.i45, label %bb.aj, label %bb.ak, !prof !11

bb.aj:                                            ; preds = %bb.ai
  tail call void asm sideeffect "1166: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1166b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1166) #22, !srcloc !17
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 466, i32 0, i64 16) #22, !srcloc !18
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.de = getelementptr i8, ptr %i.b, i64 64
  %i.df = tail call i32 @timer_delete(ptr noundef %i.de) #20
  %.not5.i.i.i46 = icmp eq i32 %i.df, 0
  br i1 %.not5.i.i.i46, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.dg = getelementptr i8, ptr %i.b, i64 328
  %i.dh = tail call i32 @timer_delete(ptr noundef %i.dg) #20
  %.not6.i.i.i47 = icmp eq i32 %i.dh, 0
  br i1 %.not6.i.i.i47, label %xfrm_policy_destroy.exit.i.i48, label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  tail call void asm sideeffect "1167: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1167b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1167) #22, !srcloc !19
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 469, i32 0, i64 16) #22, !srcloc !20
  unreachable

xfrm_policy_destroy.exit.i.i48:                   ; preds = %bb.al
  %i.di = getelementptr i8, ptr %i.b, i64 776
  tail call void @call_rcu(ptr noundef %i.di, ptr noundef nonnull @xfrm_policy_destroy_rcu) #20
  br label %xfrm_pols_put.exit

bb.an:                                            ; preds = %xfrm_create_dummy_bundle.exit
  %i.dj = getelementptr i8, ptr %.038.i, i64 264
  store i32 1, ptr %i.dj, align 8
  %i.dk = getelementptr i8, ptr %.038.i, i64 268
  store i32 %.1, ptr %i.dk, align 4
  %i.dl = getelementptr i8, ptr %.038.i, i64 248
  store i64 %i.c, ptr %i.dl, align 8
  br label %xfrm_pols_put.exit

.lr.ph.i52:                                       ; preds = %bb.e
  %4 = getelementptr i8, ptr %i.b, i64 56         ; 3 uses
  %5 = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %4, i32 -1, ptr elementtype(i32) %4) #22, !srcloc !15 ; 2 uses
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i52
  %i.dm = icmp slt i32 %5, 1
  br i1 %i.dm, label %bb.ap, label %xfrm_pols_put.exit60, !prof !11

bb.ap:                                            ; preds = %bb.ao
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 3) #20
  br label %xfrm_pols_put.exit60

bb.aq:                                            ; preds = %.lr.ph.i52
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #22, !srcloc !16
  %i.dn = getelementptr i8, ptr %i.b, i64 296
  %i.do = load i8, ptr %i.dn, align 8
  %.not.i.i.i56 = icmp eq i8 %i.do, 0
  br i1 %.not.i.i.i56, label %bb.ar, label %bb.as, !prof !11

bb.ar:                                            ; preds = %bb.aq
  tail call void asm sideeffect "1166: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1166b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1166) #22, !srcloc !17
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 466, i32 0, i64 16) #22, !srcloc !18
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.dp = getelementptr i8, ptr %i.b, i64 64
  %i.dq = tail call i32 @timer_delete(ptr noundef %i.dp) #20
  %.not5.i.i.i57 = icmp eq i32 %i.dq, 0
  br i1 %.not5.i.i.i57, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.dr = getelementptr i8, ptr %i.b, i64 328
  %i.ds = tail call i32 @timer_delete(ptr noundef %i.dr) #20
  %.not6.i.i.i58 = icmp eq i32 %i.ds, 0
  br i1 %.not6.i.i.i58, label %xfrm_policy_destroy.exit.i.i59, label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  tail call void asm sideeffect "1167: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1167b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1167) #22, !srcloc !19
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 469, i32 0, i64 16) #22, !srcloc !20
  unreachable

xfrm_policy_destroy.exit.i.i59:                   ; preds = %bb.at
  %i.dt = getelementptr i8, ptr %i.b, i64 776
  tail call void @call_rcu(ptr noundef %i.dt, ptr noundef nonnull @xfrm_policy_destroy_rcu) #20
  br label %xfrm_pols_put.exit60

xfrm_pols_put.exit60:                             ; preds = %bb.ao, %bb.ap, %xfrm_policy_destroy.exit.i.i59, %xfrm_expand_policies.exit
  %.034 = phi i64 [ %i.c, %xfrm_expand_policies.exit ], [ %i.n, %xfrm_policy_destroy.exit.i.i59 ], [ %i.n, %bb.ap ], [ %i.n, %bb.ao ]
  %sext = shl i64 %.034, 32
  %i.du = ashr exact i64 %sext, 32
  %i.dv = inttoptr i64 %i.du to ptr
  br label %xfrm_pols_put.exit

xfrm_pols_put.exit:                               ; preds = %bb.ag, %bb.ah, %xfrm_policy_destroy.exit.i.i48, %bb.f, %bb.g, %xfrm_policy_destroy.exit.i.i, %xfrm_expand_policies.exit, %bb.a, %bb.m, %xfrm_pols_put.exit60, %bb.an
  %.028 = phi ptr [ %i.dv, %xfrm_pols_put.exit60 ], [ null, %xfrm_expand_policies.exit ], [ null, %bb.f ], [ %.038.i, %bb.an ], [ null, %bb.a ], [ %i.l, %bb.m ], [ null, %xfrm_policy_destroy.exit.i.i ], [ null, %bb.g ], [ %.038.i29, %xfrm_policy_destroy.exit.i.i48 ], [ %.038.i29, %bb.ah ], [ %.038.i29, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret ptr %.028
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @xfrm_lookup(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(address) %3, i32 noundef %4) #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @xfrm_lookup_with_ifid(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 0) #23
  ret ptr %i.a
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @xfrm_lookup_route(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(address) %3, i32 noundef %4) #1 align 16 prefalign(16) {
bb.a:
  %i.a = or i32 %4, 6
  %i.b = tail call ptr @xfrm_lookup_with_ifid(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.a, i32 noundef 0) #23 ; 4 uses
  %i.c = icmp eq ptr %i.b, inttoptr (i64 -66 to ptr)
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load i16, ptr %i.e, align 64             ; 2 uses
  %i.g = icmp ugt i16 %i.f, 10
  br i1 %i.g, label %bb.e, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.h = zext nneg i16 %i.f to i64
  tail call void @__rcu_read_lock() #20
  %i.i = getelementptr [8 x i8], ptr @xfrm_policy_afinfo, i64 %i.h
  %i.j = load volatile ptr, ptr %i.i, align 8     ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.d, label %xfrm_policy_get_afinfo.exit.i, !prof !11

bb.d:                                             ; preds = %bb.c
  tail call void @__rcu_read_unlock() #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  tail call void @dst_release(ptr noundef %1) #20
  br label %make_blackhole.exit

xfrm_policy_get_afinfo.exit.i:                    ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call ptr %i.l(ptr noundef %0, ptr noundef %1) #20, !inline_history !133
  tail call void @__rcu_read_unlock() #20
  br label %make_blackhole.exit

bb.f:                                             ; preds = %bb.a
  %i.n = icmp ugt ptr %i.b, inttoptr (i64 -4096 to ptr)
  br i1 %i.n, label %bb.g, label %make_blackhole.exit

bb.g:                                             ; preds = %bb.f
  tail call void @dst_release(ptr noundef %1) #20
  br label %make_blackhole.exit

make_blackhole.exit:                              ; preds = %xfrm_policy_get_afinfo.exit.i, %bb.e, %bb.f, %bb.g
  %.0 = phi ptr [ %i.b, %bb.f ], [ %i.b, %bb.g ], [ %i.m, %xfrm_policy_get_afinfo.exit.i ], [ inttoptr (i64 -22 to ptr), %bb.e ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -97, 1) i32 @__xfrm_decode_session(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4) #1 align 16 prefalign(16) {
bb.a:
  %5 = alloca %struct.xfrm_flow_keys, align 4     ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %5, i8 0, i64 60, i1 false)
  %i.a = call zeroext i1 @__skb_flow_dissect(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @xfrm_session_dissector, ptr noundef nonnull %5, ptr noundef null, i16 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 4) #20 ; 0 uses
  switch i32 %3, label %bb.t [
    i32 2, label %bb.b
    i32 10, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %.not27 = icmp eq i32 %4, 0
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.c = getelementptr i8, ptr %2, i64 44
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 52 ; 2 uses
  br i1 %.not27, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.f = load i32, ptr %i.e, align 4
  %i.g = load i32, ptr %i.b, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 54
  %i.i = load i16, ptr %i.h, align 2
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.b, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.l = load i32, ptr %i.k, align 4
  %i.m = load i16, ptr %i.d, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 54
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink29 = phi i32 [ %i.j, %bb.d ], [ %i.f, %bb.c ]
  %.sink28 = phi i32 [ %i.l, %bb.d ], [ %i.g, %bb.c ]
  %.sink = phi i16 [ %i.m, %bb.d ], [ %i.i, %bb.c ]
  %.sink.in.i = phi ptr [ %i.n, %bb.d ], [ %i.d, %bb.c ]
  %i.o = getelementptr i8, ptr %2, i64 40
  store i32 %.sink29, ptr %i.o, align 8
  store i32 %.sink28, ptr %i.c, align 4
  %i.p = getelementptr i8, ptr %2, i64 50
  store i16 %.sink, ptr %i.p, align 2
  %.sink.i = load i16, ptr %.sink.in.i, align 2
  %i.q = getelementptr i8, ptr %2, i64 48         ; 3 uses
  store i16 %.sink.i, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.s = load i8, ptr %i.r, align 2               ; 2 uses
  switch i8 %i.s, label %decode_session4.exit [
    i8 47, label %bb.f
    i8 1, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.u = load i32, ptr %i.t, align 4
  store i32 %i.u, ptr %i.q, align 8
  br label %decode_session4.exit

bb.g:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 46
  %i.w = load i8, ptr %i.v, align 2
  store i8 %i.w, ptr %i.q, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 47
  %i.y = load i8, ptr %i.x, align 1
  %i.z = getelementptr i8, ptr %2, i64 49
  store i8 %i.y, ptr %i.z, align 1
  br label %decode_session4.exit

decode_session4.exit:                             ; preds = %bb.e, %bb.f, %bb.g
  %i.aa = getelementptr i8, ptr %2, i64 18
  store i8 %i.s, ptr %i.aa, align 2
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.ac = load i8, ptr %i.ab, align 4
  %i.ad = and i8 %i.ac, -4
  %i.ae = getelementptr i8, ptr %2, i64 16
  store i8 %i.ad, ptr %i.ae, align 8
  br label %bb.n

bb.h:                                             ; preds = %bb.a
  %.not26 = icmp eq i32 %4, 0
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(88) %2, i8 0, i64 88, i1 false)
  %i.af = getelementptr i8, ptr %2, i64 56        ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 52 ; 2 uses
  br i1 %.not26, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.af, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.ai, i64 16, i1 false)
end_hunk_0
begin_hunk_1_@__xfrm_policy_check:bb.a
  %i.gt = icmp eq i8 %i.gr, %i.gs
  br i1 %i.gt, label %bb.at, label %xfrm_state_ok.exit.thread.i

bb.at:                                            ; preds = %bb.as
  %i.gu = load i8, ptr %i.fq, align 1
  %.not31.i.i = icmp eq i8 %i.gu, 0
  br i1 %.not31.i.i, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.gv = load i32, ptr %i.fr, align 4
  %i.gw = getelementptr i8, ptr %i.fu, i64 254
  %i.gx = load i8, ptr %i.gw, align 2
  %i.gy = zext nneg i8 %i.gx to i32
  %i.gz = shl nuw i32 1, %i.gy
  %i.ha = and i32 %i.gz, %i.gv
  %.not32.i.i = icmp eq i32 %i.ha, 0
  br i1 %.not32.i.i, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  switch i8 %i.gf, label %bb.aw [
    i8 -1, label %xfrm_state_ok.exit.thread.i
    i8 108, label %xfrm_state_ok.exit.thread.i
    i8 51, label %xfrm_state_ok.exit.thread.i
    i8 50, label %xfrm_state_ok.exit.thread.i
  ]

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  %.not34.i.i = icmp eq i8 %i.gr, 0
  br i1 %.not34.i.i, label %xfrm_state_addr_cmp.exit.thread.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  switch i16 %3, label %xfrm_state_ok.exit.thread.i [
    i16 2, label %bb.ay
    i16 10, label %bb.az
  ]

bb.ay:                                            ; preds = %bb.ax
  %.val.i.i177 = load i32, ptr %i.fk, align 4     ; 2 uses
  %.not.i.i.i = icmp eq i32 %.val.i.i177, 0
  br i1 %.not.i.i.i, label %xfrm_state_addr_cmp.exit.thread.i, label %.split.i

.split.i:                                         ; preds = %bb.ay
  %i.hb = getelementptr i8, ptr %i.fu, i64 260
  %i.hc = load i32, ptr %i.hb, align 4
  %.not57.i = icmp eq i32 %.val.i.i177, %i.hc
  br i1 %.not57.i, label %xfrm_state_addr_cmp.exit.thread.i, label %xfrm_state_ok.exit.thread.i

bb.az:                                            ; preds = %bb.ax
  %.val5.i.i = load i64, ptr %i.fk, align 8       ; 2 uses
  %.val6.i.i = load i64, ptr %i.fl, align 8       ; 2 uses
  %i.hd = or i64 %.val6.i.i, %.val5.i.i
  %i.he = icmp eq i64 %i.hd, 0
  br i1 %i.he, label %xfrm_state_addr_cmp.exit.thread.i, label %xfrm_state_addr_cmp.exit.i

xfrm_state_addr_cmp.exit.i:                       ; preds = %bb.az
  %i.hf = getelementptr i8, ptr %i.fu, i64 260
  %.val6.i.i24.i = load i64, ptr %i.hf, align 8
  %i.hg = getelementptr i8, ptr %i.fu, i64 268
  %.val7.i.i.i = load i64, ptr %i.hg, align 8
  %i.hh = icmp ne i64 %.val5.i.i, %.val6.i.i24.i
  %i.hi = icmp ne i64 %.val6.i.i, %.val7.i.i.i
  %.not2.i.i.i = or i1 %i.hh, %i.hi
  br i1 %.not2.i.i.i, label %xfrm_state_ok.exit.thread.i, label %xfrm_state_addr_cmp.exit.thread.i

xfrm_state_addr_cmp.exit.thread.i:                ; preds = %xfrm_state_addr_cmp.exit.i, %bb.az, %.split.i, %bb.ay, %bb.aw
  br i1 %i.ev, label %xfrm_state_ok.exit.thread37.i, label %.split51.i

.split51.i:                                       ; preds = %xfrm_state_addr_cmp.exit.thread.i
  %i.hj = getelementptr i8, ptr %i.fu, i64 204
  %i.hk = load i32, ptr %i.hj, align 4
  %.not58.i = icmp eq i32 %.1126, %i.hk
  br i1 %.not58.i, label %xfrm_state_ok.exit.thread37.i, label %xfrm_state_ok.exit.thread.i

xfrm_state_ok.exit.i:                             ; preds = %bb.an
  %i.hl = getelementptr i8, ptr %i.fu, i64 260
  %i.hm = load i32, ptr %i.hl, align 4
  %.not56.i = icmp eq i32 %.val.i.i.i176, %i.hm
  br i1 %.not56.i, label %xfrm_state_ok.exit.thread37.i, label %xfrm_state_ok.exit.thread.i

xfrm_state_ok.exit.thread37.i:                    ; preds = %xfrm_state_ok.exit.i, %.split51.i, %xfrm_state_addr_cmp.exit.thread.i, %.split52.i, %bb.ao, %bb.an
  %i.hn = trunc nuw nsw i64 %indvars.iv.i172 to i32
  %i.ho = add nuw nsw i32 %i.hn, 1
  br label %xfrm_policy_ok.exit

xfrm_state_ok.exit.thread.i:                      ; preds = %xfrm_state_ok.exit.i, %.split51.i, %xfrm_state_addr_cmp.exit.i, %.split.i, %bb.ax, %bb.av, %bb.av, %bb.av, %bb.av, %bb.as, %bb.ar, %bb.aq, %bb.ap, %.split52.i, %bb.am, %bb.al
  %i.hp = getelementptr i8, ptr %i.fu, i64 252
  %i.hq = load i8, ptr %i.hp, align 4
  %.not23.i = icmp eq i8 %i.hq, 0
  br i1 %.not23.i, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %xfrm_state_ok.exit.thread.i
  %i.hr = load i8, ptr %i.ew, align 2
  %i.hs = zext i8 %i.hr to i64
  %i.ht = icmp samesign ult i64 %indvars.iv.i172, %i.hs
  br i1 %i.ht, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hu = trunc nuw nsw i64 %indvars.iv.i172 to i32
  %i.hv = icmp eq i32 %.021.i, -1
  %i.hw = sub nuw nsw i32 -2, %i.hu
  %spec.select.i173 = select i1 %i.hv, i32 %i.hw, i32 %.021.i
  br label %xfrm_policy_ok.exit

bb.bc:                                            ; preds = %bb.ba, %xfrm_state_ok.exit.thread.i
  %indvars.iv.next.i174 = add nuw nsw i64 %indvars.iv.i172, 1 ; 2 uses
  %exitcond.not.i175 = icmp eq i64 %indvars.iv.next.i174, %wide.trip.count.i171
  br i1 %exitcond.not.i175, label %xfrm_policy_ok.exit, label %bb.ak, !llvm.loop !144

xfrm_policy_ok.exit:                              ; preds = %bb.bc, %bb.ai, %bb.aj, %xfrm_state_ok.exit.thread37.i, %bb.bb
  %.020.i = phi i32 [ %.0113294, %bb.ai ], [ %i.ho, %xfrm_state_ok.exit.thread37.i ], [ %spec.select.i173, %bb.bb ], [ %.021.i, %bb.aj ], [ %.021.i, %bb.bc ] ; 4 uses
  %i.hx = icmp slt i32 %.020.i, 0
  br i1 %i.hx, label %bb.bd, label %bb.ah, !llvm.loop !143

bb.bd:                                            ; preds = %xfrm_policy_ok.exit
  %i.hy = sub nsw i32 -2, %.020.i
  br label %bb.bg

._crit_edge:                                      ; preds = %bb.ah, %.preheader
  %.0113.lcssa = phi i32 [ 0, %.preheader ], [ %.020.i, %bb.ah ] ; 4 uses
  %i.hz = load i8, ptr %i.eu, align 4             ; 2 uses
  %i.ia = zext i8 %i.hz to i32
  %i.ib = icmp samesign ult i32 %.0113.lcssa, %i.ia
  br i1 %i.ib, label %.lr.ph.preheader.i179, label %.thread225

.lr.ph.preheader.i179:                            ; preds = %._crit_edge
  %i.ic = zext nneg i32 %.0113.lcssa to i64
  %wide.trip.count.i180 = zext i8 %i.hz to i64
  br label %.lr.ph.i181

.lr.ph.i181:                                      ; preds = %bb.be, %.lr.ph.preheader.i179
  %indvars.iv.i182 = phi i64 [ %i.ic, %.lr.ph.preheader.i179 ], [ %indvars.iv.next.i184, %bb.be ] ; 3 uses
  %i.id = getelementptr [8 x i8], ptr %spec.store.select, i64 %indvars.iv.i182
  %i.ie = load ptr, ptr %i.id, align 8
  %i.if = getelementptr i8, ptr %i.ie, i64 252
  %i.ig = load i8, ptr %i.if, align 4
  %.not.i183 = icmp eq i8 %i.ig, 0
  br i1 %.not.i183, label %bb.be, label %secpath_has_nontransport.exit186

bb.be:                                            ; preds = %.lr.ph.i181
  %indvars.iv.next.i184 = add nuw nsw i64 %indvars.iv.i182, 1 ; 2 uses
  %exitcond.not.i185 = icmp eq i64 %indvars.iv.next.i184, %wide.trip.count.i180
  br i1 %exitcond.not.i185, label %.thread225, label %.lr.ph.i181, !llvm.loop !141

secpath_has_nontransport.exit186:                 ; preds = %.lr.ph.i181
  %i.ih = trunc nuw nsw i64 %indvars.iv.i182 to i32
  br label %bb.bg

.thread225:                                       ; preds = %bb.be, %.loopexit, %._crit_edge
  %.1114 = phi i32 [ 0, %.loopexit ], [ %.0113.lcssa, %._crit_edge ], [ %.0113.lcssa, %bb.be ]
  call fastcc void @xfrm_pols_put(ptr noundef nonnull %i.a, i32 noundef 1) #23, !srcloc !145
  %i.ii = trunc i32 %.1114 to i8
  %i.ij = getelementptr i8, ptr %spec.store.select, i64 70
  store i8 %i.ii, ptr %i.ij, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %.critedge

bb.bf:                                            ; preds = %skb_sec_path.exit168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %xfrm_secpath_reject.exit

bb.bg:                                            ; preds = %secpath_has_nontransport.exit186, %bb.bd
  %.1197.ph = phi i32 [ %i.ih, %secpath_has_nontransport.exit186 ], [ %i.hy, %bb.bd ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br i1 %i.dy, label %skb_sec_path.exit.i, label %xfrm_secpath_reject.exit

skb_sec_path.exit.i:                              ; preds = %bb.bg
  %i.ik = getelementptr i8, ptr %2, i64 224
  %i.il = load ptr, ptr %i.ik, align 8            ; 2 uses
  %i.im = getelementptr i8, ptr %i.il, i64 4
  %i.in = load i8, ptr %i.im, align 1
  %i.io = zext i8 %i.in to i64
  %i.ip = shl nuw nsw i64 %i.io, 3
  %i.iq = getelementptr i8, ptr %i.il, i64 %i.ip  ; 3 uses
  %i.ir = icmp eq ptr %i.iq, null
  %i.is = icmp slt i32 %.1197.ph, 0
  %or.cond.i = or i1 %i.is, %i.ir
  br i1 %or.cond.i, label %xfrm_secpath_reject.exit, label %bb.bh

bb.bh:                                            ; preds = %skb_sec_path.exit.i
  %i.it = getelementptr i8, ptr %i.iq, i64 68
  %i.iu = load i8, ptr %i.it, align 4
  %i.iv = zext i8 %i.iu to i32
  %.not.i189 = icmp samesign ult i32 %.1197.ph, %i.iv
  br i1 %.not.i189, label %bb.bi, label %xfrm_secpath_reject.exit

bb.bi:                                            ; preds = %bb.bh
  %i.iw = zext nneg i32 %.1197.ph to i64
  %i.ix = getelementptr [8 x i8], ptr %i.iq, i64 %i.iw
  %i.iy = load ptr, ptr %i.ix, align 8            ; 2 uses
  %i.iz = getelementptr i8, ptr %i.iy, i64 760
  %i.ja = load ptr, ptr %i.iz, align 8
  %i.jb = getelementptr i8, ptr %i.ja, i64 48
  %i.jc = load ptr, ptr %i.jb, align 8            ; 2 uses
  %.not16.i = icmp eq ptr %i.jc, null
  br i1 %.not16.i, label %xfrm_secpath_reject.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jd = call i32 %i.jc(ptr noundef %i.iy, ptr noundef %2, ptr noundef nonnull %6) #20, !inline_history !146 ; 0 uses
  br label %xfrm_secpath_reject.exit

xfrm_secpath_reject.exit:                         ; preds = %bb.ae, %bb.bf, %bb.bg, %skb_sec_path.exit.i, %bb.bh, %bb.bi, %bb.bj
  %i.je = getelementptr i8, ptr %i.cj, i64 56     ; 3 uses
  %i.jf = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.je, i32 -1, ptr elementtype(i32) %i.je) #22, !srcloc !15 ; 2 uses
  %i.jg = icmp eq i32 %i.jf, 1
  br i1 %i.jg, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %xfrm_secpath_reject.exit
  %i.jh = icmp slt i32 %i.jf, 1
  br i1 %i.jh, label %bb.bl, label %.critedge, !prof !11

bb.bl:                                            ; preds = %bb.bk
  call void @refcount_warn_saturate(ptr noundef %i.je, i32 noundef 3) #20
  br label %.critedge

bb.bm:                                            ; preds = %xfrm_secpath_reject.exit
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #22, !srcloc !16
  %i.ji = getelementptr i8, ptr %i.cj, i64 296
  %i.jj = load i8, ptr %i.ji, align 8
  %.not.i.i.i194 = icmp eq i8 %i.jj, 0
  br i1 %.not.i.i.i194, label %bb.bn, label %bb.bo, !prof !11

bb.bn:                                            ; preds = %bb.bm
  call void asm sideeffect "1166: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1166b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1166) #22, !srcloc !17
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 466, i32 0, i64 16) #22, !srcloc !18
  unreachable

bb.bo:                                            ; preds = %bb.bm
  %i.jk = getelementptr i8, ptr %i.cj, i64 64
  %i.jl = call i32 @timer_delete(ptr noundef %i.jk) #20
  %.not5.i.i.i = icmp eq i32 %i.jl, 0
  br i1 %.not5.i.i.i, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.jm = getelementptr i8, ptr %i.cj, i64 328
  %i.jn = call i32 @timer_delete(ptr noundef %i.jm) #20
  %.not6.i.i.i = icmp eq i32 %i.jn, 0
  br i1 %.not6.i.i.i, label %xfrm_policy_destroy.exit.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  call void asm sideeffect "1167: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1167b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1167) #22, !srcloc !19
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 469, i32 0, i64 16) #22, !srcloc !20
  unreachable

xfrm_policy_destroy.exit.i.i:                     ; preds = %bb.bp
  %i.jo = getelementptr i8, ptr %i.cj, i64 776
  call void @call_rcu(ptr noundef %i.jo, ptr noundef nonnull @xfrm_policy_destroy_rcu) #20
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %bb.j, %icmp_err_packet.exit.i, %bb.l, %bb.m, %xfrm_selector_inner_icmp_match.exit, %bb.i, %bb.ac, %bb.bk, %bb.bl, %xfrm_policy_destroy.exit.i.i, %bb.ab, %.thread225, %.thread211, %xfrm_selector_inner_icmp_match.exit.thread203, %bb.aa, %bb.ad, %secpath_has_nontransport.exit, %bb.r, %bb.p, %bb.c
  %.6.shrunk = phi i32 [ 1, %secpath_has_nontransport.exit ], [ 0, %bb.c ], [ 0, %bb.p ], [ 1, %.thread225 ], [ %i.cp, %.thread211 ], [ 0, %bb.r ], [ 0, %bb.ad ], [ 0, %bb.aa ], [ 0, %xfrm_selector_inner_icmp_match.exit.thread203 ], [ 0, %bb.bk ], [ 1, %bb.ab ], [ 1, %bb.ac ], [ 0, %xfrm_policy_destroy.exit.i.i ], [ 0, %bb.bl ], [ 0, %bb.i ], [ 0, %xfrm_selector_inner_icmp_match.exit ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %icmp_err_packet.exit.i ], [ 0, %bb.j ], [ 0, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %.6.shrunk
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc ptr @xfrm_policy_lookup(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i16 noundef zeroext %2, i8 noundef zeroext range(i8 0, 4) %3, i32 noundef %4) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  switch i16 %2, label %xfrm_policy_lookup_bytype.exit [
    i16 2, label %xfrm_flowi_saddr.exit.i
    i16 10, label %xfrm_flowi_daddr.exit.thread100.i
  ]

xfrm_flowi_daddr.exit.thread100.i:                ; preds = %bb.a
  br label %xfrm_flowi_saddr.exit.i

xfrm_flowi_saddr.exit.i:                          ; preds = %xfrm_flowi_daddr.exit.thread100.i, %bb.a
  %.sink210.i = phi i64 [ 40, %xfrm_flowi_daddr.exit.thread100.i ], [ 44, %bb.a ]
  %.sink.i = phi i64 [ 56, %xfrm_flowi_daddr.exit.thread100.i ], [ 40, %bb.a ]
  %i.a = getelementptr i8, ptr %1, i64 %.sink210.i ; 6 uses
  %i.b = getelementptr i8, ptr %1, i64 %.sink.i   ; 7 uses
  %.not.i = icmp eq ptr %i.a, null
  %.not76.i = icmp eq ptr %i.b, null
  %spec.select.i = or i1 %.not.i, %.not76.i
  br i1 %spec.select.i, label %xfrm_policy_lookup_bytype.exit, label %bb.b, !prof !23

bb.b:                                             ; preds = %xfrm_flowi_saddr.exit.i
  tail call void @__rcu_read_lock() #20
  %i.c = getelementptr i8, ptr %0, i64 3848       ; 4 uses
  %i.d = getelementptr i8, ptr %0, i64 3200
  %i.e = zext nneg i8 %3 to i64
  %i.f = getelementptr [16 x i8], ptr %i.d, i64 %i.e ; 5 uses
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %i.h = getelementptr i8, ptr %i.f, i64 14
  %i.i = getelementptr i8, ptr %i.f, i64 12
  %i.j = getelementptr i8, ptr %1, i64 12         ; 5 uses
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.b
  %i.k = load volatile i32, ptr %i.c, align 4     ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #22, !srcloc !147
  %i.l = and i32 %i.k, 1
  %.not77144.i = icmp eq i32 %i.l, 0
  br i1 %.not77144.i, label %._crit_edge.i, label %.lr.ph.i, !prof !148

.lr.ph.i:                                         ; preds = %.backedge.i, %.lr.ph.i
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #22, !srcloc !70
  %i.m = load volatile i32, ptr %i.c, align 4     ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #22, !srcloc !147
  %i.n = and i32 %i.m, 1
  %.not77.i = icmp eq i32 %i.n, 0
  br i1 %.not77.i, label %._crit_edge.i, label %.lr.ph.i, !prof !149, !llvm.loop !150

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.backedge.i
  %.lcssa.i = phi i32 [ %i.k, %.backedge.i ], [ %i.m, %.lr.ph.i ] ; 2 uses
  %i.o = load i32, ptr %i.g, align 8
  switch i16 %2, label %policy_hash_direct.exit.i [
    i16 2, label %__get_hash_thresh.exit.sink.split.i.i
    i16 10, label %bb.c
  ]

bb.c:                                             ; preds = %._crit_edge.i
  br label %__get_hash_thresh.exit.sink.split.i.i

__get_hash_thresh.exit.sink.split.i.i:            ; preds = %bb.c, %._crit_edge.i
  %.sink15.i.i = phi i64 [ 15, %bb.c ], [ 13, %._crit_edge.i ]
  %.0.ph.in.i.i = phi ptr [ %i.h, %bb.c ], [ %i.i, %._crit_edge.i ]
  %.0.ph.i.i = load i8, ptr %.0.ph.in.i.i, align 2
  %i.p = getelementptr i8, ptr %i.f, i64 %.sink15.i.i
  %i.q = load i8, ptr %i.p, align 1
  br label %policy_hash_direct.exit.i

policy_hash_direct.exit.i:                        ; preds = %__get_hash_thresh.exit.sink.split.i.i, %._crit_edge.i
  %.0.i91.i = phi i8 [ 0, %._crit_edge.i ], [ %.0.ph.i.i, %__get_hash_thresh.exit.sink.split.i.i ] ; 5 uses
  %.sink.i.i.i = phi i8 [ 0, %._crit_edge.i ], [ %i.q, %__get_hash_thresh.exit.sink.split.i.i ] ; 5 uses
  switch i16 %2, label %__addr_hash.exit.i [
    i16 2, label %bb.d
    i16 10, label %bb.i
  ]

bb.d:                                             ; preds = %policy_hash_direct.exit.i
  %.val.i.i = load i32, ptr %i.a, align 4
  %i.r = tail call i32 @llvm.bswap.i32(i32 %.val.i.i) ; 2 uses
  %i.s = icmp eq i8 %.0.i91.i, 0
  br i1 %i.s, label %__bits2mask32.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = icmp ult i8 %.0.i91.i, 32
  br i1 %i.t, label %bb.f, label %__bits2mask32.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %narrow.i.i.i.i = sub nuw nsw i8 32, %.0.i91.i
  %i.u = zext nneg i8 %narrow.i.i.i.i to i32
  %i.v = shl nsw i32 -1, %i.u
  %i.w = and i32 %i.r, %i.v
  br label %__bits2mask32.exit.i.i.i

__bits2mask32.exit.i.i.i:                         ; preds = %bb.f, %bb.e, %bb.d
  %.0.i.i.i.i = phi i32 [ %i.r, %bb.e ], [ %i.w, %bb.f ], [ 0, %bb.d ]
  %i.x = load i32, ptr %i.b, align 4
  %i.y = icmp eq i8 %.sink.i.i.i, 0
  br i1 %i.y, label %__xfrm4_dpref_spref_hash.exit.i.i, label %bb.g

bb.g:                                             ; preds = %__bits2mask32.exit.i.i.i
  %i.z = icmp ult i8 %.sink.i.i.i, 32
  br i1 %i.z, label %bb.h, label %__xfrm4_dpref_spref_hash.exit.i.i

bb.h:                                             ; preds = %bb.g
  %narrow.i4.i.i.i = sub nuw nsw i8 32, %.sink.i.i.i
  %i.aa = zext nneg i8 %narrow.i4.i.i.i to i32
  %i.ab = shl nsw i32 -1, %i.aa
  br label %__xfrm4_dpref_spref_hash.exit.i.i

__xfrm4_dpref_spref_hash.exit.i.i:                ; preds = %bb.h, %bb.g, %__bits2mask32.exit.i.i.i
  %.0.i3.i.i.i = phi i32 [ -1, %bb.g ], [ %i.ab, %bb.h ], [ 0, %__bits2mask32.exit.i.i.i ]
  %i.ac = tail call i32 @llvm.bswap.i32(i32 %i.x)
  %i.ad = and i32 %.0.i3.i.i.i, %i.ac
  %i.ae = add i32 %.0.i.i.i.i, -559038729
  %i.af = add i32 %i.ad, -559038729               ; 4 uses
  %i.ag = xor i32 %i.af, -559038729
  %i.ah = tail call noundef i32 @llvm.fshl.i32(i32 %i.af, i32 %i.af, i32 14)
  %i.ai = sub i32 %i.ag, %i.ah                    ; 4 uses
  %i.aj = xor i32 %i.ai, %i.ae
  %i.ak = tail call noundef i32 @llvm.fshl.i32(i32 %i.ai, i32 %i.ai, i32 11)
  %i.al = sub i32 %i.aj, %i.ak                    ; 4 uses
  %i.am = xor i32 %i.al, %i.af
  %i.an = tail call noundef i32 @llvm.fshl.i32(i32 %i.al, i32 %i.al, i32 25)
  %i.ao = sub i32 %i.am, %i.an                    ; 4 uses
  %i.ap = xor i32 %i.ao, %i.ai
  %i.aq = tail call noundef i32 @llvm.fshl.i32(i32 %i.ao, i32 %i.ao, i32 16)
  %i.ar = sub i32 %i.ap, %i.aq                    ; 4 uses
  %i.as = xor i32 %i.ar, %i.al
  %i.at = tail call noundef i32 @llvm.fshl.i32(i32 %i.ar, i32 %i.ar, i32 4)
  %i.au = sub i32 %i.as, %i.at                    ; 3 uses
  %i.av = xor i32 %i.au, %i.ao
  %i.aw = tail call noundef i32 @llvm.fshl.i32(i32 %i.au, i32 %i.au, i32 14)
  %i.ax = sub i32 %i.av, %i.aw                    ; 3 uses
  %i.ay = xor i32 %i.ax, %i.ar
  %i.az = tail call noundef i32 @llvm.fshl.i32(i32 %i.ax, i32 %i.ax, i32 24)
  %i.ba = sub i32 %i.ay, %i.az
  br label %__addr_hash.exit.i

bb.i:                                             ; preds = %policy_hash_direct.exit.i
  %i.bb = zext i8 %.0.i91.i to i32                ; 2 uses
  %i.bc = lshr i32 %i.bb, 5                       ; 4 uses
  %i.bd = and i32 %i.bb, 31                       ; 2 uses
  %.not.i.i.i93.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i.i93.i, label %__xfrm6_pref_hash.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = sub nuw nsw i32 32, %i.bd
end_hunk_1
