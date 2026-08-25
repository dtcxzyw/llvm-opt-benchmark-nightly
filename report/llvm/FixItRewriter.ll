Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/FixItRewriter?download=true
begin_hunk_0_@_ZN5clang13FixItRewriterD2Ev:bb.a
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !90   ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5clang18DiagnosticConsumerESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5clang18DiagnosticConsumerEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5clang18DiagnosticConsumerEEclEPS1_.exit.i: ; preds = %bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #20, !inline_history !127
  br label %_ZNSt10unique_ptrIN5clang18DiagnosticConsumerESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5clang18DiagnosticConsumerESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5clang18DiagnosticConsumerEEclEPS1_.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !61
  tail call void @_ZNSt8_Rb_treeIN5clang6FileIDESt4pairIKS1_N4llvm13RewriteBufferEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN5clang4edit12EditedSourceD2Ev(ptr noundef nonnull align 8 dead_on_return(352) dereferenceable(352) %i.o) #20
  tail call void @_ZN5clang18DiagnosticConsumerD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #20
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang4edit12EditedSourceD2Ev(ptr noundef nonnull align 8 dead_on_return(352) dereferenceable(352) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.c) #20
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !128
  tail call void @free(ptr noundef %i.d) #20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4llvm11SmallVectorISt4pairIN5clang14SourceLocationENS2_4edit12EditedSource11MacroArgUseEELj2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.f) #20
  br label %_ZN4llvm11SmallVectorISt4pairIN5clang14SourceLocationENS2_4edit12EditedSource11MacroArgUseEELj2EED2Ev.exit

_ZN4llvm11SmallVectorISt4pairIN5clang14SourceLocationENS2_4edit12EditedSource11MacroArgUseEELj2EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !129  ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZN4llvm8DenseMapIN5clang14SourceLocationENS_11SmallVectorINS1_4edit12EditedSource11MacroArgUseELj2EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %_ZN4llvm11SmallVectorISt4pairIN5clang14SourceLocationENS2_4edit12EditedSource11MacroArgUseEELj2EED2Ev.exit
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !130
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !131
  %i.p = zext i32 %i.k to i64
  %i.q = add nuw nsw i64 %i.p, 31
  %i.r = lshr i64 %i.q, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.i
  %i.t = load i32, ptr %i.s, align 4, !tbaa !132  ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.t, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.u = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.c

bb.c:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang14SourceLocationENS_11SmallVectorINS2_4edit12EditedSource11MacroArgUseELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.t, %.lr.ph.i.i ], [ %i.ae, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang14SourceLocationENS_11SmallVectorINS2_4edit12EditedSource11MacroArgUseELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.v = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.w = or disjoint i32 %i.v, %i.u
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [56 x i8], ptr %i.m, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !64  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang14SourceLocationENS_11SmallVectorINS2_4edit12EditedSource11MacroArgUseELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.aa) #20
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang14SourceLocationENS_11SmallVectorINS2_4edit12EditedSource11MacroArgUseELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang14SourceLocationENS_11SmallVectorINS2_4edit12EditedSource11MacroArgUseELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.d, %bb.c
  %i.ad = add i32 %.0.i3.i.i, -1
  %i.ae = and i32 %i.ad, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.c, !llvm.loop !133

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang14SourceLocationENS_11SmallVectorINS2_4edit12EditedSource11MacroArgUseELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.r
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang14SourceLocationENS_11SmallVectorINS2_4edit12EditedSource11MacroArgUseELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !135

_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang14SourceLocationENS_11SmallVectorINS2_4edit12EditedSource11MacroArgUseELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.j, align 4, !tbaa !129 ; 2 uses
  %i.af = icmp eq i32 %.pr.i, 0
  br i1 %i.af, label %_ZN4llvm8DenseMapIN5clang14SourceLocationENS_11SmallVectorINS1_4edit12EditedSource11MacroArgUseELj2EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang14SourceLocationENS_11SmallVectorINS2_4edit12EditedSource11MacroArgUseELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEv.exit.i
  %i.ag = load ptr, ptr %i.i, align 8, !tbaa !130
  %i.ah = zext i32 %.pr.i to i64                  ; 2 uses
  %i.ai = mul nuw nsw i64 %i.ah, 56
  %i.aj = add nuw nsw i64 %i.ah, 31
  %i.ak = lshr i64 %i.aj, 3
  %i.al = and i64 %i.ak, 1073741820
  %i.am = add nuw nsw i64 %i.al, %i.ai
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ag, i64 noundef %i.am, i64 noundef 8) #20
  br label %_ZN4llvm8DenseMapIN5clang14SourceLocationENS_11SmallVectorINS1_4edit12EditedSource11MacroArgUseELj2EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev.exit

_ZN4llvm8DenseMapIN5clang14SourceLocationENS_11SmallVectorINS1_4edit12EditedSource11MacroArgUseELj2EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorISt4pairIN5clang14SourceLocationENS2_4edit12EditedSource11MacroArgUseEELj2EED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang14SourceLocationENS_11SmallVectorINS2_4edit12EditedSource11MacroArgUseELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEv.exit.i, %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !61
  tail call void @_ZNSt8_Rb_treeIN5clang4edit10FileOffsetESt4pairIKS2_NS1_12EditedSource8FileEditEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef %i.ap)
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5clang18DiagnosticConsumerD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang13FixItRewriterD0Ev(ptr noundef nonnull align 8 dereferenceable(469) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN5clang13FixItRewriterD1Ev(ptr noundef nonnull align 8 dead_on_return(469) dereferenceable(469) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 472) #21
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang13FixItRewriter14WriteFixedFileENS_6FileIDERN4llvm11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(469) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i.i, label %_ZN4llvm11raw_ostream5flushEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.e = load i32, ptr %i.d, align 4, !tbaa !136
  %i.f = icmp slt i32 %i.e, %1                    ; 2 uses
  %.19.i.i.i.i = select i1 %i.f, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !138 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeIN5clang6FileIDESt4pairIKS1_N4llvm13RewriteBufferEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !139

_ZNKSt8_Rb_treeIN5clang6FileIDESt4pairIKS1_N4llvm13RewriteBufferEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.g = icmp eq ptr %.19.i.i.i.i, %i.c
  br i1 %i.g, label %_ZN4llvm11raw_ostream5flushEv.exit, label %_ZNKSt3mapIN5clang6FileIDEN4llvm13RewriteBufferESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i

_ZNKSt3mapIN5clang6FileIDEN4llvm13RewriteBufferESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i: ; preds = %_ZNKSt8_Rb_treeIN5clang6FileIDESt4pairIKS1_N4llvm13RewriteBufferEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.i = load i32, ptr %i.h, align 4, !tbaa !136
  %i.j = icmp slt i32 %1, %i.i
  br i1 %i.j, label %_ZN4llvm11raw_ostream5flushEv.exit, label %_ZNK5clang8Rewriter19getRewriteBufferForENS_6FileIDE.exit

_ZNK5clang8Rewriter19getRewriteBufferForENS_6FileIDE.exit: ; preds = %_ZNKSt3mapIN5clang6FileIDEN4llvm13RewriteBufferESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.l = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK4llvm13RewriteBuffer5writeERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %2) #20 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !140
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !144
  %.not.i = icmp eq ptr %i.n, %i.p
  br i1 %.not.i, label %_ZN4llvm11raw_ostream5flushEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK5clang8Rewriter19getRewriteBufferForENS_6FileIDE.exit
  tail call void @_ZN4llvm11raw_ostream14flush_nonemptyEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #20
  br label %_ZN4llvm11raw_ostream5flushEv.exit

_ZN4llvm11raw_ostream5flushEv.exit:               ; preds = %_ZNKSt3mapIN5clang6FileIDEN4llvm13RewriteBufferESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i, %bb.a, %_ZNKSt8_Rb_treeIN5clang6FileIDESt4pairIKS1_N4llvm13RewriteBufferEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i, %bb.b, %_ZNK5clang8Rewriter19getRewriteBufferForENS_6FileIDE.exit
  %.not9 = phi i1 [ false, %bb.b ], [ false, %_ZNK5clang8Rewriter19getRewriteBufferForENS_6FileIDE.exit ], [ true, %_ZNKSt8_Rb_treeIN5clang6FileIDESt4pairIKS1_N4llvm13RewriteBufferEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i ], [ true, %bb.a ], [ true, %_ZNKSt3mapIN5clang6FileIDEN4llvm13RewriteBufferESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i ]
  ret i1 %.not9
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZNK4llvm13RewriteBuffer5writeERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang13FixItRewriter15WriteFixedFilesEPSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(469) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i8, align 1                       ; 7 uses
  %2 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 4 uses
  %3 = alloca %"class.(anonymous namespace)::RewritesReceiver", align 8 ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::error_code", align 8   ; 7 uses
  %7 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %9 = alloca %"struct.std::pair.180", align 8    ; 13 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.g = load i32, ptr %i.f, align 8, !tbaa !88
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !79
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 9
  %i.k = load i8, ptr %i.j, align 1, !tbaa !145, !range !147, !noundef !125
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !124, !nonnull !125, !align !126
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !123
  tail call void @_ZN5clang17DiagnosticsEngine9setClientEPNS_18DiagnosticConsumerEb(ptr noundef nonnull align 8 dereferenceable(15256) %i.n, ptr noundef %i.p, i1 noundef zeroext false) #20
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !124, !nonnull !125, !align !126
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %2, ptr noundef nonnull align 8 dereferenceable(15256) %i.q, i32 0, i32 noundef 865) #20
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %2) #20
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !124, !nonnull !125, !align !126
  call void @_ZN5clang17DiagnosticsEngine9setClientEPNS_18DiagnosticConsumerEb(ptr noundef nonnull align 8 dereferenceable(15256) %i.r, ptr noundef nonnull align 8 dereferenceable(469) %0, i1 noundef zeroext false) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.aj

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN12_GLOBAL__N_116RewritesReceiverE, i64 16), ptr %3, align 8, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !148
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_ZN5clang4edit12EditedSource13applyRewritesERNS0_13EditsReceiverEb(ptr noundef nonnull align 8 dereferenceable(352) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext true) #20
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !79
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i8, ptr %i.x, align 8, !tbaa !150, !range !147, !noundef !125
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = call noundef zeroext i1 @_ZN5clang8Rewriter21overwriteChangedFilesEv(ptr noundef nonnull align 8 dereferenceable(64) %i.s) #20 ; 0 uses
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !62 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %.not5658 = icmp eq ptr %i.ac, %i.ad
  br i1 %.not5658, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %.not7 = icmp eq ptr %1, null
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 10 uses
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 10 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 10 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %.sroa.049.059 = phi ptr [ %i.ac, %.lr.ph ], [ %i.gs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ] ; 3 uses
  %i.av = load ptr, ptr %i.s, align 8, !tbaa !67  ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.049.059, i64 32
  %.sroa.0.0.copyload = load i32, ptr %i.aw, align 8, !tbaa !132 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i8 0, ptr %i.d, align 1, !tbaa !151
  %i.ax = add i32 %.sroa.0.0.copyload, 1
  %or.cond.i.i.i.i.i = icmp ult i32 %i.ax, 2
  br i1 %or.cond.i.i.i.i.i, label %_ZN5clang13SourceManager18getSLocEntryOrNullENS_6FileIDE.exit.thread.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = icmp slt i32 %.sroa.0.0.copyload, 0
  br i1 %i.ay, label %bb.i, label %_ZN5clang13SourceManager18getSLocEntryOrNullENS_6FileIDE.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.az = sub nuw nsw i32 -2, %.sroa.0.0.copyload ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 328
  %i.bb = lshr i32 %i.az, 6
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bc
  %i.bf = and i32 %i.az, 63
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !152
  %i.bh = zext nneg i32 %i.bf to i64
  %i.bi = shl nuw i64 1, %i.bh
  %i.bj = and i64 %i.bg, %i.bi
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.av, i64 272
  %i.bl = zext nneg i32 %i.az to i64
  %i.bm = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4llvm11PagedVectorIN5clang6SrcMgr9SLocEntryELm32EEixEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, i64 noundef %i.bl)
  br label %_ZN5clang13SourceManager18getSLocEntryOrNullENS_6FileIDE.exit.thread10.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.bn = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5clang13SourceManager13loadSLocEntryEjPb(ptr noundef nonnull align 8 dereferenceable(776) %i.av, i32 noundef %i.az, ptr noundef nonnull %i.d) #20
  %.pre.i.i.i.i = load i8, ptr %i.d, align 1, !tbaa !151, !range !147
  %i.bo = trunc nuw i8 %.pre.i.i.i.i to i1
  br i1 %i.bo, label %_ZN5clang13SourceManager18getSLocEntryOrNullENS_6FileIDE.exit.thread.i.i.i, label %_ZN5clang13SourceManager18getSLocEntryOrNullENS_6FileIDE.exit.thread10.i.i.i

_ZN5clang13SourceManager18getSLocEntryOrNullENS_6FileIDE.exit.thread.i.i.i: ; preds = %bb.k, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %_ZNK5clang13SourceManager20getFileEntryRefForIDENS_6FileIDE.exit

_ZN5clang13SourceManager18getSLocEntryOrNullENS_6FileIDE.exit.thread10.i.i.i: ; preds = %bb.k, %bb.j
  %.ph.i.i.i = phi ptr [ %i.bm, %bb.j ], [ %i.bn, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %bb.l

_ZN5clang13SourceManager18getSLocEntryOrNullENS_6FileIDE.exit.i.i.i: ; preds = %bb.h
  %i.bp = getelementptr inbounds nuw i8, ptr %i.av, i64 192
  %i.bq = zext nneg i32 %.sroa.0.0.copyload to i64
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !64 ; 2 uses
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.br, i64 %i.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  %.not.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i, label %_ZNK5clang13SourceManager20getFileEntryRefForIDENS_6FileIDE.exit, label %bb.l

bb.l:                                             ; preds = %_ZN5clang13SourceManager18getSLocEntryOrNullENS_6FileIDE.exit.i.i.i, %_ZN5clang13SourceManager18getSLocEntryOrNullENS_6FileIDE.exit.thread10.i.i.i
  %i.bt = phi ptr [ %.ph.i.i.i, %_ZN5clang13SourceManager18getSLocEntryOrNullENS_6FileIDE.exit.thread10.i.i.i ], [ %i.bs, %_ZN5clang13SourceManager18getSLocEntryOrNullENS_6FileIDE.exit.i.i.i ] ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8
  %i.bv = icmp sgt i32 %i.bu, -1
  br i1 %i.bv, label %bb.m, label %_ZNK5clang13SourceManager20getFileEntryRefForIDENS_6FileIDE.exit

bb.m:                                             ; preds = %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.bw, align 8
  %i.bx = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = inttoptr i64 %i.ca to ptr
  br label %_ZNK5clang13SourceManager20getFileEntryRefForIDENS_6FileIDE.exit

_ZNK5clang13SourceManager20getFileEntryRefForIDENS_6FileIDE.exit: ; preds = %_ZN5clang13SourceManager18getSLocEntryOrNullENS_6FileIDE.exit.thread.i.i.i, %_ZN5clang13SourceManager18getSLocEntryOrNullENS_6FileIDE.exit.i.i.i, %bb.l, %bb.m
  %.sroa.0.1.i = phi ptr [ %i.cb, %bb.m ], [ null, %bb.l ], [ null, %_ZN5clang13SourceManager18getSLocEntryOrNullENS_6FileIDE.exit.thread.i.i.i ], [ null, %_ZN5clang13SourceManager18getSLocEntryOrNullENS_6FileIDE.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.cc = load ptr, ptr %i.v, align 8, !tbaa !79  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %_ZNK5clang13SourceManager20getFileEntryRefForIDENS_6FileIDE.exit
  %.05.i.i = phi ptr [ %.sroa.0.1.i, %_ZNK5clang13SourceManager20getFileEntryRefForIDENS_6FileIDE.exit ], [ %i.cg, %bb.n ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.cd, align 8 ; 2 uses
  %i.ce = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ce, 0
  %i.cf = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -5 ; 2 uses
  %i.cg = inttoptr i64 %i.cf to ptr
  %.not7.i.i = icmp eq i64 %i.cf, 0
  %.not.i.i = or i1 %.not.i.i.i.i.i.i, %.not7.i.i
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.o:                                             ; preds = %bb.n
  %i.ch = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %i.ci = load i64, ptr %.05.i.i, align 8, !tbaa !153 ; 4 uses
  store ptr %i.ae, ptr %5, align 8, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i64 %i.ci, ptr %i.c, align 8, !tbaa !152
  %i.cj = icmp ugt i64 %i.ci, 15
  br i1 %i.cj, label %bb.p, label %._crit_edge.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.ck = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #20 ; 2 uses
  store ptr %i.ck, ptr %5, align 8, !tbaa !157
  %i.cl = load i64, ptr %i.c, align 8, !tbaa !152
  store i64 %i.cl, ptr %i.ae, align 8, !tbaa !159
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.p, %bb.o
  %i.cm = phi ptr [ %i.ck, %bb.p ], [ %i.ae, %bb.o ] ; 2 uses
  switch i64 %i.ci, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i.i
  %i.cn = load i8, ptr %i.ch, align 8, !tbaa !159
  store i8 %i.cn, ptr %i.cm, align 1, !tbaa !159
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

bb.r:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cm, ptr nonnull align 1 %i.ch, i64 %i.ci, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.q, %bb.r
  %i.co = load i64, ptr %i.c, align 8, !tbaa !152 ; 2 uses
  store i64 %i.co, ptr %i.af, align 8, !tbaa !160
  %i.cp = load ptr, ptr %5, align 8, !tbaa !157
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.co
  store i8 0, ptr %i.cq, align 1, !tbaa !159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.cr = load ptr, ptr %i.cc, align 8, !tbaa !11
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(12) %i.cc, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.e) #20
  %i.cu = load ptr, ptr %5, align 8, !tbaa !157   ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.ae
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  %i.cw = load i64, ptr %i.ae, align 8, !tbaa !159
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store i32 0, ptr %6, align 8, !tbaa !161
  %i.cy = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #22
  store ptr %i.cy, ptr %i.ag, align 8, !tbaa !164
  %i.cz = load i32, ptr %i.e, align 4, !tbaa !132 ; 2 uses
  %.not6 = icmp eq i32 %i.cz, -1
  %i.da = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #23 ; 8 uses
  br i1 %.not6, label %_ZNSt10unique_ptrIN4llvm14raw_fd_ostreamESt14default_deleteIS1_EE5resetEPS1_.exit11, label %_ZNSt10unique_ptrIN4llvm14raw_fd_ostreamESt14default_deleteIS1_EE5resetEPS1_.exit

_ZNSt10unique_ptrIN4llvm14raw_fd_ostreamESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZN4llvm14raw_fd_ostreamC1EibbNS_11raw_ostream11OStreamKindE(ptr noundef nonnull align 8 dereferenceable(96) %i.da, i32 noundef %i.cz, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 0) #20
  br label %bb.s

_ZNSt10unique_ptrIN4llvm14raw_fd_ostreamESt14default_deleteIS1_EE5resetEPS1_.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.db = load ptr, ptr %4, align 8, !tbaa !157
  %i.dc = load i64, ptr %i.ah, align 8, !tbaa !160
  call void @_ZN4llvm14raw_fd_ostreamC1ENS_9StringRefERSt10error_codeNS_3sys2fs9OpenFlagsE(ptr noundef nonnull align 8 dereferenceable(96) %i.da, ptr %i.db, i64 %i.dc, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef 0) #20
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt10unique_ptrIN4llvm14raw_fd_ostreamESt14default_deleteIS1_EE5resetEPS1_.exit11, %_ZNSt10unique_ptrIN4llvm14raw_fd_ostreamESt14default_deleteIS1_EE5resetEPS1_.exit
  %i.dd = load i32, ptr %6, align 8, !tbaa !161
  %.not57 = icmp eq i32 %i.dd, 0
  br i1 %.not57, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.de = load ptr, ptr %i.ai, align 8, !tbaa !124, !nonnull !125, !align !126
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %7, ptr noundef nonnull align 8 dereferenceable(15256) %i.de, i32 0, i32 noundef 747) #20
  %i.df = load ptr, ptr %4, align 8, !tbaa !157
  %i.dg = load i64, ptr %i.ah, align 8, !tbaa !160
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %7, ptr %i.df, i64 %i.dg)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.dh = load ptr, ptr %i.ag, align 8, !tbaa !164, !noalias !165 ; 2 uses
  %i.di = load i32, ptr %6, align 8, !tbaa !161, !noalias !165
  %i.dj = load ptr, ptr %i.dh, align 8, !tbaa !11, !noalias !165
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !noalias !165
  call void %i.dl(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.dh, i32 noundef %i.di) #20, !inline_history !168
  %i.dm = load ptr, ptr %8, align 8, !tbaa !157
  %i.dn = load i64, ptr %i.aj, align 8, !tbaa !160
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %7, ptr %i.dm, i64 %i.dn)
  %i.do = load ptr, ptr %8, align 8, !tbaa !157   ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.ak
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.t
  %i.dq = load i64, ptr %i.ak, align 8, !tbaa !159
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %_ZNSt10unique_ptrIN4llvm14raw_fd_ostreamESt14default_deleteIS1_EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.049.059, i64 40
  %i.dt = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK4llvm13RewriteBuffer5writeERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(32) %i.ds, ptr noundef nonnull align 8 dereferenceable(48) %i.da) #20 ; 0 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !140
  %i.dw = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !144
  %.not.i = icmp eq ptr %i.dv, %i.dx
  br i1 %.not.i, label %_ZN4llvm11raw_ostream5flushEv.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZN4llvm11raw_ostream14flush_nonemptyEv(ptr noundef nonnull align 8 dereferenceable(48) %i.da) #20
  br label %_ZN4llvm11raw_ostream5flushEv.exit

_ZN4llvm11raw_ostream5flushEv.exit:               ; preds = %bb.u, %bb.v
  br i1 %.not7, label %_ZNSt10unique_ptrIN4llvm14raw_fd_ostreamESt14default_deleteIS1_EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm11raw_ostream5flushEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %bb.w
  %.05.i.i15 = phi ptr [ %.sroa.0.1.i, %bb.w ], [ %i.eb, %bb.x ] ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.05.i.i15, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i16 = load i64, ptr %i.dy, align 8 ; 2 uses
  %i.dz = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i16, 4
  %.not.i.i.i.i.i.i17 = icmp eq i64 %i.dz, 0
  %i.ea = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i16, -5 ; 2 uses
  %i.eb = inttoptr i64 %i.ea to ptr
  %.not7.i.i18 = icmp eq i64 %i.ea, 0
  %.not.i.i19 = or i1 %.not.i.i.i.i.i.i17, %.not7.i.i18
  br i1 %.not.i.i19, label %bb.y, label %bb.x

bb.y:                                             ; preds = %bb.x
  %i.ec = getelementptr inbounds nuw i8, ptr %.05.i.i15, i64 32 ; 2 uses
  %i.ed = load i64, ptr %.05.i.i15, align 8, !tbaa !153 ; 4 uses
  store ptr %i.al, ptr %10, align 8, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 %i.ed, ptr %i.b, align 8, !tbaa !152
  %i.ee = icmp ugt i64 %i.ed, 15
  br i1 %i.ee, label %bb.z, label %._crit_edge.i.i.i.i24

bb.z:                                             ; preds = %bb.y
  %i.ef = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #20 ; 2 uses
  store ptr %i.ef, ptr %10, align 8, !tbaa !157
  %i.eg = load i64, ptr %i.b, align 8, !tbaa !152
  store i64 %i.eg, ptr %i.al, align 8, !tbaa !159
  br label %._crit_edge.i.i.i.i24

._crit_edge.i.i.i.i24:                            ; preds = %bb.z, %bb.y
  %i.eh = phi ptr [ %i.ef, %bb.z ], [ %i.al, %bb.y ] ; 2 uses
  switch i64 %i.ed, label %bb.ab [
    i64 1, label %bb.aa
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit25
  ]

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i24
  %i.ei = load i8, ptr %i.ec, align 8, !tbaa !159
  store i8 %i.ei, ptr %i.eh, align 1, !tbaa !159
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit25

bb.ab:                                            ; preds = %._crit_edge.i.i.i.i24
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eh, ptr nonnull align 1 %i.ec, i64 %i.ed, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit25: ; preds = %._crit_edge.i.i.i.i24, %bb.aa, %bb.ab
  %i.ej = load i64, ptr %i.b, align 8, !tbaa !152 ; 2 uses
  store i64 %i.ej, ptr %i.am, align 8, !tbaa !160
  %i.ek = load ptr, ptr %10, align 8, !tbaa !157
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ej
  store i8 0, ptr %i.el, align 1, !tbaa !159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !169)
  store ptr %i.an, ptr %9, align 8, !tbaa !155, !alias.scope !169
  %i.em = load ptr, ptr %10, align 8, !tbaa !157, !noalias !169 ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.al
  br i1 %i.en, label %bb.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit25
  %i.eo = load i64, ptr %i.am, align 8, !tbaa !160, !noalias !169 ; 3 uses
  %i.ep = icmp ult i64 %i.eo, 16
  call void @llvm.assume(i1 %i.ep)
  %i.eq = add nuw nsw i64 %i.eo, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.an, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.eq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit25
  store ptr %i.em, ptr %9, align 8, !tbaa !157, !alias.scope !169
  %i.er = load i64, ptr %i.al, align 8, !tbaa !159, !noalias !169
  store i64 %i.er, ptr %i.an, align 8, !tbaa !159, !alias.scope !169
  %.pre.i = load i64, ptr %i.am, align 8, !tbaa !160, !noalias !169
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.ac
  %i.es = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.eo, %bb.ac ]
  store i64 %i.es, ptr %i.ao, align 8, !tbaa !160, !alias.scope !169
  store ptr %i.al, ptr %10, align 8, !tbaa !157, !noalias !169
  store i64 0, ptr %i.am, align 8, !tbaa !160, !noalias !169
  store i8 0, ptr %i.al, align 8, !tbaa !159, !noalias !169
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !155, !alias.scope !169
  %i.et = load ptr, ptr %4, align 8, !tbaa !157, !noalias !169 ; 2 uses
  %i.eu = load i64, ptr %i.ah, align 8, !tbaa !160, !noalias !169 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20, !noalias !169
  store i64 %i.eu, ptr %i.a, align 8, !tbaa !152, !noalias !169
  %i.ev = icmp ugt i64 %i.eu, 15
  br i1 %i.ev, label %bb.ad, label %._crit_edge.i.i.i.i26

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ew = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #20 ; 2 uses
  store ptr %i.ew, ptr %i.ap, align 8, !tbaa !157, !alias.scope !169
  %i.ex = load i64, ptr %i.a, align 8, !tbaa !152, !noalias !169
  store i64 %i.ex, ptr %i.aq, align 8, !tbaa !159, !alias.scope !169
  br label %._crit_edge.i.i.i.i26

._crit_edge.i.i.i.i26:                            ; preds = %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ey = phi ptr [ %i.ew, %bb.ad ], [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ] ; 2 uses
  switch i64 %i.eu, label %bb.af [
    i64 1, label %bb.ae
    i64 0, label %_ZSt9make_pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_.exit
  ]

bb.ae:                                            ; preds = %._crit_edge.i.i.i.i26
  %i.ez = load i8, ptr %i.et, align 1, !tbaa !159
  store i8 %i.ez, ptr %i.ey, align 1, !tbaa !159
  br label %_ZSt9make_pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_.exit

bb.af:                                            ; preds = %._crit_edge.i.i.i.i26
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ey, ptr align 1 %i.et, i64 %i.eu, i1 false)
  br label %_ZSt9make_pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_.exit

_ZSt9make_pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_.exit: ; preds = %._crit_edge.i.i.i.i26, %bb.ae, %bb.af
  %i.fa = load i64, ptr %i.a, align 8, !tbaa !152, !noalias !169 ; 2 uses
  store i64 %i.fa, ptr %i.ar, align 8, !tbaa !160, !alias.scope !169
  %i.fb = load ptr, ptr %i.ap, align 8, !tbaa !157, !alias.scope !169
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fa
  store i8 0, ptr %i.fc, align 1, !tbaa !159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !169
  %i.fd = load ptr, ptr %i.as, align 8, !tbaa !172 ; 9 uses
  %i.fe = load ptr, ptr %i.at, align 8, !tbaa !175
  %.not.i.i27 = icmp eq ptr %i.fd, %i.fe
  br i1 %.not.i.i27, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZSt9make_pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_.exit
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 16 ; 3 uses
  store ptr %i.ff, ptr %i.fd, align 8, !tbaa !155
  %i.fg = load ptr, ptr %9, align 8, !tbaa !157   ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.an
  br i1 %i.fh, label %bb.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.fi = load i64, ptr %i.ao, align 8, !tbaa !160 ; 3 uses
  %i.fj = icmp ult i64 %i.fi, 16
  call void @llvm.assume(i1 %i.fj)
  %i.fk = add nuw nsw i64 %i.fi, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ff, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.fk, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ag
  store ptr %i.fg, ptr %i.fd, align 8, !tbaa !157
  %i.fl = load i64, ptr %i.an, align 8, !tbaa !159
  store i64 %i.fl, ptr %i.ff, align 8, !tbaa !159
  %.pre = load i64, ptr %i.ao, align 8, !tbaa !160
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.ah
  %i.fm = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.fi, %bb.ah ]
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store i64 %i.fm, ptr %i.fn, align 8, !tbaa !160
  store ptr %i.an, ptr %9, align 8, !tbaa !157
  store i64 0, ptr %i.ao, align 8, !tbaa !160
  store i8 0, ptr %i.an, align 8, !tbaa !159
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fd, i64 32 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fd, i64 48 ; 3 uses
  store ptr %i.fp, ptr %i.fo, align 8, !tbaa !155
  %i.fq = load ptr, ptr %i.ap, align 8, !tbaa !157 ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.aq
  br i1 %i.fr, label %bb.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %i.fs = load i64, ptr %i.ar, align 8, !tbaa !160 ; 3 uses
  %i.ft = icmp ult i64 %i.fs, 16
  call void @llvm.assume(i1 %i.ft)
  %i.fu = add nuw nsw i64 %i.fs, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fp, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %i.fu, i1 false)
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  store ptr %i.fq, ptr %i.fo, align 8, !tbaa !157
  %i.fv = load i64, ptr %i.aq, align 8, !tbaa !159
  store i64 %i.fv, ptr %i.fp, align 8, !tbaa !159
  %.pre60 = load i64, ptr %i.ar, align 8, !tbaa !160
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i
  %i.fw = phi i64 [ %.pre60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i ], [ %i.fs, %bb.ai ]
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fd, i64 40
  store i64 %i.fw, ptr %i.fx, align 8, !tbaa !160
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !157
  store i64 0, ptr %i.ar, align 8, !tbaa !160
  store i8 0, ptr %i.aq, align 8, !tbaa !159
  %i.fy = load ptr, ptr %i.as, align 8, !tbaa !172
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 64
  store ptr %i.fz, ptr %i.as, align 8, !tbaa !172
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit: ; preds = %_ZSt9make_pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_.exit
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.fd, ptr noundef nonnull align 8 dereferenceable(64) %9)
  %.pre61 = load ptr, ptr %i.ap, align 8, !tbaa !157 ; 2 uses
  %i.ga = icmp eq ptr %.pre61, %i.aq
  br i1 %i.ga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i28: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit
  %i.gb = load i64, ptr %i.aq, align 8, !tbaa !159
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %.pre61, i64 noundef %i.gc) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i28
  %i.gd = load ptr, ptr %9, align 8, !tbaa !157   ; 2 uses
  %i.ge = icmp eq ptr %i.gd, %i.an
  br i1 %i.ge, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.gf = load i64, ptr %i.an, align 8, !tbaa !159
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gg) #21
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.gh = load ptr, ptr %10, align 8, !tbaa !157  ; 2 uses
  %i.gi = icmp eq ptr %i.gh, %i.al
  br i1 %i.gi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit
  %i.gj = load i64, ptr %i.al, align 8, !tbaa !159
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gk) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %_ZNSt10unique_ptrIN4llvm14raw_fd_ostreamESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm14raw_fd_ostreamESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN4llvm11raw_ostream5flushEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.gl = load ptr, ptr %i.da, align 8, !tbaa !11
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8
  call void %i.gn(ptr noundef nonnull align 8 dereferenceable(96) %i.da) #20, !inline_history !176
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.go = load ptr, ptr %4, align 8, !tbaa !157   ; 2 uses
  %i.gp = icmp eq ptr %i.go, %i.au
  br i1 %i.gp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNSt10unique_ptrIN4llvm14raw_fd_ostreamESt14default_deleteIS1_EED2Ev.exit
  %i.gq = load i64, ptr %i.au, align 8, !tbaa !159
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gr) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNSt10unique_ptrIN4llvm14raw_fd_ostreamESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
end_hunk_0
