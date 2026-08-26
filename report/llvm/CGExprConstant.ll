Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CGExprConstant?download=true
inline.NumInlined: 5733
inline.NumDeleted: 2819
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14GlobalVariableEPNS_8ConstantENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_:bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !569
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !570  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !569  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !565
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !570
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14GlobalVariableEPNS_8ConstantENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !572  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14GlobalVariableEPNS_8ConstantENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14GlobalVariableEPNS_8ConstantENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !667  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !572 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14GlobalVariableEPNS_8ConstantENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !572 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14GlobalVariableEPNS_8ConstantENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !798

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14GlobalVariableEPNS_8ConstantENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !667
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !462
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !462
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !572
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !799

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14GlobalVariableEPNS_8ConstantENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14GlobalVariableEPNS_8ConstantENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !800

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14GlobalVariableEPNS_8ConstantENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !570
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14GlobalVariableEPNS_8ConstantENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14GlobalVariableEPNS_8ConstantENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14GlobalVariableEPNS_8ConstantENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14GlobalVariableEPNS_8ConstantENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !571
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !571
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPNS_14GlobalVariableEPNS_8ConstantENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14GlobalVariableEPNS_8ConstantENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #22
  store i32 0, ptr %i.d, align 4, !tbaa !570
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_14GlobalVariableEPNS_8ConstantENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_14GlobalVariableEPNS_8ConstantENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14GlobalVariableEPNS_8ConstantENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

declare noundef ptr @_ZN5clang11DeclContext16getRedeclContextEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5clang7VarDecl14isLocalVarDeclEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 127
  switch i32 %i.c, label %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit [
    i32 41, label %bb.b
    i32 47, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8 ; 3 uses
  %i.e = and i64 %.0.copyload.i.i.i.i.i.i.i.i, 4
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i to ptr
  br label %_ZNK5clang4Decl21getLexicalDeclContextEv.exit

bb.d:                                             ; preds = %bb.b
  %i.h = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -5
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !451
  br label %_ZNK5clang4Decl21getLexicalDeclContextEv.exit

_ZNK5clang4Decl21getLexicalDeclContextEv.exit:    ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.g, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %.not7.not.not = icmp eq ptr %.0.i.i, null
  br i1 %.not7.not.not, label %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK5clang4Decl21getLexicalDeclContextEv.exit
  %i.l = tail call noundef ptr @_ZN5clang11DeclContext40getEnclosingNonExpansionStatementContextEv(ptr noundef nonnull align 8 dereferenceable(32) %.0.i.i) #22
  %i.m = tail call noundef ptr @_ZN5clang11DeclContext16getRedeclContextEv(ptr noundef nonnull align 8 dereferenceable(32) %i.l) #22
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i16, ptr %i.n, align 8
  %i.p = and i16 %i.o, 127                        ; 2 uses
  %switch.tableidx = add nsw i16 %i.p, -1         ; 2 uses
  %i.q = icmp ult i16 %switch.tableidx, 20
  br i1 %i.q, label %switch.hole_check, label %bb.f

bb.f:                                             ; preds = %switch.hole_check, %bb.e
  %i.r = add nsw i16 %i.p, -35
  %spec.select.i = icmp ult i16 %i.r, 6
  br label %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit

switch.hole_check:                                ; preds = %bb.e
  %switch.maskindex = zext nneg i16 %switch.tableidx to i32
  %switch.shifted = lshr i32 524609, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit, label %bb.f

_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit: ; preds = %switch.hole_check, %_ZNK5clang4Decl21getLexicalDeclContextEv.exit, %bb.f, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %_ZNK5clang4Decl21getLexicalDeclContextEv.exit ], [ %spec.select.i, %bb.f ], [ true, %switch.hole_check ]
  ret i1 %.1
}

declare noundef ptr @_ZN5clang11DeclContext40getEnclosingNonExpansionStatementContextEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare noundef ptr @_ZN5clang7VarDecl7getInitEv(ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

declare i64 @_ZNK5clang10ASTContext14getExtQualTypeEPKNS_4TypeENS_10QualifiersE(ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef, i64) local_unnamed_addr #3

declare { i64, i64 } @_ZNK5clang10ASTContext11getTypeInfoEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN4llvm14ConstantStruct18getTypeForElementsENS_8ArrayRefIPNS_8ConstantEEEb(ptr, i64, i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #3

declare void @_ZNK4llvm5APInt4zextEj(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8, ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) local_unnamed_addr #3

declare void @_ZNK4llvm5APInt5truncEj(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8, ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_124ConstantAggregateBuilder3addEPN4llvm8ConstantEN5clang9CharUnitsEb(ptr noundef nonnull align 8 dereferenceable(561) %0, ptr noundef %1, i64 %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 5 uses
  %3 = alloca [1 x %"class.clang::CharUnits"], align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !438
  %.not = icmp slt i64 %2, %i.c
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !604
  %i.d = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val15 = load ptr, ptr %i.d, align 8, !tbaa !463
  %i.e = getelementptr i8, ptr %.val, i64 200
  %.val.val = load ptr, ptr %i.e, align 8, !tbaa !436
  %i.f = getelementptr inbounds nuw i8, ptr %.val.val, i64 296
  %i.g = tail call i8 @_ZNK4llvm10DataLayout15getABITypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.f, ptr noundef %.val15) #22
  %i.h = zext nneg i8 %i.g to i64                 ; 4 uses
  %i.i = load i64, ptr %i.b, align 8, !tbaa !438  ; 3 uses
  %i.j = icmp ne i64 %i.i, 0
  %i.k = zext i1 %i.j to i64                      ; 2 uses
  %i.l = sub i64 %i.i, %i.k
  %i.m = lshr i64 %i.l, %i.h
  %i.n = add i64 %i.m, %i.k
  %i.o = shl i64 %i.n, %i.h                       ; 2 uses
  %i.p = icmp sgt i64 %i.o, %2
  br i1 %i.p, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ne i64 %2, 0
  %i.r = zext i1 %i.q to i64                      ; 2 uses
  %i.s = sub i64 %2, %i.r
  %i.t = lshr i64 %i.s, %i.h
  %i.u = add i64 %i.t, %i.r
  %i.v = shl i64 %i.u, %i.h
  %.not63 = icmp eq i64 %i.v, %2
  br i1 %.not63, label %bb.d, label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 560
  store i8 0, ptr %i.w, align 8, !tbaa !494
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang9CharUnitsELb1EE9push_backES2_.exit

bb.d:                                             ; preds = %bb.c
  %i.x = icmp slt i64 %i.o, %2
  br i1 %i.x, label %bb.e, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang9CharUnitsELb1EE9push_backES2_.exit

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = sub nsw i64 %2, %i.i                     ; 2 uses
  %.val16 = load ptr, ptr %0, align 8, !tbaa !604 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val16, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !801 ; 2 uses
  %i.ac = icmp sgt i64 %i.z, 1
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = tail call noundef ptr @_ZN4llvm9ArrayType3getEPNS_4TypeEm(ptr noundef %i.ab, i64 noundef %i.z) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i.i = phi ptr [ %i.ad, %bb.f ], [ %i.ab, %bb.e ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val16, i64 152
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !480, !nonnull !22, !align !24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = and i64 %i.ag, 4096
  %.not.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = tail call noundef ptr @_ZN4llvm8Constant12getNullValueEPNS_4TypeE(ptr noundef %.0.i.i) #22
  br label %_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils10getPaddingEN5clang9CharUnitsE.exit

bb.i:                                             ; preds = %bb.g
  %i.aj = tail call noundef ptr @_ZN4llvm10UndefValue3getEPNS_4TypeE(ptr noundef %.0.i.i) #22
  br label %_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils10getPaddingEN5clang9CharUnitsE.exit

_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils10getPaddingEN5clang9CharUnitsE.exit: ; preds = %bb.h, %bb.i
  %.06.i.i = phi ptr [ %i.ai, %bb.h ], [ %i.aj, %bb.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !443 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.an = load i32, ptr %i.am, align 4, !tbaa !474
  %.not.i = icmp ult i32 %i.al, %i.an
  br i1 %.not.i, label %bb.k, label %bb.j, !prof !521

bb.j:                                             ; preds = %_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils10getPaddingEN5clang9CharUnitsE.exit
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef %.06.i.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit

bb.k:                                             ; preds = %_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils10getPaddingEN5clang9CharUnitsE.exit
  %i.ao = zext i32 %i.al to i64
  %i.ap = load ptr, ptr %i.y, align 8, !tbaa !442
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ao
  store ptr %.06.i.i, ptr %i.aq, align 1
  %i.ar = load i32, ptr %i.ak, align 8, !tbaa !443
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.ak, align 8, !tbaa !443
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit: ; preds = %bb.j, %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %.sroa.07.0.copyload = load i64, ptr %i.b, align 8, !tbaa !411 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !443 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !474
  %.not.i21 = icmp ult i32 %i.av, %i.ax
  br i1 %.not.i21, label %bb.m, label %bb.l, !prof !521

bb.l:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang9CharUnitsELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 %.sroa.07.0.copyload)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang9CharUnitsELb1EE9push_backES2_.exit

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit
  %i.ay = zext i32 %i.av to i64
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !442
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ay
  store i64 %.sroa.07.0.copyload, ptr %i.ba, align 1
  %i.bb = load i32, ptr %i.au, align 8, !tbaa !443
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.au, align 8, !tbaa !443
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang9CharUnitsELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIN5clang9CharUnitsELb1EE9push_backES2_.exit: ; preds = %bb.m, %bb.l, %bb.d, %.critedge
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !443 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !474
  %.not.i22 = icmp ult i32 %i.bf, %i.bh
  br i1 %.not.i22, label %bb.o, label %bb.n, !prof !521

bb.n:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang9CharUnitsELb1EE9push_backES2_.exit
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull %1)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit23

bb.o:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang9CharUnitsELb1EE9push_backES2_.exit
  %i.bi = zext i32 %i.bf to i64
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !442
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bi
  store ptr %1, ptr %i.bk, align 1
  %i.bl = load i32, ptr %i.be, align 8, !tbaa !443
  %i.bm = add i32 %i.bl, 1
  store i32 %i.bm, ptr %i.be, align 8, !tbaa !443
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit23

_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit23: ; preds = %bb.n, %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !443 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !474
  %.not.i24 = icmp ult i32 %i.bp, %i.br
  br i1 %.not.i24, label %bb.q, label %bb.p, !prof !521

bb.p:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit23
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang9CharUnitsELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i64 %2)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang9CharUnitsELb1EE9push_backES2_.exit25

bb.q:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit23
  %i.bs = zext i32 %i.bp to i64
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !442
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bs
  store i64 %2, ptr %i.bu, align 1
  %i.bv = load i32, ptr %i.bo, align 8, !tbaa !443
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bo, align 8, !tbaa !443
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang9CharUnitsELb1EE9push_backES2_.exit25

_ZN4llvm23SmallVectorTemplateBaseIN5clang9CharUnitsELb1EE9push_backES2_.exit25: ; preds = %bb.p, %bb.q
  %.val19 = load ptr, ptr %0, align 8, !tbaa !604
  %.val20 = load ptr, ptr %i.d, align 8, !tbaa !463
  %i.bx = getelementptr i8, ptr %.val19, i64 200
  %.val19.val = load ptr, ptr %i.bx, align 8, !tbaa !436
  %i.by = getelementptr inbounds nuw i8, ptr %.val19.val, i64 296
  %i.bz = tail call { i64, i8 } @_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.by, ptr noundef %.val20) #22 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { i64, i8 } %i.bz, 1
  %i.ca = trunc nuw i8 %.fca.1.extract.i.i to i1
  br i1 %i.ca, label %bb.r, label %_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPKN4llvm8ConstantE.exit

bb.r:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang9CharUnitsELb1EE9push_backES2_.exit25
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.2) #26
  unreachable

_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPKN4llvm8ConstantE.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang9CharUnitsELb1EE9push_backES2_.exit25
  %.fca.0.extract.i.i = extractvalue { i64, i8 } %i.bz, 0
  %i.cb = add nsw i64 %.fca.0.extract.i.i, %2
  store i64 %i.cb, ptr %i.b, align 8, !tbaa !411
  br label %bb.ac

bb.s:                                             ; preds = %bb.a
  %i.cc = tail call fastcc { i64, i8 } @_ZN12_GLOBAL__N_124ConstantAggregateBuilder7splitAtEN5clang9CharUnitsE(ptr noundef nonnull align 8 dereferenceable(561) %0, i64 %2) ; 2 uses
  %i.cd = extractvalue { i64, i8 } %i.cc, 0       ; 2 uses
  %i.ce = extractvalue { i64, i8 } %i.cc, 1
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.t, label %bb.ac

bb.t:                                             ; preds = %bb.s
  %.val17 = load ptr, ptr %0, align 8, !tbaa !604
  %i.cg = getelementptr i8, ptr %1, i64 8
  %.val18 = load ptr, ptr %i.cg, align 8, !tbaa !463
  %i.ch = getelementptr i8, ptr %.val17, i64 200
  %.val17.val = load ptr, ptr %i.ch, align 8, !tbaa !436
  %i.ci = getelementptr inbounds nuw i8, ptr %.val17.val, i64 296
  %i.cj = tail call { i64, i8 } @_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.ci, ptr noundef %.val18) #22 ; 2 uses
  %.fca.1.extract.i.i26 = extractvalue { i64, i8 } %i.cj, 1
  %i.ck = trunc nuw i8 %.fca.1.extract.i.i26 to i1
  br i1 %i.ck, label %bb.u, label %_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPKN4llvm8ConstantE.exit28

bb.u:                                             ; preds = %bb.t
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.2) #26
  unreachable

_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPKN4llvm8ConstantE.exit28: ; preds = %bb.t
  %.fca.0.extract.i.i27 = extractvalue { i64, i8 } %i.cj, 0
  %i.cl = add nsw i64 %.fca.0.extract.i.i27, %2   ; 2 uses
  %i.cm = tail call fastcc { i64, i8 } @_ZN12_GLOBAL__N_124ConstantAggregateBuilder7splitAtEN5clang9CharUnitsE(ptr noundef nonnull align 8 dereferenceable(561) %0, i64 %i.cl) ; 2 uses
  %i.cn = extractvalue { i64, i8 } %i.cm, 0       ; 3 uses
  %i.co = extractvalue { i64, i8 } %i.cm, 1
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %.lr.ph.i.i.i, label %bb.ac

.lr.ph.i.i.i:                                     ; preds = %_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPKN4llvm8ConstantE.exit28
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store ptr %1, ptr %i.a, align 8, !tbaa !462
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !442 ; 4 uses
  %.idx = shl nuw nsw i64 %i.cd, 3                ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.idx ; 3 uses
  %.idx4.i = shl nuw nsw i64 %i.cn, 3             ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.idx4.i ; 2 uses
  %i.ct = icmp samesign eq i64 %.idx, %.idx4.i
  br i1 %i.ct, label %12, label %._crit_edge.i.i.i

bb.v:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cw, ptr nonnull align 8 %i.cs, i64 %gepdiff.i, i1 false)
  %.pre.i.i.i.i = load ptr, ptr %i.cq, align 8, !tbaa !442
  br label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE5eraseEPKS2_S5_.exit.i.i.i

bb.w:                                             ; preds = %._crit_edge.i.i.i
  %i.cu = icmp eq i64 %i.da, 1
  br i1 %i.cu, label %bb.x, label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE5eraseEPKS2_S5_.exit.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.cv = load ptr, ptr %i.cs, align 8, !tbaa !462
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !462
  br label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE5eraseEPKS2_S5_.exit.i.i.i

_ZN4llvm15SmallVectorImplIPNS_8ConstantEE5eraseEPKS2_S5_.exit.i.i.i: ; preds = %bb.x, %bb.w, %bb.v
  %5 = phi ptr [ %.pre.i.i.i.i, %bb.v ], [ %i.cr, %bb.w ], [ %i.cr, %bb.x ]
  %6 = getelementptr inbounds i8, ptr %i.cw, i64 %gepdiff.i
  %7 = ptrtoint ptr %6 to i64
  %8 = ptrtoint ptr %5 to i64
  %9 = sub i64 %7, %8
  %10 = lshr exact i64 %9, 3
  %11 = trunc i64 %10 to i32
  store i32 %11, ptr %i.cx, align 8, !tbaa !443
  br label %_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEESt16initializer_listIS4_EEEvRT_mmT0_.exit

12:                                               ; preds = %.lr.ph.i.i.i
  %13 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %14 = call noundef ptr @_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6insertIPKS2_vEEPS2_S7_T_S8_(ptr noundef nonnull align 8 dereferenceable(272) %i.cq, ptr noundef %4, ptr noundef nonnull %i.a, ptr noundef nonnull %13) ; 0 uses
  br label %_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEESt16initializer_listIS4_EEEvRT_mmT0_.exit

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  store ptr %1, ptr %4, align 8, !tbaa !462
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !443
  %i.cz = zext i32 %i.cy to i64
  %i.da = sub nsw i64 %i.cz, %i.cn                ; 3 uses
  %gepdiff.i = shl nsw i64 %i.da, 3               ; 2 uses
  %i.db = icmp sgt i64 %i.da, 1
  br i1 %i.db, label %bb.v, label %bb.w, !prof !521

_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEESt16initializer_listIS4_EEEvRT_mmT0_.exit: ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE5eraseEPKS2_S5_.exit.i.i.i, %12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i64 %2, ptr %3, align 8, !tbaa !411
  %16 = load ptr, ptr %15, align 8, !tbaa !442    ; 4 uses
  %.idx83 = shl nuw nsw i64 %i.cd, 3              ; 2 uses
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 %.idx83 ; 3 uses
  %18 = getelementptr inbounds nuw i8, ptr %16, i64 %.idx4.i ; 2 uses
  %19 = icmp samesign eq i64 %.idx83, %.idx4.i
  br i1 %19, label %bb.ab, label %._crit_edge.i.i.i33

bb.y:                                             ; preds = %._crit_edge.i.i.i33
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dn, ptr nonnull align 8 %18, i64 %gepdiff.i34, i1 false)
  %.pre.i.i.i.i35 = load ptr, ptr %15, align 8, !tbaa !442
  br label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i

bb.z:                                             ; preds = %._crit_edge.i.i.i33
  %i.dc = icmp eq i64 %i.dr, 1
  br i1 %i.dc, label %bb.aa, label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.dd = load i64, ptr %18, align 8, !tbaa !411
  store i64 %i.dd, ptr %i.dn, align 8, !tbaa !411
  br label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i

_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i: ; preds = %bb.aa, %bb.z, %bb.y
  %i.de = phi ptr [ %.pre.i.i.i.i35, %bb.y ], [ %16, %bb.z ], [ %16, %bb.aa ]
  %i.df = getelementptr inbounds i8, ptr %i.dn, i64 %gepdiff.i34
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.de to i64
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = lshr exact i64 %i.di, 3
  %i.dk = trunc i64 %i.dj to i32
  store i32 %i.dk, ptr %i.do, align 8, !tbaa !443
  br label %_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIN5clang9CharUnitsELj32EEESt16initializer_listIS4_EEEvRT_mmT0_.exit

bb.ab:                                            ; preds = %_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEESt16initializer_listIS4_EEEvRT_mmT0_.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dm = call noundef ptr @_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6insertIPKS2_vEEPS2_S7_T_S8_(ptr noundef nonnull align 8 dereferenceable(272) %15, ptr noundef %17, ptr noundef nonnull %3, ptr noundef nonnull %i.dl) ; 0 uses
  br label %_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIN5clang9CharUnitsELj32EEESt16initializer_listIS4_EEEvRT_mmT0_.exit

._crit_edge.i.i.i33:                              ; preds = %_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEESt16initializer_listIS4_EEEvRT_mmT0_.exit
  store i64 %2, ptr %17, align 8, !tbaa !411
  %i.dn = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !443
  %i.dq = zext i32 %i.dp to i64
  %i.dr = sub nsw i64 %i.dq, %i.cn                ; 3 uses
  %gepdiff.i34 = shl nsw i64 %i.dr, 3             ; 2 uses
  %i.ds = icmp sgt i64 %i.dr, 1
  br i1 %i.ds, label %bb.y, label %bb.z, !prof !521

_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIN5clang9CharUnitsELj32EEESt16initializer_listIS4_EEEvRT_mmT0_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.dt = load i64, ptr %i.b, align 8, !tbaa !438
  %.sroa.speculated = call i64 @llvm.smax.i64(i64 %i.dt, i64 %i.cl)
  store i64 %.sroa.speculated, ptr %i.b, align 8, !tbaa !411
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 560
  store i8 0, ptr %i.du, align 8, !tbaa !494
  br label %bb.ac

bb.ac:                                            ; preds = %bb.s, %_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPKN4llvm8ConstantE.exit28, %_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIN5clang9CharUnitsELj32EEESt16initializer_listIS4_EEEvRT_mmT0_.exit, %_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPKN4llvm8ConstantE.exit
  %.2 = phi i1 [ true, %_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPKN4llvm8ConstantE.exit ], [ false, %bb.s ], [ false, %_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPKN4llvm8ConstantE.exit28 ], [ true, %_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIN5clang9CharUnitsELj32EEESt16initializer_listIS4_EEEvRT_mmT0_.exit ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { i64, i8 } @_ZN12_GLOBAL__N_124ConstantAggregateBuilder7splitAtEN5clang9CharUnitsE(ptr noundef nonnull align 8 dereferenceable(561) %0, i64 %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [2 x ptr], align 8                ; 6 uses
  %2 = alloca [2 x %"class.clang::CharUnits"], align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.c = load i64, ptr %i.b, align 8, !tbaa !438
  %.not = icmp slt i64 %1, %i.c
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 32 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 33 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !443  ; 2 uses
  %.not.i40 = icmp eq i32 %i.f, 0
  br i1 %.not.i40, label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exit.thread24, label %_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.lr.ph

_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.lr.ph: ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 23 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 23 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 292 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.s = load i32, ptr %i.r, align 8, !tbaa !443
  %i.t = zext i32 %i.s to i64
  br label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exit.thread24

_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i: ; preds = %_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.lr.ph, %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exit
  %i.u = phi i32 [ %i.f, %_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.lr.ph ], [ %i.ail, %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exit ]
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !442  ; 4 uses
  %i.w = zext i32 %i.u to i64
  br label %_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i

_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, %_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i
  %.017.i.i.i = phi i64 [ %i.w, %_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ] ; 2 uses
  %.01116.i.i.i = phi ptr [ %i.v, %_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i ], [ %.112.i.i.i, %_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ] ; 2 uses
  %i.x = lshr i64 %.017.i.i.i, 1                  ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.01116.i.i.i, i64 %i.x ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !438
  %i.aa = icmp slt i64 %1, %i.z                   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = xor i64 %i.x, -1
  %i.ad = add nsw i64 %.017.i.i.i, %i.ac
  %.112.i.i.i = select i1 %i.aa, ptr %.01116.i.i.i, ptr %i.ab ; 3 uses
  %.1.i.i.i = select i1 %i.aa, i64 %i.x, i64 %i.ad ; 2 uses
  %i.ae = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.ae, label %_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZN4llvm11upper_boundIRNS_11SmallVectorIN5clang9CharUnitsELj32EEERS3_EEDaOT_OT0_.exit, !llvm.loop !802

_ZN4llvm11upper_boundIRNS_11SmallVectorIN5clang9CharUnitsELj32EEERS3_EEDaOT_OT0_.exit: ; preds = %_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %i.af = icmp eq ptr %.112.i.i.i, %i.v
  br i1 %i.af, label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exit.thread24, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11upper_boundIRNS_11SmallVectorIN5clang9CharUnitsELj32EEERS3_EEDaOT_OT0_.exit
  %i.ag = ptrtoint ptr %.112.i.i.i to i64
  %i.ah = ptrtoint ptr %i.v to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 33 uses
  %i.aj = ashr exact i64 %i.ai, 3                 ; 17 uses
  %i.ak = add nsw i64 %i.aj, -1                   ; 6 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ak ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !438
  %i.an = icmp eq i64 %i.am, %1
  br i1 %i.an, label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exit.thread24, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = load ptr, ptr %i.g, align 8, !tbaa !442
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ak
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !462
  %.val = load ptr, ptr %0, align 8, !tbaa !604
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %.val4 = load ptr, ptr %i.ar, align 8, !tbaa !463
  %i.as = getelementptr i8, ptr %.val, i64 200
  %.val.val = load ptr, ptr %i.as, align 8, !tbaa !436
  %i.at = getelementptr inbounds nuw i8, ptr %.val.val, i64 296
  %i.au = call { i64, i8 } @_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.at, ptr noundef %.val4) #22 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { i64, i8 } %i.au, 1
  %i.av = trunc nuw i8 %.fca.1.extract.i.i to i1
  br i1 %i.av, label %bb.e, label %_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPKN4llvm8ConstantE.exit

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.2) #26
  unreachable

_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPKN4llvm8ConstantE.exit: ; preds = %bb.d
  %.fca.0.extract.i.i = extractvalue { i64, i8 } %i.au, 0
  %i.aw = load i64, ptr %i.al, align 8, !tbaa !438
  %i.ax = add nsw i64 %i.aw, %.fca.0.extract.i.i
  %.not28 = icmp sgt i64 %i.ax, %1
  br i1 %.not28, label %bb.f, label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exit.thread24

bb.f:                                             ; preds = %_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPKN4llvm8ConstantE.exit
  store i8 0, ptr %i.h, align 8, !tbaa !494
  %i.ay = load ptr, ptr %i.g, align 8, !tbaa !442 ; 9 uses
  %.idx.i = shl nuw nsw i64 %i.ak, 3              ; 14 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx.i ; 8 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !462 ; 27 uses
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !442 ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ak
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !411 ; 41 uses
  %i.be = load i8, ptr %i.ba, align 8, !tbaa !642 ; 4 uses
  %i.bf = add i8 %i.be, -14
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.bf, -3
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %bb.bn, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 4 ; 16 uses
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = and i32 %i.bh, 268435455                ; 6 uses
  %i.bj = zext nneg i32 %i.bi to i64              ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ai ; 2 uses
  %i.bl = icmp eq i32 %i.bi, 0
  br i1 %i.bl, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.preheader.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %bb.g
  %i.bm = sub nsw i64 0, %i.bj
  %i.bn = getelementptr inbounds [32 x i8], ptr %i.ba, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !560
  store ptr %i.bo, ptr %i.az, align 8, !tbaa !462
  %i.bp = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bq = icmp eq i32 %i.bi, 1
  br i1 %i.bq, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.1.i

._crit_edge.i.i.i.i:                              ; preds = %bb.z, %.lr.ph.i.i.i.preheader.i, %bb.g
  %.0.lcssa.i.i.i.i = phi ptr [ %i.az, %bb.g ], [ %i.bp, %.lr.ph.i.i.i.preheader.i ], [ %i.ir, %bb.z ] ; 3 uses
  %i.br = load i32, ptr %i.i, align 8, !tbaa !443
  %i.bs = zext i32 %i.br to i64
  %i.bt = sub nsw i64 %i.bs, %i.aj                ; 3 uses
  %gepdiff.i.i = shl nsw i64 %i.bt, 3             ; 2 uses
  %i.bu = icmp sgt i64 %i.bt, 1
  br i1 %i.bu, label %bb.h, label %bb.i, !prof !521

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.0.lcssa.i.i.i.i, ptr nonnull align 8 %i.bk, i64 %gepdiff.i.i, i1 false)
  %.pre.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !442
  br label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE5eraseEPKS2_S5_.exit.i.i.i.i

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bv = icmp eq i64 %i.bt, 1
  br i1 %i.bv, label %bb.j, label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE5eraseEPKS2_S5_.exit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.bw = load ptr, ptr %i.bk, align 8, !tbaa !462
  store ptr %i.bw, ptr %.0.lcssa.i.i.i.i, align 8, !tbaa !462
  br label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE5eraseEPKS2_S5_.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIPNS_8ConstantEE5eraseEPKS2_S5_.exit.i.i.i.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.bx = phi ptr [ %.pre.i.i.i.i.i, %bb.h ], [ %i.ay, %bb.i ], [ %i.ay, %bb.j ]
  %i.by = getelementptr inbounds i8, ptr %.0.lcssa.i.i.i.i, i64 %gepdiff.i.i
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bx to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = lshr exact i64 %i.cb, 3
  %i.cd = trunc i64 %i.cc to i32
  br label %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i.sink.split"

bb.k:                                             ; preds = %.lr.ph.i.i.i.1.i
  %i.ce = load i32, ptr %i.i, align 8, !tbaa !443 ; 3 uses
  %i.cf = zext i32 %i.ce to i64                   ; 4 uses
  %i.cg = icmp samesign eq i64 %i.aj, %i.cf
  %i.ch = add nsw i64 %i.bj, -1                   ; 12 uses
  %i.ci = add nuw nsw i64 %i.ch, %i.cf            ; 3 uses
  %i.cj = load i32, ptr %i.j, align 4, !tbaa !474
  %i.ck = zext i32 %i.cj to i64
  %i.cl = icmp samesign ugt i64 %i.ci, %i.ck      ; 2 uses
  br i1 %i.cg, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  br i1 %i.cl, label %bb.m, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

end_hunk_0
