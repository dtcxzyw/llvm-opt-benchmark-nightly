Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PtrDialect?download=true
inline.NumInlined: 14421
inline.NumDeleted: 5291
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 16
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN4mlir3ptr20symbolizePtrAddFlagsEN4llvm9StringRefE:bb.a
  %i.s = select i1 %.not.i.i28, i64 4294967299, i64 0
  br label %_ZN4llvm12StringSwitchISt8optionalIN4mlir3ptr11PtrAddFlagsEES5_E4CaseENS_13StringLiteralES5_.exit30

_ZN4llvm12StringSwitchISt8optionalIN4mlir3ptr11PtrAddFlagsEES5_E4CaseENS_13StringLiteralES5_.exit30: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i26, %bb.a, %_ZN4llvmneENS_9StringRefES0_.exit.i.i17, %_ZN4llvmneENS_9StringRefES0_.exit.i.i8, %_ZN4llvmneENS_9StringRefES0_.exit.i.i, %.thread89
  %.sroa.17.3 = phi i64 [ 0, %bb.a ], [ 4294967298, %_ZN4llvmneENS_9StringRefES0_.exit.i.i17 ], [ %i.s, %_ZN4llvmneENS_9StringRefES0_.exit.i.i26 ], [ 0, %.thread89 ], [ 4294967297, %_ZN4llvmneENS_9StringRefES0_.exit.i.i8 ], [ 4294967296, %_ZN4llvmneENS_9StringRefES0_.exit.i.i ]
  ret i64 %.sroa.17.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 4294967300) i64 @_ZN4mlir3ptr20symbolizePtrAddFlagsEj(i32 noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp ult i32 %0, 4
  %switch.idx.cast = zext i32 %0 to i64
  %switch.offset = or disjoint i64 %switch.idx.cast, 4294967296
  %.sroa.5.0 = select i1 %i.a, i64 %switch.offset, i64 0
  ret i64 %.sroa.5.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir3ptr21stringifyPtrDiffFlagsB5cxx11ENS0_12PtrDiffFlagsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.544", align 8 ; 8 uses
  %i.a = zext i8 %1 to i32                        ; 2 uses
  %i.b = icmp eq i8 %1, 0
  br i1 %i.b, label %._crit_edge.i.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !231
  store i32 1701736302, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.d, align 8, !tbaa !233
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %i.e, align 4, !tbaa !120
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i32 0, ptr %i.g, align 8, !tbaa !59
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 2, ptr %i.h, align 4, !tbaa !85
  %i.i = and i32 %i.a, 1
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit: ; preds = %bb.b
  store ptr @.str.51, ptr %i.f, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 3, ptr %.sroa.3.0..sroa_idx.i, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !59
  br label %bb.c

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit, %bb.b
  %i.j = phi i32 [ 1, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit ], [ 0, %bb.b ] ; 3 uses
  %i.k = and i32 %i.a, 2
  %.not4 = icmp eq i32 %i.k, 0
  br i1 %.not4, label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit7, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = zext nneg i32 %i.j to i64
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.l ; 2 uses
  store ptr @.str.53, ptr %i.m, align 8
  %.sroa.3.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 3, ptr %.sroa.3.0..sroa_idx.i6, align 8
  %i.n = add nuw nsw i32 %i.j, 1                  ; 2 uses
  store i32 %i.n, ptr %i.g, align 8, !tbaa !59
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit7

_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit7: ; preds = %bb.d, %bb.c
  %i.o = phi i32 [ %i.n, %bb.d ], [ %i.j, %bb.c ]
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.p
  call void @_ZN4llvm6detail9join_implIPNS_9StringRefEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_SA_S2_St20forward_iterator_tag(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.q, ptr nonnull @.str.54, i64 1)
  %i.r = load ptr, ptr %2, align 8, !tbaa !58     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.f
  br i1 %i.s, label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit7
  call void @free(ptr noundef %i.r) #25
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit7, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, %._crit_edge.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i16 0, 512) i16 @_ZN4mlir3ptr21symbolizePtrDiffFlagsEN4llvm9StringRefE(ptr %0, i64 %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvm::StringRef", align 8   ; 6 uses
  %3 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %4 = alloca %"class.llvm::SmallVector.544", align 8 ; 9 uses
  %5 = alloca %"class.llvm::StringRef", align 8   ; 7 uses
  store ptr %0, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %1, ptr %i.a, align 8
  %.not.i = icmp eq i64 %1, 4
  br i1 %.not.i, label %_ZN4llvmeqENS_9StringRefES0_.exit, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread49

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.a
  %i.b = load i32, ptr %0, align 1
  %i.c = icmp ne i32 %i.b, 1701736302
  %i.d = zext i1 %i.c to i32
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread49

_ZN4llvmeqENS_9StringRefES0_.exit.thread49:       ; preds = %bb.a, %_ZN4llvmeqENS_9StringRefES0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !59
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 2, ptr %i.h, align 4, !tbaa !85
  call void @_ZNK4llvm9StringRef5splitERNS_15SmallVectorImplIS0_EES0_ib(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull @.str.54, i64 1, i32 noundef -1, i1 noundef zeroext true) #25
  %i.i = load ptr, ptr %4, align 8, !tbaa !58     ; 2 uses
  %i.j = load i32, ptr %i.g, align 8, !tbaa !59   ; 2 uses
  %i.k = zext i32 %i.j to i64
  %.idx = shl nuw nsw i64 %i.k, 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  %.not68 = icmp eq i32 %i.j, 0
  br i1 %.not68, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread49
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm12StringSwitchISt8optionalIhES2_E4CaseENS_13StringLiteralES2_.exit25
  %.070 = phi i8 [ 0, %.lr.ph ], [ %i.as, %_ZN4llvm12StringSwitchISt8optionalIhES2_E4CaseENS_13StringLiteralES2_.exit25 ]
  %.01669 = phi ptr [ %i.i, %.lr.ph ], [ %i.at, %_ZN4llvm12StringSwitchISt8optionalIhES2_E4CaseENS_13StringLiteralES2_.exit25 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.01669, i64 16, i1 false), !tbaa.struct !234
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.o = load i64, ptr %i.m, align 8, !tbaa !135
  %i.p = call noundef i64 @_ZNK4llvm9StringRef17find_first_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr nonnull @.str.55, i64 6, i64 noundef 0) #25
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.p, i64 %i.o)
  %i.q = load i64, ptr %i.m, align 8, !tbaa !135  ; 2 uses
  %.sroa.speculated4.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.q, i64 %.sroa.speculated.i.i) ; 2 uses
  %i.r = load ptr, ptr %5, align 8, !tbaa !235
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.speculated4.i.i.i.i
  %i.t = sub i64 %i.q, %.sroa.speculated4.i.i.i.i ; 2 uses
  store ptr %i.s, ptr %2, align 8
  store i64 %i.t, ptr %i.n, align 8
  %i.u = call noundef i64 @_ZNK4llvm9StringRef16find_last_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.55, i64 6, i64 noundef -1) #25
  %i.v = add i64 %i.u, 1
  %i.w = call i64 @llvm.usub.sat.i64(i64 %i.t, i64 %i.v)
  %i.x = load i64, ptr %i.n, align 8, !tbaa !135  ; 2 uses
  %i.y = sub i64 %i.x, %i.w
  %i.z = load ptr, ptr %2, align 8, !tbaa !235    ; 4 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.x, i64 %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %.not.i.i.i.i = icmp eq i64 %.sroa.speculated.i.i.i.i, 3
  br i1 %.not.i.i.i.i, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i, label %_ZN4llvm12StringSwitchISt8optionalIhES2_E4CaseENS_13StringLiteralES2_.exit25.thread

_ZN4llvmneENS_9StringRefES0_.exit.i.i:            ; preds = %bb.b
  %i.aa = load i16, ptr %i.z, align 1
  %i.ab = xor i16 %i.aa, 30062
  %i.ac = getelementptr i8, ptr %i.z, i64 2
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = zext i8 %i.ad to i16
  %i.af = xor i16 %i.ae, 119
  %i.ag = or i16 %i.ab, %i.af
  %i.ah = icmp ne i16 %i.ag, 0
  %i.ai = zext i1 %i.ah to i32
  %.not.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchISt8optionalIhES2_E4CaseENS_13StringLiteralES2_.exit25, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i21

_ZN4llvmneENS_9StringRefES0_.exit.i.i21:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i
  %i.aj = load i16, ptr %i.z, align 1
  %i.ak = xor i16 %i.aj, 29550
  %i.al = getelementptr i8, ptr %i.z, i64 2
  %i.am = load i8, ptr %i.al, align 1
  %i.an = zext i8 %i.am to i16
  %i.ao = xor i16 %i.an, 119
  %i.ap = or i16 %i.ak, %i.ao
  %i.aq = icmp ne i16 %i.ap, 0
  %i.ar = zext i1 %i.aq to i32
  %.not.i.i23 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i23, label %_ZN4llvm12StringSwitchISt8optionalIhES2_E4CaseENS_13StringLiteralES2_.exit25, label %_ZN4llvm12StringSwitchISt8optionalIhES2_E4CaseENS_13StringLiteralES2_.exit25.thread

_ZN4llvm12StringSwitchISt8optionalIhES2_E4CaseENS_13StringLiteralES2_.exit25: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i21
  %.sroa.8.1 = phi i8 [ 1, %_ZN4llvmneENS_9StringRefES0_.exit.i.i ], [ 2, %_ZN4llvmneENS_9StringRefES0_.exit.i.i21 ]
  %i.as = or i8 %.sroa.8.1, %.070                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.at = getelementptr inbounds nuw i8, ptr %.01669, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.at, %i.l
  br i1 %.not, label %.loopexit.loopexit, label %bb.b

_ZN4llvm12StringSwitchISt8optionalIhES2_E4CaseENS_13StringLiteralES2_.exit25.thread: ; preds = %bb.b, %_ZN4llvmneENS_9StringRefES0_.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %_ZN4llvm12StringSwitchISt8optionalIhES2_E4CaseENS_13StringLiteralES2_.exit25
  %i.au = zext i8 %i.as to i16
  %i.av = or disjoint i16 %i.au, 256
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZN4llvmeqENS_9StringRefES0_.exit.thread49, %_ZN4llvm12StringSwitchISt8optionalIhES2_E4CaseENS_13StringLiteralES2_.exit25.thread
  %.sroa.3.3 = phi i16 [ 0, %_ZN4llvm12StringSwitchISt8optionalIhES2_E4CaseENS_13StringLiteralES2_.exit25.thread ], [ 256, %_ZN4llvmeqENS_9StringRefES0_.exit.thread49 ], [ %i.av, %.loopexit.loopexit ]
  %i.aw = load ptr, ptr %4, align 8, !tbaa !58    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.f
  br i1 %i.ax, label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit
  call void @free(ptr noundef %i.aw) #25
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit: ; preds = %.loopexit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit.thread:         ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit, %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit
  %.sroa.3.4 = phi i16 [ %.sroa.3.3, %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit ], [ 256, %_ZN4llvmeqENS_9StringRefES0_.exit ]
  ret i16 %.sroa.3.4
}

declare void @_ZNK4llvm9StringRef5splitERNS_15SmallVectorImplIS0_EES0_ib(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i16 0, 512) i16 @_ZN4mlir3ptr21symbolizePtrDiffFlagsEh(i8 noundef zeroext %0) local_unnamed_addr #9 {
bb.a:
  %.not = icmp ult i8 %0, 4
  %.sroa.3.0.insert.shift = select i1 %.not, i16 256, i16 0
  %.sroa.0.0.insert.ext = zext i8 %0 to i16
  %.sroa.0.0.insert.insert = or disjoint i16 %.sroa.3.0.insert.shift, %.sroa.0.0.insert.ext
  ret i16 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4mlir3ptr7PtrType3getEPNS_11MLIRContextENS0_24MemorySpaceAttrInterfaceE(ptr noundef nonnull %0, ptr %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.std::array.1505", align 8  ; 4 uses
  %4 = alloca %"class.llvm::function_ref.1516", align 8 ; 5 uses
  %5 = alloca %"class.std::tuple.1469", align 8   ; 6 uses
  %6 = alloca %class.anon.1518, align 8           ; 4 uses
  %7 = alloca %class.anon.1519, align 8           ; 5 uses
  %8 = alloca %"class.llvm::function_ref.1395", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %9 = alloca %class.anon.1517, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8, !tbaa !205
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4mlir11MLIRContext14getTypeUniquerEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_3ptr7PtrTypeEvE2idE, ptr %9, align 8, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !238
  %i.d = ptrtoint ptr %9 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr @_ZN4llvm12function_refIFvPN4mlir3ptr6detail14PtrTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_7PtrTypeEJNS2_24MemorySpaceAttrInterfaceEEEENSt9enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS5_, ptr %4, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.d, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr %1, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %2, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.f = ptrtoint ptr %1 to i64
  %i.g = mul i64 %i.f, -4658895280553007687       ; 2 uses
  %i.h = lshr i64 %i.g, 31
  %i.i = xor i64 %i.h, %i.g
  %i.j = and i64 %i.i, 4294967295
  store i64 %i.j, ptr %3, align 8
  %i.k = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.l = trunc i64 %i.k to i32
  %i.m = xor i32 %i.l, -313160499
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store ptr %5, ptr %6, align 8, !tbaa !240
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store ptr %5, ptr %7, align 8, !tbaa !240
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %4, ptr %i.n, align 8, !tbaa !242
  %i.o = ptrtoint ptr %6 to i64
  store ptr @_ZN4llvm12function_refIFPN4mlir14StorageUniquer11BaseStorageERNS2_16StorageAllocatorEEE11callback_fnIZNS2_3getINS1_3ptr6detail14PtrTypeStorageEJNSB_24MemorySpaceAttrInterfaceEEEEPT_NS0_IFvSG_EEENS1_6TypeIDEDpOT0_EUlS6_E_EES4_lS6_, ptr %8, align 8, !tbaa !187
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.q = ptrtoint ptr %7 to i64
  store i64 %i.q, ptr %i.p, align 8, !tbaa !188
  %i.r = call noundef ptr @_ZN4mlir14StorageUniquer28getParametricStorageTypeImplENS_6TypeIDEjN4llvm12function_refIFbPKNS0_11BaseStorageEEEENS3_IFPS4_RNS0_16StorageAllocatorEEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_3ptr7PtrTypeEvE2idE, i32 noundef %i.m, ptr nonnull @_ZN4llvm12function_refIFbPKN4mlir14StorageUniquer11BaseStorageEEE11callback_fnIZNS2_3getINS1_3ptr6detail14PtrTypeStorageEJNSA_24MemorySpaceAttrInterfaceEEEEPT_NS0_IFvSF_EEENS1_6TypeIDEDpOT0_EUlS5_E_EEblS5_, i64 %i.o, ptr noundef nonnull byval(%"class.llvm::function_ref.1395") align 8 %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.r
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4mlir3ptr7PtrType3getENS0_24MemorySpaceAttrInterfaceE(ptr %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.std::array.1505", align 8  ; 4 uses
  %3 = alloca %"class.llvm::function_ref.1516", align 8 ; 5 uses
  %4 = alloca %"class.std::tuple.1469", align 8   ; 6 uses
  %5 = alloca %class.anon.1521, align 8           ; 4 uses
  %6 = alloca %class.anon.1522, align 8           ; 5 uses
  %7 = alloca %"class.llvm::function_ref.1395", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %8 = alloca %class.anon.1520, align 8           ; 5 uses
  %9 = alloca %"class.mlir::ptr::MemorySpaceAttrInterface", align 8 ; 4 uses
  store ptr %0, ptr %9, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %1, ptr %i.b, align 8
  %i.c = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #25 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8, !tbaa !205
  %i.d = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4mlir11MLIRContext14getTypeUniquerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_3ptr7PtrTypeEvE2idE, ptr %8, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.a, ptr %i.e, align 8, !tbaa !238
  %i.f = ptrtoint ptr %8 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr @_ZN4llvm12function_refIFvPN4mlir3ptr6detail14PtrTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_7PtrTypeEJRNS2_24MemorySpaceAttrInterfaceEEEENSt9enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_, ptr %3, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.f, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !160
  %i.h = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i to i64
  %i.i = mul i64 %i.h, -4658895280553007687       ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = and i64 %i.k, 4294967295
  store i64 %i.l, ptr %2, align 8
  %i.m = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.n = trunc i64 %i.m to i32
  %i.o = xor i32 %i.n, -313160499
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr %4, ptr %5, align 8, !tbaa !240
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store ptr %4, ptr %6, align 8, !tbaa !240
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %i.p, align 8, !tbaa !242
  %i.q = ptrtoint ptr %5 to i64
  store ptr @_ZN4llvm12function_refIFPN4mlir14StorageUniquer11BaseStorageERNS2_16StorageAllocatorEEE11callback_fnIZNS2_3getINS1_3ptr6detail14PtrTypeStorageEJRNSB_24MemorySpaceAttrInterfaceEEEEPT_NS0_IFvSH_EEENS1_6TypeIDEDpOT0_EUlS6_E_EES4_lS6_, ptr %7, align 8, !tbaa !187
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.s = ptrtoint ptr %6 to i64
  store i64 %i.s, ptr %i.r, align 8, !tbaa !188
  %i.t = call noundef ptr @_ZN4mlir14StorageUniquer28getParametricStorageTypeImplENS_6TypeIDEjN4llvm12function_refIFbPKNS0_11BaseStorageEEEENS3_IFPS4_RNS0_16StorageAllocatorEEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_3ptr7PtrTypeEvE2idE, i32 noundef %i.o, ptr nonnull @_ZN4llvm12function_refIFbPKN4mlir14StorageUniquer11BaseStorageEEE11callback_fnIZNS2_3getINS1_3ptr6detail14PtrTypeStorageEJRNSA_24MemorySpaceAttrInterfaceEEEEPT_NS0_IFvSG_EEENS1_6TypeIDEDpOT0_EUlS5_E_EEblS5_, i64 %i.q, ptr noundef nonnull byval(%"class.llvm::function_ref.1395") align 8 %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.t
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4mlir3ptr7PtrType5parseERNS_9AsmParserE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.std::array.1505", align 8  ; 4 uses
  %2 = alloca %"class.llvm::function_ref.1516", align 8 ; 5 uses
  %3 = alloca %"class.std::tuple.1469", align 16  ; 5 uses
  %4 = alloca %class.anon.1518, align 8           ; 4 uses
  %5 = alloca %class.anon.1519, align 8           ; 5 uses
  %6 = alloca %"class.llvm::function_ref.1395", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %7 = alloca %class.anon.1517, align 8           ; 5 uses
  %8 = alloca %"class.mlir::ptr::MemorySpaceAttrInterface", align 16 ; 7 uses
  %9 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.b = tail call noundef ptr @_ZNK4mlir9AsmParser10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #25 ; 0 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %0) #25 ; 0 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !39
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call i8 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !468
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, i8 0, i64 16, i1 false), !noalias !468
  %i.l = call i8 @_ZN4mlir9AsmParser14parseAttributeINS_3ptr24MemorySpaceAttrInterfaceEEEN4llvm11ParseResultERT_NS_4TypeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr null), !noalias !468
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !468
  %i.n = load ptr, ptr %0, align 8, !tbaa !39
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = call ptr %i.p(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
end_hunk_0
