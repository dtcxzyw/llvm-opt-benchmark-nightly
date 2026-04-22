inline.NumInlined: 4282
inline.NumDeleted: 1948
begin_hunk_0
@_ZZN2v88internal8compiler10turboshaft14MaybeRepVectorIJLNS2_27MaybeRegisterRepresentation4EnumE0ELS5_4ELS5_4EEEENS_4base6VectorIKS4_EEvE9rep_array = linkonce_odr hidden constant %"struct.std::array.541" { [3 x %"class.v8::internal::compiler::turboshaft::MaybeRegisterRepresentation"] [%"class.v8::internal::compiler::turboshaft::MaybeRegisterRepresentation" zeroinitializer, %"class.v8::internal::compiler::turboshaft::MaybeRegisterRepresentation" { i8 4 }, %"class.v8::internal::compiler::turboshaft::MaybeRegisterRepresentation" { i8 4 }] }, comdat, align 1
@"__func__._ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer15DecideVectorizeEvENK3$_0clEPKNS2_8PackNodeE" = private unnamed_addr constant [11 x i8] c"operator()\00", align 1
@.str.78 = private unnamed_addr constant [39 x i8] c"External use edge: (%d:%s) -> (%d:%s)\0A\00", align 1
@switch.table._ZNK2v88internal8compiler10turboshaft9Operation7EffectsEv = private unnamed_addr constant [4 x i32] [i32 0, i32 4128, i32 0, i32 4128], align 4
@switch.table._ZNK2v88internal8compiler10turboshaft18LoadTypedElementOp11outputs_repEv = private unnamed_addr constant [12 x i64] [i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 2, i64 3, i64 0, i64 1, i64 1], align 8
@switch.table._ZNK2v88internal8compiler10turboshaft7StoreOp10inputs_repERNS0_10ZoneVectorINS2_27MaybeRegisterRepresentationEEE.16 = private unnamed_addr constant [22 x i8] c"\00\00\00\00\00\00\01\01\02\02\03\04\04\04\04\04\04\04\04\01\06\07", align 1
@switch.table._ZNK2v88internal8compiler10turboshaft6CallOp10inputs_repERNS0_10ZoneVectorINS2_27MaybeRegisterRepresentationEEE = private unnamed_addr constant [9 x i8] c"\04\04\01\01\01\00\01\01\04", align 1
@switch.table._ZNK2v88internal8compiler10turboshaft18AtomicWord32PairOp10inputs_repERNS0_10ZoneVectorINS2_27MaybeRegisterRepresentationEEE = private unnamed_addr constant [9 x i64] [i64 4, i64 4, i64 4, i64 4, i64 4, i64 4, i64 6, i64 2, i64 4], align 8
@switch.table._ZNK2v88internal8compiler10turboshaft19StoreTypedElementOp10inputs_repERNS0_10ZoneVectorINS2_27MaybeRegisterRepresentationEEE = private unnamed_addr constant [12 x i8] c"\00\00\00\00\00\00\00\02\03\00\01\01", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft19IsSameSimd128OpKindERKNS2_9OperationES5_(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #0 {
end_hunk_0
begin_hunk_1_@_ZNK2v88internal8compiler10turboshaft21LoadDataViewElementOp11outputs_repEv:switch.lookup
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr [8 x i8], ptr @switch.table._ZNK2v88internal8compiler10turboshaft18LoadTypedElementOp11outputs_repEv, i64 %i.c
  %switch.gep = getelementptr i8, ptr %i.d, i64 -8
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.e = getelementptr inbounds nuw i8, ptr @_ZZN2v88internal8compiler10turboshaft12VectorForRepENS2_22RegisterRepresentationEE5table, i64 %switch.load
end_hunk_1
begin_hunk_2_@_ZNK2v88internal8compiler10turboshaft7StoreOp10inputs_repERNS0_10ZoneVectorINS2_27MaybeRegisterRepresentationEEE:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext nneg i8 %i.j to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK2v88internal8compiler10turboshaft7StoreOp10inputs_repERNS0_10ZoneVectorINS2_27MaybeRegisterRepresentationEEE.16, i64 %i.k
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8
end_hunk_2
begin_hunk_3_@_ZNK2v88internal8compiler10turboshaft7StoreOp10inputs_repERNS0_10ZoneVectorINS2_27MaybeRegisterRepresentationEEE:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext nneg i8 %i.ae to i64
  %switch.gep45 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK2v88internal8compiler10turboshaft7StoreOp10inputs_repERNS0_10ZoneVectorINS2_27MaybeRegisterRepresentationEEE.16, i64 %i.af
  %switch.load46 = load i8, ptr %switch.gep45, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
end_hunk_3
begin_hunk_4_@_ZNK2v88internal8compiler10turboshaft22StoreDataViewElementOp10inputs_repERNS0_10ZoneVectorINS2_27MaybeRegisterRepresentationEEE:switch.lookup
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr i8, ptr @switch.table._ZNK2v88internal8compiler10turboshaft19StoreTypedElementOp10inputs_repERNS0_10ZoneVectorINS2_27MaybeRegisterRepresentationEEE, i64 %i.c
  %switch.gep = getelementptr i8, ptr %i.d, i64 -1
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
end_hunk_4
