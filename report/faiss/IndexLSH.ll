Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/IndexLSH?download=true
inline.NumInlined: 468
inline.NumDeleted: 272
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN5faiss8IndexLSHD2Ev:bb.a
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !30
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #17
  br label %_ZN5faiss14IndexFlatCodesD2Ev.exit

_ZN5faiss14IndexFlatCodesD2Ev.exit:               ; preds = %_ZNSt12__shared_ptrIN5faiss21MaybeOwnedVectorOwnerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, %bb.k
  tail call void @_ZN5faiss5IndexD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(128) %0) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss8IndexLSHD0Ev(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN5faiss8IndexLSHD2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 240) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss8IndexLSH5trainElPKf(ptr noundef nonnull align 8 dereferenceable(240) %0, i64 noundef %1, ptr noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 133 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !51, !range !52, !noundef !53
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 7 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !54
  %i.g = sext i32 %i.f to i64                     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !55   ; 2 uses
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !16   ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 2                   ; 3 uses
  %i.o = icmp ult i64 %i.n, %i.g
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = sub nuw nsw i64 %i.g, %i.n
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.p)
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.d:                                             ; preds = %bb.b
  %i.q = icmp ugt i64 %i.n, %i.g
  br i1 %i.q, label %bb.e, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.g ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.r
  br i1 %.not.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.r, ptr %i.h, align 8, !tbaa !55
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i
  store i8 0, ptr %i.a, align 1, !tbaa !51
  %i.s = tail call noundef ptr @_ZNK5faiss8IndexLSH16apply_preprocessElPKf(ptr noundef nonnull align 8 dereferenceable(240) %0, i64 noundef %1, ptr noundef %2) ; 5 uses
  %i.t = icmp eq ptr %i.s, %2
  %i.u = select i1 %i.t, ptr null, ptr %i.s       ; 4 uses
  store i8 1, ptr %i.a, align 1, !tbaa !51
  %i.v = load i32, ptr %i.e, align 8, !tbaa !54
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %1, %i.w                     ; 2 uses
  %i.y = icmp ugt i64 %i.x, 4611686018427387903
  %i.z = shl i64 %i.x, 2
  %i.aa = select i1 %i.y, i64 -1, i64 %i.z
  %i.ab = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aa) #19
          to label %.preheader69 unwind label %bb.f ; 12 uses

.preheader69:                                     ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.ac = ptrtoaddr ptr %i.ab to i64
  %i.ad = icmp sgt i64 %1, 0
  %.pre = load i32, ptr %i.e, align 8, !tbaa !54  ; 10 uses
  br i1 %i.ad, label %.preheader68.lr.ph, label %.preheader

.preheader68.lr.ph:                               ; preds = %.preheader69
  %i.ae = sext i32 %.pre to i64                   ; 8 uses
  %i.af = icmp sgt i32 %.pre, 0
  br i1 %i.af, label %.preheader68.preheader, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit

.preheader68.preheader:                           ; preds = %.preheader68.lr.ph
  %i.ag = add nuw i64 %1, %i.ae
  %i.ah = shl i64 %i.ag, 2
  %i.ai = getelementptr i8, ptr %i.ab, i64 %i.ah
  %scevgep = getelementptr i8, ptr %i.ai, i64 -4
  %i.aj = mul i64 %1, %i.ae
  %i.ak = shl i64 %i.aj, 2
  %scevgep118 = getelementptr i8, ptr %i.s, i64 %i.ak
  %min.iters.check = icmp ugt i32 %.pre, 7
  %ident.check.not = icmp eq i64 %1, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  %bound0 = icmp ult ptr %i.ab, %scevgep118
  %bound1 = icmp ult ptr %i.s, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %i.ae, 2147483640              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ae
  %xtraiter = and i64 %i.ae, 3
  %i.al = and i32 %.pre, 3
  %lcmp.mod.not = icmp eq i32 %i.al, 0
  br label %.preheader68

.preheader68:                                     ; preds = %.preheader68.preheader, %._crit_edge
  %.04371 = phi i64 [ %i.ew, %._crit_edge ], [ 0, %.preheader68.preheader ] ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.ab, i64 %.04371 ; 6 uses
  %i.am = mul nuw nsw i64 %.04371, %i.ae
  %i.an = getelementptr [4 x i8], ptr %i.s, i64 %i.am ; 6 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader68, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader68 ] ; 3 uses
  %i.ao = getelementptr [4 x i8], ptr %i.an, i64 %index ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 16
  %wide.load = load <4 x float>, ptr %i.ao, align 4, !tbaa !56, !alias.scope !83
  %wide.load119 = load <4 x float>, ptr %i.ap, align 4, !tbaa !56, !alias.scope !83
  %i.aq = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 16
  store <4 x float> %wide.load, ptr %i.aq, align 4, !tbaa !56, !alias.scope !84, !noalias !83
  store <4 x float> %wide.load119, ptr %i.ar, align 4, !tbaa !56, !alias.scope !84, !noalias !83
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !74

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader68, %middle.block
  %.04270.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader68 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.04270.prol = phi i64 [ %i.aw, %scalar.ph.prol ], [ %.04270.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.at = getelementptr [4 x i8], ptr %i.an, i64 %.04270.prol
  %i.au = load float, ptr %i.at, align 4, !tbaa !56
  %i.av = mul nuw nsw i64 %.04270.prol, %1
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.av
  store float %i.au, ptr %gep.prol, align 4, !tbaa !56
  %i.aw = add nuw nsw i64 %.04270.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !75

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.04270.unr = phi i64 [ %.04270.ph, %scalar.ph.preheader ], [ %i.aw, %scalar.ph.prol ]
  %i.ax = sub nsw i64 %.04270.ph, %i.ae
  %i.ay = icmp ugt i64 %i.ax, -4
  br i1 %i.ay, label %._crit_edge, label %scalar.ph

.preheader:                                       ; preds = %._crit_edge, %.preheader69
  %i.az = icmp sgt i32 %.pre, 0
  br i1 %i.az, label %.lr.ph, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit

.lr.ph:                                           ; preds = %.preheader
  %i.ba = sdiv i64 %1, 2
  %.idx67 = shl i64 %i.ba, 2                      ; 8 uses
  %.idx = shl nsw i64 %1, 2                       ; 5 uses
  %i.bb = icmp eq i64 %1, 0
  %i.bc = icmp eq i64 %.idx67, %.idx              ; 2 uses
  %i.bd = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %1, i1 true)
  %i.be = shl nuw nsw i64 %i.bd, 1
  %i.bf = xor i64 %i.be, 126                      ; 5 uses
  %i.bg = and i64 %1, 1
  %i.bh = icmp eq i64 %i.bg, 0
  %i.bi = add nsw i64 %.idx67, -4
  %i.bj = icmp eq i64 %i.bi, %.idx
  %.fr = freeze i1 %i.bj
  %or.cond.i53 = or i1 %i.bb, %.fr                ; 2 uses
  br i1 %i.bh, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.bc, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  br i1 %or.cond.i53, label %.lr.ph.split.us.split.us.split.us, label %_ZSt11nth_elementIPfEvT_S1_S1_.exit.us.us

.lr.ph.split.us.split.us.split.us:                ; preds = %.lr.ph.split.us.split.us
  %invariant.gep85 = getelementptr i8, ptr %i.ab, i64 %.idx67 ; 3 uses
  %i.bk = load ptr, ptr %i.d, align 8, !tbaa !16  ; 3 uses
  %i.bl = zext nneg i32 %.pre to i64              ; 2 uses
  %xtraiter169 = and i64 %i.bl, 1
  %i.bm = icmp eq i32 %.pre, 1
  br i1 %i.bm, label %_ZSt11nth_elementIPfEvT_S1_S1_.exit.us.us.us.epil.preheader, label %.lr.ph.split.us.split.us.split.us.new

.lr.ph.split.us.split.us.split.us.new:            ; preds = %.lr.ph.split.us.split.us.split.us
  %unroll_iter = and i64 %i.bl, 2147483646
  br label %_ZSt11nth_elementIPfEvT_S1_S1_.exit.us.us.us

_ZSt11nth_elementIPfEvT_S1_S1_.exit.us.us.us:     ; preds = %_ZSt11nth_elementIPfEvT_S1_S1_.exit.us.us.us, %.lr.ph.split.us.split.us.split.us.new
  %.04172.us.us.us = phi i64 [ 0, %.lr.ph.split.us.split.us.split.us.new ], [ %i.bw, %_ZSt11nth_elementIPfEvT_S1_S1_.exit.us.us.us ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.split.us.split.us.split.us.new ], [ %niter.next.1, %_ZSt11nth_elementIPfEvT_S1_S1_.exit.us.us.us ]
  %i.bn = mul nsw i64 %.04172.us.us.us, %1
  %gep86 = getelementptr [4 x i8], ptr %invariant.gep85, i64 %i.bn
  %i.bo = getelementptr inbounds i8, ptr %gep86, i64 -4
  %3 = load <2 x float>, ptr %i.bo, align 4, !tbaa !56
  %4 = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %3)
  %i.bp = fmul float %4, 5.000000e-01
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.04172.us.us.us
  store float %i.bp, ptr %i.bq, align 4, !tbaa !56
  %i.br = or disjoint i64 %.04172.us.us.us, 1     ; 2 uses
  %i.bs = mul nsw i64 %i.br, %1
  %gep86.1 = getelementptr [4 x i8], ptr %invariant.gep85, i64 %i.bs
  %i.bt = getelementptr inbounds i8, ptr %gep86.1, i64 -4
  %5 = load <2 x float>, ptr %i.bt, align 4, !tbaa !56
  %6 = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %5)
  %i.bu = fmul float %6, 5.000000e-01
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.br
  store float %i.bu, ptr %i.bv, align 4, !tbaa !56
  %i.bw = add nuw nsw i64 %.04172.us.us.us, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit.loopexit.unr-lcssa, label %_ZSt11nth_elementIPfEvT_S1_S1_.exit.us.us.us, !llvm.loop !76

_ZSt11nth_elementIPfEvT_S1_S1_.exit.us.us:        ; preds = %.lr.ph.split.us.split.us, %_ZSt11nth_elementIPfEvT_S1_S1_.exit55.us.us
  %.04172.us.us = phi i64 [ %i.ch, %_ZSt11nth_elementIPfEvT_S1_S1_.exit55.us.us ], [ 0, %.lr.ph.split.us.split.us ] ; 3 uses
  %i.bx = mul nsw i64 %.04172.us.us, %1
  %i.by = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.bx ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 %.idx67 ; 3 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !56
  %i.cb = getelementptr inbounds i8, ptr %i.bz, i64 -4 ; 2 uses
  invoke void @_ZSt13__introselectIPflN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_T1_(ptr noundef nonnull %i.by, ptr noundef nonnull %i.cb, ptr noundef nonnull %i.bz, i64 noundef %i.bf)
          to label %_ZSt11nth_elementIPfEvT_S1_S1_.exit55.us.us unwind label %.split74.us.split.us

_ZSt11nth_elementIPfEvT_S1_S1_.exit55.us.us:      ; preds = %_ZSt11nth_elementIPfEvT_S1_S1_.exit.us.us
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !56
  %i.cd = fadd float %i.ca, %i.cc
  %i.ce = fmul float %i.cd, 5.000000e-01
  %i.cf = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %.04172.us.us
  store float %i.ce, ptr %i.cg, align 4, !tbaa !56
  %i.ch = add nuw nsw i64 %.04172.us.us, 1        ; 2 uses
  %i.ci = load i32, ptr %i.e, align 8, !tbaa !54
  %i.cj = sext i32 %i.ci to i64
  %i.ck = icmp slt i64 %i.ch, %i.cj
  br i1 %i.ck, label %_ZSt11nth_elementIPfEvT_S1_S1_.exit.us.us, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit, !llvm.loop !77

.split74.us.split.us:                             ; preds = %_ZSt11nth_elementIPfEvT_S1_S1_.exit.us.us
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit58

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  br i1 %or.cond.i53, label %.lr.ph.split.us.split.split.us, label %.lr.ph.split.us.split.split

.lr.ph.split.us.split.split.us:                   ; preds = %.lr.ph.split.us.split, %_ZSt11nth_elementIPfEvT_S1_S1_.exit.us.us82
  %.04172.us.us81 = phi i64 [ %i.cu, %_ZSt11nth_elementIPfEvT_S1_S1_.exit.us.us82 ], [ 0, %.lr.ph.split.us.split ] ; 3 uses
  %i.cm = mul nsw i64 %.04172.us.us81, %1
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.cm ; 3 uses
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 %.idx67 ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %i.cn, i64 %.idx
  invoke void @_ZSt13__introselectIPflN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_T1_(ptr noundef nonnull %i.cn, ptr noundef nonnull %i.co, ptr noundef nonnull %i.cp, i64 noundef %i.bf)
          to label %_ZSt11nth_elementIPfEvT_S1_S1_.exit.us.us82 unwind label %.split.us.split.us

_ZSt11nth_elementIPfEvT_S1_S1_.exit.us.us82:      ; preds = %.lr.ph.split.us.split.split.us
  %i.cq = getelementptr inbounds i8, ptr %i.co, i64 -4
  %7 = load <2 x float>, ptr %i.cq, align 4, !tbaa !56
  %8 = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %7)
  %i.cr = fmul float %8, 5.000000e-01
  %i.cs = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.04172.us.us81
  store float %i.cr, ptr %i.ct, align 4, !tbaa !56
  %i.cu = add nuw nsw i64 %.04172.us.us81, 1      ; 2 uses
  %i.cv = load i32, ptr %i.e, align 8, !tbaa !54
  %i.cw = sext i32 %i.cv to i64
  %i.cx = icmp slt i64 %i.cu, %i.cw
  br i1 %i.cx, label %.lr.ph.split.us.split.split.us, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit, !llvm.loop !77

.split.us.split.us:                               ; preds = %.lr.ph.split.us.split.split.us
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit58

.lr.ph.split.us.split.split:                      ; preds = %.lr.ph.split.us.split, %_ZSt11nth_elementIPfEvT_S1_S1_.exit55.us
  %.04172.us = phi i64 [ %i.dk, %_ZSt11nth_elementIPfEvT_S1_S1_.exit55.us ], [ 0, %.lr.ph.split.us.split ] ; 3 uses
  %i.cz = mul nsw i64 %.04172.us, %1
  %i.da = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.cz ; 4 uses
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 %.idx67 ; 3 uses
  %i.dc = getelementptr inbounds i8, ptr %i.da, i64 %.idx ; 2 uses
  invoke void @_ZSt13__introselectIPflN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_T1_(ptr noundef nonnull %i.da, ptr noundef nonnull %i.db, ptr noundef nonnull %i.dc, i64 noundef %i.bf)
          to label %_ZSt11nth_elementIPfEvT_S1_S1_.exit.us unwind label %.split.us.split

_ZSt11nth_elementIPfEvT_S1_S1_.exit.us:           ; preds = %.lr.ph.split.us.split.split
  %i.dd = load float, ptr %i.db, align 4, !tbaa !56
  %i.de = getelementptr inbounds i8, ptr %i.db, i64 -4 ; 2 uses
  invoke void @_ZSt13__introselectIPflN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_T1_(ptr noundef nonnull %i.da, ptr noundef nonnull %i.de, ptr noundef nonnull %i.dc, i64 noundef %i.bf)
          to label %_ZSt11nth_elementIPfEvT_S1_S1_.exit55.us unwind label %.split74.us.split

_ZSt11nth_elementIPfEvT_S1_S1_.exit55.us:         ; preds = %_ZSt11nth_elementIPfEvT_S1_S1_.exit.us
  %i.df = load float, ptr %i.de, align 4, !tbaa !56
  %i.dg = fadd float %i.dd, %i.df
  %i.dh = fmul float %i.dg, 5.000000e-01
  %i.di = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %.04172.us
  store float %i.dh, ptr %i.dj, align 4, !tbaa !56
  %i.dk = add nuw nsw i64 %.04172.us, 1           ; 2 uses
  %i.dl = load i32, ptr %i.e, align 8, !tbaa !54
  %i.dm = sext i32 %i.dl to i64
  %i.dn = icmp slt i64 %i.dk, %i.dm
  br i1 %i.dn, label %.lr.ph.split.us.split.split, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit, !llvm.loop !77

.split.us.split:                                  ; preds = %.lr.ph.split.us.split.split
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit58

.split74.us.split:                                ; preds = %_ZSt11nth_elementIPfEvT_S1_S1_.exit.us
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit58

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.bc, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %invariant.gep78 = getelementptr i8, ptr %i.ab, i64 %.idx67 ; 6 uses
  %i.dq = load ptr, ptr %i.d, align 8, !tbaa !16  ; 7 uses
  %i.dr = ptrtoaddr ptr %i.dq to i64
  %i.ds = zext nneg i32 %.pre to i64              ; 5 uses
  %min.iters.check124 = icmp ult i32 %.pre, 16
  %ident.check121.not = icmp ne i64 %1, 1
  %or.cond158.not160 = or i1 %min.iters.check124, %ident.check121.not
  %i.dt = sub i64 %i.ac, %i.dr
  %diff.check = icmp ugt i64 %i.dt, -32
  %or.cond159 = select i1 %or.cond158.not160, i1 true, i1 %diff.check
  br i1 %or.cond159, label %_ZSt11nth_elementIPfEvT_S1_S1_.exit.us77.preheader, label %vector.ph125

vector.ph125:                                     ; preds = %.lr.ph.split.split.us
  %n.vec126 = and i64 %i.ds, 2147483640           ; 3 uses
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph125
  %index128 = phi i64 [ 0, %vector.ph125 ], [ %index.next131, %vector.body127 ] ; 3 uses
  %i.du = getelementptr [4 x i8], ptr %invariant.gep78, i64 %index128 ; 2 uses
  %i.dv = getelementptr i8, ptr %i.du, i64 16
  %wide.load129 = load <4 x float>, ptr %i.du, align 4, !tbaa !56
  %wide.load130 = load <4 x float>, ptr %i.dv, align 4, !tbaa !56
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %index128 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store <4 x float> %wide.load129, ptr %i.dw, align 4, !tbaa !56
  store <4 x float> %wide.load130, ptr %i.dx, align 4, !tbaa !56
  %index.next131 = add nuw i64 %index128, 8       ; 2 uses
  %i.dy = icmp eq i64 %index.next131, %n.vec126
  br i1 %i.dy, label %middle.block132, label %vector.body127, !llvm.loop !78

middle.block132:                                  ; preds = %vector.body127
  %cmp.n133 = icmp eq i64 %n.vec126, %i.ds
  br i1 %cmp.n133, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit, label %_ZSt11nth_elementIPfEvT_S1_S1_.exit.us77.preheader

_ZSt11nth_elementIPfEvT_S1_S1_.exit.us77.preheader: ; preds = %.lr.ph.split.split.us, %middle.block132
  %.04172.us76.ph = phi i64 [ 0, %.lr.ph.split.split.us ], [ %n.vec126, %middle.block132 ] ; 3 uses
  %xtraiter166 = and i64 %i.ds, 3                 ; 2 uses
  %lcmp.mod167.not = icmp eq i64 %xtraiter166, 0
  br i1 %lcmp.mod167.not, label %_ZSt11nth_elementIPfEvT_S1_S1_.exit.us77.prol.loopexit, label %_ZSt11nth_elementIPfEvT_S1_S1_.exit.us77.prol

_ZSt11nth_elementIPfEvT_S1_S1_.exit.us77.prol:    ; preds = %_ZSt11nth_elementIPfEvT_S1_S1_.exit.us77.preheader, %_ZSt11nth_elementIPfEvT_S1_S1_.exit.us77.prol
  %.04172.us76.prol = phi i64 [ %i.ec, %_ZSt11nth_elementIPfEvT_S1_S1_.exit.us77.prol ], [ %.04172.us76.ph, %_ZSt11nth_elementIPfEvT_S1_S1_.exit.us77.preheader ] ; 3 uses
  %prol.iter168 = phi i64 [ %prol.iter168.next, %_ZSt11nth_elementIPfEvT_S1_S1_.exit.us77.prol ], [ 0, %_ZSt11nth_elementIPfEvT_S1_S1_.exit.us77.preheader ]
  %i.dz = mul nsw i64 %.04172.us76.prol, %1
  %gep79.prol = getelementptr [4 x i8], ptr %invariant.gep78, i64 %i.dz
  %i.ea = load float, ptr %gep79.prol, align 4, !tbaa !56
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %.04172.us76.prol
  store float %i.ea, ptr %i.eb, align 4, !tbaa !56
  %i.ec = add nuw nsw i64 %.04172.us76.prol, 1    ; 2 uses
  %prol.iter168.next = add i64 %prol.iter168, 1   ; 2 uses
  %prol.iter168.cmp.not = icmp eq i64 %prol.iter168.next, %xtraiter166
  br i1 %prol.iter168.cmp.not, label %_ZSt11nth_elementIPfEvT_S1_S1_.exit.us77.prol.loopexit, label %_ZSt11nth_elementIPfEvT_S1_S1_.exit.us77.prol, !llvm.loop !79

_ZSt11nth_elementIPfEvT_S1_S1_.exit.us77.prol.loopexit: ; preds = %_ZSt11nth_elementIPfEvT_S1_S1_.exit.us77.prol, %_ZSt11nth_elementIPfEvT_S1_S1_.exit.us77.preheader
  %.04172.us76.unr = phi i64 [ %.04172.us76.ph, %_ZSt11nth_elementIPfEvT_S1_S1_.exit.us77.preheader ], [ %i.ec, %_ZSt11nth_elementIPfEvT_S1_S1_.exit.us77.prol ]
  %i.ed = sub nsw i64 %.04172.us76.ph, %i.ds
  %i.ee = icmp ugt i64 %i.ed, -4
  br i1 %i.ee, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit, label %_ZSt11nth_elementIPfEvT_S1_S1_.exit.us77

_ZSt11nth_elementIPfEvT_S1_S1_.exit.us77:         ; preds = %_ZSt11nth_elementIPfEvT_S1_S1_.exit.us77.prol.loopexit, %_ZSt11nth_elementIPfEvT_S1_S1_.exit.us77
  %.04172.us76 = phi i64 [ %i.eu, %_ZSt11nth_elementIPfEvT_S1_S1_.exit.us77 ], [ %.04172.us76.unr, %_ZSt11nth_elementIPfEvT_S1_S1_.exit.us77.prol.loopexit ] ; 6 uses
  %i.ef = mul nsw i64 %.04172.us76, %1
  %gep79 = getelementptr [4 x i8], ptr %invariant.gep78, i64 %i.ef
  %i.eg = load float, ptr %gep79, align 4, !tbaa !56
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %.04172.us76
  store float %i.eg, ptr %i.eh, align 4, !tbaa !56
  %i.ei = add nuw nsw i64 %.04172.us76, 1         ; 2 uses
  %i.ej = mul nsw i64 %i.ei, %1
  %gep79.1 = getelementptr [4 x i8], ptr %invariant.gep78, i64 %i.ej
  %i.ek = load float, ptr %gep79.1, align 4, !tbaa !56
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.ei
  store float %i.ek, ptr %i.el, align 4, !tbaa !56
  %i.em = add nuw nsw i64 %.04172.us76, 2         ; 2 uses
  %i.en = mul nsw i64 %i.em, %1
  %gep79.2 = getelementptr [4 x i8], ptr %invariant.gep78, i64 %i.en
  %i.eo = load float, ptr %gep79.2, align 4, !tbaa !56
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.em
  store float %i.eo, ptr %i.ep, align 4, !tbaa !56
  %i.eq = add nuw nsw i64 %.04172.us76, 3         ; 2 uses
  %i.er = mul nsw i64 %i.eq, %1
  %gep79.3 = getelementptr [4 x i8], ptr %invariant.gep78, i64 %i.er
  %i.es = load float, ptr %gep79.3, align 4, !tbaa !56
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.eq
  store float %i.es, ptr %i.et, align 4, !tbaa !56
  %i.eu = add nuw nsw i64 %.04172.us76, 4         ; 2 uses
  %exitcond93.not.3 = icmp eq i64 %i.eu, %i.ds
  br i1 %exitcond93.not.3, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit, label %_ZSt11nth_elementIPfEvT_S1_S1_.exit.us77, !llvm.loop !80

bb.f:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ew = add nuw nsw i64 %.04371, 1              ; 2 uses
  %exitcond92.not = icmp eq i64 %i.ew, %1
  br i1 %exitcond92.not, label %.preheader, label %.preheader68, !llvm.loop !81

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.04270 = phi i64 [ %i.fm, %scalar.ph ], [ %.04270.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ex = getelementptr [4 x i8], ptr %i.an, i64 %.04270
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !56
  %i.ez = mul nuw nsw i64 %.04270, %1
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ez
  store float %i.ey, ptr %gep, align 4, !tbaa !56
  %i.fa = add nuw nsw i64 %.04270, 1              ; 2 uses
  %i.fb = getelementptr [4 x i8], ptr %i.an, i64 %i.fa
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !56
  %i.fd = mul nuw nsw i64 %i.fa, %1
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.fd
  store float %i.fc, ptr %gep.1, align 4, !tbaa !56
  %i.fe = add nuw nsw i64 %.04270, 2              ; 2 uses
  %i.ff = getelementptr [4 x i8], ptr %i.an, i64 %i.fe
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !56
  %i.fh = mul nuw nsw i64 %i.fe, %1
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.fh
  store float %i.fg, ptr %gep.2, align 4, !tbaa !56
  %i.fi = add nuw nsw i64 %.04270, 3              ; 2 uses
  %i.fj = getelementptr [4 x i8], ptr %i.an, i64 %i.fi
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !56
  %i.fl = mul nuw nsw i64 %i.fi, %1
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.fl
  store float %i.fk, ptr %gep.3, align 4, !tbaa !56
  %i.fm = add nuw nsw i64 %.04270, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.fm, %i.ae
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !82

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit.loopexit.unr-lcssa: ; preds = %_ZSt11nth_elementIPfEvT_S1_S1_.exit.us.us.us
  %lcmp.mod170.not = icmp eq i64 %xtraiter169, 0
  br i1 %lcmp.mod170.not, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit, label %_ZSt11nth_elementIPfEvT_S1_S1_.exit.us.us.us.epil.preheader

_ZSt11nth_elementIPfEvT_S1_S1_.exit.us.us.us.epil.preheader: ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit.loopexit.unr-lcssa, %.lr.ph.split.us.split.us.split.us
  %.04172.us.us.us.epil.init = phi i64 [ 0, %.lr.ph.split.us.split.us.split.us ], [ %i.bw, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod171 = trunc i32 %.pre to i1
  tail call void @llvm.assume(i1 %lcmp.mod171)
  %i.fn = mul nsw i64 %.04172.us.us.us.epil.init, %1
  %gep86.epil = getelementptr [4 x i8], ptr %invariant.gep85, i64 %i.fn
  %i.fo = getelementptr inbounds i8, ptr %gep86.epil, i64 -4
  %9 = load <2 x float>, ptr %i.fo, align 4, !tbaa !56
  %10 = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %9)
  %i.fp = fmul float %10, 5.000000e-01
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.04172.us.us.us.epil.init
  store float %i.fp, ptr %i.fq, align 4, !tbaa !56
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZSt11nth_elementIPfEvT_S1_S1_.exit, %_ZSt11nth_elementIPfEvT_S1_S1_.exit.us77.prol.loopexit, %_ZSt11nth_elementIPfEvT_S1_S1_.exit.us77, %_ZSt11nth_elementIPfEvT_S1_S1_.exit55.us, %_ZSt11nth_elementIPfEvT_S1_S1_.exit.us.us82, %_ZSt11nth_elementIPfEvT_S1_S1_.exit55.us.us, %_ZSt11nth_elementIPfEvT_S1_S1_.exit.us.us.us.epil.preheader, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit.loopexit.unr-lcssa, %middle.block132, %.preheader68.lr.ph, %.preheader
  tail call void @_ZdaPv(ptr noundef nonnull %i.ab) #17
  %.not.i52 = icmp eq ptr %i.u, null
  br i1 %.not.i52, label %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIA_KfEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i

_ZNKSt14default_deleteIA_KfEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i: ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.u) #17
  br label %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %_ZSt11nth_elementIPfEvT_S1_S1_.exit
  %.04172 = phi i64 [ %i.fy, %_ZSt11nth_elementIPfEvT_S1_S1_.exit ], [ 0, %.lr.ph.split ] ; 3 uses
  %i.fr = mul nsw i64 %.04172, %1
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.fr ; 3 uses
  %i.ft = getelementptr inbounds i8, ptr %i.fs, i64 %.idx67 ; 2 uses
  %i.fu = getelementptr inbounds i8, ptr %i.fs, i64 %.idx
  invoke void @_ZSt13__introselectIPflN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_T1_(ptr noundef nonnull %i.fs, ptr noundef nonnull %i.ft, ptr noundef nonnull %i.fu, i64 noundef %i.bf)
          to label %_ZSt11nth_elementIPfEvT_S1_S1_.exit unwind label %.split

_ZSt11nth_elementIPfEvT_S1_S1_.exit:              ; preds = %.lr.ph.split.split
  %i.fv = load float, ptr %i.ft, align 4, !tbaa !56
  %i.fw = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %.04172
  store float %i.fv, ptr %i.fx, align 4, !tbaa !56
  %i.fy = add nuw nsw i64 %.04172, 1              ; 2 uses
  %i.fz = load i32, ptr %i.e, align 8, !tbaa !54
  %i.ga = sext i32 %i.fz to i64
  %i.gb = icmp slt i64 %i.fy, %i.ga
  br i1 %i.gb, label %.lr.ph.split.split, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit, !llvm.loop !77

.split:                                           ; preds = %.lr.ph.split.split
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit58

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit58: ; preds = %.split74.us.split.us, %.split74.us.split, %.split, %.split.us.split.us, %.split.us.split
  %.pn = phi { ptr, i32 } [ %i.cy, %.split.us.split.us ], [ %i.gc, %.split ], [ %i.do, %.split.us.split ], [ %i.dp, %.split74.us.split ], [ %i.cl, %.split74.us.split.us ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.ab) #17
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit58, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit58 ], [ %i.ev, %bb.f ]
  %.not.i59 = icmp eq ptr %i.u, null
  br i1 %.not.i59, label %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit61, label %_ZNKSt14default_deleteIA_KfEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i60

_ZNKSt14default_deleteIA_KfEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i60: ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.u) #17
  br label %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit61

_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit61: ; preds = %bb.g, %_ZNKSt14default_deleteIA_KfEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i60
  resume { ptr, i32 } %.pn.pn

_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_KfEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit, %bb.a
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 1, ptr %i.gd, align 1, !tbaa !61
  ret void
}

declare void @_ZN5faiss5Index18train_with_queriesElPKflS2_(ptr noundef nonnull align 8 dereferenceable(36), i64 noundef, ptr noundef, i64 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5faiss5Index8train_exElPKvNS_11NumericTypeE(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator.5", align 1  ; 5 uses
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %1, ptr noundef %2)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 40) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss5Index8train_exElPKvNS_11NumericTypeE, ptr noundef nonnull @.str.17, i32 noundef 152)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #20
          to label %bb.i unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.h = load ptr, ptr %4, align 8, !tbaa !64     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !24
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br i1 %.0, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br i1 %.0, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn12 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #18
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g
  %.pn11 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn12, %bb.g ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn11

bb.i:                                             ; preds = %bb.e
  unreachable
}

declare void @_ZN5faiss14IndexFlatCodes3addElPKf(ptr noundef nonnull align 8 dereferenceable(128), i64 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5faiss5Index6add_exElPKvNS_11NumericTypeE(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator.5", align 1  ; 5 uses
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %1, ptr noundef %2)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 40) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss5Index6add_exElPKvNS_11NumericTypeE, ptr noundef nonnull @.str.17, i32 noundef 170)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #20
          to label %bb.i unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.h = load ptr, ptr %4, align 8, !tbaa !64     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !24
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br i1 %.0, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br i1 %.0, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn12 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #18
  br label %bb.h
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf:bb.a
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 2305843009213693951)
  %i.bz = select i1 %i.bx, i64 2305843009213693951, i64 %i.by ; 3 uses
  %i.ca = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.cb = sub i64 %i.ca, %i.br                    ; 4 uses
  %.not.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit
  %i.cc = shl nuw nsw i64 %i.bz, 2
  %i.cd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #19
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit
  %i.ce = phi ptr [ %i.cd, %bb.s ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 %i.cb ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 2       ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i.i.i.i.i75
  %i.ch = load float, ptr %3, align 4, !tbaa !56  ; 2 uses
  %i.ci = add nsw i64 %.idx.i.i.i.i.i75, -4       ; 2 uses
  %i.cj = lshr exact i64 %i.ci, 2
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check139 = icmp ult i64 %i.ci, 28
  br i1 %min.iters.check139, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph140

vector.ph140:                                     ; preds = %bb.t
  %n.vec141 = and i64 %i.ck, 9223372036854775800  ; 3 uses
  %i.cl = shl i64 %n.vec141, 2
  %i.cm = getelementptr i8, ptr %i.cf, i64 %i.cl
  %broadcast.splatinsert142 = insertelement <4 x float> poison, float %i.ch, i64 0
  %broadcast.splat143 = shufflevector <4 x float> %broadcast.splatinsert142, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph140
  %index145 = phi i64 [ 0, %vector.ph140 ], [ %index.next147, %vector.body144 ] ; 2 uses
  %i.cn = shl i64 %index145, 2
  %next.gep146 = getelementptr i8, ptr %i.cf, i64 %i.cn ; 2 uses
  %i.co = getelementptr i8, ptr %next.gep146, i64 16
  store <4 x float> %broadcast.splat143, ptr %next.gep146, align 4, !tbaa !56
  store <4 x float> %broadcast.splat143, ptr %i.co, align 4, !tbaa !56
  %index.next147 = add nuw i64 %index145, 8       ; 2 uses
  %i.cp = icmp eq i64 %index.next147, %n.vec141
  br i1 %i.cp, label %middle.block148, label %vector.body144, !llvm.loop !147

middle.block148:                                  ; preds = %vector.body144
  %cmp.n149 = icmp eq i64 %i.ck, %n.vec141
  br i1 %cmp.n149, label %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block148
  %.07.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cf, %bb.t ], [ %i.cm, %middle.block148 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.07.i.i.i.i.i.i.i77 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.07.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store float %i.ch, ptr %.07.i.i.i.i.i.i.i77, align 4, !tbaa !56
  %i.cq = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cq, %i.cg
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !148

_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block148
  %i.cr = icmp sgt i64 %i.cb, 4
  br i1 %i.cr, label %bb.u, label %bb.v, !prof !69

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ce, ptr align 4 %i.bq, i64 %i.cb, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.cs = icmp eq i64 %i.cb, 4
  br i1 %i.cs, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.ct = load float, ptr %i.bq, align 4, !tbaa !56
  store float %i.ct, ptr %i.ce, align 4, !tbaa !56
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %2 ; 3 uses
  %i.cv = sub i64 %i.f, %i.ca                     ; 4 uses
  %i.cw = icmp sgt i64 %i.cv, 4
  br i1 %i.cw, label %bb.x, label %bb.y, !prof !69

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cu, ptr align 4 %1, i64 %i.cv, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit
  %i.cx = icmp eq i64 %i.cv, 4
  br i1 %i.cx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cy = load float, ptr %1, align 4, !tbaa !56
  store float %i.cy, ptr %i.cu, align 4, !tbaa !56
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  %.not.i82 = icmp eq ptr %i.bq, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.dc) #17
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ce, ptr %0, align 8, !tbaa !16
  store ptr %i.cz, ptr %i.c, align 8, !tbaa !55
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.bz
  store ptr %i.dd, ptr %i.a, align 8, !tbaa !17
  br label %_ZSt4fillIPffEvT_S1_RKT0_.exit

_ZSt4fillIPffEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block122, %middle.block135, %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit, %bb.a
  ret void
}

declare void @_ZN5faiss13bitvecs2fvecsEPKhPfmm(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZNK5faiss15LinearTransform17reverse_transformElPKfPf(ptr noundef nonnull align 8 dereferenceable(73), i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !65
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.18) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #20
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !26

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #19 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !64
  store i64 %i.c, ptr %i.a, align 8, !tbaa !24
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1, !tbaa !24
  store i8 %i.j, ptr %i.i, align 1, !tbaa !24
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !66
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !24
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #16

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { builtin nounwind }
attributes #18 = { nounwind }
attributes #19 = { builtin allocsize(0) }
attributes #20 = { noreturn }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !57}
!1 = distinct !{!1, !57}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"vtable pointer", !6, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"p1 float", !13, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!16 = !{!15, !14, i64 0}
!17 = !{!15, !14, i64 16}
!18 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!19 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !18, i64 0}
!20 = !{!19, !18, i64 0}
!21 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !8, i64 8, !8, i64 12}
!22 = !{!21, !8, i64 8}
!23 = !{!21, !8, i64 12}
!24 = !{!7, !7, i64 0}
!25 = !{!8, !8, i64 0}
!26 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!27 = !{!"p1 omnipotent char", !13, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!29 = !{!28, !27, i64 0}
!30 = !{!28, !27, i64 16}
!31 = !{!"long", !7, i64 0}
!32 = !{!"bool", !7, i64 0}
!33 = !{!"_ZTSN5faiss10MetricTypeE", !7, i64 0}
!34 = !{!"float", !7, i64 0}
!35 = !{!"_ZTSN5faiss5IndexE", !8, i64 8, !31, i64 16, !32, i64 24, !32, i64 25, !33, i64 28, !34, i64 32}
!36 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !28, i64 0}
!37 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !36, i64 0}
!38 = !{!"_ZTSSt6vectorIhSaIhEE", !37, i64 0}
!39 = !{!"p1 _ZTSN5faiss21MaybeOwnedVectorOwnerE", !13, i64 0}
!40 = !{!"_ZTSSt12__shared_ptrIN5faiss21MaybeOwnedVectorOwnerELN9__gnu_cxx12_Lock_policyE2EE", !39, i64 0, !19, i64 8}
!41 = !{!"_ZTSSt10shared_ptrIN5faiss21MaybeOwnedVectorOwnerEE", !40, i64 0}
!42 = !{!"_ZTSN5faiss16MaybeOwnedVectorIhEE", !32, i64 0, !38, i64 8, !27, i64 32, !31, i64 40, !41, i64 48, !27, i64 64, !31, i64 72}
!43 = !{!"_ZTSN5faiss14IndexFlatCodesE", !35, i64 0, !31, i64 40, !42, i64 48}
!44 = !{!"_ZTSN5faiss15VectorTransformE", !8, i64 8, !8, i64 12, !32, i64 16}
!45 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !15, i64 0}
!46 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !45, i64 0}
!47 = !{!"_ZTSSt6vectorIfSaIfEE", !46, i64 0}
!48 = !{!"_ZTSN5faiss15LinearTransformE", !44, i64 0, !32, i64 17, !32, i64 18, !47, i64 24, !47, i64 48, !32, i64 72}
!49 = !{!"_ZTSN5faiss20RandomRotationMatrixE", !48, i64 0}
!50 = !{!"_ZTSN5faiss8IndexLSHE", !43, i64 0, !8, i64 128, !32, i64 132, !32, i64 133, !49, i64 136, !47, i64 216}
!51 = !{!50, !32, i64 133}
!52 = !{i8 0, i8 2}
!53 = !{}
!54 = !{!50, !8, i64 128}
!55 = !{!15, !14, i64 8}
!56 = !{!34, !34, i64 0}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!"llvm.loop.isvectorized", i32 1}
!59 = !{!"llvm.loop.unroll.runtime.disable"}
!60 = !{!"llvm.loop.unroll.disable"}
!61 = !{!35, !32, i64 25}
!62 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !27, i64 0}
!63 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !62, i64 0, !31, i64 8, !7, i64 16}
!64 = !{!63, !27, i64 0}
!65 = !{!62, !27, i64 0}
!66 = !{!63, !31, i64 8}
!67 = !{!50, !32, i64 132}
!68 = !{!35, !8, i64 8}
!69 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!70 = distinct !{ptr @_ZN5faiss14IndexFlatCodesD2Ev, null, null, null, null}
!71 = distinct !{!71, !"LVerDomain"}
!72 = distinct !{!72, !71}
!73 = distinct !{!73, !71}
!74 = distinct !{!74, !57, !58, !59}
!75 = distinct !{!75, !60}
!76 = distinct !{!76, !57, !58}
!77 = distinct !{!77, !57}
!78 = distinct !{!78, !57, !58, !59}
!79 = distinct !{!79, !60}
!80 = distinct !{!80, !57, !58}
!81 = distinct !{!81, !57}
!82 = distinct !{!82, !57, !58}
!83 = !{!72}
!84 = !{!73}
!85 = distinct !{!85, !57, !58, !59}
!86 = distinct !{!86, !57, !59, !58}
!87 = !{!43, !31, i64 40}
!88 = !{!"p1 long", !13, i64 0}
!89 = !{!"p1 int", !13, i64 0}
!90 = !{!"_ZTSN5faiss9HeapArrayINS_4CMaxIilEEEE", !31, i64 0, !31, i64 8, !88, i64 16, !89, i64 24}
!91 = !{!90, !31, i64 0}
!92 = !{!90, !31, i64 8}
!93 = !{!90, !88, i64 16}
!94 = !{!90, !89, i64 24}
!95 = !{!42, !27, i64 64}
!96 = !{!35, !31, i64 16}
!97 = distinct !{!97, !"LVerDomain"}
!98 = distinct !{!98, !97}
!99 = distinct !{!99, !97}
!100 = distinct !{!100, !57, !58, !59}
!101 = distinct !{!101, !60}
!102 = distinct !{!102, !57}
!103 = distinct !{!103, !57, !58}
!104 = distinct !{!104, !57}
!105 = !{!98}
!106 = !{!99}
!107 = distinct !{null, null, null, null}
!108 = distinct !{null}
!109 = distinct !{!109, !57, !58, !59}
!110 = distinct !{!110, !60}
!111 = distinct !{!111, !57}
!112 = distinct !{!112, !57, !58}
!113 = distinct !{!113, !"LVerDomain"}
!114 = distinct !{!114, !113}
!115 = distinct !{!115, !113}
!116 = distinct !{!116, !57, !58, !59}
!117 = distinct !{!117, !60}
!118 = distinct !{!118, !57}
!119 = distinct !{!119, !57, !58}
!120 = !{!114}
!121 = !{!115}
!122 = distinct !{!122, !57}
!123 = distinct !{!123, !57}
!124 = distinct !{!124, !57}
!125 = distinct !{!125, !57}
!126 = distinct !{!126, !57}
!127 = distinct !{!127, !57}
!128 = distinct !{!128, !57}
!129 = distinct !{!129, !57}
!130 = distinct !{!130, !"LVerDomain"}
!131 = distinct !{!131, !130}
!132 = distinct !{!132, !130}
!133 = distinct !{!133, !57, !58, !59}
!134 = distinct !{!134, !60}
!135 = distinct !{!135, !57, !58}
!136 = !{!44, !8, i64 12}
!137 = !{!48, !32, i64 17}
!138 = !{!14, !14, i64 0}
!139 = !{!131}
!140 = !{!132}
!141 = distinct !{!141, !57, !58, !59}
!142 = distinct !{!142, !57, !59, !58}
!143 = distinct !{!143, !57, !58, !59}
!144 = distinct !{!144, !57, !59, !58}
!145 = distinct !{!145, !57, !58, !59}
!146 = distinct !{!146, !57, !59, !58}
!147 = distinct !{!147, !57, !58, !59}
!148 = distinct !{!148, !57, !59, !58}
end_hunk_1
