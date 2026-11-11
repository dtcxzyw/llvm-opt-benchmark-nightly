Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/vm?download=true
inline.NumInlined: 3275
inline.NumDeleted: 574
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 39
begin_hunk_0_@vm_call_optimized:bb.a
  store i64 %.0.i119, ptr %i.gz, align 8, !tbaa !802
  %i.ha = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i64 %i.gs, ptr %i.ha, align 8, !tbaa !803
  %i.hb = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i64 36, ptr %i.hb, align 8, !tbaa !735
  %i.hc = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i64 36, ptr %i.hc, align 8, !tbaa !736
  %i.hd = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 0, ptr %i.hd, align 8, !tbaa !737
  call void @rb_exec_event_hooks(ptr noundef nonnull %6, ptr noundef %i.gd, i32 noundef 0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %rb_ec_hooks.exit123

rb_ec_hooks.exit123:                              ; preds = %vm_ci_mid.exit120, %rb_ec_hooks.exit117
  %i.he = call i64 @vm_call_opt_struct_aset(ptr nonnull poison, ptr noundef %1, ptr noundef nonnull %2) ; 3 uses
  %.val92 = load ptr, ptr %i.ga, align 8, !tbaa !416, !nonnull !440, !noundef !440
  %i.hf = getelementptr i8, ptr %.val92, i64 24
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !613 ; 2 uses
  %i.hh = getelementptr i8, ptr %i.hg, i64 16
  %i.hi = getelementptr i8, ptr %i.hg, i64 24
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !728
  %i.hk = and i32 %i.hj, 64
  %.not79 = icmp eq i32 %i.hk, 0
  br i1 %.not79, label %vm_call_opt_send.exit, label %bb.ak, !prof !448

bb.ak:                                            ; preds = %rb_ec_hooks.exit123
  %i.hl = getelementptr i8, ptr %2, i64 24
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !583
  %.val84 = load ptr, ptr %i.a, align 8, !tbaa !549 ; 2 uses
  %i.hn = getelementptr i8, ptr %.val84, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !458
  %i.hp = getelementptr i8, ptr %i.ho, i64 32
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !564
  %i.hr = ptrtoint ptr %3 to i64                  ; 2 uses
  %.not.i.i124 = trunc i64 %i.hr to i1
  br i1 %.not.i.i124, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.hs = lshr i64 %i.hr, 32
  br label %vm_ci_mid.exit126

bb.am:                                            ; preds = %bb.ak
  %i.ht = getelementptr i8, ptr %3, i64 16
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !529
  br label %vm_ci_mid.exit126

vm_ci_mid.exit126:                                ; preds = %bb.al, %bb.am
  %.0.i125 = phi i64 [ %i.hs, %bb.al ], [ %i.hu, %bb.am ]
  %i.hv = getelementptr i8, ptr %.val84, i64 32
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !661
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i32 64, ptr %5, align 8, !tbaa !730
  %i.hx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %i.hx, align 8, !tbaa !731
  %i.hy = getelementptr i8, ptr %0, i64 16
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !446
  %i.ia = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.hz, ptr %i.ia, align 8, !tbaa !732
  %i.ib = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.hm, ptr %i.ib, align 8, !tbaa !733
  %i.ic = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %i.hq, ptr %i.ic, align 8, !tbaa !734
  %i.id = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %.0.i125, ptr %i.id, align 8, !tbaa !802
  %i.ie = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 %i.hw, ptr %i.ie, align 8, !tbaa !803
  %i.if = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 %i.he, ptr %i.if, align 8, !tbaa !735
  %i.ig = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i64 36, ptr %i.ig, align 8, !tbaa !736
  %i.ih = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i32 0, ptr %i.ih, align 8, !tbaa !737
  call void @rb_exec_event_hooks(ptr noundef nonnull %5, ptr noundef %i.hh, i32 noundef 0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %vm_call_opt_send.exit

bb.an:                                            ; preds = %rb_check_arity.exit114
  %i.ii = load i64, ptr %4, align 8, !tbaa !389
  %i.ij = or i64 %i.ii, 65536
  store i64 %i.ij, ptr %4, align 8, !tbaa !389
  %i.ik = ptrtoint ptr %3 to i64                  ; 2 uses
  %.not.i.i127 = trunc i64 %i.ik to i1
  br i1 %.not.i.i127, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.il = trunc i64 %i.ik to i32
  %i.im = lshr i32 %i.il, 16
  br label %vm_ci_flag.exit129

bb.ap:                                            ; preds = %bb.an
  %i.in = getelementptr i8, ptr %3, i64 24
  %i.io = load i64, ptr %i.in, align 8, !tbaa !535
  %i.ip = trunc i64 %i.io to i32
  br label %vm_ci_flag.exit129

vm_ci_flag.exit129:                               ; preds = %bb.ao, %bb.ap
  %.0.i128 = phi i32 [ %i.im, %bb.ao ], [ %i.ip, %bb.ap ]
  %i.iq = and i32 %.0.i128, 16
  %.not135 = icmp eq i32 %i.iq, 0
  br i1 %.not135, label %CC_SET_FASTPATH.exit130, label %bb.aq, !prof !539

bb.aq:                                            ; preds = %vm_ci_flag.exit129
  %i.ir = getelementptr i8, ptr %4, i64 24
  store ptr @vm_call_opt_struct_aset, ptr %i.ir, align 8, !tbaa !538
  br label %CC_SET_FASTPATH.exit130

CC_SET_FASTPATH.exit130:                          ; preds = %vm_ci_flag.exit129, %bb.aq
  %i.is = getelementptr i8, ptr %1, i64 8         ; 3 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !449
  %i.iu = getelementptr i8, ptr %i.it, i64 -8
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !389 ; 5 uses
  %i.iw = getelementptr i8, ptr %2, i64 24
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !583 ; 6 uses
  %i.iy = icmp ne i64 %i.ix, 0
  %i.iz = and i64 %i.ix, 7
  %i.ja = icmp eq i64 %i.iz, 0
  %.not3.i.i.i.i = and i1 %i.iy, %i.ja
  br i1 %.not3.i.i.i.i, label %RB_OBJ_FROZEN.exit.i.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i.i, !prof !530

RB_OBJ_FROZEN.exit.i.i.i:                         ; preds = %CC_SET_FASTPATH.exit130
  %i.jb = inttoptr i64 %i.ix to ptr               ; 4 uses
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !453 ; 4 uses
  %i.jd = and i64 %i.jc, 2048
  %.not.i.i.i131 = icmp eq i64 %i.jd, 0
  br i1 %.not.i.i.i131, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i.i, !prof !651

RB_OBJ_FROZEN.exit.thread.i.i.i:                  ; preds = %RB_OBJ_FROZEN.exit.i.i.i, %CC_SET_FASTPATH.exit130
  tail call void @rb_error_frozen_object(i64 noundef %i.ix) #42
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %RB_OBJ_FROZEN.exit.i.i.i
  %i.je = and i64 %i.jc, 31
  %i.jf = icmp ne i64 %i.je, 5
  %i.jg = and i64 %i.jc, 49152
  %.not8.i.i.i = icmp eq i64 %i.jg, 0
  %or.cond.i.i.i = or i1 %i.jf, %.not8.i.i.i
  br i1 %or.cond.i.i.i, label %rb_check_frozen_inline.exit.i.i, label %bb.ar, !prof !692

bb.ar:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  tail call void @rb_str_modify(i64 noundef %i.ix) #23
  %.pre.i.i = load i64, ptr %i.jb, align 8, !tbaa !453
  br label %rb_check_frozen_inline.exit.i.i

rb_check_frozen_inline.exit.i.i:                  ; preds = %bb.ar, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  %i.jh = phi i64 [ %i.jc, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i ], [ %.pre.i.i, %bb.ar ]
  %i.ji = getelementptr i8, ptr %2, i64 8
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !587
  %i.jk = getelementptr i8, ptr %i.jj, i64 16
  %.val.i.i = load ptr, ptr %i.jk, align 8, !tbaa !549
  %i.jl = getelementptr i8, ptr %.val.i.i, i64 16
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !458
  %i.jn = getelementptr i8, ptr %i.jm, i64 12
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !403
  %i.jp = zext i32 %i.jo to i64
  %i.jq = and i64 %i.jh, 1040384
  %.not.i.i.i.i132 = icmp eq i64 %i.jq, 0
  br i1 %.not.i.i.i.i132, label %bb.at, label %bb.as

bb.as:                                            ; preds = %rb_check_frozen_inline.exit.i.i
  %i.jr = getelementptr i8, ptr %i.jb, i64 16
  br label %RSTRUCT_CONST_PTR.exit.i.i.i

bb.at:                                            ; preds = %rb_check_frozen_inline.exit.i.i
  %i.js = getelementptr i8, ptr %i.jb, i64 24
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !403
  br label %RSTRUCT_CONST_PTR.exit.i.i.i

RSTRUCT_CONST_PTR.exit.i.i.i:                     ; preds = %bb.at, %bb.as
  %.0.i.i.i.i133 = phi ptr [ %i.jr, %bb.as ], [ %i.jt, %bb.at ]
  %i.ju = getelementptr [8 x i8], ptr %.0.i.i.i.i133, i64 %i.jp
  store i64 %i.iv, ptr %i.ju, align 8, !tbaa !389
  %i.jv = icmp eq i64 %i.iv, 0
  %i.jw = and i64 %i.iv, 7
  %i.jx = icmp ne i64 %i.jw, 0
  %i.jy = or i1 %i.jv, %i.jx
  br i1 %i.jy, label %vm_call_opt_struct_aset.exit, label %bb.au

bb.au:                                            ; preds = %RSTRUCT_CONST_PTR.exit.i.i.i
  tail call void @rb_gc_writebarrier(i64 noundef %i.ix, i64 noundef %i.iv) #23
  br label %vm_call_opt_struct_aset.exit

vm_call_opt_struct_aset.exit:                     ; preds = %RSTRUCT_CONST_PTR.exit.i.i.i, %bb.au
  %i.jz = load ptr, ptr %i.is, align 8, !tbaa !449
  %i.ka = getelementptr i8, ptr %i.jz, i64 -16
  store ptr %i.ka, ptr %i.is, align 8, !tbaa !449
  br label %vm_call_opt_send.exit

bb.av:                                            ; preds = %bb.a
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.160, i32 noundef %i.e) #57
  unreachable

vm_call_opt_send.exit:                            ; preds = %vm_call_opt_send0.exit, %.critedge.i, %vm_call_opt_struct_aset.exit, %vm_ci_mid.exit126, %rb_ec_hooks.exit123, %vm_call_opt_struct_aref.exit111, %vm_ci_mid.exit101, %vm_call_opt_struct_aref.exit, %bb.n, %bb.m
  %.077 = phi i64 [ %i.he, %rb_ec_hooks.exit123 ], [ %i.bs, %bb.m ], [ %i.bu, %bb.n ], [ %i.dq, %vm_call_opt_struct_aref.exit ], [ %i.fs, %vm_call_opt_struct_aref.exit111 ], [ %i.dq, %vm_ci_mid.exit101 ], [ %i.iv, %vm_call_opt_struct_aset.exit ], [ %i.he, %vm_ci_mid.exit126 ], [ %i.ae, %.critedge.i ], [ %i.bm, %vm_call_opt_send0.exit ]
  ret i64 %.077
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc i32 @vm_callee_setup_arg(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #11 !guid !1519 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !581
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !579  ; 23 uses
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !587  ; 17 uses
  %i.e = getelementptr i8, ptr %2, i64 16         ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !497
  %i.g = getelementptr i8, ptr %i.f, i64 16
  %i.h = load i16, ptr %i.g, align 8
  %i.i = and i16 %i.h, 4096
  %.not = icmp eq i16 %i.i, 0
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !582
  %.not160 = icmp eq i64 %i.k, 0
  br i1 %.not160, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %i.b to i64                 ; 2 uses
  %.not.i.i = trunc i64 %i.l to i1
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = trunc i64 %i.l to i32
  %i.n = lshr i32 %i.m, 16
  br label %vm_ci_flag.exit

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %i.b, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !535
  %i.q = trunc i64 %i.p to i32
  br label %vm_ci_flag.exit

vm_ci_flag.exit:                                  ; preds = %bb.d, %bb.e
  %.0.i = phi i32 [ %i.n, %bb.d ], [ %i.q, %bb.e ]
  %i.r = and i32 %.0.i, 1280
  %.not161 = icmp eq i32 %i.r, 0
  br i1 %.not161, label %bb.f, label %.critedge, !prof !539

bb.f:                                             ; preds = %vm_ci_flag.exit
  %i.s = getelementptr i8, ptr %i.d, i64 16
  %.val183 = load ptr, ptr %i.s, align 8, !tbaa !549
  %i.t = getelementptr i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !446
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !515
  tail call fastcc void @warn_unused_block(ptr noundef %.val183, ptr noundef nonnull %2, ptr noundef %i.v)
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.a, %bb.f, %vm_ci_flag.exit
  %i.w = ptrtoint ptr %i.b to i64                 ; 17 uses
  %.not.i.i184 = trunc i64 %i.w to i1             ; 8 uses
  br i1 %.not.i.i184, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.critedge
  %i.x = trunc i64 %i.w to i32
  %i.y = lshr i32 %i.x, 16
  br label %vm_ci_flag.exit186

bb.h:                                             ; preds = %.critedge
  %i.z = getelementptr i8, ptr %i.b, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !535
  %i.ab = trunc i64 %i.aa to i32
  br label %vm_ci_flag.exit186

vm_ci_flag.exit186:                               ; preds = %bb.g, %bb.h
  %.0.i185 = phi i32 [ %i.y, %bb.g ], [ %i.ab, %bb.h ]
  %i.ac = and i32 %.0.i185, 64
  %.not162 = icmp eq i32 %i.ac, 0
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !497 ; 8 uses
  %i.ad = getelementptr i8, ptr %.pre, i64 16
  %i.ae = load i16, ptr %i.ad, align 8            ; 3 uses
  br i1 %.not162, label %bb.i, label %.critedge177, !prof !448

bb.i:                                             ; preds = %vm_ci_flag.exit186
  %i.af = and i16 %i.ae, 8574
  switch i16 %i.af, label %bb.y [
    i16 0, label %bb.j
    i16 2, label %bb.t
  ], !prof !1520

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !446
  %i.ai = getelementptr i8, ptr %.pre, i64 24
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !537 ; 4 uses
  tail call fastcc void @CALLER_SETUP_ARG(ptr noundef %i.ah, ptr noundef nonnull %1, ptr noundef %i.b, i32 noundef %i.aj)
  %i.ak = getelementptr i8, ptr %1, i64 32
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !584 ; 2 uses
  %.not174 = icmp eq i32 %i.al, %i.aj
  br i1 %.not174, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr i8, ptr %i.d, i64 16
  %.val182 = load ptr, ptr %i.am, align 8, !tbaa !549
  tail call fastcc void @argument_arity_error(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %.val182, i32 noundef %i.al, i32 noundef %i.aj, i32 noundef %i.aj) #58
  unreachable

bb.l:                                             ; preds = %bb.j
  br i1 %.not.i.i184, label %vm_ci_flag.exit.i, label %vm_ci_flag.exit.thread.i

vm_ci_flag.exit.i:                                ; preds = %bb.l
  %i.an = and i64 %i.w, 539033600
  %or.cond13.i = icmp eq i64 %i.an, 0
  br i1 %or.cond13.i, label %bb.m, label %CC_SET_FASTPATH.exit243

vm_ci_flag.exit.thread.i:                         ; preds = %bb.l
  %i.ao = getelementptr i8, ptr %i.b, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !535 ; 2 uses
  %i.aq = and i64 %i.ap, 8225
  %or.cond14.i = icmp eq i64 %i.aq, 0
  br i1 %or.cond14.i, label %.thread.i.i, label %CC_SET_FASTPATH.exit243

bb.m:                                             ; preds = %vm_ci_flag.exit.i
  %i.ar = trunc i64 %i.w to i32
  %i.as = lshr i32 %i.ar, 16
  br label %vm_ci_flag.exit6.i.i

.thread.i.i:                                      ; preds = %vm_ci_flag.exit.thread.i
  %i.at = trunc i64 %i.ap to i32
  br label %vm_ci_flag.exit6.i.i

vm_ci_flag.exit6.i.i:                             ; preds = %.thread.i.i, %bb.m
  %.0.i5.i.i = phi i32 [ %i.as, %bb.m ], [ %i.at, %.thread.i.i ]
  %i.au = and i32 %.0.i5.i.i, 4
  %.not3.i.i = icmp eq i32 %i.au, 0
  br i1 %.not3.i.i, label %vm_call_iseq_optimizable_p.exit, label %vm_call_iseq_optimizable_p.exit.thread291

vm_call_iseq_optimizable_p.exit:                  ; preds = %vm_ci_flag.exit6.i.i
  %i.av = getelementptr i8, ptr %i.d, i64 16
  %.val.i.i = load ptr, ptr %i.av, align 8, !tbaa !549
  %i.aw = load i64, ptr %.val.i.i, align 8, !tbaa !532
  %i.ax = and i64 %i.aw, 196608
  %.not378 = icmp eq i64 %i.ax, 196608
  br i1 %.not378, label %CC_SET_FASTPATH.exit243, label %vm_call_iseq_optimizable_p.exit.thread291

vm_call_iseq_optimizable_p.exit.thread291:        ; preds = %vm_ci_flag.exit6.i.i, %vm_call_iseq_optimizable_p.exit
  %i.ay = load ptr, ptr %i.e, align 8, !tbaa !497 ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 268
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !676
  %i.bb = and i32 %i.ba, 2
  %i.bc = icmp ne i32 %i.bb, 0
  %i.bd = load i32, ptr @ruby_vm_c_events_enabled, align 4
  %i.be = icmp eq i32 %i.bd, 0
  %or.cond = select i1 %i.bc, i1 %i.be, i1 false
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %vm_call_iseq_optimizable_p.exit.thread291
  %i.bf = getelementptr i8, ptr %i.ay, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !516
  %i.bh = getelementptr i8, ptr %i.bg, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !389
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = getelementptr i8, ptr %i.d, i64 32
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !403
  %i.bl = load i64, ptr %i.d, align 8, !tbaa !389
  %i.bm = or i64 %i.bl, 131072
  store i64 %i.bm, ptr %i.d, align 8, !tbaa !389
  %i.bn = getelementptr i8, ptr %i.d, i64 24
  store ptr @vm_call_single_noarg_leaf_builtin, ptr %i.bn, align 8, !tbaa !538
  br label %CC_SET_FASTPATH.exit243

bb.o:                                             ; preds = %vm_call_iseq_optimizable_p.exit.thread291
  br i1 %.not.i.i184, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bo = trunc i64 %i.w to i32
  %i.bp = lshr i32 %i.bo, 16
  br label %vm_ci_flag.exit.i188

bb.q:                                             ; preds = %bb.o
  %i.bq = getelementptr i8, ptr %i.b, i64 24
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !535
  %i.bs = trunc i64 %i.br to i32
  br label %vm_ci_flag.exit.i188

vm_ci_flag.exit.i188:                             ; preds = %bb.q, %bb.p
  %.0.i.i = phi i32 [ %i.bp, %bb.p ], [ %i.bs, %bb.q ]
  %i.bt = and i32 %.0.i.i, 128
  %.not.i = icmp eq i32 %i.bt, 0
  br i1 %.not.i, label %bb.r, label %vm_call_iseq_setup_func.exit, !prof !448

bb.r:                                             ; preds = %vm_ci_flag.exit.i188
  %i.bu = icmp slt i32 %4, 4
  %i.bv = icmp slt i32 %5, 6
  %or.cond.i = and i1 %i.bu, %i.bv
  br i1 %or.cond.i, label %bb.s, label %vm_call_iseq_setup_func.exit

bb.s:                                             ; preds = %bb.r
  %i.bw = sext i32 %4 to i64
  %i.bx = getelementptr [48 x i8], ptr @vm_call_iseq_handlers, i64 %i.bw
  %i.by = sext i32 %5 to i64
  %i.bz = getelementptr [8 x i8], ptr %i.bx, i64 %i.by
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !538
  br label %vm_call_iseq_setup_func.exit

vm_call_iseq_setup_func.exit:                     ; preds = %vm_ci_flag.exit.i188, %bb.r, %bb.s
  %.0.i189 = phi ptr [ @vm_call_iseq_setup_tailcall_0start, %vm_ci_flag.exit.i188 ], [ %i.ca, %bb.s ], [ @vm_call_iseq_setup_normal_0start, %bb.r ]
  %i.cb = getelementptr i8, ptr %i.d, i64 24
  store ptr %.0.i189, ptr %i.cb, align 8, !tbaa !538
  br label %CC_SET_FASTPATH.exit243

bb.t:                                             ; preds = %bb.i
  %i.cc = getelementptr i8, ptr %0, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !446
  %i.ce = getelementptr i8, ptr %.pre, i64 24
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !537 ; 3 uses
  %i.cg = getelementptr i8, ptr %.pre, i64 28
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !807 ; 2 uses
  %i.ci = add i32 %i.ch, %i.cf                    ; 4 uses
  tail call fastcc void @CALLER_SETUP_ARG(ptr noundef %i.cd, ptr noundef nonnull %1, ptr noundef %i.b, i32 noundef %i.ci)
  %i.cj = getelementptr i8, ptr %1, i64 32
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !584 ; 4 uses
  %i.cl = sub i32 %i.ck, %i.cf                    ; 3 uses
  %i.cm = icmp slt i32 %i.cl, 0
  %i.cn = icmp sgt i32 %i.cl, %i.ch
  %or.cond175 = or i1 %i.cm, %i.cn
  br i1 %or.cond175, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.co = getelementptr i8, ptr %i.d, i64 16
  %.val181 = load ptr, ptr %i.co, align 8, !tbaa !549
  tail call fastcc void @argument_arity_error(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %.val181, i32 noundef %i.ck, i32 noundef %i.cf, i32 noundef %i.ci) #58
  unreachable

bb.v:                                             ; preds = %bb.t
  br i1 %.not.i.i184, label %vm_ci_flag.exit192, label %vm_ci_flag.exit192.thread

vm_ci_flag.exit192:                               ; preds = %bb.v
  %i.cp = and i64 %i.w, 8388608
  %.not169 = icmp eq i64 %i.cp, 0
  %i.cq = and i64 %i.w, 539033600
  %or.cond382 = icmp eq i64 %i.cq, 0              ; 2 uses
  br i1 %.not169, label %vm_ci_flag.exit195, label %vm_ci_flag.exit205, !prof !448

vm_ci_flag.exit192.thread:                        ; preds = %bb.v
  %i.cr = getelementptr i8, ptr %i.b, i64 24
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !535 ; 4 uses
  %i.ct = and i64 %i.cs, 128
  %.not169293 = icmp eq i64 %i.ct, 0
  %i.cu = and i64 %i.cs, 8225
  %or.cond426 = icmp eq i64 %i.cu, 0              ; 2 uses
  br i1 %.not169293, label %vm_ci_flag.exit195.thread, label %vm_ci_flag.exit205.thread, !prof !448

vm_ci_flag.exit195:                               ; preds = %vm_ci_flag.exit192
  br i1 %or.cond382, label %bb.w, label %CC_SET_FASTPATH.exit, !prof !1521

vm_ci_flag.exit195.thread:                        ; preds = %vm_ci_flag.exit192.thread
  br i1 %or.cond426, label %.thread.i, label %CC_SET_FASTPATH.exit, !prof !1521

bb.w:                                             ; preds = %vm_ci_flag.exit195
end_hunk_0
begin_hunk_1_@vm_callee_setup_arg:bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader430 ] ; 2 uses
  %i.dx = getelementptr [8 x i8], ptr %3, i64 %indvars.iv
  store i64 4, ptr %i.dx, align 8, !tbaa !389
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1518

bb.y:                                             ; preds = %bb.i
  %i.dy = and i16 %i.ae, 8318
  %i.dz = icmp eq i16 %i.dy, 16
  br i1 %i.dz, label %bb.z, label %.critedge177

bb.z:                                             ; preds = %bb.y
  br i1 %.not.i.i184, label %vm_ci_flag.exit223, label %vm_ci_flag.exit223.thread

vm_ci_flag.exit223:                               ; preds = %bb.z
  %i.ea = and i64 %i.w, 65536
  %.not163 = icmp eq i64 %i.ea, 0
  br i1 %.not163, label %vm_ci_flag.exit226, label %.critedge177.thread

vm_ci_flag.exit223.thread:                        ; preds = %bb.z
  %i.eb = getelementptr i8, ptr %i.b, i64 24      ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !535 ; 2 uses
  %i.ed = and i64 %i.ec, 1
  %.not163310 = icmp eq i64 %i.ed, 0
  br i1 %.not163310, label %vm_ci_flag.exit226.thread, label %.critedge177.thread

vm_ci_flag.exit226:                               ; preds = %vm_ci_flag.exit223
  %i.ee = getelementptr i8, ptr %.pre, i64 24
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !537
  %i.eg = getelementptr i8, ptr %1, i64 32
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !584
  %i.ei = getelementptr i8, ptr %.pre, i64 56
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !809
  %i.ek = and i64 %i.w, 2097152
  %.not164 = icmp eq i64 %i.ek, 0
  tail call void @llvm.assume(i1 %.not164)
  br label %bb.ad

vm_ci_flag.exit226.thread:                        ; preds = %vm_ci_flag.exit223.thread
  %i.el = getelementptr i8, ptr %.pre, i64 24
  %i.em = load i32, ptr %i.el, align 8, !tbaa !537 ; 3 uses
  %i.en = getelementptr i8, ptr %1, i64 32
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !584 ; 2 uses
  %i.ep = getelementptr i8, ptr %.pre, i64 56
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !809 ; 3 uses
  %i.er = and i64 %i.ec, 32
  %.not164313 = icmp eq i64 %i.er, 0
  br i1 %.not164313, label %bb.ad, label %.thread314

.thread314:                                       ; preds = %vm_ci_flag.exit226.thread
  %i.es = getelementptr i8, ptr %i.b, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !590 ; 2 uses
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !48 ; 5 uses
  %i.ev = sub i32 %i.eo, %i.eu
  %.not165 = icmp eq i32 %i.ev, %i.em
  br i1 %.not165, label %bb.aa, label %.critedge177.thread

bb.aa:                                            ; preds = %.thread314
  %i.ew = getelementptr i8, ptr %i.et, i64 8
  %i.ex = sext i32 %i.eu to i64                   ; 2 uses
  %i.ey = icmp slt i32 %i.eu, 0
  br i1 %i.ey, label %bb.ab, label %rbimpl_size_mul_or_raise.exit229, !prof !539

bb.ab:                                            ; preds = %bb.aa
  tail call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef %i.ex) #42
  unreachable

rbimpl_size_mul_or_raise.exit229:                 ; preds = %bb.aa
  %i.ez = shl nuw nsw i64 %i.ex, 3                ; 2 uses
  %i.fa = alloca i8, i64 %i.ez, align 16          ; 2 uses
  %.not.i230 = icmp eq i32 %i.eu, 0
  br i1 %.not.i230, label %ruby_nonempty_memcpy.exit, label %bb.ac

bb.ac:                                            ; preds = %rbimpl_size_mul_or_raise.exit229
  %i.fb = sext i32 %i.em to i64
  %i.fc = getelementptr [8 x i8], ptr %3, i64 %i.fb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 %i.fa, ptr noundef nonnull readonly align 1 %i.fc, i64 noundef %i.ez, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %rbimpl_size_mul_or_raise.exit229, %bb.ac
  %i.fd = getelementptr i8, ptr %i.eq, i64 8
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !811
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr [8 x i8], ptr %3, i64 %i.ff
  %i.fh = load i32, ptr %i.eq, align 8, !tbaa !812
  %i.fi = sext i32 %i.fh to i64
  %i.fj = sub nsw i64 0, %i.fi
  %i.fk = getelementptr [8 x i8], ptr %i.fg, i64 %i.fj
  %i.fl = getelementptr i8, ptr %i.d, i64 16      ; 2 uses
  %.val180 = load ptr, ptr %i.fl, align 8, !tbaa !549
  call fastcc void @args_setup_kw_parameters(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %.val180, ptr noundef nonnull %i.fa, i32 noundef %i.eu, ptr noundef %i.ew, ptr noundef %i.fk)
  %i.fm = load i64, ptr %i.eb, align 8, !tbaa !535 ; 2 uses
  %i.fn = and i64 %i.fm, 8192
  %.not8.i234 = icmp eq i64 %i.fn, 0
  br i1 %.not8.i234, label %.thread.i235, label %CC_SET_FASTPATH.exit243, !prof !530

.thread.i235:                                     ; preds = %ruby_nonempty_memcpy.exit
  %i.fo = and i64 %i.fm, 4
  %i.fp = icmp eq i64 %i.fo, 0
  br i1 %i.fp, label %vm_call_cacheable.exit242, label %vm_call_cacheable.exit242.thread315

vm_call_cacheable.exit242:                        ; preds = %.thread.i235
  %.val.i239 = load ptr, ptr %i.fl, align 8, !tbaa !549
  %i.fq = load i64, ptr %.val.i239, align 8, !tbaa !532
  %i.fr = and i64 %i.fq, 196608
  %.not379 = icmp eq i64 %i.fr, 196608
  br i1 %.not379, label %CC_SET_FASTPATH.exit243, label %vm_call_cacheable.exit242.thread315, !prof !482

vm_call_cacheable.exit242.thread315:              ; preds = %.thread.i235, %vm_call_cacheable.exit242
  %i.fs = getelementptr i8, ptr %i.d, i64 24
  store ptr @vm_call_iseq_setup_kwparm_kwarg, ptr %i.fs, align 8, !tbaa !538
  br label %CC_SET_FASTPATH.exit243

bb.ad:                                            ; preds = %vm_ci_flag.exit226, %vm_ci_flag.exit226.thread
  %i.ft = phi i32 [ %i.em, %vm_ci_flag.exit226.thread ], [ %i.ef, %vm_ci_flag.exit226 ]
  %i.fu = phi i32 [ %i.eo, %vm_ci_flag.exit226.thread ], [ %i.eh, %vm_ci_flag.exit226 ]
  %i.fv = phi ptr [ %i.eq, %vm_ci_flag.exit226.thread ], [ %i.ej, %vm_ci_flag.exit226 ] ; 3 uses
  %i.fw = icmp eq i32 %i.fu, %i.ft
  br i1 %i.fw, label %bb.ae, label %.critedge177

bb.ae:                                            ; preds = %bb.ad
  %i.fx = getelementptr i8, ptr %i.fv, i64 8
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !811
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr [8 x i8], ptr %3, i64 %i.fz
  %i.gb = load i32, ptr %i.fv, align 8, !tbaa !812
  %i.gc = sext i32 %i.gb to i64
  %i.gd = sub nsw i64 0, %i.gc
  %i.ge = getelementptr [8 x i8], ptr %i.ga, i64 %i.gd ; 2 uses
  %i.gf = getelementptr i8, ptr %i.d, i64 16      ; 2 uses
  %.val = load ptr, ptr %i.gf, align 8, !tbaa !549
  tail call fastcc void @args_setup_kw_parameters(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %.val, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef %i.ge)
  %i.gg = load i32, ptr %i.fv, align 8, !tbaa !812
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr [8 x i8], ptr %i.ge, i64 %i.gh
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !389
  %i.gk = icmp eq i64 %i.gj, 1
  br i1 %i.gk, label %bb.af, label %CC_SET_FASTPATH.exit243

bb.af:                                            ; preds = %bb.ae
  br i1 %.not.i.i184, label %vm_ci_flag.exit.i252, label %vm_ci_flag.exit.thread.i245

vm_ci_flag.exit.i252:                             ; preds = %bb.af
  %i.gl = and i64 %i.w, 536870912
  %.not.i253 = icmp eq i64 %i.gl, 0
  br i1 %.not.i253, label %bb.ag, label %CC_SET_FASTPATH.exit243, !prof !530

vm_ci_flag.exit.thread.i245:                      ; preds = %bb.af
  %i.gm = getelementptr i8, ptr %i.b, i64 24
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !535 ; 2 uses
  %i.go = and i64 %i.gn, 8192
  %.not8.i246 = icmp eq i64 %i.go, 0
  br i1 %.not8.i246, label %.thread.i247, label %CC_SET_FASTPATH.exit243, !prof !530

bb.ag:                                            ; preds = %vm_ci_flag.exit.i252
  %i.gp = trunc i64 %i.w to i32
  %i.gq = lshr i32 %i.gp, 16
  br label %vm_ci_flag.exit6.i248

.thread.i247:                                     ; preds = %vm_ci_flag.exit.thread.i245
  %i.gr = trunc i64 %i.gn to i32
  br label %vm_ci_flag.exit6.i248

vm_ci_flag.exit6.i248:                            ; preds = %.thread.i247, %bb.ag
  %.0.i5.i249 = phi i32 [ %i.gq, %bb.ag ], [ %i.gr, %.thread.i247 ]
  %i.gs = and i32 %.0.i5.i249, 4
  %.not3.i250 = icmp eq i32 %i.gs, 0
  br i1 %.not3.i250, label %vm_call_cacheable.exit254, label %vm_call_cacheable.exit254.thread316

vm_call_cacheable.exit254:                        ; preds = %vm_ci_flag.exit6.i248
  %.val.i251 = load ptr, ptr %i.gf, align 8, !tbaa !549
  %i.gt = load i64, ptr %.val.i251, align 8, !tbaa !532
  %i.gu = and i64 %i.gt, 196608
  %.not380 = icmp eq i64 %i.gu, 196608
  br i1 %.not380, label %CC_SET_FASTPATH.exit243, label %vm_call_cacheable.exit254.thread316, !prof !482

vm_call_cacheable.exit254.thread316:              ; preds = %vm_ci_flag.exit6.i248, %vm_call_cacheable.exit254
  %i.gv = getelementptr i8, ptr %i.d, i64 24
  store ptr @vm_call_iseq_setup_kwparm_nokwarg, ptr %i.gv, align 8, !tbaa !538
  br label %CC_SET_FASTPATH.exit243

.critedge177:                                     ; preds = %vm_ci_flag.exit186, %bb.ad, %bb.y
  %i.gw = and i16 %i.ae, 8192
  %.not166 = icmp eq i16 %i.gw, 0
  br i1 %.not166, label %.critedge177.thread, label %bb.ah

bb.ah:                                            ; preds = %.critedge177
  br i1 %.not.i.i184, label %vm_ci_flag.exit258, label %vm_ci_flag.exit258.thread

vm_ci_flag.exit258:                               ; preds = %bb.ah
  %i.gx = and i64 %i.w, 536870912
  %.not167 = icmp eq i64 %i.gx, 0
  br i1 %.not167, label %bb.ao, label %bb.ai

vm_ci_flag.exit258.thread:                        ; preds = %bb.ah
  %.phi.trans.insert388 = getelementptr i8, ptr %i.b, i64 24
  %.pre389 = load i64, ptr %.phi.trans.insert388, align 8, !tbaa !535
  %i.gy = and i64 %.pre389, 8192
  %i.gz = icmp eq i64 %i.gy, 0
  br i1 %i.gz, label %vm_ci_markable.exit.thread.a, label %bb.aj

bb.ai:                                            ; preds = %vm_ci_flag.exit258
  %i.ha = trunc i64 %i.w to i32
  %i.hb = lshr i32 %i.ha, 1
  %i.hc = and i32 %i.hb, 32767
  br label %vm_ci_argc.exit

bb.aj:                                            ; preds = %vm_ci_flag.exit258.thread
  %i.hd = getelementptr i8, ptr %i.b, i64 32
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !536
  %i.hf = trunc i64 %i.he to i32
  br label %vm_ci_argc.exit

vm_ci_argc.exit:                                  ; preds = %bb.ai, %bb.aj
  %.0.i260 = phi i32 [ %i.hc, %bb.ai ], [ %i.hf, %bb.aj ]
  %i.hg = load ptr, ptr %1, align 8, !tbaa !581
  %i.hh = getelementptr i8, ptr %i.hg, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !625 ; 3 uses
  %i.hj = ptrtoint ptr %i.hi to i64               ; 2 uses
  %.not.i.i261 = trunc i64 %i.hj to i1
  br i1 %.not.i.i261, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %vm_ci_argc.exit
  %i.hk = trunc i64 %i.hj to i32
  %i.hl = lshr i32 %i.hk, 1
  %i.hm = and i32 %i.hl, 32767
  br label %vm_ci_argc.exit263

bb.al:                                            ; preds = %vm_ci_argc.exit
  %i.hn = getelementptr i8, ptr %i.hi, i64 32
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !536
  %i.hp = trunc i64 %i.ho to i32
  br label %vm_ci_argc.exit263

vm_ci_argc.exit263:                               ; preds = %bb.ak, %bb.al
  %.0.i262 = phi i32 [ %i.hm, %bb.ak ], [ %i.hp, %bb.al ]
  %.not168 = icmp eq i32 %.0.i260, %.0.i262
  br i1 %.not168, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %vm_ci_argc.exit263
  br i1 %.not.i.i184, label %vm_ci_argc.exit271.thread, label %bb.an

vm_ci_argc.exit271.thread:                        ; preds = %bb.am
  %i.hq = lshr i64 %i.w, 32
  %i.hr = trunc i64 %i.w to i32                   ; 2 uses
  %i.hs = lshr i32 %i.hr, 16
  %i.ht = lshr i32 %i.hr, 1
  %i.hu = and i32 %i.ht, 32767
  br label %vm_ci_kwarg.exit274

bb.an:                                            ; preds = %bb.am
  %i.hv = getelementptr i8, ptr %i.b, i64 16
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !529
  %i.hx = getelementptr i8, ptr %i.b, i64 24
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !535
  %i.hz = trunc i64 %i.hy to i32
  %i.ia = getelementptr i8, ptr %i.b, i64 32
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !536
  %i.ic = trunc i64 %i.ib to i32
  %i.id = getelementptr i8, ptr %i.b, i64 8
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !590
  br label %vm_ci_kwarg.exit274

vm_ci_kwarg.exit274:                              ; preds = %vm_ci_argc.exit271.thread, %bb.an
  %.0.i270341 = phi i32 [ %i.ic, %bb.an ], [ %i.hu, %vm_ci_argc.exit271.thread ]
  %.0.i265328332340 = phi i64 [ %i.hw, %bb.an ], [ %i.hq, %vm_ci_argc.exit271.thread ]
  %.0.i267334339 = phi i32 [ %i.hz, %bb.an ], [ %i.hs, %vm_ci_argc.exit271.thread ]
  %.0.i273 = phi ptr [ %i.ie, %bb.an ], [ null, %vm_ci_argc.exit271.thread ]
  %i.if = tail call fastcc ptr @vm_ci_new_runtime_(i64 noundef %.0.i265328332340, i32 noundef %.0.i267334339, i32 noundef %.0.i270341, ptr noundef %.0.i273)
  br label %bb.ao

bb.ao:                                            ; preds = %vm_ci_argc.exit263, %vm_ci_kwarg.exit274, %vm_ci_flag.exit258
  %.not167322 = phi i1 [ true, %vm_ci_flag.exit258 ], [ false, %vm_ci_kwarg.exit274 ], [ false, %vm_ci_argc.exit263 ] ; 2 uses
  %.1152 = phi ptr [ %i.b, %vm_ci_flag.exit258 ], [ %i.if, %vm_ci_kwarg.exit274 ], [ %i.hi, %vm_ci_argc.exit263 ] ; 4 uses
  %.not.i275 = icmp eq ptr %.1152, null
  br i1 %.not.i275, label %vm_ci_markable.exit.thread353, label %.thread342

.thread342:                                       ; preds = %bb.ao
  %.pre390 = ptrtoint ptr %.1152 to i64           ; 3 uses
  %.not.i.i276 = trunc i64 %.pre390 to i1
  br i1 %.not.i.i276, label %vm_ci_markable.exit.a, label %vm_ci_markable.exit.thread415

vm_ci_markable.exit.thread.a:                     ; preds = %vm_ci_flag.exit258.thread
  %6 = load i64, ptr %i.b, align 8, !tbaa !453
  %7 = and i64 %6, 65536
  %.not5.i419 = icmp eq i64 %7, 0
  br i1 %.not5.i419, label %.sink.split, label %vm_ci_markable.exit.thread353

vm_ci_markable.exit.a:                            ; preds = %.thread342
  %8 = add i32 %4, -1
  %9 = sext i32 %8 to i64
  %10 = getelementptr [8 x i8], ptr %3, i64 %9
  store i64 %.pre390, ptr %10, align 8, !tbaa !389
  br i1 %.not167322, label %bb.ar, label %CC_SET_FASTPATH.exit243, !prof !651

vm_ci_markable.exit.thread415:                    ; preds = %.thread342
  %i.ig = load i64, ptr %.1152, align 8, !tbaa !453
  %i.ih = and i64 %i.ig, 65536
  %.not5.i419.a = icmp eq i64 %i.ih, 0
  br i1 %.not5.i419.a, label %bb.aq, label %vm_ci_markable.exit.thread353

vm_ci_markable.exit.thread353:                    ; preds = %vm_ci_markable.exit.thread.a, %bb.ao, %vm_ci_markable.exit.thread415
  %.1152349357 = phi ptr [ %.1152, %vm_ci_markable.exit.thread415 ], [ null, %bb.ao ], [ %i.b, %vm_ci_markable.exit.thread.a ] ; 5 uses
  %i.ii = ptrtoint ptr %.1152349357 to i64        ; 3 uses
  %.not.i.i278 = trunc i64 %i.ii to i1
  br i1 %.not.i.i278, label %vm_ci_argc.exit286.thread, label %bb.ap

vm_ci_argc.exit286.thread:                        ; preds = %vm_ci_markable.exit.thread353
  %i.ij = lshr i64 %i.ii, 32
  %i.ik = trunc i64 %i.ii to i32                  ; 2 uses
  %i.il = lshr i32 %i.ik, 16
  %i.im = lshr i32 %i.ik, 1
  %i.in = and i32 %i.im, 32767
  br label %.thread373

bb.ap:                                            ; preds = %vm_ci_markable.exit.thread353
  %i.io = getelementptr i8, ptr %.1152349357, i64 16
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !529
  %i.iq = getelementptr i8, ptr %.1152349357, i64 24
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !535
  %i.is = trunc i64 %i.ir to i32
  %i.it = getelementptr i8, ptr %.1152349357, i64 32
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !536
  %i.iv = trunc i64 %i.iu to i32
  %i.iw = getelementptr i8, ptr %.1152349357, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !590
  br label %.thread373

.thread373:                                       ; preds = %bb.ap, %vm_ci_argc.exit286.thread
  %.0.i285372 = phi i32 [ %i.iv, %bb.ap ], [ %i.in, %vm_ci_argc.exit286.thread ]
  %.0.i279359363371 = phi i64 [ %i.ip, %bb.ap ], [ %i.ij, %vm_ci_argc.exit286.thread ]
  %.0.i282365370 = phi i32 [ %i.is, %bb.ap ], [ %i.il, %vm_ci_argc.exit286.thread ]
  %.0.i288 = phi ptr [ %i.ix, %bb.ap ], [ null, %vm_ci_argc.exit286.thread ]
  %i.iy = tail call fastcc ptr @vm_ci_new_runtime_(i64 noundef %.0.i279359363371, i32 noundef %.0.i282365370, i32 noundef %.0.i285372, ptr noundef %.0.i288)
  %i.iz = ptrtoint ptr %i.iy to i64
  %i.ja = add i32 %4, -1
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr [8 x i8], ptr %3, i64 %i.jb
  store i64 %i.iz, ptr %i.jc, align 8, !tbaa !389
  br label %CC_SET_FASTPATH.exit243

bb.aq:                                            ; preds = %vm_ci_markable.exit.thread415
  %i.jd = add i32 %4, -1
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr [8 x i8], ptr %3, i64 %i.je
  store i64 %.pre390, ptr %i.jf, align 8, !tbaa !389
  br i1 %.not167322, label %bb.ar, label %CC_SET_FASTPATH.exit243, !prof !651

.sink.split:                                      ; preds = %vm_ci_markable.exit.thread.a
  %.pre-phi406 = ptrtoint ptr %i.b to i64
  %i.jg = add i32 %4, -1
  %i.jh = sext i32 %i.jg to i64
  %i.ji = getelementptr [8 x i8], ptr %3, i64 %i.jh
  store i64 %.pre-phi406, ptr %i.ji, align 8, !tbaa !389
  br label %bb.ar

bb.ar:                                            ; preds = %.sink.split, %vm_ci_markable.exit.a, %bb.aq
  %i.jj = getelementptr i8, ptr %i.d, i64 24
  store ptr @vm_call_iseq_forwardable, ptr %i.jj, align 8, !tbaa !538
  br label %CC_SET_FASTPATH.exit243

.critedge177.thread:                              ; preds = %.thread314, %vm_ci_flag.exit223, %vm_ci_flag.exit223.thread, %.critedge177
  %i.jk = tail call fastcc i32 @setup_parameters_complex(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %1, ptr noundef %i.b, ptr noundef %3, i32 noundef 0)
  br label %CC_SET_FASTPATH.exit243

CC_SET_FASTPATH.exit243:                          ; preds = %vm_ci_flag.exit.thread.i245, %vm_ci_flag.exit.i252, %ruby_nonempty_memcpy.exit, %vm_ci_flag.exit.thread.i, %vm_ci_flag.exit.i, %bb.ar, %bb.aq, %.thread373, %vm_ci_markable.exit.a, %vm_call_cacheable.exit254.thread316, %vm_call_cacheable.exit254, %vm_call_cacheable.exit242.thread315, %vm_call_cacheable.exit242, %bb.ae, %vm_call_iseq_optimizable_p.exit, %vm_call_iseq_setup_func.exit, %bb.n, %.critedge177.thread, %._crit_edge
  %.3 = phi i32 [ 0, %vm_call_iseq_optimizable_p.exit ], [ %i.dw, %._crit_edge ], [ 0, %vm_call_cacheable.exit254.thread316 ], [ %i.jk, %.critedge177.thread ], [ 0, %bb.n ], [ 0, %vm_call_iseq_setup_func.exit ], [ 0, %bb.ae ], [ 0, %vm_call_cacheable.exit242.thread315 ], [ 0, %bb.ar ], [ 0, %vm_ci_flag.exit.thread.i ], [ 0, %vm_call_cacheable.exit242 ], [ 0, %ruby_nonempty_memcpy.exit ], [ 0, %vm_call_cacheable.exit254 ], [ 0, %vm_ci_markable.exit.a ], [ 0, %.thread373 ], [ 0, %bb.aq ], [ 0, %vm_ci_flag.exit.i ], [ 0, %vm_ci_flag.exit.thread.i245 ], [ 0, %vm_ci_flag.exit.i252 ]
  ret i32 %.3
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @warn_unused_block(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #2 !guid !1523 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !591
  %i.c = getelementptr i8, ptr %i.b, i64 1304
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !780  ; 2 uses
  %i.e = tail call zeroext i1 @rb_warning_category_enabled_p(i32 noundef 4) #23 ; 2 uses
  %i.f = ptrtoint ptr %2 to i64                   ; 8 uses
  %i.g = getelementptr i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !458  ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64                 ; 8 uses
  %.sroa.10.0.extract.shift = lshr i64 %i.i, 56
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.h, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !564
  %i.l = tail call i32 @rb_set_table_lookup(ptr noundef %i.d, i64 noundef %i.k) #23
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b, %bb.a
  %.masked = and i64 %i.f, 255
  %i.m = xor i64 %.sroa.10.0.extract.shift, %.masked
  %i.n = lshr i64 %i.i, 40
  %.sroa.434.0.extract.shift42 = xor i64 %i.n, %i.f
  %i.o = and i64 %.sroa.434.0.extract.shift42, 65280
  %i.p = or disjoint i64 %i.o, %i.m
  %i.q = lshr i64 %i.i, 24
  %.sroa.535.0.extract.shift43 = xor i64 %i.q, %i.f
  %i.r = and i64 %.sroa.535.0.extract.shift43, 16711680
  %i.s = or disjoint i64 %i.r, %i.p
  %i.t = lshr i64 %i.i, 8
  %.sroa.636.0.extract.shift44 = xor i64 %i.t, %i.f
  %i.u = and i64 %.sroa.636.0.extract.shift44, 4278190080
  %i.v = or disjoint i64 %i.u, %i.s
  %i.w = shl i64 %i.i, 8
  %.sroa.737.0.extract.shift45 = xor i64 %i.w, %i.f
  %i.x = and i64 %.sroa.737.0.extract.shift45, 1095216660480
  %i.y = or disjoint i64 %i.x, %i.v
  %i.z = shl i64 %i.i, 24
  %.sroa.838.0.extract.shift46 = xor i64 %i.z, %i.f
  %i.aa = and i64 %.sroa.838.0.extract.shift46, 280375465082880
  %i.ab = or i64 %i.aa, %i.y
  %i.ac = shl i64 %i.i, 40
  %.sroa.939.0.extract.shift47 = xor i64 %i.ac, %i.f
  %i.ad = and i64 %.sroa.939.0.extract.shift47, 71776119061217280
  %i.ae = or i64 %i.ad, %i.ab
  %i.af = shl i64 %i.i, 56
  %.masked50 = and i64 %i.f, -72057594037927936
  %i.ag = xor i64 %i.af, %.masked50
  %i.ah = or i64 %i.ag, %i.ae
  %i.ai = tail call i32 @rb_set_insert(ptr noundef %i.d, i64 noundef %i.ah) #23
  %.not25 = icmp eq i32 %i.ai, 0
  br i1 %.not25, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.aj = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !459 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i, label %bb.e, label %rb_ruby_verbose_ptr.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ak = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !405
  store volatile ptr %i.al, ptr %i.a, align 8, !tbaa !405
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.am = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, i64 48
  %.val.i.i.i = load ptr, ptr %i.am, align 8, !tbaa !416, !nonnull !440, !noundef !440
  %i.an = getelementptr i8, ptr %.val.i.i.i, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !613
  br label %rb_ruby_verbose_ptr.exit

rb_ruby_verbose_ptr.exit:                         ; preds = %bb.d, %bb.e
  %.0.i.i.i = phi ptr [ %i.aj, %bb.d ], [ %i.ao, %bb.e ]
  %i.ap = getelementptr i8, ptr %.0.i.i.i, i64 432
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !389
  %i.ar = and i64 %i.aq, -5
  %i.as = icmp ne i64 %i.ar, 0
  %or.cond = or i1 %i.e, %i.as
  br i1 %or.cond, label %bb.f, label %bb.k

bb.f:                                             ; preds = %rb_ruby_verbose_ptr.exit
  %i.at = tail call i64 @rb_method_entry_location(ptr noundef nonnull %0) #23 ; 2 uses
  %i.au = getelementptr i8, ptr %0, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !560
  %i.aw = getelementptr i8, ptr %1, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !497
  %i.ay = getelementptr i8, ptr %i.ax, i64 72
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !1524
  %i.ba = tail call i64 @rb_gen_method_name(i64 noundef %i.av, i64 noundef %i.az) #23 ; 2 uses
  %i.bb = icmp eq i64 %i.at, 4
  br i1 %i.bb, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = inttoptr i64 %i.at to ptr               ; 3 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !453
  %i.be = and i64 %i.bd, 8192
  %.not.i.i = icmp eq i64 %i.be, 0
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr i8, ptr %i.bc, i64 16
  br label %RARRAY_AREF.exit28

bb.i:                                             ; preds = %bb.g
  %i.bg = getelementptr i8, ptr %i.bc, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !403
  br label %RARRAY_AREF.exit28

RARRAY_AREF.exit28:                               ; preds = %bb.h, %bb.i
  %.in = phi ptr [ %i.bf, %bb.h ], [ %i.bh, %bb.i ] ; 2 uses
  %i.bi = load i64, ptr %.in, align 8, !tbaa !389
  %i.bj = getelementptr i8, ptr %.in, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !389
  tail call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.149, i64 noundef %i.ba, i64 noundef %i.bi, i64 noundef %i.bk) #63
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  tail call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.150, i64 noundef %i.ba) #63
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %rb_ruby_verbose_ptr.exit, %bb.j, %RARRAY_AREF.exit28, %bb.b
  ret void
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @argument_arity_error(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #6 !guid !1526 {
bb.a:
  %i.a = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.127, i32 noundef %3, i32 noundef %4) #23 ; 4 uses
  %i.b = icmp eq i32 %4, %5
  br i1 %i.b, label %rb_arity_error_new.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %5, -1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 @rb_str_cat(i64 noundef %i.a, ptr noundef nonnull @.str.128, i64 noundef 1) #23 ; 0 uses
  br label %rb_arity_error_new.exit

bb.d:                                             ; preds = %bb.b
  %i.e = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.a, ptr noundef nonnull @.str.129, i32 noundef %5) #23 ; 0 uses
  br label %rb_arity_error_new.exit

rb_arity_error_new.exit:                          ; preds = %bb.a, %bb.c, %bb.d
  %i.f = tail call i64 @rb_str_cat(i64 noundef %i.a, ptr noundef nonnull @.str.130, i64 noundef 1) #23 ; 0 uses
  %i.g = load i64, ptr @rb_eArgError, align 8, !tbaa !389
  %i.h = tail call i64 @rb_exc_new_str(i64 noundef %i.g, i64 noundef %i.a) #23 ; 2 uses
  %i.i = getelementptr i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !497  ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 16
  %i.l = load i16, ptr %i.k, align 8
  %i.m = and i16 %i.l, 16
  %.not = icmp eq i16 %i.m, 0
  br i1 %.not, label %bb.j, label %bb.e

bb.e:                                             ; preds = %rb_arity_error_new.exit
  %i.n = getelementptr i8, ptr %i.j, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !809  ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !813  ; 3 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr i8, ptr %i.o, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !814
  %i.u = tail call i64 @rb_attr_get(i64 noundef %i.h, i64 noundef 3489) #23 ; 7 uses
  %i.v = inttoptr i64 %i.u to ptr                 ; 3 uses
  %i.w = getelementptr i8, ptr %i.v, i64 16       ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !724
  %i.y = add i64 %i.x, -1
  %i.z = tail call i64 @rb_str_resize(i64 noundef %i.u, i64 noundef %i.y) #23 ; 0 uses
  %i.aa = icmp eq i32 %i.q, 1
  %i.ab = select i1 %i.aa, i64 18, i64 19
  %i.ac = tail call i64 @rb_str_cat(i64 noundef %i.u, ptr noundef nonnull @argument_arity_error.required, i64 noundef %i.ab) #23 ; 0 uses
  %i.ad = tail call i64 @rb_str_cat(i64 noundef %i.u, ptr noundef nonnull @.str.151, i64 noundef 1) #23 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.024 = phi ptr [ %i.t, %bb.f ], [ %i.af, %bb.g ] ; 2 uses
  %.0 = phi i32 [ %i.q, %bb.f ], [ %i.ak, %bb.g ]
  %i.ae = tail call i64 @rb_str_cat(i64 noundef %i.u, ptr noundef nonnull @.str.152, i64 noundef 1) #23 ; 0 uses
  %i.af = getelementptr i8, ptr %.024, i64 8
  %i.ag = load i64, ptr %.024, align 8, !tbaa !389
  %i.ah = tail call i64 @rb_id2str(i64 noundef %i.ag) #23
  %i.ai = tail call i64 @rb_str_append(i64 noundef %i.u, i64 noundef %i.ah) #23 ; 0 uses
  %i.aj = tail call i64 @rb_str_cat(i64 noundef %i.u, ptr noundef nonnull @.str.153, i64 noundef 1) #23 ; 0 uses
  %i.ak = add nsw i32 %.0, -1                     ; 2 uses
  %.not26 = icmp eq i32 %i.ak, 0
  br i1 %.not26, label %bb.h, label %bb.g, !llvm.loop !1525

bb.h:                                             ; preds = %bb.g
  %i.al = load i64, ptr %i.v, align 8, !tbaa !453
end_hunk_1
