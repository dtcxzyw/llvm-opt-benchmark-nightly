Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/PtexUtils?download=true
inline.NumInlined: 292
inline.NumDeleted: 159
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN4Ptex4v2_49PtexUtils5blendEPKvfPvbiNS0_8DataTypeEi:bb.a
  %i.kt = tail call float @llvm.fmuladd.f32(float %1, float %i.ks, float %i.kq)
  store float %i.kt, ptr %.0911.i71, align 4, !tbaa !16
  %i.ku = getelementptr inbounds nuw i8, ptr %.0911.i71, i64 4
  %.not.i72 = icmp eq ptr %i.kr, %i.kc
  br i1 %.not.i72, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_15blendIhEEvPKT_fPS4_ii.exit, label %.lr.ph.i69, !llvm.loop !186

bb.u:                                             ; preds = %bb.a
  %i.kv = mul nsw i32 %6, %4                      ; 2 uses
  %i.kw = sext i32 %i.kv to i64
  %.idx.i73 = shl nsw i64 %i.kw, 2
  %i.kx = getelementptr inbounds i8, ptr %0, i64 %.idx.i73
  %.not25.i74 = icmp eq i32 %i.kv, 0
  br i1 %.not25.i74, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_15blendIhEEvPKT_fPS4_ii.exit, label %.preheader.lr.ph.i75

.preheader.lr.ph.i75:                             ; preds = %bb.u
  %i.ky = icmp sgt i32 %6, 0
  %i.kz = shl nuw nsw i32 %6, 1
  %i.la = zext nneg i32 %i.kz to i64
  %i.lb = sub nsw i64 0, %i.la
  tail call void @llvm.assume(i1 %i.ky)
  %i.lc = add nsw i32 %4, -1
  %i.ld = mul nsw i32 %6, %i.lc
  %i.le = sext i32 %i.ld to i64
  %i.lf = getelementptr inbounds [4 x i8], ptr %2, i64 %i.le
  %i.lg = add nsw i32 %6, -1
  %i.lh = zext i32 %i.lg to i64
  %i.li = shl nuw nsw i64 %i.lh, 2
  %i.lj = add nuw nsw i64 %i.li, 4                ; 2 uses
  %i.lk = zext nneg i32 %6 to i64                 ; 2 uses
  %min.iters.check = icmp samesign ult i32 %6, 8
  %n.vec = and i64 %i.lk, 2147483640              ; 4 uses
  %i.ll = trunc nuw nsw i64 %n.vec to i32
  %i.lm = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %1, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.lk
  br label %.preheader.us.i76

.preheader.us.i76:                                ; preds = %._crit_edge.us.i83, %.preheader.lr.ph.i75
  %.01727.us.i77 = phi ptr [ %.lcssa153, %._crit_edge.us.i83 ], [ %0, %.preheader.lr.ph.i75 ] ; 6 uses
  %.01826.us.i78 = phi ptr [ %i.nb, %._crit_edge.us.i83 ], [ %i.lf, %.preheader.lr.ph.i75 ] ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.us.i76
  %i.ln = getelementptr i8, ptr %.01826.us.i78, i64 %i.lj
  %i.lo = getelementptr i8, ptr %.01727.us.i77, i64 %i.lj
  %bound0 = icmp ult ptr %.01826.us.i78, %i.lo
  %bound1 = icmp ult ptr %.01727.us.i77, %i.ln
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.lp = getelementptr i8, ptr %.01727.us.i77, i64 %i.lm ; 2 uses
  %i.lq = getelementptr i8, ptr %.01826.us.i78, i64 %i.lm ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.lr = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.01727.us.i77, i64 %i.lr ; 2 uses
  %next.gep155 = getelementptr i8, ptr %.01826.us.i78, i64 %i.lr ; 3 uses
  %i.ls = getelementptr i8, ptr %next.gep155, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %next.gep155, align 4, !tbaa !16, !alias.scope !204, !noalias !205
  %wide.load156 = load <4 x float>, ptr %i.ls, align 4, !tbaa !16, !alias.scope !204, !noalias !205
  %i.lt = getelementptr i8, ptr %next.gep, i64 16
  %wide.load157 = load <4 x float>, ptr %next.gep, align 4, !tbaa !16, !alias.scope !205
  %wide.load158 = load <4 x float>, ptr %i.lt, align 4, !tbaa !16, !alias.scope !205
  %i.lu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load157, <4 x float> %wide.load)
  %i.lv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load158, <4 x float> %wide.load156)
  store <4 x float> %i.lu, ptr %next.gep155, align 4, !tbaa !16, !alias.scope !204, !noalias !205
  store <4 x float> %i.lv, ptr %i.ls, align 4, !tbaa !16, !alias.scope !204, !noalias !205
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.lw = icmp eq i64 %index.next, %n.vec
  br i1 %i.lw, label %middle.block, label %vector.body, !llvm.loop !190

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.i83, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us.i76, %middle.block
  %.023.us.i79.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader.us.i76 ], [ %i.ll, %middle.block ] ; 4 uses
  %.122.us.i80.ph = phi ptr [ %.01727.us.i77, %vector.memcheck ], [ %.01727.us.i77, %.preheader.us.i76 ], [ %i.lp, %middle.block ] ; 2 uses
  %.11921.us.i81.ph = phi ptr [ %.01826.us.i78, %vector.memcheck ], [ %.01826.us.i78, %.preheader.us.i76 ], [ %i.lq, %middle.block ] ; 2 uses
  %i.lx = sub i32 %6, %.023.us.i79.ph
  %xtraiter = and i32 %i.lx, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.023.us.i79.prol = phi i32 [ %i.mc, %scalar.ph.prol ], [ %.023.us.i79.ph, %scalar.ph.preheader ]
  %.122.us.i80.prol = phi ptr [ %i.lz, %scalar.ph.prol ], [ %.122.us.i80.ph, %scalar.ph.preheader ] ; 2 uses
  %.11921.us.i81.prol = phi ptr [ %i.md, %scalar.ph.prol ], [ %.11921.us.i81.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ly = load float, ptr %.11921.us.i81.prol, align 4, !tbaa !16
  %i.lz = getelementptr inbounds nuw i8, ptr %.122.us.i80.prol, i64 4 ; 3 uses
  %i.ma = load float, ptr %.122.us.i80.prol, align 4, !tbaa !16
  %i.mb = tail call float @llvm.fmuladd.f32(float %1, float %i.ma, float %i.ly)
  store float %i.mb, ptr %.11921.us.i81.prol, align 4, !tbaa !16
  %i.mc = add nuw nsw i32 %.023.us.i79.prol, 1    ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.11921.us.i81.prol, i64 4 ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !191

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa337.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.lz, %scalar.ph.prol ]
  %.lcssa336.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.md, %scalar.ph.prol ]
  %.023.us.i79.unr = phi i32 [ %.023.us.i79.ph, %scalar.ph.preheader ], [ %i.mc, %scalar.ph.prol ]
  %.122.us.i80.unr = phi ptr [ %.122.us.i80.ph, %scalar.ph.preheader ], [ %i.lz, %scalar.ph.prol ]
  %.11921.us.i81.unr = phi ptr [ %.11921.us.i81.ph, %scalar.ph.preheader ], [ %i.md, %scalar.ph.prol ]
  %i.me = sub i32 %.023.us.i79.ph, %6
  %i.mf = icmp ugt i32 %i.me, -4
  br i1 %i.mf, label %._crit_edge.us.i83, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.023.us.i79 = phi i32 [ %i.mz, %scalar.ph ], [ %.023.us.i79.unr, %scalar.ph.prol.loopexit ]
  %.122.us.i80 = phi ptr [ %i.mw, %scalar.ph ], [ %.122.us.i80.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.11921.us.i81 = phi ptr [ %i.na, %scalar.ph ], [ %.11921.us.i81.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.mg = load float, ptr %.11921.us.i81, align 4, !tbaa !16
  %i.mh = getelementptr inbounds nuw i8, ptr %.122.us.i80, i64 4
  %i.mi = load float, ptr %.122.us.i80, align 4, !tbaa !16
  %i.mj = tail call float @llvm.fmuladd.f32(float %1, float %i.mi, float %i.mg)
  store float %i.mj, ptr %.11921.us.i81, align 4, !tbaa !16
  %i.mk = getelementptr inbounds nuw i8, ptr %.11921.us.i81, i64 4 ; 2 uses
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !16
  %i.mm = getelementptr inbounds nuw i8, ptr %.122.us.i80, i64 8
  %i.mn = load float, ptr %i.mh, align 4, !tbaa !16
  %i.mo = tail call float @llvm.fmuladd.f32(float %1, float %i.mn, float %i.ml)
  store float %i.mo, ptr %i.mk, align 4, !tbaa !16
  %i.mp = getelementptr inbounds nuw i8, ptr %.11921.us.i81, i64 8 ; 2 uses
  %i.mq = load float, ptr %i.mp, align 4, !tbaa !16
  %i.mr = getelementptr inbounds nuw i8, ptr %.122.us.i80, i64 12
  %i.ms = load float, ptr %i.mm, align 4, !tbaa !16
  %i.mt = tail call float @llvm.fmuladd.f32(float %1, float %i.ms, float %i.mq)
  store float %i.mt, ptr %i.mp, align 4, !tbaa !16
  %i.mu = getelementptr inbounds nuw i8, ptr %.11921.us.i81, i64 12 ; 2 uses
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !16
  %i.mw = getelementptr inbounds nuw i8, ptr %.122.us.i80, i64 16 ; 2 uses
  %i.mx = load float, ptr %i.mr, align 4, !tbaa !16
  %i.my = tail call float @llvm.fmuladd.f32(float %1, float %i.mx, float %i.mv)
  store float %i.my, ptr %i.mu, align 4, !tbaa !16
  %i.mz = add nuw nsw i32 %.023.us.i79, 4         ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.11921.us.i81, i64 16 ; 2 uses
  %exitcond.not.i82.3 = icmp eq i32 %i.mz, %6
  br i1 %exitcond.not.i82.3, label %._crit_edge.us.i83, label %scalar.ph, !llvm.loop !192

._crit_edge.us.i83:                               ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa153 = phi ptr [ %i.lp, %middle.block ], [ %.lcssa337.unr, %scalar.ph.prol.loopexit ], [ %i.mw, %scalar.ph ] ; 2 uses
  %.lcssa152 = phi ptr [ %i.lq, %middle.block ], [ %.lcssa336.unr, %scalar.ph.prol.loopexit ], [ %i.na, %scalar.ph ]
  %i.nb = getelementptr inbounds [4 x i8], ptr %.lcssa152, i64 %i.lb
  %.not.us.i84 = icmp eq ptr %.lcssa153, %i.kx
  br i1 %.not.us.i84, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_15blendIhEEvPKT_fPS4_ii.exit, label %.preheader.us.i76, !llvm.loop !193

_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_15blendIhEEvPKT_fPS4_ii.exit: ; preds = %._crit_edge.us.i83, %.lr.ph.i69, %._crit_edge.us.i65, %.lr.ph.i51, %._crit_edge.us.i47, %_ZN4Ptex4v2_48PtexHalfC2Ef.exit12.i, %._crit_edge.us.i, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block184, %middle.block236, %middle.block301, %vec.epilog.middle.block319, %bb.u, %bb.t, %bb.s, %bb.r, %bb.k, %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4Ptex4v2_49PtexUtils7averageEPKviiiPvNS0_8DataTypeEi(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #3 {
bb.a:
  switch i32 %5, label %bb.f [
    i32 0, label %bb.b
    i32 2, label %bb.c
    i32 1, label %bb.d
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_17averageIhEEvPKT_iiiPS4_i(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %6)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_17averageINS0_8PtexHalfEEEvPKT_iiiPS5_i(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %6)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call fastcc void @_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_17averageItEEvPKT_iiiPS4_i(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %6)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call fastcc void @_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_17averageIfEEvPKT_iiiPS4_i(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %6)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_17averageIhEEvPKT_iiiPS4_i(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, i32 noundef %5) unnamed_addr #6 {
bb.a:
  %i.a = sext i32 %5 to i64
  %i.b = shl nsw i64 %i.a, 2                      ; 2 uses
  %i.c = alloca i8, i64 %i.b, align 16            ; 9 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.c, i8 0, i64 %i.b, i1 false)
  %i.d = mul nsw i32 %3, %1                       ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  %.not42 = icmp eq i32 %i.d, 0
  br i1 %.not42, label %._crit_edge45, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = mul nsw i32 %5, %2                       ; 2 uses
  %i.h = sub nsw i32 %1, %i.g
  %i.i = sext i32 %i.g to i64
  %i.j = icmp sgt i32 %5, 0
  %i.k = sext i32 %i.h to i64
  br i1 %i.j, label %.lr.ph.split.us.preheader, label %._crit_edge45

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %.not3639.us = icmp eq i32 %2, 0
  %wide.trip.count = zext nneg i32 %5 to i64      ; 7 uses
  %i.l = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep = getelementptr i8, ptr %i.c, i64 %i.l
  %min.iters.check = icmp ult i32 %5, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.m = add nsw i64 %wide.trip.count, -1
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %._crit_edge.split.us.us
  %.03543.us = phi ptr [ %i.as, %._crit_edge.split.us.us ], [ %0, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %.03543.us, i64 %i.i ; 2 uses
  br i1 %.not3639.us, label %._crit_edge.split.us.us, label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.lr.ph.split.us, %..loopexit_crit_edge.us.us
  %.140.us.us = phi ptr [ %.lcssa, %..loopexit_crit_edge.us.us ], [ %.03543.us, %.lr.ph.split.us ] ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.us.us
  %i.o = getelementptr i8, ptr %.140.us.us, i64 %wide.trip.count
  %bound0 = icmp ult ptr %i.c, %i.o
  %bound1 = icmp ult ptr %.140.us.us, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.p = getelementptr i8, ptr %.140.us.us, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.140.us.us, i64 %index ; 2 uses
  %i.q = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !14, !alias.scope !215
  %wide.load62 = load <4 x i8>, ptr %i.q, align 1, !tbaa !14, !alias.scope !215
  %i.r = uitofp <4 x i8> %wide.load to <4 x float>
  %i.s = uitofp <4 x i8> %wide.load62 to <4 x float>
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %wide.load63 = load <4 x float>, ptr %i.t, align 16, !tbaa !16, !alias.scope !216, !noalias !215
  %wide.load64 = load <4 x float>, ptr %i.u, align 16, !tbaa !16, !alias.scope !216, !noalias !215
  %i.v = fadd <4 x float> %wide.load63, %i.r
  %i.w = fadd <4 x float> %wide.load64, %i.s
  store <4 x float> %i.v, ptr %i.t, align 16, !tbaa !16, !alias.scope !216, !noalias !215
  store <4 x float> %i.w, ptr %i.u, align 16, !tbaa !16, !alias.scope !216, !noalias !215
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !209

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.us.us ], [ %n.vec, %middle.block ] ; 4 uses
  %.237.us.us.ph = phi ptr [ %.140.us.us, %vector.memcheck ], [ %.140.us.us, %.preheader.us.us ], [ %i.p, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %.237.us.us.ph, i64 1 ; 2 uses
  %i.z = load i8, ptr %.237.us.us.ph, align 1, !tbaa !14
  %i.aa = uitofp i8 %i.z to float
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.ph ; 2 uses
  %i.ac = load float, ptr %i.ab, align 16, !tbaa !16
  %i.ad = fadd float %i.ac, %i.aa
  store float %i.ad, ptr %i.ab, align 16, !tbaa !16
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa79.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.237.us.us.unr = phi ptr [ %.237.us.us.ph, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %i.ae = icmp eq i64 %indvars.iv.ph, %i.m
  br i1 %i.ae, label %..loopexit_crit_edge.us.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.237.us.us = phi ptr [ %i.al, %scalar.ph ], [ %.237.us.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.237.us.us, i64 1
  %i.ag = load i8, ptr %.237.us.us, align 1, !tbaa !14
  %i.ah = uitofp i8 %i.ag to float
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !16
  %i.ak = fadd float %i.aj, %i.ah
  store float %i.ak, ptr %i.ai, align 4, !tbaa !16
  %i.al = getelementptr inbounds nuw i8, ptr %.237.us.us, i64 2 ; 2 uses
  %i.am = load i8, ptr %i.af, align 1, !tbaa !14
  %i.an = uitofp i8 %i.am to float
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 2 uses
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !16
  %i.ar = fadd float %i.aq, %i.an
  store float %i.ar, ptr %i.ap, align 4, !tbaa !16
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %..loopexit_crit_edge.us.us, label %scalar.ph, !llvm.loop !210

..loopexit_crit_edge.us.us:                       ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa = phi ptr [ %i.p, %middle.block ], [ %.lcssa79.unr, %scalar.ph.prol.loopexit ], [ %i.al, %scalar.ph ] ; 2 uses
  %.not36.us.us = icmp eq ptr %.lcssa, %i.n
  br i1 %.not36.us.us, label %._crit_edge.split.us.us, label %.preheader.us.us, !llvm.loop !211

._crit_edge.split.us.us:                          ; preds = %..loopexit_crit_edge.us.us, %.lr.ph.split.us
  %.1.lcssa.us = phi ptr [ %.03543.us, %.lr.ph.split.us ], [ %i.n, %..loopexit_crit_edge.us.us ]
  %i.as = getelementptr inbounds i8, ptr %.1.lcssa.us, i64 %i.k ; 2 uses
  %.not.us = icmp eq ptr %i.as, %i.f
  br i1 %.not.us, label %._crit_edge45, label %.lr.ph.split.us, !llvm.loop !212

._crit_edge45:                                    ; preds = %._crit_edge.split.us.us, %.lr.ph, %bb.a
  %i.at = mul nsw i32 %3, %2
  %i.au = sitofp i32 %i.at to float
  %i.av = fdiv nnan float 1.000000e+00, %i.au     ; 2 uses
  %i.aw = icmp sgt i32 %5, 0
  br i1 %i.aw, label %.lr.ph47.preheader, label %._crit_edge

.lr.ph47.preheader:                               ; preds = %._crit_edge45
  %wide.trip.count53 = zext nneg i32 %5 to i64    ; 3 uses
  %min.iters.check67 = icmp ult i32 %5, 8
  br i1 %min.iters.check67, label %.lr.ph47.preheader78, label %vector.ph68

vector.ph68:                                      ; preds = %.lr.ph47.preheader
  %n.vec69 = and i64 %wide.trip.count53, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.av, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body70

vector.body70:                                    ; preds = %vector.body70, %vector.ph68
  %index71 = phi i64 [ 0, %vector.ph68 ], [ %index.next74, %vector.body70 ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index71 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %wide.load72 = load <4 x float>, ptr %i.ax, align 16, !tbaa !16
  %wide.load73 = load <4 x float>, ptr %i.ay, align 16, !tbaa !16
  %i.az = fmul <4 x float> %broadcast.splat, %wide.load72
  %i.ba = fmul <4 x float> %broadcast.splat, %wide.load73
  %i.bb = fptoui <4 x float> %i.az to <4 x i8>
  %i.bc = fptoui <4 x float> %i.ba to <4 x i8>
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 %index71 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store <4 x i8> %i.bb, ptr %i.bd, align 1, !tbaa !14
  store <4 x i8> %i.bc, ptr %i.be, align 1, !tbaa !14
  %index.next74 = add nuw i64 %index71, 8         ; 2 uses
  %i.bf = icmp eq i64 %index.next74, %n.vec69
  br i1 %i.bf, label %middle.block75, label %vector.body70, !llvm.loop !213

middle.block75:                                   ; preds = %vector.body70
  %cmp.n76 = icmp eq i64 %n.vec69, %wide.trip.count53
  br i1 %cmp.n76, label %._crit_edge, label %.lr.ph47.preheader78

.lr.ph47.preheader78:                             ; preds = %.lr.ph47.preheader, %middle.block75
  %indvars.iv50.ph = phi i64 [ 0, %.lr.ph47.preheader ], [ %n.vec69, %middle.block75 ]
  br label %.lr.ph47

._crit_edge:                                      ; preds = %.lr.ph47, %middle.block75, %._crit_edge45
  ret void

.lr.ph47:                                         ; preds = %.lr.ph47.preheader78, %.lr.ph47
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %.lr.ph47 ], [ %indvars.iv50.ph, %.lr.ph47.preheader78 ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv50
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !16
  %i.bi = fmul float %i.av, %i.bh
  %i.bj = fptoui float %i.bi to i8
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv50
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !14
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %exitcond54.not = icmp eq i64 %indvars.iv.next51, %wide.trip.count53
  br i1 %exitcond54.not, label %._crit_edge, label %.lr.ph47, !llvm.loop !214
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_17averageINS0_8PtexHalfEEEvPKT_iiiPS5_i(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, i32 noundef %5) unnamed_addr #7 {
bb.a:
  %i.a = sext i32 %5 to i64
  %i.b = shl nsw i64 %i.a, 2                      ; 2 uses
  %i.c = alloca i8, i64 %i.b, align 16            ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.c, i8 0, i64 %i.b, i1 false)
  %i.d = sdiv i32 %1, 2                           ; 2 uses
  %i.e = mul nsw i32 %3, %i.d                     ; 2 uses
  %i.f = sext i32 %i.e to i64
  %.idx = shl nsw i64 %i.f, 1
  %i.g = getelementptr inbounds i8, ptr %0, i64 %.idx
  %.not42 = icmp eq i32 %i.e, 0
  br i1 %.not42, label %._crit_edge45, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = mul nsw i32 %5, %2                       ; 2 uses
  %i.i = sub nsw i32 %i.d, %i.h
  %i.j = icmp sgt i32 %5, 0
  %i.k = sext i32 %i.i to i64
  br i1 %i.j, label %.lr.ph.split.us.preheader, label %._crit_edge45

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.l = sext i32 %i.h to i64
  %.idx49 = shl nsw i64 %i.l, 1
  %.not3639.us = icmp eq i32 %2, 0
  %wide.trip.count = zext nneg i32 %5 to i64
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %._crit_edge.split.us.us
  %.03543.us = phi ptr [ %i.v, %._crit_edge.split.us.us ], [ %0, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %.03543.us, i64 %.idx49 ; 2 uses
  br i1 %.not3639.us, label %._crit_edge.split.us.us, label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.lr.ph.split.us, %.preheader.us.us.backedge
  %indvars.iv = phi i64 [ %indvars.iv.be, %.preheader.us.us.backedge ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.237.us.us = phi ptr [ %i.n, %.preheader.us.us.backedge ], [ %.03543.us, %.lr.ph.split.us ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.237.us.us, i64 2 ; 2 uses
  %i.o = load i16, ptr %.237.us.us, align 2, !tbaa !23
  %i.p = zext i16 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr @_ZN4Ptex4v2_48PtexHalf8h2fTableE, i64 %i.p
  %i.r = load float, ptr %i.q, align 4, !tbaa !24
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !16
  %i.u = fadd float %i.r, %i.t
  store float %i.u, ptr %i.s, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge.us.us, label %.preheader.us.us.backedge

.preheader.us.us.backedge:                        ; preds = %.preheader.us.us, %..loopexit_crit_edge.us.us
  %indvars.iv.be = phi i64 [ %indvars.iv.next, %.preheader.us.us ], [ 0, %..loopexit_crit_edge.us.us ]
  br label %.preheader.us.us, !llvm.loop !217

..loopexit_crit_edge.us.us:                       ; preds = %.preheader.us.us
  %.not36.us.us = icmp eq ptr %i.n, %i.m
  br i1 %.not36.us.us, label %._crit_edge.split.us.us, label %.preheader.us.us.backedge

._crit_edge.split.us.us:                          ; preds = %..loopexit_crit_edge.us.us, %.lr.ph.split.us
  %.1.lcssa.us = phi ptr [ %.03543.us, %.lr.ph.split.us ], [ %i.m, %..loopexit_crit_edge.us.us ]
  %i.v = getelementptr inbounds [2 x i8], ptr %.1.lcssa.us, i64 %i.k ; 2 uses
  %.not.us = icmp eq ptr %i.v, %i.g
  br i1 %.not.us, label %._crit_edge45, label %.lr.ph.split.us, !llvm.loop !218

._crit_edge45:                                    ; preds = %._crit_edge.split.us.us, %.lr.ph, %bb.a
  %i.w = mul nsw i32 %3, %2
  %i.x = sitofp i32 %i.w to float
  %i.y = fdiv nnan float 1.000000e+00, %i.x
  %i.z = icmp sgt i32 %5, 0
  br i1 %i.z, label %.lr.ph47.preheader, label %._crit_edge

.lr.ph47.preheader:                               ; preds = %._crit_edge45
  %wide.trip.count55 = zext nneg i32 %5 to i64
  br label %.lr.ph47

._crit_edge:                                      ; preds = %_ZN4Ptex4v2_48PtexHalfC2Ef.exit, %._crit_edge45
  ret void

.lr.ph47:                                         ; preds = %.lr.ph47.preheader, %_ZN4Ptex4v2_48PtexHalfC2Ef.exit
  %indvars.iv52 = phi i64 [ 0, %.lr.ph47.preheader ], [ %indvars.iv.next53, %_ZN4Ptex4v2_48PtexHalfC2Ef.exit ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv52
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !16
  %i.ac = fmul float %i.y, %i.ab                  ; 2 uses
  %i.ad = fcmp oeq float %i.ac, 0.000000e+00
  br i1 %i.ad, label %_ZN4Ptex4v2_48PtexHalfC2Ef.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph47
  %i.ae = bitcast float %i.ac to i32              ; 3 uses
  %i.af = lshr i32 %i.ae, 23
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr @_ZN4Ptex4v2_48PtexHalf8f2hTableE, i64 %i.ag
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !21 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ai, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = and i32 %i.ae, 8384512
  %i.ak = add nuw nsw i32 %i.aj, 4096
  %i.al = lshr i32 %i.ak, 13
  %i.am = trunc nuw nsw i32 %i.al to i16
  %i.an = add i16 %i.ai, %i.am
  br label %_ZN4Ptex4v2_48PtexHalfC2Ef.exit

bb.d:                                             ; preds = %bb.b
  %i.ao = tail call noundef zeroext i16 @_ZN4Ptex4v2_48PtexHalf16fromFloat_exceptEj(i32 noundef %i.ae)
  br label %_ZN4Ptex4v2_48PtexHalfC2Ef.exit

_ZN4Ptex4v2_48PtexHalfC2Ef.exit:                  ; preds = %.lr.ph47, %bb.c, %bb.d
  %.1.i.i = phi i16 [ 0, %.lr.ph47 ], [ %i.an, %bb.c ], [ %i.ao, %bb.d ]
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv52
  store i16 %.1.i.i, ptr %i.ap, align 2, !tbaa !21
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %exitcond56.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count55
  br i1 %exitcond56.not, label %._crit_edge, label %.lr.ph47, !llvm.loop !219
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_17averageItEEvPKT_iiiPS4_i(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, i32 noundef %5) unnamed_addr #6 {
bb.a:
  %i.a = sext i32 %5 to i64
  %i.b = shl nsw i64 %i.a, 2                      ; 2 uses
  %i.c = alloca i8, i64 %i.b, align 16            ; 5 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.c, i8 0, i64 %i.b, i1 false)
  %i.d = sdiv i32 %1, 2                           ; 2 uses
  %i.e = mul nsw i32 %3, %i.d                     ; 2 uses
  %i.f = sext i32 %i.e to i64
  %.idx = shl nsw i64 %i.f, 1
  %i.g = getelementptr inbounds i8, ptr %0, i64 %.idx
  %.not42 = icmp eq i32 %i.e, 0
  br i1 %.not42, label %._crit_edge45, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = mul nsw i32 %5, %2                       ; 2 uses
  %i.i = sub nsw i32 %i.d, %i.h
  %i.j = icmp sgt i32 %5, 0
  %i.k = sext i32 %i.i to i64
  br i1 %i.j, label %.lr.ph.split.us.preheader, label %._crit_edge45

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.l = sext i32 %i.h to i64
  %.idx49 = shl nsw i64 %i.l, 1
  %.not3639.us = icmp eq i32 %2, 0
  %wide.trip.count = zext nneg i32 %5 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %5, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 4 uses
  %i.m = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %._crit_edge.split.us.us
  %.03543.us = phi ptr [ %i.ae, %._crit_edge.split.us.us ], [ %0, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %.03543.us, i64 %.idx49 ; 2 uses
  br i1 %.not3639.us, label %._crit_edge.split.us.us, label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.lr.ph.split.us, %..loopexit_crit_edge.us.us
  %.140.us.us = phi ptr [ %.lcssa, %..loopexit_crit_edge.us.us ], [ %.03543.us, %.lr.ph.split.us ] ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.us
  %i.o = getelementptr i8, ptr %.140.us.us, i64 %i.m ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.p = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.140.us.us, i64 %i.p ; 2 uses
  %i.q = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 2, !tbaa !21
  %wide.load63 = load <4 x i16>, ptr %i.q, align 2, !tbaa !21
  %i.r = uitofp <4 x i16> %wide.load to <4 x float>
  %i.s = uitofp <4 x i16> %wide.load63 to <4 x float>
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %wide.load64 = load <4 x float>, ptr %i.t, align 16, !tbaa !16
  %wide.load65 = load <4 x float>, ptr %i.u, align 16, !tbaa !16
  %i.v = fadd <4 x float> %wide.load64, %i.r
  %i.w = fadd <4 x float> %wide.load65, %i.s
  store <4 x float> %i.v, ptr %i.t, align 16, !tbaa !16
  store <4 x float> %i.w, ptr %i.u, align 16, !tbaa !16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !220

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us.us ], [ %n.vec, %middle.block ]
  %.237.us.us.ph = phi ptr [ %.140.us.us, %.preheader.us.us ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.237.us.us = phi ptr [ %i.y, %scalar.ph ], [ %.237.us.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.237.us.us, i64 2 ; 2 uses
  %i.z = load i16, ptr %.237.us.us, align 2, !tbaa !21
  %i.aa = uitofp i16 %i.z to float
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !16
  %i.ad = fadd float %i.ac, %i.aa
  store float %i.ad, ptr %i.ab, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge.us.us, label %scalar.ph, !llvm.loop !221

..loopexit_crit_edge.us.us:                       ; preds = %scalar.ph, %middle.block
  %.lcssa = phi ptr [ %i.o, %middle.block ], [ %i.y, %scalar.ph ] ; 2 uses
  %.not36.us.us = icmp eq ptr %.lcssa, %i.n
  br i1 %.not36.us.us, label %._crit_edge.split.us.us, label %.preheader.us.us, !llvm.loop !222

._crit_edge.split.us.us:                          ; preds = %..loopexit_crit_edge.us.us, %.lr.ph.split.us
  %.1.lcssa.us = phi ptr [ %.03543.us, %.lr.ph.split.us ], [ %i.n, %..loopexit_crit_edge.us.us ]
  %i.ae = getelementptr inbounds [2 x i8], ptr %.1.lcssa.us, i64 %i.k ; 2 uses
  %.not.us = icmp eq ptr %i.ae, %i.g
  br i1 %.not.us, label %._crit_edge45, label %.lr.ph.split.us, !llvm.loop !223

._crit_edge45:                                    ; preds = %._crit_edge.split.us.us, %.lr.ph, %bb.a
  %i.af = mul nsw i32 %3, %2
  %i.ag = sitofp i32 %i.af to float
  %i.ah = fdiv nnan float 1.000000e+00, %i.ag     ; 2 uses
  %i.ai = icmp sgt i32 %5, 0
  br i1 %i.ai, label %.lr.ph47.preheader, label %._crit_edge

.lr.ph47.preheader:                               ; preds = %._crit_edge45
  %wide.trip.count55 = zext nneg i32 %5 to i64    ; 3 uses
  %min.iters.check68 = icmp ult i32 %5, 8
  br i1 %min.iters.check68, label %.lr.ph47.preheader79, label %vector.ph69

vector.ph69:                                      ; preds = %.lr.ph47.preheader
  %n.vec70 = and i64 %wide.trip.count55, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ah, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %vector.ph69
  %index72 = phi i64 [ 0, %vector.ph69 ], [ %index.next75, %vector.body71 ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index72 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load73 = load <4 x float>, ptr %i.aj, align 16, !tbaa !16
  %wide.load74 = load <4 x float>, ptr %i.ak, align 16, !tbaa !16
  %i.al = fmul <4 x float> %broadcast.splat, %wide.load73
  %i.am = fmul <4 x float> %broadcast.splat, %wide.load74
  %i.an = fptoui <4 x float> %i.al to <4 x i16>
  %i.ao = fptoui <4 x float> %i.am to <4 x i16>
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %index72 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store <4 x i16> %i.an, ptr %i.ap, align 2, !tbaa !21
  store <4 x i16> %i.ao, ptr %i.aq, align 2, !tbaa !21
  %index.next75 = add nuw i64 %index72, 8         ; 2 uses
  %i.ar = icmp eq i64 %index.next75, %n.vec70
  br i1 %i.ar, label %middle.block76, label %vector.body71, !llvm.loop !224

middle.block76:                                   ; preds = %vector.body71
  %cmp.n77 = icmp eq i64 %n.vec70, %wide.trip.count55
  br i1 %cmp.n77, label %._crit_edge, label %.lr.ph47.preheader79

.lr.ph47.preheader79:                             ; preds = %.lr.ph47.preheader, %middle.block76
  %indvars.iv52.ph = phi i64 [ 0, %.lr.ph47.preheader ], [ %n.vec70, %middle.block76 ]
  br label %.lr.ph47

._crit_edge:                                      ; preds = %.lr.ph47, %middle.block76, %._crit_edge45
  ret void

.lr.ph47:                                         ; preds = %.lr.ph47.preheader79, %.lr.ph47
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %.lr.ph47 ], [ %indvars.iv52.ph, %.lr.ph47.preheader79 ] ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv52
  %i.at = load float, ptr %i.as, align 4, !tbaa !16
  %i.au = fmul float %i.ah, %i.at
  %i.av = fptoui float %i.au to i16
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv52
  store i16 %i.av, ptr %i.aw, align 2, !tbaa !21
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %exitcond56.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count55
  br i1 %exitcond56.not, label %._crit_edge, label %.lr.ph47, !llvm.loop !225
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_17averageIfEEvPKT_iiiPS4_i(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, i32 noundef %5) unnamed_addr #6 {
bb.a:
  %i.a = sext i32 %5 to i64
  %i.b = shl nsw i64 %i.a, 2                      ; 2 uses
  %i.c = alloca i8, i64 %i.b, align 16            ; 11 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.c, i8 0, i64 %i.b, i1 false)
  %i.d = sdiv i32 %1, 4                           ; 2 uses
  %i.e = mul nsw i32 %3, %i.d                     ; 2 uses
  %i.f = sext i32 %i.e to i64
  %.idx = shl nsw i64 %i.f, 2
  %i.g = getelementptr inbounds i8, ptr %0, i64 %.idx
  %.not42 = icmp eq i32 %i.e, 0
  br i1 %.not42, label %._crit_edge45, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = mul nsw i32 %5, %2                       ; 2 uses
  %i.i = sub nsw i32 %i.d, %i.h
  %i.j = icmp sgt i32 %5, 0
  %i.k = sext i32 %i.i to i64
  br i1 %i.j, label %.lr.ph.split.us.preheader, label %._crit_edge45

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.l = sext i32 %i.h to i64
  %.idx49 = shl nsw i64 %i.l, 2
  %.not3639.us = icmp eq i32 %2, 0
  %wide.trip.count = zext nneg i32 %5 to i64      ; 6 uses
  %i.m = shl nuw nsw i64 %wide.trip.count, 2      ; 2 uses
  %scevgep = getelementptr i8, ptr %i.c, i64 %i.m
  %min.iters.check = icmp ult i32 %5, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 4 uses
  %i.n = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %._crit_edge.split.us.us
  %.03543.us = phi ptr [ %i.bc, %._crit_edge.split.us.us ], [ %0, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %.03543.us, i64 %.idx49 ; 2 uses
  br i1 %.not3639.us, label %._crit_edge.split.us.us, label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.lr.ph.split.us, %..loopexit_crit_edge.us.us
  %.140.us.us = phi ptr [ %.lcssa, %..loopexit_crit_edge.us.us ], [ %.03543.us, %.lr.ph.split.us ] ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.us.us
  %i.p = getelementptr i8, ptr %.140.us.us, i64 %i.m
  %bound0 = icmp ult ptr %i.c, %i.p
  %bound1 = icmp ult ptr %.140.us.us, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.q = getelementptr i8, ptr %.140.us.us, i64 %i.n ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.140.us.us, i64 %i.r ; 2 uses
  %i.s = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !16, !alias.scope !236
  %wide.load64 = load <4 x float>, ptr %i.s, align 4, !tbaa !16, !alias.scope !236
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %wide.load65 = load <4 x float>, ptr %i.t, align 16, !tbaa !16, !alias.scope !237, !noalias !236
  %wide.load66 = load <4 x float>, ptr %i.u, align 16, !tbaa !16, !alias.scope !237, !noalias !236
  %i.v = fadd <4 x float> %wide.load, %wide.load65
  %i.w = fadd <4 x float> %wide.load64, %wide.load66
  store <4 x float> %i.v, ptr %i.t, align 16, !tbaa !16, !alias.scope !237, !noalias !236
  store <4 x float> %i.w, ptr %i.u, align 16, !tbaa !16, !alias.scope !237, !noalias !236
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !229

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.us.us ], [ %n.vec, %middle.block ] ; 3 uses
  %.237.us.us.ph = phi ptr [ %.140.us.us, %vector.memcheck ], [ %.140.us.us, %.preheader.us.us ], [ %i.q, %middle.block ] ; 2 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.237.us.us.prol = phi ptr [ %i.y, %scalar.ph.prol ], [ %.237.us.us.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.y = getelementptr inbounds nuw i8, ptr %.237.us.us.prol, i64 4 ; 3 uses
  %i.z = load float, ptr %.237.us.us.prol, align 4, !tbaa !16
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.prol ; 2 uses
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !16
  %i.ac = fadd float %i.z, %i.ab
  store float %i.ac, ptr %i.aa, align 4, !tbaa !16
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !230

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa81.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.237.us.us.unr = phi ptr [ %.237.us.us.ph, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %i.ad = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ae = icmp ugt i64 %i.ad, -4
  br i1 %i.ae, label %..loopexit_crit_edge.us.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.237.us.us = phi ptr [ %i.aw, %scalar.ph ], [ %.237.us.us.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.237.us.us, i64 4
  %i.ag = load float, ptr %.237.us.us, align 4, !tbaa !16
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !16
  %i.aj = fadd float %i.ag, %i.ai
  store float %i.aj, ptr %i.ah, align 4, !tbaa !16
  %i.ak = getelementptr inbounds nuw i8, ptr %.237.us.us, i64 8
  %i.al = load float, ptr %i.af, align 4, !tbaa !16
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 2 uses
  %i.ao = load float, ptr %i.an, align 4, !tbaa !16
  %i.ap = fadd float %i.al, %i.ao
  store float %i.ap, ptr %i.an, align 4, !tbaa !16
  %i.aq = getelementptr inbounds nuw i8, ptr %.237.us.us, i64 12
  %i.ar = load float, ptr %i.ak, align 4, !tbaa !16
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !16
  %i.av = fadd float %i.ar, %i.au
  store float %i.av, ptr %i.at, align 4, !tbaa !16
  %i.aw = getelementptr inbounds nuw i8, ptr %.237.us.us, i64 16 ; 2 uses
  %i.ax = load float, ptr %i.aq, align 4, !tbaa !16
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 12 ; 2 uses
  %i.ba = load float, ptr %i.az, align 4, !tbaa !16
  %i.bb = fadd float %i.ax, %i.ba
  store float %i.bb, ptr %i.az, align 4, !tbaa !16
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %..loopexit_crit_edge.us.us, label %scalar.ph, !llvm.loop !231

..loopexit_crit_edge.us.us:                       ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa = phi ptr [ %i.q, %middle.block ], [ %.lcssa81.unr, %scalar.ph.prol.loopexit ], [ %i.aw, %scalar.ph ] ; 2 uses
  %.not36.us.us = icmp eq ptr %.lcssa, %i.o
  br i1 %.not36.us.us, label %._crit_edge.split.us.us, label %.preheader.us.us, !llvm.loop !232

._crit_edge.split.us.us:                          ; preds = %..loopexit_crit_edge.us.us, %.lr.ph.split.us
  %.1.lcssa.us = phi ptr [ %.03543.us, %.lr.ph.split.us ], [ %i.o, %..loopexit_crit_edge.us.us ]
  %i.bc = getelementptr inbounds [4 x i8], ptr %.1.lcssa.us, i64 %i.k ; 2 uses
  %.not.us = icmp eq ptr %i.bc, %i.g
  br i1 %.not.us, label %._crit_edge45, label %.lr.ph.split.us, !llvm.loop !233

._crit_edge45:                                    ; preds = %._crit_edge.split.us.us, %.lr.ph, %bb.a
  %i.bd = mul nsw i32 %3, %2
  %i.be = sitofp i32 %i.bd to float
  %i.bf = fdiv nnan float 1.000000e+00, %i.be     ; 2 uses
  %i.bg = icmp sgt i32 %5, 0
  br i1 %i.bg, label %.lr.ph47.preheader, label %._crit_edge

.lr.ph47.preheader:                               ; preds = %._crit_edge45
  %wide.trip.count55 = zext nneg i32 %5 to i64    ; 3 uses
  %min.iters.check69 = icmp ult i32 %5, 8
  br i1 %min.iters.check69, label %.lr.ph47.preheader80, label %vector.ph70

vector.ph70:                                      ; preds = %.lr.ph47.preheader
  %n.vec71 = and i64 %wide.trip.count55, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bf, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body72

vector.body72:                                    ; preds = %vector.body72, %vector.ph70
  %index73 = phi i64 [ 0, %vector.ph70 ], [ %index.next76, %vector.body72 ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index73 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %wide.load74 = load <4 x float>, ptr %i.bh, align 16, !tbaa !16
  %wide.load75 = load <4 x float>, ptr %i.bi, align 16, !tbaa !16
  %i.bj = fmul <4 x float> %broadcast.splat, %wide.load74
  %i.bk = fmul <4 x float> %broadcast.splat, %wide.load75
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index73 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store <4 x float> %i.bj, ptr %i.bl, align 4, !tbaa !16
  store <4 x float> %i.bk, ptr %i.bm, align 4, !tbaa !16
  %index.next76 = add nuw i64 %index73, 8         ; 2 uses
  %i.bn = icmp eq i64 %index.next76, %n.vec71
  br i1 %i.bn, label %middle.block77, label %vector.body72, !llvm.loop !234

middle.block77:                                   ; preds = %vector.body72
  %cmp.n78 = icmp eq i64 %n.vec71, %wide.trip.count55
  br i1 %cmp.n78, label %._crit_edge, label %.lr.ph47.preheader80

.lr.ph47.preheader80:                             ; preds = %.lr.ph47.preheader, %middle.block77
  %indvars.iv52.ph = phi i64 [ 0, %.lr.ph47.preheader ], [ %n.vec71, %middle.block77 ]
  br label %.lr.ph47

._crit_edge:                                      ; preds = %.lr.ph47, %middle.block77, %._crit_edge45
  ret void

.lr.ph47:                                         ; preds = %.lr.ph47.preheader80, %.lr.ph47
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %.lr.ph47 ], [ %indvars.iv52.ph, %.lr.ph47.preheader80 ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv52
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !16
  %i.bq = fmul float %i.bf, %i.bp
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv52
  store float %i.bq, ptr %i.br, align 4, !tbaa !16
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %exitcond56.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count55
  br i1 %exitcond56.not, label %._crit_edge, label %.lr.ph47, !llvm.loop !235
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4Ptex4v2_49PtexUtils9multalphaEPviNS0_8DataTypeEii(ptr nofree noundef captures(address) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr @_ZZN4Ptex4v2_411OneValueInvENS0_8DataTypeEE3one, i64 %i.a
  %i.c = load float, ptr %i.b, align 4, !tbaa !16 ; 4 uses
  switch i32 %2, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_19multalphaIhEEvPT_iiif.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %4, 0                        ; 3 uses
  %i.e = add nsw i32 %3, -1
  %.024.idx.i = zext i1 %i.d to i64
  %.024.i = getelementptr inbounds nuw i8, ptr %0, i64 %.024.idx.i ; 2 uses
  %narrow.i = select i1 %i.d, i32 -1, i32 %4
  %.023.i = sext i32 %narrow.i to i64
  %.022.i = select i1 %i.d, i32 %i.e, i32 %4      ; 4 uses
  %i.f = mul nsw i32 %3, %1                       ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds i8, ptr %.024.i, i64 %i.g
  %.not27.i = icmp eq i32 %i.f, 0
  br i1 %.not27.i, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_19multalphaIhEEvPT_iiif.exit, label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %bb.b
  %i.i = icmp sgt i32 %.022.i, 0
  %i.j = sext i32 %3 to i64
  br i1 %i.i, label %.lr.ph.us.preheader.i, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_19multalphaIhEEvPT_iiif.exit

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph30.i
  %wide.trip.count.i = zext nneg i32 %.022.i to i64 ; 6 uses
  %min.iters.check103 = icmp ult i32 %.022.i, 4
  %min.iters.check104 = icmp ult i32 %.022.i, 16
  %i.k = and i64 %wide.trip.count.i, 12
  %n.vec106 = and i64 %wide.trip.count.i, 2147483632 ; 4 uses
  %cmp.n114 = icmp eq i64 %n.vec106, %wide.trip.count.i
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  %n.vec115 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n121 = icmp eq i64 %n.vec115, %wide.trip.count.i
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %.128.us.i = phi ptr [ %i.ae, %._crit_edge.us.i ], [ %.024.i, %.lr.ph.us.preheader.i ] ; 5 uses
  %i.l = getelementptr inbounds i8, ptr %.128.us.i, i64 %.023.i
  %i.m = load i8, ptr %i.l, align 1, !tbaa !14
  %i.n = uitofp i8 %i.m to float
  %i.o = fmul float %i.c, %i.n                    ; 3 uses
  br i1 %min.iters.check103, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check104, label %vec.epilog.ph, label %vector.ph105

vector.ph105:                                     ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert107 = insertelement <16 x float> poison, float %i.o, i64 0
  %broadcast.splat108 = shufflevector <16 x float> %broadcast.splatinsert107, <16 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body109

vector.body109:                                   ; preds = %vector.ph105, %vector.body109
  %index110 = phi i64 [ 0, %vector.ph105 ], [ %index.next112, %vector.body109 ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.128.us.i, i64 %index110 ; 2 uses
  %wide.load111 = load <16 x i8>, ptr %i.p, align 1, !tbaa !14
  %i.q = uitofp <16 x i8> %wide.load111 to <16 x float>
  %i.r = fmul <16 x float> %broadcast.splat108, %i.q
  %i.s = fptoui <16 x float> %i.r to <16 x i8>
  store <16 x i8> %i.s, ptr %i.p, align 1, !tbaa !14
  %index.next112 = add nuw i64 %index110, 16      ; 2 uses
  %i.t = icmp eq i64 %index.next112, %n.vec106
  br i1 %i.t, label %middle.block113, label %vector.body109, !llvm.loop !238

middle.block113:                                  ; preds = %vector.body109
  br i1 %cmp.n114, label %._crit_edge.us.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block113
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !26

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec106, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert116 = insertelement <4 x float> poison, float %i.o, i64 0
  %broadcast.splat117 = shufflevector <4 x float> %broadcast.splatinsert116, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index118 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next120, %vec.epilog.vector.body ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.128.us.i, i64 %index118 ; 2 uses
  %wide.load119 = load <4 x i8>, ptr %i.u, align 1, !tbaa !14
  %i.v = uitofp <4 x i8> %wide.load119 to <4 x float>
  %i.w = fmul <4 x float> %broadcast.splat117, %i.v
  %i.x = fptoui <4 x float> %i.w to <4 x i8>
  store <4 x i8> %i.x, ptr %i.u, align 1, !tbaa !14
  %index.next120 = add nuw i64 %index118, 4       ; 2 uses
  %i.y = icmp eq i64 %index.next120, %n.vec115
  br i1 %i.y, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !239

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n121, label %._crit_edge.us.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec106, %vec.epilog.iter.check ], [ %n.vec115, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.128.us.i, i64 %indvars.iv.i ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !14
  %i.ab = uitofp i8 %i.aa to float
  %i.ac = fmul float %i.o, %i.ab
  %i.ad = fptoui float %i.ac to i8
  store i8 %i.ad, ptr %i.z, align 1, !tbaa !14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %vec.epilog.scalar.ph, !llvm.loop !240

._crit_edge.us.i:                                 ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block113
  %i.ae = getelementptr inbounds i8, ptr %.128.us.i, i64 %i.j ; 2 uses
  %.not.us.i = icmp eq ptr %i.ae, %i.h
  br i1 %.not.us.i, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_19multalphaIhEEvPT_iiif.exit, label %iter.check, !llvm.loop !241

bb.c:                                             ; preds = %bb.a
  %i.af = icmp eq i32 %4, 0                       ; 3 uses
  %i.ag = add nsw i32 %3, -1
  %.024.idx.i21 = select i1 %i.af, i64 2, i64 0
  %.024.i22 = getelementptr inbounds nuw i8, ptr %0, i64 %.024.idx.i21 ; 2 uses
  %narrow.i23 = select i1 %i.af, i32 -1, i32 %4
  %.023.i24 = sext i32 %narrow.i23 to i64
  %.022.i25 = select i1 %i.af, i32 %i.ag, i32 %4  ; 3 uses
  %i.ah = mul nsw i32 %3, %1                      ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %.idx.i = shl nsw i64 %i.ai, 1
  %i.aj = getelementptr inbounds i8, ptr %.024.i22, i64 %.idx.i
  %.not27.i26 = icmp eq i32 %i.ah, 0
  br i1 %.not27.i26, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_19multalphaIhEEvPT_iiif.exit, label %.lr.ph30.i27

.lr.ph30.i27:                                     ; preds = %bb.c
  %i.ak = icmp sgt i32 %.022.i25, 0
  %i.al = sext i32 %3 to i64
  br i1 %i.ak, label %.lr.ph.us.preheader.i28, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_19multalphaIhEEvPT_iiif.exit

.lr.ph.us.preheader.i28:                          ; preds = %.lr.ph30.i27
  %wide.trip.count.i29 = zext nneg i32 %.022.i25 to i64 ; 3 uses
  %min.iters.check90 = icmp ult i32 %.022.i25, 8
  %n.vec92 = and i64 %wide.trip.count.i29, 2147483640 ; 3 uses
  %cmp.n100 = icmp eq i64 %n.vec92, %wide.trip.count.i29
  br label %.lr.ph.us.i30

.lr.ph.us.i30:                                    ; preds = %._crit_edge.us.i35, %.lr.ph.us.preheader.i28
  %.128.us.i31 = phi ptr [ %i.ba, %._crit_edge.us.i35 ], [ %.024.i22, %.lr.ph.us.preheader.i28 ] ; 4 uses
  %i.am = getelementptr inbounds [2 x i8], ptr %.128.us.i31, i64 %.023.i24
  %i.an = load i16, ptr %i.am, align 2, !tbaa !21
  %i.ao = uitofp i16 %i.an to float
  %i.ap = fmul float %i.c, %i.ao                  ; 2 uses
  br i1 %min.iters.check90, label %scalar.ph89.preheader, label %vector.ph91

vector.ph91:                                      ; preds = %.lr.ph.us.i30
  %broadcast.splatinsert93 = insertelement <8 x float> poison, float %i.ap, i64 0
  %broadcast.splat94 = shufflevector <8 x float> %broadcast.splatinsert93, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body95

vector.body95:                                    ; preds = %vector.body95, %vector.ph91
  %index96 = phi i64 [ 0, %vector.ph91 ], [ %index.next98, %vector.body95 ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %.128.us.i31, i64 %index96 ; 2 uses
  %wide.load97 = load <8 x i16>, ptr %i.aq, align 2, !tbaa !21
  %i.ar = uitofp <8 x i16> %wide.load97 to <8 x float>
  %i.as = fmul <8 x float> %broadcast.splat94, %i.ar
  %i.at = fptoui <8 x float> %i.as to <8 x i16>
  store <8 x i16> %i.at, ptr %i.aq, align 2, !tbaa !21
  %index.next98 = add nuw i64 %index96, 8         ; 2 uses
  %i.au = icmp eq i64 %index.next98, %n.vec92
  br i1 %i.au, label %middle.block99, label %vector.body95, !llvm.loop !242

middle.block99:                                   ; preds = %vector.body95
  br i1 %cmp.n100, label %._crit_edge.us.i35, label %scalar.ph89.preheader

scalar.ph89.preheader:                            ; preds = %.lr.ph.us.i30, %middle.block99
  %indvars.iv.i32.ph = phi i64 [ 0, %.lr.ph.us.i30 ], [ %n.vec92, %middle.block99 ]
  br label %scalar.ph89

scalar.ph89:                                      ; preds = %scalar.ph89.preheader, %scalar.ph89
  %indvars.iv.i32 = phi i64 [ %indvars.iv.next.i33, %scalar.ph89 ], [ %indvars.iv.i32.ph, %scalar.ph89.preheader ] ; 2 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %.128.us.i31, i64 %indvars.iv.i32 ; 2 uses
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !21
  %i.ax = uitofp i16 %i.aw to float
  %i.ay = fmul float %i.ap, %i.ax
  %i.az = fptoui float %i.ay to i16
end_hunk_0
