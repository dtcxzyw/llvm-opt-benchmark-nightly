inline.NumInlined: 1817
inline.NumDeleted: 298
begin_hunk_0_@_ZN4llvh6detail13DoubleAPFloataSERKS1_:bb.a
  br i1 %.not9.i15, label %_ZN4llvh7APFloat7StorageaSERKS1_.exit18, label %bb.y

bb.y:                                             ; preds = %.thread8.i14
  %i.bc = getelementptr inbounds nuw i8, ptr %.lcssa58, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !7
  %i.be = add i32 %i.bd, -64
  %i.bf = icmp ult i32 %i.be, -128
  br i1 %i.bf, label %bb.z, label %_ZN4llvh7APFloat7StorageD2Ev.exit.i16

bb.z:                                             ; preds = %bb.y
  %i.bg = getelementptr inbounds nuw i8, ptr %.lcssa64, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !18 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %_ZN4llvh7APFloat7StorageD2Ev.exit.i16, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZdaPv(ptr noundef nonnull %i.bh) #24, !inline_history !169
  br label %_ZN4llvh7APFloat7StorageD2Ev.exit.i16

bb.ab:                                            ; preds = %.loopexit78
  tail call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %.lcssa63) #25, !inline_history !169
  br label %_ZN4llvh7APFloat7StorageD2Ev.exit.i16

_ZN4llvh7APFloat7StorageD2Ev.exit.i16:            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y
  %ret.known.tr4976 = phi i1 [ %i.ab, %bb.ab ], [ %.not11.i13.peel, %bb.aa ], [ %.not11.i13.peel, %bb.z ], [ %.not11.i13.peel, %bb.y ]
  %.tr4670 = phi ptr [ %.tr46.lcssa69, %bb.ab ], [ %.tr46.lcssa68, %bb.aa ], [ %.tr46.lcssa68, %bb.z ], [ %.tr46.lcssa68, %bb.y ]
  %i.bj = phi ptr [ %.lcssa63, %bb.ab ], [ %.lcssa62, %bb.aa ], [ %.lcssa62, %bb.z ], [ %.lcssa62, %bb.y ]
  %i.bk = phi ptr [ %.lcssa61, %bb.ab ], [ %.lcssa60, %bb.aa ], [ %.lcssa60, %bb.z ], [ %.lcssa60, %bb.y ]
  tail call void @_ZN4llvh7APFloat7StorageC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.bk), !inline_history !168
  br label %_ZN4llvh7APFloat7StorageaSERKS1_.exit18

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.preheader, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %0, %.lr.ph.preheader ], [ %.tr46, %.lr.ph ] ; 6 uses
  %.tr19.lcssa = phi ptr [ %1, %bb.a ], [ %1, %.lr.ph.preheader ], [ %.tr1947, %.lr.ph ] ; 3 uses
  %ret.known.tr.lcssa = phi i1 [ false, %bb.a ], [ false, %.lr.ph.preheader ], [ true, %.lr.ph ] ; 2 uses
  %.not = icmp eq ptr %.tr.lcssa, %.tr19.lcssa
  br i1 %.not, label %_ZN4llvh7APFloat7StorageaSERKS1_.exit18, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge
  tail call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %.tr.lcssa) #25
  %i.bl = load ptr, ptr %.tr19.lcssa, align 8, !tbaa !148
  store ptr %i.bl, ptr %.tr.lcssa, align 8, !tbaa !148
  %i.bm = getelementptr inbounds nuw i8, ptr %.tr19.lcssa, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !159 ; 2 uses
  %.not.i = icmp eq ptr %i.bn, null
  br i1 %.not.i, label %_ZN4llvh6detail13DoubleAPFloatC2ERKS1_.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bo = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znam(i64 noundef 72) #23, !inline_history !170 ; 4 uses
  store i64 2, ptr %i.bo, align 16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  tail call void @_ZN4llvh7APFloat7StorageC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.br), !inline_history !171
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !159
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  tail call void @_ZN4llvh7APFloat7StorageC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %i.bu), !inline_history !171
  br label %_ZN4llvh6detail13DoubleAPFloatC2ERKS1_.exit

_ZN4llvh6detail13DoubleAPFloatC2ERKS1_.exit:      ; preds = %bb.ac, %bb.ad
  %i.bv = phi ptr [ %i.bp, %bb.ad ], [ null, %bb.ac ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.tr.lcssa, i64 8
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !159
  br label %_ZN4llvh7APFloat7StorageaSERKS1_.exit18

_ZN4llvh7APFloat7StorageaSERKS1_.exit18:          ; preds = %_ZN4llvh7APFloat7StorageD2Ev.exit.i16, %.thread8.i14, %.loopexit78, %bb.w, %._crit_edge, %_ZN4llvh6detail13DoubleAPFloatC2ERKS1_.exit
  %.tr34 = phi ptr [ %.tr4670, %_ZN4llvh7APFloat7StorageD2Ev.exit.i16 ], [ %.tr46.lcssa68, %.thread8.i14 ], [ %.tr46.lcssa69, %.loopexit78 ], [ %.tr46.lcssa68, %bb.w ], [ %.tr.lcssa, %._crit_edge ], [ %.tr.lcssa, %_ZN4llvh6detail13DoubleAPFloatC2ERKS1_.exit ]
  %ret.known.tr24 = phi i1 [ %ret.known.tr4976, %_ZN4llvh7APFloat7StorageD2Ev.exit.i16 ], [ %.not11.i13.peel, %.thread8.i14 ], [ %i.ab, %.loopexit78 ], [ %.not11.i13.peel, %bb.w ], [ %ret.known.tr.lcssa, %._crit_edge ], [ %ret.known.tr.lcssa, %_ZN4llvh6detail13DoubleAPFloatC2ERKS1_.exit ]
  %current.ret.tr20 = select i1 %ret.known.tr24, ptr %0, ptr %.tr34
  ret ptr %current.ret.tr20
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvh7APFloataSERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %.not11.i = icmp eq ptr %i.c, @_ZN4llvhL18semPPCDoubleDoubleE
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.e = icmp eq ptr %i.d, @_ZN4llvhL18semPPCDoubleDoubleE ; 2 uses
  br i1 %.not11.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %.thread8.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvh6detail9IEEEFloataSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b), !inline_history !172 ; 0 uses
  br label %_ZN4llvh7APFloat7StorageaSERKS1_.exit

bb.d:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh6detail13DoubleAPFloataSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b), !inline_history !172 ; 0 uses
  br label %_ZN4llvh7APFloat7StorageaSERKS1_.exit

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %_ZN4llvh7APFloat7StorageaSERKS1_.exit, label %bb.j

.thread8.i:                                       ; preds = %bb.b
  %.not9.i = icmp eq ptr %0, %1
  br i1 %.not9.i, label %_ZN4llvh7APFloat7StorageaSERKS1_.exit, label %bb.g

bb.g:                                             ; preds = %.thread8.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !7
  %i.j = add i32 %i.i, -64
  %i.k = icmp ult i32 %i.j, -128
  br i1 %i.k, label %bb.h, label %_ZN4llvh7APFloat7StorageD2Ev.exit.i

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18   ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN4llvh7APFloat7StorageD2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdaPv(ptr noundef nonnull %i.m) #24, !inline_history !173
  br label %_ZN4llvh7APFloat7StorageD2Ev.exit.i

bb.j:                                             ; preds = %bb.f
  tail call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #25, !inline_history !173
  br label %_ZN4llvh7APFloat7StorageD2Ev.exit.i

_ZN4llvh7APFloat7StorageD2Ev.exit.i:              ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  tail call void @_ZN4llvh7APFloat7StorageC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b), !inline_history !172
  br label %_ZN4llvh7APFloat7StorageaSERKS1_.exit

_ZN4llvh7APFloat7StorageaSERKS1_.exit:            ; preds = %bb.c, %bb.e, %bb.f, %.thread8.i, %_ZN4llvh7APFloat7StorageD2Ev.exit.i
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !159  ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_N4llvh7APFloatESt14default_deleteIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %.idx.i = shl i64 %i.d, 5                       ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZNKSt14default_deleteIA_N4llvh7APFloatEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %.idx.i
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_ZN4llvh7APFloatD2Ev.exit.i
  %i.g = phi ptr [ %i.h, %_ZN4llvh7APFloatD2Ev.exit.i ], [ %i.f, %.preheader.preheader ] ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -32 ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 -24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !18   ; 2 uses
  %.not = icmp eq ptr %i.j, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !7
  %i.m = add i32 %i.l, -64
  %i.n = icmp ult i32 %i.m, -128
  br i1 %i.n, label %bb.d, label %_ZN4llvh7APFloatD2Ev.exit.i

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 -16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !18   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZN4llvh7APFloatD2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.p) #24
  br label %_ZN4llvh7APFloatD2Ev.exit.i

bb.f:                                             ; preds = %.preheader
  tail call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.i) #25, !inline_history !174
  br label %_ZN4llvh7APFloatD2Ev.exit.i

_ZN4llvh7APFloatD2Ev.exit.i:                      ; preds = %bb.e, %bb.d, %bb.c, %bb.f
  %i.r = icmp eq ptr %i.h, %i.b
  br i1 %i.r, label %_ZNKSt14default_deleteIA_N4llvh7APFloatEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit, label %.preheader

_ZNKSt14default_deleteIA_N4llvh7APFloatEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit: ; preds = %_ZN4llvh7APFloatD2Ev.exit.i, %bb.b
  %i.s = or disjoint i64 %.idx.i, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.c, i64 noundef %i.s) #24, !inline_history !175
  br label %_ZNSt10unique_ptrIA_N4llvh7APFloatESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIA_N4llvh7APFloatESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIA_N4llvh7APFloatEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit
  store ptr null, ptr %i.a, align 8, !tbaa !159
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN4llvh6detail13DoubleAPFloat7addImplERKNS_7APFloatES4_S4_S4_NS_11APFloatBase12roundingModeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %5) local_unnamed_addr #2 align 2 {
bb.a:
  %6 = alloca %"class.llvh::APFloat", align 8     ; 12 uses
  %7 = alloca %"class.llvh::APFloat", align 8     ; 7 uses
  %8 = alloca %"class.llvh::APFloat", align 8     ; 9 uses
  %9 = alloca %"class.llvh::APFloat", align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 68 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 20 uses
  call void @_ZN4llvh7APFloat7StorageC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b), !inline_history !167
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !18
  %.not = icmp eq ptr %i.c, @_ZN4llvhL18semPPCDoubleDoubleE
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef i32 @_ZN4llvh6detail9IEEEFloat21addOrSubtractSpecialsERKS1_b(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i1 noundef zeroext false) ; 2 uses
  %i.f = icmp eq i32 %i.e, 2
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = call noundef i32 @_ZN4llvh6detail9IEEEFloat24addOrSubtractSignificandERKS1_b(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i1 noundef zeroext false)
  %i.h = call noundef i32 @_ZN4llvh6detail9IEEEFloat9normalizeENS_11APFloatBase12roundingModeENS_12lostFractionE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef %5, i32 noundef %i.g)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i.i170 = phi i32 [ %i.h, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 26 ; 2 uses
  %i.j = load i8, ptr %i.i, align 2               ; 3 uses
  %i.k = and i8 %i.j, 7
  %i.l = icmp eq i8 %i.k, 3
  br i1 %i.l, label %bb.e, label %_ZN4llvh7APFloat3addERKS0_NS_11APFloatBase12roundingModeE.exit

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 26
  %i.n = load i8, ptr %i.m, align 2               ; 2 uses
  %i.o = and i8 %i.n, 7
  %.not.i.i171 = icmp eq i8 %i.o, 3
  br i1 %.not.i.i171, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = xor i8 %i.n, %i.j
  %i.q = and i8 %i.p, 8
  %.not.i172 = icmp eq i8 %i.q, 0
  br i1 %.not.i172, label %_ZN4llvh7APFloat3addERKS0_NS_11APFloatBase12roundingModeE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = icmp eq i32 %5, 2
  %i.s = select i1 %i.r, i8 8, i8 0
  %i.t = and i8 %i.j, -13
  %i.u = or disjoint i8 %i.t, %i.s
  store i8 %i.u, ptr %i.i, align 2
  br label %_ZN4llvh7APFloat3addERKS0_NS_11APFloatBase12roundingModeE.exit

bb.h:                                             ; preds = %bb.a
  %i.v = call noundef i32 @_ZN4llvh6detail13DoubleAPFloat14addWithSpecialERKS1_S3_RS1_NS_11APFloatBase12roundingModeE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i32 noundef %5), !inline_history !176
  br label %_ZN4llvh7APFloat3addERKS0_NS_11APFloatBase12roundingModeE.exit

_ZN4llvh7APFloat3addERKS0_NS_11APFloatBase12roundingModeE.exit: ; preds = %bb.g, %bb.f, %bb.d, %bb.h
  %.0.i = phi i32 [ %i.v, %bb.h ], [ %.0.i.i170, %bb.d ], [ %.0.i.i170, %bb.f ], [ %.0.i.i170, %bb.g ] ; 2 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !18
  %.not.i.i.i.i = icmp eq ptr %i.w, @_ZN4llvhL18semPPCDoubleDoubleE
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8
  %.sroa.gep263 = getelementptr inbounds nuw i8, ptr %i.y, i64 26
  %.sroa.gep264 = getelementptr inbounds nuw i8, ptr %6, i64 26 ; 16 uses
  %.0.i.i.i.i.sroa.sel = select i1 %.not.i.i.i.i, ptr %.sroa.gep263, ptr %.sroa.gep264
  %i.z = load i8, ptr %.0.i.i.i.i.sroa.sel, align 2 ; 2 uses
  %i.aa = and i8 %i.z, 6
  %spec.select.i.not = icmp eq i8 %i.aa, 0
  br i1 %spec.select.i.not, label %bb.i, label %bb.eo

bb.i:                                             ; preds = %_ZN4llvh7APFloat3addERKS0_NS_11APFloatBase12roundingModeE.exit
  %i.ab = and i8 %i.z, 1
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !159
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvh7APFloat7StorageaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.a) ; 0 uses
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !159
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  call void @_ZN4llvh7APFloat8makeZeroEb(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i1 noundef zeroext false)
  br label %bb.if

bb.k:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !18  ; 2 uses
  %.not.i = icmp eq ptr %i.aj, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = load i16, ptr %i.ak, align 8, !tbaa !19
  %i.am = sext i16 %i.al to i32
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ao = load i16, ptr %i.an, align 8, !tbaa !19
  %i.ap = sext i16 %i.ao to i32
  %i.aq = sub nsw i32 %i.am, %i.ap                ; 2 uses
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.m, label %_ZNK4llvh6detail9IEEEFloat20compareAbsoluteValueERKS1_.exit.i

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !7  ; 2 uses
  %i.av = add i32 %i.au, -64
  %i.aw = icmp ult i32 %i.av, -128
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8
  %.0.i.i.i.i84 = select i1 %i.aw, ptr %i.ay, ptr %i.ax
  %i.az = load ptr, ptr %i.as, align 8, !tbaa !13
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !7
  %i.bc = add i32 %i.bb, -64
  %i.bd = icmp ult i32 %i.bc, -128
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8
  %.0.i.i8.i.i = select i1 %i.bd, ptr %i.bf, ptr %i.be
  %i.bg = add i32 %i.au, 64
  %i.bh = lshr i32 %i.bg, 6
  %i.bi = call noundef i32 @_ZN4llvh5APInt9tcCompareEPKmS2_j(ptr noundef %.0.i.i.i.i84, ptr noundef %.0.i.i8.i.i, i32 noundef %i.bh) #25, !inline_history !177
  br label %_ZNK4llvh6detail9IEEEFloat20compareAbsoluteValueERKS1_.exit.i

_ZNK4llvh6detail9IEEEFloat20compareAbsoluteValueERKS1_.exit.i: ; preds = %bb.m, %bb.l
  %.0.i.i = phi i32 [ %i.bi, %bb.m ], [ %i.aq, %bb.l ]
  %i.bj = icmp sgt i32 %.0.i.i, 0
  br label %_ZNK4llvh7APFloat20compareAbsoluteValueERKS0_.exit

bb.n:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bl = call noundef i32 @_ZNK4llvh6detail13DoubleAPFloat20compareAbsoluteValueERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.bk), !inline_history !177
  %i.bm = icmp eq i32 %i.bl, 2
  br label %_ZNK4llvh7APFloat20compareAbsoluteValueERKS0_.exit

_ZNK4llvh7APFloat20compareAbsoluteValueERKS0_.exit: ; preds = %_ZNK4llvh6detail9IEEEFloat20compareAbsoluteValueERKS1_.exit.i, %bb.n
  %.0.i83 = phi i1 [ %i.bj, %_ZNK4llvh6detail9IEEEFloat20compareAbsoluteValueERKS1_.exit.i ], [ %i.bm, %bb.n ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %.not11.i.i = icmp eq ptr %i.bo, @_ZN4llvhL18semPPCDoubleDoubleE
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !18
  %i.bq = icmp eq ptr %i.bp, @_ZN4llvhL18semPPCDoubleDoubleE ; 2 uses
  br i1 %.not11.i.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %_ZNK4llvh7APFloat20compareAbsoluteValueERKS0_.exit
  br i1 %i.bq, label %.thread8.i.i.a, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvh6detail9IEEEFloataSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.bn), !inline_history !178 ; 0 uses
  br label %_ZN4llvh7APFloataSERKS0_.exit

bb.q:                                             ; preds = %_ZNK4llvh7APFloat20compareAbsoluteValueERKS0_.exit
  br i1 %i.bq, label %bb.r, label %10

bb.r:                                             ; preds = %bb.q
  %i.bs = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh6detail13DoubleAPFloataSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.bn), !inline_history !178 ; 0 uses
  br label %_ZN4llvh7APFloataSERKS0_.exit

10:                                               ; preds = %bb.q
  %.not.i.i = icmp eq ptr %6, %4
  br i1 %.not.i.i, label %_ZN4llvh7APFloataSERKS0_.exit, label %bb.u

.thread8.i.i.a:                                   ; preds = %bb.o
  %.not9.i.i = icmp eq ptr %6, %4
  br i1 %.not9.i.i, label %_ZN4llvh7APFloataSERKS0_.exit, label %bb.s

bb.s:                                             ; preds = %.thread8.i.i.a
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !7
  %i.bv = add i32 %i.bu, -64
  %i.bw = icmp ult i32 %i.bv, -128
  br i1 %i.bw, label %bb.t, label %_ZN4llvh7APFloat7StorageD2Ev.exit.i.i

bb.t:                                             ; preds = %bb.s
  %i.bx = load ptr, ptr %i.x, align 8, !tbaa !18  ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %_ZN4llvh7APFloat7StorageD2Ev.exit.i.i, label %11

11:                                               ; preds = %bb.t
  call void @_ZdaPv(ptr noundef nonnull %i.bx) #24, !inline_history !179
  br label %_ZN4llvh7APFloat7StorageD2Ev.exit.i.i

bb.u:                                             ; preds = %10
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #25, !inline_history !179
  br label %_ZN4llvh7APFloat7StorageD2Ev.exit.i.i

_ZN4llvh7APFloat7StorageD2Ev.exit.i.i:            ; preds = %bb.u, %11, %bb.t, %bb.s
  call void @_ZN4llvh7APFloat7StorageC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.bn), !inline_history !178
  br label %_ZN4llvh7APFloataSERKS0_.exit

_ZN4llvh7APFloataSERKS0_.exit:                    ; preds = %bb.p, %bb.r, %10, %.thread8.i.i.a, %_ZN4llvh7APFloat7StorageD2Ev.exit.i.i
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !18
  %.not271.a = icmp eq ptr %i.bz, @_ZN4llvhL18semPPCDoubleDoubleE
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br i1 %.not271.a, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %_ZN4llvh7APFloataSERKS0_.exit
  %i.cb = call noundef i32 @_ZN4llvh6detail9IEEEFloat21addOrSubtractSpecialsERKS1_b(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i1 noundef zeroext false) ; 2 uses
  %i.cc = icmp eq i32 %i.cb, 2
  br i1 %i.cc, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cd = call noundef i32 @_ZN4llvh6detail9IEEEFloat24addOrSubtractSignificandERKS1_b(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i1 noundef zeroext false)
  %i.ce = call noundef i32 @_ZN4llvh6detail9IEEEFloat9normalizeENS_11APFloatBase12roundingModeENS_12lostFractionE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef %5, i32 noundef %i.cd)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.0.i.i173 = phi i32 [ %i.ce, %bb.w ], [ %i.cb, %bb.v ] ; 3 uses
  %i.cf = load i8, ptr %.sroa.gep264, align 2     ; 3 uses
  %i.cg = and i8 %i.cf, 7
  %i.ch = icmp eq i8 %i.cg, 3
  br i1 %i.ch, label %bb.y, label %_ZN4llvh7APFloat3addERKS0_NS_11APFloatBase12roundingModeE.exit86

bb.y:                                             ; preds = %bb.x
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.cj = load i8, ptr %i.ci, align 2             ; 2 uses
  %i.ck = and i8 %i.cj, 7
  %.not.i.i174 = icmp eq i8 %i.ck, 3
  br i1 %.not.i.i174, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cl = xor i8 %i.cj, %i.cf
  %i.cm = and i8 %i.cl, 8
  %.not.i175 = icmp eq i8 %i.cm, 0
  br i1 %.not.i175, label %_ZN4llvh7APFloat3addERKS0_NS_11APFloatBase12roundingModeE.exit86, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cn = icmp eq i32 %5, 2
  %i.co = select i1 %i.cn, i8 8, i8 0
  %i.cp = and i8 %i.cf, -13
  %i.cq = or disjoint i8 %i.cp, %i.co
  store i8 %i.cq, ptr %.sroa.gep264, align 2
  br label %_ZN4llvh7APFloat3addERKS0_NS_11APFloatBase12roundingModeE.exit86

bb.ab:                                            ; preds = %_ZN4llvh7APFloataSERKS0_.exit
  %i.cr = call noundef i32 @_ZN4llvh6detail13DoubleAPFloat14addWithSpecialERKS1_S3_RS1_NS_11APFloatBase12roundingModeE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i32 noundef %5), !inline_history !176
  br label %_ZN4llvh7APFloat3addERKS0_NS_11APFloatBase12roundingModeE.exit86

_ZN4llvh7APFloat3addERKS0_NS_11APFloatBase12roundingModeE.exit86: ; preds = %bb.aa, %bb.z, %bb.x, %bb.ab
  %.0.i85 = phi i32 [ %i.cr, %bb.ab ], [ %.0.i.i173, %bb.x ], [ %.0.i.i173, %bb.z ], [ %.0.i.i173, %bb.aa ]
  %i.cs = load ptr, ptr %i.a, align 8, !tbaa !18
  %.not274.a = icmp eq ptr %i.cs, @_ZN4llvhL18semPPCDoubleDoubleE ; 2 uses
  br i1 %.0.i83, label %bb.ac, label %bb.ar

bb.ac:                                            ; preds = %_ZN4llvh7APFloat3addERKS0_NS_11APFloatBase12roundingModeE.exit86
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br i1 %.not274.a, label %bb.aj, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cu = call noundef i32 @_ZN4llvh6detail9IEEEFloat21addOrSubtractSpecialsERKS1_b(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i1 noundef zeroext false) ; 2 uses
  %i.cv = icmp eq i32 %i.cu, 2
  br i1 %i.cv, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cw = call noundef i32 @_ZN4llvh6detail9IEEEFloat24addOrSubtractSignificandERKS1_b(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i1 noundef zeroext false)
  %i.cx = call noundef i32 @_ZN4llvh6detail9IEEEFloat9normalizeENS_11APFloatBase12roundingModeENS_12lostFractionE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef %5, i32 noundef %i.cw)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.0.i.i177 = phi i32 [ %i.cx, %bb.ae ], [ %i.cu, %bb.ad ] ; 3 uses
  %i.cy = load i8, ptr %.sroa.gep264, align 2     ; 3 uses
  %i.cz = and i8 %i.cy, 7
  %i.da = icmp eq i8 %i.cz, 3
  br i1 %i.da, label %bb.ag, label %_ZN4llvh7APFloat3addERKS0_NS_11APFloatBase12roundingModeE.exit88

bb.ag:                                            ; preds = %bb.af
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 26
  %i.dc = load i8, ptr %i.db, align 2             ; 2 uses
  %i.dd = and i8 %i.dc, 7
  %.not.i.i178 = icmp eq i8 %i.dd, 3
  br i1 %.not.i.i178, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.de = xor i8 %i.dc, %i.cy
  %i.df = and i8 %i.de, 8
  %.not.i179 = icmp eq i8 %i.df, 0
  br i1 %.not.i179, label %_ZN4llvh7APFloat3addERKS0_NS_11APFloatBase12roundingModeE.exit88, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.dg = icmp eq i32 %5, 2
  %i.dh = select i1 %i.dg, i8 8, i8 0
  %i.di = and i8 %i.cy, -13
  %i.dj = or disjoint i8 %i.di, %i.dh
  store i8 %i.dj, ptr %.sroa.gep264, align 2
  br label %_ZN4llvh7APFloat3addERKS0_NS_11APFloatBase12roundingModeE.exit88

bb.aj:                                            ; preds = %bb.ac
  %i.dk = call noundef i32 @_ZN4llvh6detail13DoubleAPFloat14addWithSpecialERKS1_S3_RS1_NS_11APFloatBase12roundingModeE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i32 noundef %5), !inline_history !176
  br label %_ZN4llvh7APFloat3addERKS0_NS_11APFloatBase12roundingModeE.exit88

_ZN4llvh7APFloat3addERKS0_NS_11APFloatBase12roundingModeE.exit88: ; preds = %bb.ai, %bb.ah, %bb.af, %bb.aj
  %.0.i87 = phi i32 [ %i.dk, %bb.aj ], [ %.0.i.i177, %bb.af ], [ %.0.i.i177, %bb.ah ], [ %.0.i.i177, %bb.ai ]
  %i.dl = load ptr, ptr %i.a, align 8, !tbaa !18
  %.not275.a = icmp eq ptr %i.dl, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not275.a, label %bb.aq, label %bb.ak

bb.ak:                                            ; preds = %_ZN4llvh7APFloat3addERKS0_NS_11APFloatBase12roundingModeE.exit88
  %i.dm = call noundef i32 @_ZN4llvh6detail9IEEEFloat21addOrSubtractSpecialsERKS1_b(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i1 noundef zeroext false) ; 2 uses
  %i.dn = icmp eq i32 %i.dm, 2
  br i1 %i.dn, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.do = call noundef i32 @_ZN4llvh6detail9IEEEFloat24addOrSubtractSignificandERKS1_b(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i1 noundef zeroext false)
  %i.dp = call noundef i32 @_ZN4llvh6detail9IEEEFloat9normalizeENS_11APFloatBase12roundingModeENS_12lostFractionE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef %5, i32 noundef %i.do)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.0.i.i181 = phi i32 [ %i.dp, %bb.al ], [ %i.dm, %bb.ak ] ; 3 uses
  %i.dq = load i8, ptr %.sroa.gep264, align 2     ; 3 uses
  %i.dr = and i8 %i.dq, 7
  %i.ds = icmp eq i8 %i.dr, 3
  br i1 %i.ds, label %bb.an, label %_ZN4llvh7APFloat3addERKS0_NS_11APFloatBase12roundingModeE.exit90

bb.an:                                            ; preds = %bb.am
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.du = load i8, ptr %i.dt, align 2             ; 2 uses
  %i.dv = and i8 %i.du, 7
  %.not.i.i182 = icmp eq i8 %i.dv, 3
  br i1 %.not.i.i182, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dw = xor i8 %i.du, %i.dq
  %i.dx = and i8 %i.dw, 8
  %.not.i183 = icmp eq i8 %i.dx, 0
  br i1 %.not.i183, label %_ZN4llvh7APFloat3addERKS0_NS_11APFloatBase12roundingModeE.exit90, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.dy = icmp eq i32 %5, 2
  %i.dz = select i1 %i.dy, i8 8, i8 0
  %i.ea = and i8 %i.dq, -13
  %i.eb = or disjoint i8 %i.ea, %i.dz
  store i8 %i.eb, ptr %.sroa.gep264, align 2
  br label %_ZN4llvh7APFloat3addERKS0_NS_11APFloatBase12roundingModeE.exit90

bb.aq:                                            ; preds = %_ZN4llvh7APFloat3addERKS0_NS_11APFloatBase12roundingModeE.exit88
  %i.ec = call noundef i32 @_ZN4llvh6detail13DoubleAPFloat14addWithSpecialERKS1_S3_RS1_NS_11APFloatBase12roundingModeE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i32 noundef %5), !inline_history !176
  br label %_ZN4llvh7APFloat3addERKS0_NS_11APFloatBase12roundingModeE.exit90

_ZN4llvh7APFloat3addERKS0_NS_11APFloatBase12roundingModeE.exit90: ; preds = %bb.ap, %bb.ao, %bb.am, %bb.aq
  %.0.i89 = phi i32 [ %i.ec, %bb.aq ], [ %.0.i.i181, %bb.am ], [ %.0.i.i181, %bb.ao ], [ %.0.i.i181, %bb.ap ]
  %i.ed = or i32 %.0.i89, %.0.i87
  br label %bb.bg

bb.ar:                                            ; preds = %_ZN4llvh7APFloat3addERKS0_NS_11APFloatBase12roundingModeE.exit86
  br i1 %.not274.a, label %bb.ay, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ee = call noundef i32 @_ZN4llvh6detail9IEEEFloat21addOrSubtractSpecialsERKS1_b(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i1 noundef zeroext false) ; 2 uses
  %i.ef = icmp eq i32 %i.ee, 2
  br i1 %i.ef, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.eg = call noundef i32 @_ZN4llvh6detail9IEEEFloat24addOrSubtractSignificandERKS1_b(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i1 noundef zeroext false)
  %i.eh = call noundef i32 @_ZN4llvh6detail9IEEEFloat9normalizeENS_11APFloatBase12roundingModeENS_12lostFractionE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef %5, i32 noundef %i.eg)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.0.i.i185 = phi i32 [ %i.eh, %bb.at ], [ %i.ee, %bb.as ] ; 3 uses
  %i.ei = load i8, ptr %.sroa.gep264, align 2     ; 3 uses
  %i.ej = and i8 %i.ei, 7
  %i.ek = icmp eq i8 %i.ej, 3
  br i1 %i.ek, label %bb.av, label %_ZN4llvh7APFloat3addERKS0_NS_11APFloatBase12roundingModeE.exit92

bb.av:                                            ; preds = %bb.au
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.em = load i8, ptr %i.el, align 2             ; 2 uses
  %i.en = and i8 %i.em, 7
  %.not.i.i186 = icmp eq i8 %i.en, 3
  br i1 %.not.i.i186, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.eo = xor i8 %i.em, %i.ei
  %i.ep = and i8 %i.eo, 8
  %.not.i187 = icmp eq i8 %i.ep, 0
  br i1 %.not.i187, label %_ZN4llvh7APFloat3addERKS0_NS_11APFloatBase12roundingModeE.exit92, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.eq = icmp eq i32 %5, 2
  %i.er = select i1 %i.eq, i8 8, i8 0
  %i.es = and i8 %i.ei, -13
  %i.et = or disjoint i8 %i.es, %i.er
  store i8 %i.et, ptr %.sroa.gep264, align 2
  br label %_ZN4llvh7APFloat3addERKS0_NS_11APFloatBase12roundingModeE.exit92

bb.ay:                                            ; preds = %bb.ar
  %i.eu = call noundef i32 @_ZN4llvh6detail13DoubleAPFloat14addWithSpecialERKS1_S3_RS1_NS_11APFloatBase12roundingModeE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i32 noundef %5), !inline_history !176
  br label %_ZN4llvh7APFloat3addERKS0_NS_11APFloatBase12roundingModeE.exit92

_ZN4llvh7APFloat3addERKS0_NS_11APFloatBase12roundingModeE.exit92: ; preds = %bb.ax, %bb.aw, %bb.au, %bb.ay
  %.0.i91 = phi i32 [ %i.eu, %bb.ay ], [ %.0.i.i185, %bb.au ], [ %.0.i.i185, %bb.aw ], [ %.0.i.i185, %bb.ax ]
  %i.ev = load ptr, ptr %i.a, align 8, !tbaa !18
end_hunk_0
begin_hunk_1_@_ZN4llvh6detail13DoubleAPFloat8multiplyERKS1_NS_11APFloatBase12roundingModeE:bb.a
  %i.au = icmp ne i8 %i.at, 3
  %i.av = and i1 %spec.select.i.not.i, %i.au
  br i1 %i.av, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !159
  %i.ax = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvh7APFloataSERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %7) ; 0 uses
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !159
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  call void @_ZN4llvh7APFloat8makeZeroEb(ptr noundef nonnull align 8 dereferenceable(32) %i.az, i1 noundef zeroext false)
  br label %bb.u

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @_ZN4llvh7APFloat7StorageC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.ac), !inline_history !167
  %i.bb = load ptr, ptr %i.am, align 8, !tbaa !18
  %.not.i = icmp eq ptr %i.bb, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = load i8, ptr %.sroa.gep70, align 2
  %i.bd = xor i8 %i.bc, 8
  store i8 %i.bd, ptr %.sroa.gep70, align 2
  br label %_ZN4llvh7APFloat10changeSignEv.exit

bb.o:                                             ; preds = %bb.m
  call void @_ZN4llvh6detail13DoubleAPFloat10changeSignEv(ptr noundef nonnull align 8 dereferenceable(16) %i.am), !inline_history !182
  br label %_ZN4llvh7APFloat10changeSignEv.exit

_ZN4llvh7APFloat10changeSignEv.exit:              ; preds = %bb.n, %bb.o
  %i.be = call noundef i32 @_ZN4llvh7APFloat16fusedMultiplyAddERKS0_S2_NS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %2)
  %i.bf = load ptr, ptr %i.am, align 8, !tbaa !18
  %.not.i61 = icmp eq ptr %i.bf, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i61, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN4llvh7APFloat10changeSignEv.exit
  %i.bg = load i8, ptr %.sroa.gep70, align 2
  %i.bh = xor i8 %i.bg, 8
  store i8 %i.bh, ptr %.sroa.gep70, align 2
  br label %_ZN4llvh7APFloat10changeSignEv.exit62

bb.q:                                             ; preds = %_ZN4llvh7APFloat10changeSignEv.exit
  call void @_ZN4llvh6detail13DoubleAPFloat10changeSignEv(ptr noundef nonnull align 8 dereferenceable(16) %i.am), !inline_history !182
  br label %_ZN4llvh7APFloat10changeSignEv.exit62

_ZN4llvh7APFloat10changeSignEv.exit62:            ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @_ZN4llvh7APFloat7StorageC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %i.ac), !inline_history !167
  %i.bj = call noundef i32 @_ZN4llvh7APFloat8multiplyERKS0_NS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @_ZN4llvh7APFloat7StorageC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.ae), !inline_history !167
  %i.bl = call noundef i32 @_ZN4llvh7APFloat8multiplyERKS0_NS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef %2)
  %i.bm = call noundef i32 @_ZN4llvh7APFloat3addERKS0_NS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef %2)
  %i.bn = call noundef i32 @_ZN4llvh7APFloat3addERKS0_NS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef %2)
  call void @_ZN4llvh7APFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @_ZN4llvh7APFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  call void @_ZN4llvh7APFloat7StorageC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %i.am), !inline_history !167
  %i.bp = call noundef i32 @_ZN4llvh7APFloat3addERKS0_NS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef %2)
  %i.bq = or i32 %i.be, %i.bj
  %i.br = or i32 %i.bq, %i.bl
  %i.bs = or i32 %i.br, %i.bm
  %i.bt = or i32 %i.bs, %i.bn
  %i.bu = or i32 %i.bt, %i.bp
  %i.bv = or i32 %i.bu, %i.an                     ; 2 uses
  %i.bw = load ptr, ptr %i.a, align 8, !tbaa !159
  %i.bx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvh7APFloataSERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull align 8 dereferenceable(32) %11) ; 0 uses
  %i.by = load ptr, ptr %i.bo, align 8, !tbaa !18
  %.not.i.i.i.i = icmp eq ptr %i.by, @_ZN4llvhL18semPPCDoubleDoubleE
  %i.bz = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  %.0.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i.i.i.i, ptr %i.ca, ptr %11
  %.0.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 26
  %i.cb = load i8, ptr %.0.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 2
  %i.cc = and i8 %i.cb, 6
  %spec.select.i.not = icmp eq i8 %i.cc, 0
  br i1 %spec.select.i.not, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN4llvh7APFloat10changeSignEv.exit62
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !159
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  call void @_ZN4llvh7APFloat8makeZeroEb(ptr noundef nonnull align 8 dereferenceable(32) %i.ce, i1 noundef zeroext false)
  br label %bb.t

bb.s:                                             ; preds = %_ZN4llvh7APFloat10changeSignEv.exit62
  %i.cf = call noundef i32 @_ZN4llvh7APFloat8subtractERKS0_NS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef %2)
  %i.cg = call noundef i32 @_ZN4llvh7APFloat3addERKS0_NS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef %2)
  %i.ch = or i32 %i.cf, %i.cg
  %i.ci = or i32 %i.ch, %i.bv
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !159
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cl = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvh7APFloataSERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %i.ck, ptr noundef nonnull align 8 dereferenceable(32) %7) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0 = phi i32 [ %i.ci, %bb.s ], [ %i.bv, %bb.r ]
  call void @_ZN4llvh7APFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @_ZN4llvh7APFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.l
  %.042 = phi i32 [ %.0, %bb.t ], [ %i.an, %bb.l ]
  call void @_ZN4llvh7APFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @_ZN4llvh7APFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN4llvh7APFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @_ZN4llvh7APFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @_ZN4llvh7APFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.j, %.thread67, %bb.h, %bb.d, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.h ], [ 0, %.thread67 ], [ 0, %bb.j ], [ %.042, %bb.u ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvh7APFloat8multiplyERKS0_NS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %.not = icmp eq ptr %i.b, @_ZN4llvhL18semPPCDoubleDoubleE
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.e = load i8, ptr %i.d, align 2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 3 uses
  %i.g = load i8, ptr %i.f, align 2
  %i.h = and i8 %i.e, 8
  %i.i = xor i8 %i.h, %i.g
  store i8 %i.i, ptr %i.f, align 2
  %i.j = tail call noundef i32 @_ZN4llvh6detail9IEEEFloat16multiplySpecialsERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
  %i.k = load i8, ptr %i.f, align 2               ; 2 uses
  %i.l = and i8 %i.k, 6
  %spec.select.i.not.i.i = icmp ne i8 %i.l, 0
  %i.m = and i8 %i.k, 7
  %i.n = icmp ne i8 %i.m, 3
  %i.o = and i1 %spec.select.i.not.i.i, %i.n
  br i1 %i.o, label %bb.c, label %_ZN4llvh6detail9IEEEFloat8multiplyERKS1_NS_11APFloatBase12roundingModeE.exit

bb.c:                                             ; preds = %bb.b
  %i.p = tail call noundef i32 @_ZN4llvh6detail9IEEEFloat19multiplySignificandERKS1_PS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef null) ; 2 uses
  %i.q = tail call noundef i32 @_ZN4llvh6detail9IEEEFloat9normalizeENS_11APFloatBase12roundingModeENS_12lostFractionE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef %2, i32 noundef %i.p) ; 2 uses
  %.not.i = icmp eq i32 %i.p, 0
  %i.r = or i32 %i.q, 16
  %spec.select.i = select i1 %.not.i, i32 %i.q, i32 %i.r
  br label %_ZN4llvh6detail9IEEEFloat8multiplyERKS1_NS_11APFloatBase12roundingModeE.exit

bb.d:                                             ; preds = %bb.a
  %i.s = tail call noundef i32 @_ZN4llvh6detail13DoubleAPFloat8multiplyERKS1_NS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i32 noundef %2)
  br label %_ZN4llvh6detail9IEEEFloat8multiplyERKS1_NS_11APFloatBase12roundingModeE.exit

_ZN4llvh6detail9IEEEFloat8multiplyERKS1_NS_11APFloatBase12roundingModeE.exit: ; preds = %bb.c, %bb.b, %bb.d
  %.0 = phi i32 [ %i.s, %bb.d ], [ %spec.select.i, %bb.c ], [ %i.j, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvh7APFloat16fusedMultiplyAddERKS0_S2_NS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %.not = icmp eq ptr %i.b, @_ZN4llvhL18semPPCDoubleDoubleE
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZN4llvh6detail9IEEEFloat16fusedMultiplyAddERKS1_S3_NS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i32 noundef %3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZN4llvh6detail13DoubleAPFloat16fusedMultiplyAddERKS1_S3_NS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i32 noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 32) i32 @_ZN4llvh6detail13DoubleAPFloat6divideERKS1_NS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"class.llvh::APFloat", align 8     ; 5 uses
  %4 = alloca %"class.llvh::APInt", align 8       ; 6 uses
  %5 = alloca %"class.llvh::APFloat", align 8     ; 5 uses
  %6 = alloca %"class.llvh::APInt", align 8       ; 6 uses
  %7 = alloca %"class.llvh::detail::DoubleAPFloat", align 8 ; 8 uses
  %8 = alloca %"class.llvh::APInt", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZNK4llvh6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 11 uses
  call void @_ZN4llvh6detail9IEEEFloat28initFromPPCDoubleDoubleAPIntERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(12) %4), !inline_history !189
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !20
  %i.d = icmp ugt i32 %i.c, 64
  br i1 %i.d, label %bb.b, label %_ZN4llvh5APIntD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %4, align 8, !tbaa !18     ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN4llvh5APIntD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZdaPv(ptr noundef nonnull %i.e) #24
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZNK4llvh6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  call void @_ZN4llvh6detail9IEEEFloat28initFromPPCDoubleDoubleAPIntERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(12) %6), !inline_history !189
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !18
  %.not = icmp eq ptr %i.h, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 26
  %i.j = load i8, ptr %i.i, align 2
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 26 ; 3 uses
  %i.l = load i8, ptr %i.k, align 2
  %i.m = and i8 %i.j, 8
  %i.n = xor i8 %i.m, %i.l
  store i8 %i.n, ptr %i.k, align 2
  %i.o = call noundef i32 @_ZN4llvh6detail9IEEEFloat14divideSpecialsERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.g)
  %i.p = load i8, ptr %i.k, align 2               ; 2 uses
  %i.q = and i8 %i.p, 6
  %spec.select.i.not.i.i = icmp ne i8 %i.q, 0
  %i.r = and i8 %i.p, 7
  %i.s = icmp ne i8 %i.r, 3
  %i.t = and i1 %spec.select.i.not.i.i, %i.s
  br i1 %i.t, label %bb.e, label %_ZN4llvh7APFloat6divideERKS0_NS_11APFloatBase12roundingModeE.exit

bb.e:                                             ; preds = %bb.d
  %i.u = call noundef i32 @_ZN4llvh6detail9IEEEFloat17divideSignificandERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.g) ; 2 uses
  %i.v = call noundef i32 @_ZN4llvh6detail9IEEEFloat9normalizeENS_11APFloatBase12roundingModeENS_12lostFractionE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef %2, i32 noundef %i.u) ; 2 uses
  %.not.i9 = icmp eq i32 %i.u, 0
  %i.w = or i32 %i.v, 16
  %spec.select.i = select i1 %.not.i9, i32 %i.v, i32 %i.w
  br label %_ZN4llvh7APFloat6divideERKS0_NS_11APFloatBase12roundingModeE.exit

bb.f:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit
  %i.x = call noundef i32 @_ZN4llvh6detail13DoubleAPFloat6divideERKS1_NS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %2), !inline_history !190
  br label %_ZN4llvh7APFloat6divideERKS0_NS_11APFloatBase12roundingModeE.exit

_ZN4llvh7APFloat6divideERKS0_NS_11APFloatBase12roundingModeE.exit: ; preds = %bb.e, %bb.d, %bb.f
  %.0.i = phi i32 [ %i.x, %bb.f ], [ %spec.select.i, %bb.e ], [ %i.o, %bb.d ]
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !18   ; 2 uses
  %.not.i = icmp eq ptr %i.y, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZN4llvh7APFloat6divideERKS0_NS_11APFloatBase12roundingModeE.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !7
  %i.ab = add i32 %i.aa, -64
  %i.ac = icmp ult i32 %i.ab, -128
  br i1 %i.ac, label %bb.h, label %_ZN4llvh7APFloatD2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !18 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZN4llvh7APFloatD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.ae) #24, !inline_history !160
  br label %_ZN4llvh7APFloatD2Ev.exit

bb.j:                                             ; preds = %_ZN4llvh7APFloat6divideERKS0_NS_11APFloatBase12roundingModeE.exit
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.g) #25, !inline_history !161
  br label %_ZN4llvh7APFloatD2Ev.exit

_ZN4llvh7APFloatD2Ev.exit:                        ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !20
  %i.ai = icmp ugt i32 %i.ah, 64
  br i1 %i.ai, label %bb.k, label %_ZN4llvh5APIntD2Ev.exit3

bb.k:                                             ; preds = %_ZN4llvh7APFloatD2Ev.exit
  %i.aj = load ptr, ptr %6, align 8, !tbaa !18    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZN4llvh5APIntD2Ev.exit3, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.aj) #24
  br label %_ZN4llvh5APIntD2Ev.exit3

_ZN4llvh5APIntD2Ev.exit3:                         ; preds = %_ZN4llvh7APFloatD2Ev.exit, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !18, !noalias !191
  %.not.i4 = icmp eq ptr %i.al, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i4, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit3
  call void @_ZNK4llvh6detail9IEEEFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %i.a), !inline_history !194
  br label %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit

bb.n:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit3
  call void @_ZNK4llvh6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %i.a), !inline_history !194
  br label %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit

_ZNK4llvh7APFloat14bitcastToAPIntEv.exit:         ; preds = %bb.m, %bb.n
  call void @_ZN4llvh6detail13DoubleAPFloatC2ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(12) @_ZN4llvhL18semPPCDoubleDoubleE, ptr noundef nonnull align 8 dereferenceable(12) %8)
  %.not.i5 = icmp eq ptr %0, %7
  br i1 %.not.i5, label %_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit, label %bb.o

bb.o:                                             ; preds = %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #25
  %i.am = load ptr, ptr %7, align 8, !tbaa !148
  store ptr %i.am, ptr %0, align 8, !tbaa !148
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !159
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !159
  store ptr null, ptr %i.ao, align 8, !tbaa !159
  store ptr @_ZN4llvhL8semBogusE, ptr %7, align 8, !tbaa !148
  br label %_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit

_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit:       ; preds = %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit, %bb.o
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #25
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %10 = load i32, ptr %9, align 8, !tbaa !20
  %11 = icmp ugt i32 %10, 64
  br i1 %11, label %bb.p, label %_ZN4llvh5APIntD2Ev.exit6

bb.p:                                             ; preds = %_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit
  %i.aq = load ptr, ptr %8, align 8, !tbaa !18    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZN4llvh5APIntD2Ev.exit6, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZdaPv(ptr noundef nonnull %i.aq) #24
  br label %_ZN4llvh5APIntD2Ev.exit6

_ZN4llvh5APIntD2Ev.exit6:                         ; preds = %_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %.not.i7 = icmp eq ptr %i.as, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i7, label %bb.u, label %bb.r

bb.r:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit6
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !7
  %i.av = add i32 %i.au, -64
  %i.aw = icmp ult i32 %i.av, -128
  br i1 %i.aw, label %bb.s, label %_ZN4llvh7APFloatD2Ev.exit8

bb.s:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !18 ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN4llvh7APFloatD2Ev.exit8, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZdaPv(ptr noundef nonnull %i.ay) #24, !inline_history !160
  br label %_ZN4llvh7APFloatD2Ev.exit8

bb.u:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit6
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #25, !inline_history !161
  br label %_ZN4llvh7APFloatD2Ev.exit8

_ZN4llvh7APFloatD2Ev.exit8:                       ; preds = %bb.r, %bb.s, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret i32 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind noalias writable sret(%"class.llvh::APInt") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 5 uses
  %2 = alloca %"class.llvh::APInt", align 8       ; 8 uses
  %3 = alloca %"class.llvh::APInt", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !159
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18, !noalias !195
  %.not = icmp eq ptr %i.e, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZNK4llvh6detail9IEEEFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.d), !inline_history !194
  br label %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNK4llvh6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %i.d), !inline_history !194
  br label %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit

_ZNK4llvh7APFloat14bitcastToAPIntEv.exit:         ; preds = %bb.b, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !20
  %i.h = icmp ult i32 %i.g, 65
  %i.i = load ptr, ptr %2, align 8
  %.0.i = select i1 %i.h, ptr %2, ptr %i.i
  %i.j = load i64, ptr %.0.i, align 8, !tbaa !22
  store i64 %i.j, ptr %i.a, align 16, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !159
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !18, !noalias !198
  %.not4 = icmp eq ptr %i.n, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not4, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit
  call void @_ZNK4llvh6detail9IEEEFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.m), !inline_history !194
  br label %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit1

bb.e:                                             ; preds = %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit
  call void @_ZNK4llvh6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %i.m), !inline_history !194
  br label %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit1

_ZNK4llvh7APFloat14bitcastToAPIntEv.exit1:        ; preds = %bb.d, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !20
  %i.q = icmp ult i32 %i.p, 65                    ; 2 uses
  %i.r = load ptr, ptr %3, align 8                ; 3 uses
  %.0.i2 = select i1 %i.q, ptr %3, ptr %i.r
  %i.s = load i64, ptr %.0.i2, align 8, !tbaa !22
  store i64 %i.s, ptr %i.k, align 8, !tbaa !22
  %i.t = icmp eq ptr %i.r, null
  %or.cond = select i1 %i.q, i1 true, i1 %i.t
  br i1 %or.cond, label %_ZN4llvh5APIntD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit1
  call void @_ZdaPv(ptr noundef nonnull %i.r) #24
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit1, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.u = load i32, ptr %i.f, align 8, !tbaa !20
  %i.v = icmp ugt i32 %i.u, 64
  br i1 %i.v, label %bb.g, label %_ZN4llvh5APIntD2Ev.exit3

bb.g:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit
  %i.w = load ptr, ptr %2, align 8, !tbaa !18     ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZN4llvh5APIntD2Ev.exit3, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.w) #24
  br label %_ZN4llvh5APIntD2Ev.exit3

_ZN4llvh5APIntD2Ev.exit3:                         ; preds = %_ZN4llvh5APIntD2Ev.exit, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @_ZN4llvh5APIntC1EjjPKm(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef 128, i32 noundef 2, ptr noundef nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 25) i32 @_ZN4llvh6detail13DoubleAPFloat9remainderERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.llvh::APFloat", align 8     ; 4 uses
  %3 = alloca %"class.llvh::APInt", align 8       ; 6 uses
  %4 = alloca %"class.llvh::APFloat", align 8     ; 4 uses
  %5 = alloca %"class.llvh::APInt", align 8       ; 6 uses
  %6 = alloca %"class.llvh::detail::DoubleAPFloat", align 8 ; 8 uses
  %7 = alloca %"class.llvh::APInt", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZNK4llvh6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  call void @_ZN4llvh6detail9IEEEFloat28initFromPPCDoubleDoubleAPIntERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(12) %3), !inline_history !189
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !20
  %i.d = icmp ugt i32 %i.c, 64
  br i1 %i.d, label %bb.b, label %_ZN4llvh5APIntD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %3, align 8, !tbaa !18     ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN4llvh5APIntD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZdaPv(ptr noundef nonnull %i.e) #24
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZNK4llvh6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  call void @_ZN4llvh6detail9IEEEFloat28initFromPPCDoubleDoubleAPIntERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(12) %5), !inline_history !189
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !18
  %.not = icmp eq ptr %i.h, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit
  %i.i = call noundef i32 @_ZN4llvh6detail9IEEEFloat9remainderERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.g), !inline_history !201
  br label %_ZN4llvh7APFloat9remainderERKS0_.exit

bb.e:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit
  %i.j = call noundef i32 @_ZN4llvh6detail13DoubleAPFloat9remainderERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.g), !inline_history !201
  br label %_ZN4llvh7APFloat9remainderERKS0_.exit

_ZN4llvh7APFloat9remainderERKS0_.exit:            ; preds = %bb.d, %bb.e
  %.0.i = phi i32 [ %i.i, %bb.d ], [ %i.j, %bb.e ]
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !18   ; 2 uses
  %.not.i = icmp eq ptr %i.k, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvh7APFloat9remainderERKS0_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !7
  %i.n = add i32 %i.m, -64
  %i.o = icmp ult i32 %i.n, -128
  br i1 %i.o, label %bb.g, label %_ZN4llvh7APFloatD2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !18   ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZN4llvh7APFloatD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.q) #24, !inline_history !160
  br label %_ZN4llvh7APFloatD2Ev.exit

bb.i:                                             ; preds = %_ZN4llvh7APFloat9remainderERKS0_.exit
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.g) #25, !inline_history !161
  br label %_ZN4llvh7APFloatD2Ev.exit

_ZN4llvh7APFloatD2Ev.exit:                        ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !20
  %i.u = icmp ugt i32 %i.t, 64
  br i1 %i.u, label %bb.j, label %_ZN4llvh5APIntD2Ev.exit2

bb.j:                                             ; preds = %_ZN4llvh7APFloatD2Ev.exit
  %i.v = load ptr, ptr %5, align 8, !tbaa !18     ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZN4llvh5APIntD2Ev.exit2, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.v) #24
  br label %_ZN4llvh5APIntD2Ev.exit2

_ZN4llvh5APIntD2Ev.exit2:                         ; preds = %_ZN4llvh7APFloatD2Ev.exit, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !18, !noalias !202
  %.not.i3 = icmp eq ptr %i.x, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i3, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit2
  call void @_ZNK4llvh6detail9IEEEFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %i.a), !inline_history !194
  br label %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit

bb.m:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit2
  call void @_ZNK4llvh6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %i.a), !inline_history !194
  br label %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit

_ZNK4llvh7APFloat14bitcastToAPIntEv.exit:         ; preds = %bb.l, %bb.m
  call void @_ZN4llvh6detail13DoubleAPFloatC2ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(12) @_ZN4llvhL18semPPCDoubleDoubleE, ptr noundef nonnull align 8 dereferenceable(12) %7)
  %.not.i4 = icmp eq ptr %0, %6
  br i1 %.not.i4, label %_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #25
  %i.y = load ptr, ptr %6, align 8, !tbaa !148
  store ptr %i.y, ptr %0, align 8, !tbaa !148
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !159
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !159
  store ptr null, ptr %i.aa, align 8, !tbaa !159
  store ptr @_ZN4llvhL8semBogusE, ptr %6, align 8, !tbaa !148
  br label %_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit

_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit:       ; preds = %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit, %bb.n
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #25
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %9 = load i32, ptr %8, align 8, !tbaa !20
  %10 = icmp ugt i32 %9, 64
  br i1 %10, label %bb.o, label %_ZN4llvh5APIntD2Ev.exit5

bb.o:                                             ; preds = %_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit
  %i.ac = load ptr, ptr %7, align 8, !tbaa !18    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %_ZN4llvh5APIntD2Ev.exit5, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZdaPv(ptr noundef nonnull %i.ac) #24
  br label %_ZN4llvh5APIntD2Ev.exit5

_ZN4llvh5APIntD2Ev.exit5:                         ; preds = %_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %.not.i6 = icmp eq ptr %i.ae, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i6, label %bb.t, label %bb.q

bb.q:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit5
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !7
  %i.ah = add i32 %i.ag, -64
  %i.ai = icmp ult i32 %i.ah, -128
  br i1 %i.ai, label %bb.r, label %_ZN4llvh7APFloatD2Ev.exit7

bb.r:                                             ; preds = %bb.q
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !18 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZN4llvh7APFloatD2Ev.exit7, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZdaPv(ptr noundef nonnull %i.ak) #24, !inline_history !160
  br label %_ZN4llvh7APFloatD2Ev.exit7

bb.t:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit5
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #25, !inline_history !161
  br label %_ZN4llvh7APFloatD2Ev.exit7

_ZN4llvh7APFloatD2Ev.exit7:                       ; preds = %bb.q, %bb.r, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret i32 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 25) i32 @_ZN4llvh6detail13DoubleAPFloat3modERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.llvh::APFloat", align 8     ; 4 uses
  %3 = alloca %"class.llvh::APInt", align 8       ; 6 uses
  %4 = alloca %"class.llvh::APFloat", align 8     ; 4 uses
  %5 = alloca %"class.llvh::APInt", align 8       ; 6 uses
  %6 = alloca %"class.llvh::detail::DoubleAPFloat", align 8 ; 8 uses
  %7 = alloca %"class.llvh::APInt", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZNK4llvh6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  call void @_ZN4llvh6detail9IEEEFloat28initFromPPCDoubleDoubleAPIntERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(12) %3), !inline_history !189
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !20
  %i.d = icmp ugt i32 %i.c, 64
  br i1 %i.d, label %bb.b, label %_ZN4llvh5APIntD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %3, align 8, !tbaa !18     ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN4llvh5APIntD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZdaPv(ptr noundef nonnull %i.e) #24
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZNK4llvh6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  call void @_ZN4llvh6detail9IEEEFloat28initFromPPCDoubleDoubleAPIntERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(12) %5), !inline_history !189
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !18
  %.not = icmp eq ptr %i.h, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit
  %i.i = call noundef i32 @_ZN4llvh6detail9IEEEFloat3modERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.g), !inline_history !205
  br label %_ZN4llvh7APFloat3modERKS0_.exit

bb.e:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit
  %i.j = call noundef i32 @_ZN4llvh6detail13DoubleAPFloat3modERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.g), !inline_history !205
  br label %_ZN4llvh7APFloat3modERKS0_.exit

_ZN4llvh7APFloat3modERKS0_.exit:                  ; preds = %bb.d, %bb.e
  %.0.i = phi i32 [ %i.i, %bb.d ], [ %i.j, %bb.e ]
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !18   ; 2 uses
  %.not.i = icmp eq ptr %i.k, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvh7APFloat3modERKS0_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !7
  %i.n = add i32 %i.m, -64
  %i.o = icmp ult i32 %i.n, -128
  br i1 %i.o, label %bb.g, label %_ZN4llvh7APFloatD2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !18   ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZN4llvh7APFloatD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.q) #24, !inline_history !160
  br label %_ZN4llvh7APFloatD2Ev.exit

bb.i:                                             ; preds = %_ZN4llvh7APFloat3modERKS0_.exit
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.g) #25, !inline_history !161
  br label %_ZN4llvh7APFloatD2Ev.exit

_ZN4llvh7APFloatD2Ev.exit:                        ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !20
  %i.u = icmp ugt i32 %i.t, 64
  br i1 %i.u, label %bb.j, label %_ZN4llvh5APIntD2Ev.exit2

bb.j:                                             ; preds = %_ZN4llvh7APFloatD2Ev.exit
  %i.v = load ptr, ptr %5, align 8, !tbaa !18     ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZN4llvh5APIntD2Ev.exit2, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.v) #24
  br label %_ZN4llvh5APIntD2Ev.exit2

_ZN4llvh5APIntD2Ev.exit2:                         ; preds = %_ZN4llvh7APFloatD2Ev.exit, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !18, !noalias !206
  %.not.i3 = icmp eq ptr %i.x, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i3, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit2
  call void @_ZNK4llvh6detail9IEEEFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %i.a), !inline_history !194
  br label %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit

bb.m:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit2
  call void @_ZNK4llvh6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %i.a), !inline_history !194
  br label %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit

_ZNK4llvh7APFloat14bitcastToAPIntEv.exit:         ; preds = %bb.l, %bb.m
  call void @_ZN4llvh6detail13DoubleAPFloatC2ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(12) @_ZN4llvhL18semPPCDoubleDoubleE, ptr noundef nonnull align 8 dereferenceable(12) %7)
  %.not.i4 = icmp eq ptr %0, %6
  br i1 %.not.i4, label %_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #25
  %i.y = load ptr, ptr %6, align 8, !tbaa !148
  store ptr %i.y, ptr %0, align 8, !tbaa !148
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !159
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !159
  store ptr null, ptr %i.aa, align 8, !tbaa !159
  store ptr @_ZN4llvhL8semBogusE, ptr %6, align 8, !tbaa !148
  br label %_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit

_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit:       ; preds = %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit, %bb.n
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #25
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %9 = load i32, ptr %8, align 8, !tbaa !20
  %10 = icmp ugt i32 %9, 64
  br i1 %10, label %bb.o, label %_ZN4llvh5APIntD2Ev.exit5

bb.o:                                             ; preds = %_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit
  %i.ac = load ptr, ptr %7, align 8, !tbaa !18    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %_ZN4llvh5APIntD2Ev.exit5, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZdaPv(ptr noundef nonnull %i.ac) #24
  br label %_ZN4llvh5APIntD2Ev.exit5

_ZN4llvh5APIntD2Ev.exit5:                         ; preds = %_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %.not.i6 = icmp eq ptr %i.ae, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i6, label %bb.t, label %bb.q

bb.q:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit5
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !7
  %i.ah = add i32 %i.ag, -64
  %i.ai = icmp ult i32 %i.ah, -128
  br i1 %i.ai, label %bb.r, label %_ZN4llvh7APFloatD2Ev.exit7

bb.r:                                             ; preds = %bb.q
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !18 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZN4llvh7APFloatD2Ev.exit7, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZdaPv(ptr noundef nonnull %i.ak) #24, !inline_history !160
  br label %_ZN4llvh7APFloatD2Ev.exit7

bb.t:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit5
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #25, !inline_history !161
  br label %_ZN4llvh7APFloatD2Ev.exit7

_ZN4llvh7APFloatD2Ev.exit7:                       ; preds = %bb.q, %bb.r, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret i32 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 32) i32 @_ZN4llvh6detail13DoubleAPFloat16fusedMultiplyAddERKS1_S3_NS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i32 noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca %"class.llvh::APFloat", align 8     ; 4 uses
  %5 = alloca %"class.llvh::APInt", align 8       ; 6 uses
  %6 = alloca %"class.llvh::APFloat", align 8     ; 4 uses
  %7 = alloca %"class.llvh::APInt", align 8       ; 6 uses
  %8 = alloca %"class.llvh::APFloat", align 8     ; 4 uses
  %9 = alloca %"class.llvh::APInt", align 8       ; 6 uses
  %10 = alloca %"class.llvh::detail::DoubleAPFloat", align 8 ; 8 uses
  %11 = alloca %"class.llvh::APInt", align 8      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZNK4llvh6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  call void @_ZN4llvh6detail9IEEEFloat28initFromPPCDoubleDoubleAPIntERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(12) %5), !inline_history !189
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !20
  %i.d = icmp ugt i32 %i.c, 64
  br i1 %i.d, label %bb.b, label %_ZN4llvh5APIntD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %5, align 8, !tbaa !18     ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN4llvh5APIntD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZdaPv(ptr noundef nonnull %i.e) #24
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @_ZNK4llvh6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  call void @_ZN4llvh6detail9IEEEFloat28initFromPPCDoubleDoubleAPIntERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(12) %7), !inline_history !189
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @_ZNK4llvh6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  call void @_ZN4llvh6detail9IEEEFloat28initFromPPCDoubleDoubleAPIntERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(12) %9), !inline_history !189
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !18
  %.not = icmp eq ptr %i.i, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit
  %i.j = call noundef i32 @_ZN4llvh6detail9IEEEFloat16fusedMultiplyAddERKS1_S3_NS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i32 noundef %3), !inline_history !209
  br label %_ZN4llvh7APFloat16fusedMultiplyAddERKS0_S2_NS_11APFloatBase12roundingModeE.exit

bb.e:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit
  %i.k = call noundef i32 @_ZN4llvh6detail13DoubleAPFloat16fusedMultiplyAddERKS1_S3_NS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i32 noundef %3), !inline_history !209
  br label %_ZN4llvh7APFloat16fusedMultiplyAddERKS0_S2_NS_11APFloatBase12roundingModeE.exit

_ZN4llvh7APFloat16fusedMultiplyAddERKS0_S2_NS_11APFloatBase12roundingModeE.exit: ; preds = %bb.d, %bb.e
  %.0.i = phi i32 [ %i.j, %bb.d ], [ %i.k, %bb.e ]
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !18   ; 2 uses
  %.not.i = icmp eq ptr %i.l, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvh7APFloat16fusedMultiplyAddERKS0_S2_NS_11APFloatBase12roundingModeE.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !7
  %i.o = add i32 %i.n, -64
  %i.p = icmp ult i32 %i.o, -128
  br i1 %i.p, label %bb.g, label %_ZN4llvh7APFloatD2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !18   ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN4llvh7APFloatD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.r) #24, !inline_history !160
  br label %_ZN4llvh7APFloatD2Ev.exit

bb.i:                                             ; preds = %_ZN4llvh7APFloat16fusedMultiplyAddERKS0_S2_NS_11APFloatBase12roundingModeE.exit
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.h) #25, !inline_history !161
  br label %_ZN4llvh7APFloatD2Ev.exit

_ZN4llvh7APFloatD2Ev.exit:                        ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !20
  %i.v = icmp ugt i32 %i.u, 64
  br i1 %i.v, label %bb.j, label %_ZN4llvh5APIntD2Ev.exit4

bb.j:                                             ; preds = %_ZN4llvh7APFloatD2Ev.exit
  %i.w = load ptr, ptr %9, align 8, !tbaa !18     ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZN4llvh5APIntD2Ev.exit4, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.w) #24
  br label %_ZN4llvh5APIntD2Ev.exit4

_ZN4llvh5APIntD2Ev.exit4:                         ; preds = %_ZN4llvh7APFloatD2Ev.exit, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !18   ; 2 uses
  %.not.i5 = icmp eq ptr %i.y, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i5, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit4
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !7
  %i.ab = add i32 %i.aa, -64
  %i.ac = icmp ult i32 %i.ab, -128
  br i1 %i.ac, label %bb.m, label %_ZN4llvh7APFloatD2Ev.exit6

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !18 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZN4llvh7APFloatD2Ev.exit6, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %i.ae) #24, !inline_history !160
  br label %_ZN4llvh7APFloatD2Ev.exit6

bb.o:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit4
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.g) #25, !inline_history !161
  br label %_ZN4llvh7APFloatD2Ev.exit6

_ZN4llvh7APFloatD2Ev.exit6:                       ; preds = %bb.l, %bb.m, %bb.n, %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !20
  %i.ai = icmp ugt i32 %i.ah, 64
  br i1 %i.ai, label %bb.p, label %_ZN4llvh5APIntD2Ev.exit7

bb.p:                                             ; preds = %_ZN4llvh7APFloatD2Ev.exit6
  %i.aj = load ptr, ptr %7, align 8, !tbaa !18    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZN4llvh5APIntD2Ev.exit7, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZdaPv(ptr noundef nonnull %i.aj) #24
  br label %_ZN4llvh5APIntD2Ev.exit7

_ZN4llvh5APIntD2Ev.exit7:                         ; preds = %_ZN4llvh7APFloatD2Ev.exit6, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !18, !noalias !210
  %.not.i8 = icmp eq ptr %i.al, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i8, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit7
  call void @_ZNK4llvh6detail9IEEEFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %i.a), !inline_history !194
  br label %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit

bb.s:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit7
  call void @_ZNK4llvh6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %11, ptr noundef nonnull align 8 dereferenceable(16) %i.a), !inline_history !194
  br label %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit

_ZNK4llvh7APFloat14bitcastToAPIntEv.exit:         ; preds = %bb.r, %bb.s
  call void @_ZN4llvh6detail13DoubleAPFloatC2ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(12) @_ZN4llvhL18semPPCDoubleDoubleE, ptr noundef nonnull align 8 dereferenceable(12) %11)
  %.not.i9 = icmp eq ptr %0, %10
  br i1 %.not.i9, label %_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit, label %bb.t

bb.t:                                             ; preds = %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #25
  %i.am = load ptr, ptr %10, align 8, !tbaa !148
  store ptr %i.am, ptr %0, align 8, !tbaa !148
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !159
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !159
  store ptr null, ptr %i.ao, align 8, !tbaa !159
  store ptr @_ZN4llvhL8semBogusE, ptr %10, align 8, !tbaa !148
  br label %_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit

_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit:       ; preds = %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit, %bb.t
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #25
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %13 = load i32, ptr %12, align 8, !tbaa !20
  %14 = icmp ugt i32 %13, 64
  br i1 %14, label %bb.u, label %_ZN4llvh5APIntD2Ev.exit10

bb.u:                                             ; preds = %_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit
  %i.aq = load ptr, ptr %11, align 8, !tbaa !18   ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZN4llvh5APIntD2Ev.exit10, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZdaPv(ptr noundef nonnull %i.aq) #24
  br label %_ZN4llvh5APIntD2Ev.exit10

_ZN4llvh5APIntD2Ev.exit10:                        ; preds = %_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit, %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %.not.i11 = icmp eq ptr %i.as, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i11, label %bb.z, label %bb.w

bb.w:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit10
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !7
  %i.av = add i32 %i.au, -64
  %i.aw = icmp ult i32 %i.av, -128
  br i1 %i.aw, label %bb.x, label %_ZN4llvh7APFloatD2Ev.exit12

bb.x:                                             ; preds = %bb.w
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !18 ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN4llvh7APFloatD2Ev.exit12, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZdaPv(ptr noundef nonnull %i.ay) #24, !inline_history !160
  br label %_ZN4llvh7APFloatD2Ev.exit12

bb.z:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit10
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #25, !inline_history !161
  br label %_ZN4llvh7APFloatD2Ev.exit12

_ZN4llvh7APFloatD2Ev.exit12:                      ; preds = %bb.w, %bb.x, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret i32 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 25) i32 @_ZN4llvh6detail13DoubleAPFloat15roundToIntegralENS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.llvh::APFloat", align 8     ; 4 uses
  %3 = alloca %"class.llvh::APInt", align 8       ; 6 uses
  %4 = alloca %"class.llvh::detail::DoubleAPFloat", align 8 ; 8 uses
  %5 = alloca %"class.llvh::APInt", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZNK4llvh6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  call void @_ZN4llvh6detail9IEEEFloat28initFromPPCDoubleDoubleAPIntERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(12) %3), !inline_history !189
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !20
  %i.d = icmp ugt i32 %i.c, 64
  br i1 %i.d, label %bb.b, label %_ZN4llvh5APIntD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %3, align 8, !tbaa !18     ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN4llvh5APIntD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZdaPv(ptr noundef nonnull %i.e) #24
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !18
  %.not = icmp eq ptr %i.g, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit
  %i.h = call noundef i32 @_ZN4llvh6detail9IEEEFloat15roundToIntegralENS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef %1), !inline_history !213
  br label %_ZN4llvh7APFloat15roundToIntegralENS_11APFloatBase12roundingModeE.exit

bb.e:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit
  %i.i = call noundef i32 @_ZN4llvh6detail13DoubleAPFloat15roundToIntegralENS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i32 noundef %1), !inline_history !213
  br label %_ZN4llvh7APFloat15roundToIntegralENS_11APFloatBase12roundingModeE.exit

_ZN4llvh7APFloat15roundToIntegralENS_11APFloatBase12roundingModeE.exit: ; preds = %bb.d, %bb.e
  %.0.i = phi i32 [ %i.h, %bb.d ], [ %i.i, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !18, !noalias !214
  %.not.i = icmp eq ptr %i.j, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4llvh7APFloat15roundToIntegralENS_11APFloatBase12roundingModeE.exit
  call void @_ZNK4llvh6detail9IEEEFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %i.a), !inline_history !194
  br label %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit

bb.g:                                             ; preds = %_ZN4llvh7APFloat15roundToIntegralENS_11APFloatBase12roundingModeE.exit
  call void @_ZNK4llvh6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %i.a), !inline_history !194
  br label %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit

_ZNK4llvh7APFloat14bitcastToAPIntEv.exit:         ; preds = %bb.f, %bb.g
  call void @_ZN4llvh6detail13DoubleAPFloatC2ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(12) @_ZN4llvhL18semPPCDoubleDoubleE, ptr noundef nonnull align 8 dereferenceable(12) %5)
  %.not.i2 = icmp eq ptr %0, %4
  br i1 %.not.i2, label %_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #25
  %i.k = load ptr, ptr %4, align 8, !tbaa !148
  store ptr %i.k, ptr %0, align 8, !tbaa !148
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !159
  store i64 %i.n, ptr %i.l, align 8, !tbaa !159
  store ptr null, ptr %i.m, align 8, !tbaa !159
  store ptr @_ZN4llvhL8semBogusE, ptr %4, align 8, !tbaa !148
  br label %_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit

_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit:       ; preds = %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit, %bb.h
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #25
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %7 = load i32, ptr %6, align 8, !tbaa !20
  %8 = icmp ugt i32 %7, 64
  br i1 %8, label %bb.i, label %_ZN4llvh5APIntD2Ev.exit3

bb.i:                                             ; preds = %_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit
  %i.o = load ptr, ptr %5, align 8, !tbaa !18     ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN4llvh5APIntD2Ev.exit3, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.o) #24
  br label %_ZN4llvh5APIntD2Ev.exit3

_ZN4llvh5APIntD2Ev.exit3:                         ; preds = %_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %.not.i4 = icmp eq ptr %i.q, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i4, label %bb.n, label %bb.k

bb.k:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit3
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !7
  %i.t = add i32 %i.s, -64
  %i.u = icmp ult i32 %i.t, -128
  br i1 %i.u, label %bb.l, label %_ZN4llvh7APFloatD2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !18   ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZN4llvh7APFloatD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.w) #24, !inline_history !160
  br label %_ZN4llvh7APFloatD2Ev.exit

bb.n:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit3
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #25, !inline_history !161
  br label %_ZN4llvh7APFloatD2Ev.exit

_ZN4llvh7APFloatD2Ev.exit:                        ; preds = %bb.k, %bb.l, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret i32 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZNK4llvh6detail13DoubleAPFloat20compareAbsoluteValueERKS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !159  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !159  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18   ; 2 uses
  %.not52 = icmp eq ptr %i.f, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not52, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.h = load i16, ptr %i.g, align 8, !tbaa !19
  %i.i = sext i16 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.k = load i16, ptr %i.j, align 8, !tbaa !19
  %i.l = sext i16 %i.k to i32
  %i.m = sub nsw i32 %i.i, %i.l                   ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %_ZNK4llvh6detail9IEEEFloat20compareAbsoluteValueERKS1_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !7    ; 2 uses
  %i.r = add i32 %i.q, -64
  %i.s = icmp ult i32 %i.r, -128
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %.0.i.i.i.i = select i1 %i.s, ptr %i.u, ptr %i.t
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !7
  %i.y = add i32 %i.x, -64
  %i.z = icmp ult i32 %i.y, -128
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  %.0.i.i8.i.i = select i1 %i.z, ptr %i.ab, ptr %i.aa
  %i.ac = add i32 %i.q, 64
  %i.ad = lshr i32 %i.ac, 6
  %i.ae = tail call noundef i32 @_ZN4llvh5APInt9tcCompareEPKmS2_j(ptr noundef %.0.i.i.i.i, ptr noundef %.0.i.i8.i.i, i32 noundef %i.ad) #25, !inline_history !177
  br label %_ZNK4llvh6detail9IEEEFloat20compareAbsoluteValueERKS1_.exit.i

_ZNK4llvh6detail9IEEEFloat20compareAbsoluteValueERKS1_.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.ae, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.af = icmp sgt i32 %.0.i.i, 0
  %i.ag = icmp sgt i32 %.0.i.i, -1
  %..i.i = zext i1 %i.ag to i32
  br i1 %i.af, label %_ZNK4llvh7APFloat20compareAbsoluteValueERKS0_.exit.thread, label %_ZNK4llvh7APFloat20compareAbsoluteValueERKS0_.exit

bb.d:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ai = tail call noundef i32 @_ZNK4llvh6detail13DoubleAPFloat20compareAbsoluteValueERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.ah), !inline_history !177
  br label %_ZNK4llvh7APFloat20compareAbsoluteValueERKS0_.exit

_ZNK4llvh7APFloat20compareAbsoluteValueERKS0_.exit: ; preds = %_ZNK4llvh6detail9IEEEFloat20compareAbsoluteValueERKS1_.exit.i, %bb.d
  %.0.i = phi i32 [ %..i.i, %_ZNK4llvh6detail9IEEEFloat20compareAbsoluteValueERKS1_.exit.i ], [ %i.ai, %bb.d ] ; 2 uses
  %.not = icmp eq i32 %.0.i, 1
  br i1 %.not, label %bb.e, label %_ZNK4llvh7APFloat20compareAbsoluteValueERKS0_.exit.thread

bb.e:                                             ; preds = %_ZNK4llvh7APFloat20compareAbsoluteValueERKS0_.exit
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !159 ; 3 uses
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !159 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 40 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !18 ; 2 uses
  %.not53 = icmp eq ptr %i.am, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not53, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.ao = load i16, ptr %i.an, align 8, !tbaa !19
  %i.ap = sext i16 %i.ao to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.ar = load i16, ptr %i.aq, align 8, !tbaa !19
  %i.as = sext i16 %i.ar to i32
  %i.at = sub nsw i32 %i.ap, %i.as                ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.g, label %_ZNK4llvh6detail9IEEEFloat20compareAbsoluteValueERKS1_.exit.i34

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !7  ; 2 uses
  %i.ay = add i32 %i.ax, -64
  %i.az = icmp ult i32 %i.ay, -128
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  %.0.i.i.i.i38 = select i1 %i.az, ptr %i.bb, ptr %i.ba
  %i.bc = load ptr, ptr %i.av, align 8, !tbaa !13
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !7
  %i.bf = add i32 %i.be, -64
  %i.bg = icmp ult i32 %i.bf, -128
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ak, i64 48 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  %.0.i.i8.i.i39 = select i1 %i.bg, ptr %i.bi, ptr %i.bh
  %i.bj = add i32 %i.ax, 64
  %i.bk = lshr i32 %i.bj, 6
  %i.bl = tail call noundef i32 @_ZN4llvh5APInt9tcCompareEPKmS2_j(ptr noundef %.0.i.i.i.i38, ptr noundef %.0.i.i8.i.i39, i32 noundef %i.bk) #25, !inline_history !177
  br label %_ZNK4llvh6detail9IEEEFloat20compareAbsoluteValueERKS1_.exit.i34

_ZNK4llvh6detail9IEEEFloat20compareAbsoluteValueERKS1_.exit.i34: ; preds = %bb.g, %bb.f
  %.0.i.i35 = phi i32 [ %i.bl, %bb.g ], [ %i.at, %bb.f ] ; 2 uses
  %i.bm = icmp sgt i32 %.0.i.i35, 0
  %i.bn = icmp sgt i32 %.0.i.i35, -1
  %..i.i36 = zext i1 %i.bn to i32
  %.06.i.i37 = select i1 %i.bm, i32 2, i32 %..i.i36
  br label %_ZNK4llvh7APFloat20compareAbsoluteValueERKS0_.exit40

bb.h:                                             ; preds = %bb.e
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.bp = tail call noundef i32 @_ZNK4llvh6detail13DoubleAPFloat20compareAbsoluteValueERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %i.bo), !inline_history !177
  br label %_ZNK4llvh7APFloat20compareAbsoluteValueERKS0_.exit40

_ZNK4llvh7APFloat20compareAbsoluteValueERKS0_.exit40: ; preds = %_ZNK4llvh6detail9IEEEFloat20compareAbsoluteValueERKS1_.exit.i34, %bb.h
  %.0.i33 = phi i32 [ %.06.i.i37, %_ZNK4llvh6detail9IEEEFloat20compareAbsoluteValueERKS1_.exit.i34 ], [ %i.bp, %bb.h ] ; 4 uses
  %i.bq = and i32 %.0.i33, -3
  %or.cond = icmp eq i32 %i.bq, 0
  br i1 %or.cond, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZNK4llvh7APFloat20compareAbsoluteValueERKS0_.exit40
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !159 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !18
  %.not.i.i = icmp eq ptr %i.bt, @_ZN4llvhL18semPPCDoubleDoubleE
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.0.i.i41 = select i1 %.not.i.i, ptr %i.bw, ptr %i.bs
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i41, i64 18
  %i.by = load i8, ptr %i.bx, align 2
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 40 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !18
  %.not.i.i42 = icmp eq ptr %i.ca, @_ZN4llvhL18semPPCDoubleDoubleE
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.0.i.i43 = select i1 %.not.i.i42, ptr %i.cd, ptr %i.bz
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i.i43, i64 18
  %i.cf = load i8, ptr %i.ce, align 2
  %i.cg = xor i8 %i.cf, %i.by                     ; 2 uses
  %i.ch = and i8 %i.cg, 8                         ; 2 uses
  %.not54 = icmp eq i8 %i.ch, 0                   ; 2 uses
  %i.ci = load ptr, ptr %i.c, align 8, !tbaa !159 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !18
  %.not.i.i44 = icmp eq ptr %i.ck, @_ZN4llvhL18semPPCDoubleDoubleE
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %.0.i.i45 = select i1 %.not.i.i44, ptr %i.cn, ptr %i.cj
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i.i45, i64 18
  %i.cp = load i8, ptr %i.co, align 2
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ci, i64 40 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !18
  %.not.i.i46 = icmp eq ptr %i.cr, @_ZN4llvhL18semPPCDoubleDoubleE
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.0.i.i47 = select i1 %.not.i.i46, ptr %i.cu, ptr %i.cq
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i.i47, i64 18
  %i.cw = load i8, ptr %i.cv, align 2
  %i.cx = xor i8 %i.cw, %i.cp                     ; 3 uses
  %i.cy = and i8 %i.cx, 8
  %i.cz = icmp ne i8 %i.cy, 0                     ; 2 uses
  %or.cond3 = or i1 %.not54, %i.cz
end_hunk_1
begin_hunk_2_@_ZNK4llvh7APFloat14bitwiseIsEqualERKS0_:bb.a
  %i.v = load i16, ptr %i.u, align 8, !tbaa !19
  %.not13.i = icmp eq i16 %i.t, %i.v
  br i1 %.not13.i, label %bb.g, label %_ZNK4llvh6detail9IEEEFloat14bitwiseIsEqualERKS1_.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.lcssa, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !7    ; 2 uses
  %i.y = add i32 %i.x, 64
  %i.z = lshr i32 %i.y, 3
  %i.aa = and i32 %i.z, 536870904                 ; 2 uses
  %.not.not.i.i.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.not.i.i.i.i.i, label %_ZNK4llvh6detail9IEEEFloat14bitwiseIsEqualERKS1_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.idx.i = zext nneg i32 %i.aa to i64
  %i.ab = add i32 %i.x, -64
  %i.ac = icmp ult i32 %i.ab, -128
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr13.lcssa, i64 16 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  %.0.i.i.i = select i1 %i.ac, ptr %i.ae, ptr %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %.lcssa35, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !7
  %i.ah = add i32 %i.ag, -64
  %i.ai = icmp ult i32 %i.ah, -128
  %i.aj = getelementptr inbounds nuw i8, ptr %.tr614.lcssa, i64 16 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8
  %.0.i.i15.i = select i1 %i.ai, ptr %i.ak, ptr %i.aj
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %.0.i.i.i, ptr %.0.i.i15.i, i64 %.idx.i)
  %.not9.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br label %_ZNK4llvh6detail9IEEEFloat14bitwiseIsEqualERKS1_.exit

.lr.ph40:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.tr1339 = phi ptr [ %i.e, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  %.tr61438 = phi ptr [ %i.f, %.lr.ph ], [ %1, %.lr.ph.preheader ]
  %i.al = getelementptr inbounds nuw i8, ptr %.tr1339, i64 16 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !159
  %i.an = getelementptr inbounds nuw i8, ptr %.tr61438, i64 16 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !159
  %i.ap = tail call noundef zeroext i1 @_ZNK4llvh7APFloat14bitwiseIsEqualERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.ao), !inline_history !220
  br i1 %i.ap, label %tailrecurse, label %_ZNK4llvh6detail9IEEEFloat14bitwiseIsEqualERKS1_.exit

tailrecurse:                                      ; preds = %.lr.ph40
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !159 ; 2 uses
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !159 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !18 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !18 ; 2 uses
  %.not = icmp eq ptr %i.at, %i.av
  br i1 %.not, label %.lr.ph, label %_ZNK4llvh6detail9IEEEFloat14bitwiseIsEqualERKS1_.exit

_ZNK4llvh6detail9IEEEFloat14bitwiseIsEqualERKS1_.exit: ; preds = %tailrecurse, %.lr.ph40, %bb.a, %bb.h, %bb.g, %bb.f, %bb.d, %bb.d, %bb.c, %bb.b, %.lr.ph._crit_edge
  %.0 = phi i1 [ %.not9.i.i.i.i.i, %bb.h ], [ true, %bb.d ], [ false, %bb.f ], [ true, %.lr.ph._crit_edge ], [ true, %bb.g ], [ true, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ false, %.lr.ph40 ], [ false, %tailrecurse ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN4llvh6detail10hash_valueERKNS0_13DoubleAPFloatE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !159  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18
  %.not10 = icmp eq ptr %i.d, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i64 @_ZN4llvh6detail10hash_valueERKNS0_9IEEEFloatE(ptr noundef nonnull align 8 dereferenceable(24) %i.c), !inline_history !221
  br label %_ZN4llvh10hash_valueERKNS_7APFloatE.exit

bb.d:                                             ; preds = %bb.b
  %i.f = tail call i64 @_ZN4llvh6detail10hash_valueERKNS0_13DoubleAPFloatE(ptr noundef nonnull align 8 dereferenceable(16) %i.c), !inline_history !221
  br label %_ZN4llvh10hash_valueERKNS_7APFloatE.exit

_ZN4llvh10hash_valueERKNS_7APFloatE.exit:         ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi i64 [ %i.e, %bb.c ], [ %i.f, %bb.d ]
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !159
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18
  %.not11 = icmp eq ptr %i.i, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not11, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh10hash_valueERKNS_7APFloatE.exit
  %i.j = tail call i64 @_ZN4llvh6detail10hash_valueERKNS0_9IEEEFloatE(ptr noundef nonnull align 8 dereferenceable(24) %i.h), !inline_history !221
  br label %_ZN4llvh10hash_valueERKNS_7APFloatE.exit5

bb.f:                                             ; preds = %_ZN4llvh10hash_valueERKNS_7APFloatE.exit
  %i.k = tail call i64 @_ZN4llvh6detail10hash_valueERKNS0_13DoubleAPFloatE(ptr noundef nonnull align 8 dereferenceable(16) %i.h), !inline_history !221
  br label %_ZN4llvh10hash_valueERKNS_7APFloatE.exit5

_ZN4llvh10hash_valueERKNS_7APFloatE.exit5:        ; preds = %bb.e, %bb.f
  %.sroa.0.0.i4 = phi i64 [ %i.j, %bb.e ], [ %i.k, %bb.f ] ; 2 uses
  %i.l = load atomic i8, ptr @_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed acquire, align 8
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.g, label %_ZN4llvh12hash_combineIJNS_9hash_codeES1_EEES1_DpRKT_.exit, !prof !99

bb.g:                                             ; preds = %_ZN4llvh10hash_valueERKNS_7APFloatE.exit5
  %i.n = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed) #25
  %.not.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i, label %_ZN4llvh12hash_combineIJNS_9hash_codeES1_EEES1_DpRKT_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = load i64, ptr @_ZN4llvh7hashing6detail19fixed_seed_overrideE, align 8, !tbaa !22 ; 2 uses
  %.not1.i.i.i = icmp eq i64 %i.o, 0
  %i.p = select i1 %.not1.i.i.i, i64 -49064778989728563, i64 %i.o
  store i64 %i.p, ptr @_ZZN4llvh7hashing6detail18get_execution_seedEvE4seed, align 8, !tbaa !22
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed) #25
  br label %_ZN4llvh12hash_combineIJNS_9hash_codeES1_EEES1_DpRKT_.exit

_ZN4llvh12hash_combineIJNS_9hash_codeES1_EEES1_DpRKT_.exit: ; preds = %_ZN4llvh10hash_valueERKNS_7APFloatE.exit5, %bb.g, %bb.h
  %i.q = load i64, ptr @_ZZN4llvh7hashing6detail18get_execution_seedEvE4seed, align 8, !tbaa !22
  %i.r = add i64 %.sroa.0.0.i4, 16                ; 2 uses
  %i.s = tail call i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 48) ; 2 uses
  %i.t = xor i64 %.sroa.0.0.i, %i.q
  %i.u = xor i64 %i.t, %i.s
  %i.v = mul i64 %i.u, -7070675565921424023       ; 2 uses
  %i.w = lshr i64 %i.v, 47
  %i.x = xor i64 %i.s, %i.w
  %i.y = xor i64 %i.x, %i.v
  %i.z = mul i64 %i.y, -7070675565921424023       ; 2 uses
  %i.aa = lshr i64 %i.z, 47
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = mul i64 %i.ab, -7070675565921424023
  %i.ad = xor i64 %i.ac, %.sroa.0.0.i4
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  %i.ae = load atomic i8, ptr @_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed acquire, align 8
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %bb.j, label %_ZN4llvh12hash_combineIJPKNS_12fltSemanticsEEEENS_9hash_codeEDpRKT_.exit, !prof !99

bb.j:                                             ; preds = %bb.i
  %i.ag = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed) #25
  %.not.i.i.i6 = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i.i6, label %_ZN4llvh12hash_combineIJPKNS_12fltSemanticsEEEENS_9hash_codeEDpRKT_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = load i64, ptr @_ZN4llvh7hashing6detail19fixed_seed_overrideE, align 8, !tbaa !22 ; 2 uses
  %.not1.i.i.i7 = icmp eq i64 %i.ah, 0
  %i.ai = select i1 %.not1.i.i.i7, i64 -49064778989728563, i64 %i.ah
  store i64 %i.ai, ptr @_ZZN4llvh7hashing6detail18get_execution_seedEvE4seed, align 8, !tbaa !22
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed) #25
  br label %_ZN4llvh12hash_combineIJPKNS_12fltSemanticsEEEENS_9hash_codeEDpRKT_.exit

_ZN4llvh12hash_combineIJPKNS_12fltSemanticsEEEENS_9hash_codeEDpRKT_.exit: ; preds = %bb.i, %bb.j, %bb.k
  %i.aj = load i64, ptr @_ZZN4llvh7hashing6detail18get_execution_seedEvE4seed, align 8, !tbaa !22
  %i.ak = load ptr, ptr %0, align 8, !tbaa !158
  %i.al = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.am = shl i64 %i.al, 3
  %i.an = and i64 %i.am, 34359738360
  %i.ao = add nuw nsw i64 %i.an, 8
  %.sroa.0.4.extract.shift = lshr i64 %i.al, 32
  %i.ap = xor i64 %.sroa.0.4.extract.shift, %i.aj ; 2 uses
  %i.aq = xor i64 %i.ao, %i.ap
  %i.ar = mul i64 %i.aq, -7070675565921424023     ; 2 uses
  %i.as = lshr i64 %i.ar, 47
  %i.at = xor i64 %i.ap, %i.as
  %i.au = xor i64 %i.at, %i.ar
  %i.av = mul i64 %i.au, -7070675565921424023     ; 2 uses
  %i.aw = lshr i64 %i.av, 47
  %i.ax = xor i64 %i.aw, %i.av
  %i.ay = mul i64 %i.ax, -7070675565921424023
  br label %bb.l

bb.l:                                             ; preds = %_ZN4llvh12hash_combineIJPKNS_12fltSemanticsEEEENS_9hash_codeEDpRKT_.exit, %_ZN4llvh12hash_combineIJNS_9hash_codeES1_EEES1_DpRKT_.exit
  %.sroa.0.0 = phi i64 [ %i.ad, %_ZN4llvh12hash_combineIJNS_9hash_codeES1_EEES1_DpRKT_.exit ], [ %i.ay, %_ZN4llvh12hash_combineIJPKNS_12fltSemanticsEEEENS_9hash_codeEDpRKT_.exit ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN4llvh10hash_valueERKNS_7APFloatE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %.not = icmp eq ptr %i.b, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @_ZN4llvh6detail10hash_valueERKNS0_9IEEEFloatE(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @_ZN4llvh6detail10hash_valueERKNS0_13DoubleAPFloatE(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i64 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i64 %.sroa.0.0
}

declare void @_ZN4llvh5APIntC1EjjPKm(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef, i32 noundef, ptr noundef) unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN4llvh6detail13DoubleAPFloat17convertFromStringENS_9StringRefENS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca %"class.llvh::APFloat", align 8     ; 5 uses
  %5 = alloca %"class.llvh::detail::DoubleAPFloat", align 8 ; 8 uses
  %6 = alloca %"class.llvh::APInt", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  store ptr @_ZN4llvhL24semPPCDoubleDoubleLegacyE, ptr %i.a, align 8, !tbaa !13
  %i.b = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #23, !inline_history !222
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 26 ; 3 uses
  store i8 3, ptr %i.d, align 2
  %i.e = call noundef zeroext i1 @_ZN4llvh6detail9IEEEFloat25convertFromStringSpecialsENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %1, i64 %2)
  br i1 %i.e, label %_ZN4llvh7APFloat17convertFromStringENS_9StringRefENS_11APFloatBase12roundingModeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %1, align 1, !tbaa !18      ; 2 uses
  %i.g = icmp eq i8 %i.f, 45
  %i.h = load i8, ptr %i.d, align 2
  %i.i = select i1 %i.g, i8 8, i8 0
  %i.j = and i8 %i.h, -9
  %i.k = or disjoint i8 %i.j, %i.i
  store i8 %i.k, ptr %i.d, align 2
  switch i8 %i.f, label %bb.d [
    i8 45, label %bb.c
    i8 43, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.m = add i64 %2, -1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.016.i = phi ptr [ %i.l, %bb.c ], [ %1, %bb.b ] ; 4 uses
  %.0.i6 = phi i64 [ %i.m, %bb.c ], [ %2, %bb.b ] ; 3 uses
  %i.n = icmp ugt i64 %.0.i6, 1
  br i1 %i.n, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.o = load i8, ptr %.016.i, align 1, !tbaa !18
  %i.p = icmp eq i8 %i.o, 48
  br i1 %i.p, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.016.i, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !18
  switch i8 %i.r, label %bb.h [
    i8 120, label %bb.g
    i8 88, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.016.i, i64 2
  %i.t = add i64 %.0.i6, -2
  %i.u = call noundef i32 @_ZN4llvh6detail9IEEEFloat28convertFromHexadecimalStringENS_9StringRefENS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr nonnull %i.s, i64 %i.t, i32 noundef %3)
  br label %_ZN4llvh7APFloat17convertFromStringENS_9StringRefENS_11APFloatBase12roundingModeE.exit

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.v = call noundef i32 @_ZN4llvh6detail9IEEEFloat24convertFromDecimalStringENS_9StringRefENS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr nonnull %.016.i, i64 %.0.i6, i32 noundef %3)
  br label %_ZN4llvh7APFloat17convertFromStringENS_9StringRefENS_11APFloatBase12roundingModeE.exit

_ZN4llvh7APFloat17convertFromStringENS_9StringRefENS_11APFloatBase12roundingModeE.exit: ; preds = %bb.h, %bb.g, %bb.a
  %.0.i = phi i32 [ %i.v, %bb.h ], [ 0, %bb.a ], [ %i.u, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !18, !noalias !223
  %.not.i = icmp eq ptr %i.w, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4llvh7APFloat17convertFromStringENS_9StringRefENS_11APFloatBase12roundingModeE.exit
  call void @_ZNK4llvh6detail9IEEEFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %i.a), !inline_history !194
  br label %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit

bb.j:                                             ; preds = %_ZN4llvh7APFloat17convertFromStringENS_9StringRefENS_11APFloatBase12roundingModeE.exit
  call void @_ZNK4llvh6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %i.a), !inline_history !194
  br label %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit

_ZNK4llvh7APFloat14bitcastToAPIntEv.exit:         ; preds = %bb.i, %bb.j
  call void @_ZN4llvh6detail13DoubleAPFloatC2ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(12) @_ZN4llvhL18semPPCDoubleDoubleE, ptr noundef nonnull align 8 dereferenceable(12) %6)
  %.not.i4 = icmp eq ptr %0, %5
  br i1 %.not.i4, label %_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #25
  %i.x = load ptr, ptr %5, align 8, !tbaa !148
  store ptr %i.x, ptr %0, align 8, !tbaa !148
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !159
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !159
  store ptr null, ptr %i.z, align 8, !tbaa !159
  store ptr @_ZN4llvhL8semBogusE, ptr %5, align 8, !tbaa !148
  br label %_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit

_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit:       ; preds = %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit, %bb.k
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #25
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %8 = load i32, ptr %7, align 8, !tbaa !20
  %9 = icmp ugt i32 %8, 64
  br i1 %9, label %bb.l, label %_ZN4llvh5APIntD2Ev.exit

bb.l:                                             ; preds = %_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit
  %i.ab = load ptr, ptr %6, align 8, !tbaa !18    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN4llvh5APIntD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.ab) #24
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %.not.i5 = icmp eq ptr %i.ad, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i5, label %bb.q, label %bb.n

bb.n:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !7
  %i.ag = add i32 %i.af, -64
  %i.ah = icmp ult i32 %i.ag, -128
  br i1 %i.ah, label %bb.o, label %_ZN4llvh7APFloatD2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !18  ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZN4llvh7APFloatD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZdaPv(ptr noundef nonnull %i.ai) #24, !inline_history !160
  br label %_ZN4llvh7APFloatD2Ev.exit

bb.q:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #25, !inline_history !161
  br label %_ZN4llvh7APFloatD2Ev.exit

_ZN4llvh7APFloatD2Ev.exit:                        ; preds = %bb.n, %bb.o, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret i32 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN4llvh7APFloat17convertFromStringENS_9StringRefENS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %.not = icmp eq ptr %i.b, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN4llvh6detail9IEEEFloat25convertFromStringSpecialsENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %1, i64 %2)
  br i1 %i.c, label %_ZN4llvh6detail9IEEEFloat17convertFromStringENS_9StringRefENS_11APFloatBase12roundingModeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i8, ptr %1, align 1, !tbaa !18
  %i.e = icmp eq i8 %i.d, 45
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.g = load i8, ptr %i.f, align 2
  %i.h = select i1 %i.e, i8 8, i8 0
  %i.i = and i8 %i.g, -9
  %i.j = or disjoint i8 %i.i, %i.h
  store i8 %i.j, ptr %i.f, align 2
  %i.k = load i8, ptr %1, align 1, !tbaa !18
  switch i8 %i.k, label %bb.e [
    i8 45, label %bb.d
    i8 43, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.m = add i64 %2, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.016.i = phi ptr [ %i.l, %bb.d ], [ %1, %bb.c ] ; 4 uses
  %.0.i = phi i64 [ %i.m, %bb.d ], [ %2, %bb.c ]  ; 3 uses
  %i.n = icmp ugt i64 %.0.i, 1
  br i1 %i.n, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.o = load i8, ptr %.016.i, align 1, !tbaa !18
  %i.p = icmp eq i8 %i.o, 48
  br i1 %i.p, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %.016.i, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !18
  switch i8 %i.r, label %bb.i [
    i8 120, label %bb.h
    i8 88, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %.016.i, i64 2
  %i.t = add i64 %.0.i, -2
  %i.u = tail call noundef i32 @_ZN4llvh6detail9IEEEFloat28convertFromHexadecimalStringENS_9StringRefENS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr nonnull %i.s, i64 %i.t, i32 noundef %3)
  br label %_ZN4llvh6detail9IEEEFloat17convertFromStringENS_9StringRefENS_11APFloatBase12roundingModeE.exit

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.v = tail call noundef i32 @_ZN4llvh6detail9IEEEFloat24convertFromDecimalStringENS_9StringRefENS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr nonnull %.016.i, i64 %.0.i, i32 noundef %3)
  br label %_ZN4llvh6detail9IEEEFloat17convertFromStringENS_9StringRefENS_11APFloatBase12roundingModeE.exit

bb.j:                                             ; preds = %bb.a
  %i.w = tail call noundef i32 @_ZN4llvh6detail13DoubleAPFloat17convertFromStringENS_9StringRefENS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr %1, i64 %2, i32 noundef %3)
  br label %_ZN4llvh6detail9IEEEFloat17convertFromStringENS_9StringRefENS_11APFloatBase12roundingModeE.exit

_ZN4llvh6detail9IEEEFloat17convertFromStringENS_9StringRefENS_11APFloatBase12roundingModeE.exit: ; preds = %bb.i, %bb.h, %bb.b, %bb.j
  %.0 = phi i32 [ %i.w, %bb.j ], [ 0, %bb.b ], [ %i.u, %bb.h ], [ %i.v, %bb.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN4llvh6detail13DoubleAPFloat4nextEb(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.llvh::APFloat", align 8     ; 4 uses
  %3 = alloca %"class.llvh::APInt", align 8       ; 6 uses
  %4 = alloca %"class.llvh::detail::DoubleAPFloat", align 8 ; 8 uses
  %5 = alloca %"class.llvh::APInt", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZNK4llvh6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  call void @_ZN4llvh6detail9IEEEFloat28initFromPPCDoubleDoubleAPIntERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(12) %3), !inline_history !189
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !20
  %i.d = icmp ugt i32 %i.c, 64
  br i1 %i.d, label %bb.b, label %_ZN4llvh5APIntD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %3, align 8, !tbaa !18     ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN4llvh5APIntD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZdaPv(ptr noundef nonnull %i.e) #24
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !18
  %.not = icmp eq ptr %i.g, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit
  %i.h = call noundef i32 @_ZN4llvh6detail9IEEEFloat4nextEb(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i1 noundef zeroext %1), !inline_history !226
  br label %_ZN4llvh7APFloat4nextEb.exit

bb.e:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit
  %i.i = call noundef i32 @_ZN4llvh6detail13DoubleAPFloat4nextEb(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i1 noundef zeroext %1), !inline_history !226
  br label %_ZN4llvh7APFloat4nextEb.exit

_ZN4llvh7APFloat4nextEb.exit:                     ; preds = %bb.d, %bb.e
  %.0.i = phi i32 [ %i.h, %bb.d ], [ %i.i, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !18, !noalias !227
  %.not.i = icmp eq ptr %i.j, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4llvh7APFloat4nextEb.exit
  call void @_ZNK4llvh6detail9IEEEFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %i.a), !inline_history !194
  br label %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit

bb.g:                                             ; preds = %_ZN4llvh7APFloat4nextEb.exit
  call void @_ZNK4llvh6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %i.a), !inline_history !194
  br label %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit

_ZNK4llvh7APFloat14bitcastToAPIntEv.exit:         ; preds = %bb.f, %bb.g
  call void @_ZN4llvh6detail13DoubleAPFloatC2ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(12) @_ZN4llvhL18semPPCDoubleDoubleE, ptr noundef nonnull align 8 dereferenceable(12) %5)
  %.not.i2 = icmp eq ptr %0, %4
  br i1 %.not.i2, label %_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #25
  %i.k = load ptr, ptr %4, align 8, !tbaa !148
  store ptr %i.k, ptr %0, align 8, !tbaa !148
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !159
  store i64 %i.n, ptr %i.l, align 8, !tbaa !159
  store ptr null, ptr %i.m, align 8, !tbaa !159
  store ptr @_ZN4llvhL8semBogusE, ptr %4, align 8, !tbaa !148
  br label %_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit

_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit:       ; preds = %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit, %bb.h
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #25
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %7 = load i32, ptr %6, align 8, !tbaa !20
  %8 = icmp ugt i32 %7, 64
  br i1 %8, label %bb.i, label %_ZN4llvh5APIntD2Ev.exit3

bb.i:                                             ; preds = %_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit
  %i.o = load ptr, ptr %5, align 8, !tbaa !18     ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN4llvh5APIntD2Ev.exit3, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.o) #24
  br label %_ZN4llvh5APIntD2Ev.exit3

_ZN4llvh5APIntD2Ev.exit3:                         ; preds = %_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %.not.i4 = icmp eq ptr %i.q, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i4, label %bb.n, label %bb.k

bb.k:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit3
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !7
  %i.t = add i32 %i.s, -64
  %i.u = icmp ult i32 %i.t, -128
  br i1 %i.u, label %bb.l, label %_ZN4llvh7APFloatD2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !18   ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZN4llvh7APFloatD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.w) #24, !inline_history !160
  br label %_ZN4llvh7APFloatD2Ev.exit

bb.n:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit3
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #25, !inline_history !161
  br label %_ZN4llvh7APFloatD2Ev.exit

_ZN4llvh7APFloatD2Ev.exit:                        ; preds = %bb.k, %bb.l, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret i32 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 17) i32 @_ZNK4llvh6detail13DoubleAPFloat16convertToIntegerENS_15MutableArrayRefImEEjbNS_11APFloatBase12roundingModeEPb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr %1, i64 %2, i32 noundef %3, i1 noundef zeroext %4, i32 noundef %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #2 align 2 {
bb.a:
  %7 = alloca %"class.llvh::APFloat", align 8     ; 5 uses
  %8 = alloca %"class.llvh::APInt", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @_ZNK4llvh6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  call void @_ZN4llvh6detail9IEEEFloat28initFromPPCDoubleDoubleAPIntERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(12) %8), !inline_history !189
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %.not = icmp eq ptr %i.b, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call noundef i32 @_ZNK4llvh6detail9IEEEFloat28convertToSignExtendedIntegerENS_15MutableArrayRefImEEjbNS_11APFloatBase12roundingModeEPb(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %1, i64 poison, i32 noundef %3, i1 noundef zeroext %4, i32 noundef %5, ptr noundef %6) ; 2 uses
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %_ZNK4llvh7APFloat16convertToIntegerENS_15MutableArrayRefImEEjbNS_11APFloatBase12roundingModeEPb.exit

bb.c:                                             ; preds = %bb.b
  %i.e = add i32 %3, 63
  %i.f = lshr i32 %i.e, 6                         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 26 ; 2 uses
  %i.h = load i8, ptr %i.g, align 2               ; 2 uses
  %i.i = and i8 %i.h, 7
  %i.j = icmp eq i8 %i.i, 1
  br i1 %i.j, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = and i8 %i.h, 8
  %.not.i6 = icmp eq i8 %i.k, 0
  br i1 %.not.i6, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = zext i1 %4 to i32
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %.neg.i = sext i1 %4 to i32
  %i.m = add i32 %3, %.neg.i
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.0.i7 = phi i32 [ %i.m, %bb.f ], [ %i.l, %bb.e ], [ 0, %bb.c ]
  call void @_ZN4llvh5APInt25tcSetLeastSignificantBitsEPmjj(ptr noundef %1, i32 noundef %i.f, i32 noundef %.0.i7) #25
  %i.n = load i8, ptr %i.g, align 2
  %i.o = and i8 %i.n, 8
  %i.p = icmp ne i8 %i.o, 0
  %or.cond.i = and i1 %4, %i.p
  br i1 %or.cond.i, label %bb.h, label %_ZNK4llvh7APFloat16convertToIntegerENS_15MutableArrayRefImEEjbNS_11APFloatBase12roundingModeEPb.exit

bb.h:                                             ; preds = %bb.g
  %i.q = add i32 %3, -1
  call void @_ZN4llvh5APInt11tcShiftLeftEPmjj(ptr noundef %1, i32 noundef %i.f, i32 noundef %i.q) #25
  br label %_ZNK4llvh7APFloat16convertToIntegerENS_15MutableArrayRefImEEjbNS_11APFloatBase12roundingModeEPb.exit

bb.i:                                             ; preds = %bb.a
  %i.r = call noundef i32 @_ZNK4llvh6detail13DoubleAPFloat16convertToIntegerENS_15MutableArrayRefImEEjbNS_11APFloatBase12roundingModeEPb(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr %1, i64 %2, i32 noundef %3, i1 noundef zeroext %4, i32 noundef %5, ptr noundef %6), !inline_history !230
  br label %_ZNK4llvh7APFloat16convertToIntegerENS_15MutableArrayRefImEEjbNS_11APFloatBase12roundingModeEPb.exit

_ZNK4llvh7APFloat16convertToIntegerENS_15MutableArrayRefImEEjbNS_11APFloatBase12roundingModeEPb.exit: ; preds = %bb.h, %bb.g, %bb.b, %bb.i
  %.0.i = phi i32 [ %i.r, %bb.i ], [ %i.c, %bb.b ], [ 1, %bb.g ], [ 1, %bb.h ]
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %.not.i = icmp eq ptr %i.s, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %_ZNK4llvh7APFloat16convertToIntegerENS_15MutableArrayRefImEEjbNS_11APFloatBase12roundingModeEPb.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !7
  %i.v = add i32 %i.u, -64
  %i.w = icmp ult i32 %i.v, -128
  br i1 %i.w, label %bb.k, label %_ZN4llvh7APFloatD2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !18   ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZN4llvh7APFloatD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.y) #24, !inline_history !160
  br label %_ZN4llvh7APFloatD2Ev.exit

bb.m:                                             ; preds = %_ZNK4llvh7APFloat16convertToIntegerENS_15MutableArrayRefImEEjbNS_11APFloatBase12roundingModeEPb.exit
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #25, !inline_history !161
  br label %_ZN4llvh7APFloatD2Ev.exit

_ZN4llvh7APFloatD2Ev.exit:                        ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !20
  %i.ac = icmp ugt i32 %i.ab, 64
  br i1 %i.ac, label %bb.n, label %_ZN4llvh5APIntD2Ev.exit

bb.n:                                             ; preds = %_ZN4llvh7APFloatD2Ev.exit
  %i.ad = load ptr, ptr %8, align 8, !tbaa !18    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZN4llvh5APIntD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZdaPv(ptr noundef nonnull %i.ad) #24
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %_ZN4llvh7APFloatD2Ev.exit, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  ret i32 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvh7APFloat16convertToIntegerENS_15MutableArrayRefImEEjbNS_11APFloatBase12roundingModeEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i32 noundef %3, i1 noundef zeroext %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %.not = icmp eq ptr %i.b, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @_ZNK4llvh6detail9IEEEFloat28convertToSignExtendedIntegerENS_15MutableArrayRefImEEjbNS_11APFloatBase12roundingModeEPb(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %1, i64 poison, i32 noundef %3, i1 noundef zeroext %4, i32 noundef %5, ptr noundef %6) ; 2 uses
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %_ZNK4llvh6detail9IEEEFloat16convertToIntegerENS_15MutableArrayRefImEEjbNS_11APFloatBase12roundingModeEPb.exit

bb.c:                                             ; preds = %bb.b
  %i.e = add i32 %3, 63
  %i.f = lshr i32 %i.e, 6                         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.h = load i8, ptr %i.g, align 2               ; 2 uses
  %i.i = and i8 %i.h, 7
  %i.j = icmp eq i8 %i.i, 1
  br i1 %i.j, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = and i8 %i.h, 8
  %.not.i = icmp eq i8 %i.k, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = zext i1 %4 to i32
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %.neg.i = sext i1 %4 to i32
  %i.m = add i32 %3, %.neg.i
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.0.i = phi i32 [ %i.m, %bb.f ], [ %i.l, %bb.e ], [ 0, %bb.c ]
  tail call void @_ZN4llvh5APInt25tcSetLeastSignificantBitsEPmjj(ptr noundef %1, i32 noundef %i.f, i32 noundef %.0.i) #25
  %i.n = load i8, ptr %i.g, align 2
  %i.o = and i8 %i.n, 8
  %i.p = icmp ne i8 %i.o, 0
  %or.cond.i = and i1 %4, %i.p
  br i1 %or.cond.i, label %bb.h, label %_ZNK4llvh6detail9IEEEFloat16convertToIntegerENS_15MutableArrayRefImEEjbNS_11APFloatBase12roundingModeEPb.exit

bb.h:                                             ; preds = %bb.g
  %i.q = add i32 %3, -1
  tail call void @_ZN4llvh5APInt11tcShiftLeftEPmjj(ptr noundef %1, i32 noundef %i.f, i32 noundef %i.q) #25
  br label %_ZNK4llvh6detail9IEEEFloat16convertToIntegerENS_15MutableArrayRefImEEjbNS_11APFloatBase12roundingModeEPb.exit

bb.i:                                             ; preds = %bb.a
  %i.r = tail call noundef i32 @_ZNK4llvh6detail13DoubleAPFloat16convertToIntegerENS_15MutableArrayRefImEEjbNS_11APFloatBase12roundingModeEPb(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr %1, i64 %2, i32 noundef %3, i1 noundef zeroext %4, i32 noundef %5, ptr noundef %6)
  br label %_ZNK4llvh6detail9IEEEFloat16convertToIntegerENS_15MutableArrayRefImEEjbNS_11APFloatBase12roundingModeEPb.exit

_ZNK4llvh6detail9IEEEFloat16convertToIntegerENS_15MutableArrayRefImEEjbNS_11APFloatBase12roundingModeEPb.exit: ; preds = %bb.h, %bb.g, %bb.b, %bb.i
  %.0 = phi i32 [ %i.r, %bb.i ], [ %i.c, %bb.b ], [ 1, %bb.g ], [ 1, %bb.h ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 25) i32 @_ZN4llvh6detail13DoubleAPFloat16convertFromAPIntERKNS_5APIntEbNS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i1 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #2 align 2 {
_ZN4llvh7APFloat16convertFromAPIntERKNS_5APIntEbNS_11APFloatBase12roundingModeE.exit:
  %4 = alloca %"class.llvh::APFloat", align 8     ; 5 uses
  %5 = alloca %"class.llvh::detail::DoubleAPFloat", align 8 ; 8 uses
  %6 = alloca %"class.llvh::APInt", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  store ptr @_ZN4llvhL24semPPCDoubleDoubleLegacyE, ptr %i.a, align 8, !tbaa !13
  %i.b = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #23, !inline_history !222
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 26
  store i8 3, ptr %i.d, align 2
  %i.e = call noundef i32 @_ZN4llvh6detail9IEEEFloat16convertFromAPIntERKNS_5APIntEbNS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(12) %1, i1 noundef zeroext %2, i32 noundef %3), !inline_history !231
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !18, !noalias !232
  %.not.i = icmp eq ptr %i.f, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN4llvh7APFloat16convertFromAPIntERKNS_5APIntEbNS_11APFloatBase12roundingModeE.exit
  call void @_ZNK4llvh6detail9IEEEFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %i.a), !inline_history !194
  br label %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit

bb.b:                                             ; preds = %_ZN4llvh7APFloat16convertFromAPIntERKNS_5APIntEbNS_11APFloatBase12roundingModeE.exit
  call void @_ZNK4llvh6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %i.a), !inline_history !194
  br label %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit

_ZNK4llvh7APFloat14bitcastToAPIntEv.exit:         ; preds = %bb.a, %bb.b
  call void @_ZN4llvh6detail13DoubleAPFloatC2ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(12) @_ZN4llvhL18semPPCDoubleDoubleE, ptr noundef nonnull align 8 dereferenceable(12) %6)
  %.not.i4 = icmp eq ptr %0, %5
  br i1 %.not.i4, label %_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #25
  %i.g = load ptr, ptr %5, align 8, !tbaa !148
  store ptr %i.g, ptr %0, align 8, !tbaa !148
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !159
  store i64 %i.j, ptr %i.h, align 8, !tbaa !159
  store ptr null, ptr %i.i, align 8, !tbaa !159
  store ptr @_ZN4llvhL8semBogusE, ptr %5, align 8, !tbaa !148
  br label %_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit

_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit:       ; preds = %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit, %bb.c
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #25
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %8 = load i32, ptr %7, align 8, !tbaa !20
  %9 = icmp ugt i32 %8, 64
  br i1 %9, label %bb.d, label %_ZN4llvh5APIntD2Ev.exit

bb.d:                                             ; preds = %_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit
  %i.k = load ptr, ptr %6, align 8, !tbaa !18     ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN4llvh5APIntD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.k) #24
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %.not.i5 = icmp eq ptr %i.m, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i5, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !7
  %i.p = add i32 %i.o, -64
  %i.q = icmp ult i32 %i.p, -128
  br i1 %i.q, label %bb.g, label %_ZN4llvh7APFloatD2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !18   ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN4llvh7APFloatD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.r) #24, !inline_history !160
  br label %_ZN4llvh7APFloatD2Ev.exit

bb.i:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #25, !inline_history !161
  br label %_ZN4llvh7APFloatD2Ev.exit

_ZN4llvh7APFloatD2Ev.exit:                        ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 25) i32 @_ZN4llvh6detail13DoubleAPFloat30convertFromSignExtendedIntegerEPKmjbNS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #2 align 2 {
_ZN4llvh7APFloat30convertFromSignExtendedIntegerEPKmjbNS_11APFloatBase12roundingModeE.exit:
  %5 = alloca %"class.llvh::APFloat", align 8     ; 5 uses
  %6 = alloca %"class.llvh::detail::DoubleAPFloat", align 8 ; 8 uses
  %7 = alloca %"class.llvh::APInt", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  store ptr @_ZN4llvhL24semPPCDoubleDoubleLegacyE, ptr %i.a, align 8, !tbaa !13
  %i.b = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #23, !inline_history !222
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 26
  store i8 3, ptr %i.d, align 2
  %i.e = call noundef i32 @_ZN4llvh6detail9IEEEFloat30convertFromSignExtendedIntegerEPKmjbNS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4), !inline_history !235
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !18, !noalias !236
  %.not.i = icmp eq ptr %i.f, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN4llvh7APFloat30convertFromSignExtendedIntegerEPKmjbNS_11APFloatBase12roundingModeE.exit
  call void @_ZNK4llvh6detail9IEEEFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %i.a), !inline_history !194
  br label %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit

bb.b:                                             ; preds = %_ZN4llvh7APFloat30convertFromSignExtendedIntegerEPKmjbNS_11APFloatBase12roundingModeE.exit
  call void @_ZNK4llvh6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %i.a), !inline_history !194
  br label %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit

_ZNK4llvh7APFloat14bitcastToAPIntEv.exit:         ; preds = %bb.a, %bb.b
  call void @_ZN4llvh6detail13DoubleAPFloatC2ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(12) @_ZN4llvhL18semPPCDoubleDoubleE, ptr noundef nonnull align 8 dereferenceable(12) %7)
  %.not.i5 = icmp eq ptr %0, %6
  br i1 %.not.i5, label %_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #25
  %i.g = load ptr, ptr %6, align 8, !tbaa !148
  store ptr %i.g, ptr %0, align 8, !tbaa !148
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !159
  store i64 %i.j, ptr %i.h, align 8, !tbaa !159
  store ptr null, ptr %i.i, align 8, !tbaa !159
  store ptr @_ZN4llvhL8semBogusE, ptr %6, align 8, !tbaa !148
  br label %_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit

_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit:       ; preds = %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit, %bb.c
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #25
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %9 = load i32, ptr %8, align 8, !tbaa !20
  %10 = icmp ugt i32 %9, 64
  br i1 %10, label %bb.d, label %_ZN4llvh5APIntD2Ev.exit

bb.d:                                             ; preds = %_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit
  %i.k = load ptr, ptr %7, align 8, !tbaa !18     ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN4llvh5APIntD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.k) #24
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %.not.i6 = icmp eq ptr %i.m, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i6, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !7
  %i.p = add i32 %i.o, -64
  %i.q = icmp ult i32 %i.p, -128
  br i1 %i.q, label %bb.g, label %_ZN4llvh7APFloatD2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !18   ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN4llvh7APFloatD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.r) #24, !inline_history !160
  br label %_ZN4llvh7APFloatD2Ev.exit

bb.i:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #25, !inline_history !161
  br label %_ZN4llvh7APFloatD2Ev.exit

_ZN4llvh7APFloatD2Ev.exit:                        ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 25) i32 @_ZN4llvh6detail13DoubleAPFloat30convertFromZeroExtendedIntegerEPKmjbNS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #2 align 2 {
_ZN4llvh7APFloat30convertFromZeroExtendedIntegerEPKmjbNS_11APFloatBase12roundingModeE.exit:
  %5 = alloca %"class.llvh::APFloat", align 8     ; 5 uses
  %6 = alloca %"class.llvh::detail::DoubleAPFloat", align 8 ; 8 uses
  %7 = alloca %"class.llvh::APInt", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  store ptr @_ZN4llvhL24semPPCDoubleDoubleLegacyE, ptr %i.a, align 8, !tbaa !13
  %i.b = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #23, !inline_history !222
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 26
  store i8 3, ptr %i.d, align 2
  %i.e = call noundef i32 @_ZN4llvh6detail9IEEEFloat30convertFromZeroExtendedIntegerEPKmjbNS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4), !inline_history !239
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !18, !noalias !240
  %.not.i = icmp eq ptr %i.f, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN4llvh7APFloat30convertFromZeroExtendedIntegerEPKmjbNS_11APFloatBase12roundingModeE.exit
  call void @_ZNK4llvh6detail9IEEEFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %i.a), !inline_history !194
  br label %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit

bb.b:                                             ; preds = %_ZN4llvh7APFloat30convertFromZeroExtendedIntegerEPKmjbNS_11APFloatBase12roundingModeE.exit
  call void @_ZNK4llvh6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %i.a), !inline_history !194
  br label %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit

_ZNK4llvh7APFloat14bitcastToAPIntEv.exit:         ; preds = %bb.a, %bb.b
  call void @_ZN4llvh6detail13DoubleAPFloatC2ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(12) @_ZN4llvhL18semPPCDoubleDoubleE, ptr noundef nonnull align 8 dereferenceable(12) %7)
  %.not.i5 = icmp eq ptr %0, %6
  br i1 %.not.i5, label %_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #25
  %i.g = load ptr, ptr %6, align 8, !tbaa !148
  store ptr %i.g, ptr %0, align 8, !tbaa !148
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !159
  store i64 %i.j, ptr %i.h, align 8, !tbaa !159
  store ptr null, ptr %i.i, align 8, !tbaa !159
  store ptr @_ZN4llvhL8semBogusE, ptr %6, align 8, !tbaa !148
  br label %_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit

_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit:       ; preds = %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit, %bb.c
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #25
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %9 = load i32, ptr %8, align 8, !tbaa !20
  %10 = icmp ugt i32 %9, 64
  br i1 %10, label %bb.d, label %_ZN4llvh5APIntD2Ev.exit

bb.d:                                             ; preds = %_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit
  %i.k = load ptr, ptr %7, align 8, !tbaa !18     ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN4llvh5APIntD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.k) #24
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %_ZN4llvh6detail13DoubleAPFloataSEOS1_.exit, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %.not.i6 = icmp eq ptr %i.m, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i6, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !7
  %i.p = add i32 %i.o, -64
  %i.q = icmp ult i32 %i.p, -128
  br i1 %i.q, label %bb.g, label %_ZN4llvh7APFloatD2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !18   ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN4llvh7APFloatD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.r) #24, !inline_history !160
  br label %_ZN4llvh7APFloatD2Ev.exit

bb.i:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #25, !inline_history !161
  br label %_ZN4llvh7APFloatD2Ev.exit

_ZN4llvh7APFloatD2Ev.exit:                        ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZNK4llvh6detail13DoubleAPFloat18convertToHexStringEPcjbNS_11APFloatBase12roundingModeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #2 align 2 {
bb.a:
  %5 = alloca %"class.llvh::APFloat", align 8     ; 5 uses
  %6 = alloca %"class.llvh::APInt", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZNK4llvh6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  call void @_ZN4llvh6detail9IEEEFloat28initFromPPCDoubleDoubleAPIntERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(12) %6), !inline_history !189
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %.not = icmp eq ptr %i.b, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 26
  %i.d = load i8, ptr %i.c, align 2               ; 2 uses
  %i.e = and i8 %i.d, 8
  %.not.i4 = icmp eq i8 %i.e, 0
  br i1 %.not.i4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 45, ptr %1, align 1, !tbaa !18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i5 = phi ptr [ %i.f, %bb.c ], [ %1, %bb.b ] ; 11 uses
  %i.g = and i8 %i.d, 7
  switch i8 %i.g, label %_ZNK4llvh6detail9IEEEFloat18convertToHexStringEPcjbNS_11APFloatBase12roundingModeE.exit [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 3, label %bb.g
    i8 2, label %bb.j
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = select i1 %3, i64 6436850368004902473, i64 8751735898823356009
  store i64 %i.h, ptr %.0.i5, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i5, i64 8
  br label %_ZNK4llvh6detail9IEEEFloat18convertToHexStringEPcjbNS_11APFloatBase12roundingModeE.exit

bb.f:                                             ; preds = %bb.d
  %_ZN4llvhL4NaNUE._ZN4llvhL4NaNLE.i = select i1 %3, ptr @_ZN4llvhL4NaNUE, ptr @_ZN4llvhL4NaNLE
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.0.i5, ptr noundef nonnull align 1 dereferenceable(3) %_ZN4llvhL4NaNUE._ZN4llvhL4NaNLE.i, i64 3, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i5, i64 3
  br label %_ZNK4llvh6detail9IEEEFloat18convertToHexStringEPcjbNS_11APFloatBase12roundingModeE.exit

bb.g:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i5, i64 1
  store i8 48, ptr %.0.i5, align 1, !tbaa !18
  %i.l = select i1 %3, i8 88, i8 120
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i5, i64 2
  store i8 %i.l, ptr %i.k, align 1, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i5, i64 3 ; 2 uses
  store i8 48, ptr %i.m, align 1, !tbaa !18
  %i.o = icmp ugt i32 %2, 1
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i5, i64 4 ; 2 uses
  store i8 46, ptr %i.n, align 1, !tbaa !18
  %i.q = add i32 %2, -1
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 48, i64 %i.r, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.r
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.i = phi ptr [ %i.s, %bb.h ], [ %i.n, %bb.g ] ; 3 uses
  %i.t = select i1 %3, i8 80, i8 112
  %i.u = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  store i8 %i.t, ptr %.1.i, align 1, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %.1.i, i64 2
  store i8 48, ptr %i.u, align 1, !tbaa !18
  br label %_ZNK4llvh6detail9IEEEFloat18convertToHexStringEPcjbNS_11APFloatBase12roundingModeE.exit

bb.j:                                             ; preds = %bb.d
  %i.w = call noundef ptr @_ZNK4llvh6detail9IEEEFloat24convertNormalToHexStringEPcjbNS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef %.0.i5, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4)
  br label %_ZNK4llvh6detail9IEEEFloat18convertToHexStringEPcjbNS_11APFloatBase12roundingModeE.exit

_ZNK4llvh6detail9IEEEFloat18convertToHexStringEPcjbNS_11APFloatBase12roundingModeE.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.i, %bb.j
  %.2.i = phi ptr [ %.0.i5, %bb.d ], [ %i.i, %bb.e ], [ %i.j, %bb.f ], [ %i.v, %bb.i ], [ %i.w, %bb.j ] ; 2 uses
  store i8 0, ptr %.2.i, align 1, !tbaa !18
  %i.x = ptrtoint ptr %.2.i to i64
  %i.y = ptrtoint ptr %1 to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = trunc i64 %i.z to i32
  br label %_ZNK4llvh7APFloat18convertToHexStringEPcjbNS_11APFloatBase12roundingModeE.exit

bb.k:                                             ; preds = %bb.a
  %i.ab = call noundef i32 @_ZNK4llvh6detail13DoubleAPFloat18convertToHexStringEPcjbNS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4), !inline_history !243
  br label %_ZNK4llvh7APFloat18convertToHexStringEPcjbNS_11APFloatBase12roundingModeE.exit

_ZNK4llvh7APFloat18convertToHexStringEPcjbNS_11APFloatBase12roundingModeE.exit: ; preds = %_ZNK4llvh6detail9IEEEFloat18convertToHexStringEPcjbNS_11APFloatBase12roundingModeE.exit, %bb.k
  %.0.i = phi i32 [ %i.aa, %_ZNK4llvh6detail9IEEEFloat18convertToHexStringEPcjbNS_11APFloatBase12roundingModeE.exit ], [ %i.ab, %bb.k ]
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %.not.i = icmp eq ptr %i.ac, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZNK4llvh7APFloat18convertToHexStringEPcjbNS_11APFloatBase12roundingModeE.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !7
  %i.af = add i32 %i.ae, -64
  %i.ag = icmp ult i32 %i.af, -128
  br i1 %i.ag, label %bb.m, label %_ZN4llvh7APFloatD2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !18 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZN4llvh7APFloatD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %i.ai) #24, !inline_history !160
  br label %_ZN4llvh7APFloatD2Ev.exit

bb.o:                                             ; preds = %_ZNK4llvh7APFloat18convertToHexStringEPcjbNS_11APFloatBase12roundingModeE.exit
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #25, !inline_history !161
  br label %_ZN4llvh7APFloatD2Ev.exit

_ZN4llvh7APFloatD2Ev.exit:                        ; preds = %bb.l, %bb.m, %bb.n, %bb.o
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !20
  %i.am = icmp ugt i32 %i.al, 64
  br i1 %i.am, label %bb.p, label %_ZN4llvh5APIntD2Ev.exit

bb.p:                                             ; preds = %_ZN4llvh7APFloatD2Ev.exit
  %i.an = load ptr, ptr %6, align 8, !tbaa !18    ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_ZN4llvh5APIntD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZdaPv(ptr noundef nonnull %i.an) #24
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %_ZN4llvh7APFloatD2Ev.exit, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret i32 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK4llvh6detail13DoubleAPFloat10isDenormalEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.llvh::APFloat", align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !159  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, @_ZN4llvhL18semPPCDoubleDoubleE ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.0.i.i.i = select i1 %.not.i.i.i, ptr %i.g, ptr %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 18
  %i.i = load i8, ptr %i.h, align 2
  %i.j = and i8 %i.i, 7
  %i.k = icmp eq i8 %i.j, 2
  br i1 %i.k, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.m = load i8, ptr %i.l, align 2               ; 2 uses
  %i.n = and i8 %i.m, 6
  %spec.select.i.not.i.i = icmp ne i8 %i.n, 0
end_hunk_2
