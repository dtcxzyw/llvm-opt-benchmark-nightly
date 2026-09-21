Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iced-x86-rs/original/iced_x86-37298a2194944c04.iced_x86.b05d7422b63e665d-cgu.0?download=true
inline.NumInlined: 5815
inline.NumDeleted: 1335
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEEB1c_:bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 8) #41
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEEB1j_.exit6

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEEB1j_.exit6: ; preds = %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBJ_.exit, %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsf8MNnN4IDbl_8iced_x867encoder7op_code10OpCodeInfoEEB1e_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !21, !noundef !21 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !21 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf8MNnN4IDbl_8iced_x867encoder7op_code10OpCodeInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf8MNnN4IDbl_8iced_x867encoder7op_code10OpCodeInfoEBH_.exit.i.i
  %.sroa.0.07.i.i = phi i64 [ %i.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf8MNnN4IDbl_8iced_x867encoder7op_code10OpCodeInfoEBH_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [88 x i8], ptr %.val, i64 %.sroa.0.07.i.i ; 4 uses
  %i.e = add nuw nsw i64 %.sroa.0.07.i.i, 1       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  %.val.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !203 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !203, !nonnull !21, !noundef !21
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !203
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  %.val.i4.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !205 ; 2 uses
  %i.i = icmp eq i64 %.val.i4.i.i.i, 0
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf8MNnN4IDbl_8iced_x867encoder7op_code10OpCodeInfoEBH_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.val1.i5.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !205, !nonnull !21, !noundef !21
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i.i.i, i64 noundef %.val.i4.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !205
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf8MNnN4IDbl_8iced_x867encoder7op_code10OpCodeInfoEBH_.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf8MNnN4IDbl_8iced_x867encoder7op_code10OpCodeInfoEBH_.exit.i.i: ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i.i.i
  %i.k = icmp eq i64 %i.e, %.val1
  br i1 %i.k, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf8MNnN4IDbl_8iced_x867encoder7op_code10OpCodeInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_.exit, label %.lr.ph.i.i

_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf8MNnN4IDbl_8iced_x867encoder7op_code10OpCodeInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf8MNnN4IDbl_8iced_x867encoder7op_code10OpCodeInfoEBH_.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !22, !noundef !21 ; 2 uses
  %i.l = icmp eq i64 %.val2, 0
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCsf8MNnN4IDbl_8iced_x867encoder7op_code10OpCodeInfoEEB1l_.exit6, label %bb.d

bb.d:                                             ; preds = %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf8MNnN4IDbl_8iced_x867encoder7op_code10OpCodeInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_.exit
  %i.m = mul nuw i64 %.val2, 88
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 8) #41
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCsf8MNnN4IDbl_8iced_x867encoder7op_code10OpCodeInfoEEB1l_.exit6

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCsf8MNnN4IDbl_8iced_x867encoder7op_code10OpCodeInfoEEB1l_.exit6: ; preds = %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf8MNnN4IDbl_8iced_x867encoder7op_code10OpCodeInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_.exit, %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartEEB1e_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !21, !noundef !21 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !21 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartEBH_.exit.i.i
  %.sroa.0.013.i.i = phi i64 [ %i.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartEBH_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.sroa.0.013.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.013.i.i, 1      ; 2 uses
  %.val8.i.i = load i64, ptr %i.d, align 8, !range !24, !alias.scope !210, !noundef !21 ; 2 uses
  %i.f = icmp sgt i64 %.val8.i.i, 0
  br i1 %i.f, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartEBH_.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %.val9.i.i = load ptr, ptr %i.g, align 8, !alias.scope !210, !nonnull !21, !noundef !21
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef %.val8.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !211
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartEBH_.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartEBH_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.h = icmp eq i64 %i.e, %.val1
  br i1 %i.h, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_.exit, label %.lr.ph.i.i

_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartEBH_.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !22, !noundef !21 ; 2 uses
  %i.i = icmp eq i64 %.val2, 0
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartEEB1l_.exit6, label %bb.c

bb.c:                                             ; preds = %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_.exit
  %i.j = shl nuw i64 %.val2, 5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #41
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartEEB1l_.exit6

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartEEB1l_.exit6: ; preds = %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymResTextPartENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_.exit, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockjjEEEB1f_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !21, !noundef !21 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !21 ; 2 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockjjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.0.07.i.i = phi i64 [ %i.e, %.lr.ph.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [288 x i8], ptr %.val, i64 %.sroa.0.07.i.i
  %i.e = add nuw nsw i64 %.sroa.0.07.i.i, 1       ; 2 uses
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockjjEEBI_(ptr noalias nofree noundef readonly align 8 dereferenceable(288) %i.d)
  %i.f = icmp eq i64 %i.e, %.val1
  br i1 %i.f, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockjjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_.exit, label %.lr.ph.i.i

_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockjjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_.exit: ; preds = %.lr.ph.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !22, !noundef !21 ; 2 uses
  %i.g = icmp eq i64 %.val2, 0
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockjjEEEB1m_.exit6, label %bb.b

bb.b:                                             ; preds = %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockjjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_.exit
  %i.h = mul nuw i64 %.val2, 288
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #41
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockjjEEEB1m_.exit6

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockjjEEEB1m_.exit6: ; preds = %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockjjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr9InstrBaseINtNtBG_5boxed3BoxDNtB1b_5InstrEL_EEEEB1f_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !21, !noundef !21 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !21 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr9InstrBaseINtNtB7_5boxed3BoxDNtBI_5InstrEL_EEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr9InstrBaseINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBE_5InstrEL_EEEBI_.exit.i.i
  %.sroa.0.010.i.i = phi i64 [ %i.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr9InstrBaseINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBE_5InstrEL_EEEBI_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.sroa.0.010.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.010.i.i, 1      ; 4 uses
  %i.f = getelementptr i8, ptr %i.d, i64 16
  %.val8.i.i = load ptr, ptr %i.f, align 8, !alias.scope !214 ; 5 uses
  %i.g = getelementptr i8, ptr %i.d, i64 24
  %.val9.i.i = load ptr, ptr %i.g, align 8, !alias.scope !214, !nonnull !21, !align !25, !noundef !21 ; 5 uses
  %i.h = load ptr, ptr %.val9.i.i, align 8, !invariant.load !21, !noalias !214 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i) ]
  invoke void %i.h(ptr noundef nonnull %.val8.i.i)
          to label %bb.c unwind label %bb.d, !noalias !214

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !22, !invariant.load !21, !noalias !214 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr9InstrBaseINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBE_5InstrEL_EEEBI_.exit.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !23, !invariant.load !21, !noalias !214
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) %i.m) #41, !noalias !214
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr9InstrBaseINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBE_5InstrEL_EEEBI_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !22, !invariant.load !21, !noalias !214 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.body.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !23, !invariant.load !21, !noalias !214
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) %i.s) #41, !noalias !214
  br label %.body.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr9InstrBaseINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBE_5InstrEL_EEEBI_.exit.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.c
  %i.t = icmp eq i64 %i.e, %.val1
  br i1 %i.t, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr9InstrBaseINtNtB7_5boxed3BoxDNtBI_5InstrEL_EEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_.exit, label %.lr.ph.i.i

bb.e:                                             ; preds = %.lr.ph
  %i.u = add nuw nsw i64 %.sroa.0.1.i.i22, 1      ; 2 uses
  %i.v = icmp eq i64 %i.u, %.val1
  br i1 %i.v, label %.body, label %.lr.ph

.body.i.i:                                        ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.d
  %i.w = icmp eq i64 %i.e, %.val1
  br i1 %i.w, label %.body, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i, %bb.e
  %.sroa.0.1.i.i22 = phi i64 [ %i.u, %bb.e ], [ %i.e, %.body.i.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.sroa.0.1.i.i22 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 16
  %.val.i.i = load ptr, ptr %i.y, align 8, !alias.scope !214
  %i.z = getelementptr i8, ptr %i.x, i64 24
  %.val7.i.i = load ptr, ptr %i.z, align 8, !alias.scope !214, !nonnull !21, !align !25, !noundef !21
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr9InstrBaseINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBE_5InstrEL_EEEBI_(ptr %.val.i.i, ptr nonnull %.val7.i.i) #42
          to label %bb.e unwind label %bb.f, !noalias !214

bb.f:                                             ; preds = %.lr.ph
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !214
  unreachable

.body:                                            ; preds = %bb.e, %.body.i.i
  %.val4 = load i64, ptr %0, align 8, !range !22, !noundef !21 ; 2 uses
  %i.ab = icmp eq i64 %.val4, 0
  br i1 %i.ab, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr9InstrBaseINtNtBG_5boxed3BoxDNtB1i_5InstrEL_EEEEB1m_.exit, label %bb.g

bb.g:                                             ; preds = %.body
  %i.ac = shl nuw i64 %.val4, 5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) 8) #41
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr9InstrBaseINtNtBG_5boxed3BoxDNtB1i_5InstrEL_EEEEB1m_.exit

_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr9InstrBaseINtNtB7_5boxed3BoxDNtBI_5InstrEL_EEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr9InstrBaseINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBE_5InstrEL_EEEBI_.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !22, !noundef !21 ; 2 uses
  %i.ad = icmp eq i64 %.val2, 0
  br i1 %i.ad, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr9InstrBaseINtNtBG_5boxed3BoxDNtB1i_5InstrEL_EEEEB1m_.exit6, label %bb.h

bb.h:                                             ; preds = %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr9InstrBaseINtNtB7_5boxed3BoxDNtBI_5InstrEL_EEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_.exit
  %i.ae = shl nuw i64 %.val2, 5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 8) #41
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr9InstrBaseINtNtBG_5boxed3BoxDNtB1i_5InstrEL_EEEEB1m_.exit6

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr9InstrBaseINtNtBG_5boxed3BoxDNtB1i_5InstrEL_EEEEB1m_.exit6: ; preds = %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr9InstrBaseINtNtB7_5boxed3BoxDNtBI_5InstrEL_EEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_.exit, %bb.h
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr9InstrBaseINtNtBG_5boxed3BoxDNtB1i_5InstrEL_EEEEB1m_.exit: ; preds = %bb.g, %.body
  resume { ptr, i32 } %i.n
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr5InstrEL_EEB1h_(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !21 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !22, !invariant.load !21 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr5InstrEL_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBO_.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !23, !invariant.load !21
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.f) #41
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr5InstrEL_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBO_.exit

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr5InstrEL_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBO_.exit: ; preds = %bb.c, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !22, !invariant.load !21 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr5InstrEL_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBO_.exit5, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !23, !invariant.load !21
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.l) #41
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr5InstrEL_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBO_.exit5

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr5InstrEL_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBO_.exit5: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4, %bb.d
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info9InstrInfoNtNtB4_6marker4SendNtB2b_4SyncEL_EEB1j_(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !21 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !22, !invariant.load !21 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info9InstrInfoNtNtCskKLDkoKarTP_4core6marker4SendNtB1I_4SyncEL_ENtNtNtB1K_3ops4drop4Drop4dropBQ_.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !23, !invariant.load !21
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.f) #41
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info9InstrInfoNtNtCskKLDkoKarTP_4core6marker4SendNtB1I_4SyncEL_ENtNtNtB1K_3ops4drop4Drop4dropBQ_.exit

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info9InstrInfoNtNtCskKLDkoKarTP_4core6marker4SendNtB1I_4SyncEL_ENtNtNtB1K_3ops4drop4Drop4dropBQ_.exit: ; preds = %bb.c, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !22, !invariant.load !21 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info9InstrInfoNtNtCskKLDkoKarTP_4core6marker4SendNtB1I_4SyncEL_ENtNtNtB1K_3ops4drop4Drop4dropBQ_.exit5, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !23, !invariant.load !21
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.l) #41
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info9InstrInfoNtNtCskKLDkoKarTP_4core6marker4SendNtB1I_4SyncEL_ENtNtNtB1K_3ops4drop4Drop4dropBQ_.exit5

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info9InstrInfoNtNtCskKLDkoKarTP_4core6marker4SendNtB1I_4SyncEL_ENtNtNtB1K_3ops4drop4Drop4dropBQ_.exit5: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4, %bb.d
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info9InstrInfoNtNtB4_6marker4SendNtB2c_4SyncEL_EEB1j_(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !21 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !22, !invariant.load !21 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info9InstrInfoNtNtCskKLDkoKarTP_4core6marker4SendNtB1J_4SyncEL_ENtNtNtB1L_3ops4drop4Drop4dropBQ_.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !23, !invariant.load !21
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.f) #41
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info9InstrInfoNtNtCskKLDkoKarTP_4core6marker4SendNtB1J_4SyncEL_ENtNtNtB1L_3ops4drop4Drop4dropBQ_.exit

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info9InstrInfoNtNtCskKLDkoKarTP_4core6marker4SendNtB1J_4SyncEL_ENtNtNtB1L_3ops4drop4Drop4dropBQ_.exit: ; preds = %bb.c, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !22, !invariant.load !21 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info9InstrInfoNtNtCskKLDkoKarTP_4core6marker4SendNtB1J_4SyncEL_ENtNtNtB1L_3ops4drop4Drop4dropBQ_.exit5, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !23, !invariant.load !21
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.l) #41
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info9InstrInfoNtNtCskKLDkoKarTP_4core6marker4SendNtB1J_4SyncEL_ENtNtNtB1L_3ops4drop4Drop4dropBQ_.exit5

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info9InstrInfoNtNtCskKLDkoKarTP_4core6marker4SendNtB1J_4SyncEL_ENtNtNtB1L_3ops4drop4Drop4dropBQ_.exit5: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4, %bb.d
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info9InstrInfoNtNtB4_6marker4SendNtB2c_4SyncEL_EEB1j_(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !21 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4info25SimpleInstrInfo_StringIg0EBJ_:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2216)
  %.val.i4.i = load i64, ptr %i.c, align 8, !alias.scope !2217 ; 2 uses
  %i.d = icmp eq i64 %.val.i4.i, 0
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i5.i = load ptr, ptr %i.e, align 8, !alias.scope !2217, !nonnull !21, !noundef !21
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i, i64 noundef %.val.i4.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !2217
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4info25SimpleInstrInfo_StringIg1EBJ_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2225)
  %.val.i.i = load i64, ptr %0, align 8, !alias.scope !2226 ; 2 uses
  %i.a = icmp eq i64 %.val.i.i, 0
  br i1 %i.a, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.b, align 8, !alias.scope !2226, !nonnull !21, !noundef !21
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !2226
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i: ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2227)
  %.val.i4.i = load i64, ptr %i.c, align 8, !alias.scope !2228 ; 2 uses
  %i.d = icmp eq i64 %.val.i4.i, 0
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i5.i = load ptr, ptr %i.e, align 8, !alias.scope !2228, !nonnull !21, !noundef !21
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i, i64 noundef %.val.i4.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !2228
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4info25SimpleInstrInfo_opmask_opEBJ_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2236)
  %.val.i.i = load i64, ptr %0, align 8, !alias.scope !2237 ; 2 uses
  %i.a = icmp eq i64 %.val.i.i, 0
  br i1 %i.a, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.b, align 8, !alias.scope !2237, !nonnull !21, !noundef !21
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !2237
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i: ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2238)
  %.val.i4.i = load i64, ptr %i.c, align 8, !alias.scope !2239 ; 2 uses
  %i.d = icmp eq i64 %.val.i4.i, 0
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i5.i = load ptr, ptr %i.e, align 8, !alias.scope !2239, !nonnull !21, !noundef !21
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i, i64 noundef %.val.i4.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !2239
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4info25SimpleInstrInfo_pclmulqdqEBJ_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2247)
  %.val.i.i = load i64, ptr %0, align 8, !alias.scope !2248 ; 2 uses
  %i.a = icmp eq i64 %.val.i.i, 0
  br i1 %i.a, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.b, align 8, !alias.scope !2248, !nonnull !21, !noundef !21
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !2248
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i: ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2249)
  %.val.i4.i = load i64, ptr %i.c, align 8, !alias.scope !2250 ; 2 uses
  %i.d = icmp eq i64 %.val.i4.i, 0
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i5.i = load ptr, ptr %i.e, align 8, !alias.scope !2250, !nonnull !21, !noundef !21
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i, i64 noundef %.val.i4.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !2250
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4info27SimpleInstrInfo_DeclareDataEBJ_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2258)
  %.val.i.i = load i64, ptr %0, align 8, !alias.scope !2259 ; 2 uses
  %i.a = icmp eq i64 %.val.i.i, 0
  br i1 %i.a, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.b, align 8, !alias.scope !2259, !nonnull !21, !noundef !21
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !2259
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i: ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2260)
  %.val.i4.i = load i64, ptr %i.c, align 8, !alias.scope !2261 ; 2 uses
  %i.d = icmp eq i64 %.val.i4.i, 0
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i5.i = load ptr, ptr %i.e, align 8, !alias.scope !2261, !nonnull !21, !noundef !21
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i, i64 noundef %.val.i4.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !2261
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info9InstrInfoNtNtB4_6marker4SendNtB2c_4SyncEL_EEB1k_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 576460752303423488) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info9InstrInfoNtNtB4_6marker4SendNtB2b_4SyncEL_EEB1j_.exit
  %.sroa.0.010 = phi i64 [ %i.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info9InstrInfoNtNtB4_6marker4SendNtB2b_4SyncEL_EEB1j_.exit ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.010 ; 2 uses
  %i.c = add nuw nsw i64 %.sroa.0.010, 1          ; 4 uses
  %.val8 = load ptr, ptr %i.b, align 8            ; 5 uses
  %i.d = getelementptr i8, ptr %i.b, i64 8
  %.val9 = load ptr, ptr %i.d, align 8, !nonnull !21, !align !25, !noundef !21 ; 5 uses
  %i.e = load ptr, ptr %.val9, align 8, !invariant.load !21 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8) ]
  invoke void %i.e(ptr noundef nonnull %.val8)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.val9, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !22, !invariant.load !21 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info9InstrInfoNtNtB4_6marker4SendNtB2b_4SyncEL_EEB1j_.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.val9, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !23, !invariant.load !21
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) %i.j) #41
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info9InstrInfoNtNtB4_6marker4SendNtB2b_4SyncEL_EEB1j_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val9, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !22, !invariant.load !21 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.body, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.val9, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !23, !invariant.load !21
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) %i.p) #41
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info9InstrInfoNtNtB4_6marker4SendNtB2b_4SyncEL_EEB1j_.exit: ; preds = %bb.c, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i
  %i.q = icmp eq i64 %i.c, %1
  br i1 %i.q, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info9InstrInfoNtNtB4_6marker4SendNtB2b_4SyncEL_EEB1j_.exit, %bb.a
  ret void

bb.e:                                             ; preds = %.lr.ph25
  %i.r = add nuw nsw i64 %.sroa.0.124, 1          ; 2 uses
  %i.s = icmp eq i64 %i.r, %1
  br i1 %i.s, label %._crit_edge26, label %.lr.ph25

.body:                                            ; preds = %bb.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i
  %i.t = icmp eq i64 %i.c, %1
  br i1 %i.t, label %._crit_edge26, label %.lr.ph25

.lr.ph25:                                         ; preds = %.body, %bb.e
  %.sroa.0.124 = phi i64 [ %i.r, %bb.e ], [ %i.c, %.body ] ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.124 ; 2 uses
  %.val = load ptr, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %.val7 = load ptr, ptr %i.v, align 8, !nonnull !21, !align !25, !noundef !21
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info9InstrInfoNtNtB4_6marker4SendNtB2b_4SyncEL_EEB1j_(ptr %.val, ptr nonnull %.val7) #42
          to label %bb.e unwind label %bb.f

._crit_edge26:                                    ; preds = %bb.e, %.body
  resume { ptr, i32 } %i.k

bb.f:                                             ; preds = %.lr.ph25
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info9InstrInfoNtNtB4_6marker4SendNtB2d_4SyncEL_EEB1k_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 576460752303423488) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info9InstrInfoNtNtB4_6marker4SendNtB2c_4SyncEL_EEB1j_.exit
  %.sroa.0.010 = phi i64 [ %i.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info9InstrInfoNtNtB4_6marker4SendNtB2c_4SyncEL_EEB1j_.exit ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.010 ; 2 uses
  %i.c = add nuw nsw i64 %.sroa.0.010, 1          ; 4 uses
  %.val8 = load ptr, ptr %i.b, align 8            ; 5 uses
  %i.d = getelementptr i8, ptr %i.b, i64 8
  %.val9 = load ptr, ptr %i.d, align 8, !nonnull !21, !align !25, !noundef !21 ; 5 uses
  %i.e = load ptr, ptr %.val9, align 8, !invariant.load !21 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8) ]
  invoke void %i.e(ptr noundef nonnull %.val8)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.val9, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !22, !invariant.load !21 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info9InstrInfoNtNtB4_6marker4SendNtB2c_4SyncEL_EEB1j_.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.val9, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !23, !invariant.load !21
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) %i.j) #41
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info9InstrInfoNtNtB4_6marker4SendNtB2c_4SyncEL_EEB1j_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val9, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !22, !invariant.load !21 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.body, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.val9, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !23, !invariant.load !21
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) %i.p) #41
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info9InstrInfoNtNtB4_6marker4SendNtB2c_4SyncEL_EEB1j_.exit: ; preds = %bb.c, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i
  %i.q = icmp eq i64 %i.c, %1
  br i1 %i.q, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info9InstrInfoNtNtB4_6marker4SendNtB2c_4SyncEL_EEB1j_.exit, %bb.a
  ret void

bb.e:                                             ; preds = %.lr.ph25
  %i.r = add nuw nsw i64 %.sroa.0.124, 1          ; 2 uses
  %i.s = icmp eq i64 %i.r, %1
  br i1 %i.s, label %._crit_edge26, label %.lr.ph25

.body:                                            ; preds = %bb.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i
  %i.t = icmp eq i64 %i.c, %1
  br i1 %i.t, label %._crit_edge26, label %.lr.ph25

.lr.ph25:                                         ; preds = %.body, %bb.e
  %.sroa.0.124 = phi i64 [ %i.r, %bb.e ], [ %i.c, %.body ] ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.124 ; 2 uses
  %.val = load ptr, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %.val7 = load ptr, ptr %i.v, align 8, !nonnull !21, !align !25, !noundef !21
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info9InstrInfoNtNtB4_6marker4SendNtB2c_4SyncEL_EEB1j_(ptr %.val, ptr nonnull %.val7) #42
          to label %bb.e unwind label %bb.f

._crit_edge26:                                    ; preds = %bb.e, %.body
  resume { ptr, i32 } %i.k

bb.f:                                             ; preds = %.lr.ph25
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info9InstrInfoNtNtB4_6marker4SendNtB2d_4SyncEL_EEB1k_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 576460752303423488) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info9InstrInfoNtNtB4_6marker4SendNtB2c_4SyncEL_EEB1j_.exit
  %.sroa.0.010 = phi i64 [ %i.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info9InstrInfoNtNtB4_6marker4SendNtB2c_4SyncEL_EEB1j_.exit ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.010 ; 2 uses
  %i.c = add nuw nsw i64 %.sroa.0.010, 1          ; 4 uses
  %.val8 = load ptr, ptr %i.b, align 8            ; 5 uses
  %i.d = getelementptr i8, ptr %i.b, i64 8
  %.val9 = load ptr, ptr %i.d, align 8, !nonnull !21, !align !25, !noundef !21 ; 5 uses
  %i.e = load ptr, ptr %.val9, align 8, !invariant.load !21 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8) ]
  invoke void %i.e(ptr noundef nonnull %.val8)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.val9, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !22, !invariant.load !21 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info9InstrInfoNtNtB4_6marker4SendNtB2c_4SyncEL_EEB1j_.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.val9, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !23, !invariant.load !21
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) %i.j) #41
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info9InstrInfoNtNtB4_6marker4SendNtB2c_4SyncEL_EEB1j_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val9, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !22, !invariant.load !21 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.body, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.val9, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !23, !invariant.load !21
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) %i.p) #41
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info9InstrInfoNtNtB4_6marker4SendNtB2c_4SyncEL_EEB1j_.exit: ; preds = %bb.c, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i
  %i.q = icmp eq i64 %i.c, %1
  br i1 %i.q, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info9InstrInfoNtNtB4_6marker4SendNtB2c_4SyncEL_EEB1j_.exit, %bb.a
  ret void

bb.e:                                             ; preds = %.lr.ph25
  %i.r = add nuw nsw i64 %.sroa.0.124, 1          ; 2 uses
  %i.s = icmp eq i64 %i.r, %1
  br i1 %i.s, label %._crit_edge26, label %.lr.ph25

.body:                                            ; preds = %bb.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i
  %i.t = icmp eq i64 %i.c, %1
  br i1 %i.t, label %._crit_edge26, label %.lr.ph25

.lr.ph25:                                         ; preds = %.body, %bb.e
  %.sroa.0.124 = phi i64 [ %i.r, %bb.e ], [ %i.c, %.body ] ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.124 ; 2 uses
  %.val = load ptr, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %.val7 = load ptr, ptr %i.v, align 8, !nonnull !21, !align !25, !noundef !21
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info9InstrInfoNtNtB4_6marker4SendNtB2c_4SyncEL_EEB1j_(ptr %.val, ptr nonnull %.val7) #42
          to label %bb.e unwind label %bb.f

._crit_edge26:                                    ; preds = %bb.e, %.body
  resume { ptr, i32 } %i.k

bb.f:                                             ; preds = %.lr.ph25
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4info9InstrInfoNtNtB4_6marker4SendNtB2e_4SyncEL_EEB1k_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 576460752303423488) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4info9InstrInfoNtNtB4_6marker4SendNtB2d_4SyncEL_EEB1j_.exit
  %.sroa.0.010 = phi i64 [ %i.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4info9InstrInfoNtNtB4_6marker4SendNtB2d_4SyncEL_EEB1j_.exit ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.010 ; 2 uses
  %i.c = add nuw nsw i64 %.sroa.0.010, 1          ; 4 uses
  %.val8 = load ptr, ptr %i.b, align 8            ; 5 uses
  %i.d = getelementptr i8, ptr %i.b, i64 8
  %.val9 = load ptr, ptr %i.d, align 8, !nonnull !21, !align !25, !noundef !21 ; 5 uses
  %i.e = load ptr, ptr %.val9, align 8, !invariant.load !21 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8) ]
  invoke void %i.e(ptr noundef nonnull %.val8)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.val9, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !22, !invariant.load !21 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4info9InstrInfoNtNtB4_6marker4SendNtB2d_4SyncEL_EEB1j_.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.val9, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !23, !invariant.load !21
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) %i.j) #41
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4info9InstrInfoNtNtB4_6marker4SendNtB2d_4SyncEL_EEB1j_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val9, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !22, !invariant.load !21 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.body, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.val9, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !23, !invariant.load !21
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) %i.p) #41
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4info9InstrInfoNtNtB4_6marker4SendNtB2d_4SyncEL_EEB1j_.exit: ; preds = %bb.c, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i
  %i.q = icmp eq i64 %i.c, %1
  br i1 %i.q, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4info9InstrInfoNtNtB4_6marker4SendNtB2d_4SyncEL_EEB1j_.exit, %bb.a
  ret void

bb.e:                                             ; preds = %.lr.ph25
  %i.r = add nuw nsw i64 %.sroa.0.124, 1          ; 2 uses
  %i.s = icmp eq i64 %i.r, %1
  br i1 %i.s, label %._crit_edge26, label %.lr.ph25

.body:                                            ; preds = %bb.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i
  %i.t = icmp eq i64 %i.c, %1
  br i1 %i.t, label %._crit_edge26, label %.lr.ph25

.lr.ph25:                                         ; preds = %.body, %bb.e
  %.sroa.0.124 = phi i64 [ %i.r, %bb.e ], [ %i.c, %.body ] ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.124 ; 2 uses
  %.val = load ptr, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %.val7 = load ptr, ptr %i.v, align 8, !nonnull !21, !align !25, !noundef !21
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4info9InstrInfoNtNtB4_6marker4SendNtB2d_4SyncEL_EEB1j_(ptr %.val, ptr nonnull %.val7) #42
          to label %bb.e unwind label %bb.f

._crit_edge26:                                    ; preds = %bb.e, %.body
  resume { ptr, i32 } %i.k

bb.f:                                             ; preds = %.lr.ph25
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockjjEEBI_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(288) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2285)
  %.val.i.i = load i64, ptr %0, align 8, !alias.scope !2286 ; 2 uses
  %i.a = icmp eq i64 %.val.i.i, 0
  br i1 %i.a, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsf8MNnN4IDbl_8iced_x86.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.b, align 8, !alias.scope !2286, !nonnull !21, !noundef !21
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !2286
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsf8MNnN4IDbl_8iced_x86.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsf8MNnN4IDbl_8iced_x86.exit.i.i: ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2287)
  %.val.i2.i.i = load i64, ptr %i.c, align 8, !alias.scope !2288 ; 2 uses
  %i.d = icmp eq i64 %.val.i2.i.i, 0
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x867encoder7EncoderEBF_.exit.i, label %bb.c

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsf8MNnN4IDbl_8iced_x86.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i3.i.i = load ptr, ptr %i.e, align 8, !alias.scope !2288, !nonnull !21, !noundef !21
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i3.i.i, i64 noundef %.val.i2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !2288
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x867encoder7EncoderEBF_.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x867encoder7EncoderEBF_.exit.i: ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsf8MNnN4IDbl_8iced_x86.exit.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.val.i = load i64, ptr %i.f, align 8, !range !24, !alias.scope !2284, !noundef !21 ; 2 uses
  %i.g = icmp sgt i64 %.val.i, 0
  br i1 %i.g, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsf8MNnN4IDbl_8iced_x869block_enc9RelocInfoEEEB1y_.exit9.i

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x867encoder7EncoderEBF_.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.val4.i = load ptr, ptr %i.h, align 8, !alias.scope !2284, !nonnull !21, !noundef !21
  %i.i = shl nuw i64 %.val.i, 3
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !2284
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsf8MNnN4IDbl_8iced_x869block_enc9RelocInfoEEEB1y_.exit9.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsf8MNnN4IDbl_8iced_x869block_enc9RelocInfoEEEB1y_.exit9.i: ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x867encoder7EncoderEBF_.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2289)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val.i10.i = load ptr, ptr %i.k, align 8, !alias.scope !2290, !nonnull !21, !noundef !21 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.val1.i11.i = load i64, ptr %i.l, align 8, !alias.scope !2290, !noundef !21 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2291)
  %i.m = icmp eq i64 %.val1.i11.i, 0
  br i1 %i.m, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_2rc2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block9BlockDataEEENtNtNtBY_3ops4drop4Drop4dropB1A_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsf8MNnN4IDbl_8iced_x869block_enc9RelocInfoEEEB1y_.exit9.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block9BlockDataEEEB1x_.exit.i.i.i.i
  %.sroa.0.08.i.i.i.i = phi i64 [ %i.o, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block9BlockDataEEEB1x_.exit.i.i.i.i ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsf8MNnN4IDbl_8iced_x869block_enc9RelocInfoEEEB1y_.exit9.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.val.i10.i, i64 %.sroa.0.08.i.i.i.i ; 2 uses
  %i.o = add nuw nsw i64 %.sroa.0.08.i.i.i.i, 1   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2293)
  %i.p = load ptr, ptr %i.n, align 8, !alias.scope !2294, !noalias !2290, !nonnull !21, !noundef !21 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !noalias !2295, !noundef !21
  %i.r = add i64 %i.q, -1                         ; 2 uses
  store i64 %i.r, ptr %i.p, align 8, !noalias !2295
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block9BlockDataEEEB1x_.exit.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block9BlockDataEE9drop_slowB1k_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.n) #44, !noalias !2290
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block9BlockDataEEEB1x_.exit.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block9BlockDataEEEB1x_.exit.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i
  %i.t = icmp eq i64 %i.o, %.val1.i11.i
  br i1 %i.t, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_2rc2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block9BlockDataEEENtNtNtBY_3ops4drop4Drop4dropB1A_.exit.i.i, label %.lr.ph.i.i.i.i

_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_2rc2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block9BlockDataEEENtNtNtBY_3ops4drop4Drop4dropB1A_.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block9BlockDataEEEB1x_.exit.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsf8MNnN4IDbl_8iced_x869block_enc9RelocInfoEEEB1y_.exit9.i
  %.val2.i.i = load i64, ptr %i.j, align 8, !range !22, !alias.scope !2290, !noundef !21 ; 2 uses
  %i.u = icmp eq i64 %.val2.i.i, 0
  br i1 %i.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block9BlockDataEEEEB1N_.exit.i, label %bb.f

bb.f:                                             ; preds = %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_2rc2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block9BlockDataEEENtNtNtBY_3ops4drop4Drop4dropB1A_.exit.i.i
  %i.v = shl nuw i64 %.val2.i.i, 3
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i10.i, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !2290
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block9BlockDataEEEEB1N_.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block9BlockDataEEEEB1N_.exit.i: ; preds = %bb.f, %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_2rc2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block9BlockDataEEENtNtNtBY_3ops4drop4Drop4dropB1A_.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2296)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.val.i12.i = load ptr, ptr %i.x, align 8, !alias.scope !2297, !nonnull !21, !noundef !21 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.val1.i13.i = load i64, ptr %i.y, align 8, !alias.scope !2297, !noundef !21 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2298)
  %i.z = icmp eq i64 %.val1.i13.i, 0
  br i1 %i.z, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_2rc2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block9BlockDataEEENtNtNtBY_3ops4drop4Drop4dropB1A_.exit.i17.i, label %.lr.ph.i.i.i14.i

.lr.ph.i.i.i14.i:                                 ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block9BlockDataEEEEB1N_.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block9BlockDataEEEB1x_.exit.i.i.i16.i
  %.sroa.0.08.i.i.i15.i = phi i64 [ %i.ab, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block9BlockDataEEEB1x_.exit.i.i.i16.i ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block9BlockDataEEEEB1N_.exit.i ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.val.i12.i, i64 %.sroa.0.08.i.i.i15.i ; 2 uses
  %i.ab = add nuw nsw i64 %.sroa.0.08.i.i.i15.i, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2300)
  %i.ac = load ptr, ptr %i.aa, align 8, !alias.scope !2301, !noalias !2297, !nonnull !21, !noundef !21 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !2302, !noundef !21
  %i.ae = add i64 %i.ad, -1                       ; 2 uses
  store i64 %i.ae, ptr %i.ac, align 8, !noalias !2302
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block9BlockDataEEEB1x_.exit.i.i.i16.i

bb.g:                                             ; preds = %.lr.ph.i.i.i14.i
  tail call void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block9BlockDataEE9drop_slowB1k_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.aa) #44, !noalias !2297
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block9BlockDataEEEB1x_.exit.i.i.i16.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block9BlockDataEEEB1x_.exit.i.i.i16.i: ; preds = %bb.g, %.lr.ph.i.i.i14.i
  %i.ag = icmp eq i64 %i.ab, %.val1.i13.i
  br i1 %i.ag, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_2rc2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block9BlockDataEEENtNtNtBY_3ops4drop4Drop4dropB1A_.exit.i17.i, label %.lr.ph.i.i.i14.i

_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_2rc2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block9BlockDataEEENtNtNtBY_3ops4drop4Drop4dropB1A_.exit.i17.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block9BlockDataEEEB1x_.exit.i.i.i16.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block9BlockDataEEEEB1N_.exit.i
  %.val2.i18.i = load i64, ptr %i.w, align 8, !range !22, !alias.scope !2297, !noundef !21 ; 2 uses
  %i.ah = icmp eq i64 %.val2.i18.i, 0
  br i1 %i.ah, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockEBH_.exit, label %bb.h

bb.h:                                             ; preds = %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_2rc2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block9BlockDataEEENtNtNtBY_3ops4drop4Drop4dropB1A_.exit.i17.i
  %i.ai = shl nuw i64 %.val2.i18.i, 3
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i12.i, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !2297
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockEBH_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockEBH_.exit: ; preds = %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_2rc2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block9BlockDataEEENtNtNtBY_3ops4drop4Drop4dropB1A_.exit.i17.i, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr9InstrBaseINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBE_5InstrEL_EEEBI_(ptr %.16.val, ptr nofree readonly captures(none) %.24.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.24.val) ]
  %i.a = load ptr, ptr %.24.val, align 8, !invariant.load !21 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.16.val) ]
  invoke void %i.a(ptr noundef nonnull %.16.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.24.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !22, !invariant.load !21 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr5InstrEL_EEB1h_.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.24.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !23, !invariant.load !21
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.16.val) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.16.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.f) #41
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr5InstrEL_EEB1h_.exit

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.24.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !22, !invariant.load !21 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr5InstrEL_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBO_.exit5.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.24.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !23, !invariant.load !21
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.16.val, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.l) #41
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr5InstrEL_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBO_.exit5.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr5InstrEL_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBO_.exit5.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.d
  resume { ptr, i32 } %i.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5instr5InstrEL_EEB1h_.exit: ; preds = %bb.c, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i
  ret void
end_hunk_1
begin_hunk_2_@_RNvXs5_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11InstructionNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq:bb.a
_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtCsf8MNnN4IDbl_8iced_x865enums6OpKindINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit: ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 19
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 19
  %.val.3.i11 = load i8, ptr %i.au, align 1, !range !38, !noundef !21
  %.val5.3.i12 = load i8, ptr %i.av, align 1, !range !38, !noundef !21
  %.not.3.i13 = icmp eq i8 %.val.3.i11, %.val5.3.i12
  br i1 %.not.3.i13, label %bb.m, label %_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtCsf8MNnN4IDbl_8iced_x868register8RegisterINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit.thread

bb.m:                                             ; preds = %_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtCsf8MNnN4IDbl_8iced_x865enums6OpKindINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.ax = load i8, ptr %i.aw, align 2, !range !40, !noundef !21
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.az = load i8, ptr %i.ay, align 2, !range !40, !noundef !21
  %i.ba = icmp eq i8 %i.ax, %i.az
  br i1 %i.ba, label %bb.n, label %_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtCsf8MNnN4IDbl_8iced_x868register8RegisterINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.bc = load i8, ptr %i.bb, align 1, !noundef !21
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.be = load i8, ptr %i.bd, align 1, !noundef !21
  %i.bf = icmp eq i8 %i.bc, %i.be
  br i1 %i.bf, label %bb.o, label %_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtCsf8MNnN4IDbl_8iced_x868register8RegisterINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 39
  %i.bh = load i8, ptr %i.bg, align 1, !noundef !21
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 39
  %i.bj = load i8, ptr %i.bi, align 1, !noundef !21
  %i.bk = icmp eq i8 %i.bh, %i.bj
  br label %_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtCsf8MNnN4IDbl_8iced_x868register8RegisterINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit.thread

_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtCsf8MNnN4IDbl_8iced_x868register8RegisterINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit.thread: ; preds = %bb.k, %bb.l, %bb.j, %bb.h, %bb.i, %bb.g, %bb.d, %bb.e, %bb.f, %bb.m, %bb.a, %bb.b, %bb.c, %_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtCsf8MNnN4IDbl_8iced_x868register8RegisterINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, %_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtCsf8MNnN4IDbl_8iced_x865enums6OpKindINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, %bb.n, %bb.o
  %.sroa.0.0 = phi i1 [ %i.bk, %bb.o ], [ false, %bb.n ], [ false, %_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtCsf8MNnN4IDbl_8iced_x865enums6OpKindINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit ], [ false, %_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtCsf8MNnN4IDbl_8iced_x868register8RegisterINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.m ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.l ], [ false, %bb.k ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtCsf8MNnN4IDbl_8iced_x8618instruction_createNtNtB7_11instruction11InstructionINtNtB5_7private5With2NtNtB7_8register8RegistermE5with2(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 24), (32, 34)) %0, i16 noundef range(i16 0, 4936) %1, i8 noundef %2, i32 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = zext i32 %3 to i64                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18570
  call fastcc void @_RNvNtCsf8MNnN4IDbl_8iced_x8620instruction_internal21get_immediate_op_kind(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i16 noundef %1, i64 noundef 1), !noalias !18570
  %i.c = load i64, ptr %i.a, align 8, !range !55, !noalias !18570, !noundef !21 ; 2 uses
  %.not.i = icmp eq i64 %i.c, -2
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.411.0.copyload.i = load i64, ptr %i.d, align 8, !noalias !18571
  %.sroa.21.9..sroa.512.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.21.9.copyload = load i64, ptr %.sroa.21.9..sroa.512.0..sroa_idx.i.sroa_idx, align 8, !noalias !18571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18570
  %i.e = inttoptr i64 %.sroa.411.0.copyload.i to ptr
  br label %_RNvNtCsf8MNnN4IDbl_8iced_x8620instruction_internal29initialize_unsigned_immediate.exit

bb.c:                                             ; preds = %bb.a
  %i.f = load i8, ptr %i.d, align 8, !range !38, !noalias !18570, !noundef !21 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18570
  switch i8 %i.f, label %_RNvNtCsf8MNnN4IDbl_8iced_x8620instruction_internal29initialize_unsigned_immediate.exit [
    i8 6, label %.thread.i
    i8 7, label %bb.d
    i8 8, label %bb.e
    i8 9, label %bb.l
    i8 10, label %bb.l
    i8 11, label %bb.f
    i8 12, label %bb.g
    i8 13, label %bb.h
    i8 14, label %bb.i
  ]

.thread.i:                                        ; preds = %bb.c
  %i.g = icmp ult i32 %3, 256
  br i1 %i.g, label %bb.l, label %_RNvNtCsf8MNnN4IDbl_8iced_x8620instruction_internal29initialize_unsigned_immediate.exit

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ult i32 %3, 256
  br i1 %i.h, label %bb.l, label %_RNvNtCsf8MNnN4IDbl_8iced_x8620instruction_internal29initialize_unsigned_immediate.exit

bb.e:                                             ; preds = %bb.c
  %i.i = icmp ult i32 %3, 65536
  br i1 %i.i, label %bb.l, label %_RNvNtCsf8MNnN4IDbl_8iced_x8620instruction_internal29initialize_unsigned_immediate.exit

bb.f:                                             ; preds = %bb.c
  %i.j = icmp ult i32 %3, 128
  %i.k = and i64 %i.b, 4294967168
  %or.cond.i = icmp eq i64 %i.k, 65408
  %or.cond29.i = or i1 %i.j, %or.cond.i
  br i1 %or.cond29.i, label %bb.j, label %_RNvNtCsf8MNnN4IDbl_8iced_x8620instruction_internal29initialize_unsigned_immediate.exit

bb.g:                                             ; preds = %bb.c
  %i.l = icmp ult i32 %3, 128
  %i.m = and i64 %i.b, 4294967168
  %or.cond1.i = icmp eq i64 %i.m, 4294967168
  %or.cond30.i = or i1 %i.l, %or.cond1.i
  br i1 %or.cond30.i, label %bb.k, label %_RNvNtCsf8MNnN4IDbl_8iced_x8620instruction_internal29initialize_unsigned_immediate.exit

bb.h:                                             ; preds = %bb.c
  %i.n = icmp ult i32 %3, 128
  br i1 %i.n, label %bb.l, label %_RNvNtCsf8MNnN4IDbl_8iced_x8620instruction_internal29initialize_unsigned_immediate.exit

bb.i:                                             ; preds = %bb.c
  %i.o = icmp sgt i32 %3, -1
  br i1 %i.o, label %bb.l, label %_RNvNtCsf8MNnN4IDbl_8iced_x8620instruction_internal29initialize_unsigned_immediate.exit

bb.j:                                             ; preds = %bb.f
  %i.p = and i32 %3, 255
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.q = and i32 %3, 255
  br label %bb.l

_RNvNtCsf8MNnN4IDbl_8iced_x8620instruction_internal29initialize_unsigned_immediate.exit: ; preds = %.thread.i, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.b, %bb.c
  %.sroa.17.0 = phi ptr [ %i.e, %bb.b ], [ @590, %bb.c ], [ @591, %bb.i ], [ @591, %bb.h ], [ @591, %bb.g ], [ @591, %bb.f ], [ @591, %bb.e ], [ @591, %bb.d ], [ @591, %.thread.i ]
  %.sroa.21.0 = phi i64 [ %.sroa.21.9.copyload, %bb.b ], [ 24, %bb.c ], [ 26, %bb.i ], [ 26, %bb.h ], [ 26, %bb.g ], [ 26, %bb.f ], [ 26, %bb.e ], [ 26, %bb.d ], [ 26, %.thread.i ]
  %.sroa.06.0 = phi i64 [ %i.c, %bb.b ], [ -1, %bb.c ], [ -1, %bb.i ], [ -1, %bb.h ], [ -1, %bb.g ], [ -1, %bb.f ], [ -1, %bb.e ], [ -1, %bb.d ], [ -1, %.thread.i ]
  store i64 %.sroa.06.0, ptr %0, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.17.0, ptr %.sroa.425.0..sroa_idx, align 8
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.21.0, ptr %.sroa.526.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 -1, ptr %i.r, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.h, %bb.c, %bb.c, %.thread.i, %bb.d, %bb.j, %bb.k, %bb.e, %bb.i
  %.sroa.11.0.ph = phi i32 [ %3, %bb.i ], [ %3, %bb.e ], [ %3, %bb.c ], [ %i.q, %bb.k ], [ %i.p, %bb.j ], [ %3, %bb.c ], [ %3, %.thread.i ], [ 0, %bb.d ], [ %3, %bb.h ]
  %.sroa.5.0.ph = phi i64 [ 0, %bb.i ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.c ], [ 0, %.thread.i ], [ %i.b, %bb.d ], [ 0, %bb.h ]
  %.sroa.8.sroa.5.0.insert.ext = zext nneg i8 %i.f to i32
  %.sroa.8.sroa.5.0.insert.shift = shl nuw nsw i32 %.sroa.8.sroa.5.0.insert.ext, 8
  %.sroa.20.sroa.0.0.insert.ext = zext i8 %2 to i32
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.ph, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.8.sroa.5.0.insert.shift, ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.11.0.ph, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.20.sroa.0.0.insert.ext, ptr %.sroa.8.0..sroa_idx9, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 %1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.1010.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.1010.0..sroa_idx, i8 0, i64 6, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_RNvNtCsf8MNnN4IDbl_8iced_x8620instruction_internal29initialize_unsigned_immediate.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtCsf8MNnN4IDbl_8iced_x867encoder3opsNtB5_13OpModRM_regF0NtB5_2Op6encode(ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(152) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i32, ptr %i.a, align 8, !noundef !21
  %i.c = icmp eq i32 %i.b, 64
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext i32 %3 to i64                       ; 2 uses
  %i.e = icmp ult i32 %3, 4
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.d, %bb.e, %bb.a
  %i.f = load i8, ptr %0, align 1, !noundef !21
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.h = load i8, ptr %i.g, align 1, !noundef !21
  tail call fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x867encoderNtB2_7Encoder19add_mod_rm_register(ptr noalias nofree noundef align 8 dereferenceable(152) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i32 noundef %3, i8 noundef %i.f, i8 noundef %i.h)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  %i.k = load i8, ptr %i.j, align 1, !range !38, !noundef !21
  %.not25 = icmp eq i8 %i.k, 0
  br i1 %.not25, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.d
  %i.n = load i8, ptr %i.m, align 1, !noundef !21
  %i.o = zext i8 %i.n to i32                      ; 2 uses
  %i.p = load i8, ptr %0, align 1, !noundef !21   ; 3 uses
  %i.q = zext i8 %i.p to i32                      ; 2 uses
  %i.r = add nuw nsw i32 %i.q, 8
  %.not = icmp samesign ugt i32 %i.r, %i.o
  %i.s = add nuw nsw i32 %i.q, 15
  %.not19 = icmp samesign ult i32 %i.s, %i.o
  %or.cond = select i1 %.not, i1 true, i1 %.not19
  br i1 %or.cond, label %bb.c, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !noundef !21
  %i.v = or i32 %i.u, 8192
  store i32 %i.v, ptr %i.t, align 8
  %i.w = add nuw i8 %i.p, 8
  %i.x = add i8 %i.p, 15
  tail call fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x867encoderNtB2_7Encoder19add_mod_rm_register(ptr noalias nofree noundef align 8 dereferenceable(152) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i32 noundef %3, i8 noundef %i.w, i8 noundef %i.x)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4infoNtB5_22SimpleInstrInfo_AamAadNtB5_9InstrInfo7op_info(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias nofree readonly align 8 captures(none) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.b = load i32, ptr %i.a, align 8, !noundef !21
  %i.c = and i32 %i.b, 255
  %i.d = icmp eq i32 %i.c, 10
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(5) %i.e, i8 0, i64 5, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.f, i8 0, i64 5, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.g, i8 0, i64 5, i1 false)
  store ptr %1, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 0, ptr %i.i, align 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RNvMNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4infoNtB2_11InstrOpInfo3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, i32 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4infoNtB5_23SimpleInstrInfo_memsizeNtB5_9InstrInfo7op_info(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree readonly align 8 captures(none) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.b = load i32, ptr %i.a, align 4, !noundef !21
  %i.c = lshr i32 %i.b, 18
  %i.d = and i32 %i.c, 3                          ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.split2, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %i.d to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @_RNvNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info11get_bitness19CODESIZE_TO_BITNESS, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !noundef !21
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load i32, ptr %i.i, align 8, !noundef !21
  %i.k = and i32 %i.j, %i.h
  %i.l = icmp eq i32 %i.k, 0
  %spec.select = select i1 %i.l, i32 26, i32 3
  br label %.split2

.split2:                                          ; preds = %bb.b, %bb.a
  %.sink = phi i32 [ %spec.select, %bb.b ], [ 3, %bb.a ]
  tail call fastcc void @_RNvMNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4infoNtB2_11InstrOpInfo3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, i32 noundef %.sink)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4infoNtB5_25SimpleInstrInfo_push_imm8NtB5_9InstrInfo7op_info(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 28)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree readonly align 8 captures(none) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.b = load i8, ptr %i.a, align 4, !range !41, !noundef !21
  %i.c = zext nneg i8 %i.b to i32
  %i.d = shl nuw nsw i32 %i.c, 10                 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.f = load i32, ptr %i.e, align 4, !noundef !21
  %i.g = lshr i32 %i.f, 18
  %i.h = and i32 %i.g, 3                          ; 2 uses
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @_RNvNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info11get_bitness19CODESIZE_TO_BITNESS, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !noundef !21
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load i32, ptr %i.l, align 8, !noundef !21 ; 3 uses
  %i.n = icmp ne i32 %i.m, 0
  %i.o = icmp ne i32 %i.h, 0
  %or.cond.not8 = and i1 %i.n, %i.o
  %i.p = icmp ne i32 %i.k, %i.m
  %or.cond3 = and i1 %i.p, %or.cond.not8
  br i1 %or.cond3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.a
  %.sroa.0.0 = phi i32 [ %i.q, %bb.d ], [ %i.r, %bb.e ], [ %i.s, %bb.f ], [ %i.d, %bb.a ]
  tail call fastcc void @_RNvMNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4infoNtB2_11InstrOpInfo3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, i32 noundef %.sroa.0.0)
  ret void

bb.c:                                             ; preds = %bb.a
  switch i32 %i.m, label %bb.f [
    i32 16, label %bb.d
    i32 32, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.q = or disjoint i32 %i.d, 8
  br label %bb.b

bb.e:                                             ; preds = %bb.c
  %i.r = or disjoint i32 %i.d, 16
  br label %bb.b

bb.f:                                             ; preds = %bb.c
  %i.s = or disjoint i32 %i.d, 24
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4infoNtB5_23SimpleInstrInfo_memsizeNtB5_9InstrInfo7op_info(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree readonly align 8 captures(none) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.b = load i32, ptr %i.a, align 4, !noundef !21
  %i.c = lshr i32 %i.b, 18
  %i.d = and i32 %i.c, 3                          ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.split2, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %i.d to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @_RNvNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info11get_bitness19CODESIZE_TO_BITNESS, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !noundef !21
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load i32, ptr %i.i, align 8, !noundef !21
  %i.k = and i32 %i.j, %i.h
  %i.l = icmp eq i32 %i.k, 0
  %spec.select = select i1 %i.l, i32 6, i32 1
  br label %.split2

.split2:                                          ; preds = %bb.b, %bb.a
  %.sink = phi i32 [ %spec.select, %bb.b ], [ 1, %bb.a ]
  tail call fastcc void @_RNvMNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4infoNtB2_11InstrOpInfo3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, i32 noundef %.sink)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtCsf8MNnN4IDbl_8iced_x8618instruction_createNtNtB7_11instruction11InstructionINtNtB5_7private5With2NtNtB7_8register8RegisterxE5with2(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 24), (32, 34)) %0, i16 noundef range(i16 0, 4936) %1, i8 noundef %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i8 0, i64 40, i1 false)
  store i16 %1, ptr %i.c, align 8
  store i8 %2, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvNtCsf8MNnN4IDbl_8iced_x8620instruction_internal27initialize_signed_immediate(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef align 8 dereferenceable(40) %i.b, i64 noundef 1, i64 noundef %3)
  %i.e = load i64, ptr %i.a, align 8, !range !55, !noundef !21
  %.not = icmp eq i64 %i.e, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 -1, ptr %i.f, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtNtCsf8MNnN4IDbl_8iced_x867encoder3opsNtB5_5OpRegNtB5_2Op6encode(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(152) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %2, i32 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 9 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [4 x i8], align 4                 ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [4 x i8], align 4                 ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 9 uses
  %i.l = alloca [4 x i8], align 4                 ; 4 uses
  %i.m = alloca [4 x i8], align 4                 ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [4 x i8], align 4                 ; 4 uses
  %i.p = icmp ult i32 %3, 4
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i32 %3, 4
  br i1 %i.q, label %.split, label %.split6

bb.c:                                             ; preds = %bb.a
end_hunk_2
