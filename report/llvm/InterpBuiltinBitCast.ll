Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InterpBuiltinBitCast?download=true
inline.NumInlined: 2547
inline.NumDeleted: 1768
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN5clang6interp8DoMemcpyERNS0_11InterpStateENS0_7CodePtrERKNS0_7PointerES6_NS0_4BitsE:bb.a
  %i.r = ptrtoint ptr %10 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.experimental.noalias.scope.decl(metadata !725)
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !472, !noalias !725
  store ptr %i.t, ptr %6, align 8, !tbaa !475, !alias.scope !725
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !472, !noalias !725
  store i32 %i.w, ptr %i.u, align 8, !tbaa !476, !alias.scope !725
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.y = load i64, ptr %3, align 8, !tbaa !479, !noalias !725
  store i64 %i.y, ptr %i.x, align 8, !tbaa !480, !alias.scope !725
  %i.z = call fastcc noundef i32 @_ZL13enumerateDataN5clang6interp7PtrViewERKNS0_7ContextENS0_4BitsES5_N4llvm12function_refIF6ResultS1_NS0_8PrimTypeES5_S5_bEEEb(ptr noundef nonnull byval(%"struct.clang::interp::PtrView") align 8 %6, ptr noundef nonnull align 8 dereferenceable(120) %i.p, i64 0, i64 %4, ptr nonnull @"_ZN4llvm12function_refIF6ResultN5clang6interp7PtrViewENS3_8PrimTypeENS3_4BitsES6_bEE11callback_fnIZNS3_8DoMemcpyERNS3_11InterpStateENS3_7CodePtrERKNS3_7PointerESF_S6_E3$_1EES1_lS4_S5_S6_S6_b", i64 %i.r, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.aa = load ptr, ptr %8, align 8, !tbaa !483   ; 3 uses
  %i.ab = load i32, ptr %i.c, align 8, !tbaa !484 ; 2 uses
  %.not4.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt7variantIJN5clang6interp7PointerENS3_15FunctionPointerENS3_13MemberPointerENS3_10FixedPointENS3_4CharILb0EEENS8_ILb1EEENS3_8IntegralILj16ELb0EEENSB_ILj16ELb1EEENSB_ILj32ELb0EEENSB_ILj32ELb1EEENSB_ILj64ELb0EEENSB_ILj64ELb1EEENS3_10IntegralAPILb1EEENSI_ILb0EEENS3_7BooleanENS3_8FloatingEEELb0EE13destroy_rangeEPSN_SP_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %i.ac = zext i32 %i.ab to i64
  %.idx.i = mul nuw nsw i64 %i.ac, 80
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5clang6interp7PointerENS3_15FunctionPointerENS3_13MemberPointerENS3_10FixedPointENS3_4CharILb0EEENS8_ILb1EEENS3_8IntegralILj16ELb0EEENSB_ILj16ELb1EEENSB_ILj32ELb0EEENSB_ILj32ELb1EEENSB_ILj64ELb0EEENSB_ILj64ELb1EEENS3_10IntegralAPILb1EEENSI_ILb0EEENS3_7BooleanENS3_8FloatingEEED2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.ae, %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5clang6interp7PointerENS3_15FunctionPointerENS3_13MemberPointerENS3_10FixedPointENS3_4CharILb0EEENS8_ILb1EEENS3_8IntegralILj16ELb0EEENSB_ILj16ELb1EEENSB_ILj32ELb0EEENSB_ILj32ELb1EEENSB_ILj64ELb0EEENSB_ILj64ELb1EEENS3_10IntegralAPILb1EEENSI_ILb0EEENS3_7BooleanENS3_8FloatingEEED2Ev.exit.i.i ], [ %i.ad, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %.05.i.i, i64 -80 ; 3 uses
  %i.af = getelementptr inbounds i8, ptr %.05.i.i, i64 -8
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !569 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.ag, -1
  br i1 %.not.i.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5clang6interp7PointerENS3_15FunctionPointerENS3_13MemberPointerENS3_10FixedPointENS3_4CharILb0EEENS8_ILb1EEENS3_8IntegralILj16ELb0EEENSB_ILj16ELb1EEENSB_ILj32ELb0EEENSB_ILj32ELb1EEENSB_ILj64ELb0EEENSB_ILj64ELb1EEENS3_10IntegralAPILb1EEENSI_ILb0EEENS3_7BooleanENS3_8FloatingEEED2Ev.exit.i.i, label %bb.b, !prof !570

bb.b:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.ah = sext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableIvOZNS0_16_Variant_storageILb0EJN5clang6interp7PointerENS4_15FunctionPointerENS4_13MemberPointerENS4_10FixedPointENS4_4CharILb0EEENS9_ILb1EEENS4_8IntegralILj16ELb0EEENSC_ILj16ELb1EEENSC_ILj32ELb0EEENSC_ILj32ELb1EEENSC_ILj64ELb0EEENSC_ILj64ELb1EEENS4_10IntegralAPILb1EEENSJ_ILb0EEENS4_7BooleanENS4_8FloatingEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S6_S7_S8_SA_SB_SD_SE_SF_SG_SH_SI_SK_SL_SM_SN_EEEE9_S_vtableE, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !471
  call void %i.aj(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(73) %i.ae) #16, !inline_history !721
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5clang6interp7PointerENS3_15FunctionPointerENS3_13MemberPointerENS3_10FixedPointENS3_4CharILb0EEENS8_ILb1EEENS3_8IntegralILj16ELb0EEENSB_ILj16ELb1EEENSB_ILj32ELb0EEENSB_ILj32ELb1EEENSB_ILj64ELb0EEENSB_ILj64ELb1EEENS3_10IntegralAPILb1EEENSI_ILb0EEENS3_7BooleanENS3_8FloatingEEED2Ev.exit.i.i

_ZNSt8__detail9__variant16_Variant_storageILb0EJN5clang6interp7PointerENS3_15FunctionPointerENS3_13MemberPointerENS3_10FixedPointENS3_4CharILb0EEENS8_ILb1EEENS3_8IntegralILj16ELb0EEENSB_ILj16ELb1EEENSB_ILj32ELb0EEENSB_ILj32ELb1EEENSB_ILj64ELb0EEENSB_ILj64ELb1EEENS3_10IntegralAPILb1EEENSI_ILb0EEENS3_7BooleanENS3_8FloatingEEED2Ev.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.aa, %i.ae
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt7variantIJN5clang6interp7PointerENS3_15FunctionPointerENS3_13MemberPointerENS3_10FixedPointENS3_4CharILb0EEENS8_ILb1EEENS3_8IntegralILj16ELb0EEENSB_ILj16ELb1EEENSB_ILj32ELb0EEENSB_ILj32ELb1EEENSB_ILj64ELb0EEENSB_ILj64ELb1EEENS3_10IntegralAPILb1EEENSI_ILb0EEENS3_7BooleanENS3_8FloatingEEELb0EE13destroy_rangeEPSN_SP_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !0

_ZN4llvm23SmallVectorTemplateBaseISt7variantIJN5clang6interp7PointerENS3_15FunctionPointerENS3_13MemberPointerENS3_10FixedPointENS3_4CharILb0EEENS8_ILb1EEENS3_8IntegralILj16ELb0EEENSB_ILj16ELb1EEENSB_ILj32ELb0EEENSB_ILj32ELb1EEENSB_ILj64ELb0EEENSB_ILj64ELb1EEENS3_10IntegralAPILb1EEENSI_ILb0EEENS3_7BooleanENS3_8FloatingEEELb0EE13destroy_rangeEPSN_SP_.exit.loopexit.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5clang6interp7PointerENS3_15FunctionPointerENS3_13MemberPointerENS3_10FixedPointENS3_4CharILb0EEENS8_ILb1EEENS3_8IntegralILj16ELb0EEENSB_ILj16ELb1EEENSB_ILj32ELb0EEENSB_ILj32ELb1EEENSB_ILj64ELb0EEENSB_ILj64ELb1EEENS3_10IntegralAPILb1EEENSI_ILb0EEENS3_7BooleanENS3_8FloatingEEED2Ev.exit.i.i
  %.pre.i = load ptr, ptr %8, align 8, !tbaa !483
  br label %_ZN4llvm23SmallVectorTemplateBaseISt7variantIJN5clang6interp7PointerENS3_15FunctionPointerENS3_13MemberPointerENS3_10FixedPointENS3_4CharILb0EEENS8_ILb1EEENS3_8IntegralILj16ELb0EEENSB_ILj16ELb1EEENSB_ILj32ELb0EEENSB_ILj32ELb1EEENSB_ILj64ELb0EEENSB_ILj64ELb1EEENS3_10IntegralAPILb1EEENSI_ILb0EEENS3_7BooleanENS3_8FloatingEEELb0EE13destroy_rangeEPSN_SP_.exit.i

_ZN4llvm23SmallVectorTemplateBaseISt7variantIJN5clang6interp7PointerENS3_15FunctionPointerENS3_13MemberPointerENS3_10FixedPointENS3_4CharILb0EEENS8_ILb1EEENS3_8IntegralILj16ELb0EEENSB_ILj16ELb1EEENSB_ILj32ELb0EEENSB_ILj32ELb1EEENSB_ILj64ELb0EEENSB_ILj64ELb1EEENS3_10IntegralAPILb1EEENSI_ILb0EEENS3_7BooleanENS3_8FloatingEEELb0EE13destroy_rangeEPSN_SP_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt7variantIJN5clang6interp7PointerENS3_15FunctionPointerENS3_13MemberPointerENS3_10FixedPointENS3_4CharILb0EEENS8_ILb1EEENS3_8IntegralILj16ELb0EEENSB_ILj16ELb1EEENSB_ILj32ELb0EEENSB_ILj32ELb1EEENSB_ILj64ELb0EEENSB_ILj64ELb1EEENS3_10IntegralAPILb1EEENSI_ILb0EEENS3_7BooleanENS3_8FloatingEEELb0EE13destroy_rangeEPSN_SP_.exit.loopexit.i, %bb.a
  %i.ak = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseISt7variantIJN5clang6interp7PointerENS3_15FunctionPointerENS3_13MemberPointerENS3_10FixedPointENS3_4CharILb0EEENS8_ILb1EEENS3_8IntegralILj16ELb0EEENSB_ILj16ELb1EEENSB_ILj32ELb0EEENSB_ILj32ELb1EEENSB_ILj64ELb0EEENSB_ILj64ELb1EEENS3_10IntegralAPILb1EEENSI_ILb0EEENS3_7BooleanENS3_8FloatingEEELb0EE13destroy_rangeEPSN_SP_.exit.loopexit.i ], [ %i.aa, %bb.a ] ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.b
  br i1 %i.al, label %_ZN4llvm11SmallVectorISt7variantIJN5clang6interp7PointerENS3_15FunctionPointerENS3_13MemberPointerENS3_10FixedPointENS3_4CharILb0EEENS8_ILb1EEENS3_8IntegralILj16ELb0EEENSB_ILj16ELb1EEENSB_ILj32ELb0EEENSB_ILj32ELb1EEENSB_ILj64ELb0EEENSB_ILj64ELb1EEENS3_10IntegralAPILb1EEENSI_ILb0EEENS3_7BooleanENS3_8FloatingEEELj1EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt7variantIJN5clang6interp7PointerENS3_15FunctionPointerENS3_13MemberPointerENS3_10FixedPointENS3_4CharILb0EEENS8_ILb1EEENS3_8IntegralILj16ELb0EEENSB_ILj16ELb1EEENSB_ILj32ELb0EEENSB_ILj32ELb1EEENSB_ILj64ELb0EEENSB_ILj64ELb1EEENS3_10IntegralAPILb1EEENSI_ILb0EEENS3_7BooleanENS3_8FloatingEEELb0EE13destroy_rangeEPSN_SP_.exit.i
  call void @free(ptr noundef %i.ak) #16
  br label %_ZN4llvm11SmallVectorISt7variantIJN5clang6interp7PointerENS3_15FunctionPointerENS3_13MemberPointerENS3_10FixedPointENS3_4CharILb0EEENS8_ILb1EEENS3_8IntegralILj16ELb0EEENSB_ILj16ELb1EEENSB_ILj32ELb0EEENSB_ILj32ELb1EEENSB_ILj64ELb0EEENSB_ILj64ELb1EEENS3_10IntegralAPILb1EEENSI_ILb0EEENS3_7BooleanENS3_8FloatingEEELj1EED2Ev.exit

_ZN4llvm11SmallVectorISt7variantIJN5clang6interp7PointerENS3_15FunctionPointerENS3_13MemberPointerENS3_10FixedPointENS3_4CharILb0EEENS8_ILb1EEENS3_8IntegralILj16ELb0EEENSB_ILj16ELb1EEENSB_ILj32ELb0EEENSB_ILj32ELb1EEENSB_ILj64ELb0EEENSB_ILj64ELb1EEENS3_10IntegralAPILb1EEENSI_ILb0EEENS3_7BooleanENS3_8FloatingEEELj1EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt7variantIJN5clang6interp7PointerENS3_15FunctionPointerENS3_13MemberPointerENS3_10FixedPointENS3_4CharILb0EEENS8_ILb1EEENS3_8IntegralILj16ELb0EEENSB_ILj16ELb1EEENSB_ILj32ELb0EEENSB_ILj32ELb1EEENSB_ILj64ELb0EEENSB_ILj64ELb1EEENS3_10IntegralAPILb1EEENSI_ILb0EEENS3_7BooleanENS3_8FloatingEEELb0EE13destroy_rangeEPSN_SP_.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZL13enumerateDataN5clang6interp7PtrViewERKNS0_7ContextENS0_4BitsES5_N4llvm12function_refIF6ResultS1_NS0_8PrimTypeES5_S5_bEEEb(ptr nofree noundef readonly byval(%"struct.clang::interp::PtrView") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, i64 %2, i64 %3, ptr %4, i64 %5, i1 noundef zeroext %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %7 = alloca %"struct.clang::interp::PtrView", align 8 ; 6 uses
  %8 = alloca %"struct.clang::interp::PtrView", align 8 ; 7 uses
  %9 = alloca %"struct.clang::interp::PtrView", align 8 ; 8 uses
  %10 = alloca %"struct.clang::interp::PtrView", align 8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !476  ; 20 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !475    ; 19 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !491  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !501
  %i.h = icmp eq i32 %i.c, %i.g
  br i1 %i.h, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = zext i32 %i.c to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !504
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit

_ZNK5clang6interp7PtrView12getFieldDescEv.exit:   ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.l, %bb.b ], [ %i.e, %bb.a ] ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i, i64 53
  %i.n = load i8, ptr %i.m, align 1, !tbaa !571, !range !465, !noundef !31
  %i.o = trunc nuw i8 %i.n to i1                  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8              ; 7 uses
  %.not.i = icmp ne ptr %i.q, null
  %or.cond.not.i = select i1 %i.o, i1 true, i1 %.not.i
  br i1 %or.cond.not.i, label %bb.d, label %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit

_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit: ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i, i64 48 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8, !tbaa !739
  %.not220 = icmp eq i8 %i.s, -1
  br i1 %.not220, label %.thread215, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit
  %i.t = load ptr, ptr %1, align 8, !tbaa !30, !nonnull !31, !align !32
  %i.u = tail call i64 @_ZNK5clang6interp10Descriptor7getTypeEv(ptr noundef nonnull align 8 dereferenceable(72) %.0.i) #16
  %i.v = and i64 %i.u, -16
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load ptr, ptr %i.w, align 16, !tbaa !557
  %i.y = tail call { i64, i64 } @_ZNK5clang10ASTContext11getTypeInfoEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.t, ptr noundef %i.x) #16
  %i.z = extractvalue { i64, i64 } %i.y, 0
  %i.aa = load i8, ptr %i.r, align 8, !tbaa !739
  %i.ab = tail call noundef i32 %4(i64 noundef %5, ptr noundef nonnull byval(%"struct.clang::interp::PtrView") align 8 %0, i8 noundef zeroext %i.aa, i64 %2, i64 %i.z, i1 noundef zeroext false) #16
  br label %.loopexit

bb.d:                                             ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8
  %.not.i136 = icmp eq ptr %i.ad, null            ; 2 uses
  %i.ae = select i1 %i.o, i1 %.not.i136, i1 false
  br i1 %i.ae, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.af = tail call i64 @_ZNK5clang6interp10Descriptor15getElemQualTypeEv(ptr noundef nonnull align 8 dereferenceable(72) %.0.i) #16 ; 2 uses
  %i.ag = load ptr, ptr %1, align 8, !tbaa !30, !nonnull !31, !align !32
  %i.ah = and i64 %i.af, -16
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load ptr, ptr %i.ai, align 16, !tbaa !557
  %i.ak = tail call { i64, i64 } @_ZNK5clang10ASTContext11getTypeInfoEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.ag, ptr noundef %i.aj) #16
  %i.al = extractvalue { i64, i64 } %i.ak, 0      ; 2 uses
  %i.am = tail call i8 @_ZNK5clang6interp7Context8classifyENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(120) %1, i64 %i.af) #16
  %i.an = tail call i64 @_ZNK5clang6interp10Descriptor7getTypeEv(ptr noundef nonnull align 8 dereferenceable(72) %.0.i) #16
  %i.ao = and i64 %i.an, -16
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load ptr, ptr %i.ap, align 16, !tbaa !557
  %i.ar = load ptr, ptr %1, align 8, !tbaa !30, !nonnull !31, !align !32
  %i.as = tail call noundef zeroext i1 @_ZNK5clang4Type22isPackedVectorBoolTypeERKNS_10ASTContextE(ptr noundef nonnull align 16 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(23904) %i.ar) #16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i, i64 20
  %i.au = load i32, ptr %i.at, align 4, !tbaa !740 ; 2 uses
  %i.av = icmp eq i32 %i.au, -1
  br i1 %i.av, label %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !572
  %i.ay = udiv i32 %i.au, %i.ax
  br label %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit

_ZNK5clang6interp10Descriptor11getNumElemsEv.exit: ; preds = %bb.f, %bb.e
  %i.az = phi i32 [ %i.ay, %bb.f ], [ 0, %bb.e ]  ; 2 uses
  %i.ba = icmp ugt i32 %i.c, 16
  %i.bb = zext i32 %i.c to i64                    ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = load i64, ptr %i.bc, align 8            ; 2 uses
  %i.be = icmp eq i64 %i.bd, %i.bb                ; 2 uses
  %or.cond.i = select i1 %i.ba, i1 %i.be, i1 false
  br i1 %or.cond.i, label %_ZNK5clang6interp7PtrView8getIndexEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit
  %i.bf = load ptr, ptr %i.d, align 8, !tbaa !491 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !501
  %i.bi = icmp eq i32 %i.c, %i.bh                 ; 2 uses
  br i1 %i.bi, label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.bb
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !504
  br label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i

_ZNK5clang6interp7PtrView8elemSizeEv.exit.i:      ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi ptr [ %i.bl, %bb.h ], [ %i.bf, %bb.g ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !572 ; 2 uses
  %.not.not.i = icmp eq i32 %i.bn, 0
  br i1 %.not.not.i, label %_ZNK5clang6interp7PtrView8getIndexEv.exit, label %bb.i

bb.i:                                             ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i
  br i1 %i.be, label %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.bi, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.bb
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !504
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i8.i = phi ptr [ %i.bq, %bb.k ], [ %i.bf, %bb.j ]
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i8.i, i64 40
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !573
  %.not1.i.i = icmp eq ptr %i.bs, null
  %..i.i = select i1 %.not1.i.i, i64 -8, i64 -16
  br label %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i

_ZNK5clang6interp7PtrView9getOffsetEv.exit.i:     ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i, %bb.i
  %.0.neg.i.i = phi i64 [ %..i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i ], [ 0, %bb.i ]
  %i.bt = sub i64 %i.bd, %i.bb
  %i.bu = add i64 %i.bt, %.0.neg.i.i
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = udiv i32 %i.bv, %i.bn
  br label %_ZNK5clang6interp7PtrView8getIndexEv.exit

_ZNK5clang6interp7PtrView8getIndexEv.exit:        ; preds = %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i, %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i
  %.1.i = phi i32 [ 0, %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit ], [ 0, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i ], [ %i.bw, %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i ] ; 2 uses
  %.not135242 = icmp eq i32 %.1.i, %i.az
  br i1 %.not135242, label %.loopexit, label %.lr.ph246

.lr.ph246:                                        ; preds = %_ZNK5clang6interp7PtrView8getIndexEv.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.bb
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.3193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %spec.select = select i1 %i.as, i64 1, i64 %i.al
  br label %bb.l

bb.l:                                             ; preds = %_ZNK5clang6interp7PtrView7atIndexEj.exit, %.lr.ph246
  %.0119245 = phi i8 [ 1, %.lr.ph246 ], [ %i.cl, %_ZNK5clang6interp7PtrView7atIndexEj.exit ]
  %.0121244 = phi i32 [ %.1.i, %.lr.ph246 ], [ %i.cn, %_ZNK5clang6interp7PtrView7atIndexEj.exit ] ; 2 uses
  %.sroa.0205.0243 = phi i64 [ %2, %.lr.ph246 ], [ %i.cm, %_ZNK5clang6interp7PtrView7atIndexEj.exit ] ; 2 uses
  %i.bz = load ptr, ptr %i.d, align 8, !tbaa !491, !noalias !741 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !501, !noalias !741
  %i.cc = icmp eq i32 %i.c, %i.cb
  br i1 %i.cc, label %_ZNK5clang6interp7PtrView7atIndexEj.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = load ptr, ptr %i.by, align 8, !tbaa !504, !noalias !741
  br label %_ZNK5clang6interp7PtrView7atIndexEj.exit

_ZNK5clang6interp7PtrView7atIndexEj.exit:         ; preds = %bb.l, %bb.m
  %.pn5.i = phi ptr [ %i.cd, %bb.m ], [ %i.bz, %bb.l ] ; 2 uses
  %.pn.in.i = getelementptr inbounds nuw i8, ptr %.pn5.i, i64 16
  %.pn.i = load i32, ptr %.pn.in.i, align 8, !tbaa !572, !noalias !741
  %i.ce = mul i32 %.pn.i, %.0121244
  %i.cf = getelementptr inbounds nuw i8, ptr %.pn5.i, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !573, !noalias !741
  %.not.i137 = icmp eq ptr %i.cg, null
  %.0.v.i = select i1 %.not.i137, i32 8, i32 16
  %.0.i138 = add i32 %i.ce, %i.c
  %i.ch = add i32 %.0.i138, %.0.v.i
  %i.ci = zext i32 %i.ch to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.d, ptr %7, align 8
  store i32 %i.c, ptr %.sroa.2.0..sroa_idx, align 8
  store i64 %i.ci, ptr %.sroa.3193.0..sroa_idx, align 8
  %i.cj = tail call noundef i32 %4(i64 noundef %5, ptr noundef nonnull byval(%"struct.clang::interp::PtrView") align 8 %7, i8 noundef zeroext %i.am, i64 %.sroa.0205.0243, i64 %i.al, i1 noundef zeroext %i.as) #16, !inline_history !728
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.ck = icmp eq i32 %i.cj, 0
  %i.cl = select i1 %i.ck, i8 %.0119245, i8 0     ; 2 uses
  %i.cm = add i64 %.sroa.0205.0243, %spec.select  ; 2 uses
  %.not223 = icmp uge i64 %i.cm, %3
  %i.cn = add i32 %.0121244, 1                    ; 2 uses
  %.not135 = icmp eq i32 %i.cn, %i.az
  %or.cond = select i1 %.not223, i1 true, i1 %.not135
  br i1 %or.cond, label %._crit_edge247.loopexit, label %bb.l, !llvm.loop !729

._crit_edge247.loopexit:                          ; preds = %_ZNK5clang6interp7PtrView7atIndexEj.exit
  %i.co = xor i8 %i.cl, 1
  %i.cp = zext nneg i8 %i.co to i32
  br label %.loopexit

bb.n:                                             ; preds = %bb.d
  %not. = xor i1 %i.o, true
  %i.cq = select i1 %not., i1 true, i1 %.not.i136
  br i1 %i.cq, label %.thread215, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cr = tail call i64 @_ZNK5clang6interp10Descriptor15getElemQualTypeEv(ptr noundef nonnull align 8 dereferenceable(72) %.0.i) #16
  %i.cs = load ptr, ptr %1, align 8, !tbaa !30, !nonnull !31, !align !32
  %i.ct = and i64 %i.cr, -16
  %i.cu = inttoptr i64 %i.ct to ptr
  %i.cv = load ptr, ptr %i.cu, align 16, !tbaa !557
  %i.cw = tail call { i64, i64 } @_ZNK5clang10ASTContext11getTypeInfoEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.cs, ptr noundef %i.cv) #16
  %i.cx = extractvalue { i64, i64 } %i.cw, 0
  %i.cy = icmp ugt i32 %i.c, 16
  %i.cz = zext i32 %i.c to i64                    ; 6 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.db = load i64, ptr %i.da, align 8            ; 2 uses
  %i.dc = icmp eq i64 %i.db, %i.cz                ; 2 uses
  %or.cond.i140 = select i1 %i.cy, i1 %i.dc, i1 false
  br i1 %or.cond.i140, label %_ZNK5clang6interp7PtrView8getIndexEv.exit152, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dd = load ptr, ptr %i.d, align 8, !tbaa !491 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load i32, ptr %i.de, align 8, !tbaa !501
  %i.dg = icmp eq i32 %i.c, %i.df                 ; 2 uses
  br i1 %i.dg, label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i141, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dh = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cz
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !504
  br label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i141

_ZNK5clang6interp7PtrView8elemSizeEv.exit.i141:   ; preds = %bb.q, %bb.p
  %.0.i.i.i142 = phi ptr [ %i.dj, %bb.q ], [ %i.dd, %bb.p ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.i.i.i142, i64 16
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !572 ; 2 uses
  %.not.not.i143 = icmp eq i32 %i.dl, 0
  br i1 %.not.not.i143, label %_ZNK5clang6interp7PtrView8getIndexEv.exit152, label %bb.r

bb.r:                                             ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i141
  br i1 %i.dc, label %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i148, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %i.dg, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i144, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dm = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cz
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !504
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i144

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i144: ; preds = %bb.t, %bb.s
  %.0.i.i8.i145 = phi ptr [ %i.do, %bb.t ], [ %i.dd, %bb.s ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.i.i8.i145, i64 40
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !573
  %.not1.i.i146 = icmp eq ptr %i.dq, null
  %..i.i147 = select i1 %.not1.i.i146, i64 -8, i64 -16
  br label %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i148

_ZNK5clang6interp7PtrView9getOffsetEv.exit.i148:  ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i144, %bb.r
  %.0.neg.i.i149 = phi i64 [ %..i.i147, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i144 ], [ 0, %bb.r ]
  %i.dr = sub i64 %i.db, %i.cz
  %i.ds = add i64 %i.dr, %.0.neg.i.i149
  %i.dt = trunc i64 %i.ds to i32
  %i.du = udiv i32 %i.dt, %i.dl
  br label %_ZNK5clang6interp7PtrView8getIndexEv.exit152

_ZNK5clang6interp7PtrView8getIndexEv.exit152:     ; preds = %bb.o, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i141, %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i148
  %.1.i151 = phi i32 [ 0, %bb.o ], [ 0, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i141 ], [ %i.du, %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i148 ]
  %i.dv = getelementptr inbounds nuw i8, ptr %.0.i, i64 20
  %i.dw = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cz
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 32 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %bb.u

bb.u:                                             ; preds = %_ZNK5clang6interp7PtrView6narrowEv.exit, %_ZNK5clang6interp7PtrView8getIndexEv.exit152
  %.sroa.0205.1 = phi i64 [ %2, %_ZNK5clang6interp7PtrView8getIndexEv.exit152 ], [ %i.gb, %_ZNK5clang6interp7PtrView6narrowEv.exit ] ; 2 uses
  %.0128 = phi i32 [ %.1.i151, %_ZNK5clang6interp7PtrView8getIndexEv.exit152 ], [ %i.gc, %_ZNK5clang6interp7PtrView6narrowEv.exit ] ; 3 uses
  %i.eb = load i32, ptr %i.dv, align 4, !tbaa !740 ; 2 uses
  %i.ec = icmp eq i32 %i.eb, -1
  br i1 %i.ec, label %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit153, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ed = load i32, ptr %i.dw, align 8, !tbaa !572
  %i.ee = udiv i32 %i.eb, %i.ed
  br label %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit153

_ZNK5clang6interp10Descriptor11getNumElemsEv.exit153: ; preds = %bb.u, %bb.v
  %i.ef = phi i32 [ %i.ee, %bb.v ], [ 0, %bb.u ]
  %.not134 = icmp eq i32 %.0128, %i.ef
  br i1 %.not134, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit153
  %i.eg = load ptr, ptr %i.d, align 8, !tbaa !491, !noalias !742 ; 8 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !501, !noalias !742
  %i.ej = icmp eq i32 %i.c, %i.ei                 ; 3 uses
  br i1 %i.ej, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ek = load ptr, ptr %i.dy, align 8, !tbaa !504, !noalias !742
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn5.i154 = phi ptr [ %i.ek, %bb.x ], [ %i.eg, %bb.w ] ; 2 uses
  %.pn.in.i155 = getelementptr inbounds nuw i8, ptr %.pn5.i154, i64 16
  %.pn.i156 = load i32, ptr %.pn.in.i155, align 8, !tbaa !572, !noalias !742
  %i.el = mul i32 %.pn.i156, %.0128
  %i.em = getelementptr inbounds nuw i8, ptr %.pn5.i154, i64 40
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !573, !noalias !742
  %.not.i157 = icmp eq ptr %i.en, null
  %.0.v.i158 = select i1 %.not.i157, i32 8, i32 16
  %.0.i159 = add i32 %i.el, %i.c
  %i.eo = add i32 %.0.i159, %.0.v.i158            ; 7 uses
  %i.ep = zext i32 %i.eo to i64                   ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !743)
  br i1 %i.ej, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i: ; preds = %bb.y
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eg, i64 20
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !740, !noalias !743 ; 2 uses
  %i.es = icmp eq i32 %i.er, -1
  br i1 %i.es, label %bb.z, label %_ZNK5clang6interp7PtrView7inArrayEv.exit.i

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i: ; preds = %bb.y
  %i.et = load ptr, ptr %i.dy, align 8, !tbaa !504, !noalias !743 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 20
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !740, !noalias !743 ; 2 uses
  %i.ew = icmp eq i32 %i.ev, -1
  br i1 %i.ew, label %bb.z, label %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i

bb.z:                                             ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i
  store ptr %i.d, ptr %8, align 8, !tbaa !574
  br label %_ZNK5clang6interp7PtrView6narrowEv.exit

_ZNK5clang6interp7PtrView7inArrayEv.exit.i:       ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eg, i64 53
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !571, !range !465, !noalias !743, !noundef !31
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i, label %bb.ad

_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i: ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.et, i64 53
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !571, !range !465, !noalias !743, !noundef !31
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i, label %bb.ad

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i: ; preds = %_ZNK5clang6interp7PtrView7inArrayEv.exit.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eg, i64 28
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !744, !noalias !743
  %i.ff = icmp ugt i32 %i.eo, %i.fe
  br i1 %i.ff, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread.i, label %bb.aa

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i: ; preds = %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eg, i64 28
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !744, !noalias !743
  %i.fi = icmp ugt i32 %i.eo, %i.fh
  br i1 %i.fi, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread.i, label %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i

bb.aa:                                            ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i
  %i.fj = zext i32 %i.er to i64                   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.eo, %i.c
  br i1 %.not.i.i.i, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i: ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i
  %i.fk = zext i32 %i.ev to i64                   ; 2 uses
  %.not.i5.i.i = icmp eq i32 %i.eo, %i.c
  br i1 %.not.i5.i.i, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i: ; preds = %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i, %bb.aa
  %i.fl = phi i64 [ %i.fj, %bb.aa ], [ %i.fk, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i ]
  %.0.i.i3.i.i = phi ptr [ %i.eg, %bb.aa ], [ %i.et, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.0.i.i3.i.i, i64 40
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !573, !noalias !743
  %.not1.i.i.i = icmp eq ptr %i.fn, null
  %..i.i.i = select i1 %.not1.i.i.i, i64 -8, i64 -16
  br label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i

_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i: ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i, %bb.aa
  %i.fo = phi i64 [ %i.fl, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ %i.fj, %bb.aa ], [ %i.fk, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i ]
  %.0.neg.i.i.i = phi i64 [ %..i.i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ 0, %bb.aa ], [ 0, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i ]
  %i.fp = sub nsw i64 %i.ep, %i.cz
  %i.fq = add nsw i64 %i.fp, %.0.neg.i.i.i
  %i.fr = and i64 %i.fq, 4294967295
  %i.fs = icmp eq i64 %i.fo, %i.fr
  br i1 %i.fs, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread.i, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i

_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread.i: ; preds = %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i
  store ptr %i.d, ptr %8, align 8, !tbaa !475, !alias.scope !743
  br label %_ZNK5clang6interp7PtrView6narrowEv.exit

_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i: ; preds = %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i
  %.not.i162 = icmp eq i32 %i.eo, %i.c
  br i1 %.not.i162, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i
  br i1 %i.ej, label %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ft = load ptr, ptr %i.dy, align 8, !tbaa !504, !noalias !743
  br label %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i

_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i3.i = phi ptr [ %i.ft, %bb.ac ], [ %i.eg, %bb.ab ] ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.0.i.i3.i, i64 53
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !571, !range !465, !noalias !743, !noundef !31
  %i.fw = trunc nuw i8 %i.fv to i1
  %i.fx = getelementptr inbounds nuw i8, ptr %.0.i.i3.i, i64 40
  %i.fy = load ptr, ptr %i.fx, align 8, !noalias !743
  %.not.i.i4.i = icmp eq ptr %i.fy, null
  %i.fz = select i1 %i.fw, i1 %.not.i.i4.i, i1 false
  store ptr %i.d, ptr %8, align 8, !tbaa !574
  %. = select i1 %i.fz, i32 %i.c, i32 %i.eo
  br label %_ZNK5clang6interp7PtrView6narrowEv.exit

bb.ad:                                            ; preds = %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i, %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i, %_ZNK5clang6interp7PtrView7inArrayEv.exit.i
  store ptr %i.d, ptr %8, align 8, !tbaa !574
  br label %_ZNK5clang6interp7PtrView6narrowEv.exit

_ZNK5clang6interp7PtrView6narrowEv.exit:          ; preds = %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i, %bb.z, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread.i, %bb.ad
  %.sink274 = phi i32 [ %i.c, %bb.z ], [ %i.c, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread.i ], [ %., %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i ], [ %i.c, %bb.ad ]
  %.sink = phi i64 [ %i.ep, %bb.z ], [ 4294967295, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread.i ], [ %i.ep, %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i ], [ %i.ep, %bb.ad ]
  store i32 %.sink274, ptr %i.dz, align 8, !tbaa !562
  store i64 %.sink, ptr %i.ea, align 8, !tbaa !468
  %i.ga = tail call fastcc noundef i32 @_ZL13enumerateDataN5clang6interp7PtrViewERKNS0_7ContextENS0_4BitsES5_N4llvm12function_refIF6ResultS1_NS0_8PrimTypeES5_S5_bEEEb(ptr noundef nonnull byval(%"struct.clang::interp::PtrView") align 8 %8, ptr noundef nonnull align 8 dereferenceable(120) %1, i64 %.sroa.0205.1, i64 %3, ptr %4, i64 %5, i1 noundef zeroext %6) ; 0 uses
  %i.gb = add i64 %.sroa.0205.1, %i.cx            ; 2 uses
  %.not222 = icmp ult i64 %i.gb, %3
  %i.gc = add i32 %.0128, 1
  br i1 %.not222, label %bb.u, label %.loopexit, !llvm.loop !734

.thread215:                                       ; preds = %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit, %bb.n
  %not..i = xor i1 %i.o, true
  tail call void @llvm.assume(i1 %not..i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  %i.gd = load ptr, ptr %i.q, align 8, !tbaa !761 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 28
  %i.gf = load i32, ptr %i.ge, align 4
  %i.gg = and i32 %i.gf, 128
  %.not221 = icmp eq i32 %i.gg, 0
  br i1 %.not221, label %bb.ae, label %.loopexit

bb.ae:                                            ; preds = %.thread215
  %i.gh = load ptr, ptr %1, align 8, !tbaa !30, !nonnull !31, !align !32
  %i.gi = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZNK5clang10ASTContext18getASTRecordLayoutEPKNS_10RecordDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %i.gh, ptr noundef nonnull %i.gd) #16 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.q, i64 280
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !483 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.q, i64 288
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !484 ; 2 uses
  %i.gn = zext i32 %i.gm to i64
  %.idx = mul nuw nsw i64 %i.gn, 24
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 %.idx
  %.not231 = icmp eq i32 %i.gm, 0
  br i1 %.not231, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ae
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gq = load i64, ptr %i.gp, align 8
  %i.gr = trunc i64 %i.gq to i32
  %i.gs = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.gt = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gi, i64 48
  br label %bb.af

._crit_edge:                                      ; preds = %bb.an, %bb.ae
  %.0123.lcssa = phi i1 [ true, %bb.ae ], [ %.1124, %bb.an ] ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !483 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !484 ; 2 uses
  %i.gz = zext i32 %i.gy to i64
  %.idx250 = shl nuw nsw i64 %i.gz, 5
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.idx250
  %.not131234 = icmp eq i32 %i.gy, 0
  br i1 %.not131234, label %.loopexit226, label %.lr.ph239

.lr.ph239:                                        ; preds = %._crit_edge
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !480, !noalias !762
  %i.hd = trunc i64 %i.hc to i32
  %i.he = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.hf = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gi, i64 72
  br label %bb.ao

bb.af:                                            ; preds = %.lr.ph, %bb.an
  %.0122233 = phi ptr [ %i.gk, %.lr.ph ], [ %i.ii, %bb.an ] ; 3 uses
  %.0123232 = phi i1 [ true, %.lr.ph ], [ %.1124, %bb.an ] ; 2 uses
  %i.hh = load ptr, ptr %.0122233, align 8, !tbaa !765 ; 5 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 68
  %i.hj = load i32, ptr %i.hi, align 4
  %i.hk = trunc i32 %i.hj to i1
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 40
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.hl, align 8
  %.not.i.i165 = icmp eq i64 %.sroa.0.0.copyload.i.i.i, 0
  %i.hm = select i1 %i.hk, i1 %.not.i.i165, i1 false
  br i1 %i.hm, label %bb.an, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.hn = getelementptr inbounds nuw i8, ptr %.0122233, i64 16
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !766
  %i.hp = add i32 %i.ho, %i.gr                    ; 2 uses
  store ptr %i.d, ptr %9, align 8, !tbaa !475, !alias.scope !767
  store i32 %i.hp, ptr %i.gs, align 8, !tbaa !476, !alias.scope !767
  %i.hq = zext i32 %i.hp to i64
  store i64 %i.hq, ptr %i.gt, align 8, !tbaa !480, !alias.scope !767
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hh, i64 28
  %i.hs = load i32, ptr %i.hr, align 4
  %i.ht = and i32 %i.hs, 32768
  %.not.i.i.i166 = icmp eq i32 %i.ht, 0
  br i1 %.not.i.i.i166, label %_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hu = call noundef ptr @_ZN5clang20getPrimaryMergedDeclEPNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(80) %i.hh) #16
  br label %_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i

_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i:  ; preds = %bb.ah, %bb.ag
  %.0.i.i.i167 = phi ptr [ %i.hu, %bb.ah ], [ %i.hh, %bb.ag ] ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.0.i.i.i167, i64 68 ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 4            ; 2 uses
  %i.hx = icmp ult i32 %i.hw, 16
  br i1 %i.hx, label %bb.ai, label %_ZNK5clang9FieldDecl13getFieldIndexEv.exit

bb.ai:                                            ; preds = %_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i
  call void @_ZNK5clang9FieldDecl19setCachedFieldIndexEv(ptr noundef nonnull align 8 dereferenceable(80) %.0.i.i.i167) #16
  %.pre.i = load i32, ptr %i.hv, align 4
  br label %_ZNK5clang9FieldDecl13getFieldIndexEv.exit

_ZNK5clang9FieldDecl13getFieldIndexEv.exit:       ; preds = %_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i, %bb.ai
  %i.hy = phi i32 [ %.pre.i, %bb.ai ], [ %i.hw, %_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i ]
  %i.hz = lshr i32 %i.hy, 4
  %i.ia = add nsw i32 %i.hz, -1
  %i.ib = load ptr, ptr %i.gu, align 8, !tbaa !772
  %i.ic = zext i32 %i.ia to i64
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.ic
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !468
  %i.if = add i64 %i.ie, %2
  %i.ig = call fastcc noundef i32 @_ZL13enumerateDataN5clang6interp7PtrViewERKNS0_7ContextENS0_4BitsES5_N4llvm12function_refIF6ResultS1_NS0_8PrimTypeES5_S5_bEEEb(ptr noundef nonnull byval(%"struct.clang::interp::PtrView") align 8 %9, ptr noundef nonnull align 8 dereferenceable(120) %1, i64 %i.if, i64 %3, ptr %4, i64 %5, i1 noundef zeroext %6) ; 2 uses
  br i1 %6, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %_ZNK5clang9FieldDecl13getFieldIndexEv.exit
  switch i32 %i.ig, label %bb.am [
    i32 0, label %bb.ak
    i32 1, label %bb.al
  ]

bb.ak:                                            ; preds = %bb.aj
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #16
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  call void @_ZNK5clang6interp7PtrView12setLifeStateENS0_8LifetimeE(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 noundef zeroext 0) #16
  br label %bb.am

bb.am:                                            ; preds = %bb.aj, %bb.ak, %bb.al, %_ZNK5clang9FieldDecl13getFieldIndexEv.exit
  %.not133 = icmp ne i32 %i.ig, 2
  %i.ih = select i1 %.not133, i1 %.0123232, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.an

bb.an:                                            ; preds = %bb.af, %bb.am
  %.1124 = phi i1 [ %i.ih, %bb.am ], [ %.0123232, %bb.af ] ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.0122233, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.ii, %i.go
  br i1 %.not, label %._crit_edge, label %bb.af

bb.ao:                                            ; preds = %.lr.ph239, %bb.au
  %.0118236 = phi ptr [ %i.gw, %.lr.ph239 ], [ %i.iz, %bb.au ] ; 3 uses
  %.2125235 = phi i1 [ %.0123.lcssa, %.lr.ph239 ], [ %i.iy, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.ij = getelementptr inbounds nuw i8, ptr %.0118236, i64 24
  %i.ik = load i32, ptr %i.ij, align 8, !tbaa !774
  call void @llvm.experimental.noalias.scope.decl(metadata !762)
  %i.il = add i32 %i.ik, %i.hd                    ; 2 uses
  store ptr %i.d, ptr %10, align 8, !tbaa !475, !alias.scope !762
  store i32 %i.il, ptr %i.he, align 8, !tbaa !476, !alias.scope !762
  %i.im = zext i32 %i.il to i64
  store i64 %i.im, ptr %i.hf, align 8, !tbaa !480, !alias.scope !762
  br i1 %6, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.in = call noundef zeroext i1 @_ZNK5clang6interp7PtrView13isInitializedEv(ptr noundef nonnull align 8 dereferenceable(24) %10)
  br i1 %i.in, label %bb.aq, label %.loopexit226.thread

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.io = load ptr, ptr %.0118236, align 8, !tbaa !775
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ip = call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %i.io)
  store ptr %i.ip, ptr %i.a, align 8, !tbaa !576
  %i.iq = load ptr, ptr %i.hg, align 8, !tbaa !778
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 64
  %i.is = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ir, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.is, 0
  %i.it = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.it, align 8, !tbaa !468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.iu = load ptr, ptr %1, align 8, !tbaa !30, !nonnull !31, !align !32
  %i.iv = call noundef i64 @_ZNK5clang10ASTContext6toBitsENS_9CharUnitsE(ptr noundef nonnull align 8 dereferenceable(23904) %i.iu, i64 %.sroa.0.0.copyload.i) #16
  %i.iw = add i64 %i.iv, %2
  %i.ix = call fastcc noundef i32 @_ZL13enumerateDataN5clang6interp7PtrViewERKNS0_7ContextENS0_4BitsES5_N4llvm12function_refIF6ResultS1_NS0_8PrimTypeES5_S5_bEEEb(ptr noundef nonnull byval(%"struct.clang::interp::PtrView") align 8 %10, ptr noundef nonnull align 8 dereferenceable(120) %1, i64 %i.iw, i64 %3, ptr %4, i64 %5, i1 noundef zeroext %6) ; 2 uses
  br i1 %6, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  switch i32 %i.ix, label %bb.au [
    i32 0, label %bb.as
    i32 1, label %bb.at
  ]

bb.as:                                            ; preds = %bb.ar
  call void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24) %10) #16
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  call void @_ZNK5clang6interp7PtrView12setLifeStateENS0_8LifetimeE(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 noundef zeroext 0) #16
  br label %bb.au

.loopexit226.thread:                              ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %.loopexit

bb.au:                                            ; preds = %bb.aq, %bb.at, %bb.as, %bb.ar
  %.not132 = icmp ne i32 %i.ix, 2
  %i.iy = select i1 %.not132, i1 %.2125235, i1 false ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  %i.iz = getelementptr inbounds nuw i8, ptr %.0118236, i64 32 ; 2 uses
  %.not131 = icmp eq ptr %i.iz, %i.ha
  br i1 %.not131, label %.loopexit226, label %bb.ao

.loopexit226:                                     ; preds = %bb.au, %._crit_edge
  %.not131228 = phi i1 [ %.0123.lcssa, %._crit_edge ], [ %i.iy, %bb.au ]
  %cond.fr = freeze i1 %.not131228
  %spec.select275 = select i1 %cond.fr, i32 0, i32 2
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit153, %_ZNK5clang6interp7PtrView6narrowEv.exit, %.loopexit226, %.loopexit226.thread, %_ZNK5clang6interp7PtrView8getIndexEv.exit, %._crit_edge247.loopexit, %.thread215, %bb.c
  %.5 = phi i32 [ %i.ab, %bb.c ], [ 2, %.loopexit226.thread ], [ 2, %.thread215 ], [ %i.cp, %._crit_edge247.loopexit ], [ 0, %_ZNK5clang6interp7PtrView8getIndexEv.exit ], [ %spec.select275, %.loopexit226 ], [ 0, %_ZNK5clang6interp7PtrView6narrowEv.exit ], [ 0, %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit153 ]
  ret i32 %.5
}

declare i64 @_ZNK5clang6interp10Descriptor7getTypeEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

declare i64 @_ZNK5clang6interp10Descriptor15getElemQualTypeEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

declare i8 @_ZNK5clang6interp7Context8classifyENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(120), i64) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK5clang4Type22isPackedVectorBoolTypeERKNS_10ASTContextE(ptr noundef nonnull align 16 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(23904)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(80) ptr @_ZNK5clang10ASTContext18getASTRecordLayoutEPKNS_10RecordDeclE(ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef) local_unnamed_addr #2

declare void @_ZNK5clang6interp7PtrView10initializeEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5clang6interp7PtrView13isInitializedEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !476  ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !475    ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !491  ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !501
  %i.g = icmp eq i32 %i.b, %i.f                   ; 3 uses
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i32 %i.b, 8
  br i1 %i.h, label %bb.c, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !480  ; 2 uses
  %i.k = icmp eq i64 %i.j, 8
  br i1 %i.k, label %bb.d, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !781
  %i.n = icmp eq i32 %i.m, 0
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.o = zext i32 %i.b to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !504
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit

_ZNK5clang6interp7PtrView12getFieldDescEv.exit:   ; preds = %bb.b, %bb.e
  %.0.i = phi ptr [ %i.r, %bb.e ], [ %i.d, %bb.b ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 53
  %i.t = load i8, ptr %i.s, align 1, !tbaa !571, !range !465, !noundef !31
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  %i.w = load ptr, ptr %i.v, align 8
  %.not.i = icmp eq ptr %i.w, null
  %i.x = select i1 %i.u, i1 %.not.i, i1 false
  br i1 %i.x, label %bb.f, label %bb.l

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.thread: ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 53
  %i.z = load i8, ptr %i.y, align 1, !tbaa !571, !range !465, !noundef !31
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8
  %.not.i6 = icmp eq ptr %i.ac, null
  %i.ad = select i1 %i.aa, i1 %.not.i6, i1 false
  br i1 %i.ad, label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.thread, label %.thread7

bb.f:                                             ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit
  %i.ae = icmp ugt i32 %i.b, 16
  %i.af = zext i32 %i.b to i64                    ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load i64, ptr %i.ag, align 8            ; 4 uses
  %i.ai = icmp eq i64 %i.ah, %i.af                ; 2 uses
  %or.cond.i = select i1 %i.ae, i1 %i.ai, i1 false
  br i1 %or.cond.i, label %_ZNK5clang6interp7PtrView8getIndexEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.g, label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.af
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !504
  br label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i

_ZNK5clang6interp7PtrView8elemSizeEv.exit.i:      ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi ptr [ %i.al, %bb.h ], [ %i.d, %bb.g ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !572 ; 4 uses
  %.not.not.i = icmp eq i32 %i.an, 0
  br i1 %.not.not.i, label %_ZNK5clang6interp7PtrView8getIndexEv.exit, label %bb.i

_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.thread: ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.thread
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !572 ; 2 uses
  %.not.not.i15 = icmp eq i32 %i.ap, 0
  br i1 %.not.not.i15, label %_ZNK5clang6interp7PtrView8getIndexEv.exit, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i

bb.i:                                             ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i
  br i1 %i.ai, label %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.g, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.af
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !504
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i: ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.thread, %bb.k, %bb.j
  %i.at = phi i32 [ %i.an, %bb.k ], [ %i.an, %bb.j ], [ %i.ap, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.thread ]
  %i.au = phi i64 [ %i.ah, %bb.k ], [ %i.ah, %bb.j ], [ %i.j, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.thread ]
  %i.av = phi i64 [ %i.af, %bb.k ], [ %i.af, %bb.j ], [ 8, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.thread ]
  %.0.i.i8.i = phi ptr [ %i.as, %bb.k ], [ %i.d, %bb.j ], [ %i.d, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.thread ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i.i8.i, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !573
  %.not1.i.i = icmp eq ptr %i.ax, null
  %..i.i = select i1 %.not1.i.i, i64 -8, i64 -16
  br label %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i

_ZNK5clang6interp7PtrView9getOffsetEv.exit.i:     ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i, %bb.i
  %i.ay = phi i64 [ %i.au, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i ], [ %i.ah, %bb.i ]
  %i.az = phi i32 [ %i.at, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i ], [ %i.an, %bb.i ]
  %i.ba = phi i64 [ %i.av, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i ], [ %i.af, %bb.i ]
  %.0.neg.i.i = phi i64 [ %..i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i ], [ 0, %bb.i ]
  %i.bb = sub i64 %i.ay, %i.ba
  %i.bc = add i64 %i.bb, %.0.neg.i.i
  %i.bd = trunc i64 %i.bc to i32
  %i.be = udiv i32 %i.bd, %i.az
  br label %_ZNK5clang6interp7PtrView8getIndexEv.exit

_ZNK5clang6interp7PtrView8getIndexEv.exit:        ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.thread, %bb.f, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i, %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i
  %.1.i = phi i32 [ 0, %bb.f ], [ 0, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i ], [ %i.be, %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i ], [ 0, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.thread ]
  %i.bf = tail call noundef zeroext i1 @_ZNK5clang6interp7PtrView20isElementInitializedEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %.1.i) #16
  br label %bb.m

bb.l:                                             ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit
  %i.bg = icmp eq i32 %i.b, 0
  br i1 %i.bg, label %bb.m, label %.thread7

.thread7:                                         ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.thread, %bb.l
  %i.bh = zext i32 %i.b to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 28
  %i.bk = load i16, ptr %i.bj, align 4
  %i.bl = and i16 %i.bk, 2
  %i.bm = icmp ne i16 %i.bl, 0
  br label %bb.m

bb.m:                                             ; preds = %_ZNK5clang6interp7PtrView8getIndexEv.exit, %.thread7, %bb.l, %bb.d
  %.1 = phi i1 [ %i.n, %bb.d ], [ %i.bf, %_ZNK5clang6interp7PtrView8getIndexEv.exit ], [ %i.bm, %.thread7 ], [ true, %bb.l ]
  ret i1 %.1
}

declare noundef i64 @_ZNK5clang10ASTContext6toBitsENS_9CharUnitsE(ptr noundef nonnull align 8 dereferenceable(23904), i64) local_unnamed_addr #2

declare { i64, i64 } @_ZNK5clang10ASTContext11getTypeInfoEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef) local_unnamed_addr #2

declare void @_ZNK5clang9FieldDecl19setCachedFieldIndexEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

declare noundef ptr @_ZN5clang20getPrimaryMergedDeclEPNS_4DeclE(ptr noundef) local_unnamed_addr #2

declare void @_ZNK5clang6interp7PtrView12setLifeStateENS0_8LifetimeE(ptr noundef nonnull align 8 dereferenceable(24), i8 noundef zeroext) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK5clang6interp7PtrView20isElementInitializedEj(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !608  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !609  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8 ; 3 uses
  %i.f = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 1
  %i.g = icmp eq i64 %i.f, 0
  %i.h = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, -2
  %spec.select.i.i.i.i.i.i.i.i.i = select i1 %i.g, i64 %i.h, i64 0 ; 3 uses
  %i.i = icmp ugt i64 %spec.select.i.i.i.i.i.i.i.i.i, 3
  br i1 %i.i, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.j = and i64 %spec.select.i.i.i.i.i.i.i.i.i, 2
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.j, 0
  %i.k = and i64 %spec.select.i.i.i.i.i.i.i.i.i, -4
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 18624
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !610  ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.not.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 2632 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !611  ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.r = add i64 %i.q, 24                         ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 2640
  %i.t = load i64, ptr %i.s, align 8, !tbaa !612
  %i.u = icmp ult i64 %i.r, %i.t
  br i1 %i.u, label %bb.f, label %bb.g, !prof !613

bb.f:                                             ; preds = %bb.e
  %i.v = inttoptr i64 %i.r to ptr
  store ptr %i.v, ptr %i.o, align 8, !tbaa !611
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.w = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.o, i64 noundef 24, i64 noundef 24, i8 3) ; 2 uses
  %.pre.i.i.i.i.i.i.i.i.i = ptrtoint ptr %i.w to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre-phi.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i, %bb.g ], [ %i.q, %bb.f ]
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.w, %bb.g ], [ %i.p, %bb.f ] ; 3 uses
  store ptr %i.n, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !615
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.x, align 8, !tbaa !616
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  store ptr %i.d, ptr %i.y, align 8, !tbaa !617
  %i.z = or i64 %.pre-phi.i.i.i.i.i.i.i.i.i, 4
  br label %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.d
  %i.aa = ptrtoint ptr %i.d to i64
  br label %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i

_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.sroa.0.1.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aa, %bb.i ], [ %i.z, %bb.h ]
  %i.ab = or i64 %.sroa.0.1.i.i.i.i.i.i.i.i.i, 1  ; 2 uses
  store i64 %i.ab, ptr %i.e, align 8
  br label %bb.j

bb.j:                                             ; preds = %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i, %bb.b
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i = phi i64 [ %i.ab, %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, %bb.b ] ; 2 uses
  %i.ac = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ac, 0
  %i.ad = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i, -6 ; 2 uses
  %.not.not14.i.i.i.i.i.i.i.i = icmp eq i64 %i.ad, 0
  %.not.not.i.i.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, %.not.not14.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !616
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !615 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !620 ; 2 uses
  %.not12.i.i.i.i.i.i.i.i = icmp eq i32 %i.ag, %i.aj
  br i1 %.not12.i.i.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.aj, ptr %i.af, align 8, !tbaa !616
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !564
  %i.al = getelementptr i8, ptr %i.ak, i64 152, !nosanitize !31
  %i.am = load ptr, ptr %i.al, align 8, !nosanitize !31
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull %i.d) #16, !inline_history !782
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.c
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !608 ; 2 uses
  %.not4 = icmp eq ptr %i.an, null
  br i1 %.not4, label %bb.n, label %.thread

.thread:                                          ; preds = %bb.a, %bb.m
  %i.ao = phi ptr [ %i.an, %bb.m ], [ %i.b, %bb.a ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 88
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !783
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread
  %i.ar = phi ptr [ %i.aq, %.thread ], [ null, %bb.m ]
  ret ptr %i.ar
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2, i8 %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = zext nneg i8 %3 to i64
  %i.b = shl nuw i64 1, %i.a                      ; 3 uses
  %i.c = add i64 %i.b, -1                         ; 3 uses
  %i.d = add i64 %i.c, %2                         ; 4 uses
  %i.e = icmp ugt i64 %i.d, 4096
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.d, i64 noundef 16) #16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !484  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.k = load i32, ptr %i.j, align 4, !tbaa !485
  %.not.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !613

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr nonnull %i.f, i64 %i.d)
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = zext i32 %i.i to i64
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !483
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.l ; 2 uses
  store ptr %i.f, ptr %i.n, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.d, ptr %.sroa.3.0..sroa_idx.i, align 1
  %i.o = load i32, ptr %i.h, align 8, !tbaa !484
end_hunk_0
