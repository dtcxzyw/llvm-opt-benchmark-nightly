Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/sat_local_search?download=true
inline.NumInlined: 887
inline.NumDeleted: 334
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN3sat12local_search9propagateENS_7literalE:bb.a
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !65, !range !20, !noundef !21
  %i.bv = trunc nuw i8 %i.bu to i1
  %i.bw = trunc i32 %.sroa.04.0.copyload to i8
  %i.bx = and i8 %i.bw, 1                         ; 2 uses
  br i1 %i.bv, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.by = icmp eq i8 %i.bq, %i.bx
  br i1 %i.by, label %bb.q, label %_ZN3sat12local_search8add_unitENS_7literalES1_.exit

bb.q:                                             ; preds = %bb.p
  store i8 1, ptr %i.bh, align 1, !tbaa !60
  br label %_ZN3sat12local_search8add_unitENS_7literalES1_.exit

bb.r:                                             ; preds = %bb.o
  %i.bz = icmp ne i8 %i.bq, %i.bx
  %i.ca = load i8, ptr %i.bf, align 8, !range !20
  %i.cb = trunc nuw i8 %i.ca to i1
  %or.cond.i = select i1 %i.bz, i1 true, i1 %i.cb
  br i1 %or.cond.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN3sat12local_search12flip_walksatEj(ptr noundef nonnull align 8 dereferenceable(232) %0, i32 noundef %i.bi)
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !61
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cc = phi ptr [ %.pre.i, %bb.s ], [ %i.br, %bb.r ]
  %i.cd = xor i1 %i.bo, true
  %i.ce = getelementptr inbounds nuw [120 x i8], ptr %i.cc, i64 %i.bk ; 4 uses
  %i.cf = zext i1 %i.cd to i8
  store i8 %i.cf, ptr %i.ce, align 8, !tbaa !66
  %i.cg = select i1 %i.bo, i32 0, i32 100
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !67
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i8 1, ptr %i.ci, align 8, !tbaa !65
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  store i32 %1, ptr %i.cj, align 4, !tbaa !26
  %i.ck = load ptr, ptr %i.bg, align 8, !tbaa !25 ; 4 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cm = getelementptr inbounds i8, ptr %i.ck, i64 -4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !26 ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %i.ck, i64 -8
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !26
  %i.cq = icmp eq i32 %i.cn, %i.cp
  br i1 %i.cq, label %bb.v, label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i

bb.v:                                             ; preds = %bb.u, %bb.t
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bg)
  %.pre.i.i = load ptr, ptr %i.bg, align 8, !tbaa !25 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !26
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i

_ZN6vectorIjLb0EjE9push_backERKj.exit.i:          ; preds = %bb.v, %bb.u
  %i.cr = phi i32 [ %.pre2.i.i, %bb.v ], [ %i.cn, %bb.u ] ; 2 uses
  %i.cs = phi ptr [ %.pre.i.i, %bb.v ], [ %i.ck, %bb.u ] ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 -4
  %i.cu = zext i32 %i.cr to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.cu
  store i32 %i.bi, ptr %i.cv, align 4, !tbaa !26
  %i.cw = add i32 %i.cr, 1
  store i32 %i.cw, ptr %i.ct, align 4, !tbaa !26
  br label %_ZN3sat12local_search8add_unitENS_7literalES1_.exit

_ZN3sat12local_search8add_unitENS_7literalES1_.exit: ; preds = %bb.p, %bb.q, %_ZN6vectorIjLb0EjE9push_backERKj.exit.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.03057, i64 4 ; 2 uses
  %.not33 = icmp eq ptr %i.cx, %i.be
  br i1 %.not33, label %.critedge.critedge, label %bb.m

.critedge.critedge:                               ; preds = %bb.g, %_ZN3sat12local_search8add_unitENS_7literalES1_.exit, %bb.l, %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit, %bb.k, %bb.j
  %.3 = phi i1 [ true, %bb.l ], [ false, %bb.k ], [ false, %bb.j ], [ true, %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit ], [ true, %_ZN3sat12local_search8add_unitENS_7literalES1_.exit ], [ false, %bb.g ]
  ret i1 %.3
}

declare noundef i32 @_Z19get_verbosity_levelv() local_unnamed_addr #6

declare noundef zeroext i1 @_Z11is_threadedv() local_unnamed_addr #6

declare void @_Z12verbose_lockv() local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() local_unnamed_addr #6

declare void @_Z14verbose_unlockv() local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_Z26notify_assertion_violationPKciS0_(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare void @_Z18invoke_exit_actionj(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sat12local_search15add_propagationENS_7literalE(ptr noundef nonnull align 8 dereferenceable(232) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = lshr i32 %1, 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !61   ; 2 uses
  %i.d = zext nneg i32 %i.a to i64                ; 2 uses
  %i.e = getelementptr inbounds nuw [120 x i8], ptr %i.c, i64 %i.d
  %i.f = load i8, ptr %i.e, align 8, !tbaa !66, !range !20, !noundef !21
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = trunc i32 %1 to i1
  %i.i = xor i1 %i.h, %i.g
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.1, i32 noundef 210, ptr noundef nonnull @.str.5)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !61
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi ptr [ %.pre, %bb.b ], [ %i.c, %bb.a ]
  %i.k = getelementptr inbounds nuw [120 x i8], ptr %i.j, i64 %i.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %.mask = and i32 %1, 1
  %i.m = zext nneg i32 %.mask to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !29   ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %._crit_edge, label %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit

_ZN6vectorIN3sat7literalELb0EjE3endEv.exit:       ; preds = %bb.c
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !26   ; 2 uses
  %i.s = zext i32 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 2
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.t
  %.not10 = icmp eq i32 %i.r, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  br label %bb.d

._crit_edge:                                      ; preds = %bb.h, %bb.c, %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.h
  %.011 = phi ptr [ %i.o, %.lr.ph ], [ %i.as, %bb.h ] ; 2 uses
  %i.w = load i32, ptr %.011, align 4, !tbaa !26  ; 3 uses
  %i.x = lshr i32 %i.w, 1
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !61
  %i.z = zext nneg i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw [120 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !66, !range !20, !noundef !21
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = trunc i32 %i.w to i1
  %i.ae = xor i1 %i.ad, %i.ac
  br i1 %i.ae, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = load ptr, ptr %i.v, align 8, !tbaa !29  ; 4 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !26 ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.af, i64 -8
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !26
  %i.al = icmp eq i32 %i.ai, %i.ak
  br i1 %i.al, label %bb.g, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %.pre.i = load ptr, ptr %i.v, align 8, !tbaa !29 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !26
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit: ; preds = %bb.f, %bb.g
  %i.am = phi i32 [ %.pre2.i, %bb.g ], [ %i.ai, %bb.f ] ; 2 uses
  %i.an = phi ptr [ %.pre.i, %bb.g ], [ %i.af, %bb.f ] ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -4
  %i.ap = zext i32 %i.am to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ap
  store i32 %i.w, ptr %i.aq, align 4, !tbaa !26
  %i.ar = add i32 %i.am, 1
  store i32 %i.ar, ptr %i.ao, align 4, !tbaa !26
  br label %bb.h

bb.h:                                             ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit, %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %.011, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.as, %i.u
  br i1 %.not, label %._crit_edge, label %bb.d
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sat12local_search12flip_walksatEj(ptr noundef nonnull align 8 dereferenceable(232) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !98
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !98
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !61   ; 2 uses
  %i.f = zext i32 %1 to i64                       ; 4 uses
  %i.g = getelementptr inbounds nuw [120 x i8], ptr %i.e, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i8, ptr %i.h, align 8, !tbaa !65, !range !20, !noundef !21
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.1, i32 noundef 679, ptr noundef nonnull @.str.30)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !61
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi ptr [ %.pre, %bb.b ], [ %i.e, %bb.a ] ; 3 uses
  %i.l = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %i.f ; 9 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !66, !range !20, !noundef !21
  %2 = xor i8 %i.m, 1                             ; 3 uses
  store i8 %2, ptr %i.l, align 8, !tbaa !66
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 72 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !99
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 8, !tbaa !99
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !90
  %i.t = tail call i32 @llvm.abs.i32(i32 %i.s, i1 true)
  %i.u = uitofp nneg i32 %i.t to double
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 88 ; 2 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !137 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 96 ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !100 ; 2 uses
  %i.z = fsub double %i.u, %i.y
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.w, double %i.z, double %i.y)
  store double %i.aa, ptr %i.x, align 8, !tbaa !100
  %i.ab = load double, ptr %i.q, align 8, !tbaa !138 ; 3 uses
  %i.ac = fcmp ugt double %i.w, %i.ab
  br i1 %i.ac, label %bb.d, label %_ZN3ema6updateEd.exit

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 108 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !139 ; 2 uses
  %i.af = add i32 %i.ae, -1
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !139
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %bb.e, label %_ZN3ema6updateEd.exit

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 104 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !140
  %i.ai = shl i32 %i.ah, 1
  %i.aj = or disjoint i32 %i.ai, 1                ; 2 uses
  store i32 %i.aj, ptr %i.ag, align 8, !tbaa !140
  store i32 %i.aj, ptr %i.ad, align 4, !tbaa !139
  %i.ak = fmul double %i.w, 5.000000e-01          ; 2 uses
  %i.al = fcmp olt double %i.ak, %i.ab
  %spec.store.select.i = select i1 %i.al, double %i.ab, double %i.ak
  store double %spec.store.select.i, ptr %i.v, align 8
  %.pre54 = load ptr, ptr %i.d, align 8, !tbaa !61 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [120 x i8], ptr %.pre54, i64 %i.f
  %.pre55 = load i8, ptr %.phi.trans.insert, align 8, !tbaa !66, !range !20
  br label %_ZN3ema6updateEd.exit

_ZN3ema6updateEd.exit:                            ; preds = %bb.c, %bb.d, %bb.e
  %3 = phi i8 [ %2, %bb.c ], [ %2, %bb.d ], [ %.pre55, %bb.e ] ; 2 uses
  %4 = phi ptr [ %i.k, %bb.c ], [ %i.k, %bb.d ], [ %.pre54, %bb.e ]
  %5 = getelementptr inbounds nuw [120 x i8], ptr %4, i64 %i.f
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.an = zext nneg i8 %3 to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an
  %6 = xor i8 %3, 1
  %i.ap = zext nneg i8 %6 to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ap
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !83 ; 4 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %._crit_edge, label %_ZNK6vectorIN3sat12local_search7pbcoeffELb0EjE3endEv.exit

_ZNK6vectorIN3sat12local_search7pbcoeffELb0EjE3endEv.exit: ; preds = %_ZN3ema6updateEd.exit
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !26 ; 2 uses
  %i.av = zext i32 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aw
  %.not48 = icmp eq i32 %i.au, 0
  br i1 %.not48, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIN3sat12local_search7pbcoeffELb0EjE3endEv.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  br label %bb.f

._crit_edge:                                      ; preds = %bb.j, %_ZN3ema6updateEd.exit, %_ZNK6vectorIN3sat12local_search7pbcoeffELb0EjE3endEv.exit
  %i.bb = load ptr, ptr %i.aq, align 8, !tbaa !83 ; 4 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %._crit_edge53, label %_ZNK6vectorIN3sat12local_search7pbcoeffELb0EjE3endEv.exit47

_ZNK6vectorIN3sat12local_search7pbcoeffELb0EjE3endEv.exit47: ; preds = %._crit_edge
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 -4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !26 ; 2 uses
  %i.bf = zext i32 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bg
  %.not4550 = icmp eq i32 %i.be, 0
  br i1 %.not4550, label %._crit_edge53, label %.lr.ph52

.lr.ph52:                                         ; preds = %_ZNK6vectorIN3sat12local_search7pbcoeffELb0EjE3endEv.exit47
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !76
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.k

bb.f:                                             ; preds = %.lr.ph, %bb.j
  %.04449 = phi ptr [ %i.ar, %.lr.ph ], [ %i.cp, %bb.j ] ; 3 uses
  %i.bm = load i32, ptr %.04449, align 4, !tbaa !85 ; 2 uses
  %i.bn = load ptr, ptr %i.ay, align 8, !tbaa !76
  %i.bo = zext i32 %i.bm to i64                   ; 3 uses
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !88 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.04449, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !86
  %i.bu = zext i32 %i.bt to i64
  %i.bv = sub nsw i64 %i.br, %i.bu                ; 2 uses
  store i64 %i.bv, ptr %i.bq, align 8, !tbaa !88
  %i.bw = icmp slt i64 %i.bv, 0
  %i.bx = icmp sgt i64 %i.br, -1
  %or.cond = and i1 %i.bx, %i.bw
  br i1 %or.cond, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.by = load ptr, ptr %i.az, align 8, !tbaa !25 ; 4 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i, label %bb.h

_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i:         ; preds = %bb.g
  %i.ca = load ptr, ptr %i.ba, align 8, !tbaa !25
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.bo
  store i32 0, ptr %i.cb, align 4, !tbaa !26
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cc = getelementptr inbounds i8, ptr %i.by, i64 -4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !26 ; 3 uses
  %i.ce = load ptr, ptr %i.ba, align 8, !tbaa !25
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.bo
  store i32 %i.cd, ptr %i.cf, align 4, !tbaa !26
  %i.cg = getelementptr inbounds i8, ptr %i.by, i64 -8
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !26
  %i.ci = icmp eq i32 %i.cd, %i.ch
  br i1 %i.ci, label %bb.i, label %_ZN3sat12local_search5unsatEj.exit

bb.i:                                             ; preds = %bb.h, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.az)
  %.pre.i.i = load ptr, ptr %i.az, align 8, !tbaa !25 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !26
  br label %_ZN3sat12local_search5unsatEj.exit

_ZN3sat12local_search5unsatEj.exit:               ; preds = %bb.h, %bb.i
  %i.cj = phi i32 [ %.pre2.i.i, %bb.i ], [ %i.cd, %bb.h ] ; 2 uses
  %i.ck = phi ptr [ %.pre.i.i, %bb.i ], [ %i.by, %bb.h ] ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -4
  %i.cm = zext i32 %i.cj to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cm
  store i32 %i.bm, ptr %i.cn, align 4, !tbaa !26
  %i.co = add i32 %i.cj, 1
  store i32 %i.co, ptr %i.cl, align 4, !tbaa !26
  br label %bb.j

bb.j:                                             ; preds = %_ZN3sat12local_search5unsatEj.exit, %bb.f
  %i.cp = getelementptr inbounds nuw i8, ptr %.04449, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cp, %i.ax
  br i1 %.not, label %._crit_edge, label %bb.f

._crit_edge53:                                    ; preds = %bb.n, %._crit_edge, %_ZNK6vectorIN3sat12local_search7pbcoeffELb0EjE3endEv.exit47
  ret void

bb.k:                                             ; preds = %.lr.ph52, %bb.n
  %.051 = phi ptr [ %i.bb, %.lr.ph52 ], [ %i.dt, %bb.n ] ; 3 uses
  %i.cq = load i32, ptr %.051, align 4, !tbaa !85
  %i.cr = zext i32 %i.cq to i64                   ; 2 uses
  %i.cs = getelementptr inbounds nuw [32 x i8], ptr %i.bj, i64 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !88 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.051, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !86
  %i.cx = zext i32 %i.cw to i64
  %i.cy = add nsw i64 %i.cu, %i.cx                ; 2 uses
  store i64 %i.cy, ptr %i.ct, align 8, !tbaa !88
  %i.cz = icmp sgt i64 %i.cy, -1
  %i.da = icmp slt i64 %i.cu, 0
  %or.cond3 = and i1 %i.da, %i.cz
  br i1 %or.cond3, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.db = load ptr, ptr %i.bk, align 8, !tbaa !25 ; 5 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %_ZN3sat12local_search3satEj.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dd = getelementptr inbounds i8, ptr %i.db, i64 -4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !26
  %i.df = add i32 %i.de, -1
  %i.dg = zext i32 %i.df to i64
  br label %_ZN3sat12local_search3satEj.exit

_ZN3sat12local_search3satEj.exit:                 ; preds = %bb.l, %bb.m
  %.0.i.i.i = phi i64 [ %i.dg, %bb.m ], [ 4294967295, %bb.l ]
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %.0.i.i.i
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !26 ; 2 uses
  %i.dj = load ptr, ptr %i.bl, align 8, !tbaa !25 ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.cr
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !26 ; 2 uses
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.dm
  store i32 %i.di, ptr %i.dn, align 4, !tbaa !26
  %i.do = zext i32 %i.di to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.do
  store i32 %i.dl, ptr %i.dp, align 4, !tbaa !26
  %i.dq = getelementptr inbounds i8, ptr %i.db, i64 -4 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !26
  %i.ds = add i32 %i.dr, -1
  store i32 %i.ds, ptr %i.dq, align 4, !tbaa !26
  br label %bb.n

bb.n:                                             ; preds = %_ZN3sat12local_search3satEj.exit, %bb.k
  %i.dt = getelementptr inbounds nuw i8, ptr %.051, i64 8 ; 2 uses
  %.not45 = icmp eq ptr %i.dt, %i.bh
  br i1 %.not45, label %._crit_edge53, label %bb.k
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sat12local_search8add_unitENS_7literalES1_(ptr noundef nonnull align 8 dereferenceable(232) %0, i32 %1, i32 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = lshr i32 %1, 1                           ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !61   ; 2 uses
  %i.d = zext nneg i32 %i.a to i64                ; 2 uses
  %i.e = getelementptr inbounds nuw [120 x i8], ptr %i.c, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i8, ptr %i.f, align 8, !tbaa !65, !range !20, !noundef !21
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = load i8, ptr %i.e, align 8, !tbaa !66, !range !20, !noundef !21 ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = trunc i32 %1 to i8
  %i.k = and i8 %i.j, 1
  %i.l = icmp eq i8 %i.i, %i.k
  br i1 %i.l, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 93
  store i8 1, ptr %i.m, align 1, !tbaa !60
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.n = trunc i32 %1 to i1                       ; 2 uses
  %i.o = trunc i32 %1 to i8
  %i.p = and i8 %i.o, 1
  %i.q = icmp ne i8 %i.i, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.s = load i8, ptr %i.r, align 8, !range !20
  %i.t = trunc nuw i8 %i.s to i1
  %or.cond = select i1 %i.q, i1 true, i1 %i.t
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN3sat12local_search12flip_walksatEj(ptr noundef nonnull align 8 dereferenceable(232) %0, i32 noundef %i.a)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !61
end_hunk_0
