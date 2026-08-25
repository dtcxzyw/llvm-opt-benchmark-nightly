Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/UninitializedValues?download=true
inline.NumInlined: 2320
inline.NumDeleted: 1316
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang7VarDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_:bb.a
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i15 = icmp eq i64 %i.n, 0
  br i1 %.not.i15, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang7VarDeclEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph18

.lr.ph18:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !24   ; 2 uses
  %.not11.i13 = icmp eq i32 %i.p, 0
  br i1 %.not11.i13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph18
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang7VarDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i14 = phi i32 [ %i.p, %.lr.ph ], [ %i.bb, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang7VarDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i14, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !22   ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !24
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang7VarDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.015.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !24
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang7VarDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !517

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang7VarDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa14.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa14.i ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !22
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !24
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !24
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = load i32, ptr %i.as, align 4, !tbaa !24
  %i.az = or i32 %i.ay, %i.ax
  store i32 %i.az, ptr %i.as, align 4, !tbaa !24
  %i.ba = add i32 %.0.i14, -1
  %i.bb = and i32 %i.ba, %.0.i14                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bb, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !518

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang7VarDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang7VarDeclEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph18, !llvm.loop !519

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang7VarDeclEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !146
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang7VarDeclEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang7VarDeclEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang7VarDeclEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bc = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang7VarDeclEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !26
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !26
  %i.bg = icmp eq i32 %i.bc, 0
  br i1 %i.bg, label %_ZN4llvm8DenseMapIPKN5clang7VarDeclEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang7VarDeclEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bh = zext i32 %i.bc to i64                   ; 2 uses
  %i.bi = shl nuw nsw i64 %i.bh, 4
  %i.bj = add nuw nsw i64 %i.bh, 31
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bi
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bm, i64 noundef 8) #18
  store i32 0, ptr %i.d, align 4, !tbaa !146
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKN5clang7VarDeclEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEE4killEv.exit

_ZN4llvm8DenseMapIPKN5clang7VarDeclEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang7VarDeclEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #11

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm14SmallBitVector6resizeEjb(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !15     ; 4 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.a to ptr                 ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !127
  %i.f = and i32 %i.e, 63                         ; 2 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i, label %bb.c

._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i: ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !13 ; 2 uses
  %.pre6.i = zext i32 %.pre.i to i64
  br label %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i

bb.c:                                             ; preds = %bb.b
  %i.g = zext nneg i32 %i.f to i64
  %i.h = shl nsw i64 -1, %i.g                     ; 2 uses
  br i1 %2, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !13   ; 2 uses
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.l
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !126
  %i.p = or i64 %i.o, %i.h
  store i64 %i.p, ptr %i.n, align 8, !tbaa !126
  br label %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i

bb.e:                                             ; preds = %bb.c
  %i.q = xor i64 %i.h, -1
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !13   ; 2 uses
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.u
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !126
  %i.y = and i64 %i.x, %i.q
  store i64 %i.y, ptr %i.w, align 8, !tbaa !126
  br label %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i

_ZN4llvm9BitVector15set_unused_bitsEb.exit.i:     ; preds = %bb.e, %bb.d, %._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre6.i, %._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i ], [ %i.l, %bb.d ], [ %i.u, %bb.e ] ; 3 uses
  %i.z = phi i32 [ %.pre.i, %._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i ], [ %i.k, %bb.d ], [ %i.t, %bb.e ] ; 4 uses
  store i32 %1, ptr %i.d, align 8, !tbaa !127
  %i.aa = add i32 %1, 63
  %i.ab = lshr i32 %i.aa, 6                       ; 5 uses
  %i.ac = zext nneg i32 %i.ab to i64              ; 3 uses
  %.neg.i = sext i1 %2 to i64                     ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ae = icmp eq i32 %i.ab, %i.z
  br i1 %i.ae, label %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i
  %i.af = icmp ult i32 %i.ab, %i.z
  br i1 %i.af, label %.sink.split.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = sub nuw nsw i64 %i.ac, %.pre-phi.i      ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !14
  %.not.i.i.i.i.i = icmp ugt i32 %i.ab, %i.ai
  br i1 %.not.i.i.i.i.i, label %bb.h, label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i, !prof !520

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %i.c, ptr noundef nonnull %i.aj, i64 noundef %i.ac, i64 noundef 8) #18
  %.pre.i.i.i = load i32, ptr %i.ad, align 8, !tbaa !13 ; 2 uses
  %.pre.i.i = zext i32 %.pre.i.i.i to i64
  br label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i.i = phi i64 [ %.pre-phi.i, %bb.g ], [ %.pre.i.i, %bb.h ]
  %i.ak = phi i32 [ %i.z, %bb.g ], [ %.pre.i.i.i, %bb.h ]
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.pre-phi.i.i ; 4 uses
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ag, 3
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx.i.i.i.i.i.i.i
  %i.ao = shl nuw nsw i64 %i.ac, 3
  %3 = shl nuw nsw i64 %.pre-phi.i, 3
  %4 = add nsw i64 %i.ao, -8
  %i.ap = sub nsw i64 %4, %3                      ; 2 uses
  %i.aq = lshr exact i64 %i.ap, 3
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ap, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i
  %n.vec = and i64 %i.ar, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3
  %i.at = getelementptr i8, ptr %i.am, i64 %i.as
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.neg.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.au ; 2 uses
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !126
  store <2 x i64> %broadcast.splat, ptr %i.av, align 8, !tbaa !126
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !521

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %_ZN4llvm15SmallVectorImplImE6appendEmm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i, %middle.block
  %.06.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.am, %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i64 %.neg.i, ptr %.06.i.i.i.i.i.i.i.i.i, align 8, !tbaa !126
  %i.ax = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ax, %i.an
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm15SmallVectorImplImE6appendEmm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !524

_ZN4llvm15SmallVectorImplImE6appendEmm.exit.i.i:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block
  %i.ay = trunc nuw nsw i64 %i.ag to i32
  %i.az = add i32 %i.ak, %i.ay
  %.pre4.pre.i = load i32, ptr %i.d, align 8, !tbaa !127
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %_ZN4llvm15SmallVectorImplImE6appendEmm.exit.i.i, %bb.f
  %.pre4.i = phi i32 [ %.pre4.pre.i, %_ZN4llvm15SmallVectorImplImE6appendEmm.exit.i.i ], [ %1, %bb.f ]
  %.sink.i.i = phi i32 [ %i.az, %_ZN4llvm15SmallVectorImplImE6appendEmm.exit.i.i ], [ %i.ab, %bb.f ] ; 2 uses
  store i32 %.sink.i.i, ptr %i.ad, align 8, !tbaa !13
  br label %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i

_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i:    ; preds = %.sink.split.i.i, %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i
  %i.ba = phi i32 [ %i.z, %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i ], [ %.sink.i.i, %.sink.split.i.i ]
  %i.bb = phi i32 [ %1, %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i ], [ %.pre4.i, %.sink.split.i.i ]
  %i.bc = and i32 %i.bb, 63                       ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i, label %_ZN4llvm9BitVector6resizeEjb.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = shl nsw i64 -1, %i.bd
  %i.bf = xor i64 %i.be, -1
  %i.bg = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.bh = zext i32 %i.ba to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !126
  %i.bl = and i64 %i.bk, %i.bf
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !126
  br label %_ZN4llvm9BitVector6resizeEjb.exit

bb.j:                                             ; preds = %bb.a
  %i.bm = icmp ult i32 %1, 58
  br i1 %i.bm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bn = lshr i64 %i.a, 58
  %i.bo = shl nsw i64 -1, %i.bn                   ; 2 uses
  %i.bp = select i1 %2, i64 %i.bo, i64 0
  %i.bq = zext nneg i32 %1 to i64
  %i.br = xor i64 %i.bo, -1
  %i.bs = shl nuw i64 %i.bq, 58
  %i.bt = shl nuw i64 %i.br, 1
  %i.bu = and i64 %i.bt, %i.a
  %i.bv = or i64 %i.bu, %i.bs                     ; 3 uses
  %i.bw = lshr exact i64 %i.bv, 1
  %i.bx = lshr i64 %i.bv, 58
  %i.by = shl nsw i64 -1, %i.bx
  %i.bz = xor i64 %i.by, -1
  %i.ca = or i64 %i.bw, %i.bp
  %i.cb = and i64 %i.ca, %i.bz
  %i.cc = and i64 %i.bv, -288230376151711744
  %i.cd = shl nuw i64 %i.cb, 1
  %i.ce = or i64 %i.cc, %i.cd
  %i.cf = or disjoint i64 %i.ce, 1
  store i64 %i.cf, ptr %0, align 8, !tbaa !15
  br label %_ZN4llvm9BitVector6resizeEjb.exit

bb.l:                                             ; preds = %bb.j
  %i.cg = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #21 ; 8 uses
  %i.ch = add i32 %1, 63                          ; 2 uses
  %i.ci = lshr i32 %i.ch, 6                       ; 3 uses
  %i.cj = zext nneg i32 %i.ci to i64              ; 4 uses
  %.neg.i17 = sext i1 %2 to i64                   ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 9 uses
  store ptr %i.ck, ptr %i.cg, align 8, !tbaa !11
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  store i32 6, ptr %i.cm, align 4, !tbaa !14
  %i.cn = icmp ugt i32 %i.ch, 447
  br i1 %i.cn, label %vector.ph53, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i

vector.ph53:                                      ; preds = %bb.l
  store i32 0, ptr %i.cl, align 8, !tbaa !13
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %i.cg, ptr noundef nonnull %i.ck, i64 noundef %i.cj, i64 noundef 8) #18
  %i.co = load ptr, ptr %i.cg, align 8, !tbaa !11 ; 5 uses
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.cj, 3 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx.i.i.i.i.i.i.i.i
  %i.cq = add nsw i64 %.idx.i.i.i.i.i.i.i.i, -8
  %i.cr = lshr exact i64 %i.cq, 3
  %i.cs = add nuw nsw i64 %i.cr, 1                ; 2 uses
  %n.vec54 = and i64 %i.cs, 4611686018427387900   ; 3 uses
  %i.ct = shl i64 %n.vec54, 3
  %i.cu = getelementptr i8, ptr %i.co, i64 %i.ct
  %broadcast.splatinsert55 = insertelement <2 x i64> poison, i64 %.neg.i17, i64 0
  %broadcast.splat56 = shufflevector <2 x i64> %broadcast.splatinsert55, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body57

vector.body57:                                    ; preds = %vector.body57, %vector.ph53
  %index58 = phi i64 [ 0, %vector.ph53 ], [ %index.next60, %vector.body57 ] ; 2 uses
  %i.cv = shl i64 %index58, 3
  %next.gep59 = getelementptr i8, ptr %i.co, i64 %i.cv ; 2 uses
  %i.cw = getelementptr i8, ptr %next.gep59, i64 16
  store <2 x i64> %broadcast.splat56, ptr %next.gep59, align 8, !tbaa !126
  store <2 x i64> %broadcast.splat56, ptr %i.cw, align 8, !tbaa !126
  %index.next60 = add nuw i64 %index58, 4         ; 2 uses
  %i.cx = icmp eq i64 %index.next60, %n.vec54
  br i1 %i.cx, label %middle.block61, label %vector.body57, !llvm.loop !525

middle.block61:                                   ; preds = %vector.body57
  %cmp.n62 = icmp eq i64 %i.cs, %n.vec54
  br i1 %cmp.n62, label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %middle.block61, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.cu, %middle.block61 ] ; 2 uses
  store i64 %.neg.i17, ptr %.06.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !126
  %i.cy = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cy, %i.cp
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !526

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i:        ; preds = %bb.l
  %.not.i.i18 = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i18, label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i
  %.idx.i.i.i.i.i.i.i19 = shl nuw nsw i64 %i.cj, 3 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.idx.i.i.i.i.i.i.i19
  %i.da = add nsw i64 %.idx.i.i.i.i.i.i.i19, -8   ; 2 uses
  %i.db = lshr exact i64 %i.da, 3
  %i.dc = add nuw nsw i64 %i.db, 1                ; 2 uses
  %min.iters.check40 = icmp ult i64 %i.da, 24
  br i1 %min.iters.check40, label %.lr.ph.i.i.i.i.i.i.i.i.i20.preheader, label %vector.ph41

vector.ph41:                                      ; preds = %bb.m
  %n.vec42 = and i64 %i.dc, 4611686018427387900   ; 3 uses
  %i.dd = shl i64 %n.vec42, 3
  %i.de = getelementptr i8, ptr %i.ck, i64 %i.dd
  %broadcast.splatinsert43 = insertelement <2 x i64> poison, i64 %.neg.i17, i64 0
  %broadcast.splat44 = shufflevector <2 x i64> %broadcast.splatinsert43, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body45

vector.body45:                                    ; preds = %vector.body45, %vector.ph41
  %index46 = phi i64 [ 0, %vector.ph41 ], [ %index.next48, %vector.body45 ] ; 2 uses
  %i.df = shl i64 %index46, 3
  %next.gep47 = getelementptr i8, ptr %i.ck, i64 %i.df ; 2 uses
  %i.dg = getelementptr i8, ptr %next.gep47, i64 16
  store <2 x i64> %broadcast.splat44, ptr %next.gep47, align 8, !tbaa !126
  store <2 x i64> %broadcast.splat44, ptr %i.dg, align 8, !tbaa !126
  %index.next48 = add nuw i64 %index46, 4         ; 2 uses
  %i.dh = icmp eq i64 %index.next48, %n.vec42
  br i1 %i.dh, label %middle.block49, label %vector.body45, !llvm.loop !527

middle.block49:                                   ; preds = %vector.body45
  %cmp.n50 = icmp eq i64 %i.dc, %n.vec42
  br i1 %cmp.n50, label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i20.preheader

.lr.ph.i.i.i.i.i.i.i.i.i20.preheader:             ; preds = %bb.m, %middle.block49
  %.06.i.i.i.i.i.i.i.i.i21.ph = phi ptr [ %i.ck, %bb.m ], [ %i.de, %middle.block49 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i20

.lr.ph.i.i.i.i.i.i.i.i.i20:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i20.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i20
  %.06.i.i.i.i.i.i.i.i.i21 = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i.i.i.i.i20 ], [ %.06.i.i.i.i.i.i.i.i.i21.ph, %.lr.ph.i.i.i.i.i.i.i.i.i20.preheader ] ; 2 uses
  store i64 %.neg.i17, ptr %.06.i.i.i.i.i.i.i.i.i21, align 8, !tbaa !126
  %i.di = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i21, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i22 = icmp eq ptr %i.di, %i.cz
  br i1 %.not.i.i.i.i.i.i.i.i.i22, label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i20, !llvm.loop !528

_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i20, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block49, %middle.block61, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i
  %i.dj = phi ptr [ %i.co, %middle.block61 ], [ %i.ck, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i ], [ %i.ck, %middle.block49 ], [ %i.co, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.ck, %.lr.ph.i.i.i.i.i.i.i.i.i20 ] ; 2 uses
  store i32 %i.ci, ptr %i.cl, align 8, !tbaa !13
end_hunk_0
begin_hunk_1_@_ZN5clang15StmtVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_117TransferFunctionsEvJEE5VisitEPKNS_4StmtE:bb.a
  tail call fastcc void @_ZN12_GLOBAL__N_117TransferFunctions27VisitOMPExecutableDirectiveEPKN5clang22OMPExecutableDirectiveE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.ce:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_117TransferFunctions27VisitOMPExecutableDirectiveEPKN5clang22OMPExecutableDirectiveE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.cf:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_117TransferFunctions27VisitOMPExecutableDirectiveEPKN5clang22OMPExecutableDirectiveE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.cg:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_117TransferFunctions27VisitOMPExecutableDirectiveEPKN5clang22OMPExecutableDirectiveE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.ch:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_117TransferFunctions27VisitOMPExecutableDirectiveEPKN5clang22OMPExecutableDirectiveE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.ci:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_117TransferFunctions27VisitOMPExecutableDirectiveEPKN5clang22OMPExecutableDirectiveE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.cj:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_117TransferFunctions27VisitOMPExecutableDirectiveEPKN5clang22OMPExecutableDirectiveE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.ck:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_117TransferFunctions27VisitOMPExecutableDirectiveEPKN5clang22OMPExecutableDirectiveE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.cl:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_117TransferFunctions27VisitOMPExecutableDirectiveEPKN5clang22OMPExecutableDirectiveE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.cm:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_117TransferFunctions27VisitOMPExecutableDirectiveEPKN5clang22OMPExecutableDirectiveE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.cn:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_117TransferFunctions27VisitOMPExecutableDirectiveEPKN5clang22OMPExecutableDirectiveE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.co:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_117TransferFunctions27VisitOMPExecutableDirectiveEPKN5clang22OMPExecutableDirectiveE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.cp:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_117TransferFunctions27VisitOMPExecutableDirectiveEPKN5clang22OMPExecutableDirectiveE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.cq:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_117TransferFunctions27VisitOMPExecutableDirectiveEPKN5clang22OMPExecutableDirectiveE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.cr:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_117TransferFunctions27VisitOMPExecutableDirectiveEPKN5clang22OMPExecutableDirectiveE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.cs:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_117TransferFunctions27VisitOMPExecutableDirectiveEPKN5clang22OMPExecutableDirectiveE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.ct:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_117TransferFunctions27VisitOMPExecutableDirectiveEPKN5clang22OMPExecutableDirectiveE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.cu:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_117TransferFunctions27VisitOMPExecutableDirectiveEPKN5clang22OMPExecutableDirectiveE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.cv:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_117TransferFunctions27VisitOMPExecutableDirectiveEPKN5clang22OMPExecutableDirectiveE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.cw:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_117TransferFunctions27VisitOMPExecutableDirectiveEPKN5clang22OMPExecutableDirectiveE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.cx:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_117TransferFunctions27VisitOMPExecutableDirectiveEPKN5clang22OMPExecutableDirectiveE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.cy:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_117TransferFunctions27VisitOMPExecutableDirectiveEPKN5clang22OMPExecutableDirectiveE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.cz:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_117TransferFunctions27VisitOMPExecutableDirectiveEPKN5clang22OMPExecutableDirectiveE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.da:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_117TransferFunctions27VisitOMPExecutableDirectiveEPKN5clang22OMPExecutableDirectiveE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.db:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_117TransferFunctions27VisitOMPExecutableDirectiveEPKN5clang22OMPExecutableDirectiveE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.dc:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_117TransferFunctions27VisitOMPExecutableDirectiveEPKN5clang22OMPExecutableDirectiveE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.dd:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_117TransferFunctions27VisitOMPExecutableDirectiveEPKN5clang22OMPExecutableDirectiveE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.de:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_117TransferFunctions27VisitOMPExecutableDirectiveEPKN5clang22OMPExecutableDirectiveE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.df:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_117TransferFunctions27VisitOMPExecutableDirectiveEPKN5clang22OMPExecutableDirectiveE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.dg:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_117TransferFunctions27VisitOMPExecutableDirectiveEPKN5clang22OMPExecutableDirectiveE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.dh:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_117TransferFunctions27VisitOMPExecutableDirectiveEPKN5clang22OMPExecutableDirectiveE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.di:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_117TransferFunctions27VisitOMPExecutableDirectiveEPKN5clang22OMPExecutableDirectiveE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.dj:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_117TransferFunctions27VisitOMPExecutableDirectiveEPKN5clang22OMPExecutableDirectiveE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.dk:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_117TransferFunctions27VisitOMPExecutableDirectiveEPKN5clang22OMPExecutableDirectiveE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.dl:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_117TransferFunctions27VisitOMPExecutableDirectiveEPKN5clang22OMPExecutableDirectiveE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.dm:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_117TransferFunctions27VisitOMPExecutableDirectiveEPKN5clang22OMPExecutableDirectiveE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.dn:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_117TransferFunctions27VisitOMPExecutableDirectiveEPKN5clang22OMPExecutableDirectiveE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.do:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_117TransferFunctions27VisitOMPExecutableDirectiveEPKN5clang22OMPExecutableDirectiveE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.dp:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_117TransferFunctions27VisitOMPExecutableDirectiveEPKN5clang22OMPExecutableDirectiveE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.dq:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_117TransferFunctions27VisitOMPExecutableDirectiveEPKN5clang22OMPExecutableDirectiveE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.dr:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_117TransferFunctions27VisitOMPExecutableDirectiveEPKN5clang22OMPExecutableDirectiveE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.ds:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_117TransferFunctions27VisitOMPExecutableDirectiveEPKN5clang22OMPExecutableDirectiveE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.dt:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_117TransferFunctions27VisitOMPExecutableDirectiveEPKN5clang22OMPExecutableDirectiveE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.du:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_117TransferFunctions27VisitOMPExecutableDirectiveEPKN5clang22OMPExecutableDirectiveE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.dv:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_117TransferFunctions27VisitOMPExecutableDirectiveEPKN5clang22OMPExecutableDirectiveE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.dw:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_117TransferFunctions27VisitOMPExecutableDirectiveEPKN5clang22OMPExecutableDirectiveE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.dx:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_117TransferFunctions13VisitDeclStmtEPKN5clang8DeclStmtE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.dy:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_117TransferFunctions15VisitGCCAsmStmtEPKN5clang10GCCAsmStmtE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.ak, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm14SmallBitVectoraSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !15     ; 5 uses
  %i.b = trunc i64 %i.a to i1
  %i.c = load i64, ptr %1, align 8, !tbaa !15     ; 5 uses
  %i.d = trunc i64 %i.c to i1                     ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 %i.c, ptr %0, align 8, !tbaa !15
  br label %bb.x

bb.d:                                             ; preds = %bb.b
  %i.e = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #21 ; 9 uses
  %2 = load i64, ptr %1, align 8, !tbaa !15
  %i.f = inttoptr i64 %2 to ptr                   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store i32 0, ptr %i.h, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 6, ptr %i.i, align 4, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !13   ; 5 uses
  %.not.i.i.i = icmp eq i32 %i.k, 0
  %i.l = icmp eq ptr %i.e, %i.f
  %or.cond.i.i = or i1 %i.l, %.not.i.i.i
  br i1 %or.cond.i.i, label %_ZN4llvm9BitVectorC2ERKS0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = icmp ugt i32 %i.k, 6
  br i1 %i.m, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i:         ; preds = %bb.e
  %i.n = zext i32 %i.k to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %i.e, ptr noundef nonnull %i.g, i64 noundef %i.n, i64 noundef 8) #18
  %.pre.i.i = load i32, ptr %i.j, align 8, !tbaa !13 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.pre.i.i, 0
  br i1 %.not.i.i.i.i, label %.sink.split.i.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !11
  br label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i:  ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i, %bb.e
  %i.o = phi ptr [ %.pre.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i ], [ %i.g, %bb.e ]
  %i.p = phi i32 [ %.pre.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i ], [ %i.k, %bb.e ]
  %i.q = zext i32 %i.p to i64
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !11
  %gepdiff.i.i.i = shl nuw nsw i64 %i.q, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 8 %i.r, i64 %gepdiff.i.i.i, i1 false)
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i
  store i32 %i.k, ptr %i.h, align 8, !tbaa !13
  br label %_ZN4llvm9BitVectorC2ERKS0_.exit

_ZN4llvm9BitVectorC2ERKS0_.exit:                  ; preds = %bb.d, %.sink.split.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.u = load i32, ptr %i.t, align 8, !tbaa !127
  store i32 %i.u, ptr %i.s, align 8, !tbaa !127
  %i.v = ptrtoint ptr %i.e to i64
  store i64 %i.v, ptr %0, align 8, !tbaa !15
  br label %bb.x

bb.f:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.t, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = inttoptr i64 %i.c to ptr                 ; 5 uses
  %i.x = inttoptr i64 %i.a to ptr                 ; 8 uses
  %i.y = icmp eq i64 %i.a, %i.c
  br i1 %i.y, label %_ZN4llvm9BitVectoraSERKS0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !13  ; 6 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !13 ; 4 uses
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %.not.i.i.i7 = icmp ult i32 %i.ad, %i.aa
  br i1 %.not.i.i.i7, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not29.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not29.i.i.i, label %.sink.split.i.i.i8, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !11  ; 2 uses
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !11  ; 2 uses
  %.not31.i.i.i = icmp eq i32 %i.aa, 1
  br i1 %.not31.i.i.i, label %bb.l, label %bb.k, !prof !520

bb.k:                                             ; preds = %bb.j
  %.idx.i.i.i = shl nuw nsw i64 %i.ab, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ag, ptr align 8 %i.af, i64 %.idx.i.i.i, i1 false)
  br label %.sink.split.i.i.i8

bb.l:                                             ; preds = %bb.j
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !126
  store i64 %i.ah, ptr %i.ag, align 8, !tbaa !126
  br label %.sink.split.i.i.i8

bb.m:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !14
  %i.ak = icmp ult i32 %i.aj, %i.aa
  br i1 %i.ak, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.ac, align 8, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %i.x, ptr noundef nonnull %i.al, i64 noundef %i.ab, i64 noundef 8) #18
  br label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i9

bb.o:                                             ; preds = %bb.m
  %.not28.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not28.i.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i9, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = load ptr, ptr %i.w, align 8, !tbaa !11  ; 2 uses
  %i.an = load ptr, ptr %i.x, align 8, !tbaa !11  ; 2 uses
  %.not33.i.i.i = icmp eq i32 %i.ad, 1
  br i1 %.not33.i.i.i, label %bb.r, label %bb.q, !prof !520

bb.q:                                             ; preds = %bb.p
  %.idx32.i.i.i = shl nuw nsw i64 %i.ae, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.an, ptr align 8 %i.am, i64 %.idx32.i.i.i, i1 false)
  br label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i9

bb.r:                                             ; preds = %bb.p
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !126
  store i64 %i.ao, ptr %i.an, align 8, !tbaa !126
  br label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i9

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i9:        ; preds = %bb.r, %bb.q, %bb.o, %bb.n
  %.022.i.i.i = phi i64 [ 0, %bb.n ], [ 0, %bb.o ], [ %i.ae, %bb.q ], [ 1, %bb.r ] ; 4 uses
  %i.ap = load i32, ptr %i.z, align 8, !tbaa !13
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %.not.i.i.i.i10 = icmp samesign eq i64 %.022.i.i.i, %i.aq
  br i1 %.not.i.i.i.i10, label %.sink.split.i.i.i8, label %bb.s

bb.s:                                             ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i9
  %i.ar = load ptr, ptr %i.w, align 8, !tbaa !11
  %.idx35.i.i.i = shl nuw nsw i64 %.022.i.i.i, 3
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.idx35.i.i.i
  %i.at = load ptr, ptr %i.x, align 8, !tbaa !11
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.022.i.i.i
  %i.av = sub nsw i64 %i.aq, %.022.i.i.i
  %gepdiff.i.i.i11 = shl nsw i64 %i.av, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 8 %i.as, i64 %gepdiff.i.i.i11, i1 false)
  br label %.sink.split.i.i.i8

.sink.split.i.i.i8:                               ; preds = %bb.s, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i9, %bb.l, %bb.k, %bb.i
  store i32 %i.aa, ptr %i.ac, align 8, !tbaa !13
  br label %_ZN4llvm9BitVectoraSERKS0_.exit

_ZN4llvm9BitVectoraSERKS0_.exit:                  ; preds = %bb.g, %.sink.split.i.i.i8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !127
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  store i32 %i.ax, ptr %i.ay, align 8, !tbaa !127
  br label %bb.x

bb.t:                                             ; preds = %bb.f
  %i.az = inttoptr i64 %i.a to ptr                ; 3 uses
  %i.ba = icmp eq i64 %i.a, 0
  br i1 %i.ba, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !11 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZN4llvm9BitVectorD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @free(ptr noundef %i.bb) #18
  br label %_ZN4llvm9BitVectorD2Ev.exit

_ZN4llvm9BitVectorD2Ev.exit:                      ; preds = %bb.u, %bb.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef 72) #19
  %.pre = load i64, ptr %1, align 8, !tbaa !15
  br label %bb.w

bb.w:                                             ; preds = %_ZN4llvm9BitVectorD2Ev.exit, %bb.t
  %i.be = phi i64 [ %.pre, %_ZN4llvm9BitVectorD2Ev.exit ], [ %i.c, %bb.t ]
  store i64 %i.be, ptr %0, align 8, !tbaa !15
  br label %bb.x

bb.x:                                             ; preds = %_ZN4llvm9BitVectoraSERKS0_.exit, %bb.w, %bb.c, %_ZN4llvm9BitVectorC2ERKS0_.exit
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm14SmallBitVectoroRERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !15     ; 3 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 58
  br label %_ZNK4llvm14SmallBitVector4sizeEv.exit

bb.c:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %i.a to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = load i32, ptr %i.e, align 8, !tbaa !127
  %i.g = zext i32 %i.f to i64
  br label %_ZNK4llvm14SmallBitVector4sizeEv.exit

_ZNK4llvm14SmallBitVector4sizeEv.exit:            ; preds = %bb.b, %bb.c
  %i.h = phi i64 [ %i.c, %bb.b ], [ %i.g, %bb.c ]
  %i.i = load i64, ptr %1, align 8, !tbaa !15     ; 3 uses
end_hunk_1
