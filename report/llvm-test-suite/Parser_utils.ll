inline.NumInlined: 230
inline.NumDeleted: 93
begin_hunk_0_@_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_:bb.a
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.r, %vector.ph ], [ %i.u, %vector.body ]
  %vec.phi35 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.v, %vector.body ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <4 x i32>, ptr %i.s, align 4, !tbaa !4
  %wide.load36 = load <4 x i32>, ptr %i.t, align 4, !tbaa !4
  %i.u = mul <4 x i32> %wide.load, %vec.phi       ; 2 uses
  %i.v = mul <4 x i32> %wide.load36, %vec.phi35   ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.v, %i.u
  %i.x = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %indvars.iv28, %n.vec
  br i1 %cmp.n, label %.loopexit37, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.c, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %bb.c ], [ %n.vec, %middle.block ]
  %.01722.ph = phi i32 [ %i.q, %bb.c ], [ %i.x, %middle.block ]
  br label %scalar.ph

.loopexit37:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.x, %middle.block ], [ %i.ab, %scalar.ph ]
  %i.y = add nsw i32 %.lcssa, %.01924             ; 2 uses
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1 ; 2 uses
  %exitcond32.not = icmp eq i64 %indvars.iv.next29, %wide.trip.count31
  br i1 %exitcond32.not, label %.loopexit, label %bb.c, !llvm.loop !17

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.01722 = phi i32 [ %i.ab, %scalar.ph ], [ %.01722.ph, %scalar.ph.preheader ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4
  %i.ab = mul nsw i32 %i.aa, %.01722              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv28
  br i1 %exitcond.not, label %.loopexit37, label %scalar.ph, !llvm.loop !18

.loopexit:                                        ; preds = %.loopexit37, %bb.b, %bb.a
  %.020 = phi i32 [ 0, %bb.a ], [ %i.l, %bb.b ], [ %i.y, %.loopexit37 ]
  ret i32 %.020
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN2PP12Parser_utils11reverse_dexEiiRSt6vectorIiSaIiEERKS3_(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = load ptr, ptr %3, align 8, !tbaa !12     ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 2                   ; 6 uses
  %i.h = trunc i64 %i.g to i32                    ; 4 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.loopexit52, label %.preheader53

.preheader53:                                     ; preds = %bb.a
  %i.j = icmp sgt i32 %i.h, 0                     ; 2 uses
  br i1 %i.j, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader53
  %i.k = load i32, ptr %i.c, align 4, !tbaa !4
  %i.l = load i32, ptr @_ZN2PPL10index_baseE, align 4, !tbaa !4
  %i.m = sub nsw i32 %i.k, %i.l
  br label %_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_.exit

.lr.ph:                                           ; preds = %.preheader53
  %i.n = load i32, ptr @_ZN2PPL10index_baseE, align 4, !tbaa !4 ; 2 uses
  %wide.trip.count = and i64 %i.g, 2147483647     ; 3 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.g, 2147483640               ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.n, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.o, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat, ptr %i.p, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.r = load i32, ptr %i.c, align 4, !tbaa !4
  %i.s = load i32, ptr @_ZN2PPL10index_baseE, align 4, !tbaa !4 ; 2 uses
  %i.t = sub nsw i32 %i.r, %i.s                   ; 2 uses
  %.not = icmp eq i32 %i.h, 1
  br i1 %.not, label %_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.u = load ptr, ptr %4, align 8, !tbaa !12     ; 2 uses
  %wide.trip.count31.i = and i64 %i.g, 2147483647
  br label %bb.b

bb.b:                                             ; preds = %.loopexit155, %.lr.ph.i
  %indvars.iv28.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next29.i, %.loopexit155 ] ; 6 uses
  %.01924.i = phi i32 [ %i.t, %.lr.ph.i ], [ %i.af, %.loopexit155 ]
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv28.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4
  %i.x = sub nsw i32 %i.w, %i.s                   ; 2 uses
  %min.iters.check126 = icmp samesign ult i64 %indvars.iv28.i, 8
  br i1 %min.iters.check126, label %scalar.ph125.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.b
  %n.vec129 = and i64 %indvars.iv28.i, 9223372036854775800 ; 3 uses
  %i.y = insertelement <4 x i32> <i32 poison, i32 1, i32 1, i32 1>, i32 %i.x, i64 0
  br label %vector.body130

vector.body130:                                   ; preds = %vector.body130, %vector.ph127
  %index131 = phi i64 [ 0, %vector.ph127 ], [ %index.next134, %vector.body130 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.y, %vector.ph127 ], [ %i.ab, %vector.body130 ]
  %vec.phi132 = phi <4 x i32> [ splat (i32 1), %vector.ph127 ], [ %i.ac, %vector.body130 ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index131 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load = load <4 x i32>, ptr %i.z, align 4, !tbaa !4
  %wide.load133 = load <4 x i32>, ptr %i.aa, align 4, !tbaa !4
  %i.ab = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.ac = mul <4 x i32> %wide.load133, %vec.phi132 ; 2 uses
  %index.next134 = add nuw i64 %index131, 8       ; 2 uses
  %i.ad = icmp eq i64 %index.next134, %n.vec129
  br i1 %i.ad, label %middle.block135, label %vector.body130, !llvm.loop !20

middle.block135:                                  ; preds = %vector.body130
  %bin.rdx = mul <4 x i32> %i.ac, %i.ab
  %i.ae = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n136 = icmp eq i64 %indvars.iv28.i, %n.vec129
  br i1 %cmp.n136, label %.loopexit155, label %scalar.ph125.preheader

scalar.ph125.preheader:                           ; preds = %bb.b, %middle.block135
  %indvars.iv.i.ph = phi i64 [ 0, %bb.b ], [ %n.vec129, %middle.block135 ]
  %.01722.i.ph = phi i32 [ %i.x, %bb.b ], [ %i.ae, %middle.block135 ]
  br label %scalar.ph125

.loopexit155:                                     ; preds = %scalar.ph125, %middle.block135
  %.lcssa119 = phi i32 [ %i.ae, %middle.block135 ], [ %i.ai, %scalar.ph125 ]
  %i.af = add nsw i32 %.lcssa119, %.01924.i       ; 2 uses
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i, 1 ; 2 uses
  %exitcond32.not.i = icmp eq i64 %indvars.iv.next29.i, %wide.trip.count31.i
  br i1 %exitcond32.not.i, label %_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_.exit, label %bb.b, !llvm.loop !17

scalar.ph125:                                     ; preds = %scalar.ph125.preheader, %scalar.ph125
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph125 ], [ %indvars.iv.i.ph, %scalar.ph125.preheader ] ; 2 uses
  %.01722.i = phi i32 [ %i.ai, %scalar.ph125 ], [ %.01722.i.ph, %scalar.ph125.preheader ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.ai = mul nsw i32 %i.ah, %.01722.i            ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv28.i
  br i1 %exitcond.not.i, label %.loopexit155, label %scalar.ph125, !llvm.loop !21

_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_.exit: ; preds = %.loopexit155, %._crit_edge.thread, %._crit_edge
  %.020.i = phi i32 [ %i.m, %._crit_edge.thread ], [ %i.t, %._crit_edge ], [ %i.af, %.loopexit155 ]
  %i.aj = icmp ne i32 %.020.i, %1
  %i.ak = icmp sgt i32 %2, 0
  %or.cond = and i1 %i.aj, %i.ak
  br i1 %or.cond, label %.preheader.lr.ph, label %.loopexit52

.preheader.lr.ph:                                 ; preds = %_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_.exit
  %i.al = load i32, ptr @_ZN2PPL10index_baseE, align 4 ; 3 uses
  %i.am = icmp sgt i32 %i.h, 1
  %wide.trip.count31.i41 = and i64 %i.g, 2147483647
  br i1 %i.j, label %.preheader.us.preheader, label %.loopexit52

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.an = add nuw nsw i64 %i.g, 4294967295
  %wide.trip.count105 = and i64 %i.an, 4294967295 ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %wide.trip.count105 ; 2 uses
  %exitcond106.not121 = icmp eq i64 %wide.trip.count105, 0
  %i.ap = load ptr, ptr %4, align 8
  %i.aq = load ptr, ptr %4, align 8               ; 2 uses
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_.exit50.us
  %.03464.us = phi i32 [ %i.bo, %_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_.exit50.us ], [ 0, %.preheader.us.preheader ]
  br i1 %exitcond106.not121, label %._crit_edge124, label %.lr.ph123

._crit_edge124:                                   ; preds = %7, %.preheader.us
  %5 = load i32, ptr %i.ao, align 4, !tbaa !4
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr %i.ao, align 4, !tbaa !4
  br label %..loopexit_crit_edge.us

.lr.ph123:                                        ; preds = %.preheader.us, %7
  %indvars.iv102122 = phi i64 [ %indvars.iv.next103, %7 ], [ 0, %.preheader.us ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv102122 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4  ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv102122
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4
  %i.av = icmp eq i32 %i.as, %i.au
  br i1 %i.av, label %7, label %bb.c

bb.c:                                             ; preds = %.lr.ph123
  %i.aw = add nsw i32 %i.as, 1
  store i32 %i.aw, ptr %i.ar, align 4, !tbaa !4
  br label %..loopexit_crit_edge.us

..loopexit_crit_edge.us:                          ; preds = %._crit_edge124, %bb.c
  %i.ax = load i32, ptr %i.c, align 4, !tbaa !4
  %i.ay = sub nsw i32 %i.ax, %i.al                ; 2 uses
  br i1 %i.am, label %.lr.ph.i40.us, label %_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_.exit50.us

.lr.ph.i40.us:                                    ; preds = %..loopexit_crit_edge.us, %.loopexit
  %indvars.iv28.i42.us = phi i64 [ %indvars.iv.next29.i48.us, %.loopexit ], [ 1, %..loopexit_crit_edge.us ] ; 6 uses
  %.01924.i43.us = phi i32 [ %i.bm, %.loopexit ], [ %i.ay, %..loopexit_crit_edge.us ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv28.i42.us
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !4
  %i.bb = sub nsw i32 %i.ba, %i.al                ; 2 uses
  %min.iters.check139 = icmp samesign ult i64 %indvars.iv28.i42.us, 8
  br i1 %min.iters.check139, label %scalar.ph138.preheader, label %vector.ph140

vector.ph140:                                     ; preds = %.lr.ph.i40.us
  %n.vec142 = and i64 %indvars.iv28.i42.us, 9223372036854775800 ; 3 uses
  %i.bc = insertelement <4 x i32> <i32 poison, i32 1, i32 1, i32 1>, i32 %i.bb, i64 0
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph140
  %index144 = phi i64 [ 0, %vector.ph140 ], [ %index.next149, %vector.body143 ] ; 2 uses
  %vec.phi145 = phi <4 x i32> [ %i.bc, %vector.ph140 ], [ %i.bf, %vector.body143 ]
  %vec.phi146 = phi <4 x i32> [ splat (i32 1), %vector.ph140 ], [ %i.bg, %vector.body143 ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %index144 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %wide.load147 = load <4 x i32>, ptr %i.bd, align 4, !tbaa !4
  %wide.load148 = load <4 x i32>, ptr %i.be, align 4, !tbaa !4
  %i.bf = mul <4 x i32> %wide.load147, %vec.phi145 ; 2 uses
  %i.bg = mul <4 x i32> %wide.load148, %vec.phi146 ; 2 uses
  %index.next149 = add nuw i64 %index144, 8       ; 2 uses
  %i.bh = icmp eq i64 %index.next149, %n.vec142
  br i1 %i.bh, label %middle.block150, label %vector.body143, !llvm.loop !22

middle.block150:                                  ; preds = %vector.body143
  %bin.rdx151 = mul <4 x i32> %i.bg, %i.bf
  %i.bi = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx151) ; 2 uses
  %cmp.n152 = icmp eq i64 %indvars.iv28.i42.us, %n.vec142
  br i1 %cmp.n152, label %.loopexit, label %scalar.ph138.preheader

scalar.ph138.preheader:                           ; preds = %.lr.ph.i40.us, %middle.block150
  %indvars.iv.i44.us.ph = phi i64 [ 0, %.lr.ph.i40.us ], [ %n.vec142, %middle.block150 ]
  %.01722.i45.us.ph = phi i32 [ %i.bb, %.lr.ph.i40.us ], [ %i.bi, %middle.block150 ]
  br label %scalar.ph138

scalar.ph138:                                     ; preds = %scalar.ph138.preheader, %scalar.ph138
  %indvars.iv.i44.us = phi i64 [ %indvars.iv.next.i46.us, %scalar.ph138 ], [ %indvars.iv.i44.us.ph, %scalar.ph138.preheader ] ; 2 uses
  %.01722.i45.us = phi i32 [ %i.bl, %scalar.ph138 ], [ %.01722.i45.us.ph, %scalar.ph138.preheader ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.i44.us
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !4
  %i.bl = mul nsw i32 %i.bk, %.01722.i45.us       ; 2 uses
  %indvars.iv.next.i46.us = add nuw nsw i64 %indvars.iv.i44.us, 1 ; 2 uses
  %exitcond.not.i47.us = icmp eq i64 %indvars.iv.next.i46.us, %indvars.iv28.i42.us
  br i1 %exitcond.not.i47.us, label %.loopexit, label %scalar.ph138, !llvm.loop !23

.loopexit:                                        ; preds = %scalar.ph138, %middle.block150
  %.lcssa117 = phi i32 [ %i.bi, %middle.block150 ], [ %i.bl, %scalar.ph138 ]
  %i.bm = add nsw i32 %.lcssa117, %.01924.i43.us  ; 2 uses
  %indvars.iv.next29.i48.us = add nuw nsw i64 %indvars.iv28.i42.us, 1 ; 2 uses
  %exitcond32.not.i49.us = icmp eq i64 %indvars.iv.next29.i48.us, %wide.trip.count31.i41
  br i1 %exitcond32.not.i49.us, label %_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_.exit50.us, label %.lr.ph.i40.us, !llvm.loop !17

_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_.exit50.us: ; preds = %.loopexit, %..loopexit_crit_edge.us
  %.020.i39.us = phi i32 [ %i.ay, %..loopexit_crit_edge.us ], [ %i.bm, %.loopexit ]
  %i.bn = icmp ne i32 %.020.i39.us, %1
  %i.bo = add nuw nsw i32 %.03464.us, 1           ; 2 uses
  %i.bp = icmp slt i32 %i.bo, %2
  %or.cond85 = select i1 %i.bn, i1 %i.bp, i1 false
  br i1 %or.cond85, label %.preheader.us, label %.loopexit52, !llvm.loop !24

7:                                                ; preds = %.lr.ph123
  store i32 %i.al, ptr %i.ar, align 4, !tbaa !4
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102122, 1 ; 2 uses
  %exitcond106.not = icmp eq i64 %indvars.iv.next103, %wide.trip.count105
  br i1 %exitcond106.not, label %._crit_edge124, label %.lr.ph123

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  store i32 %i.n, ptr %i.bq, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !25

.loopexit52:                                      ; preds = %_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_.exit50.us, %.preheader.lr.ph, %_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(128) %6) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !26     ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = lshr i64 %i.j, 5                         ; 9 uses
  %i.l = trunc i64 %i.k to i32                    ; 4 uses
  %sext = shl i64 %i.j, 27                        ; 5 uses
  %i.m = ashr exact i64 %sext, 32                 ; 3 uses
  %i.n = icmp ugt i64 %i.m, 2305843009213693951
  br i1 %i.n, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #13
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp ne i64 %sext, 0            ; 3 uses
  br i1 %.not.i.i.i.i, label %.noexc178, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit

.noexc178:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.o = ashr exact i64 %sext, 30                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #14 ; 3 uses
  %i.q = and i64 %i.o, -4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.p, i8 0, i64 %i.q, i1 false), !tbaa !4
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.m
  %i.s = ptrtoint ptr %i.r to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit:            ; preds = %.noexc178, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.15298.0 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.s, %.noexc178 ] ; 2 uses
  %.sroa.0289.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.p, %.noexc178 ] ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !33   ; 3 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.d to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = sdiv exact i64 %i.x, 24
  %i.z = trunc i64 %i.y to i32
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.preheader319.lr.ph, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i179

.preheader319.lr.ph:                              ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %i.ab = icmp sgt i32 %i.l, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  br i1 %i.ab, label %.preheader319.preheader, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i179

.preheader319.preheader:                          ; preds = %.preheader319.lr.ph
  %wide.trip.count = and i64 %i.k, 2147483647
  br label %.preheader319

.preheader319:                                    ; preds = %.preheader319.preheader, %._crit_edge
  %indvars.iv395 = phi i64 [ 0, %.preheader319.preheader ], [ %indvars.iv.next396, %._crit_edge ] ; 2 uses
  br label %bb.c

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i179: ; preds = %._crit_edge, %.preheader319.lr.ph, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %i.ae = phi ptr [ %i.d, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit ], [ %i.d, %.preheader319.lr.ph ], [ %i.am, %._crit_edge ] ; 5 uses
  %i.af = phi ptr [ %i.u, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit ], [ %i.u, %.preheader319.lr.ph ], [ %i.al, %._crit_edge ] ; 4 uses
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit188

bb.b:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i179
  %i.ag = ashr exact i64 %sext, 30                ; 2 uses
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #14
          to label %.noexc187 unwind label %bb.j  ; 3 uses

.noexc187:                                        ; preds = %bb.b
  %i.ai = and i64 %i.ag, -4
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ah, i8 0, i64 %i.ai, i1 false), !tbaa !4
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.m
  %i.ak = ptrtoint ptr %i.aj to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit188

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv.next396 = add nuw nsw i64 %indvars.iv395, 1 ; 2 uses
  %i.al = load ptr, ptr %i.t, align 8, !tbaa !33  ; 2 uses
  %i.am = load ptr, ptr %1, align 8, !tbaa !26    ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = sdiv exact i64 %i.ap, 24
  %sext479 = shl i64 %i.aq, 32
  %i.ar = ashr exact i64 %sext479, 32
  %i.as = icmp slt i64 %indvars.iv.next396, %i.ar
  br i1 %i.as, label %.preheader319, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i179, !llvm.loop !34

bb.c:                                             ; preds = %.preheader319, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.preheader319 ], [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.at = load ptr, ptr %1, align 8, !tbaa !26
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %indvars.iv395
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !32
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %i.av, i64 %indvars.iv ; 2 uses
  store ptr %i.ac, ptr %7, align 8, !tbaa !35
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !38 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !41 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i64 %i.az, ptr %i.c, align 8, !tbaa !42
  %i.ba = icmp ugt i64 %i.az, 15
  br i1 %i.ba, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.bb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc189 unwind label %bb.h  ; 2 uses

.noexc189:                                        ; preds = %.noexc.i
  store ptr %i.bb, ptr %7, align 8, !tbaa !38
  %i.bc = load i64, ptr %i.c, align 8, !tbaa !42
  store i64 %i.bc, ptr %i.ac, align 8, !tbaa !43
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc189, %bb.c
  %i.bd = phi ptr [ %i.bb, %.noexc189 ], [ %i.ac, %bb.c ] ; 2 uses
  switch i64 %i.az, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.be = load i8, ptr %i.ax, align 1, !tbaa !43
  store i8 %i.be, ptr %i.bd, align 1, !tbaa !43
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr align 1 %i.ax, i64 %i.az, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.bf = load i64, ptr %i.c, align 8, !tbaa !42  ; 2 uses
  store i64 %i.bf, ptr %i.ad, align 8, !tbaa !41
  %i.bg = load ptr, ptr %7, align 8, !tbaa !38
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bf
  store i8 0, ptr %i.bh, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  %i.bi = load i64, ptr %i.ad, align 8, !tbaa !41 ; 2 uses
  %i.bj = trunc i64 %i.bi to i32                  ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0289.0, i64 %indvars.iv ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !4
  %i.bm = icmp slt i32 %i.bl, %i.bj
  br i1 %i.bm, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !4
  br label %bb.i

bb.h:                                             ; preds = %.noexc.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit246

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.bo = load ptr, ptr %7, align 8, !tbaa !38    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.ac
  br i1 %i.bp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.i
  %i.bq = icmp ult i64 %i.bi, 16
  call void @llvm.assume(i1 %i.bq)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.br = load i64, ptr %i.ac, align 8, !tbaa !43
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !44

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit188:         ; preds = %.noexc187, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i179
  %.sroa.0276.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i179 ], [ %i.ah, %.noexc187 ] ; 21 uses
end_hunk_0
