Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/sat_local_search?download=true
inline.NumInlined: 887
inline.NumDeleted: 334
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN3sat12local_search9propagateENS_7literalE:bb.a
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !52, !range !10, !noundef !11
  %i.bv = trunc nuw i8 %i.bu to i1
  %i.bw = trunc i32 %.sroa.04.0.copyload to i8
  %i.bx = and i8 %i.bw, 1                         ; 2 uses
  br i1 %i.bv, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.by = icmp eq i8 %i.bq, %i.bx
  br i1 %i.by, label %bb.q, label %_ZN3sat12local_search8add_unitENS_7literalES1_.exit

bb.q:                                             ; preds = %bb.p
  store i8 1, ptr %i.bh, align 1, !tbaa !20
  br label %_ZN3sat12local_search8add_unitENS_7literalES1_.exit

bb.r:                                             ; preds = %bb.o
  %i.bz = icmp ne i8 %i.bq, %i.bx
  %i.ca = load i8, ptr %i.bf, align 8, !range !10
  %i.cb = trunc nuw i8 %i.ca to i1
  %or.cond.i = select i1 %i.bz, i1 true, i1 %i.cb
  br i1 %or.cond.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN3sat12local_search12flip_walksatEj(ptr noundef nonnull align 8 dereferenceable(232) %0, i32 noundef %i.bi)
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !51
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cc = phi ptr [ %.pre.i, %bb.s ], [ %i.br, %bb.r ]
  %i.cd = xor i1 %i.bo, true
  %i.ce = getelementptr inbounds nuw [120 x i8], ptr %i.cc, i64 %i.bk ; 4 uses
  %i.cf = zext i1 %i.cd to i8
  store i8 %i.cf, ptr %i.ce, align 8, !tbaa !56
  %i.cg = select i1 %i.bo, i32 0, i32 100
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !57
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i8 1, ptr %i.ci, align 8, !tbaa !52
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  store i32 %1, ptr %i.cj, align 4, !tbaa !16
  %i.ck = load ptr, ptr %i.bg, align 8, !tbaa !12 ; 4 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cm = getelementptr inbounds i8, ptr %i.ck, i64 -4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !16 ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %i.ck, i64 -8
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !16
  %i.cq = icmp eq i32 %i.cn, %i.cp
  br i1 %i.cq, label %bb.v, label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i

bb.v:                                             ; preds = %bb.u, %bb.t
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bg)
  %.pre.i.i = load ptr, ptr %i.bg, align 8, !tbaa !12 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !16
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i

_ZN6vectorIjLb0EjE9push_backERKj.exit.i:          ; preds = %bb.v, %bb.u
  %i.cr = phi i32 [ %.pre2.i.i, %bb.v ], [ %i.cn, %bb.u ] ; 2 uses
  %i.cs = phi ptr [ %.pre.i.i, %bb.v ], [ %i.ck, %bb.u ] ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 -4
  %i.cu = zext i32 %i.cr to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.cu
  store i32 %i.bi, ptr %i.cv, align 4, !tbaa !16
  %i.cw = add i32 %i.cr, 1
  store i32 %i.cw, ptr %i.ct, align 4, !tbaa !16
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !51   ; 2 uses
  %i.d = zext nneg i32 %i.a to i64                ; 2 uses
  %i.e = getelementptr inbounds nuw [120 x i8], ptr %i.c, i64 %i.d
  %i.f = load i8, ptr %i.e, align 8, !tbaa !56, !range !10, !noundef !11
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = trunc i32 %1 to i1
  %i.i = xor i1 %i.h, %i.g
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.1, i32 noundef 210, ptr noundef nonnull @.str.5)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !51
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi ptr [ %.pre, %bb.b ], [ %i.c, %bb.a ]
  %i.k = getelementptr inbounds nuw [120 x i8], ptr %i.j, i64 %i.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %.mask = and i32 %1, 1
  %i.m = zext nneg i32 %.mask to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !17   ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %._crit_edge, label %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit

_ZN6vectorIN3sat7literalELb0EjE3endEv.exit:       ; preds = %bb.c
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !16   ; 2 uses
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
  %i.w = load i32, ptr %.011, align 4, !tbaa !16  ; 3 uses
  %i.x = lshr i32 %i.w, 1
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.z = zext nneg i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw [120 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !56, !range !10, !noundef !11
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = trunc i32 %i.w to i1
  %i.ae = xor i1 %i.ad, %i.ac
  br i1 %i.ae, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = load ptr, ptr %i.v, align 8, !tbaa !17  ; 4 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !16 ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.af, i64 -8
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !16
  %i.al = icmp eq i32 %i.ai, %i.ak
  br i1 %i.al, label %bb.g, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %.pre.i = load ptr, ptr %i.v, align 8, !tbaa !17 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !16
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit: ; preds = %bb.f, %bb.g
  %i.am = phi i32 [ %.pre2.i, %bb.g ], [ %i.ai, %bb.f ] ; 2 uses
  %i.an = phi ptr [ %.pre.i, %bb.g ], [ %i.af, %bb.f ] ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -4
  %i.ap = zext i32 %i.am to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ap
  store i32 %i.w, ptr %i.aq, align 4, !tbaa !16
  %i.ar = add i32 %i.am, 1
  store i32 %i.ar, ptr %i.ao, align 4, !tbaa !16
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !104
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !104
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !51   ; 2 uses
  %i.f = zext i32 %1 to i64                       ; 2 uses
  %i.g = getelementptr inbounds nuw [120 x i8], ptr %i.e, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i8, ptr %i.h, align 8, !tbaa !52, !range !10, !noundef !11
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.1, i32 noundef 679, ptr noundef nonnull @.str.30)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !51
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi ptr [ %.pre, %bb.b ], [ %i.e, %bb.a ]
  %i.l = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %i.f ; 10 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !56, !range !10, !noundef !11 ; 2 uses
  %2 = trunc nuw i8 %i.m to i1
  %3 = xor i1 %2, true                            ; 2 uses
  %4 = zext i1 %3 to i8
  store i8 %4, ptr %i.l, align 8, !tbaa !56
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 72 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !105
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 8, !tbaa !105
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !85
  %i.t = tail call i32 @llvm.abs.i32(i32 %i.s, i1 true)
  %i.u = uitofp nneg i32 %i.t to double
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 88 ; 3 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !106 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 96 ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !107 ; 2 uses
  %i.z = fsub double %i.u, %i.y
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.w, double %i.z, double %i.y)
  store double %i.aa, ptr %i.x, align 8, !tbaa !107
  %i.ab = load double, ptr %i.q, align 8, !tbaa !108 ; 3 uses
  %i.ac = fcmp ugt double %i.w, %i.ab
  br i1 %i.ac, label %bb.d, label %_ZN3ema6updateEd.exit

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 108 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !109 ; 2 uses
  %i.af = add i32 %i.ae, -1
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !109
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %bb.e, label %_ZN3ema6updateEd.exit

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 104 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !110
  %i.ai = shl i32 %i.ah, 1
  %i.aj = or disjoint i32 %i.ai, 1                ; 2 uses
  store i32 %i.aj, ptr %i.ag, align 8, !tbaa !110
  store i32 %i.aj, ptr %i.ad, align 4, !tbaa !109
  %i.ak = fmul double %i.w, 5.000000e-01          ; 2 uses
  store double %i.ak, ptr %i.v, align 8, !tbaa !106
  %5 = fcmp olt double %i.ak, %i.ab
  br i1 %5, label %6, label %_ZN3ema6updateEd.exit

6:                                                ; preds = %bb.e
  store double %i.ab, ptr %i.v, align 8, !tbaa !106
  br label %_ZN3ema6updateEd.exit

_ZN3ema6updateEd.exit:                            ; preds = %bb.c, %bb.d, %bb.e, %6
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 2 uses
  %i.am = zext i1 %3 to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.am
  %i.ao = zext nneg i8 %i.m to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ao
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !73 ; 4 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %._crit_edge, label %_ZNK6vectorIN3sat12local_search7pbcoeffELb0EjE3endEv.exit

_ZNK6vectorIN3sat12local_search7pbcoeffELb0EjE3endEv.exit: ; preds = %_ZN3ema6updateEd.exit
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !16 ; 2 uses
  %i.au = zext i32 %i.at to i64
  %i.av = shl nuw nsw i64 %i.au, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.av
  %.not48 = icmp eq i32 %i.at, 0
  br i1 %.not48, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIN3sat12local_search7pbcoeffELb0EjE3endEv.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  br label %bb.f

._crit_edge:                                      ; preds = %bb.j, %_ZN3ema6updateEd.exit, %_ZNK6vectorIN3sat12local_search7pbcoeffELb0EjE3endEv.exit
  %i.ba = load ptr, ptr %i.ap, align 8, !tbaa !73 ; 4 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %._crit_edge53, label %_ZNK6vectorIN3sat12local_search7pbcoeffELb0EjE3endEv.exit47

_ZNK6vectorIN3sat12local_search7pbcoeffELb0EjE3endEv.exit47: ; preds = %._crit_edge
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 -4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !16 ; 2 uses
  %i.be = zext i32 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 3
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bf
  %.not4550 = icmp eq i32 %i.bd, 0
  br i1 %.not4550, label %._crit_edge53, label %.lr.ph52

.lr.ph52:                                         ; preds = %_ZNK6vectorIN3sat12local_search7pbcoeffELb0EjE3endEv.exit47
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !67
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.k

bb.f:                                             ; preds = %.lr.ph, %bb.j
  %.04449 = phi ptr [ %i.aq, %.lr.ph ], [ %i.co, %bb.j ] ; 3 uses
  %i.bl = load i32, ptr %.04449, align 4, !tbaa !76 ; 2 uses
  %i.bm = load ptr, ptr %i.ax, align 8, !tbaa !67
  %i.bn = zext i32 %i.bl to i64                   ; 3 uses
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !79 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.04449, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !78
  %i.bt = zext i32 %i.bs to i64
  %i.bu = sub nsw i64 %i.bq, %i.bt                ; 2 uses
  store i64 %i.bu, ptr %i.bp, align 8, !tbaa !79
  %i.bv = icmp slt i64 %i.bu, 0
  %i.bw = icmp sgt i64 %i.bq, -1
  %or.cond = and i1 %i.bw, %i.bv
  br i1 %or.cond, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.bx = load ptr, ptr %i.ay, align 8, !tbaa !12 ; 4 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i, label %bb.h

_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i:         ; preds = %bb.g
  %i.bz = load ptr, ptr %i.az, align 8, !tbaa !12
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bn
  store i32 0, ptr %i.ca, align 4, !tbaa !16
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cb = getelementptr inbounds i8, ptr %i.bx, i64 -4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !16 ; 3 uses
  %i.cd = load ptr, ptr %i.az, align 8, !tbaa !12
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.bn
  store i32 %i.cc, ptr %i.ce, align 4, !tbaa !16
  %i.cf = getelementptr inbounds i8, ptr %i.bx, i64 -8
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !16
  %i.ch = icmp eq i32 %i.cc, %i.cg
  br i1 %i.ch, label %bb.i, label %_ZN3sat12local_search5unsatEj.exit

bb.i:                                             ; preds = %bb.h, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ay)
  %.pre.i.i = load ptr, ptr %i.ay, align 8, !tbaa !12 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !16
  br label %_ZN3sat12local_search5unsatEj.exit

_ZN3sat12local_search5unsatEj.exit:               ; preds = %bb.h, %bb.i
  %i.ci = phi i32 [ %.pre2.i.i, %bb.i ], [ %i.cc, %bb.h ] ; 2 uses
  %i.cj = phi ptr [ %.pre.i.i, %bb.i ], [ %i.bx, %bb.h ] ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 -4
  %i.cl = zext i32 %i.ci to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.cl
  store i32 %i.bl, ptr %i.cm, align 4, !tbaa !16
  %i.cn = add i32 %i.ci, 1
  store i32 %i.cn, ptr %i.ck, align 4, !tbaa !16
  br label %bb.j

bb.j:                                             ; preds = %_ZN3sat12local_search5unsatEj.exit, %bb.f
  %i.co = getelementptr inbounds nuw i8, ptr %.04449, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.co, %i.aw
  br i1 %.not, label %._crit_edge, label %bb.f

._crit_edge53:                                    ; preds = %bb.n, %._crit_edge, %_ZNK6vectorIN3sat12local_search7pbcoeffELb0EjE3endEv.exit47
  ret void

bb.k:                                             ; preds = %.lr.ph52, %bb.n
  %.051 = phi ptr [ %i.ba, %.lr.ph52 ], [ %i.ds, %bb.n ] ; 3 uses
  %i.cp = load i32, ptr %.051, align 4, !tbaa !76
  %i.cq = zext i32 %i.cp to i64                   ; 2 uses
  %i.cr = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !79 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.051, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !78
  %i.cw = zext i32 %i.cv to i64
  %i.cx = add nsw i64 %i.ct, %i.cw                ; 2 uses
  store i64 %i.cx, ptr %i.cs, align 8, !tbaa !79
  %i.cy = icmp sgt i64 %i.cx, -1
  %i.cz = icmp slt i64 %i.ct, 0
  %or.cond3 = and i1 %i.cz, %i.cy
  br i1 %or.cond3, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.da = load ptr, ptr %i.bj, align 8, !tbaa !12 ; 5 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %_ZN3sat12local_search3satEj.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dc = getelementptr inbounds i8, ptr %i.da, i64 -4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !16
  %i.de = add i32 %i.dd, -1
  %i.df = zext i32 %i.de to i64
  br label %_ZN3sat12local_search3satEj.exit

_ZN3sat12local_search3satEj.exit:                 ; preds = %bb.l, %bb.m
  %.0.i.i.i = phi i64 [ %i.df, %bb.m ], [ 4294967295, %bb.l ]
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %.0.i.i.i
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !16 ; 2 uses
  %i.di = load ptr, ptr %i.bk, align 8, !tbaa !12 ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.cq
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !16 ; 2 uses
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.dl
  store i32 %i.dh, ptr %i.dm, align 4, !tbaa !16
  %i.dn = zext i32 %i.dh to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dn
  store i32 %i.dk, ptr %i.do, align 4, !tbaa !16
  %i.dp = getelementptr inbounds i8, ptr %i.da, i64 -4 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !16
  %i.dr = add i32 %i.dq, -1
  store i32 %i.dr, ptr %i.dp, align 4, !tbaa !16
  br label %bb.n

bb.n:                                             ; preds = %_ZN3sat12local_search3satEj.exit, %bb.k
  %i.ds = getelementptr inbounds nuw i8, ptr %.051, i64 8 ; 2 uses
  %.not45 = icmp eq ptr %i.ds, %i.bg
  br i1 %.not45, label %._crit_edge53, label %bb.k
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sat12local_search8add_unitENS_7literalES1_(ptr noundef nonnull align 8 dereferenceable(232) %0, i32 %1, i32 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = lshr i32 %1, 1                           ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !51   ; 2 uses
  %i.d = zext nneg i32 %i.a to i64                ; 2 uses
  %i.e = getelementptr inbounds nuw [120 x i8], ptr %i.c, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i8, ptr %i.f, align 8, !tbaa !52, !range !10, !noundef !11
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = load i8, ptr %i.e, align 8, !tbaa !56, !range !10, !noundef !11 ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = trunc i32 %1 to i8
  %i.k = and i8 %i.j, 1
  %i.l = icmp eq i8 %i.i, %i.k
  br i1 %i.l, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 93
  store i8 1, ptr %i.m, align 1, !tbaa !20
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.n = trunc i32 %1 to i1                       ; 2 uses
  %i.o = trunc i32 %1 to i8
  %i.p = and i8 %i.o, 1
  %i.q = icmp ne i8 %i.i, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.s = load i8, ptr %i.r, align 8, !range !10
  %i.t = trunc nuw i8 %i.s to i1
  %or.cond = select i1 %i.q, i1 true, i1 %i.t
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN3sat12local_search12flip_walksatEj(ptr noundef nonnull align 8 dereferenceable(232) %0, i32 noundef %i.a)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !51
end_hunk_0
