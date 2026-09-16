Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/quantizer?download=true
inline.NumInlined: 293
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK3jxl9Quantizer17SetQuantFieldRectERKNS_5PlaneIfEERKNS_5RectTImEEPNS1_IiEE:bb.a
  %exitcond.not = icmp eq i64 %i.ao, %i.o
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !36

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %i.ap = add nuw i64 %.023.us, 1                 ; 2 uses
  %exitcond29.not = icmp eq i64 %i.ap, %i.b
  br i1 %exitcond29.not, label %._crit_edge26, label %.lr.ph.us, !llvm.loop !0

._crit_edge26:                                    ; preds = %._crit_edge.us, %.lr.ph25, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @_ZN3jxl9Quantizer13SetQuantFieldEfRKNS_5PlaneIfEEPNS1_IiEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, float noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %2, ptr noalias nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #5 align 2 {
bb.a:
  %4 = alloca %"struct.std::__1::__less", align 1 ; 3 uses
  %5 = alloca %"struct.std::__1::__less", align 1 ; 3 uses
  %6 = alloca %"class.std::__1::vector.1", align 8 ; 4 uses
  %7 = alloca %"class.std::__1::vector.1", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.a = load i32, ptr %2, align 8, !tbaa !31
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !32   ; 2 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = mul nuw i64 %i.e, %i.b                   ; 4 uses
  %.not.i = icmp eq i64 %i.f, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  br i1 %.not.i, label %_ZNSt3__16vectorIfNS_9allocatorIfEEEC2Em.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 4611686018427387903
  br i1 %i.g, label %bb.c, label %_ZNSt3__16vectorIfNS_9allocatorIfEEE18__construct_at_endEm.exit.i

bb.c:                                             ; preds = %bb.b
  call void @_ZNKSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #20
  unreachable

_ZNSt3__16vectorIfNS_9allocatorIfEEE18__construct_at_endEm.exit.i: ; preds = %bb.b
  %i.h = shl nuw i64 %i.f, 2                      ; 3 uses
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #21 ; 4 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.f
  %i.k = getelementptr i8, ptr %i.i, i64 %i.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.i, i8 0, i64 %i.h, i1 false), !tbaa !17
  %.pre = load i32, ptr %i.c, align 4, !tbaa !32  ; 2 uses
  %.pre66 = zext i32 %.pre to i64
  %i.l = ptrtoint ptr %i.j to i64
  br label %_ZNSt3__16vectorIfNS_9allocatorIfEEEC2Em.exit

_ZNSt3__16vectorIfNS_9allocatorIfEEEC2Em.exit:    ; preds = %bb.a, %_ZNSt3__16vectorIfNS_9allocatorIfEEE18__construct_at_endEm.exit.i
  %.pre-phi = phi i64 [ %i.e, %bb.a ], [ %.pre66, %_ZNSt3__16vectorIfNS_9allocatorIfEEE18__construct_at_endEm.exit.i ] ; 3 uses
  %i.m = phi i64 [ 0, %bb.a ], [ %i.l, %_ZNSt3__16vectorIfNS_9allocatorIfEEE18__construct_at_endEm.exit.i ]
  %i.n = phi ptr [ null, %bb.a ], [ %i.k, %_ZNSt3__16vectorIfNS_9allocatorIfEEE18__construct_at_endEm.exit.i ] ; 4 uses
  %i.o = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt3__16vectorIfNS_9allocatorIfEEE18__construct_at_endEm.exit.i ] ; 11 uses
  %i.p = phi i32 [ %i.d, %bb.a ], [ %.pre, %_ZNSt3__16vectorIfNS_9allocatorIfEEE18__construct_at_endEm.exit.i ]
  %.not59 = icmp eq i32 %i.p, 0
  br i1 %.not59, label %._crit_edge57, label %.lr.ph56

.lr.ph56:                                         ; preds = %_ZNSt3__16vectorIfNS_9allocatorIfEEEC2Em.exit
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !24   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !26   ; 3 uses
  %i.u = load i32, ptr %2, align 8, !tbaa !31     ; 3 uses
  %i.v = zext i32 %i.u to i64                     ; 8 uses
  %.not60 = icmp eq i32 %i.u, 0
  br i1 %.not60, label %._crit_edge57, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph56
  %i.w = mul nuw i64 %.pre-phi, %i.v
  %i.x = shl i64 %i.w, 2
  %scevgep = getelementptr i8, ptr %i.o, i64 %i.x
  %i.y = add nsw i64 %.pre-phi, -1
  %i.z = mul i64 %i.t, %i.y
  %i.aa = shl nuw nsw i64 %i.v, 2
  %i.ab = getelementptr i8, ptr %i.r, i64 %i.z
  %scevgep77 = getelementptr i8, ptr %i.ab, i64 %i.aa
  %min.iters.check = icmp ult i32 %i.u, 8
  %bound0 = icmp ult ptr %i.o, %scevgep77
  %bound1 = icmp ult ptr %i.r, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %i.t, 0
  %i.ac = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.v, 4294967288               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.v
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.055.us = phi i64 [ %i.bi, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 3 uses
  %i.ad = mul i64 %i.t, %.055.us
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ad ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ae, i64 64) ]
  %i.af = mul nuw i64 %.055.us, %i.v
  %i.ag = getelementptr [4 x i8], ptr %i.o, i64 %i.af ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.ac
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.us ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %wide.load = load <4 x float>, ptr %i.ah, align 32, !tbaa !17, !alias.scope !55
  %wide.load78 = load <4 x float>, ptr %i.ai, align 16, !tbaa !17, !alias.scope !55
  %i.aj = getelementptr [4 x i8], ptr %i.ag, i64 %index ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 16
  store <4 x float> %wide.load, ptr %i.aj, align 4, !tbaa !17, !alias.scope !56, !noalias !55
  store <4 x float> %wide.load78, ptr %i.ak, align 4, !tbaa !17, !alias.scope !56, !noalias !55
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !45

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us, %middle.block
  %.03654.us.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.us ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.03654.us.prol = phi i64 [ %i.ap, %scalar.ph.prol ], [ %.03654.us.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.03654.us.prol
  %i.an = load float, ptr %i.am, align 4, !tbaa !17
  %i.ao = getelementptr [4 x i8], ptr %i.ag, i64 %.03654.us.prol
  store float %i.an, ptr %i.ao, align 4, !tbaa !17
  %i.ap = add nuw nsw i64 %.03654.us.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !46

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.03654.us.unr = phi i64 [ %.03654.us.ph, %scalar.ph.preheader ], [ %i.ap, %scalar.ph.prol ]
  %i.aq = sub nsw i64 %.03654.us.ph, %i.v
  %i.ar = icmp ugt i64 %i.aq, -4
  br i1 %i.ar, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.03654.us = phi i64 [ %i.bh, %scalar.ph ], [ %.03654.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.03654.us
  %i.at = load float, ptr %i.as, align 4, !tbaa !17
  %i.au = getelementptr [4 x i8], ptr %i.ag, i64 %.03654.us
  store float %i.at, ptr %i.au, align 4, !tbaa !17
  %i.av = add nuw nsw i64 %.03654.us, 1           ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.av
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !17
  %i.ay = getelementptr [4 x i8], ptr %i.ag, i64 %i.av
  store float %i.ax, ptr %i.ay, align 4, !tbaa !17
  %i.az = add nuw nsw i64 %.03654.us, 2           ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.az
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !17
  %i.bc = getelementptr [4 x i8], ptr %i.ag, i64 %i.az
  store float %i.bb, ptr %i.bc, align 4, !tbaa !17
  %i.bd = add nuw nsw i64 %.03654.us, 3           ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.bd
  %i.bf = load float, ptr %i.be, align 4, !tbaa !17
  %i.bg = getelementptr [4 x i8], ptr %i.ag, i64 %i.bd
  store float %i.bf, ptr %i.bg, align 4, !tbaa !17
  %i.bh = add nuw nsw i64 %.03654.us, 4           ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bh, %i.v
  br i1 %exitcond.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !47

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bi = add nuw nsw i64 %.055.us, 1             ; 2 uses
  %exitcond63.not = icmp eq i64 %i.bi, %.pre-phi
  br i1 %exitcond63.not, label %._crit_edge57, label %.lr.ph.us, !llvm.loop !48

._crit_edge57:                                    ; preds = %._crit_edge.us, %.lr.ph56, %_ZNSt3__16vectorIfNS_9allocatorIfEEEC2Em.exit
  %i.bj = ptrtoint ptr %i.n to i64
  %i.bk = ptrtoint ptr %i.o to i64                ; 2 uses
  %i.bl = sub i64 %i.bj, %i.bk                    ; 4 uses
  %i.bm = ashr exact i64 %i.bl, 2                 ; 6 uses
  %i.bn = lshr i64 %i.bm, 1
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.bn ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.bp = icmp eq ptr %i.bo, %i.n
  br i1 %i.bp, label %_ZNSt3__111nth_elementB8nn180100INS_11__wrap_iterIPfEEEEvT_S4_S4_.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge57
  call void @_ZNSt3__113__nth_elementB8nn180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEENS_11__wrap_iterIPfEEEEvT1_S8_S8_T0_(ptr %i.o, ptr %i.bo, ptr %i.n, ptr noundef nonnull align 1 dereferenceable(1) %5) #22
  br label %_ZNSt3__111nth_elementB8nn180100INS_11__wrap_iterIPfEEEEvT_S4_S4_.exit

_ZNSt3__111nth_elementB8nn180100INS_11__wrap_iterIPfEEEEvT_S4_S4_.exit: ; preds = %._crit_edge57, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.bq = load float, ptr %i.bo, align 4, !tbaa !17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %.not.i39 = icmp eq ptr %i.n, %i.o
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br i1 %.not.i39, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %_ZNSt3__111nth_elementB8nn180100INS_11__wrap_iterIPfEEEEvT_S4_S4_.exit
  %i.br = icmp ugt i64 %i.bm, 4611686018427387903
  br i1 %i.br, label %bb.f, label %.lr.ph

bb.f:                                             ; preds = %bb.e
  call void @_ZNKSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #20
  unreachable

.lr.ph:                                           ; preds = %bb.e
  %i.bs = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #21 ; 5 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bs, i8 0, i64 %i.bl, i1 false), !tbaa !17
  %min.iters.check80 = icmp ult i64 %i.bm, 8
  br i1 %min.iters.check80, label %scalar.ph79.preheader, label %vector.ph81

vector.ph81:                                      ; preds = %.lr.ph
  %n.vec82 = and i64 %i.bm, 4611686018427387896   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bq, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body83

vector.body83:                                    ; preds = %vector.body83, %vector.ph81
  %index84 = phi i64 [ 0, %vector.ph81 ], [ %index.next87, %vector.body83 ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index84 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %wide.load85 = load <4 x float>, ptr %i.bt, align 4, !tbaa !17
  %wide.load86 = load <4 x float>, ptr %i.bu, align 4, !tbaa !17
  %i.bv = fsub <4 x float> %wide.load85, %broadcast.splat
  %i.bw = fsub <4 x float> %wide.load86, %broadcast.splat
  %i.bx = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bv)
  %i.by = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bw)
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %index84 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store <4 x float> %i.bx, ptr %i.bz, align 4, !tbaa !17
  store <4 x float> %i.by, ptr %i.ca, align 4, !tbaa !17
  %index.next87 = add nuw i64 %index84, 8         ; 2 uses
  %i.cb = icmp eq i64 %index.next87, %n.vec82
  br i1 %i.cb, label %middle.block88, label %vector.body83, !llvm.loop !49

middle.block88:                                   ; preds = %vector.body83
  %cmp.n89 = icmp eq i64 %i.bm, %n.vec82
  br i1 %cmp.n89, label %._crit_edge.loopexit, label %scalar.ph79.preheader

scalar.ph79.preheader:                            ; preds = %.lr.ph, %middle.block88
  %.03758.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec82, %middle.block88 ]
  br label %scalar.ph79

._crit_edge.loopexit:                             ; preds = %scalar.ph79, %middle.block88
  %8 = getelementptr i8, ptr %i.bs, i64 %i.bl
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt3__111nth_elementB8nn180100INS_11__wrap_iterIPfEEEEvT_S4_S4_.exit
  %9 = phi ptr [ null, %_ZNSt3__111nth_elementB8nn180100INS_11__wrap_iterIPfEEEEvT_S4_S4_.exit ], [ %i.bs, %._crit_edge.loopexit ] ; 5 uses
  %10 = phi ptr [ null, %_ZNSt3__111nth_elementB8nn180100INS_11__wrap_iterIPfEEEEvT_S4_S4_.exit ], [ %8, %._crit_edge.loopexit ] ; 3 uses
  %i.cc = ptrtoint ptr %10 to i64
  %i.cd = ptrtoint ptr %9 to i64
  %i.ce = sub i64 %i.cc, %i.cd                    ; 2 uses
  %i.cf = ashr exact i64 %i.ce, 2
  %i.cg = lshr i64 %i.cf, 1
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %i.cg ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ci = icmp eq ptr %i.ch, %10
  br i1 %i.ci, label %_ZNSt3__111nth_elementB8nn180100INS_11__wrap_iterIPfEEEEvT_S4_S4_.exit42, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  call void @_ZNSt3__113__nth_elementB8nn180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEENS_11__wrap_iterIPfEEEEvT1_S8_S8_T0_(ptr %9, ptr %i.ch, ptr %10, ptr noundef nonnull align 1 dereferenceable(1) %4) #22
  br label %_ZNSt3__111nth_elementB8nn180100INS_11__wrap_iterIPfEEEEvT_S4_S4_.exit42

_ZNSt3__111nth_elementB8nn180100INS_11__wrap_iterIPfEEEEvT_S4_S4_.exit42: ; preds = %._crit_edge, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.cj = load float, ptr %i.ch, align 4, !tbaa !17
  %i.ck = fsub float %i.bq, %i.cj
  %i.cl = fmul float %i.ck, 6.553600e+04
  %i.cm = fdiv float %i.cl, 5.000000e+00          ; 2 uses
  %i.cn = fcmp olt float %i.cm, 1.000000e+00
  %spec.store.select.i = select i1 %i.cn, float 1.000000e+00, float %i.cm ; 2 uses
  %i.co = fcmp ogt float %spec.store.select.i, 3.276800e+04
  %spec.store.select2.i = select i1 %i.co, float 3.276800e+04, float %spec.store.select.i
  %i.cp = fptosi float %spec.store.select2.i to i32 ; 2 uses
  %i.cq = fmul float %1, 4.096000e+03
  %i.cr = fpext float %i.cq to double
  %i.cs = fmul double %i.cr, 1.600000e+00
  %i.ct = fptosi double %i.cs to i32              ; 2 uses
  %i.cu = icmp sgt i32 %i.cp, %i.ct
  %spec.store.select1.i = call i32 @llvm.smax.i32(i32 %i.ct, i32 1)
  %.0.i = select i1 %i.cu, i32 %spec.store.select1.i, i32 %i.cp ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.0.i, ptr %i.cv, align 8, !tbaa !14
  %i.cw = sitofp i32 %.0.i to double              ; 2 uses
  %i.cx = fmul nnan double %i.cw, f0x3EF0000000000000
  %i.cy = fptrunc double %i.cx to float           ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  store float %i.cy, ptr %i.cz, align 4, !tbaa !19
  %i.da = fdiv double 6.553600e+04, %i.cw
  %i.db = fptrunc double %i.da to float           ; 6 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store float %i.db, ptr %i.dc, align 8, !tbaa !20
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !15
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !16 ; 6 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 48 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 60 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 52 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 64 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dh, i64 56 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dh, i64 68 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.dt = call float @llvm.fmuladd.f32(float %1, float %i.db, float 5.000000e-01) ; 2 uses
  %i.du = fcmp olt float %i.dt, 6.553600e+04
  %.sroa.speculated.i = select i1 %i.du, float %i.dt, float 6.553600e+04
  %i.dv = fptosi float %.sroa.speculated.i to i32 ; 2 uses
  store i32 %i.dv, ptr %i.dd, align 4, !tbaa !15
  %i.dw = insertelement <2 x i32> poison, i32 %i.de, i64 0
  %i.dx = insertelement <2 x i32> %i.dw, i32 %i.dv, i64 1
  %i.dy = sitofp <2 x i32> %i.dx to <2 x float>   ; 3 uses
  %i.dz = insertelement <2 x float> poison, float %i.db, i64 0
  %i.ea = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eb = fdiv <2 x float> %i.ea, %i.dy           ; 2 uses
  %i.ec = extractelement <2 x float> %i.eb, i64 0 ; 4 uses
  store float %i.ec, ptr %i.df, align 8, !tbaa !18
  %i.ed = load float, ptr %i.di, align 4, !tbaa !17
  %i.ee = fmul float %i.ed, %i.ec
  store float %i.ee, ptr %0, align 8, !tbaa !17
  %i.ef = load float, ptr %i.dj, align 4, !tbaa !17
  %i.eg = extractelement <2 x float> %i.dy, i64 0
  %i.eh = fmul float %i.eg, %i.cy                 ; 3 uses
  %i.ei = fmul float %i.ef, %i.eh
  store float %i.ei, ptr %i.dk, align 8, !tbaa !17
  %i.ej = load float, ptr %i.dl, align 4, !tbaa !17
  %i.ek = fmul float %i.ej, %i.ec
  store float %i.ek, ptr %i.dm, align 4, !tbaa !17
  %i.el = load float, ptr %i.dn, align 4, !tbaa !17
  %i.em = fmul float %i.el, %i.eh
  store float %i.em, ptr %i.do, align 4, !tbaa !17
  %i.en = load float, ptr %i.dp, align 4, !tbaa !17
  %i.eo = fmul float %i.ec, %i.en
  store float %i.eo, ptr %i.dq, align 8, !tbaa !17
  %i.ep = load float, ptr %i.dr, align 4, !tbaa !17
  %i.eq = fmul float %i.eh, %i.ep
  store float %i.eq, ptr %i.ds, align 8, !tbaa !17
  store float %i.cy, ptr %i.cz, align 4, !tbaa !19
  store float %i.db, ptr %i.dc, align 8, !tbaa !20
  %i.er = extractelement <2 x float> %i.eb, i64 1 ; 4 uses
  store float %i.er, ptr %i.df, align 8, !tbaa !18
  %i.es = load float, ptr %i.di, align 4, !tbaa !17
  %i.et = fmul float %i.er, %i.es
  store float %i.et, ptr %0, align 8, !tbaa !17
  %i.eu = load float, ptr %i.dj, align 4, !tbaa !17
  %i.ev = extractelement <2 x float> %i.dy, i64 1
  %i.ew = fmul float %i.ev, %i.cy                 ; 3 uses
  %i.ex = fmul float %i.ew, %i.eu
  store float %i.ex, ptr %i.dk, align 8, !tbaa !17
  %i.ey = load float, ptr %i.dl, align 4, !tbaa !17
  %i.ez = fmul float %i.er, %i.ey
  store float %i.ez, ptr %i.dm, align 4, !tbaa !17
  %i.fa = load float, ptr %i.dn, align 4, !tbaa !17
  %i.fb = fmul float %i.ew, %i.fa
  store float %i.fb, ptr %i.do, align 4, !tbaa !17
  %i.fc = load float, ptr %i.dp, align 4, !tbaa !17
  %i.fd = fmul float %i.er, %i.fc
  store float %i.fd, ptr %i.dq, align 8, !tbaa !17
  %i.fe = load float, ptr %i.dr, align 4, !tbaa !17
  %i.ff = fmul float %i.ew, %i.fe
  store float %i.ff, ptr %i.ds, align 8, !tbaa !17
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %_ZNK3jxl9Quantizer17SetQuantFieldRectERKNS_5PlaneIfEERKNS_5RectTImEEPNS1_IiEE.exit.thread, label %bb.h

scalar.ph79:                                      ; preds = %scalar.ph79.preheader, %scalar.ph79
  %.03758 = phi i64 [ %i.fl, %scalar.ph79 ], [ %.03758.ph, %scalar.ph79.preheader ] ; 3 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.03758
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !17
  %i.fi = fsub float %i.fh, %i.bq
  %i.fj = call noundef float @llvm.fabs.f32(float %i.fi)
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.03758
  store float %i.fj, ptr %i.fk, align 4, !tbaa !17
  %i.fl = add nuw i64 %.03758, 1                  ; 2 uses
  %exitcond65.not = icmp eq i64 %i.fl, %i.bm
  br i1 %exitcond65.not, label %._crit_edge.loopexit, label %scalar.ph79, !llvm.loop !50

bb.h:                                             ; preds = %_ZNSt3__111nth_elementB8nn180100INS_11__wrap_iterIPfEEEEvT_S4_S4_.exit42
  %i.fm = load i32, ptr %3, align 8, !tbaa !31    ; 4 uses
  %i.fn = load i32, ptr %2, align 8, !tbaa !31
  %i.fo = icmp eq i32 %i.fm, %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.fq = load i32, ptr %i.fp, align 4            ; 3 uses
  %i.fr = load i32, ptr %i.c, align 4
  %i.fs = icmp eq i32 %i.fq, %i.fr
  %i.ft = select i1 %i.fo, i1 %i.fs, i1 false
  br i1 %i.ft, label %bb.i, label %_ZNK3jxl9Quantizer17SetQuantFieldRectERKNS_5PlaneIfEERKNS_5RectTImEEPNS1_IiEE.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.fu = zext i32 %i.fm to i64                   ; 3 uses
  %i.fv = zext i32 %i.fq to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %.not.i43 = icmp eq i32 %i.fq, 0
  br i1 %.not.i43, label %_ZNK3jxl9Quantizer17SetQuantFieldRectERKNS_5PlaneIfEERKNS_5RectTImEEPNS1_IiEE.exit.thread, label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %bb.i
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !24, !noalias !58
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !26, !noalias !58
  %i.ga = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !24, !alias.scope !58
  %i.gc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !26, !alias.scope !58
  %.not27.i = icmp eq i32 %i.fm, 0
  br i1 %.not27.i, label %_ZNK3jxl9Quantizer17SetQuantFieldRectERKNS_5PlaneIfEERKNS_5RectTImEEPNS1_IiEE.exit.thread, label %.lr.ph.us.i.preheader

.lr.ph.us.i.preheader:                            ; preds = %.lr.ph25.i
  %min.iters.check92 = icmp ult i32 %i.fm, 4
  %n.vec94 = and i64 %i.fu, 4294967292            ; 3 uses
  %broadcast.splatinsert95 = insertelement <4 x float> poison, float %i.db, i64 0
  %broadcast.splat96 = shufflevector <4 x float> %broadcast.splatinsert95, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n102 = icmp eq i64 %n.vec94, %i.fu
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.preheader, %._crit_edge.us.i
  %.023.us.i = phi i64 [ %i.gz, %._crit_edge.us.i ], [ 0, %.lr.ph.us.i.preheader ] ; 3 uses
  %i.ge = mul i64 %.023.us.i, %i.fz
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.ge ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.gf, i64 64) ]
  %i.gg = mul i64 %.023.us.i, %i.gd
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.gg ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.gh, i64 64) ]
  br i1 %min.iters.check92, label %scalar.ph91.preheader, label %vector.body97

vector.body97:                                    ; preds = %.lr.ph.us.i, %vector.body97
  %index98 = phi i64 [ %index.next100, %vector.body97 ], [ 0, %.lr.ph.us.i ] ; 3 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %index98
  %wide.load99 = load <4 x float>, ptr %i.gi, align 16, !tbaa !17, !noalias !58
  %i.gj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load99, <4 x float> %broadcast.splat96, <4 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.gk = fcmp ogt <4 x float> %i.gj, splat (float 2.560000e+02)
  %i.gl = select <4 x i1> %i.gk, <4 x float> splat (float 2.560000e+02), <4 x float> %i.gj ; 2 uses
  %i.gm = fcmp ogt <4 x float> %i.gl, splat (float 1.000000e+00)
  %i.gn = select <4 x i1> %i.gm, <4 x float> %i.gl, <4 x float> splat (float 1.000000e+00)
  %i.go = fptosi <4 x float> %i.gn to <4 x i32>
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %index98
  store <4 x i32> %i.go, ptr %i.gp, align 16, !tbaa !27, !noalias !58
  %index.next100 = add nuw i64 %index98, 4        ; 2 uses
  %i.gq = icmp eq i64 %index.next100, %n.vec94
  br i1 %i.gq, label %middle.block101, label %vector.body97, !llvm.loop !53

middle.block101:                                  ; preds = %vector.body97
  br i1 %cmp.n102, label %._crit_edge.us.i, label %scalar.ph91.preheader

scalar.ph91.preheader:                            ; preds = %.lr.ph.us.i, %middle.block101
  %.01722.us.i.ph = phi i64 [ 0, %.lr.ph.us.i ], [ %n.vec94, %middle.block101 ]
  br label %scalar.ph91

scalar.ph91:                                      ; preds = %scalar.ph91.preheader, %scalar.ph91
  %.01722.us.i = phi i64 [ %i.gy, %scalar.ph91 ], [ %.01722.us.i.ph, %scalar.ph91.preheader ] ; 3 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %.01722.us.i
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !17, !noalias !58
  %i.gt = call float @llvm.fmuladd.f32(float %i.gs, float %i.db, float 5.000000e-01) ; 2 uses
  %i.gu = fcmp ogt float %i.gt, 2.560000e+02
  %.sroa.speculated20.us.i = select i1 %i.gu, float 2.560000e+02, float %i.gt ; 2 uses
  %i.gv = fcmp ogt float %.sroa.speculated20.us.i, 1.000000e+00
  %.sroa.speculated.us.i = select i1 %i.gv, float %.sroa.speculated20.us.i, float 1.000000e+00
  %i.gw = fptosi float %.sroa.speculated.us.i to i32
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %.01722.us.i
  store i32 %i.gw, ptr %i.gx, align 4, !tbaa !27, !noalias !58
  %i.gy = add nuw nsw i64 %.01722.us.i, 1         ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.gy, %i.fu
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %scalar.ph91, !llvm.loop !54

._crit_edge.us.i:                                 ; preds = %scalar.ph91, %middle.block101
  %i.gz = add nuw nsw i64 %.023.us.i, 1           ; 2 uses
  %exitcond29.not.i = icmp eq i64 %i.gz, %i.fv
  br i1 %exitcond29.not.i, label %_ZNK3jxl9Quantizer17SetQuantFieldRectERKNS_5PlaneIfEERKNS_5RectTImEEPNS1_IiEE.exit, label %.lr.ph.us.i, !llvm.loop !0

_ZNK3jxl9Quantizer17SetQuantFieldRectERKNS_5PlaneIfEERKNS_5RectTImEEPNS1_IiEE.exit: ; preds = %._crit_edge.us.i
  %.not.i.i = icmp eq ptr %9, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit, label %_ZNK3jxl9Quantizer17SetQuantFieldRectERKNS_5PlaneIfEERKNS_5RectTImEEPNS1_IiEE.exit.thread

_ZNK3jxl9Quantizer17SetQuantFieldRectERKNS_5PlaneIfEERKNS_5RectTImEEPNS1_IiEE.exit.thread: ; preds = %bb.h, %.lr.ph25.i, %bb.i, %_ZNSt3__111nth_elementB8nn180100INS_11__wrap_iterIPfEEEEvT_S4_S4_.exit42, %_ZNK3jxl9Quantizer17SetQuantFieldRectERKNS_5PlaneIfEERKNS_5RectTImEEPNS1_IiEE.exit
  %.sroa.049.052 = phi i32 [ 0, %_ZNK3jxl9Quantizer17SetQuantFieldRectERKNS_5PlaneIfEERKNS_5RectTImEEPNS1_IiEE.exit ], [ 0, %_ZNSt3__111nth_elementB8nn180100INS_11__wrap_iterIPfEEEEvT_S4_S4_.exit42 ], [ 0, %bb.i ], [ 0, %.lr.ph25.i ], [ 1, %bb.h ]
  call void @_ZdlPvm(ptr noundef nonnull %9, i64 noundef %i.ce) #23
  br label %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit

_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit: ; preds = %_ZNK3jxl9Quantizer17SetQuantFieldRectERKNS_5PlaneIfEERKNS_5RectTImEEPNS1_IiEE.exit, %_ZNK3jxl9Quantizer17SetQuantFieldRectERKNS_5PlaneIfEERKNS_5RectTImEEPNS1_IiEE.exit.thread
  %.sroa.049.053 = phi i32 [ 0, %_ZNK3jxl9Quantizer17SetQuantFieldRectERKNS_5PlaneIfEERKNS_5RectTImEEPNS1_IiEE.exit ], [ %.sroa.049.052, %_ZNK3jxl9Quantizer17SetQuantFieldRectERKNS_5PlaneIfEERKNS_5RectTImEEPNS1_IiEE.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %.not.i.i44 = icmp eq ptr %i.o, null
  br i1 %.not.i.i44, label %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit45, label %bb.j

bb.j:                                             ; preds = %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit
  %i.ha = sub i64 %i.m, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.ha) #23
  br label %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit45

_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit45: ; preds = %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  ret i32 %.sroa.049.053
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_ZN3jxl9Quantizer8SetQuantEffPNS_5PlaneIiEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) initializes((0, 12), (16, 28), (32, 36), (40, 52)) %0, float noundef %1, float noundef %2, ptr noalias nofree noundef readonly captures(none) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = fmul float %2, 6.553600e+04
  %i.b = fdiv float %i.a, 5.000000e+00            ; 2 uses
  %i.c = fcmp olt float %i.b, 1.000000e+00
  %spec.store.select.i = select i1 %i.c, float 1.000000e+00, float %i.b ; 2 uses
  %i.d = fcmp ogt float %spec.store.select.i, 3.276800e+04
  %spec.store.select2.i = select i1 %i.d, float 3.276800e+04, float %spec.store.select.i
  %i.e = fptosi float %spec.store.select2.i to i32 ; 2 uses
  %i.f = fmul float %1, 4.096000e+03
  %i.g = fpext float %i.f to double
  %i.h = fmul double %i.g, 1.600000e+00
  %i.i = fptosi double %i.h to i32                ; 2 uses
  %i.j = icmp sgt i32 %i.e, %i.i
  %spec.store.select1.i = tail call i32 @llvm.smax.i32(i32 %i.i, i32 1)
  %.0.i = select i1 %i.j, i32 %spec.store.select1.i, i32 %i.e ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.0.i, ptr %i.k, align 8, !tbaa !14
  %i.l = sitofp i32 %.0.i to double               ; 2 uses
  %i.m = fmul nnan double %i.l, f0x3EF0000000000000
  %i.n = fptrunc double %i.m to float             ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  store float %i.n, ptr %i.o, align 4, !tbaa !19
  %i.p = fdiv double 6.553600e+04, %i.l
  %i.q = fptrunc double %i.p to float             ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store float %i.q, ptr %i.r, align 8, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.t = load <4 x i32>, ptr %i.s, align 4
  %i.u = shufflevector <4 x i32> %i.t, <4 x i32> poison, <2 x i32> <i32 0, i32 poison>
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !16   ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 60 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 52 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 64 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 56 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 68 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aj = insertelement <2 x float> poison, float %i.q, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.al = insertelement <2 x float> poison, float %1, i64 0
  %i.am = insertelement <2 x float> %i.al, float %2, i64 1
  %i.an = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> %i.ak, <2 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.ao = extractelement <2 x float> %i.an, i64 0 ; 2 uses
  %i.ap = fcmp olt float %i.ao, 6.553600e+04
  %.sroa.speculated.i = select i1 %i.ap, float %i.ao, float 6.553600e+04
  %i.aq = fptosi float %.sroa.speculated.i to i32 ; 2 uses
  store i32 %i.aq, ptr %i.s, align 4, !tbaa !15
  %i.ar = insertelement <2 x i32> %i.u, i32 %i.aq, i64 1
  %i.as = sitofp <2 x i32> %i.ar to <2 x float>   ; 3 uses
  %i.at = fdiv <2 x float> %i.ak, %i.as           ; 2 uses
  %i.au = extractelement <2 x float> %i.at, i64 0 ; 4 uses
  store float %i.au, ptr %i.v, align 8, !tbaa !18
  %i.av = load float, ptr %i.y, align 4, !tbaa !17
  %i.aw = fmul float %i.au, %i.av
  store float %i.aw, ptr %0, align 8, !tbaa !17
  %i.ax = load float, ptr %i.z, align 4, !tbaa !17
  %i.ay = extractelement <2 x float> %i.as, i64 0
  %i.az = fmul float %i.ay, %i.n                  ; 3 uses
  %i.ba = fmul float %i.az, %i.ax
  store float %i.ba, ptr %i.aa, align 8, !tbaa !17
  %i.bb = load float, ptr %i.ab, align 4, !tbaa !17
  %i.bc = fmul float %i.au, %i.bb
  store float %i.bc, ptr %i.ac, align 4, !tbaa !17
  %i.bd = load float, ptr %i.ad, align 4, !tbaa !17
  %i.be = fmul float %i.az, %i.bd
  store float %i.be, ptr %i.ae, align 4, !tbaa !17
  %i.bf = load float, ptr %i.af, align 4, !tbaa !17
  %i.bg = fmul float %i.au, %i.bf
  store float %i.bg, ptr %i.ag, align 8, !tbaa !17
  %i.bh = load float, ptr %i.ah, align 4, !tbaa !17
  %i.bi = fmul float %i.az, %i.bh
  store float %i.bi, ptr %i.ai, align 8, !tbaa !17
  store float %i.n, ptr %i.o, align 4, !tbaa !19
  store float %i.q, ptr %i.r, align 8, !tbaa !20
end_hunk_0
