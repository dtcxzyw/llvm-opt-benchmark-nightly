Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clap-rs/original/clap_builder-eee8b2760265896a.clap_builder.b45a015334136168-cgu.0?download=true
inline.NumInlined: 5218
inline.NumDeleted: 2692
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_arg10MatchedArgEBJ_:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1182)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val.i2 = load ptr, ptr %i.z, align 8, !alias.scope !1182, !nonnull !11, !noundef !11 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val1.i3 = load i64, ptr %i.aa, align 8, !alias.scope !1182, !noundef !11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1183)
  %i.ab = icmp eq i64 %.val1.i3, 0
  br i1 %i.ab, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i, label %.lr.ph.i.i.i4

.lr.ph.i.i.i4:                                    ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEEEB1i_.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECsfu0rQaTkGUu_12clap_builder.exit.i.i.i
  %.sroa.0.03.i.i.i5 = phi i64 [ %i.ad, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECsfu0rQaTkGUu_12clap_builder.exit.i.i.i ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEEEB1i_.exit ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %.val.i2, i64 %.sroa.0.03.i.i.i5 ; 3 uses
  %i.ad = add nuw nsw i64 %.sroa.0.03.i.i.i5, 1   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1184)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.val2.i.i.i.i6 = load ptr, ptr %i.ae, align 8, !alias.scope !1185, !noalias !1182, !nonnull !11, !noundef !11 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.val3.i.i.i.i = load i64, ptr %i.af, align 8, !alias.scope !1185, !noalias !1182, !noundef !11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1186)
  %i.ag = icmp eq i64 %.val3.i.i.i.i, 0
  br i1 %i.ag, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i7

.lr.ph.i.i.i.i.i.i7:                              ; preds = %.lr.ph.i.i.i4, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i
  %.sroa.0.03.i.i.i.i.i.i8 = phi i64 [ %i.ai, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i4 ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %.val2.i.i.i.i6, i64 %.sroa.0.03.i.i.i.i.i.i8 ; 2 uses
  %i.ai = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i.i8, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1187)
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.ah, align 8, !range !12, !alias.scope !1188, !noalias !1189, !noundef !11 ; 2 uses
  %i.aj = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.aj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i7
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !1188, !noalias !1189, !nonnull !11, !noundef !11
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !1190
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i7
  %i.al = icmp eq i64 %i.ai, %.val3.i.i.i.i
  br i1 %i.al, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i7

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i, %.lr.ph.i.i.i4
  %.val.i.i.i.i9 = load i64, ptr %i.ac, align 8, !range !12, !alias.scope !1185, !noalias !1182, !noundef !11 ; 2 uses
  %i.am = icmp eq i64 %.val.i.i.i.i9, 0
  br i1 %i.am, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i
  %i.an = mul nuw i64 %.val.i.i.i.i9, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i6, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !1189
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECsfu0rQaTkGUu_12clap_builder.exit.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECsfu0rQaTkGUu_12clap_builder.exit.i.i.i: ; preds = %bb.g, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i
  %i.ao = icmp eq i64 %i.ad, %.val1.i3
  br i1 %i.ao, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i, label %.lr.ph.i.i.i4

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECsfu0rQaTkGUu_12clap_builder.exit.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEEEB1i_.exit
  %.val2.i10 = load i64, ptr %i.y, align 8, !range !12, !alias.scope !1182, !noundef !11 ; 2 uses
  %i.ap = icmp eq i64 %.val2.i10, 0
  br i1 %i.ap, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEEECsfu0rQaTkGUu_12clap_builder.exit, label %bb.h

bb.h:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i
  %i.aq = mul nuw i64 %.val2.i10, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i2, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !1182
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEEECsfu0rQaTkGUu_12clap_builder.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEEECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i, %bb.h
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNvXsf_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1R_4SyncEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1193)
  %.val.i = load i64, ptr %0, align 8, !range !12, !alias.scope !1193, !noundef !11 ; 2 uses
  %i.a = icmp eq i64 %.val.i, 0
  br i1 %i.a, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !1193, !nonnull !11, !noundef !11
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !1193
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 73) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !12, !alias.scope !1196, !noundef !11 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 %i.e)
  %i.f = icmp eq i64 %4, 1
  %.sroa.08.0.i = select i1 %i.f, i64 8, i64 4
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1196
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.g, align 8, !alias.scope !1196
  call fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 713) %4) #43, !noalias !1196
  %i.h = load i64, ptr %i.a, align 8, !range !14, !noalias !1196, !noundef !11
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !range !30, !noalias !1196, !noundef !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !1196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1196
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.m, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #46
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !noalias !1196, !nonnull !11, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1196
  store ptr %i.n, ptr %i.g, align 8, !alias.scope !1196
  %i.o = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !1196
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB8_6parserNtB3o_6Parser18did_you_mean_errors_0EReINtB2f_7IterMutNtNtNtBa_7builder7command7CommandEE0Ba_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  tail call void @_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command11__build_self(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %2, i1 noundef zeroext false) #43
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.f = load i64, ptr %i.e, align 8, !noundef !11
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 560
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 568
  %i.k = load i64, ptr %i.j, align 8, !noundef !11 ; 9 uses
  %i.l = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1264
  store i64 0, ptr %i.b, align 8, !noalias !1264
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.o, align 8, !noalias !1264
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.p, align 8, !noalias !1264
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.outer

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.outer: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.outer.backedge, %bb.a
  %.ph = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.bx, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.outer.backedge ] ; 2 uses
  %.ph134 = phi i64 [ 0, %bb.a ], [ %i.by, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.outer.backedge ] ; 14 uses
  %.ph135 = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.bz, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.outer.backedge ] ; 3 uses
  %.sroa.0.0.i.ph = phi ptr [ %i.d, %bb.a ], [ %i.u, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.outer.backedge ]
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.outer, %.thread.i
  %.sroa.0.0.i = phi ptr [ %i.u, %.thread.i ], [ %.sroa.0.0.i.ph, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.outer ]
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i
  %i.s = phi ptr [ %i.u, %bb.c ], [ %.sroa.0.0.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i ] ; 5 uses
  %i.t = icmp eq ptr %i.s, %i.g
  br i1 %i.t, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1268)
  %i.v = load i32, ptr %i.s, align 8, !range !31, !alias.scope !1269, !noalias !1270, !noundef !11
  %i.w = icmp eq i32 %i.v, 1
  br i1 %i.w, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1271
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !1269, !noalias !1270, !nonnull !11, !noundef !11
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !1269, !noalias !1270, !noundef !11
  call void @_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.aa) #43, !noalias !1272
  %i.ab = load i64, ptr %i.a, align 8, !range !13, !noalias !1271, !noundef !11 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ab, -1
  %i.ac = load ptr, ptr %i.q, align 8, !noalias !1271 ; 2 uses
  %i.ad = load i64, ptr %i.r, align 8, !noalias !1271 ; 14 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.e, label %.loopexit136

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i.i.i.i.i.i.i.i = icmp slt i64 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit137, label %bb.f, !prof !21

bb.f:                                             ; preds = %bb.e
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.thread.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !1273
  %i.af = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ad, i64 noundef range(i64 1, 9) 1) #43, !noalias !1273 ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %.loopexit137, label %bb.g

.loopexit137:                                     ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i, %bb.e
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i, i64 %i.ad) #46, !noalias !1272
  unreachable

bb.g:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull align 1 %i.ac, i64 %i.ad, i1 false), !noalias !1272
  br label %.loopexit136

.loopexit136:                                     ; preds = %bb.d, %bb.g
  %.sroa.5.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.af, %bb.g ], [ %i.ac, %bb.d ] ; 6 uses
  %.sroa.01.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ad, %bb.g ], [ %i.ab, %bb.d ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1271
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.i.i.i.i.i.i.i.i) ]
  %i.ah = tail call noundef double @_RNvCsb8lMixXdhIO_6strsim4jaro(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.0.i.i.i.i.i.i.i.i.i, i64 noundef %i.ad) #43, !noalias !1274 ; 3 uses
  %i.ai = fcmp ogt double %i.ah, f0x3FE6666666666666
  br i1 %i.ai, label %bb.m, label %bb.k

.thread.i:                                        ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1271
  %i.aj = tail call noundef double @_RNvCsb8lMixXdhIO_6strsim4jaro(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0) #43, !noalias !1274 ; 2 uses
  %i.ak = fcmp ogt double %i.aj, f0x3FE6666666666666
  br i1 %i.ak, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread44.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i

bb.h:                                             ; preds = %bb.b
  %i.al = load ptr, ptr %i.o, align 8, !noalias !1264, !nonnull !11, !noundef !11 ; 11 uses
  %i.am = load i64, ptr %i.b, align 8, !range !12, !noalias !1264, !noundef !11 ; 2 uses
  %i.an = icmp ult i64 %.ph134, 288230376151711744
  tail call void @llvm.assume(i1 %i.an)
  %.idx.i = shl nuw nsw i64 %.ph134, 5            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.i
  %i.ap = shl i64 %i.am, 5                        ; 6 uses
  %i.aq = udiv i64 %i.ap, 24                      ; 2 uses
  %.not9.i.i.i.i.i.i = icmp eq i64 %.ph134, 0
  br i1 %.not9.i.i.i.i.i.i, label %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.h
  %i.ar = add nsw i64 %.idx.i, -32                ; 2 uses
  %i.as = lshr exact i64 %i.ar, 5
  %i.at = add nuw nsw i64 %i.as, 1
  %xtraiter = and i64 %i.at, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.sroa.4.010.i.i.i.i.i.i.prol = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.al, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.au = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.al, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.010.i.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false), !noalias !1275
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !1238

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.4.010.i.i.i.i.i.i.unr = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.prol ]
  %.unr = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.av, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ay = icmp ult i64 %i.ar, 224
  br i1 %i.ay, label %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.sroa.4.010.i.i.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.4.010.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.az = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.010.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false), !noalias !1275
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false), !noalias !1275
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 72
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 24, i1 false), !noalias !1275
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 72
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 104
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false), !noalias !1275
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 96
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 136
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i64 24, i1 false), !noalias !1275
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 120
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 168
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false), !noalias !1275
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 144
  %i.bm = getelementptr inbounds nuw i8, ptr %i.az, i64 200
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 24, i1 false), !noalias !1275
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 168
  %i.bo = getelementptr inbounds nuw i8, ptr %i.az, i64 256 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.az, i64 232
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i64 24, i1 false), !noalias !1275
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.i.i.i.7 = icmp eq ptr %i.bo, %i.ao
  br i1 %.not.i.i.i.i.i.i.7, label %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.h
  %.sroa.4.0.lcssa.i.i.i.i.i77.i = phi ptr [ %i.al, %bb.h ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.bq, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.am, 0
  %i.br = mul nuw i64 %i.aq, 24                   ; 6 uses
  %i.bs = icmp ne i64 %i.ap, %i.br
  %.sroa.0.0.i.i.i.i = select i1 %.not.i.i.i.i, i1 %i.bs, i1 false
  br i1 %.sroa.0.0.i.i.i.i, label %bb.i, label %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1Y_3map3MapINtNtNtB22_5slice4iter4IterNtNtB8_7mkeymap3KeyENCNvMs4_B3F_NtB3F_7MKeyMap4keys0ENCNCINvB2_17did_you_mean_flagIB2W_IB3d_B1h_ENCNvMs0_NtB6_6parserNtB5k_6Parser18did_you_mean_errors_0EReINtB3f_7IterMutNtNtNtB8_7builder7command7CommandEE00EEB8_.exit

bb.i:                                             ; preds = %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i
  %i.bt = icmp eq i64 %i.ap, 0
  br i1 %i.bt, label %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1Y_3map3MapINtNtNtB22_5slice4iter4IterNtNtB8_7mkeymap3KeyENCNvMs4_B3F_NtB3F_7MKeyMap4keys0ENCNCINvB2_17did_you_mean_flagIB2W_IB3d_B1h_ENCNvMs0_NtB6_6parserNtB5k_6Parser18did_you_mean_errors_0EReINtB3f_7IterMutNtNtNtB8_7builder7command7CommandEE00EEB8_.exit.thread, label %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i

_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i: ; preds = %bb.i
  %i.bu = icmp ule i64 %i.br, %i.ap
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc14___rust_realloc(ptr noundef nonnull %i.al, i64 noundef %i.ap, i64 noundef 8, i64 noundef range(i64 0, -15) %i.br) #43, !noalias !1276 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.j, label %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1Y_3map3MapINtNtNtB22_5slice4iter4IterNtNtB8_7mkeymap3KeyENCNvMs4_B3F_NtB3F_7MKeyMap4keys0ENCNCINvB2_17did_you_mean_flagIB2W_IB3d_B1h_ENCNvMs0_NtB6_6parserNtB5k_6Parser18did_you_mean_errors_0EReINtB3f_7IterMutNtNtNtB8_7builder7command7CommandEE00EEB8_.exit, !prof !33

bb.j:                                             ; preds = %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.br) #46, !noalias !1276
  unreachable

bb.k:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i, %.loopexit136
  %.sroa.01.0.i.i.i.i.i.i.i.i84.i = phi i64 [ %.sroa.01.0.i.i.i.i.i.i.i.i8591101.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i ], [ %.sroa.01.0.i.i.i.i.i.i.i.i.i, %.loopexit136 ] ; 2 uses
  %.sroa.5.0.i.i.i.i.i.i.i.i82.i = phi ptr [ %.sroa.5.0.i.i.i.i.i.i.i.i8392100.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i ], [ %.sroa.5.0.i.i.i.i.i.i.i.i.i, %.loopexit136 ]
  %i.bx = phi ptr [ %i.cw, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i ], [ %.ph, %.loopexit136 ]
  %i.by = phi i64 [ %i.dc, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i ], [ %.ph134, %.loopexit136 ]
  %i.bz = phi ptr [ %i.cw, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i ], [ %.ph135, %.loopexit136 ]
  %i.ca = icmp eq i64 %.sroa.01.0.i.i.i.i.i.i.i.i84.i, 0
  br i1 %i.ca, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.outer.backedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.i.i.i.i.i.i.i.i82.i, i64 noundef %.sroa.01.0.i.i.i.i.i.i.i.i84.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !1277
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.outer.backedge

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.outer.backedge: ; preds = %bb.l, %bb.k
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.outer

bb.m:                                             ; preds = %.loopexit136
  %.not.i.i = icmp slt i64 %i.ad, 0
  br i1 %.not.i.i, label %bb.o, label %bb.n, !prof !1278

bb.n:                                             ; preds = %bb.m
  %i.cb = icmp eq i64 %i.ad, 0
  br i1 %i.cb, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread44.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.n
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !1279
  %i.cc = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ad, i64 noundef range(i64 1, 9) 1) #43, !noalias !1279 ; 3 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.o, label %bb.t

bb.o:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i, %bb.m
  %.sroa.432.0.ph.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %bb.m ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.432.0.ph.i, i64 %i.ad) #46, !noalias !1274
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread44.i: ; preds = %.thread.i, %bb.t, %bb.n
  %i.ce = phi double [ %i.ah, %bb.t ], [ %i.ah, %bb.n ], [ %i.aj, %.thread.i ] ; 3 uses
  %.sroa.01.0.i.i.i.i.i.i.i.i8591101.i = phi i64 [ %.sroa.01.0.i.i.i.i.i.i.i.i.i, %bb.t ], [ %.sroa.01.0.i.i.i.i.i.i.i.i.i, %bb.n ], [ 0, %.thread.i ]
  %.sroa.5.0.i.i.i.i.i.i.i.i8392100.i = phi ptr [ %.sroa.5.0.i.i.i.i.i.i.i.i.i, %bb.t ], [ %.sroa.5.0.i.i.i.i.i.i.i.i.i, %bb.n ], [ inttoptr (i64 1 to ptr), %.thread.i ]
  %i.cf = phi ptr [ %i.cc, %bb.t ], [ inttoptr (i64 1 to ptr), %bb.n ], [ inttoptr (i64 1 to ptr), %.thread.i ]
  switch i64 %.ph134, label %.lr.ph.i.i [
    i64 0, label %bb.p
    i64 1, label %._crit_edge.i.i
  ]

.lr.ph.i.i:                                       ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread44.i, %.lr.ph.i.i
  %.sroa.01.017.i.i = phi i64 [ %i.cm, %.lr.ph.i.i ], [ %.ph134, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread44.i ] ; 2 uses
  %.sroa.05.016.i.i = phi i64 [ %i.cl, %.lr.ph.i.i ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread44.i ] ; 2 uses
  %i.cg = lshr i64 %.sroa.01.017.i.i, 1           ; 2 uses
  %i.ch = add nuw nsw i64 %i.cg, %.sroa.05.016.i.i ; 3 uses
  %i.ci = icmp ult i64 %i.ch, %.ph134
  tail call void @llvm.assume(i1 %i.ci)
  %i.cj = getelementptr inbounds nuw [32 x i8], ptr %.ph135, i64 %i.ch
  %.val12.i.i = load double, ptr %i.cj, align 8, !alias.scope !1280, !noalias !1281, !noundef !11
  %i.ck = fcmp ogt double %.val12.i.i, %i.ce
  %i.cl = select i1 %i.ck, i64 %.sroa.05.016.i.i, i64 %i.ch, !unpredictable !11 ; 2 uses
  %i.cm = sub nuw nsw i64 %.sroa.01.017.i.i, %i.cg ; 2 uses
  %i.cn = icmp ugt i64 %i.cm, 1
  br i1 %i.cn, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread44.i
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread44.i ], [ %i.cl, %.lr.ph.i.i ] ; 2 uses
  %i.co = getelementptr inbounds nuw [32 x i8], ptr %.ph135, i64 %.sroa.05.0.lcssa.i.i
  %.val14.i.i = load double, ptr %i.co, align 8, !alias.scope !1280, !noalias !1281, !noundef !11
  %i.cp = fcmp ule double %.val14.i.i, %i.ce
  %i.cq = zext i1 %i.cp to i64
  %i.cr = add nuw nsw i64 %.sroa.05.0.lcssa.i.i, %i.cq ; 2 uses
  %i.cs = icmp ule i64 %i.cr, %.ph134
  tail call void @llvm.assume(i1 %i.cs)
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread44.i
  %.sroa.4.0.i.i = phi i64 [ %.ph134, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread44.i ], [ %i.cr, %._crit_edge.i.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1282)
  %i.ct = icmp ult i64 %.ph134, 288230376151711744
  tail call void @llvm.assume(i1 %i.ct)
  %i.cu = load i64, ptr %i.b, align 8, !range !12, !alias.scope !1282, !noalias !1283, !noundef !11
  %i.cv = icmp eq i64 %.ph134, %i.cu
  br i1 %i.cv, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTdNtNtB7_6string6StringEE8grow_oneCsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #42, !noalias !1284
  %.pre.i = load ptr, ptr %i.o, align 8, !alias.scope !1282, !noalias !1283
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cw = phi ptr [ %.pre.i, %bb.q ], [ %.ph, %bb.p ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [32 x i8], ptr %i.cw, i64 %.sroa.4.0.i.i ; 6 uses
  %i.cy = icmp samesign ult i64 %.sroa.4.0.i.i, %.ph134
  br i1 %i.cy, label %bb.s, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i

bb.s:                                             ; preds = %bb.r
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.da = sub nuw nsw i64 %.ph134, %.sroa.4.0.i.i
  %i.db = shl nuw nsw i64 %i.da, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cz, ptr nonnull align 8 %i.cx, i64 %i.db, i1 false), !noalias !1285
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i: ; preds = %bb.s, %bb.r
  store double %i.ce, ptr %i.cx, align 8, !noalias !1286
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i64 %i.ad, ptr %.sroa.424.0..sroa_idx.i, align 8, !noalias !1286
  %.sroa.525.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store ptr %i.cf, ptr %.sroa.525.0..sroa_idx.i, align 8, !noalias !1286
  %.sroa.6.0..sroa_idx26.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  store i64 %i.ad, ptr %.sroa.6.0..sroa_idx26.i, align 8, !noalias !1286
  %i.dc = add nuw nsw i64 %.ph134, 1              ; 2 uses
  store i64 %i.dc, ptr %i.p, align 8, !alias.scope !1282, !noalias !1283
  br label %bb.k

bb.t:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cc, ptr nonnull align 1 %.sroa.5.0.i.i.i.i.i.i.i.i.i, i64 %i.ad, i1 false), !noalias !1274
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread44.i

_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1Y_3map3MapINtNtNtB22_5slice4iter4IterNtNtB8_7mkeymap3KeyENCNvMs4_B3F_NtB3F_7MKeyMap4keys0ENCNCINvB2_17did_you_mean_flagIB2W_IB3d_B1h_ENCNvMs0_NtB6_6parserNtB5k_6Parser18did_you_mean_errors_0EReINtB3f_7IterMutNtNtNtB8_7builder7command7CommandEE00EEB8_.exit: ; preds = %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i
  %.sroa.04.0.i.i.i = phi ptr [ %i.al, %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i ], [ %i.bv, %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1264
  %i.dd = icmp eq ptr %.sroa.4.0.lcssa.i.i.i.i.i77.i, %i.al
  br i1 %i.dd, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i, label %bb.v

_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1Y_3map3MapINtNtNtB22_5slice4iter4IterNtNtB8_7mkeymap3KeyENCNvMs4_B3F_NtB3F_7MKeyMap4keys0ENCNCINvB2_17did_you_mean_flagIB2W_IB3d_B1h_ENCNvMs0_NtB6_6parserNtB5k_6Parser18did_you_mean_errors_0EReINtB3f_7IterMutNtNtNtB8_7builder7command7CommandEE00EEB8_.exit.thread: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1264
  %i.de = icmp eq ptr %.sroa.4.0.lcssa.i.i.i.i.i77.i, %i.al
  br i1 %i.de, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.thread, label %bb.v

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.thread: ; preds = %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1Y_3map3MapINtNtNtB22_5slice4iter4IterNtNtB8_7mkeymap3KeyENCNvMs4_B3F_NtB3F_7MKeyMap4keys0ENCNCINvB2_17did_you_mean_flagIB2W_IB3d_B1h_ENCNvMs0_NtB6_6parserNtB5k_6Parser18did_you_mean_errors_0EReINtB3f_7IterMutNtNtNtB8_7builder7command7CommandEE00EEB8_.exit.thread
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %i.df, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i: ; preds = %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1Y_3map3MapINtNtNtB22_5slice4iter4IterNtNtB8_7mkeymap3KeyENCNvMs4_B3F_NtB3F_7MKeyMap4keys0ENCNCINvB2_17did_you_mean_flagIB2W_IB3d_B1h_ENCNvMs0_NtB6_6parserNtB5k_6Parser18did_you_mean_errors_0EReINtB3f_7IterMutNtNtNtB8_7builder7command7CommandEE00EEB8_.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %i.dg, align 8
  %i.dh = icmp eq i64 %i.ap, 0
  br i1 %i.dh, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit, label %bb.u

bb.u:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.04.0.i.i.i, i64 noundef %i.br, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !1287
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit

bb.v:                                             ; preds = %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1Y_3map3MapINtNtNtB22_5slice4iter4IterNtNtB8_7mkeymap3KeyENCNvMs4_B3F_NtB3F_7MKeyMap4keys0ENCNCINvB2_17did_you_mean_flagIB2W_IB3d_B1h_ENCNvMs0_NtB6_6parserNtB5k_6Parser18did_you_mean_errors_0EReINtB3f_7IterMutNtNtNtB8_7builder7command7CommandEE00EEB8_.exit.thread, %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1Y_3map3MapINtNtNtB22_5slice4iter4IterNtNtB8_7mkeymap3KeyENCNvMs4_B3F_NtB3F_7MKeyMap4keys0ENCNCINvB2_17did_you_mean_flagIB2W_IB3d_B1h_ENCNvMs0_NtB6_6parserNtB5k_6Parser18did_you_mean_errors_0EReINtB3f_7IterMutNtNtNtB8_7builder7command7CommandEE00EEB8_.exit
  %.sroa.04.0.i.i.i111 = phi ptr [ inttoptr (i64 8 to ptr), %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1Y_3map3MapINtNtNtB22_5slice4iter4IterNtNtB8_7mkeymap3KeyENCNvMs4_B3F_NtB3F_7MKeyMap4keys0ENCNCINvB2_17did_you_mean_flagIB2W_IB3d_B1h_ENCNvMs0_NtB6_6parserNtB5k_6Parser18did_you_mean_errors_0EReINtB3f_7IterMutNtNtNtB8_7builder7command7CommandEE00EEB8_.exit.thread ], [ %.sroa.04.0.i.i.i, %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1Y_3map3MapINtNtNtB22_5slice4iter4IterNtNtB8_7mkeymap3KeyENCNvMs4_B3F_NtB3F_7MKeyMap4keys0ENCNCINvB2_17did_you_mean_flagIB2W_IB3d_B1h_ENCNvMs0_NtB6_6parserNtB5k_6Parser18did_you_mean_errors_0EReINtB3f_7IterMutNtNtNtB8_7builder7command7CommandEE00EEB8_.exit ] ; 3 uses
  %i.di = ptrtoint ptr %.sroa.4.0.lcssa.i.i.i.i.i77.i to i64
  %i.dj = ptrtoint ptr %i.al to i64
  %i.dk = sub nuw i64 %i.di, %i.dj                ; 2 uses
  %i.dl = udiv exact i64 %i.dk, 24
  %i.dm = add nsw i64 %i.dl, -1                   ; 4 uses
  %i.dn = icmp samesign ult i64 %i.dm, %i.aq
  tail call void @llvm.assume(i1 %i.dn)
  %i.do = icmp ult i64 %i.dk, -9223372036854775768
  tail call void @llvm.assume(i1 %i.do)
  %i.dp = getelementptr inbounds nuw [24 x i8], ptr %.sroa.04.0.i.i.i111, i64 %i.dm ; 3 uses
  %.sroa.053.0.copyload = load i64, ptr %i.dp, align 8 ; 3 uses
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.sroa.454.0.copyload = load ptr, ptr %.sroa.454.0..sroa_idx, align 8 ; 3 uses
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %.sroa.555.0.copyload = load i64, ptr %.sroa.555.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1288)
  %i.dq = icmp eq i64 %i.dm, 0
  br i1 %i.dq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit25, label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %bb.v, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i22
  %.sroa.0.03.i.i.i19 = phi i64 [ %i.ds, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i22 ], [ 0, %bb.v ] ; 2 uses
  %i.dr = getelementptr inbounds nuw [24 x i8], ptr %.sroa.04.0.i.i.i111, i64 %.sroa.0.03.i.i.i19 ; 2 uses
  %i.ds = add nuw nsw i64 %.sroa.0.03.i.i.i19, 1  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1289)
  %.val.i.i.i.i20 = load i64, ptr %i.dr, align 8, !range !12, !alias.scope !1290, !noalias !1291, !noundef !11 ; 2 uses
  %i.dt = icmp eq i64 %.val.i.i.i.i20, 0
  br i1 %i.dt, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i22, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i18
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.val1.i.i.i.i21 = load ptr, ptr %i.du, align 8, !alias.scope !1290, !noalias !1291, !nonnull !11, !noundef !11
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i21, i64 noundef %.val.i.i.i.i20, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !1292
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i22

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i22: ; preds = %bb.w, %.lr.ph.i.i.i18
  %i.dv = icmp eq i64 %i.ds, %i.dm
  br i1 %i.dv, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit25, label %.lr.ph.i.i.i18

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit25: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i22, %bb.v
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.04.0.i.i.i111, i64 noundef %i.br, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !1291
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !nonnull !11, !align !17, !noundef !11 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dz = load i64, ptr %i.dy, align 8, !noundef !11 ; 3 uses
  %.idx = shl nuw nsw i64 %i.dz, 4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 %.idx
  %i.eb = icmp eq i64 %i.dz, 0
  br i1 %i.eb, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit25, %_RNCNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1z_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtBa_6parserNtB3q_6Parser18did_you_mean_errors_0EReINtB2h_7IterMutNtNtNtBc_7builder7command7CommandEE0s_0Bc_.exit.thread.i
  %.sroa.02.010.i = phi i64 [ %i.eh, %_RNCNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1z_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtBa_6parserNtB3q_6Parser18did_you_mean_errors_0EReINtB2h_7IterMutNtNtNtBc_7builder7command7CommandEE0s_0Bc_.exit.thread.i ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit25 ] ; 3 uses
  %i.ec = phi ptr [ %i.ed, %_RNCNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1z_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtBa_6parserNtB3q_6Parser18did_you_mean_errors_0EReINtB2h_7IterMutNtNtNtBc_7builder7command7CommandEE0s_0Bc_.exit.thread.i ], [ %i.dx, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit25 ] ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 2 uses
  %i.ee = getelementptr i8, ptr %i.ec, i64 8
  %.val7.i = load i64, ptr %i.ee, align 8, !noalias !1293, !noundef !11
  %i.ef = icmp eq i64 %.val7.i, %i.k
  br i1 %i.ef, label %_RNCNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1z_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtBa_6parserNtB3q_6Parser18did_you_mean_errors_0EReINtB2h_7IterMutNtNtNtBc_7builder7command7CommandEE0s_0Bc_.exit.i, label %_RNCNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1z_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtBa_6parserNtB3q_6Parser18did_you_mean_errors_0EReINtB2h_7IterMutNtNtNtBc_7builder7command7CommandEE0s_0Bc_.exit.thread.i

_RNCNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1z_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtBa_6parserNtB3q_6Parser18did_you_mean_errors_0EReINtB2h_7IterMutNtNtNtBc_7builder7command7CommandEE0s_0Bc_.exit.i: ; preds = %.lr.ph.i
  %.val6.i = load ptr, ptr %i.ec, align 8, !noalias !1293, !nonnull !11, !noundef !11
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val6.i, ptr nonnull %i.i, i64 %i.k), !noalias !1293
  %i.eg = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.eg, label %bb.x, label %_RNCNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1z_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtBa_6parserNtB3q_6Parser18did_you_mean_errors_0EReINtB2h_7IterMutNtNtNtBc_7builder7command7CommandEE0s_0Bc_.exit.thread.i

_RNCNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1z_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtBa_6parserNtB3q_6Parser18did_you_mean_errors_0EReINtB2h_7IterMutNtNtNtBc_7builder7command7CommandEE0s_0Bc_.exit.thread.i: ; preds = %_RNCNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1z_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtBa_6parserNtB3q_6Parser18did_you_mean_errors_0EReINtB2h_7IterMutNtNtNtBc_7builder7command7CommandEE0s_0Bc_.exit.i, %.lr.ph.i
  %i.eh = add nuw nsw i64 %.sroa.02.010.i, 1
  %i.ei = icmp eq ptr %i.ed, %i.ea
  br i1 %i.ei, label %.loopexit, label %.lr.ph.i

bb.x:                                             ; preds = %_RNCNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1z_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtBa_6parserNtB3q_6Parser18did_you_mean_errors_0EReINtB2h_7IterMutNtNtNtBc_7builder7command7CommandEE0s_0Bc_.exit.i
  %i.ej = icmp ult i64 %.sroa.02.010.i, %i.dz
  tail call void @llvm.assume(i1 %i.ej)
  %.not.i = icmp slt i64 %i.k, 0
  br i1 %.not.i, label %bb.aa, label %bb.y, !prof !21

bb.y:                                             ; preds = %bb.x
  %i.ek = icmp eq i64 %i.k, 0
  br i1 %i.ek, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread66, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.y
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !1294
  %i.el = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.k, i64 noundef range(i64 1, 9) 1) #43, !noalias !1294 ; 3 uses
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %bb.aa, label %bb.ab

.loopexit:                                        ; preds = %_RNCNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1z_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtBa_6parserNtB3q_6Parser18did_you_mean_errors_0EReINtB2h_7IterMutNtNtNtBc_7builder7command7CommandEE0s_0Bc_.exit.thread.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit25
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %i.en, align 8
  %i.eo = icmp eq i64 %.sroa.053.0.copyload, 0
  br i1 %i.eo, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit, label %bb.z

bb.z:                                             ; preds = %.loopexit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.454.0.copyload) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.454.0.copyload, i64 noundef %.sroa.053.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !1295
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.thread, %bb.z, %.loopexit, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i, %bb.u, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread66
  ret void

bb.aa:                                            ; preds = %bb.x, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i
  %.sroa.457.0.ph = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.x ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.457.0.ph, i64 %i.k) #46
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread66: ; preds = %bb.y, %bb.ab
  %i.ep = phi ptr [ %i.el, %bb.ab ], [ inttoptr (i64 1 to ptr), %bb.y ]
  store i64 %.sroa.02.010.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.053.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.0.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.454.0.copyload, ptr %.sroa.4.sroa.0.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.0.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.555.0.copyload, ptr %.sroa.4.sroa.0.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.k, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ep, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.k, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit

bb.ab:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.el, ptr nonnull align 1 %i.i, i64 %i.k, i1 false)
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread66
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef align 8 ptr @_RNCINvNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtBc_3map3MapINtNtNtBg_5slice4iter4IterTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB2V_4util2id2IdEENCNCNvMNtNtB2V_6parser9validatorNtB4s_9Validator24build_conflict_err_usages3_00EuINtNtNtBg_3ops12control_flow11ControlFlowRB3Y_ENCINvNvB1j_4find5checkB6j_QNCB4p_s4_0E0E0B2V_(ptr nofree readonly captures(none) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1322)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1323, !noalias !1324, !nonnull !11, !noundef !11 ; 3 uses
  %.promoted.i.i = load ptr, ptr %0, align 8, !alias.scope !1323, !noalias !1324 ; 5 uses
  %i.c = icmp eq ptr %.promoted.i.i, %i.b
  br i1 %i.c, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB1u_4util2id2IdEENCNCNvMNtNtB1u_6parser9validatorNtB31_9Validator24build_conflict_err_usages3_00ENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvB4c_4find5checkRB2x_QNCB2Y_s4_0E0INtNtNtBc_3ops12control_flow11ControlFlowB5h_EEB1u_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.d = load ptr, ptr %.0.val, align 8, !alias.scope !1325, !noalias !1326, !nonnull !11, !align !17, !noundef !11 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !noalias !1327, !nonnull !11, !noundef !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noalias !1327, !noundef !11 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.h, 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.h, 0
  %i.j = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i
  %i.l = load ptr, ptr %i.j, align 8, !alias.scope !1325, !noalias !1326, !nonnull !11, !align !17, !noundef !11 ; 2 uses
  %i.m = load i64, ptr %i.k, align 8, !alias.scope !1325, !noalias !1326, !noundef !11 ; 2 uses
  %.idx.i4.i.i.i.i.i.us.i.i = shl nuw nsw i64 %i.m, 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i4.i.i.i.i.i.us.i.i
  %.not.i.i5.i.i.i.i.i.us.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i5.i.i.i.i.i.us.i.i, label %.loopexit.i.i.i.i.i.us.us.i.i, label %.loopexit.i.i.i.i.i.us.i.i

.loopexit.i.i.i.i.i.us.us.i.i:                    ; preds = %.lr.ph.split.us.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.promoted.i.i, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1330)
end_hunk_0
begin_hunk_1_@_RNvMNtCs9ma7mAhtjN1_8anstream4autoINtB2_10AutoStreamNtNtNtCsaKJjC64KgbL_3std2io5stdio10StdoutLockE3newCsfu0rQaTkGUu_12clap_builder:bb.a
  %i.c = load ptr, ptr %i.a, align 8, !noalias !1361, !nonnull !11, !align !17, !noundef !11
  call fastcc void @_RNvMNtCs9ma7mAhtjN1_8anstream4autoINtB2_10AutoStreamNtNtNtCsaKJjC64KgbL_3std2io5stdio10StdoutLockE3newCsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull align 8 %i.c, i8 noundef %i.b) #45, !inline_history !1360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @isatty(i32 noundef 1) #43 ; 0 uses
  store ptr %1, ptr %0, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 -1, ptr %.sroa.413.0..sroa_idx, align 4
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @isatty(i32 noundef 1) #43 ; 0 uses
  store ptr %1, ptr %0, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 -1, ptr %.sroa.49.0..sroa_idx, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.42.sroa.4.0..sroa.42.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 0, ptr %.sroa.42.sroa.4.0..sroa.42.0..sroa_idx.sroa_idx, align 4
  %.sroa.42.sroa.6.0..sroa.42.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 12, ptr %.sroa.42.sroa.6.0..sroa.42.0..sroa_idx.sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error12invalid_utf8B4_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(712) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !1364
  %i.b = tail call noundef align 8 dereferenceable_or_null(256) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 256, i64 noundef range(i64 1, 9) 8) #43, !noalias !1364 ; 46 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !prof !33

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 256) #46, !noalias !1364
  unreachable

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i64 2, ptr %i.b, align 8
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 0, ptr %.sroa.460.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.8.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx61, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.0..sroa_idx63, align 8
  %.sroa.9.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i64 0, ptr %.sroa.9.0..sroa_idx64, align 8
  %.sroa.10.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 -2, ptr %.sroa.10.0..sroa_idx65, align 8
  %.sroa.1167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr null, ptr %.sroa.1167.0..sroa_idx, align 8
  %.sroa.1269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i8 -1, ptr %.sroa.1269.0..sroa_idx, align 8
  %.sroa.1370.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  store i8 -1, ptr %.sroa.1370.0..sroa_idx, align 4
  %.sroa.1472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store i8 -1, ptr %.sroa.1472.0..sroa_idx, align 8
  %.sroa.1574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  store i16 0, ptr %.sroa.1574.0..sroa_idx, align 4
  %.sroa.16.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %i.b, i64 134
  store i8 -1, ptr %.sroa.16.0..sroa_idx75, align 2
  %.sroa.1777.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 138
  store i8 -1, ptr %.sroa.1777.0..sroa_idx, align 2
  %.sroa.1879.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 142
  store i8 -1, ptr %.sroa.1879.0..sroa_idx, align 2
  %.sroa.1981.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 146
  store i16 0, ptr %.sroa.1981.0..sroa_idx, align 2
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  store i8 -1, ptr %.sroa.20.0..sroa_idx, align 4
  %.sroa.2182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store i8 -1, ptr %.sroa.2182.0..sroa_idx, align 8
  %.sroa.2283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 156
  store i8 -1, ptr %.sroa.2283.0..sroa_idx, align 4
  %.sroa.2384.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i16 0, ptr %.sroa.2384.0..sroa_idx, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 162
  store i8 -1, ptr %.sroa.24.0..sroa_idx, align 2
  %.sroa.2585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 166
  store i8 -1, ptr %.sroa.2585.0..sroa_idx, align 2
  %.sroa.2686.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 170
  store i8 -1, ptr %.sroa.2686.0..sroa_idx, align 2
  %.sroa.2787.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 174
  store i16 0, ptr %.sroa.2787.0..sroa_idx, align 2
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store i8 -1, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.2988.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 180
  store i8 -1, ptr %.sroa.2988.0..sroa_idx, align 4
  %.sroa.3089.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store i8 -1, ptr %.sroa.3089.0..sroa_idx, align 8
  %.sroa.3190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 188
  store i16 0, ptr %.sroa.3190.0..sroa_idx, align 4
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 190
  store i8 -1, ptr %.sroa.32.0..sroa_idx, align 2
  %.sroa.3391.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 194
  store i8 -1, ptr %.sroa.3391.0..sroa_idx, align 2
  %.sroa.3492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 198
  store i8 -1, ptr %.sroa.3492.0..sroa_idx, align 2
  %.sroa.3593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 202
  store i16 0, ptr %.sroa.3593.0..sroa_idx, align 2
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 204
  store i8 -1, ptr %.sroa.36.0..sroa_idx, align 4
  %.sroa.3794.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  store i8 -1, ptr %.sroa.3794.0..sroa_idx, align 8
  %.sroa.3895.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 212
  store i8 -1, ptr %.sroa.3895.0..sroa_idx, align 4
  %.sroa.3996.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  store i16 0, ptr %.sroa.3996.0..sroa_idx, align 8
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 218
  store i8 -1, ptr %.sroa.40.0..sroa_idx, align 2
  %.sroa.4197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 222
  store i8 -1, ptr %.sroa.4197.0..sroa_idx, align 2
  %.sroa.4298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 226
  store i8 -1, ptr %.sroa.4298.0..sroa_idx, align 2
  %.sroa.4399.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 230
  store i16 0, ptr %.sroa.4399.0..sroa_idx, align 2
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  store i8 -2, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.45100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 246
  store <4 x i8> <i8 0, i8 2, i8 2, i8 11>, ptr %.sroa.45100.0..sroa_idx, align 2
  %i.d = tail call fastcc noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error8with_cmdB4_(ptr noalias noundef nonnull align 8 %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %0) #43 ; 0 uses
  %i.e = load i64, ptr %1, align 8, !range !13, !noundef !11
  %.not = icmp eq i64 %i.e, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 4, ptr %i.a, align 8
  %i.g = call noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error24insert_context_uncheckedB4_(ptr noalias noundef nonnull align 8 %i.b, i8 noundef 15, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a) #42 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit
  ret ptr %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error13invalid_valueB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(712) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 384307168202282326) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.412 = alloca [31 x i8], align 1          ; 2 uses
  %.sroa.48 = alloca [31 x i8], align 1           ; 2 uses
  %i.d = alloca [120 x i8], align 8               ; 14 uses
  %.sroa.6 = alloca [16 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !11, !noundef !11
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !11
  %.idx = mul nuw nsw i64 %3, 24                  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1420
  store i64 0, ptr %i.b, align 8, !noalias !1420
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.j, align 8, !noalias !1420
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.k, align 8, !noalias !1420
  %i.l = icmp eq i64 %3, 0                        ; 2 uses
  br i1 %i.l, label %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterB1i_EEB8_.exit.thread, label %.lr.ph.i

_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterB1i_EEB8_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1420
  br label %.thread

.lr.ph.i:                                         ; preds = %bb.a, %bb.d
  %i.m = phi ptr [ %i.be, %bb.d ], [ inttoptr (i64 8 to ptr), %bb.a ] ; 2 uses
  %i.n = phi i64 [ %i.bf, %bb.d ], [ 0, %bb.a ]   ; 11 uses
  %i.o = phi ptr [ %i.bg, %bb.d ], [ inttoptr (i64 8 to ptr), %bb.a ] ; 3 uses
  %.sroa.0.047.i = phi ptr [ %i.p, %bb.d ], [ %2, %bb.a ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.047.i, i64 24 ; 2 uses
  %i.q = getelementptr i8, ptr %.sroa.0.047.i, i64 8
  %.val.i.i = load ptr, ptr %i.q, align 8, !noalias !1420, !nonnull !11, !noundef !11 ; 2 uses
  %i.r = getelementptr i8, ptr %.sroa.0.047.i, i64 16
  %.val1.i.i = load i64, ptr %i.r, align 8, !noalias !1420, !noundef !11 ; 8 uses
  %i.s = tail call noundef double @_RNvCsb8lMixXdhIO_6strsim4jaro(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i) #43, !noalias !1421 ; 4 uses
  %i.t = fcmp ogt double %i.s, f0x3FE6666666666666
  br i1 %i.t, label %bb.e, label %bb.d

._crit_edge.i:                                    ; preds = %bb.d
  %.pre50.i = load ptr, ptr %i.j, align 8, !noalias !1420 ; 10 uses
  %.pre51.i = load i64, ptr %i.b, align 8, !range !12, !noalias !1420 ; 2 uses
  %i.u = icmp ult i64 %i.bf, 288230376151711744
  tail call void @llvm.assume(i1 %i.u)
  %.idx.i = shl nuw nsw i64 %i.bf, 5              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.pre50.i, i64 %.idx.i
  %i.w = shl i64 %.pre51.i, 5                     ; 5 uses
  %i.x = udiv i64 %i.w, 24                        ; 5 uses
  %.not9.i.i.i.i.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not9.i.i.i.i.i.i, label %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %._crit_edge.i
  %i.y = add nsw i64 %.idx.i, -32                 ; 2 uses
  %i.z = lshr exact i64 %i.y, 5
  %i.aa = add nuw nsw i64 %i.z, 1
  %xtraiter = and i64 %i.aa, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.sroa.4.010.i.i.i.i.i.i.prol = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i.prol ], [ %.pre50.i, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.ab = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i.prol ], [ %.pre50.i, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.010.i.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !noalias !1422
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !1380

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.4.010.i.i.i.i.i.i.unr = phi ptr [ %.pre50.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.prol ]
  %.unr = phi ptr [ %.pre50.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.af = icmp ult i64 %i.y, 224
  br i1 %i.af, label %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.sroa.4.010.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.4.010.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.ag = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.010.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !noalias !1422
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false), !noalias !1422
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !noalias !1422
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 104
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false), !noalias !1422
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 96
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 136
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false), !noalias !1422
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 120
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 168
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false), !noalias !1422
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 144
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 200
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false), !noalias !1422
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 168
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 256 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 232
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false), !noalias !1422
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.i.i.i.7 = icmp eq ptr %i.av, %i.v
  br i1 %.not.i.i.i.i.i.i.7, label %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %._crit_edge.i
  %.sroa.4.0.lcssa.i.i.i.i.i.i170 = phi ptr [ %.pre50.i, %._crit_edge.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.ax, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i = icmp ne i64 %.pre51.i, 0
  %i.ay = mul nuw i64 %i.x, 24                    ; 4 uses
  %i.az = icmp ne i64 %i.w, %i.ay
  %.sroa.0.0.i.i.i.i = select i1 %.not.i.i.i.i, i1 %i.az, i1 false
  br i1 %.sroa.0.0.i.i.i.i, label %bb.b, label %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterB1i_EEB8_.exit

bb.b:                                             ; preds = %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i
  %i.ba = icmp eq i64 %i.w, 0
  br i1 %i.ba, label %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterB1i_EEB8_.exit, label %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i

_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i: ; preds = %bb.b
  %i.bb = icmp ule i64 %i.ay, %i.w
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc14___rust_realloc(ptr noundef nonnull %.pre50.i, i64 noundef %i.w, i64 noundef 8, i64 noundef range(i64 0, -15) %i.ay) #43, !noalias !1423 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.c, label %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterB1i_EEB8_.exit, !prof !33

bb.c:                                             ; preds = %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.ay) #46, !noalias !1423
  unreachable

bb.d:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i, %.lr.ph.i
  %i.be = phi ptr [ %i.cc, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i ], [ %i.m, %.lr.ph.i ]
  %i.bf = phi i64 [ %i.ci, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i ], [ %i.n, %.lr.ph.i ] ; 4 uses
  %i.bg = phi ptr [ %i.cc, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i ], [ %i.o, %.lr.ph.i ]
  %i.bh = icmp eq ptr %i.p, %i.i
  br i1 %i.bh, label %._crit_edge.i, label %.lr.ph.i

bb.e:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp slt i64 %.val1.i.i, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f, !prof !21

bb.f:                                             ; preds = %bb.e
  %i.bi = icmp eq i64 %.val1.i.i, 0
  br i1 %i.bi, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread39.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.f
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !1424
  %i.bj = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val1.i.i, i64 noundef range(i64 1, 9) 1) #43, !noalias !1424 ; 3 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.g, label %bb.l

bb.g:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i, %bb.e
  %.sroa.429.0.ph.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %bb.e ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.429.0.ph.i, i64 %.val1.i.i) #46, !noalias !1421
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread39.i: ; preds = %bb.l, %bb.f
  %i.bl = phi ptr [ %i.bj, %bb.l ], [ inttoptr (i64 1 to ptr), %bb.f ]
  switch i64 %i.n, label %.lr.ph.i.i [
    i64 0, label %bb.h
    i64 1, label %._crit_edge.i.i
  ]

.lr.ph.i.i:                                       ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread39.i, %.lr.ph.i.i
  %.sroa.01.017.i.i = phi i64 [ %i.bs, %.lr.ph.i.i ], [ %i.n, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread39.i ] ; 2 uses
  %.sroa.05.016.i.i = phi i64 [ %i.br, %.lr.ph.i.i ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread39.i ] ; 2 uses
  %i.bm = lshr i64 %.sroa.01.017.i.i, 1           ; 2 uses
  %i.bn = add nuw nsw i64 %i.bm, %.sroa.05.016.i.i ; 3 uses
  %i.bo = icmp ult i64 %i.bn, %i.n
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.bn
  %.val12.i.i = load double, ptr %i.bp, align 8, !alias.scope !1425, !noalias !1426, !noundef !11
  %i.bq = fcmp ogt double %.val12.i.i, %i.s
  %i.br = select i1 %i.bq, i64 %.sroa.05.016.i.i, i64 %i.bn, !unpredictable !11 ; 2 uses
  %i.bs = sub nuw nsw i64 %.sroa.01.017.i.i, %i.bm ; 2 uses
  %i.bt = icmp ugt i64 %i.bs, 1
  br i1 %i.bt, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread39.i
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread39.i ], [ %i.br, %.lr.ph.i.i ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.05.0.lcssa.i.i
  %.val14.i.i = load double, ptr %i.bu, align 8, !alias.scope !1425, !noalias !1426, !noundef !11
  %i.bv = fcmp ule double %.val14.i.i, %i.s
  %i.bw = zext i1 %i.bv to i64
  %i.bx = add nuw nsw i64 %.sroa.05.0.lcssa.i.i, %i.bw ; 2 uses
  %i.by = icmp ule i64 %i.bx, %i.n
  tail call void @llvm.assume(i1 %i.by)
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread39.i
  %.sroa.4.0.i.i = phi i64 [ %i.n, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread39.i ], [ %i.bx, %._crit_edge.i.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1427)
  %i.bz = icmp ult i64 %i.n, 288230376151711744
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = load i64, ptr %i.b, align 8, !range !12, !alias.scope !1427, !noalias !1428, !noundef !11
  %i.cb = icmp eq i64 %i.n, %i.ca
  br i1 %i.cb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTdNtNtB7_6string6StringEE8grow_oneCsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #42, !noalias !1429
  %.pre.i = load ptr, ptr %i.j, align 8, !alias.scope !1427, !noalias !1428
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.cc = phi ptr [ %.pre.i, %bb.i ], [ %i.m, %bb.h ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [32 x i8], ptr %i.cc, i64 %.sroa.4.0.i.i ; 6 uses
  %i.ce = icmp samesign ult i64 %.sroa.4.0.i.i, %i.n
  br i1 %i.ce, label %bb.k, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i

bb.k:                                             ; preds = %bb.j
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cg = sub nuw nsw i64 %i.n, %.sroa.4.0.i.i
  %i.ch = shl nuw nsw i64 %i.cg, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cf, ptr nonnull align 8 %i.cd, i64 %i.ch, i1 false), !noalias !1430
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i: ; preds = %bb.k, %bb.j
  store double %i.s, ptr %i.cd, align 8, !noalias !1431
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i64 %.val1.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1431
  %.sroa.523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store ptr %i.bl, ptr %.sroa.523.0..sroa_idx.i, align 8, !noalias !1431
  %.sroa.6.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store i64 %.val1.i.i, ptr %.sroa.6.0..sroa_idx24.i, align 8, !noalias !1431
  %i.ci = add nuw nsw i64 %i.n, 1                 ; 2 uses
  store i64 %i.ci, ptr %i.k, align 8, !alias.scope !1427, !noalias !1428
  br label %bb.d

bb.l:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr nonnull align 1 %.val.i.i, i64 %.val1.i.i, i1 false), !noalias !1421
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread39.i

_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterB1i_EEB8_.exit: ; preds = %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, %bb.b, %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i
  %.sroa.04.0.i.i.i = phi ptr [ %.pre50.i, %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i ], [ %i.bc, %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i ], [ inttoptr (i64 8 to ptr), %bb.b ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1420
  %i.cj = icmp eq ptr %.sroa.4.0.lcssa.i.i.i.i.i.i170, %.pre50.i
  br i1 %i.cj, label %.thread, label %bb.m

.thread:                                          ; preds = %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterB1i_EEB8_.exit.thread, %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterB1i_EEB8_.exit
  %.sroa.04.0.i.i.i175 = phi ptr [ inttoptr (i64 8 to ptr), %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterB1i_EEB8_.exit.thread ], [ %.sroa.04.0.i.i.i, %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterB1i_EEB8_.exit ] ; 2 uses
  %i.ck = phi i64 [ 0, %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterB1i_EEB8_.exit.thread ], [ %i.x, %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterB1i_EEB8_.exit ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.i.i.i175) ]
  br label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i

bb.m:                                             ; preds = %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterB1i_EEB8_.exit
  %i.cl = ptrtoint ptr %.sroa.4.0.lcssa.i.i.i.i.i.i170 to i64
  %i.cm = ptrtoint ptr %.pre50.i to i64
  %i.cn = sub nuw i64 %i.cl, %i.cm                ; 2 uses
  %i.co = udiv exact i64 %i.cn, 24
  %i.cp = add nsw i64 %i.co, -1                   ; 4 uses
  %i.cq = icmp samesign ult i64 %i.cp, %i.x
  tail call void @llvm.assume(i1 %i.cq)
  %i.cr = icmp ult i64 %i.cn, -9223372036854775768
  tail call void @llvm.assume(i1 %i.cr)
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %.sroa.04.0.i.i.i, i64 %i.cp ; 2 uses
  %.sroa.025.0.copyload = load i64, ptr %i.cs, align 8 ; 2 uses
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.426.0..sroa_idx, i64 16, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.i.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1432)
  %i.ct = icmp eq i64 %i.cp, 0
  br i1 %i.ct, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i
  %.sroa.0.03.i.i.i = phi i64 [ %i.cv, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i ], [ 0, %bb.m ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %.sroa.04.0.i.i.i, i64 %.sroa.0.03.i.i.i ; 2 uses
  %i.cv = add nuw nsw i64 %.sroa.0.03.i.i.i, 1    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1433)
  %.val.i.i.i.i87 = load i64, ptr %i.cu, align 8, !range !12, !alias.scope !1434, !noalias !1435, !noundef !11 ; 2 uses
  %i.cw = icmp eq i64 %.val.i.i.i.i87, 0
  br i1 %i.cw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.cx, align 8, !alias.scope !1434, !noalias !1435, !nonnull !11, !noundef !11
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i87, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !1436
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i: ; preds = %bb.n, %.lr.ph.i.i.i
  %i.cy = icmp eq i64 %i.cv, %i.cp
  br i1 %i.cy, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i, label %.lr.ph.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i, %.thread
  %.sroa.04.0.i.i.i173 = phi ptr [ %.sroa.04.0.i.i.i175, %.thread ], [ %.sroa.04.0.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i ]
  %i.cz = phi i64 [ %i.ck, %.thread ], [ %i.x, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i ] ; 2 uses
  %.sroa.03.0142 = phi i64 [ -1, %.thread ], [ %.sroa.025.0.copyload, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i ] ; 2 uses
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.thread

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.thread: ; preds = %bb.m, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i
  %.sroa.04.0.i.i.i174 = phi ptr [ %.sroa.04.0.i.i.i173, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i ], [ %.sroa.04.0.i.i.i, %bb.m ]
  %i.db = phi i64 [ %i.cz, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i ], [ %i.x, %bb.m ]
  %.sroa.03.0142144 = phi i64 [ %.sroa.03.0142, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i ], [ %.sroa.025.0.copyload, %bb.m ]
  %i.dc = mul nuw i64 %i.db, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.04.0.i.i.i174, i64 noundef %i.dc, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !1435
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.thread
  %.sroa.03.0142145 = phi i64 [ %.sroa.03.0142, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i ], [ %.sroa.03.0142144, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.thread ] ; 2 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !1437
  %i.dd = tail call noundef align 8 dereferenceable_or_null(256) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 256, i64 noundef range(i64 1, 9) 8) #43, !noalias !1437 ; 47 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %bb.o, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !prof !33

bb.o:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 256) #46, !noalias !1437
  unreachable

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit
  store i64 2, ptr %i.dd, align 8
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  store i64 0, ptr %.sroa.497.0..sroa_idx, align 8
  %.sroa.598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.598.0..sroa_idx, align 8
  %.sroa.699.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 48
  %.sroa.8101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.699.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8101.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx102 = getelementptr inbounds nuw i8, ptr %i.dd, i64 72
  store i64 0, ptr %.sroa.9.0..sroa_idx102, align 8
  %.sroa.10.0..sroa_idx103 = getelementptr inbounds nuw i8, ptr %i.dd, i64 80
  store i64 -2, ptr %.sroa.10.0..sroa_idx103, align 8
  %.sroa.11105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 104
  store ptr null, ptr %.sroa.11105.0..sroa_idx, align 8
  %.sroa.12107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 120
  store i8 -1, ptr %.sroa.12107.0..sroa_idx, align 8
  %.sroa.13108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 124
  store i8 -1, ptr %.sroa.13108.0..sroa_idx, align 4
  %.sroa.14110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 128
  store i8 -1, ptr %.sroa.14110.0..sroa_idx, align 8
  %.sroa.15112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 132
  store i16 0, ptr %.sroa.15112.0..sroa_idx, align 4
  %.sroa.16.0..sroa_idx113 = getelementptr inbounds nuw i8, ptr %i.dd, i64 134
  store i8 -1, ptr %.sroa.16.0..sroa_idx113, align 2
  %.sroa.17115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 138
  store i8 -1, ptr %.sroa.17115.0..sroa_idx, align 2
  %.sroa.18117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 142
  store i8 -1, ptr %.sroa.18117.0..sroa_idx, align 2
  %.sroa.19119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 146
  store i16 0, ptr %.sroa.19119.0..sroa_idx, align 2
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 148
  store i8 -1, ptr %.sroa.20.0..sroa_idx, align 4
  %.sroa.21120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 152
  store i8 -1, ptr %.sroa.21120.0..sroa_idx, align 8
  %.sroa.22121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 156
  store i8 -1, ptr %.sroa.22121.0..sroa_idx, align 4
  %.sroa.23122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 160
  store i16 0, ptr %.sroa.23122.0..sroa_idx, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 162
  store i8 -1, ptr %.sroa.24.0..sroa_idx, align 2
  %.sroa.25123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 166
  store i8 -1, ptr %.sroa.25123.0..sroa_idx, align 2
  %.sroa.26124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 170
  store i8 -1, ptr %.sroa.26124.0..sroa_idx, align 2
  %.sroa.27125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 174
  store i16 0, ptr %.sroa.27125.0..sroa_idx, align 2
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 176
  store i8 -1, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.29126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 180
  store i8 -1, ptr %.sroa.29126.0..sroa_idx, align 4
  %.sroa.30127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 184
  store i8 -1, ptr %.sroa.30127.0..sroa_idx, align 8
  %.sroa.31128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 188
  store i16 0, ptr %.sroa.31128.0..sroa_idx, align 4
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 190
  store i8 -1, ptr %.sroa.32.0..sroa_idx, align 2
  %.sroa.33129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 194
  store i8 -1, ptr %.sroa.33129.0..sroa_idx, align 2
  %.sroa.34130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 198
  store i8 -1, ptr %.sroa.34130.0..sroa_idx, align 2
  %.sroa.35131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 202
  store i16 0, ptr %.sroa.35131.0..sroa_idx, align 2
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 204
  store i8 -1, ptr %.sroa.36.0..sroa_idx, align 4
  %.sroa.37132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 208
  store i8 -1, ptr %.sroa.37132.0..sroa_idx, align 8
  %.sroa.38133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 212
  store i8 -1, ptr %.sroa.38133.0..sroa_idx, align 4
  %.sroa.39134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 216
  store i16 0, ptr %.sroa.39134.0..sroa_idx, align 8
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 218
  store i8 -1, ptr %.sroa.40.0..sroa_idx, align 2
  %.sroa.41135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 222
  store i8 -1, ptr %.sroa.41135.0..sroa_idx, align 2
  %.sroa.42136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 226
  store i8 -1, ptr %.sroa.42136.0..sroa_idx, align 2
  %.sroa.43137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 230
  store i16 0, ptr %.sroa.43137.0..sroa_idx, align 2
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 232
  store i8 -2, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.45138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 246
  store <4 x i8> <i8 0, i8 2, i8 2, i8 0>, ptr %.sroa.45138.0..sroa_idx, align 2
  %i.df = tail call fastcc noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error8with_cmdB4_(ptr noalias noundef nonnull align 8 %i.dd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %0) #43 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.sroa.48.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.48, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.48.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %.sroa.412.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.412, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.412.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br i1 %i.l, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4IterBU_ENCNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB31_5Error13invalid_value0EE9from_iterB33_.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !1438
  %i.dg = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.idx, i64 noundef range(i64 1, 9) 8) #43, !noalias !1438 ; 3 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %bb.p, label %.preheader.i.i.i.i

bb.p:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %.idx) #46, !noalias !1439
  unreachable

.preheader.i.i.i.i:                               ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i, %.preheader.i.i.i.i
  %i.di = phi i64 [ %i.dl, %.preheader.i.i.i.i ], [ 0, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i ] ; 3 uses
  %i.dj = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.di
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1440
  call void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dj) #43, !noalias !1441
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.dg, i64 %i.di
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dk, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1442
  %i.dl = add nuw nsw i64 %i.di, 1                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1440
  %i.dm = icmp eq i64 %i.dl, %3
  br i1 %i.dm, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4IterBU_ENCNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB31_5Error13invalid_value0EE9from_iterB33_.exit, label %.preheader.i.i.i.i

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4IterBU_ENCNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB31_5Error13invalid_value0EE9from_iterB33_.exit: ; preds = %.preheader.i.i.i.i, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit
  %.sroa.10.0.i8.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit ], [ %i.dg, %.preheader.i.i.i.i ]
  store i8 1, ptr %i.d, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 2, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.48, i64 31, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i8 5, ptr %i.dn, align 8
  %.sroa.4.sroa.314.0..sroa.4.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i8 2, ptr %.sroa.4.sroa.314.0..sroa.4.0..sroa_idx10.sroa_idx, align 8
  %.sroa.4.sroa.415.0..sroa.4.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.sroa.415.0..sroa.4.0..sroa_idx10.sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.412, i64 31, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store i8 4, ptr %i.do, align 8
  %.sroa.4.sroa.321.0..sroa.4.0..sroa_idx17.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store i8 3, ptr %.sroa.4.sroa.321.0..sroa.4.0..sroa_idx17.sroa_idx, align 8
  %.sroa.4.sroa.422.sroa.4.0..sroa.4.sroa.422.0..sroa.4.0..sroa_idx17.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store i64 %3, ptr %.sroa.4.sroa.422.sroa.4.0..sroa.4.sroa.422.0..sroa.4.0..sroa_idx17.sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.422.sroa.5.0..sroa.4.sroa.422.0..sroa.4.0..sroa_idx17.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store ptr %.sroa.10.0.i8.i.i, ptr %.sroa.4.sroa.422.sroa.5.0..sroa.4.sroa.422.0..sroa.4.0..sroa_idx17.sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.422.sroa.6.0..sroa.4.sroa.422.0..sroa.4.0..sroa_idx17.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store i64 %3, ptr %.sroa.4.sroa.422.sroa.6.0..sroa.4.sroa.422.0..sroa.4.0..sroa_idx17.sroa_idx.sroa_idx, align 8
  %i.dp = call noundef nonnull align 8 ptr @_RINvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB3_5Error24extend_context_uncheckedKj3_EB5_(ptr noalias noundef nonnull align 8 %i.dd, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(120) %i.d) #42 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not = icmp eq i64 %.sroa.03.0142145, -1
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4IterBU_ENCNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB31_5Error13invalid_value0EE9from_iterB33_.exit
  %.sroa.4.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx24, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.03.0142145, ptr %i.dq, align 8
  store i8 2, ptr %i.c, align 8
  %i.dr = call noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error24insert_context_uncheckedB4_(ptr noalias noundef nonnull align 8 %i.dd, i8 noundef 12, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c) #42 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4IterBU_ENCNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB31_5Error13invalid_value0EE9from_iterB33_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret ptr %i.dd
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error15too_many_valuesB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(712) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.49 = alloca [31 x i8], align 1           ; 2 uses
  %.sroa.45 = alloca [31 x i8], align 1           ; 2 uses
  %i.b = alloca [80 x i8], align 8                ; 9 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !1445
  %i.c = tail call noundef align 8 dereferenceable_or_null(256) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 256, i64 noundef range(i64 1, 9) 8) #43, !noalias !1445 ; 47 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !prof !33

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 256) #46, !noalias !1445
  unreachable

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i64 2, ptr %i.c, align 8
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 0, ptr %.sroa.472.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.8.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx73, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.0..sroa_idx75, align 8
end_hunk_1
begin_hunk_2_@_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16get_matches_with:bb.a
bb.i:                                             ; preds = %bb.h
  %i.kp = load i32, ptr %i.km, align 1
  %i.kq = icmp ne i32 %i.kp, 1886152040
  %i.kr = zext i1 %i.kq to i32
  %i.ks = icmp eq i32 %i.kr, 0
  br i1 %i.ks, label %bb.l, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i656

bb.j:                                             ; preds = %bb.h
  %.not.i654 = icmp slt i64 %i.kn, 0
  br i1 %.not.i654, label %bb.n, label %bb.k, !prof !10294

bb.k:                                             ; preds = %bb.j
  %i.kt = icmp eq i64 %i.kn, 0
  br i1 %i.kt, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit658.thread811, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i656

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i656: ; preds = %bb.l, %bb.i, %bb.k
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !10295
  %i.ku = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.kn, i64 noundef range(i64 1, 9) 1) #43, !noalias !10295 ; 3 uses
  %i.kv = icmp eq ptr %i.ku, null
  br i1 %i.kv, label %bb.n, label %bb.p

bb.l:                                             ; preds = %bb.i
  %i.kw = load <2 x i32>, ptr %i.jz, align 4, !noalias !10284
  %i.kx = and <2 x i32> %i.kw, splat (i32 1048576)
  %i.ky = icmp ne <2 x i32> %i.kx, zeroinitializer ; 2 uses
  %i.kz = extractelement <2 x i1> %i.ky, i64 0
  %i.la = extractelement <2 x i1> %i.ky, i64 1
  %.sroa.0.0.i653 = select i1 %i.kz, i1 true, i1 %i.la
  br i1 %.sroa.0.0.i653, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i656, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.lb = call { ptr, ptr } @_RNvMCs3RZUOUhPFQ6_8clap_lexNtB2_7RawArgs9remaining(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ga) #43, !noalias !10284, !inline_history !8601 ; 2 uses
  %i.lc = extractvalue { ptr, ptr } %i.lb, 0
  %i.ld = extractvalue { ptr, ptr } %i.lb, 1
  %i.le = call fastcc noundef nonnull align 8 ptr @_RINvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB5_6Parser21parse_help_subcommandINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3r_7RawArgs9remaining0EEB9_(ptr %i.jy, ptr noundef nonnull %i.lc, ptr noundef %i.ld) #43, !noalias !10284, !inline_history !8601
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parser11ValueParserEBH_.exit

bb.n:                                             ; preds = %bb.j, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i656
  %.sroa.4750.0.ph.a = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i656 ], [ 0, %bb.j ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4750.0.ph.a, i64 %i.kn) #46, !noalias !10284, !inline_history !8601
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit658.thread811: ; preds = %bb.k, %bb.p
  %i.lf = phi ptr [ %i.ku, %bb.p ], [ inttoptr (i64 1 to ptr), %bb.k ]
  %.val200.i = load i64, ptr %i.fz, align 8, !range !13, !noalias !10287, !noundef !11 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 2 uses
  %i.lh = icmp sgt i64 %.val200.i, 0
  br i1 %i.lh, label %bb.o, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsfu0rQaTkGUu_12clap_builder.exit651

bb.o:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit658.thread811
  %.val201.i = load ptr, ptr %i.lg, align 8, !noalias !10287, !nonnull !11, !noundef !11
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val201.i, i64 noundef %.val200.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !10296
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsfu0rQaTkGUu_12clap_builder.exit651

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsfu0rQaTkGUu_12clap_builder.exit651: ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit658.thread811, %bb.o
  store i64 %i.kn, ptr %i.fz, align 8, !noalias !10287
  store ptr %i.lf, ptr %i.lg, align 8, !noalias !10287
  %.sroa.5112.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store i64 %i.kn, ptr %.sroa.5112.0..sroa_idx.i, align 8, !noalias !10287
  br label %bb.q

bb.p:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i656
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ku, ptr nonnull align 1 %i.km, i64 %i.kn, i1 false), !noalias !10284
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit658.thread811

bb.q:                                             ; preds = %bb.ht, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsfu0rQaTkGUu_12clap_builder.exit580, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsfu0rQaTkGUu_12clap_builder.exit651
  %.sroa.0686.4 = phi i8 [ %.sroa.0686.9822, %bb.ht ], [ %.sroa.0686.10818, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsfu0rQaTkGUu_12clap_builder.exit580 ], [ %.sroa.0686.01812, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsfu0rQaTkGUu_12clap_builder.exit651 ]
  %.sroa.064.0.i = phi i1 [ %i.awr, %bb.ht ], [ false, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsfu0rQaTkGUu_12clap_builder.exit580 ], [ false, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsfu0rQaTkGUu_12clap_builder.exit651 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fy), !noalias !10287
  br label %bb.hu

bb.r:                                             ; preds = %bb.f
  %i.li = load i16, ptr %i.jt, align 1
  %i.lj = icmp ne i16 %i.li, 11565
  %i.lk = zext i1 %i.lj to i32
  %i.ll = icmp eq i32 %i.lk, 0
  br i1 %i.ll, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fw), !noalias !10287
  call void @_RNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB5_9ParsedArg7to_long(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.fw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fy) #43, !noalias !10284, !inline_history !8601
  %i.lm = load i64, ptr %i.fw, align 8, !range !15, !noalias !10287, !noundef !11 ; 2 uses
  %.not154.i = icmp eq i64 %i.lm, 2
  br i1 %.not154.i, label %bb.bq, label %bb.u

bb.t:                                             ; preds = %bb.r
  switch i64 %i.jq, label %default.unreachable [
    i64 1, label %bb.ia
    i64 2, label %bb.ib
    i64 0, label %bb.ic
  ]

bb.u:                                             ; preds = %bb.s
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !10287 ; 17 uses
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !10287 ; 38 uses
  %i.ln = load ptr, ptr %i.hz, align 8, !noalias !10287, !noundef !11 ; 4 uses
  %i.lo = load i64, ptr %i.ia, align 8, !noalias !10287 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fv), !noalias !10287
  call void @llvm.experimental.noalias.scope.decl(metadata !10297)
  call void @llvm.experimental.noalias.scope.decl(metadata !10298)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  switch i64 %.sroa.0.07971817, label %default.unreachable [
    i64 1, label %bb.v
    i64 2, label %bb.w
    i64 0, label %bb.x
  ]

bb.v:                                             ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !10299)
  %i.lp = getelementptr inbounds nuw i8, ptr %i.jy, i64 136
  %.val.i.i640 = load ptr, ptr %i.lp, align 8, !alias.scope !10299, !noalias !10300, !nonnull !11, !noundef !11 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.jy, i64 144
  %.val2.i.i641 = load i64, ptr %i.lq, align 8, !alias.scope !10299, !noalias !10300, !noundef !11 ; 2 uses
  %.idx.i.i.i642 = mul nuw nsw i64 %.val2.i.i641, 600
  %i.lr = getelementptr inbounds nuw i8, ptr %.val.i.i640, i64 %.idx.i.i.i642
  %i.ls = icmp eq i64 %.val2.i.i641, 0
  br i1 %i.ls, label %.loopexit.i.i645, label %.lr.ph.i.i.i.i643

.lr.ph.i.i.i.i643:                                ; preds = %bb.v, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i644
  %i.lt = phi ptr [ %i.lu, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i644 ], [ %.val.i.i640, %bb.v ] ; 4 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 600 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 544
  %i.lw = load i64, ptr %i.lv, align 8, !noalias !10301, !noundef !11
  %i.lx = icmp eq i64 %i.lw, %.sroa.24.01815
  br i1 %i.lx, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i646, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i644

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i646: ; preds = %.lr.ph.i.i.i.i643
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lt, i64 536
  %i.lz = load ptr, ptr %i.ly, align 8, !noalias !10301, !nonnull !11, !noundef !11
  %bcmp.i.i.i.i.i647 = call i32 @bcmp(ptr nonnull %i.lz, ptr nonnull %.sroa.12.01816, i64 %.sroa.24.01815), !noalias !10301
  %i.ma = icmp eq i32 %bcmp.i.i.i.i.i647, 0
  br i1 %i.ma, label %_RNvXs7_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7CommandINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexRNtNtNtB9_4util2id2IdE5index.exit.i648, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i644

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i644: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i646, %.lr.ph.i.i.i.i643
  %i.mb = icmp eq ptr %i.lu, %i.lr
  br i1 %i.mb, label %.loopexit.i.i645, label %.lr.ph.i.i.i.i643

.loopexit.i.i645:                                 ; preds = %bb.v, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i644
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 99, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @241) #44, !noalias !10302
  unreachable

_RNvXs7_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7CommandINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexRNtNtNtB9_4util2id2IdE5index.exit.i648: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i646
  %i.mc = getelementptr i8, ptr %i.lt, i64 592
  %.val92.i = load i32, ptr %i.mc, align 8, !noalias !10303, !noundef !11
  %i.md = and i32 %.val92.i, 32
  %.not245.i = icmp eq i32 %i.md, 0
  br i1 %.not245.i, label %bb.x, label %.sink.split

bb.w:                                             ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !10304)
  %i.me = getelementptr inbounds nuw i8, ptr %i.jy, i64 136
  %.val.i101.i = load ptr, ptr %i.me, align 8, !alias.scope !10304, !noalias !10305, !nonnull !11, !noundef !11 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.jy, i64 144
  %.val2.i102.i = load i64, ptr %i.mf, align 8, !alias.scope !10304, !noalias !10305, !noundef !11 ; 2 uses
  %.idx.i.i103.i = mul nuw nsw i64 %.val2.i102.i, 600
  %i.mg = getelementptr inbounds nuw i8, ptr %.val.i101.i, i64 %.idx.i.i103.i
  %i.mh = icmp eq i64 %.val2.i102.i, 0
  br i1 %i.mh, label %.loopexit.i106.i, label %.lr.ph.i.i.i104.i

.lr.ph.i.i.i104.i:                                ; preds = %bb.w, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i105.i
  %i.mi = phi ptr [ %i.mj, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i105.i ], [ %.val.i101.i, %bb.w ] ; 4 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 600 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 544
  %i.ml = load i64, ptr %i.mk, align 8, !noalias !10306, !noundef !11
  %i.mm = icmp eq i64 %i.ml, %.sroa.24.01815
  br i1 %i.mm, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i107.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i105.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i107.i: ; preds = %.lr.ph.i.i.i104.i
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mi, i64 536
  %i.mo = load ptr, ptr %i.mn, align 8, !noalias !10306, !nonnull !11, !noundef !11
  %bcmp.i.i.i.i108.i = call i32 @bcmp(ptr nonnull %i.mo, ptr nonnull %.sroa.12.01816, i64 %.sroa.24.01815), !noalias !10306
  %i.mp = icmp eq i32 %bcmp.i.i.i.i108.i, 0
  br i1 %i.mp, label %_RNvXs7_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7CommandINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexRNtNtNtB9_4util2id2IdE5index.exit109.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i105.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i105.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i107.i, %.lr.ph.i.i.i104.i
  %i.mq = icmp eq ptr %i.mj, %i.mg
  br i1 %i.mq, label %.loopexit.i106.i, label %.lr.ph.i.i.i104.i

.loopexit.i106.i:                                 ; preds = %bb.w, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i105.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 99, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @241) #44, !noalias !10307
  unreachable

_RNvXs7_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7CommandINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexRNtNtNtB9_4util2id2IdE5index.exit109.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i107.i
  %i.mr = getelementptr i8, ptr %i.mi, i64 592
  %.val91.i = load i32, ptr %i.mr, align 8, !noalias !10303, !noundef !11
  %i.ms = and i32 %.val91.i, 32
  %.not.i639 = icmp eq i32 %i.ms, 0
  br i1 %.not.i639, label %bb.x, label %.sink.split

bb.x:                                             ; preds = %_RNvXs7_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7CommandINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexRNtNtNtB9_4util2id2IdE5index.exit109.i, %_RNvXs7_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7CommandINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexRNtNtNtB9_4util2id2IdE5index.exit.i648, %bb.u
  %i.mt = trunc nuw i64 %i.lm to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload) ]
  br i1 %i.mt, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !10303
  call void @_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.7.0.copyload, i64 noundef %.sroa.8.0.copyload) #43, !noalias !10303
  %i.mu = load i64, ptr %i.j, align 8, !range !13, !noalias !10303, !noundef !11 ; 2 uses
  %.not86.i = icmp eq i64 %i.mu, -1
  %i.mv = load ptr, ptr %i.il, align 8, !noalias !10303 ; 2 uses
  %i.mw = load i64, ptr %i.im, align 8, !noalias !10303 ; 7 uses
  br i1 %.not86.i, label %bb.bm, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit156.thread240.i

bb.z:                                             ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !10308)
  %i.mx = getelementptr inbounds nuw i8, ptr %i.jy, i64 160
  %i.my = load ptr, ptr %i.mx, align 8, !alias.scope !10308, !noalias !10309, !nonnull !11, !noundef !11 ; 4 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.jy, i64 168
  %i.na = load i64, ptr %i.mz, align 8, !alias.scope !10308, !noalias !10309, !noundef !11 ; 4 uses
  %.idx.i.i581 = shl nuw nsw i64 %i.na, 5
  %i.nb = getelementptr inbounds nuw i8, ptr %i.my, i64 %.idx.i.i581
  %i.nc = icmp eq i64 %i.na, 0
  br i1 %i.nc, label %.loopexit255.i, label %.lr.ph.i.i.i582

.lr.ph.i.i.i582:                                  ; preds = %bb.z, %_RNCINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB8_7MKeyMap3geteE0Ba_.exit.thread.i.i.i
  %i.nd = phi ptr [ %i.ne, %_RNCINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB8_7MKeyMap3geteE0Ba_.exit.thread.i.i.i ], [ %i.my, %bb.z ] ; 5 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10310)
  %i.nf = load i32, ptr %i.nd, align 8, !range !31, !alias.scope !10310, !noalias !10311, !noundef !11
  %i.ng = icmp eq i32 %i.nf, 1
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  %i.ni = load i64, ptr %i.nh, align 8, !alias.scope !10310, !noalias !10311
  %i.nj = icmp eq i64 %i.ni, %.sroa.8.0.copyload
  %or.cond.i.i.i.i.i583 = select i1 %i.ng, i1 %i.nj, i1 false
  br i1 %or.cond.i.i.i.i.i583, label %_RNCINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB8_7MKeyMap3geteE0Ba_.exit.i.i.i, label %_RNCINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB8_7MKeyMap3geteE0Ba_.exit.thread.i.i.i

_RNCINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB8_7MKeyMap3geteE0Ba_.exit.i.i.i: ; preds = %.lr.ph.i.i.i582
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.nl = load ptr, ptr %i.nk, align 8, !alias.scope !10310, !noalias !10311, !nonnull !11, !noundef !11
  %bcmp.i.i.i.i110.i = call i32 @bcmp(ptr nonnull %i.nl, ptr nonnull readonly %.sroa.7.0.copyload, i64 %.sroa.8.0.copyload), !noalias !10312
  %i.nm = icmp eq i32 %bcmp.i.i.i.i110.i, 0
  br i1 %i.nm, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BS_NtBS_7MKeyMap3geteE0EBU_.exit.i.i, label %_RNCINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB8_7MKeyMap3geteE0Ba_.exit.thread.i.i.i

_RNCINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB8_7MKeyMap3geteE0Ba_.exit.thread.i.i.i: ; preds = %_RNCINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB8_7MKeyMap3geteE0Ba_.exit.i.i.i, %.lr.ph.i.i.i582
  %i.nn = icmp eq ptr %i.ne, %i.nb
  br i1 %i.nn, label %.loopexit255.i, label %.lr.ph.i.i.i582

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BS_NtBS_7MKeyMap3geteE0EBU_.exit.i.i: ; preds = %_RNCINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB8_7MKeyMap3geteE0Ba_.exit.i.i.i
  %i.no = getelementptr inbounds nuw i8, ptr %i.nd, i64 24
  %i.np = load i64, ptr %i.no, align 8, !noalias !10313, !noundef !11 ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.jy, i64 144
  %i.nr = load i64, ptr %i.nq, align 8, !alias.scope !10308, !noalias !10309, !noundef !11 ; 2 uses
  %i.ns = icmp ult i64 %i.np, %i.nr
  br i1 %i.ns, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BS_NtBS_7MKeyMap3geteE0EBU_.exit.i.i
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.np, i64 noundef %i.nr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #44, !noalias !10313
  unreachable

bb.ab:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BS_NtBS_7MKeyMap3geteE0EBU_.exit.i.i
  %i.nt = getelementptr inbounds nuw i8, ptr %i.jy, i64 136
  %i.nu = load ptr, ptr %i.nt, align 8, !alias.scope !10308, !noalias !10309, !nonnull !11, !noundef !11
  %i.nv = getelementptr inbounds nuw [600 x i8], ptr %i.nu, i64 %i.np
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionTReRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEE6filterNCNvMs_NtNtBS_6parser6parserNtB1Q_6Parser14parse_long_args_0EBS_.exit.thread197.i

.loopexit255.i:                                   ; preds = %_RNCINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB8_7MKeyMap3geteE0Ba_.exit.thread.i.i.i, %bb.z
  %.val93.i = load i32, ptr %i.jz, align 4, !noalias !10303, !noundef !11 ; 2 uses
  %.val94.i = load i32, ptr %i.ka, align 8, !noalias !10303 ; 2 uses
  %i.nw = and i32 %.val93.i, 128
  %.not.i.i584 = icmp ne i32 %i.nw, 0
  %i.nx = and i32 %.val94.i, 128
  %i.ny = icmp ne i32 %i.nx, 0
  %.sroa.0.0.i111.i = select i1 %.not.i.i584, i1 true, i1 %i.ny
  br i1 %.sroa.0.0.i111.i, label %bb.ac, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionTReRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEE6filterNCNvMs_NtNtBS_6parser6parserNtB1Q_6Parser14parse_long_args_0EBS_.exit.thread.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionTReRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEE6filterNCNvMs_NtNtBS_6parser6parserNtB1Q_6Parser14parse_long_args_0EBS_.exit.thread197.i: ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtBV_6Parser14parse_long_arg0INtB7_5FnMutTRNtNtNtBZ_7builder3arg3ArgEE8call_mutBZ_.exit.i.i.i.i, %.loopexit.i610, %bb.ab
  %.sroa.9.0.i618 = phi ptr [ %i.oh, %.loopexit.i610 ], [ %i.nv, %bb.ab ], [ %i.oh, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtBV_6Parser14parse_long_arg0INtB7_5FnMutTRNtNtNtBZ_7builder3arg3ArgEE8call_mutBZ_.exit.i.i.i.i ] ; 11 uses
  %i.nz = getelementptr i8, ptr %.sroa.9.0.i618, i64 16
  %.val95.i = load i64, ptr %i.nz, align 8, !noalias !10303
  %i.oa = getelementptr i8, ptr %.sroa.9.0.i618, i64 32
  %.val96.i = load i64, ptr %i.oa, align 8, !noalias !10303
  %i.ob = trunc nuw i64 %.val95.i to i1
  %i.oc = icmp eq i64 %.val96.i, 0
  %.sroa.02.0.i.not.i619 = select i1 %i.ob, i1 %i.oc, i1 false
  br i1 %.sroa.02.0.i.not.i619, label %bb.an, label %bb.ao

bb.ac:                                            ; preds = %.loopexit255.i
  %i.od = getelementptr i8, ptr %i.jy, i64 136
  %.val89.i = load ptr, ptr %i.od, align 8, !noalias !10303, !nonnull !11, !noundef !11 ; 2 uses
  %i.oe = getelementptr i8, ptr %i.jy, i64 144
  %.val90.i = load i64, ptr %i.oe, align 8, !noalias !10303, !noundef !11 ; 2 uses
  %.idx.i599 = mul nuw nsw i64 %.val90.i, 600
  %i.of = getelementptr inbounds nuw i8, ptr %.val89.i, i64 %.idx.i599 ; 3 uses
  %i.og = icmp eq i64 %.val90.i, 0
  br i1 %i.og, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionTReRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEE6filterNCNvMs_NtNtBS_6parser6parserNtB1Q_6Parser14parse_long_args_0EBS_.exit.thread.i, label %.lr.ph.i.i600

.lr.ph.i.i600:                                    ; preds = %bb.ac, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtBV_6Parser14parse_long_arg0INtB7_5FnMutTRNtNtNtBZ_7builder3arg3ArgEE8call_mutBZ_.exit.i.i
  %i.oh = phi ptr [ %i.oi, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtBV_6Parser14parse_long_arg0INtB7_5FnMutTRNtNtNtBZ_7builder3arg3ArgEE8call_mutBZ_.exit.i.i ], [ %.val89.i, %bb.ac ] ; 7 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 600 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10314)
  call void @llvm.experimental.noalias.scope.decl(metadata !10315)
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oh, i64 552
  %i.ok = load ptr, ptr %i.oj, align 8, !alias.scope !10316, !noalias !10317, !noundef !11 ; 2 uses
  %.not.i.i.i.i601 = icmp eq ptr %i.ok, null
  br i1 %.not.i.i.i.i601, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i600
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oh, i64 560
  %i.om = load i64, ptr %i.ol, align 8, !alias.scope !10316, !noalias !10317, !noundef !11
  %.not.i.i.i.i.i602 = icmp samesign ult i64 %i.om, %.sroa.8.0.copyload
  br i1 %.not.i.i.i.i.i602, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i: ; preds = %bb.ad
  %bcmp.i.i.i.i.i.i603 = call i32 @bcmp(ptr nonnull readonly %.sroa.7.0.copyload, ptr nonnull readonly %i.ok, i64 range(i64 0, -9223372036854775808) %.sroa.8.0.copyload), !alias.scope !10318, !noalias !10319
  %i.on = icmp eq i32 %bcmp.i.i.i.i.i.i603, 0
  br i1 %i.on, label %.loopexit.i610, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i, %bb.ad, %.lr.ph.i.i600
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oh, i64 304
  %i.op = load ptr, ptr %i.oo, align 8, !alias.scope !10316, !noalias !10317, !nonnull !11, !noundef !11 ; 4 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oh, i64 312
  %i.or = load i64, ptr %i.oq, align 8, !alias.scope !10316, !noalias !10317, !noundef !11 ; 3 uses
  %.idx.i.i.i.i604 = mul nuw nsw i64 %i.or, 24
  %i.os = getelementptr inbounds nuw i8, ptr %i.op, i64 %.idx.i.i.i.i604
  %i.ot = icmp eq i64 %i.or, 0
  br i1 %i.ot, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtBV_6Parser14parse_long_arg0INtB7_5FnMutTRNtNtNtBZ_7builder3arg3ArgEE8call_mutBZ_.exit.i.i, label %.lr.ph.i.i.i.i.i605

.lr.ph.i.i.i.i.i605:                              ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i.i
  %i.ou = getelementptr inbounds nuw i8, ptr %i.op, i64 24
  %i.ov = getelementptr i8, ptr %i.op, i64 8
  %.val3.peel.i.i.i.i.i = load i64, ptr %i.ov, align 8, !noalias !10320, !noundef !11
  %.not.i.i.peel.i.i.i.i.i = icmp samesign ult i64 %.val3.peel.i.i.i.i.i, %.sroa.8.0.copyload
  br i1 %.not.i.i.peel.i.i.i.i.i, label %_RNCNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB8_6Parser14parse_long_arg00Bc_.exit.peel.i.i.i.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCsfu0rQaTkGUu_12clap_builder.exit.i.peel.i.i.i.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCsfu0rQaTkGUu_12clap_builder.exit.i.peel.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i605
  %.val2.peel.i.i.i.i.i = load ptr, ptr %i.op, align 8, !noalias !10320, !nonnull !11, !noundef !11
  %bcmp.i.i.i.peel.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.7.0.copyload, ptr nonnull readonly %.val2.peel.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %.sroa.8.0.copyload), !alias.scope !10321, !noalias !10322
  %i.ow = icmp eq i32 %bcmp.i.i.i.peel.i.i.i.i.i, 0
  br i1 %i.ow, label %.loopexit.i610, label %_RNCNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB8_6Parser14parse_long_arg00Bc_.exit.peel.i.i.i.i.i

_RNCNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB8_6Parser14parse_long_arg00Bc_.exit.peel.i.i.i.i.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCsfu0rQaTkGUu_12clap_builder.exit.i.peel.i.i.i.i.i, %.lr.ph.i.i.i.i.i605
  %i.ox = icmp eq i64 %i.or, 1
  br i1 %i.ox, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtBV_6Parser14parse_long_arg0INtB7_5FnMutTRNtNtNtBZ_7builder3arg3ArgEE8call_mutBZ_.exit.i.i, label %.peel.next.i.i.i.i.i

.peel.next.i.i.i.i.i:                             ; preds = %_RNCNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB8_6Parser14parse_long_arg00Bc_.exit.peel.i.i.i.i.i, %_RNCNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB8_6Parser14parse_long_arg00Bc_.exit.i.i.i.i.i
  %i.oy = phi ptr [ %i.oz, %_RNCNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB8_6Parser14parse_long_arg00Bc_.exit.i.i.i.i.i ], [ %i.ou, %_RNCNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB8_6Parser14parse_long_arg00Bc_.exit.peel.i.i.i.i.i ] ; 3 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 24 ; 2 uses
  %i.pa = getelementptr i8, ptr %i.oy, i64 8
  %.val3.i.i.i.i.i606 = load i64, ptr %i.pa, align 8, !noalias !10320, !noundef !11
  %.not.i.i.i.i.i.i.i607 = icmp samesign ult i64 %.val3.i.i.i.i.i606, %.sroa.8.0.copyload
  br i1 %.not.i.i.i.i.i.i.i607, label %_RNCNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB8_6Parser14parse_long_arg00Bc_.exit.i.i.i.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i: ; preds = %.peel.next.i.i.i.i.i
  %.val2.i.i.i.i.i608 = load ptr, ptr %i.oy, align 8, !noalias !10320, !nonnull !11, !noundef !11
  %bcmp.i.i.i.i.i.i.i.i609 = call i32 @bcmp(ptr nonnull readonly %.sroa.7.0.copyload, ptr nonnull readonly %.val2.i.i.i.i.i608, i64 range(i64 0, -9223372036854775808) %.sroa.8.0.copyload), !alias.scope !10321, !noalias !10323
  %i.pb = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i609, 0
  br i1 %i.pb, label %.loopexit.i610, label %_RNCNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB8_6Parser14parse_long_arg00Bc_.exit.i.i.i.i.i

_RNCNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB8_6Parser14parse_long_arg00Bc_.exit.i.i.i.i.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i, %.peel.next.i.i.i.i.i
  %i.pc = icmp eq ptr %i.oz, %i.os
  br i1 %i.pc, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtBV_6Parser14parse_long_arg0INtB7_5FnMutTRNtNtNtBZ_7builder3arg3ArgEE8call_mutBZ_.exit.i.i, label %.peel.next.i.i.i.i.i, !llvm.loop !8665

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtBV_6Parser14parse_long_arg0INtB7_5FnMutTRNtNtNtBZ_7builder3arg3ArgEE8call_mutBZ_.exit.i.i: ; preds = %_RNCNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB8_6Parser14parse_long_arg00Bc_.exit.i.i.i.i.i, %_RNCNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB8_6Parser14parse_long_arg00Bc_.exit.peel.i.i.i.i.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i.i
  %i.pd = icmp eq ptr %i.oi, %i.of
  br i1 %i.pd, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionTReRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEE6filterNCNvMs_NtNtBS_6parser6parserNtB1Q_6Parser14parse_long_args_0EBS_.exit.thread.i, label %.lr.ph.i.i600

.loopexit.i610:                                   ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCsfu0rQaTkGUu_12clap_builder.exit.i.peel.i.i.i.i.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i
  %i.pe = icmp eq ptr %i.oi, %i.of
  br i1 %i.pe, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionTReRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEE6filterNCNvMs_NtNtBS_6parser6parserNtB1Q_6Parser14parse_long_args_0EBS_.exit.thread197.i, label %.lr.ph.i.i.i113.i

.lr.ph.i.i.i113.i:                                ; preds = %.loopexit.i610, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtBV_6Parser14parse_long_arg0INtB7_5FnMutTRNtNtNtBZ_7builder3arg3ArgEE8call_mutBZ_.exit.i.i.i.i
  %i.pf = phi ptr [ %i.pg, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtBV_6Parser14parse_long_arg0INtB7_5FnMutTRNtNtNtBZ_7builder3arg3ArgEE8call_mutBZ_.exit.i.i.i.i ], [ %i.oi, %.loopexit.i610 ] ; 5 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 600 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10324)
  call void @llvm.experimental.noalias.scope.decl(metadata !10325)
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pf, i64 552
  %i.pi = load ptr, ptr %i.ph, align 8, !alias.scope !10326, !noalias !10327, !noundef !11 ; 2 uses
  %.not.i.i.i.i.i.i611 = icmp eq ptr %i.pi, null
  br i1 %.not.i.i.i.i.i.i611, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i.i113.i
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pf, i64 560
  %i.pk = load i64, ptr %i.pj, align 8, !alias.scope !10326, !noalias !10327, !noundef !11
  %.not.i.i.i.i.i.i114.i = icmp samesign ult i64 %i.pk, %.sroa.8.0.copyload
  br i1 %.not.i.i.i.i.i.i114.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i.i.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i115.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i115.i: ; preds = %bb.ae
  %bcmp.i.i.i.i.i.i.i116.i = call i32 @bcmp(ptr nonnull readonly %.sroa.7.0.copyload, ptr nonnull readonly %i.pi, i64 range(i64 0, -9223372036854775808) %.sroa.8.0.copyload), !alias.scope !10328, !noalias !10329
  %i.pl = icmp eq i32 %bcmp.i.i.i.i.i.i.i116.i, 0
  br i1 %i.pl, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionTReRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEE6filterNCNvMs_NtNtBS_6parser6parserNtB1Q_6Parser14parse_long_args_0EBS_.exit.thread.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i.i.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i.i.i.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i115.i, %bb.ae, %.lr.ph.i.i.i113.i
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pf, i64 304
  %i.pn = load ptr, ptr %i.pm, align 8, !alias.scope !10326, !noalias !10327, !nonnull !11, !noundef !11 ; 4 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pf, i64 312
  %i.pp = load i64, ptr %i.po, align 8, !alias.scope !10326, !noalias !10327, !noundef !11 ; 3 uses
  %.idx.i.i.i.i.i.i612 = mul nuw nsw i64 %i.pp, 24
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pn, i64 %.idx.i.i.i.i.i.i612
  %i.pr = icmp eq i64 %i.pp, 0
  br i1 %i.pr, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtBV_6Parser14parse_long_arg0INtB7_5FnMutTRNtNtNtBZ_7builder3arg3ArgEE8call_mutBZ_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i613

.lr.ph.i.i.i.i.i.i.i613:                          ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i.i.i.i
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pn, i64 24
  %i.pt = getelementptr i8, ptr %i.pn, i64 8
  %.val3.peel.i.i.i.i.i.i.i = load i64, ptr %i.pt, align 8, !noalias !10330, !noundef !11
  %.not.i.i.peel.i.i.i.i.i.i.i = icmp samesign ult i64 %.val3.peel.i.i.i.i.i.i.i, %.sroa.8.0.copyload
  br i1 %.not.i.i.peel.i.i.i.i.i.i.i, label %_RNCNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB8_6Parser14parse_long_arg00Bc_.exit.peel.i.i.i.i.i.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCsfu0rQaTkGUu_12clap_builder.exit.i.peel.i.i.i.i.i.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCsfu0rQaTkGUu_12clap_builder.exit.i.peel.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i613
  %.val2.peel.i.i.i.i.i.i.i = load ptr, ptr %i.pn, align 8, !noalias !10330, !nonnull !11, !noundef !11
  %bcmp.i.i.i.peel.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.7.0.copyload, ptr nonnull readonly %.val2.peel.i.i.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %.sroa.8.0.copyload), !alias.scope !10331, !noalias !10332
end_hunk_2
begin_hunk_3_@_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16get_matches_with:bb.a
  br i1 %i.sn, label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser29possible_long_flag_subcommand.exit.i, label %.lr.ph.i17.i.i

.lr.ph.i17.i.i:                                   ; preds = %bb.al, %.loopexit.i32.i.i
  %i.so = phi ptr [ %i.sp, %.loopexit.i32.i.i ], [ %.sroa.0.02.i.i, %bb.al ] ; 5 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 712 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10355)
  call void @llvm.experimental.noalias.scope.decl(metadata !10356)
  %i.sq = getelementptr inbounds nuw i8, ptr %i.so, i64 576
  %i.sr = load ptr, ptr %i.sq, align 8, !alias.scope !10357, !noalias !10358, !noundef !11 ; 2 uses
  %.not.i.i.i19.i.i = icmp eq ptr %i.sr, null
  br i1 %.not.i.i.i19.i.i, label %.loopexit.i32.i.i, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i17.i.i
  %i.ss = getelementptr inbounds nuw i8, ptr %i.so, i64 584
  %i.st = load i64, ptr %i.ss, align 8, !alias.scope !10357, !noalias !10358, !noundef !11
  call void @llvm.experimental.noalias.scope.decl(metadata !10359)
  %.not.i.i.i.i.i20.i.i = icmp samesign ult i64 %i.st, %.sroa.8.0.copyload
  br i1 %.not.i.i.i.i.i20.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i.i23.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i21.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i21.i.i: ; preds = %bb.am
  %bcmp.i.i.i.i.i.i22.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.7.0.copyload, ptr nonnull readonly %i.sr, i64 range(i64 0, -9223372036854775808) %.sroa.8.0.copyload), !alias.scope !10360, !noalias !10361
  %i.su = icmp eq i32 %bcmp.i.i.i.i.i.i22.i.i, 0
  br i1 %i.su, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapReQNCNvMs_NtNtBW_6parser6parserNtB2L_6Parser29possible_long_flag_subcommand0EBW_.exit40.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i.i23.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i.i23.i.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i21.i.i, %bb.am
  %i.sv = getelementptr inbounds nuw i8, ptr %i.so, i64 112
  %i.sw = load ptr, ptr %i.sv, align 8, !alias.scope !10362, !noalias !10363, !nonnull !11, !noundef !11 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.so, i64 120
  %i.sy = load i64, ptr %i.sx, align 8, !alias.scope !10362, !noalias !10363, !noundef !11 ; 2 uses
  %.idx.i.i.i.i24.i.i = mul nuw nsw i64 %i.sy, 24
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sw, i64 %.idx.i.i.i.i24.i.i
  %i.ta = icmp eq i64 %i.sy, 0
  br i1 %i.ta, label %.loopexit.i32.i.i, label %.lr.ph.i.i.i.i.i25.i.i

.lr.ph.i.i.i.i.i25.i.i:                           ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i.i23.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEReuINtNtNtBa_3ops12control_flow11ControlFlowB1R_ENCNvMs2_NtB15_7commandNtB2M_7Command25get_all_long_flag_aliases0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1R_B1R_NCNCNCNvMs_NtNtB17_6parser6parserNtB4T_6Parser29possible_long_flag_subcommand000E0E0B17_.exit.i.i.i.i.i31.i.i
  %i.tb = phi ptr [ %i.tc, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEReuINtNtNtBa_3ops12control_flow11ControlFlowB1R_ENCNvMs2_NtB15_7commandNtB2M_7Command25get_all_long_flag_aliases0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1R_B1R_NCNCNCNvMs_NtNtB17_6parser6parserNtB4T_6Parser29possible_long_flag_subcommand000E0E0B17_.exit.i.i.i.i.i31.i.i ], [ %i.sw, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i.i23.i.i ] ; 3 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 24 ; 2 uses
  %i.td = getelementptr i8, ptr %i.tb, i64 8
  %.val10.i.i.i.i.i26.i.i = load i64, ptr %i.td, align 8, !noalias !10364, !noundef !11
  %.not.i.i.i.i.i.i.i.i.i27.i.i = icmp samesign ult i64 %.val10.i.i.i.i.i26.i.i, %.sroa.8.0.copyload
  br i1 %.not.i.i.i.i.i.i.i.i.i27.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEReuINtNtNtBa_3ops12control_flow11ControlFlowB1R_ENCNvMs2_NtB15_7commandNtB2M_7Command25get_all_long_flag_aliases0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1R_B1R_NCNCNCNvMs_NtNtB17_6parser6parserNtB4T_6Parser29possible_long_flag_subcommand000E0E0B17_.exit.i.i.i.i.i31.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i28.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i28.i.i: ; preds = %.lr.ph.i.i.i.i.i25.i.i
  %.val9.i.i.i.i.i29.i.i = load ptr, ptr %i.tb, align 8, !noalias !10364, !nonnull !11, !noundef !11
  %bcmp.i.i.i.i.i.i.i.i.i.i30.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.7.0.copyload, ptr nonnull readonly %.val9.i.i.i.i.i29.i.i, i64 range(i64 0, -9223372036854775808) %.sroa.8.0.copyload), !alias.scope !10365, !noalias !10366
  %i.te = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i30.i.i, 0
  br i1 %i.te, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapReQNCNvMs_NtNtBW_6parser6parserNtB2L_6Parser29possible_long_flag_subcommand0EBW_.exit40.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEReuINtNtNtBa_3ops12control_flow11ControlFlowB1R_ENCNvMs2_NtB15_7commandNtB2M_7Command25get_all_long_flag_aliases0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1R_B1R_NCNCNCNvMs_NtNtB17_6parser6parserNtB4T_6Parser29possible_long_flag_subcommand000E0E0B17_.exit.i.i.i.i.i31.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEReuINtNtNtBa_3ops12control_flow11ControlFlowB1R_ENCNvMs2_NtB15_7commandNtB2M_7Command25get_all_long_flag_aliases0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1R_B1R_NCNCNCNvMs_NtNtB17_6parser6parserNtB4T_6Parser29possible_long_flag_subcommand000E0E0B17_.exit.i.i.i.i.i31.i.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i28.i.i, %.lr.ph.i.i.i.i.i25.i.i
  %i.tf = icmp eq ptr %i.tc, %i.sz
  br i1 %i.tf, label %.loopexit.i32.i.i, label %.lr.ph.i.i.i.i.i25.i.i

.loopexit.i32.i.i:                                ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEReuINtNtNtBa_3ops12control_flow11ControlFlowB1R_ENCNvMs2_NtB15_7commandNtB2M_7Command25get_all_long_flag_aliases0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1R_B1R_NCNCNCNvMs_NtNtB17_6parser6parserNtB4T_6Parser29possible_long_flag_subcommand000E0E0B17_.exit.i.i.i.i.i31.i.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i.i23.i.i, %.lr.ph.i17.i.i
  %i.tg = icmp eq ptr %i.sp, %i.rp
  br i1 %i.tg, label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser29possible_long_flag_subcommand.exit.i, label %.lr.ph.i17.i.i

_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser29possible_long_flag_subcommand.exit.i: ; preds = %.loopexit.i32.i.i, %bb.al, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command16find_long_subcmd.exit.i.i
  %.merged.i.i = phi { ptr, i64 } [ %i.ro, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command16find_long_subcmd.exit.i.i ], [ %.merged.i.i.i, %bb.al ], [ %.merged.i.i.i, %.loopexit.i32.i.i ] ; 2 uses
  %i.th = extractvalue { ptr, i64 } %.merged.i.i, 0 ; 2 uses
  %i.ti = extractvalue { ptr, i64 } %.merged.i.i, 1 ; 9 uses
  %.not79.i = icmp eq ptr %i.th, null
  br i1 %.not79.i, label %bb.bd, label %bb.bb

bb.an:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionTReRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEE6filterNCNvMs_NtNtBS_6parser6parserNtB1Q_6Parser14parse_long_args_0EBS_.exit.thread197.i
  %.not83.i = icmp eq ptr %i.ln, null
  br i1 %.not83.i, label %bb.at, label %bb.ap

bb.ao:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionTReRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEE6filterNCNvMs_NtNtBS_6parser6parserNtB1Q_6Parser14parse_long_args_0EBS_.exit.thread197.i
  %i.tj = icmp ne ptr %i.ln, null
  call fastcc void @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15parse_opt_value(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.fv, ptr noundef nonnull align 8 dereferenceable(40) %0, i8 noundef 1, ptr noalias nofree noundef readonly captures(address, read_provenance) %i.ln, i64 %i.lo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(600) %.sroa.9.0.i618, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1, i1 noundef zeroext %i.tj) #43, !noalias !10367
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser14parse_long_arg.exit

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !10303
  call fastcc void @_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command14required_graph(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.jy) #43, !noalias !10303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10303
  %.val98.i = load ptr, ptr %i.ib, align 8, !alias.scope !10298, !noalias !10368, !nonnull !11, !noundef !11 ; 2 uses
  %.val99.i = load i64, ptr %i.ic, align 8, !alias.scope !10298, !noalias !10368, !noundef !11
  %i.tk = getelementptr inbounds nuw [16 x i8], ptr %.val98.i, i64 %.val99.i
  store ptr %.val98.i, ptr %i.h, align 8, !noalias !10303
  store ptr %i.tk, ptr %.sroa.018.sroa.4.0..sroa_idx.i, align 8, !noalias !10303
  store ptr %1, ptr %.sroa.018.sroa.5.0..sroa_idx.i, align 8, !noalias !10303
  store ptr %i.jy, ptr %.sroa.419.0..sroa_idx.i620, align 8, !noalias !10303
  store ptr %i.i, ptr %.sroa.520.0..sroa_idx.i, align 8, !noalias !10303
  %i.tl = call fastcc { ptr, i64 } @_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterIB12_INtNtNtBa_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMs_NtNtB1Y_6parser6parserNtB2J_6Parser14parse_long_args0_0ENCB2E_s1_0EENtNtNtB8_6traits8iterator8Iterator4nextB1Y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h) #43, !noalias !10369 ; 2 uses
  %i.tm = extractvalue { ptr, i64 } %i.tl, 0      ; 2 uses
  %.not.i133.i = icmp eq ptr %i.tm, null
  br i1 %.not.i133.i, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtB2k_6filter6FilterIB3a_INtNtNtB2o_5slice4iter4IterB11_ENCNvMs_NtNtB17_6parser6parserNtB4e_6Parser14parse_long_args0_0ENCB49_s1_0EEE9from_iterB17_.exit.thread.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i621

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i621: ; preds = %bb.ap
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !10370
  %i.tn = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 64, i64 noundef range(i64 1, 9) 8) #43, !noalias !10370 ; 5 uses
  %i.to = icmp eq ptr %i.tn, null
  br i1 %i.to, label %bb.aq, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i622

bb.aq:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i621
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 64) #46, !noalias !10371
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i622: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i621
  %i.tp = extractvalue { ptr, i64 } %i.tl, 1
  store ptr %i.tm, ptr %i.tn, align 8, !noalias !10371
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tn, i64 8
  store i64 %i.tp, ptr %i.tq, align 8, !noalias !10371
  store i64 4, ptr %i.e, align 8, !noalias !10303
  store ptr %i.tn, ptr %.sroa.4.0..sroa_idx.i.i623, align 8, !noalias !10303
  store i64 1, ptr %.sroa.64.0..sroa_idx.i.i624, align 8, !noalias !10303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false), !noalias !10373
  %i.tr = call fastcc { ptr, i64 } @_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterIB12_INtNtNtBa_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMs_NtNtB1Y_6parser6parserNtB2J_6Parser14parse_long_args0_0ENCB2E_s1_0EENtNtNtB8_6traits8iterator8Iterator4nextB1Y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d) #43, !noalias !10374 ; 2 uses
  %i.ts = extractvalue { ptr, i64 } %i.tr, 0      ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.ts, null
  br i1 %.not5.i.i.i.i, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtB2k_6filter6FilterIB3a_INtNtNtB2o_5slice4iter4IterB11_ENCNvMs_NtNtB17_6parser6parserNtB4e_6Parser14parse_long_args0_0ENCB49_s1_0EEE9from_iterB17_.exit.i.thread, label %.lr.ph.i.i.i134.i

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtB2k_6filter6FilterIB3a_INtNtNtB2o_5slice4iter4IterB11_ENCNvMs_NtNtB17_6parser6parserNtB4e_6Parser14parse_long_args0_0ENCB49_s1_0EEE9from_iterB17_.exit.i.thread: ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i622
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10303
  %i.tt = getelementptr inbounds nuw i8, ptr %.sroa.9.0.i618, i64 536
  %.val.i6272953 = load ptr, ptr %i.tt, align 8, !noalias !10368, !nonnull !11, !noundef !11
  %i.tu = getelementptr i8, ptr %.sroa.9.0.i618, i64 544
  %.val88.i2954 = load i64, ptr %i.tu, align 8, !noalias !10368, !noundef !11
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i

.lr.ph.i.i.i134.i:                                ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i622, %bb.ar
  %i.tv = phi ptr [ %i.uc, %bb.ar ], [ %i.tn, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i622 ]
  %i.tw = phi i64 [ %i.ud, %bb.ar ], [ 4, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i622 ] ; 3 uses
  %i.tx = phi i64 [ %i.ug, %bb.ar ], [ 1, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i622 ] ; 4 uses
  %.pn.i.i.i.i = phi { ptr, i64 } [ %i.uh, %bb.ar ], [ %i.tr, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i622 ]
  %i.ty = phi ptr [ %i.ui, %bb.ar ], [ %i.ts, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i622 ]
  %i.tz = extractvalue { ptr, i64 } %.pn.i.i.i.i, 1
  %i.ua = icmp samesign ult i64 %i.tx, 576460752303423488
  call void @llvm.assume(i1 %i.ua)
  %i.ub = icmp eq i64 %i.tx, %i.tw
  br i1 %i.ub, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i.i.i.i637, label %bb.ar

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i.i.i.i637: ; preds = %.lr.ph.i.i.i134.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.tw, i64 noundef 1, i64 noundef 8, i64 noundef 16) #43, !noalias !10368
  %.pre6.i.i.i.i = load i64, ptr %i.e, align 8, !range !12, !noalias !10303
  %.pre.i135.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i623, align 8, !noalias !10303
  br label %bb.ar

bb.ar:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i.i.i.i637, %.lr.ph.i.i.i134.i
  %i.uc = phi ptr [ %i.tv, %.lr.ph.i.i.i134.i ], [ %.pre.i135.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i.i.i.i637 ] ; 2 uses
  %i.ud = phi i64 [ %i.tw, %.lr.ph.i.i.i134.i ], [ %.pre6.i.i.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i.i.i.i637 ]
  %i.ue = getelementptr inbounds nuw [16 x i8], ptr %i.uc, i64 %i.tx ; 2 uses
  store ptr %i.ty, ptr %i.ue, align 8, !noalias !10375
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 8
  store i64 %i.tz, ptr %i.uf, align 8, !noalias !10375
  %i.ug = add nuw nsw i64 %i.tx, 1                ; 4 uses
  store i64 %i.ug, ptr %.sroa.64.0..sroa_idx.i.i624, align 8, !noalias !10303
  %i.uh = call fastcc { ptr, i64 } @_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterIB12_INtNtNtBa_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMs_NtNtB1Y_6parser6parserNtB2J_6Parser14parse_long_args0_0ENCB2E_s1_0EENtNtNtB8_6traits8iterator8Iterator4nextB1Y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d) #43, !noalias !10374 ; 2 uses
  %i.ui = extractvalue { ptr, i64 } %i.uh, 0      ; 2 uses
  %.not.i.i7.i.i = icmp eq ptr %i.ui, null
  br i1 %.not.i.i7.i.i, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtB2k_6filter6FilterIB3a_INtNtNtB2o_5slice4iter4IterB11_ENCNvMs_NtNtB17_6parser6parserNtB4e_6Parser14parse_long_args0_0ENCB49_s1_0EEE9from_iterB17_.exit.i, label %.lr.ph.i.i.i134.i

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtB2k_6filter6FilterIB3a_INtNtNtB2o_5slice4iter4IterB11_ENCNvMs_NtNtB17_6parser6parserNtB4e_6Parser14parse_long_args0_0ENCB49_s1_0EEE9from_iterB17_.exit.thread.i: ; preds = %bb.ap
  store i64 0, ptr %i.e, align 8, !noalias !10303
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i623, align 8, !noalias !10303
  store i64 0, ptr %.sroa.64.0..sroa_idx.i.i624, align 8, !noalias !10303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10303
  %i.uj = getelementptr inbounds nuw i8, ptr %.sroa.9.0.i618, i64 536
  %.val362.i = load ptr, ptr %i.uj, align 8, !noalias !10368, !nonnull !11, !noundef !11
  %i.uk = getelementptr i8, ptr %.sroa.9.0.i618, i64 544
  %.val88363.i = load i64, ptr %i.uk, align 8, !noalias !10368, !noundef !11
  br label %bb.as

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtB2k_6filter6FilterIB3a_INtNtNtB2o_5slice4iter4IterB11_ENCNvMs_NtNtB17_6parser6parserNtB4e_6Parser14parse_long_args0_0ENCB49_s1_0EEE9from_iterB17_.exit.i: ; preds = %bb.ar
  %.pre308.i.pre = load i64, ptr %i.e, align 8, !range !12, !noalias !10303 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10372
  %i.ul = icmp eq i64 %i.ug, %.pre308.i.pre
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10303
  %i.um = getelementptr inbounds nuw i8, ptr %.sroa.9.0.i618, i64 536
  %.val.i627 = load ptr, ptr %i.um, align 8, !noalias !10368, !nonnull !11, !noundef !11 ; 2 uses
  %i.un = getelementptr i8, ptr %.sroa.9.0.i618, i64 544
  %.val88.i = load i64, ptr %i.un, align 8, !noalias !10368, !noundef !11 ; 2 uses
  br i1 %i.ul, label %bb.as, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i

bb.as:                                            ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtB2k_6filter6FilterIB3a_INtNtNtB2o_5slice4iter4IterB11_ENCNvMs_NtNtB17_6parser6parserNtB4e_6Parser14parse_long_args0_0ENCB49_s1_0EEE9from_iterB17_.exit.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtB2k_6filter6FilterIB3a_INtNtNtB2o_5slice4iter4IterB11_ENCNvMs_NtNtB17_6parser6parserNtB4e_6Parser14parse_long_args0_0ENCB49_s1_0EEE9from_iterB17_.exit.thread.i
  %.val88367.i = phi i64 [ %.val88363.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtB2k_6filter6FilterIB3a_INtNtNtB2o_5slice4iter4IterB11_ENCNvMs_NtNtB17_6parser6parserNtB4e_6Parser14parse_long_args0_0ENCB49_s1_0EEE9from_iterB17_.exit.thread.i ], [ %.val88.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtB2k_6filter6FilterIB3a_INtNtNtB2o_5slice4iter4IterB11_ENCNvMs_NtNtB17_6parser6parserNtB4e_6Parser14parse_long_args0_0ENCB49_s1_0EEE9from_iterB17_.exit.i ]
  %.val365.i = phi ptr [ %.val362.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtB2k_6filter6FilterIB3a_INtNtNtB2o_5slice4iter4IterB11_ENCNvMs_NtNtB17_6parser6parserNtB4e_6Parser14parse_long_args0_0ENCB49_s1_0EEE9from_iterB17_.exit.thread.i ], [ %.val.i627, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtB2k_6filter6FilterIB3a_INtNtNtB2o_5slice4iter4IterB11_ENCNvMs_NtNtB17_6parser6parserNtB4e_6Parser14parse_long_args0_0ENCB49_s1_0EEE9from_iterB17_.exit.i ]
  %i.uo = phi i64 [ 0, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtB2k_6filter6FilterIB3a_INtNtNtB2o_5slice4iter4IterB11_ENCNvMs_NtNtB17_6parser6parserNtB4e_6Parser14parse_long_args0_0ENCB49_s1_0EEE9from_iterB17_.exit.thread.i ], [ %.pre308.i.pre, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtB2k_6filter6FilterIB3a_INtNtNtB2o_5slice4iter4IterB11_ENCNvMs_NtNtB17_6parser6parserNtB4e_6Parser14parse_long_args0_0ENCB49_s1_0EEE9from_iterB17_.exit.i ]
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #42, !noalias !10368
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i: ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtB2k_6filter6FilterIB3a_INtNtNtB2o_5slice4iter4IterB11_ENCNvMs_NtNtB17_6parser6parserNtB4e_6Parser14parse_long_args0_0ENCB49_s1_0EEE9from_iterB17_.exit.i.thread, %bb.as, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtB2k_6filter6FilterIB3a_INtNtNtB2o_5slice4iter4IterB11_ENCNvMs_NtNtB17_6parser6parserNtB4e_6Parser14parse_long_args0_0ENCB49_s1_0EEE9from_iterB17_.exit.i
  %.val88366.i = phi i64 [ %.val88.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtB2k_6filter6FilterIB3a_INtNtNtB2o_5slice4iter4IterB11_ENCNvMs_NtNtB17_6parser6parserNtB4e_6Parser14parse_long_args0_0ENCB49_s1_0EEE9from_iterB17_.exit.i ], [ %.val88367.i, %bb.as ], [ %.val88.i2954, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtB2k_6filter6FilterIB3a_INtNtNtB2o_5slice4iter4IterB11_ENCNvMs_NtNtB17_6parser6parserNtB4e_6Parser14parse_long_args0_0ENCB49_s1_0EEE9from_iterB17_.exit.i.thread ]
  %.val364.i = phi ptr [ %.val.i627, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtB2k_6filter6FilterIB3a_INtNtNtB2o_5slice4iter4IterB11_ENCNvMs_NtNtB17_6parser6parserNtB4e_6Parser14parse_long_args0_0ENCB49_s1_0EEE9from_iterB17_.exit.i ], [ %.val365.i, %bb.as ], [ %.val.i6272953, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtB2k_6filter6FilterIB3a_INtNtNtB2o_5slice4iter4IterB11_ENCNvMs_NtNtB17_6parser6parserNtB4e_6Parser14parse_long_args0_0ENCB49_s1_0EEE9from_iterB17_.exit.i.thread ]
  %i.up = phi i64 [ %i.ug, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtB2k_6filter6FilterIB3a_INtNtNtB2o_5slice4iter4IterB11_ENCNvMs_NtNtB17_6parser6parserNtB4e_6Parser14parse_long_args0_0ENCB49_s1_0EEE9from_iterB17_.exit.i ], [ %i.uo, %bb.as ], [ 1, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtB2k_6filter6FilterIB3a_INtNtNtB2o_5slice4iter4IterB11_ENCNvMs_NtNtB17_6parser6parserNtB4e_6Parser14parse_long_args0_0ENCB49_s1_0EEE9from_iterB17_.exit.i.thread ] ; 2 uses
  %i.uq = load ptr, ptr %.sroa.4.0..sroa_idx.i.i623, align 8, !noalias !10303, !nonnull !11, !noundef !11
  %i.ur = getelementptr inbounds nuw [16 x i8], ptr %i.uq, i64 %i.up ; 2 uses
  store ptr %.val364.i, ptr %i.ur, align 8, !noalias !10376
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 8
  store i64 %.val88366.i, ptr %i.us, align 8, !noalias !10377
  %i.ut = add nuw nsw i64 %i.up, 1
  store i64 %i.ut, ptr %.sroa.64.0..sroa_idx.i.i624, align 8, !noalias !10303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10303
  call void @_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ln, i64 noundef %i.lo) #43, !noalias !10378
  %i.uu = load i64, ptr %i.g, align 8, !range !13, !noalias !10303, !noundef !11 ; 2 uses
  %.not84.i = icmp eq i64 %i.uu, -1
  %i.uv = load ptr, ptr %i.id, align 8, !noalias !10303 ; 2 uses
  %i.uw = load i64, ptr %i.ie, align 8, !noalias !10303 ; 7 uses
  br i1 %.not84.i, label %bb.au, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread206.i

bb.at:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10303
  store i64 0, ptr %i.f, align 8, !noalias !10303
  store ptr inttoptr (i64 8 to ptr), ptr %i.ij, align 8, !noalias !10303
  store i64 0, ptr %i.ik, align 8, !noalias !10303
  call fastcc void @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser5react(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %i.fv, ptr noundef nonnull align 8 dereferenceable(40) %0, i8 noundef 1, i8 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(600) %.sroa.9.0.i618, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f, i64 noundef 0, i64 undef, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1) #43, !noalias !10379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10303
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser14parse_long_arg.exit

bb.au:                                            ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i
  %.not.i136.i = icmp slt i64 %i.uw, 0
  br i1 %.not.i136.i, label %bb.aw, label %bb.av, !prof !21

bb.av:                                            ; preds = %bb.au
  %i.ux = icmp eq i64 %i.uw, 0
  br i1 %i.ux, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread206.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i636

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i636: ; preds = %bb.av
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !10380
  %i.uy = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.uw, i64 noundef range(i64 1, 9) 1) #43, !noalias !10380 ; 3 uses
  %i.uz = icmp eq ptr %i.uy, null
  br i1 %i.uz, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i636, %bb.au
  %.sroa.4167.0.ph.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i636 ], [ 0, %bb.au ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4167.0.ph.i, i64 %i.uw) #46, !noalias !10378
  unreachable

bb.ax:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i636
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.uy, ptr nonnull align 1 %i.uv, i64 %i.uw, i1 false), !noalias !10378
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread206.i

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread206.i: ; preds = %bb.ax, %bb.av, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i
  %.sroa.552.0.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.av ], [ %i.uy, %bb.ax ], [ %i.uv, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i ]
  %.sroa.050.0.i = phi i64 [ 0, %bb.av ], [ %i.uw, %bb.ax ], [ %i.uu, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10381
  store i64 0, ptr %i.c, align 8, !noalias !10381
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i137.i, align 8, !noalias !10381
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i628, align 8, !noalias !10381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10381
  store i64 1610612768, ptr %i.if, align 8, !noalias !10381
  store ptr %i.c, ptr %i.b, align 8, !noalias !10381
  store ptr @204, ptr %i.ig, align 8, !noalias !10381
  %i.va = call noundef zeroext i1 @_RNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3ArgNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(600) %.sroa.9.0.i618, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #43, !noalias !10382
  br i1 %i.va, label %bb.ay, label %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit.i, !prof !19

bb.ay:                                            ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread206.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @356, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @106, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @358) #44, !noalias !10383
  unreachable

_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit.i: ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread206.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx.i629, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !10384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10381
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.661.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !10384
  store i64 %.sroa.050.0.i, ptr %i.fv, align 8, !alias.scope !10297, !noalias !10384
  store ptr %.sroa.552.0.i, ptr %.sroa.459.0..sroa_idx.i, align 8, !alias.scope !10297, !noalias !10384
  store i64 %i.uw, ptr %.sroa.560.0..sroa_idx.i, align 8, !alias.scope !10297, !noalias !10384
  call void @llvm.experimental.noalias.scope.decl(metadata !10385)
  call void @llvm.experimental.noalias.scope.decl(metadata !10386)
  %.val.i.i138.i = load ptr, ptr %i.ih, align 8, !alias.scope !10387, !noalias !10303, !nonnull !11, !noundef !11 ; 2 uses
  %.val1.i.i.i630 = load i64, ptr %i.ii, align 8, !alias.scope !10387, !noalias !10303, !noundef !11 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10388)
  %i.vb = icmp eq i64 %.val1.i.i.i630, 0
  br i1 %i.vb, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBK_2id2IdEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_.exit.i.i.i633, label %.lr.ph.i.i.i.i139.i

.lr.ph.i.i.i.i139.i:                              ; preds = %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBG_2id2IdEEBI_.exit.i.i.i.i.i632
  %.sroa.0.04.i.i.i.i.i631 = phi i64 [ %i.vd, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBG_2id2IdEEBI_.exit.i.i.i.i.i632 ], [ 0, %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit.i ] ; 2 uses
  %i.vc = getelementptr inbounds nuw [40 x i8], ptr %.val.i.i138.i, i64 %.sroa.0.04.i.i.i.i.i631 ; 2 uses
  %i.vd = add nuw nsw i64 %.sroa.0.04.i.i.i.i.i631, 1 ; 2 uses
  %.val.i.i.i.i140.i = load i64, ptr %i.vc, align 8, !range !12, !alias.scope !10388, !noalias !10389, !noundef !11 ; 2 uses
  %i.ve = icmp eq i64 %.val.i.i.i.i140.i, 0
  br i1 %i.ve, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBG_2id2IdEEBI_.exit.i.i.i.i.i632, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i.i.i.i139.i
  %i.vf = getelementptr i8, ptr %i.vc, i64 8
  %.val3.i.i.i.i141.i = load ptr, ptr %i.vf, align 8, !alias.scope !10388, !noalias !10389, !nonnull !11, !noundef !11
  %i.vg = shl nuw i64 %.val.i.i.i.i140.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i141.i, i64 noundef %i.vg, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !10390
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBG_2id2IdEEBI_.exit.i.i.i.i.i632

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBG_2id2IdEEBI_.exit.i.i.i.i.i632: ; preds = %bb.az, %.lr.ph.i.i.i.i139.i
  %i.vh = icmp eq i64 %i.vd, %.val1.i.i.i630
  br i1 %i.vh, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBK_2id2IdEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_.exit.i.i.i633, label %.lr.ph.i.i.i.i139.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBK_2id2IdEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_.exit.i.i.i633: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBG_2id2IdEEBI_.exit.i.i.i.i.i632, %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit.i
  %.val2.i.i.i634 = load i64, ptr %i.i, align 8, !range !12, !alias.scope !10387, !noalias !10303, !noundef !11 ; 2 uses
  %i.vi = icmp eq i64 %.val2.i.i.i634, 0
  br i1 %i.vi, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph10ChildGraphNtNtBG_2id2IdEEBI_.exit.i635, label %bb.ba

bb.ba:                                            ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBK_2id2IdEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_.exit.i.i.i633
  %i.vj = mul nuw i64 %.val2.i.i.i634, 40
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i138.i, i64 noundef %i.vj, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !10389
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph10ChildGraphNtNtBG_2id2IdEEBI_.exit.i635

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph10ChildGraphNtNtBG_2id2IdEEBI_.exit.i635: ; preds = %bb.ba, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBK_2id2IdEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_.exit.i.i.i633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10303
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser14parse_long_arg.exit

bb.bb:                                            ; preds = %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser29possible_long_flag_subcommand.exit.i
  %.not.i142.i = icmp slt i64 %i.ti, 0
  br i1 %.not.i142.i, label %bb.bg, label %bb.bc, !prof !21

bb.bc:                                            ; preds = %bb.bb
  %i.vk = icmp eq i64 %i.ti, 0
  br i1 %i.vk, label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser14parse_long_arg.exit.thread2955, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i143.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i143.i: ; preds = %bb.bc
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !10391
  %i.vl = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ti, i64 noundef range(i64 1, 9) 1) #43, !noalias !10391 ; 3 uses
  %i.vm = icmp eq ptr %i.vl, null
  br i1 %i.vm, label %bb.bg, label %bb.bh

bb.bd:                                            ; preds = %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser29possible_long_flag_subcommand.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !10392)
  %.idx4594.a = shl nuw nsw i64 %i.na, 5
  %i.vn = getelementptr inbounds nuw i8, ptr %i.my, i64 %.idx4594.a
  %i.vo = icmp eq i64 %i.na, 0
  br i1 %i.vo, label %_RINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB6_7MKeyMap3getjEB8_.exit.thread.i593, label %.lr.ph4526

bb.be:                                            ; preds = %.lr.ph4526
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vr, i64 32 ; 2 uses
  %i.vq = icmp eq ptr %i.vp, %i.vn
  br i1 %i.vq, label %_RINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB6_7MKeyMap3getjEB8_.exit.thread.i593, label %.lr.ph4526

.lr.ph4526:                                       ; preds = %bb.bd, %bb.be
  %i.vr = phi ptr [ %i.vp, %bb.be ], [ %i.my, %bb.bd ] ; 4 uses
  %.val.i.i.i.i590 = load i32, ptr %i.vr, align 8, !range !31, !noalias !10393, !noundef !11
  %i.vs = getelementptr i8, ptr %i.vr, i64 8
  %.val1.i.i.i.i591 = load i64, ptr %i.vs, align 8, !noalias !10393
  %i.vt = icmp eq i32 %.val.i.i.i.i590, 2
  %i.vu = icmp eq i64 %.val1.i.i.i.i591, %i.jp
  %.sroa.0.0.i.i.i.i146.i = select i1 %i.vt, i1 %i.vu, i1 false
  br i1 %.sroa.0.0.i.i.i.i146.i, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BS_NtBS_7MKeyMap3getjE0EBU_.exit.i.i592, label %bb.be

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BS_NtBS_7MKeyMap3getjE0EBU_.exit.i.i592: ; preds = %.lr.ph4526
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vr, i64 24
  %i.vw = load i64, ptr %i.vv, align 8, !noalias !10394, !noundef !11 ; 3 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.jy, i64 144
  %i.vy = load i64, ptr %i.vx, align 8, !alias.scope !10392, !noalias !10395, !noundef !11 ; 2 uses
  %i.vz = icmp ult i64 %i.vw, %i.vy
  br i1 %i.vz, label %bb.bi, label %bb.bf

bb.bf:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BS_NtBS_7MKeyMap3getjE0EBU_.exit.i.i592
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.vw, i64 noundef %i.vy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #44, !noalias !10394
  unreachable

bb.bg:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i143.i, %bb.bb
  %.sroa.4171.0.ph.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i143.i ], [ 0, %bb.bb ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4171.0.ph.i, i64 %i.ti) #46, !noalias !10303
  unreachable

bb.bh:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i143.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.vl, ptr nonnull align 1 %i.th, i64 %i.ti, i1 false), !noalias !10303
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser14parse_long_arg.exit.thread2955

bb.bi:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BS_NtBS_7MKeyMap3getjE0EBU_.exit.i.i592
  %i.wa = getelementptr inbounds nuw i8, ptr %i.jy, i64 136
  %i.wb = load ptr, ptr %i.wa, align 8, !alias.scope !10392, !noalias !10395, !nonnull !11, !noundef !11
  %i.wc = getelementptr inbounds nuw [600 x i8], ptr %i.wb, i64 %i.vw
  %i.wd = getelementptr i8, ptr %i.wc, i64 592
  %.val100.i = load i32, ptr %i.wd, align 8, !noalias !10303, !noundef !11
  %i.we = and i32 %.val100.i, 288
  %.sroa.0.0.i148.i = icmp eq i32 %i.we, 32
  br i1 %.sroa.0.0.i148.i, label %.sink.split, label %_RINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB6_7MKeyMap3getjEB8_.exit.thread.i593

_RINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB6_7MKeyMap3getjEB8_.exit.thread.i593: ; preds = %bb.be, %bb.bd, %bb.bi
  %.not.i149.i = icmp slt i64 %.sroa.8.0.copyload, 0
  br i1 %.not.i149.i, label %bb.bk, label %bb.bj, !prof !21

bb.bj:                                            ; preds = %_RINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB6_7MKeyMap3getjEB8_.exit.thread.i593
  %i.wf = icmp eq i64 %.sroa.8.0.copyload, 0
  br i1 %i.wf, label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser14parse_long_arg.exit.thread2955, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i150.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i150.i: ; preds = %bb.bj
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !10396
  %i.wg = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.8.0.copyload, i64 noundef range(i64 1, 9) 1) #43, !noalias !10396 ; 3 uses
  %i.wh = icmp eq ptr %i.wg, null
  br i1 %i.wh, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i150.i, %_RINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB6_7MKeyMap3getjEB8_.exit.thread.i593
  %.sroa.4175.0.ph.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i150.i ], [ 0, %_RINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB6_7MKeyMap3getjEB8_.exit.thread.i593 ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4175.0.ph.i, i64 %.sroa.8.0.copyload) #46, !noalias !10303
  unreachable

bb.bl:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i150.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.wg, ptr nonnull align 1 %.sroa.7.0.copyload, i64 %.sroa.8.0.copyload, i1 false), !noalias !10303
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser14parse_long_arg.exit.thread2955

bb.bm:                                            ; preds = %bb.y
  %.not.i153.i = icmp slt i64 %i.mw, 0
  br i1 %.not.i153.i, label %bb.bo, label %bb.bn, !prof !21

bb.bn:                                            ; preds = %bb.bm
  %i.wi = icmp eq i64 %i.mw, 0
  br i1 %i.wi, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit156.thread240.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i154.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i154.i: ; preds = %bb.bn
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !10397
  %i.wj = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.mw, i64 noundef range(i64 1, 9) 1) #43, !noalias !10397 ; 3 uses
  %i.wk = icmp eq ptr %i.wj, null
  br i1 %i.wk, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i154.i, %bb.bm
  %.sroa.4.0.ph.i638 = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i154.i ], [ 0, %bb.bm ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i638, i64 %i.mw) #46, !noalias !10303
  unreachable

bb.bp:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i154.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.wj, ptr nonnull align 1 %i.mv, i64 %i.mw, i1 false), !noalias !10303
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit156.thread240.i

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit156.thread240.i: ; preds = %bb.bp, %bb.bn, %bb.y
  %.sroa.543.0.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.bn ], [ %i.wj, %bb.bp ], [ %i.mv, %bb.y ]
  %.sroa.041.0.i = phi i64 [ 0, %bb.bn ], [ %i.mw, %bb.bp ], [ %i.mu, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10303
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser14parse_long_arg.exit.thread2955

_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser14parse_long_arg.exit.thread2955: ; preds = %bb.bj, %bb.bl, %bb.bc, %bb.bh, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit156.thread240.i
  %.sink3757 = phi i64 [ -9223372036854775801, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit156.thread240.i ], [ -9223372036854775808, %bb.bc ], [ -9223372036854775808, %bb.bh ], [ -9223372036854775801, %bb.bl ], [ -9223372036854775801, %bb.bj ] ; 2 uses
  %.sink3756 = phi i64 [ %.sroa.041.0.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit156.thread240.i ], [ %i.ti, %bb.bc ], [ %i.ti, %bb.bh ], [ %.sroa.8.0.copyload, %bb.bl ], [ %.sroa.8.0.copyload, %bb.bj ]
  %.sink3755 = phi ptr [ %.sroa.543.0.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit156.thread240.i ], [ inttoptr (i64 1 to ptr), %bb.bc ], [ %i.vl, %bb.bh ], [ %i.wg, %bb.bl ], [ inttoptr (i64 1 to ptr), %bb.bj ]
  %.sink = phi i64 [ %i.mw, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit156.thread240.i ], [ %i.ti, %bb.bc ], [ %i.ti, %bb.bh ], [ %.sroa.8.0.copyload, %bb.bl ], [ %.sroa.8.0.copyload, %bb.bj ]
  store i64 %.sink3757, ptr %i.fv, align 8, !alias.scope !10297, !noalias !10384
  store i64 %.sink3756, ptr %.sroa.459.0..sroa_idx.i, align 8, !alias.scope !10297, !noalias !10384
  store ptr %.sink3755, ptr %.sroa.560.0..sroa_idx.i, align 8, !alias.scope !10297, !noalias !10384
  store i64 %.sink, ptr %.sroa.661.0..sroa_idx.i, align 8, !alias.scope !10297, !noalias !10384
  br label %.sink.split

_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser14parse_long_arg.exit: ; preds = %bb.ao, %bb.at, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph10ChildGraphNtNtBG_2id2IdEEBI_.exit.i635
  %.pr.pr = load i64, ptr %i.fv, align 8, !noalias !10287 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.wl = icmp eq i64 %.pr.pr, -1
  %.sroa.3.0.copyload.i.pre2609 = load ptr, ptr %.sroa.459.0..sroa_idx.i, align 8, !noalias !10287 ; 2 uses
  br i1 %i.wl, label %bb.br, label %bb.bs

bb.bq:                                            ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fw), !noalias !10287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fo), !noalias !10287
  call void @_RNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB5_9ParsedArg8to_short(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.fo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fy) #43, !noalias !10284, !inline_history !8601
  %i.wm = load ptr, ptr %i.fo, align 8, !noalias !10287, !noundef !11
  %.not155.i = icmp eq ptr %i.wm, null
  br i1 %.not155.i, label %bb.gx, label %bb.fj

bb.br:                                            ; preds = %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser14parse_long_arg.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fv), !noalias !10287
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit417

.sink.split:                                      ; preds = %_RNvXs7_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7CommandINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexRNtNtNtB9_4util2id2IdE5index.exit109.i, %_RNvXs7_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7CommandINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexRNtNtNtB9_4util2id2IdE5index.exit.i648, %bb.bi, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser14parse_long_arg.exit.thread2955
  %.ph = phi i64 [ %.sink3757, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser14parse_long_arg.exit.thread2955 ], [ -9223372036854775803, %bb.bi ], [ -9223372036854775803, %_RNvXs7_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7CommandINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexRNtNtNtB9_4util2id2IdE5index.exit.i648 ], [ -9223372036854775803, %_RNvXs7_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7CommandINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexRNtNtNtB9_4util2id2IdE5index.exit109.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.3.0.copyload.i.pre26092958 = load ptr, ptr %.sroa.459.0..sroa_idx.i, align 8, !noalias !10287
  br label %bb.bs

bb.bs:                                            ; preds = %.sink.split, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser14parse_long_arg.exit
  %.sroa.3.0.copyload.i = phi ptr [ %.sroa.3.0.copyload.i.pre2609, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser14parse_long_arg.exit ], [ %.sroa.3.0.copyload.i.pre26092958, %.sink.split ] ; 7 uses
  %.sroa.0686.10818 = phi i8 [ 1, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser14parse_long_arg.exit ], [ %.sroa.0686.01812, %.sink.split ] ; 3 uses
  %i.wn = phi i64 [ %.pr.pr, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser14parse_long_arg.exit ], [ %.ph, %.sink.split ]
  %.fr = freeze i64 %i.wn                         ; 4 uses
  %.sroa.737.0.copyload.i = load i64, ptr %.sroa.560.0..sroa_idx.i, align 8, !noalias !10287 ; 5 uses
  %.sroa.8.sroa.0.0.copyload.i = load i64, ptr %.sroa.661.0..sroa_idx.i, align 8, !noalias !10287 ; 7 uses
  %.sroa.8.sroa.5.i.sroa.0.0.copyload = load ptr, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx.sroa_idx.i, align 8, !noalias !10287 ; 3 uses
  %.sroa.8.sroa.5.i.sroa.4.0.copyload = load i64, ptr %.sroa.8.sroa.5.i.sroa.4.0..sroa.8.sroa.5.0..sroa.8.0..sroa_idx.sroa_idx.i.sroa_idx, align 8, !noalias !10287
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.946.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx.i629, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fv), !noalias !10287
  %i.wo = icmp ne i64 %.fr, -9223372036854775804
  call void @llvm.assume(i1 %i.wo)
  %i.wp = icmp slt i64 %.fr, 0
  br i1 %i.wp, label %bb.bt, label %.thread819

bb.bt:                                            ; preds = %bb.bs
  %i.wq = and i64 %.fr, 9223372036854775807
  switch i64 %i.wq, label %bb.e [
    i64 0, label %bb.bu
    i64 1, label %bb.bw
    i64 2, label %bb.fh
    i64 3, label %bb.bx
    i64 4, label %.thread819
    i64 5, label %bb.cf
    i64 6, label %bb.cg
    i64 7, label %bb.cn
    i64 8, label %bb.fg
  ], !prof !10398

bb.bu:                                            ; preds = %bb.bt
  %.val198.i = load i64, ptr %i.fz, align 8, !range !13, !noalias !10287, !noundef !11 ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 2 uses
  %i.ws = icmp sgt i64 %.val198.i, 0
  br i1 %i.ws, label %bb.bv, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsfu0rQaTkGUu_12clap_builder.exit580

bb.bv:                                            ; preds = %bb.bu
  %.val199.i = load ptr, ptr %i.wr, align 8, !noalias !10287, !nonnull !11, !noundef !11
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val199.i, i64 noundef %.val198.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !10399
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsfu0rQaTkGUu_12clap_builder.exit580

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsfu0rQaTkGUu_12clap_builder.exit580: ; preds = %bb.bu, %bb.bv
  store ptr %.sroa.3.0.copyload.i, ptr %i.fz, align 8, !noalias !10287
  store i64 %.sroa.737.0.copyload.i, ptr %i.wr, align 8, !noalias !10287
  %.sroa.558.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store i64 %.sroa.8.sroa.0.0.copyload.i, ptr %.sroa.558.0..sroa_idx.i, align 8, !noalias !10287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fw), !noalias !10287
  br label %bb.q

bb.bw:                                            ; preds = %bb.bt
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i) ]
  br label %bb.fh

bb.bx:                                            ; preds = %bb.bt
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @248) #44, !noalias !10284, !inline_history !8601
  unreachable

.thread819:                                       ; preds = %bb.bs, %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fr), !noalias !10287
  store i64 %.fr, ptr %i.fr, align 8, !noalias !10287
  %.sroa.3.0..sroa_idx33.i = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  store ptr %.sroa.3.0.copyload.i, ptr %.sroa.3.0..sroa_idx33.i, align 8, !noalias !10287
  %.sroa.737.0..sroa_idx38.i = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  store i64 %.sroa.737.0.copyload.i, ptr %.sroa.737.0..sroa_idx38.i, align 8, !noalias !10287
  %i.wt = call fastcc noundef align 8 ptr @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15resolve_pending(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1) #43, !inline_history !8601 ; 2 uses
  %i.wu = icmp eq ptr %i.wt, null
  br i1 %i.wu, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit577, label %bb.by

bb.by:                                            ; preds = %.thread819
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEBF_(ptr nonnull %i.wt) #43, !noalias !10284
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit577

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit577: ; preds = %.thread819, %bb.by
  %i.wv = load ptr, ptr %i.gc, align 8, !alias.scope !10284, !noalias !10288, !nonnull !11, !align !17, !noundef !11 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fq), !noalias !10287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fp), !noalias !10287
  call void @llvm.experimental.noalias.scope.decl(metadata !10400)
  call void @llvm.experimental.noalias.scope.decl(metadata !10401)
  call void @llvm.experimental.noalias.scope.decl(metadata !10402), !noalias !10284
  call void @llvm.experimental.noalias.scope.decl(metadata !10403), !noalias !10284
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 232
  %i.wx = load ptr, ptr %i.ww, align 8, !alias.scope !10404, !noalias !10405, !nonnull !11, !noundef !11 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wv, i64 240
  %i.wz = load i64, ptr %i.wy, align 8, !alias.scope !10404, !noalias !10405, !noundef !11 ; 2 uses
  %.idx4599.a = shl nuw nsw i64 %i.wz, 4
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wx, i64 %.idx4599.a
  %i.xb = icmp eq i64 %i.wz, 0
  br i1 %i.xb, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit576, label %.lr.ph4569.a

bb.bz:                                            ; preds = %.lr.ph4569.a
  %i.xc = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i5684568, i64 16 ; 2 uses
  %i.xd = add i64 %.sroa.8.0.i.i.i5674567, 1
  %i.xe = icmp eq ptr %i.xc, %i.xa
  br i1 %i.xe, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit576, label %.lr.ph4569.a

.lr.ph4569.a:                                     ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit577, %bb.bz
  %.sroa.0.01.i.i.i5684568 = phi ptr [ %i.xc, %bb.bz ], [ %i.wx, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit577 ] ; 2 uses
  %.sroa.8.0.i.i.i5674567 = phi i64 [ %i.xd, %bb.bz ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit577 ] ; 4 uses
  %.val.i.i.i569 = load i128, ptr %.sroa.0.01.i.i.i5684568, align 8, !noalias !10406
  %i.xf = icmp eq i128 %.val.i.i.i569, -100310019091698447603793328749864812255
  br i1 %i.xf, label %bb.ca, label %bb.bz

bb.ca:                                            ; preds = %.lr.ph4569.a
  %i.xg = getelementptr inbounds nuw i8, ptr %i.wv, i64 264
  %i.xh = load i64, ptr %i.xg, align 8, !alias.scope !10404, !noalias !10405, !noundef !11 ; 2 uses
  %i.xi = icmp ult i64 %.sroa.8.0.i.i.i5674567, %i.xh
  br i1 %i.xi, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.0.i.i.i5674567, i64 noundef %i.xh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #44, !noalias !10406
  unreachable

bb.cc:                                            ; preds = %bb.ca
  %i.xj = getelementptr inbounds nuw i8, ptr %i.wv, i64 256
  %i.xk = load ptr, ptr %i.xj, align 8, !alias.scope !10404, !noalias !10405, !nonnull !11, !noundef !11
  %i.xl = getelementptr inbounds nuw [32 x i8], ptr %i.xk, i64 %.sroa.8.0.i.i.i5674567 ; 2 uses
  %.val5.i.i570 = load ptr, ptr %i.xl, align 8, !noalias !10407, !nonnull !11, !noundef !11
  %i.xm = getelementptr i8, ptr %i.xl, i64 8
  %.val6.i.i571 = load ptr, ptr %i.xm, align 8, !noalias !10407, !nonnull !11, !align !17, !noundef !11 ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %.val6.i.i571, i64 16
  %i.xo = load i64, ptr %i.xn, align 8, !range !18, !invariant.load !11, !noalias !10407
  %i.xp = add nsw i64 %i.xo, -1
  %i.xq = and i64 %i.xp, -16
  %i.xr = getelementptr inbounds nuw i8, ptr %.val5.i.i570, i64 %i.xq
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !10407
  %i.xt = getelementptr inbounds nuw i8, ptr %.val6.i.i571, i64 24
  %i.xu = load ptr, ptr %i.xt, align 8, !invariant.load !11, !noalias !10407, !nonnull !11
  call void %i.xu(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.k, ptr noundef nonnull %i.xs) #45, !noalias !10407, !inline_history !8796
  %i.xv = load i128, ptr %i.k, align 16, !noalias !10407, !noundef !11
  %.not.i.i572 = icmp eq i128 %i.xv, -100310019091698447603793328749864812255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !10407
  br i1 %.not.i.i572, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit576, label %bb.cd, !prof !16

bb.cd:                                            ; preds = %bb.cc
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !noalias !10407
  unreachable

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit576: ; preds = %bb.bz, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit577, %bb.cc
  %.sroa.0.0.i.i573 = phi ptr [ %i.xs, %bb.cc ], [ null, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit577 ], [ null, %bb.bz ] ; 2 uses
  %.not.i574 = icmp eq ptr %.sroa.0.0.i.i573, null
  %..i575 = select i1 %.not.i574, ptr @99, ptr %.sroa.0.0.i.i573 ; 5 uses
  store ptr %i.wv, ptr %i.fp, align 8, !alias.scope !10400, !noalias !10408
  %i.xw = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store ptr %..i575, ptr %i.xw, align 8, !alias.scope !10400, !noalias !10408
  %i.xx = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  store ptr null, ptr %i.xx, align 8, !alias.scope !10400, !noalias !10408
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.sroa.5.i.sroa.0.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !10409
  store i64 0, ptr %i.o, align 8, !alias.scope !10410, !noalias !10409
  %.sroa.42.0..sroa_idx.i.i548 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i548, align 8, !alias.scope !10410, !noalias !10409
  %.sroa.53.0..sroa_idx.i.i549 = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i549, align 8, !alias.scope !10410, !noalias !10409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !10409
  %i.xy = getelementptr inbounds nuw i8, ptr %..i575, i64 28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.n, ptr noundef nonnull align 2 dereferenceable(14) %i.xy, i64 14, i1 false), !noalias !10409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !10409
  %.sroa.0.0.copyload.i550 = load i8, ptr %i.xy, align 2, !noalias !10409
  %.sroa.7.0..sroa_idx.i551 = getelementptr inbounds nuw i8, ptr %..i575, i64 32
  %.sroa.7.0.copyload.i552 = load i8, ptr %.sroa.7.0..sroa_idx.i551, align 2, !noalias !10409
  %.sroa.11.0..sroa_idx.i553 = getelementptr inbounds nuw i8, ptr %..i575, i64 36
  %.sroa.11.0.copyload.i554 = load i8, ptr %.sroa.11.0..sroa_idx.i553, align 2, !noalias !10409
  %.sroa.15.0..sroa_idx.i555 = getelementptr inbounds nuw i8, ptr %..i575, i64 40
  %.sroa.15.0.copyload.i556 = load i16, ptr %.sroa.15.0..sroa_idx.i555, align 2, !noalias !10409
  %.not.i.i557 = icmp eq i8 %.sroa.0.0.copyload.i550, -1
  %.not5.i.i558 = icmp eq i8 %.sroa.7.0.copyload.i552, -1
  %or.cond.i559 = select i1 %.not.i.i557, i1 %.not5.i.i558, i1 false
  %.not7.i.i560 = icmp eq i8 %.sroa.11.0.copyload.i554, -1
end_hunk_3
begin_hunk_4_@_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16get_matches_with:bb.a
  store ptr %..i543, ptr %i.zj, align 8, !alias.scope !10414, !noalias !10422
  %i.zk = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  store ptr null, ptr %i.zk, align 8, !alias.scope !10414, !noalias !10422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !10423
  store i64 0, ptr %i.t, align 8, !alias.scope !10424, !noalias !10423
  %.sroa.42.0..sroa_idx.i.i516 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i516, align 8, !alias.scope !10424, !noalias !10423
  %.sroa.53.0..sroa_idx.i.i517 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i517, align 8, !alias.scope !10424, !noalias !10423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !10423
  %i.zl = getelementptr inbounds nuw i8, ptr %..i543, i64 28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.s, ptr noundef nonnull align 2 dereferenceable(14) %i.zl, i64 14, i1 false), !noalias !10423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !10423
  %.sroa.0.0.copyload.i518 = load i8, ptr %i.zl, align 2, !noalias !10423
  %.sroa.7.0..sroa_idx.i519 = getelementptr inbounds nuw i8, ptr %..i543, i64 32
  %.sroa.7.0.copyload.i520 = load i8, ptr %.sroa.7.0..sroa_idx.i519, align 2, !noalias !10423
  %.sroa.11.0..sroa_idx.i521 = getelementptr inbounds nuw i8, ptr %..i543, i64 36
  %.sroa.11.0.copyload.i522 = load i8, ptr %.sroa.11.0..sroa_idx.i521, align 2, !noalias !10423
  %.sroa.15.0..sroa_idx.i523 = getelementptr inbounds nuw i8, ptr %..i543, i64 40
  %.sroa.15.0.copyload.i524 = load i16, ptr %.sroa.15.0..sroa_idx.i523, align 2, !noalias !10423
  %.not.i.i525 = icmp eq i8 %.sroa.0.0.copyload.i518, -1
  %.not5.i.i526 = icmp eq i8 %.sroa.7.0.copyload.i520, -1
  %or.cond.i527 = select i1 %.not.i.i525, i1 %.not5.i.i526, i1 false
  %.not7.i.i528 = icmp eq i8 %.sroa.11.0.copyload.i522, -1
  %or.cond35.i529 = select i1 %or.cond.i527, i1 %.not7.i.i528, i1 false
  %i.zm = icmp eq i16 %.sroa.15.0.copyload.i524, 0
  %or.cond36.i530 = select i1 %or.cond35.i529, i1 %i.zm, i1 false ; 2 uses
  %spec.select.i531 = select i1 %or.cond36.i530, ptr inttoptr (i64 1 to ptr), ptr @139
  %spec.select38.i532 = select i1 %or.cond36.i530, i64 0, i64 4
  store ptr %spec.select.i531, ptr %i.r, align 8, !noalias !10423, !captures !22
  %i.zn = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %spec.select38.i532, ptr %i.zn, align 8, !noalias !10423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !10423
  store ptr %i.s, ptr %i.q, align 8, !noalias !10423
  %.sroa.48.0..sroa_idx.i533 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXs8_NtCscy4Zx2DW6cp_7anstyle5styleNtB5_12StyleDisplayNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.48.0..sroa_idx.i533, align 8, !noalias !10423
  %i.zo = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.r, ptr %i.zo, align 8, !noalias !10423
  %.sroa.412.0..sroa_idx.i534 = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.412.0..sroa_idx.i534, align 8, !noalias !10423
  %i.zp = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @140, ptr noundef nonnull %i.q) #43, !noalias !10423, !inline_history !8803 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !10423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !10423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !10423
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage20write_usage_no_title(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fs, ptr noalias nofree noundef align 8 dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0) #43
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8trim_end(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #43, !noalias !10425, !inline_history !8803
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ft, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !10426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !10423
  %i.zq = call fastcc noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error9no_equalsB4_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.yi, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.fu, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.ft) #43, !noalias !10284, !inline_history !8601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ft), !noalias !10287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs), !noalias !10287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fu), !noalias !10287
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit417

bb.cn:                                            ; preds = %bb.bt
  %i.zr = ptrtoint ptr %.sroa.3.0.copyload.i to i64
  %i.zs = call fastcc noundef align 8 ptr @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15resolve_pending(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1) #43, !inline_history !8601 ; 2 uses
  %i.zt = icmp eq ptr %i.zs, null
  br i1 %i.zt, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit515, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEBF_(ptr nonnull %i.zs) #43, !noalias !10284
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit515

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit515: ; preds = %bb.cn, %bb.co
  %i.zu = call { ptr, ptr } @_RNvMCs3RZUOUhPFQ6_8clap_lexNtB2_7RawArgs9remaining(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ga) #43, !noalias !10284, !inline_history !8601 ; 2 uses
  %i.zv = extractvalue { ptr, ptr } %i.zu, 0      ; 5 uses
  %i.zw = extractvalue { ptr, ptr } %i.zu, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.zw) ], !noalias !10284
  %i.zx = ptrtoint ptr %i.zw to i64
  %i.zy = ptrtoint ptr %i.zv to i64
  %i.zz = sub nuw i64 %i.zx, %i.zy                ; 3 uses
  %i.aaa = udiv i64 %i.zz, 24                     ; 6 uses
  %i.aab = shl nuw i64 %i.aaa, 4                  ; 2 uses
  %.not.i.i.i511 = icmp ugt i64 %i.zz, -4611686018427387928
  br i1 %.not.i.i.i511, label %bb.cq, label %bb.cp, !prof !21

bb.cp:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit515
  %i.aac = icmp eq ptr %i.zw, %i.zv
  br i1 %i.aac, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i512

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i512: ; preds = %bb.cp
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !10427
  %i.aad = call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.aab, i64 noundef range(i64 1, 9) 8) #43, !noalias !10427 ; 6 uses
  %i.aae = icmp eq ptr %i.aad, null
  br i1 %i.aae, label %bb.cq, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i512
  %xtraiter5352 = and i64 %i.aaa, 1
  %.off = add i64 %i.zz, -24
  %i.aaf = icmp ult i64 %.off, 24
  br i1 %i.aaf, label %.preheader.i.i.i.epil.preheader, label %.preheader.i.i.i.preheader.new

.preheader.i.i.i.preheader.new:                   ; preds = %.preheader.i.i.i.preheader
  %unroll_iter5355 = and i64 %i.aaa, 1152921504606846974
  br label %.preheader.i.i.i

bb.cq:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i512, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit515
  %.sroa.10.0.ph.i.i = phi i64 [ %i.aab, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i512 ], [ undef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit515 ]
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i512 ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit515 ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %.sroa.10.0.ph.i.i) #46, !noalias !10428
  unreachable

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader.new
  %i.aag = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %i.aas, %.preheader.i.i.i ] ; 4 uses
  %niter5356 = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %niter5356.next.1, %.preheader.i.i.i ]
  %i.aah = getelementptr inbounds nuw [24 x i8], ptr %i.zv, i64 %i.aag ; 2 uses
  %i.aai = getelementptr i8, ptr %i.aah, i64 8
  %.val11.i.i.i.i.i.i = load ptr, ptr %i.aai, align 8, !noalias !10429, !nonnull !11, !noundef !11
  %i.aaj = getelementptr i8, ptr %i.aah, i64 16
  %.val12.i.i.i.i.i.i = load i64, ptr %i.aaj, align 8, !noalias !10429, !noundef !11
  %i.aak = getelementptr inbounds nuw [16 x i8], ptr %i.aad, i64 %i.aag ; 2 uses
  store ptr %.val11.i.i.i.i.i.i, ptr %i.aak, align 8, !noalias !10430, !captures !22
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 8
  store i64 %.val12.i.i.i.i.i.i, ptr %i.aal, align 8, !noalias !10431
  %i.aam = or disjoint i64 %i.aag, 1              ; 2 uses
  %i.aan = getelementptr inbounds nuw [24 x i8], ptr %i.zv, i64 %i.aam ; 2 uses
  %i.aao = getelementptr i8, ptr %i.aan, i64 8
  %.val11.i.i.i.i.i.i.1 = load ptr, ptr %i.aao, align 8, !noalias !10429, !nonnull !11, !noundef !11
  %i.aap = getelementptr i8, ptr %i.aan, i64 16
  %.val12.i.i.i.i.i.i.1 = load i64, ptr %i.aap, align 8, !noalias !10429, !noundef !11
  %i.aaq = getelementptr inbounds nuw [16 x i8], ptr %i.aad, i64 %i.aam ; 2 uses
  store ptr %.val11.i.i.i.i.i.i.1, ptr %i.aaq, align 8, !noalias !10430, !captures !22
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 8
  store i64 %.val12.i.i.i.i.i.i.1, ptr %i.aar, align 8, !noalias !10431
  %i.aas = add nuw i64 %i.aag, 2                  ; 2 uses
  %niter5356.next.1 = add i64 %niter5356, 2       ; 2 uses
  %niter5356.ncmp.1 = icmp eq i64 %niter5356.next.1, %unroll_iter5355
  br i1 %niter5356.ncmp.1, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit.loopexit.unr-lcssa, label %.preheader.i.i.i

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i
  %lcmp.mod5353.not = icmp eq i64 %xtraiter5352, 0
  br i1 %lcmp.mod5353.not, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit, label %.preheader.i.i.i.epil.preheader

.preheader.i.i.i.epil.preheader:                  ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit.loopexit.unr-lcssa, %.preheader.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %i.aas, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod5354 = trunc i64 %i.aaa to i1
  call void @llvm.assume(i1 %lcmp.mod5354)
  %i.aat = getelementptr inbounds nuw [24 x i8], ptr %i.zv, i64 %.epil.init ; 2 uses
  %i.aau = getelementptr i8, ptr %i.aat, i64 8
  %.val11.i.i.i.i.i.i.epil = load ptr, ptr %i.aau, align 8, !noalias !10429, !nonnull !11, !noundef !11
  %i.aav = getelementptr i8, ptr %i.aat, i64 16
  %.val12.i.i.i.i.i.i.epil = load i64, ptr %i.aav, align 8, !noalias !10429, !noundef !11
  %i.aaw = getelementptr inbounds nuw [16 x i8], ptr %i.aad, i64 %.epil.init ; 2 uses
  store ptr %.val11.i.i.i.i.i.i.epil, ptr %i.aaw, align 8, !noalias !10430, !captures !22
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 8
  store i64 %.val12.i.i.i.i.i.i.epil, ptr %i.aax, align 8, !noalias !10431
  br label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit: ; preds = %.preheader.i.i.i.epil.preheader, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit.loopexit.unr-lcssa, %bb.cp
  %.sroa.4.0.i8.i = phi i64 [ 0, %bb.cp ], [ %i.aaa, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit.loopexit.unr-lcssa ], [ %i.aaa, %.preheader.i.i.i.epil.preheader ] ; 3 uses
  %.sroa.10.0.i7.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.cp ], [ %i.aad, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit.loopexit.unr-lcssa ], [ %i.aad, %.preheader.i.i.i.epil.preheader ] ; 2 uses
  %i.aay = inttoptr i64 %.sroa.737.0.copyload.i to ptr ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10432)
  call void @llvm.experimental.noalias.scope.decl(metadata !10433)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  store ptr %i.aay, ptr %i.as, align 8, !noalias !10434
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  store i64 %.sroa.8.sroa.0.0.copyload.i, ptr %i.aaz, align 8, !noalias !10434
  %i.aba = load ptr, ptr %i.gc, align 8, !alias.scope !10432, !noalias !10435, !nonnull !11, !align !17, !noundef !11 ; 19 uses
  %i.abb = getelementptr i8, ptr %i.aba, i64 160  ; 2 uses
  %.val22.i418 = load ptr, ptr %i.abb, align 8, !noalias !10436, !nonnull !11, !noundef !11 ; 2 uses
  %i.abc = getelementptr i8, ptr %i.aba, i64 168  ; 2 uses
  %.val23.i = load i64, ptr %i.abc, align 8, !noalias !10436, !noundef !11 ; 2 uses
  %.idx4595 = shl nuw nsw i64 %.val23.i, 5
  %i.abd = getelementptr inbounds nuw i8, ptr %.val22.i418, i64 %.idx4595 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !10437
  %i.abe = icmp eq i64 %.val23.i, 0
  br i1 %i.abe, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1W_3map3MapINtNtNtB20_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B3D_NtB3D_7MKeyMap4keys0ENCNvMs0_NtNtB3F_6parser6parserNtB4Z_6Parser18did_you_mean_error0EE9from_iterB3F_.exit.i, label %.lr.ph4557

bb.cr:                                            ; preds = %.lr.ph4557
  %i.abf = icmp eq ptr %i.abh, %i.abd
  br i1 %i.abf, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1W_3map3MapINtNtNtB20_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B3D_NtB3D_7MKeyMap4keys0ENCNvMs0_NtNtB3F_6parser6parserNtB4Z_6Parser18did_you_mean_error0EE9from_iterB3F_.exit.i, label %.lr.ph4557

.lr.ph4557:                                       ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit, %bb.cr
  %i.abg = phi ptr [ %i.abh, %bb.cr ], [ %.val22.i418, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit ] ; 4 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10438)
  call void @llvm.experimental.noalias.scope.decl(metadata !10439)
  call void @llvm.experimental.noalias.scope.decl(metadata !10440)
  call void @llvm.experimental.noalias.scope.decl(metadata !10441)
  %i.abi = load i32, ptr %i.abg, align 8, !range !31, !alias.scope !10442, !noalias !10443, !noundef !11
  %i.abj = icmp eq i32 %i.abi, 1
  br i1 %i.abj, label %bb.cs, label %bb.cr

bb.cs:                                            ; preds = %.lr.ph4557
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !10444
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abg, i64 8
  %i.abl = load ptr, ptr %i.abk, align 8, !alias.scope !10442, !noalias !10443, !nonnull !11, !noundef !11
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abg, i64 16
  %i.abn = load i64, ptr %i.abm, align 8, !alias.scope !10442, !noalias !10443, !noundef !11
  call void @_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.abl, i64 noundef %i.abn) #43, !noalias !10445
  %i.abo = load i64, ptr %i.aj, align 8, !range !13, !noalias !10444, !noundef !11 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.abo, -1
  %i.abp = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.abq = load ptr, ptr %i.abp, align 8, !noalias !10444 ; 2 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.abs = load i64, ptr %i.abr, align 8, !noalias !10444 ; 7 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.ct, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i419

bb.ct:                                            ; preds = %bb.cs
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp slt i64 %i.abs, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.cv, label %bb.cu, !prof !21

bb.cu:                                            ; preds = %bb.ct
  %i.abt = icmp eq i64 %i.abs, 0
  br i1 %i.abt, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i419, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cu
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !10446
  %i.abu = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.abs, i64 noundef range(i64 1, 9) 1) #43, !noalias !10446 ; 3 uses
  %i.abv = icmp eq ptr %i.abu, null
  br i1 %i.abv, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.ct
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.ct ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i, i64 %i.abs) #46, !noalias !10445
  unreachable

bb.cw:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.abu, ptr nonnull align 1 %i.abq, i64 %i.abs, i1 false), !noalias !10445
  br label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i419

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i419: ; preds = %bb.cw, %bb.cu, %bb.cs
  %.sroa.5.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.cu ], [ %i.abu, %bb.cw ], [ %i.abq, %bb.cs ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.cu ], [ %i.abs, %bb.cw ], [ %i.abo, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !10444
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !10447
  %i.abw = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 96, i64 noundef range(i64 1, 9) 8) #43, !noalias !10447 ; 6 uses
  %i.abx = icmp eq ptr %i.abw, null
  br i1 %i.abx, label %bb.cx, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i

bb.cx:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i419
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 96) #46, !noalias !10448
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i419
  store i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i, ptr %i.abw, align 8, !noalias !10448
  %.sroa.412.0..sroa_idx.i.i420 = getelementptr inbounds nuw i8, ptr %i.abw, i64 8
  store ptr %.sroa.5.0.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.412.0..sroa_idx.i.i420, align 8, !noalias !10448
  %.sroa.513.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.abw, i64 16
  store i64 %i.abs, ptr %.sroa.513.0..sroa_idx.i.i, align 8, !noalias !10448
  store i64 4, ptr %i.ak, align 8, !noalias !10437
  %.sroa.4.0..sroa_idx.i.i421 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 3 uses
  store ptr %i.abw, ptr %.sroa.4.0..sroa_idx.i.i421, align 8, !noalias !10437
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !10437
  call void @llvm.experimental.noalias.scope.decl(metadata !10449)
  call void @llvm.experimental.noalias.scope.decl(metadata !10450)
  %i.aby = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.abz = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  br label %bb.cy

bb.cy:                                            ; preds = %bb.dh, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i
  %i.aca = phi ptr [ %i.abw, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i ], [ %i.act, %bb.dh ]
  %.sroa.8.0.copyload.i = phi i64 [ 1, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i ], [ %i.acv, %bb.dh ] ; 6 uses
  %.sroa.0.0.i.i.i.i422 = phi ptr [ %i.abh, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i ], [ %i.acd, %bb.dh ]
  br label %bb.cz

bb.cz:                                            ; preds = %bb.da, %bb.cy
  %i.acb = phi ptr [ %i.acd, %bb.da ], [ %.sroa.0.0.i.i.i.i422, %bb.cy ] ; 5 uses
  %i.acc = icmp eq ptr %i.acb, %i.abd
  br i1 %i.acc, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1D_3map3MapINtNtNtB1H_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B3k_NtB3k_7MKeyMap4keys0ENCNvMs0_NtNtB3m_6parser6parserNtB4G_6Parser18did_you_mean_error0EE11spec_extendB3m_.exit.i.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acb, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10451)
  call void @llvm.experimental.noalias.scope.decl(metadata !10452)
  call void @llvm.experimental.noalias.scope.decl(metadata !10453)
  call void @llvm.experimental.noalias.scope.decl(metadata !10454)
  %i.ace = load i32, ptr %i.acb, align 8, !range !31, !alias.scope !10455, !noalias !10456, !noundef !11
  %i.acf = icmp eq i32 %i.ace, 1
  br i1 %i.acf, label %bb.db, label %bb.cz

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !10457
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acb, i64 8
  %i.ach = load ptr, ptr %i.acg, align 8, !alias.scope !10455, !noalias !10456, !nonnull !11, !noundef !11
  %i.aci = getelementptr inbounds nuw i8, ptr %i.acb, i64 16
  %i.acj = load i64, ptr %i.aci, align 8, !alias.scope !10455, !noalias !10456, !noundef !11
  call void @_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ach, i64 noundef %i.acj) #43, !noalias !10458
  %i.ack = load i64, ptr %i.ai, align 8, !range !13, !noalias !10457, !noundef !11 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i423 = icmp eq i64 %i.ack, -1
  %i.acl = load ptr, ptr %i.aby, align 8, !noalias !10457 ; 2 uses
  %i.acm = load i64, ptr %i.abz, align 8, !noalias !10457 ; 7 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i423, label %bb.dc, label %bb.dg

bb.dc:                                            ; preds = %bb.db
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp slt i64 %i.acm, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.de, label %bb.dd, !prof !21

bb.dd:                                            ; preds = %bb.dc
  %i.acn = icmp eq i64 %i.acm, 0
  br i1 %i.acn, label %bb.dg, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dd
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !10459
  %i.aco = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.acm, i64 noundef range(i64 1, 9) 1) #43, !noalias !10459 ; 3 uses
  %i.acp = icmp eq ptr %i.aco, null
  br i1 %i.acp, label %bb.de, label %bb.df

bb.de:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dc
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.dc ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.acm) #46, !noalias !10458
  unreachable

bb.df:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aco, ptr nonnull align 1 %i.acl, i64 %i.acm, i1 false), !noalias !10458
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.dd, %bb.db
  %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.dd ], [ %i.aco, %bb.df ], [ %i.acl, %bb.db ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.dd ], [ %i.acm, %bb.df ], [ %i.ack, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !10457
  %i.acq = icmp samesign ult i64 %.sroa.8.0.copyload.i, 384307168202282326
  call void @llvm.assume(i1 %i.acq)
  %i.acr = load i64, ptr %i.ak, align 8, !range !12, !alias.scope !10460, !noalias !10437, !noundef !11
  %i.acs = icmp eq i64 %.sroa.8.0.copyload.i, %i.acr
  br i1 %i.acs, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i, label %bb.dh

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i: ; preds = %bb.dg
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak, i64 noundef %.sroa.8.0.copyload.i, i64 noundef 1, i64 noundef 8, i64 noundef 24) #43, !noalias !10448
  %.pre.i.i424 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i421, align 8, !alias.scope !10460, !noalias !10437
  br label %bb.dh

bb.dh:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i, %bb.dg
  %i.act = phi ptr [ %.pre.i.i424, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i ], [ %i.aca, %bb.dg ] ; 2 uses
  %i.acu = getelementptr inbounds nuw [24 x i8], ptr %i.act, i64 %.sroa.8.0.copyload.i ; 3 uses
  store i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.acu, align 8, !noalias !10461
  %.sroa.49.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.acu, i64 8
  store ptr %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.49.0..sroa_idx.i.i.i.i, align 8, !noalias !10461
  %.sroa.510.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.acu, i64 16
  store i64 %i.acm, ptr %.sroa.510.0..sroa_idx.i.i.i.i, align 8, !noalias !10461
  %i.acv = add nuw nsw i64 %.sroa.8.0.copyload.i, 1 ; 2 uses
  store i64 %i.acv, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !10460, !noalias !10437
  br label %bb.cy

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1D_3map3MapINtNtNtB1H_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B3k_NtB3k_7MKeyMap4keys0ENCNvMs0_NtNtB3m_6parser6parserNtB4G_6Parser18did_you_mean_error0EE11spec_extendB3m_.exit.i.i: ; preds = %bb.cz
  %.sroa.0.0.copyload.i425 = load i64, ptr %i.ak, align 8, !noalias !10434
  %.sroa.5.0.copyload.i426 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i421, align 8, !noalias !10434
  %.pre.i427 = load ptr, ptr %i.as, align 8, !noalias !10434
  %.pre193.i = load i64, ptr %i.aaz, align 8, !noalias !10434
  br label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1W_3map3MapINtNtNtB20_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B3D_NtB3D_7MKeyMap4keys0ENCNvMs0_NtNtB3F_6parser6parserNtB4Z_6Parser18did_you_mean_error0EE9from_iterB3F_.exit.i

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1W_3map3MapINtNtNtB20_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B3D_NtB3D_7MKeyMap4keys0ENCNvMs0_NtNtB3F_6parser6parserNtB4Z_6Parser18did_you_mean_error0EE9from_iterB3F_.exit.i: ; preds = %bb.cr, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1D_3map3MapINtNtNtB1H_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B3k_NtB3k_7MKeyMap4keys0ENCNvMs0_NtNtB3m_6parser6parserNtB4G_6Parser18did_you_mean_error0EE11spec_extendB3m_.exit.i.i
  %i.acw = phi i64 [ %.pre193.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1D_3map3MapINtNtNtB1H_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B3k_NtB3k_7MKeyMap4keys0ENCNvMs0_NtNtB3m_6parser6parserNtB4G_6Parser18did_you_mean_error0EE11spec_extendB3m_.exit.i.i ], [ %.sroa.8.sroa.0.0.copyload.i, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit ], [ %.sroa.8.sroa.0.0.copyload.i, %bb.cr ] ; 2 uses
  %i.acx = phi ptr [ %.pre.i427, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1D_3map3MapINtNtNtB1H_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B3k_NtB3k_7MKeyMap4keys0ENCNvMs0_NtNtB3m_6parser6parserNtB4G_6Parser18did_you_mean_error0EE11spec_extendB3m_.exit.i.i ], [ %i.aay, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit ], [ %i.aay, %bb.cr ] ; 2 uses
  %.sroa.8.0.i428 = phi i64 [ %.sroa.8.0.copyload.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1D_3map3MapINtNtNtB1H_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B3k_NtB3k_7MKeyMap4keys0ENCNvMs0_NtNtB3m_6parser6parserNtB4G_6Parser18did_you_mean_error0EE11spec_extendB3m_.exit.i.i ], [ 0, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit ], [ 0, %bb.cr ] ; 3 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.5.0.copyload.i426, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1D_3map3MapINtNtNtB1H_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B3k_NtB3k_7MKeyMap4keys0ENCNvMs0_NtNtB3m_6parser6parserNtB4G_6Parser18did_you_mean_error0EE11spec_extendB3m_.exit.i.i ], [ inttoptr (i64 8 to ptr), %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit ], [ inttoptr (i64 8 to ptr), %bb.cr ] ; 4 uses
  %.sroa.0.0.i429 = phi i64 [ %.sroa.0.0.copyload.i425, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1D_3map3MapINtNtNtB1H_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B3k_NtB3k_7MKeyMap4keys0ENCNvMs0_NtNtB3m_6parser6parserNtB4G_6Parser18did_you_mean_error0EE11spec_extendB3m_.exit.i.i ], [ 0, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit ], [ 0, %bb.cr ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !10437
  %.idx.i430 = mul nuw nsw i64 %.sroa.8.0.i428, 24
  %i.acy = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i, i64 %.idx.i430
  %i.acz = getelementptr i8, ptr %i.aba, i64 184
  %.val28.i431 = load ptr, ptr %i.acz, align 8, !noalias !10432, !nonnull !11, !noundef !11 ; 2 uses
  %i.ada = getelementptr i8, ptr %i.aba, i64 192
  %.val29.i432 = load i64, ptr %i.ada, align 8, !noalias !10432, !noundef !11 ; 2 uses
  %.idx4596 = mul nuw nsw i64 %.val29.i432, 712
  %i.adb = getelementptr inbounds nuw i8, ptr %.val28.i431, i64 %.idx4596 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !10462
  store i64 0, ptr %i.ah, align 8, !noalias !10462
  %i.adc = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.adc, align 8, !noalias !10462
  %i.add = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  store i64 0, ptr %i.add, align 8, !noalias !10462
  %i.ade = icmp eq i64 %.sroa.8.0.i428, 0         ; 2 uses
  br i1 %i.ade, label %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB6_6parserNtB3j_6Parser18did_you_mean_errors_0EEB8_.exit.thread.i.i, label %.lr.ph.i.i.i433

_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB6_6parserNtB3j_6Parser18did_you_mean_errors_0EEB8_.exit.thread.i.i: ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1W_3map3MapINtNtNtB20_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B3D_NtB3D_7MKeyMap4keys0ENCNvMs0_NtNtB3F_6parser6parserNtB4Z_6Parser18did_you_mean_error0EE9from_iterB3F_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !10462
  br label %bb.dt

.lr.ph.i.i.i433:                                  ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1W_3map3MapINtNtNtB20_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B3D_NtB3D_7MKeyMap4keys0ENCNvMs0_NtNtB3F_6parser6parserNtB4Z_6Parser18did_you_mean_error0EE9from_iterB3F_.exit.i, %bb.dk
  %i.adf = phi ptr [ %i.aex, %bb.dk ], [ inttoptr (i64 8 to ptr), %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1W_3map3MapINtNtNtB20_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B3D_NtB3D_7MKeyMap4keys0ENCNvMs0_NtNtB3F_6parser6parserNtB4Z_6Parser18did_you_mean_error0EE9from_iterB3F_.exit.i ] ; 2 uses
  %i.adg = phi i64 [ %i.aey, %bb.dk ], [ 0, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1W_3map3MapINtNtNtB20_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B3D_NtB3D_7MKeyMap4keys0ENCNvMs0_NtNtB3F_6parser6parserNtB4Z_6Parser18did_you_mean_error0EE9from_iterB3F_.exit.i ] ; 11 uses
  %i.adh = phi ptr [ %i.aez, %bb.dk ], [ inttoptr (i64 8 to ptr), %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1W_3map3MapINtNtNtB20_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B3D_NtB3D_7MKeyMap4keys0ENCNvMs0_NtNtB3F_6parser6parserNtB4Z_6Parser18did_you_mean_error0EE9from_iterB3F_.exit.i ] ; 3 uses
  %.sroa.0.051.i.i.i = phi ptr [ %i.adi, %bb.dk ], [ %.sroa.5.0.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1W_3map3MapINtNtNtB20_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B3D_NtB3D_7MKeyMap4keys0ENCNvMs0_NtNtB3F_6parser6parserNtB4Z_6Parser18did_you_mean_error0EE9from_iterB3F_.exit.i ] ; 3 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %.sroa.0.051.i.i.i, i64 24 ; 2 uses
  %i.adj = getelementptr i8, ptr %.sroa.0.051.i.i.i, i64 8
  %.val.i.i.i.i434 = load ptr, ptr %i.adj, align 8, !noalias !10463, !nonnull !11, !noundef !11 ; 2 uses
  %i.adk = getelementptr i8, ptr %.sroa.0.051.i.i.i, i64 16
  %.val3.i.i.i.i435 = load i64, ptr %i.adk, align 8, !noalias !10463, !noundef !11 ; 8 uses
  %i.adl = call noundef double @_RNvCsb8lMixXdhIO_6strsim4jaro(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.acx, i64 noundef %i.acw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i.i434, i64 noundef %.val3.i.i.i.i435) #43, !noalias !10464 ; 4 uses
  %i.adm = fcmp ogt double %i.adl, f0x3FE6666666666666
  br i1 %i.adm, label %bb.dl, label %bb.dk

._crit_edge.i.i.i436:                             ; preds = %bb.dk
  %.pre55.i.i.i = load ptr, ptr %i.adc, align 8, !noalias !10462 ; 10 uses
  %.pre56.i.i.i = load i64, ptr %i.ah, align 8, !range !12, !noalias !10462 ; 2 uses
  %i.adn = icmp ult i64 %i.aey, 288230376151711744
  call void @llvm.assume(i1 %i.adn)
  %.idx.i.i.i437 = shl nuw nsw i64 %i.aey, 5      ; 2 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %.pre55.i.i.i, i64 %.idx.i.i.i437
  %i.adp = shl i64 %.pre56.i.i.i, 5               ; 5 uses
  %i.adq = udiv i64 %i.adp, 24                    ; 3 uses
  %.not9.i.i.i.i.i.i.i.i = icmp eq i64 %i.aey, 0
  br i1 %.not9.i.i.i.i.i.i.i.i, label %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i438.preheader

.lr.ph.i.i.i.i.i.i.i.i438.preheader:              ; preds = %._crit_edge.i.i.i436
  %i.adr = add nsw i64 %.idx.i.i.i437, -32        ; 2 uses
  %i.ads = lshr exact i64 %i.adr, 5
  %i.adt = add nuw nsw i64 %i.ads, 1
  %xtraiter5357 = and i64 %i.adt, 7               ; 2 uses
  %lcmp.mod5358.not = icmp eq i64 %xtraiter5357, 0
  br i1 %lcmp.mod5358.not, label %.lr.ph.i.i.i.i.i.i.i.i438.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i438.prol

.lr.ph.i.i.i.i.i.i.i.i438.prol:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i438.preheader, %.lr.ph.i.i.i.i.i.i.i.i438.prol
  %.sroa.4.010.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.adx, %.lr.ph.i.i.i.i.i.i.i.i438.prol ], [ %.pre55.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i438.preheader ] ; 2 uses
  %i.adu = phi ptr [ %i.adv, %.lr.ph.i.i.i.i.i.i.i.i438.prol ], [ %.pre55.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i438.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i438.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i438.preheader ]
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adu, i64 32 ; 2 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adu, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.010.i.i.i.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(24) %i.adw, i64 24, i1 false), !noalias !10465
  %i.adx = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter5357
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i438.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i438.prol, !llvm.loop !8927

.lr.ph.i.i.i.i.i.i.i.i438.prol.loopexit:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i438.prol, %.lr.ph.i.i.i.i.i.i.i.i438.preheader
  %.lcssa4850.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i438.preheader ], [ %i.adx, %.lr.ph.i.i.i.i.i.i.i.i438.prol ]
  %.sroa.4.010.i.i.i.i.i.i.i.i.unr = phi ptr [ %.pre55.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i438.preheader ], [ %i.adx, %.lr.ph.i.i.i.i.i.i.i.i438.prol ]
  %.unr5359 = phi ptr [ %.pre55.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i438.preheader ], [ %i.adv, %.lr.ph.i.i.i.i.i.i.i.i438.prol ]
  %i.ady = icmp ult i64 %i.adr, 224
  br i1 %i.ady, label %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i438

.lr.ph.i.i.i.i.i.i.i.i438:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i438.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i438
  %.sroa.4.010.i.i.i.i.i.i.i.i = phi ptr [ %i.aeq, %.lr.ph.i.i.i.i.i.i.i.i438 ], [ %.sroa.4.010.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i438.prol.loopexit ] ; 9 uses
  %i.adz = phi ptr [ %i.aeo, %.lr.ph.i.i.i.i.i.i.i.i438 ], [ %.unr5359, %.lr.ph.i.i.i.i.i.i.i.i438.prol.loopexit ] ; 9 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adz, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.010.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.aea, i64 24, i1 false), !noalias !10465
  %i.aeb = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i.i.i, i64 24
  %i.aec = getelementptr inbounds nuw i8, ptr %i.adz, i64 40
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aeb, ptr noundef nonnull align 8 dereferenceable(24) %i.aec, i64 24, i1 false), !noalias !10465
  %i.aed = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i.i.i, i64 48
  %i.aee = getelementptr inbounds nuw i8, ptr %i.adz, i64 72
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aed, ptr noundef nonnull align 8 dereferenceable(24) %i.aee, i64 24, i1 false), !noalias !10465
  %i.aef = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i.i.i, i64 72
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.adz, i64 104
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aef, ptr noundef nonnull align 8 dereferenceable(24) %i.aeg, i64 24, i1 false), !noalias !10465
  %i.aeh = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i.i.i, i64 96
  %i.aei = getelementptr inbounds nuw i8, ptr %i.adz, i64 136
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aeh, ptr noundef nonnull align 8 dereferenceable(24) %i.aei, i64 24, i1 false), !noalias !10465
  %i.aej = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i.i.i, i64 120
  %i.aek = getelementptr inbounds nuw i8, ptr %i.adz, i64 168
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aej, ptr noundef nonnull align 8 dereferenceable(24) %i.aek, i64 24, i1 false), !noalias !10465
  %i.ael = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i.i.i, i64 144
  %i.aem = getelementptr inbounds nuw i8, ptr %i.adz, i64 200
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ael, ptr noundef nonnull align 8 dereferenceable(24) %i.aem, i64 24, i1 false), !noalias !10465
  %i.aen = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i.i.i, i64 168
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.adz, i64 256 ; 2 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %i.adz, i64 232
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aen, ptr noundef nonnull align 8 dereferenceable(24) %i.aep, i64 24, i1 false), !noalias !10465
  %i.aeq = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.i.i.i.i.i439.7 = icmp eq ptr %i.aeo, %i.ado
  br i1 %.not.i.i.i.i.i.i.i.i439.7, label %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i438

_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i438.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i438, %._crit_edge.i.i.i436
  %.sroa.4.0.lcssa.i.i.i.i.i.i66.i.i = phi ptr [ %.pre55.i.i.i, %._crit_edge.i.i.i436 ], [ %.lcssa4850.unr, %.lr.ph.i.i.i.i.i.i.i.i438.prol.loopexit ], [ %i.aeq, %.lr.ph.i.i.i.i.i.i.i.i438 ] ; 2 uses
  %.not.i.i.i.i.i.i440 = icmp ne i64 %.pre56.i.i.i, 0
  %i.aer = mul nuw i64 %i.adq, 24                 ; 6 uses
  %i.aes = icmp ne i64 %i.adp, %i.aer
  %.sroa.0.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i440, i1 %i.aes, i1 false
  br i1 %.sroa.0.0.i.i.i.i.i.i, label %bb.di, label %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB6_6parserNtB3j_6Parser18did_you_mean_errors_0EEB8_.exit.i.i

bb.di:                                            ; preds = %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i
  %i.aet = icmp eq i64 %i.adp, 0
  br i1 %i.aet, label %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB6_6parserNtB3j_6Parser18did_you_mean_errors_0EEB8_.exit.i.i, label %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i.i.i

_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i.i.i: ; preds = %bb.di
  %i.aeu = icmp ule i64 %i.aer, %i.adp
  call void @llvm.assume(i1 %i.aeu)
  %i.aev = call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc14___rust_realloc(ptr noundef nonnull %.pre55.i.i.i, i64 noundef %i.adp, i64 noundef 8, i64 noundef range(i64 0, -15) %i.aer) #43, !noalias !10466 ; 2 uses
  %i.aew = icmp eq ptr %i.aev, null
  br i1 %i.aew, label %bb.dj, label %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB6_6parserNtB3j_6Parser18did_you_mean_errors_0EEB8_.exit.i.i, !prof !33

bb.dj:                                            ; preds = %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i.i.i
  call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.aer) #46, !noalias !10466
  unreachable

bb.dk:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, %.lr.ph.i.i.i433
  %i.aex = phi ptr [ %i.afv, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i.i.i ], [ %i.adf, %.lr.ph.i.i.i433 ]
  %i.aey = phi i64 [ %i.agb, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i.i.i ], [ %i.adg, %.lr.ph.i.i.i433 ] ; 4 uses
  %i.aez = phi ptr [ %i.afv, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i.i.i ], [ %i.adh, %.lr.ph.i.i.i433 ]
  %i.afa = icmp eq ptr %i.adi, %i.acy
  br i1 %i.afa, label %._crit_edge.i.i.i436, label %.lr.ph.i.i.i433

bb.dl:                                            ; preds = %.lr.ph.i.i.i433
  %.not.i.i.i.i506 = icmp slt i64 %.val3.i.i.i.i435, 0
  br i1 %.not.i.i.i.i506, label %bb.dn, label %bb.dm, !prof !21

bb.dm:                                            ; preds = %bb.dl
  %i.afb = icmp eq i64 %.val3.i.i.i.i435, 0
  br i1 %i.afb, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread43.i.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i33.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i33.i: ; preds = %bb.dm
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !10467
  %i.afc = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val3.i.i.i.i435, i64 noundef range(i64 1, 9) 1) #43, !noalias !10467 ; 3 uses
  %i.afd = icmp eq ptr %i.afc, null
  br i1 %i.afd, label %bb.dn, label %bb.ds

bb.dn:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i33.i, %bb.dl
  %.sroa.432.0.ph.i.i.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i33.i ], [ 0, %bb.dl ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.432.0.ph.i.i.i, i64 %.val3.i.i.i.i435) #46, !noalias !10464
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread43.i.i.i: ; preds = %bb.ds, %bb.dm
  %i.afe = phi ptr [ %i.afc, %bb.ds ], [ inttoptr (i64 1 to ptr), %bb.dm ]
  switch i64 %i.adg, label %.lr.ph.i.i.i.i509 [
    i64 0, label %bb.do
    i64 1, label %._crit_edge.i.i.i.i
  ]

.lr.ph.i.i.i.i509:                                ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread43.i.i.i, %.lr.ph.i.i.i.i509
  %.sroa.01.017.i.i.i.i = phi i64 [ %i.afl, %.lr.ph.i.i.i.i509 ], [ %i.adg, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread43.i.i.i ] ; 2 uses
  %.sroa.05.016.i.i.i.i = phi i64 [ %i.afk, %.lr.ph.i.i.i.i509 ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread43.i.i.i ] ; 2 uses
  %i.aff = lshr i64 %.sroa.01.017.i.i.i.i, 1      ; 2 uses
  %i.afg = add nuw nsw i64 %i.aff, %.sroa.05.016.i.i.i.i ; 3 uses
  %i.afh = icmp ult i64 %i.afg, %i.adg
  call void @llvm.assume(i1 %i.afh)
  %i.afi = getelementptr inbounds nuw [32 x i8], ptr %i.adh, i64 %i.afg
  %.val12.i.i.i.i510 = load double, ptr %i.afi, align 8, !alias.scope !10468, !noalias !10469, !noundef !11
  %i.afj = fcmp ogt double %.val12.i.i.i.i510, %i.adl
  %i.afk = select i1 %i.afj, i64 %.sroa.05.016.i.i.i.i, i64 %i.afg, !unpredictable !11 ; 2 uses
  %i.afl = sub nuw nsw i64 %.sroa.01.017.i.i.i.i, %i.aff ; 2 uses
  %i.afm = icmp ugt i64 %i.afl, 1
  br i1 %i.afm, label %.lr.ph.i.i.i.i509, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i509, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread43.i.i.i
  %.sroa.05.0.lcssa.i.i.i.i = phi i64 [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread43.i.i.i ], [ %i.afk, %.lr.ph.i.i.i.i509 ] ; 2 uses
  %i.afn = getelementptr inbounds nuw [32 x i8], ptr %i.adh, i64 %.sroa.05.0.lcssa.i.i.i.i
  %.val14.i.i.i.i = load double, ptr %i.afn, align 8, !alias.scope !10468, !noalias !10469, !noundef !11
  %i.afo = fcmp ule double %.val14.i.i.i.i, %i.adl
  %i.afp = zext i1 %i.afo to i64
  %i.afq = add nuw nsw i64 %.sroa.05.0.lcssa.i.i.i.i, %i.afp ; 2 uses
  %i.afr = icmp ule i64 %i.afq, %i.adg
  call void @llvm.assume(i1 %i.afr)
  br label %bb.do

bb.do:                                            ; preds = %._crit_edge.i.i.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread43.i.i.i
  %.sroa.4.0.i.i.i.i = phi i64 [ %i.adg, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread43.i.i.i ], [ %i.afq, %._crit_edge.i.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10470)
  %i.afs = icmp ult i64 %i.adg, 288230376151711744
  call void @llvm.assume(i1 %i.afs)
  %i.aft = load i64, ptr %i.ah, align 8, !range !12, !alias.scope !10470, !noalias !10471, !noundef !11
  %i.afu = icmp eq i64 %i.adg, %i.aft
  br i1 %i.afu, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTdNtNtB7_6string6StringEE8grow_oneCsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah) #42, !noalias !10472
  %.pre.i.i.i508 = load ptr, ptr %i.adc, align 8, !alias.scope !10470, !noalias !10471
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.afv = phi ptr [ %.pre.i.i.i508, %bb.dp ], [ %i.adf, %bb.do ] ; 3 uses
  %i.afw = getelementptr inbounds nuw [32 x i8], ptr %i.afv, i64 %.sroa.4.0.i.i.i.i ; 6 uses
  %i.afx = icmp samesign ult i64 %.sroa.4.0.i.i.i.i, %i.adg
  br i1 %i.afx, label %bb.dr, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i.i.i

bb.dr:                                            ; preds = %bb.dq
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afw, i64 32
  %i.afz = sub nuw nsw i64 %i.adg, %.sroa.4.0.i.i.i.i
  %i.aga = shl nuw nsw i64 %i.afz, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.afy, ptr nonnull align 8 %i.afw, i64 %i.aga, i1 false), !noalias !10473
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i.i.i: ; preds = %bb.dr, %bb.dq
  store double %i.adl, ptr %i.afw, align 8, !noalias !10474
  %.sroa.4.0..sroa_idx.i.i.i507 = getelementptr inbounds nuw i8, ptr %i.afw, i64 8
  store i64 %.val3.i.i.i.i435, ptr %.sroa.4.0..sroa_idx.i.i.i507, align 8, !noalias !10474
  %.sroa.527.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.afw, i64 16
  store ptr %i.afe, ptr %.sroa.527.0..sroa_idx.i.i.i, align 8, !noalias !10474
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.afw, i64 24
  store i64 %.val3.i.i.i.i435, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !10474
  %i.agb = add nuw nsw i64 %i.adg, 1              ; 2 uses
  store i64 %i.agb, ptr %i.add, align 8, !alias.scope !10470, !noalias !10471
  br label %bb.dk

bb.ds:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i33.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.afc, ptr nonnull align 1 %.val.i.i.i.i434, i64 %.val3.i.i.i.i435, i1 false), !noalias !10464
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread43.i.i.i

_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB6_6parserNtB3j_6Parser18did_you_mean_errors_0EEB8_.exit.i.i: ; preds = %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i.i.i, %bb.di, %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i = phi ptr [ %.pre55.i.i.i, %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i ], [ %i.aev, %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i.i.i ], [ inttoptr (i64 8 to ptr), %bb.di ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !10462
  %i.agc = icmp eq ptr %.sroa.4.0.lcssa.i.i.i.i.i.i66.i.i, %.pre55.i.i.i
  br i1 %i.agc, label %bb.dt, label %bb.ee

bb.dt:                                            ; preds = %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB6_6parserNtB3j_6Parser18did_you_mean_errors_0EEB8_.exit.i.i, %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB6_6parserNtB3j_6Parser18did_you_mean_errors_0EEB8_.exit.thread.i.i
  %.sroa.04.0.i.i.i69.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB6_6parserNtB3j_6Parser18did_you_mean_errors_0EEB8_.exit.thread.i.i ], [ %.sroa.04.0.i.i.i.i.i, %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB6_6parserNtB3j_6Parser18did_you_mean_errors_0EEB8_.exit.i.i ] ; 2 uses
  %i.agd = phi i64 [ 0, %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB6_6parserNtB3j_6Parser18did_you_mean_errors_0EEB8_.exit.thread.i.i ], [ %i.adq, %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB6_6parserNtB3j_6Parser18did_you_mean_errors_0EEB8_.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !10475
  %.sroa.4.0..sroa_idx.i32.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.adb, ptr %.sroa.4.0..sroa_idx.i32.i, align 8, !alias.scope !10476, !noalias !10477
  %.sroa.5.0..sroa_idx.i.i503 = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  store ptr %i.acx, ptr %.sroa.5.0..sroa_idx.i.i503, align 8, !alias.scope !10476, !noalias !10477
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store i64 %i.acw, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !10476, !noalias !10477
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store ptr %.sroa.10.0.i7.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !10476, !noalias !10477
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store i64 %.sroa.4.0.i8.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !10476, !noalias !10477
  call void @llvm.experimental.noalias.scope.decl(metadata !10478)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.11.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !10479)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !10480
  call void @llvm.experimental.noalias.scope.decl(metadata !10481)
  %i.age = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.agf = icmp eq i64 %.val29.i432, 0
  br i1 %i.agf, label %._crit_edge4560, label %.lr.ph4559

bb.du:                                            ; preds = %.lr.ph4559
  %i.agg = icmp eq ptr %i.agi, %i.adb
  br i1 %i.agg, label %._crit_edge4560.loopexit, label %.lr.ph4559

.lr.ph4559:                                       ; preds = %bb.dt, %bb.du
  %i.agh = phi ptr [ %i.agi, %bb.du ], [ %.val28.i431, %bb.dt ] ; 2 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agh, i64 712 ; 4 uses
  call fastcc void @_RNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB8_6parserNtB3o_6Parser18did_you_mean_errors_0EReINtB2f_7IterMutNtNtNtBa_7builder7command7CommandEE0Ba_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(56) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i.i503, ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.agh) #45, !noalias !10482
  %i.agj = load i64, ptr %i.age, align 8, !range !13, !noalias !10480, !noundef !11 ; 3 uses
  %.not.i.i.i.i.i.i.i504 = icmp eq i64 %i.agj, -1
  br i1 %.not.i.i.i.i.i.i.i504, label %bb.du, label %bb.dv

bb.dv:                                            ; preds = %.lr.ph4559
  store ptr %i.agi, ptr %i.ag, align 8, !alias.scope !10483, !noalias !10484
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.ae, align 8, !noalias !10480
  %.sroa.8.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.0.0.copyload.i = load ptr, ptr %.sroa.8.8..sroa_idx.i.i.i.i, align 8, !noalias !10485 ; 2 uses
  %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.9.0..sroa.8.8..sroa_idx.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.9.0.copyload.i = load i64, ptr %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.9.0..sroa.8.8..sroa_idx.i.i.i.sroa_idx.i, align 8, !noalias !10485 ; 2 uses
  %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.10.0..sroa.8.8..sroa_idx.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.10.0.copyload.i = load i64, ptr %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.10.0..sroa.8.8..sroa_idx.i.i.i.sroa_idx.i, align 8, !noalias !10485 ; 2 uses
  %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.11.0..sroa.8.8..sroa_idx.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.11.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.11.0..sroa.8.8..sroa_idx.i.i.i.sroa_idx.i, i64 16, i1 false), !noalias !10485
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !10480
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !10485
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull align 8 dereferenceable(48) %i.ag, i64 48, i1 false), !noalias !10486
  call void @llvm.experimental.noalias.scope.decl(metadata !10487)
  call void @llvm.experimental.noalias.scope.decl(metadata !10488)
  %i.agk = load ptr, ptr %i.af, align 8, !alias.scope !10489, !noalias !10490, !nonnull !11, !noundef !11 ; 3 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.agm = load ptr, ptr %i.agl, align 8, !alias.scope !10489, !noalias !10490, !nonnull !11, !noundef !11 ; 2 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ago = icmp eq ptr %i.agk, %i.agm
  br i1 %i.ago, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter7IterMutNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENCINvNtNtNtB1E_6parser8features11suggestions17did_you_mean_flagINtNtB8_3map3MapINtB18_4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB2E_6parserNtB4J_6Parser18did_you_mean_errors_0EReB15_E0ENtNtNtBa_6traits8iterator8Iterator10min_by_keyjNCB2x_s_0EB1E_.exit.thread30.i.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.agp = ptrtoint ptr %i.agm to i64
  %i.agq = ptrtoint ptr %i.agk to i64
  %i.agr = sub nuw i64 %i.agp, %i.agq
  %i.ags = udiv exact i64 %i.agr, 712
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %.sroa.8.0..sroa_idx31.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.agu = getelementptr inbounds nuw i8, ptr %i.ac, i64 64 ; 2 uses
  %.sroa.01.sroa.8.64..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 72 ; 2 uses
  %.sroa.8.64..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 120
  %i.agv = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.agw = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  %i.agx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.agy = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %.sroa.6.i.i.i.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.6.0..sroa.6.i.i.i.sroa.6.0..sroa_idx.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.9.0..sroa.6.i.i.i.sroa.6.0..sroa_idx.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.12.0..sroa.6.i.i.i.sroa.6.0..sroa_idx.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  br label %bb.dx

bb.dx:                                            ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map15filter_map_foldQNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionB2a_EEEINtNtBa_3cmp11KeyAndValuejB27_ENCINvNtNtNtB1h_6parser8features11suggestions17did_you_mean_flagINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterB2a_ENCNvMs0_NtB3T_6parserNtB5E_6Parser18did_you_mean_errors_0EReINtB54_7IterMutB1b_EE0NCINvB4O_8map_foldB27_B3f_B3f_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyB27_jNCB3M_s_0E0NvYB3f_NtB3i_3Ord3minE0E0B1h_.exit.i.i.i.i.i.i.i, %bb.dw
  %.val.i.i.i5.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.10.0.copyload.i, %bb.dw ], [ %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.9.1.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map15filter_map_foldQNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionB2a_EEEINtNtBa_3cmp11KeyAndValuejB27_ENCINvNtNtNtB1h_6parser8features11suggestions17did_you_mean_flagINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterB2a_ENCNvMs0_NtB3T_6parserNtB5E_6Parser18did_you_mean_errors_0EReINtB54_7IterMutB1b_EE0NCINvB4O_8map_foldB27_B3f_B3f_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyB27_jNCB3M_s_0E0NvYB3f_NtB3i_3Ord3minE0E0B1h_.exit.i.i.i.i.i.i.i ] ; 6 uses
  %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.9.0.i = phi i64 [ %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.9.0.copyload.i, %bb.dw ], [ %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.6.1.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map15filter_map_foldQNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionB2a_EEEINtNtBa_3cmp11KeyAndValuejB27_ENCINvNtNtNtB1h_6parser8features11suggestions17did_you_mean_flagINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterB2a_ENCNvMs0_NtB3T_6parserNtB5E_6Parser18did_you_mean_errors_0EReINtB54_7IterMutB1b_EE0NCINvB4O_8map_foldB27_B3f_B3f_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyB27_jNCB3M_s_0E0NvYB3f_NtB3i_3Ord3minE0E0B1h_.exit.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.0.0.i = phi ptr [ %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.0.0.copyload.i, %bb.dw ], [ %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.0.1.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map15filter_map_foldQNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionB2a_EEEINtNtBa_3cmp11KeyAndValuejB27_ENCINvNtNtNtB1h_6parser8features11suggestions17did_you_mean_flagINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterB2a_ENCNvMs0_NtB3T_6parserNtB5E_6Parser18did_you_mean_errors_0EReINtB54_7IterMutB1b_EE0NCINvB4O_8map_foldB27_B3f_B3f_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyB27_jNCB3M_s_0E0NvYB3f_NtB3i_3Ord3minE0E0B1h_.exit.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.619.i.i.i.sroa.0.0.i.i.i.i = phi i64 [ %i.agj, %bb.dw ], [ %.sroa.6.i.i.i.sroa.0.1.i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map15filter_map_foldQNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionB2a_EEEINtNtBa_3cmp11KeyAndValuejB27_ENCINvNtNtNtB1h_6parser8features11suggestions17did_you_mean_flagINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterB2a_ENCNvMs0_NtB3T_6parserNtB5E_6Parser18did_you_mean_errors_0EReINtB54_7IterMutB1b_EE0NCINvB4O_8map_foldB27_B3f_B3f_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyB27_jNCB3M_s_0E0NvYB3f_NtB3i_3Ord3minE0E0B1h_.exit.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.722.0.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.dw ], [ %.sroa.7.2.i.i.i.i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map15filter_map_foldQNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionB2a_EEEINtNtBa_3cmp11KeyAndValuejB27_ENCINvNtNtNtB1h_6parser8features11suggestions17did_you_mean_flagINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterB2a_ENCNvMs0_NtB3T_6parserNtB5E_6Parser18did_you_mean_errors_0EReINtB54_7IterMutB1b_EE0NCINvB4O_8map_foldB27_B3f_B3f_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyB27_jNCB3M_s_0E0NvYB3f_NtB3i_3Ord3minE0E0B1h_.exit.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.01.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.dw ], [ %i.ahh, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map15filter_map_foldQNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionB2a_EEEINtNtBa_3cmp11KeyAndValuejB27_ENCINvNtNtNtB1h_6parser8features11suggestions17did_you_mean_flagINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterB2a_ENCNvMs0_NtB3T_6parserNtB5E_6Parser18did_you_mean_errors_0EReINtB54_7IterMutB1b_EE0NCINvB4O_8map_foldB27_B3f_B3f_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyB27_jNCB3M_s_0E0NvYB3f_NtB3i_3Ord3minE0E0B1h_.exit.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.12.i)
  %i.agz = getelementptr inbounds nuw [712 x i8], ptr %i.agk, i64 %.sroa.01.0.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !10491
  call fastcc void @_RNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB8_6parserNtB3o_6Parser18did_you_mean_errors_0EReINtB2f_7IterMutNtNtNtBa_7builder7command7CommandEE0Ba_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.agn, ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.agz) #45, !noalias !10492
  %i.aha = load i64, ptr %i.agt, align 8, !range !13, !noalias !10493, !noundef !11 ; 3 uses
  %.not.i.i.i.i.i.i3.i.i = icmp eq i64 %i.aha, -1
  br i1 %.not.i.i.i.i.i.i3.i.i, label %bb.ed, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.ad, align 8, !noalias !10493 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !10494
  store ptr %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.0.0.i, ptr %i.agx, align 8, !noalias !10485
  store i64 %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.9.0.i, ptr %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.9.0..sroa_idx.i, align 8, !noalias !10485
  store i64 %.val.i.i.i5.i.i.i.i.i.i.i.i.i.i.i, ptr %i.agy, align 8, !noalias !10485
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.11.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.11.i, i64 16, i1 false), !noalias !10485
  store i64 %.sroa.722.0.i.i.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx31.i.i.i.i.i.i.i, align 8, !noalias !10495
  store i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, ptr %i.agu, align 8, !noalias !10496
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.01.sroa.8.64..sroa_idx.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.agt, i64 48, i1 false), !noalias !10493
  store i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.8.64..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !10496
  call void @llvm.experimental.noalias.scope.decl(metadata !10497)
  call void @llvm.experimental.noalias.scope.decl(metadata !10498)
  %i.ahb = icmp ult i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, %.sroa.722.0.i.i.i.i.i.i.i
  br i1 %i.ahb, label %bb.eb, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.12.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.11.i, i64 16, i1 false), !noalias !10485
  call void @llvm.experimental.noalias.scope.decl(metadata !10499)
  call void @llvm.experimental.noalias.scope.decl(metadata !10500)
  call void @llvm.experimental.noalias.scope.decl(metadata !10501)
  call void @llvm.experimental.noalias.scope.decl(metadata !10502)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.01.sroa.8.64..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !range !12, !alias.scope !10503, !noalias !10504, !noundef !11 ; 2 uses
  %i.ahc = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ahc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.agv, align 8, !alias.scope !10503, !noalias !10504, !nonnull !11, !noundef !11
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !10505
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ea, %bb.dz
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.agw, align 8, !range !13, !alias.scope !10506, !noalias !10504, !noundef !11 ; 2 uses
  %i.ahd = icmp sgt i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ahd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_3cmp11KeyAndValuejTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtB4_6option6OptionB14_EEEEECsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionBX_EEEINtNtBa_3cmp11KeyAndValuejBU_EB21_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyBU_jNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtB4_3MapINtNtNtBa_5slice4iter4IterBX_ENCNvMs0_NtB3H_6parserNtB5J_6Parser18did_you_mean_errors_0EReINtB5a_7IterMutNtNtNtB3J_7builder7command7CommandEEs_0E0NvYB21_NtB24_3Ord3minE0B3J_.exit.i.i.i.i.i.i.i.i

bb.eb:                                            ; preds = %bb.dy
  %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.0.0.copyload.i = load ptr, ptr %.sroa.6.i.i.i.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !10507 ; 2 uses
  %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.6.0..sroa.6.i.i.i.sroa.6.0..sroa_idx.i.i.i.sroa_idx.i, align 8, !noalias !10507 ; 2 uses
  %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.9.0.copyload.i = load i64, ptr %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.9.0..sroa.6.i.i.i.sroa.6.0..sroa_idx.i.i.i.sroa_idx.i, align 8, !noalias !10507 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.12.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.12.0..sroa.6.i.i.i.sroa.6.0..sroa_idx.i.i.i.sroa_idx.i, i64 16, i1 false), !noalias !10507
  %i.ahe = icmp eq i64 %.sroa.619.i.i.i.sroa.0.0.i.i.i.i, 0
  br i1 %i.ahe, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.0.0.i, i64 noundef %.sroa.619.i.i.i.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !10508
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ec, %bb.eb
  %i.ahf = icmp sgt i64 %.val.i.i.i5.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ahf, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_3cmp11KeyAndValuejTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtB4_6option6OptionB14_EEEEECsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionBX_EEEINtNtBa_3cmp11KeyAndValuejBU_EB21_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyBU_jNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtB4_3MapINtNtNtBa_5slice4iter4IterBX_ENCNvMs0_NtB3H_6parserNtB5J_6Parser18did_you_mean_errors_0EReINtB5a_7IterMutNtNtNtB3J_7builder7command7CommandEEs_0E0NvYB21_NtB24_3Ord3minE0B3J_.exit.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_3cmp11KeyAndValuejTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtB4_6option6OptionB14_EEEEECsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.0.2.i = phi ptr [ %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.0.0.copyload.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.0.0.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.6.2.i = phi i64 [ %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.6.0.copyload.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.9.0.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.9.2.i = phi i64 [ %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.9.0.copyload.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i ], [ %.val.i.i.i5.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.6.i.i.i.sroa.0.2.i.i.i.i = phi i64 [ %i.aha, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.619.i.i.i.sroa.0.0.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.7.1.i.i.i.i.i.i.i = phi i64 [ %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.722.0.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sink8.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ac, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i ], [ %i.agu, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.val.i.i.i5.sink.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.val.i.i.i5.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ahg = getelementptr inbounds nuw i8, ptr %.sink8.i.i.i.i.i.i.i.i.i.i.i, i64 40
  %.val1.i.i.i6.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ahg, align 8, !alias.scope !10509, !noalias !10510, !nonnull !11, !noundef !11
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i6.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i5.sink.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !10511
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionBX_EEEINtNtBa_3cmp11KeyAndValuejBU_EB21_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyBU_jNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtB4_3MapINtNtNtBa_5slice4iter4IterBX_ENCNvMs0_NtB3H_6parserNtB5J_6Parser18did_you_mean_errors_0EReINtB5a_7IterMutNtNtNtB3J_7builder7command7CommandEEs_0E0NvYB21_NtB24_3Ord3minE0B3J_.exit.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionBX_EEEINtNtBa_3cmp11KeyAndValuejBU_EB21_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyBU_jNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtB4_3MapINtNtNtBa_5slice4iter4IterBX_ENCNvMs0_NtB3H_6parserNtB5J_6Parser18did_you_mean_errors_0EReINtB5a_7IterMutNtNtNtB3J_7builder7command7CommandEEs_0E0NvYB21_NtB24_3Ord3minE0B3J_.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_3cmp11KeyAndValuejTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtB4_6option6OptionB14_EEEEECsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.0.0.i = phi ptr [ %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.0.2.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_3cmp11KeyAndValuejTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtB4_6option6OptionB14_EEEEECsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.0.0.copyload.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.0.0.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.6.0.i = phi i64 [ %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.6.2.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_3cmp11KeyAndValuejTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtB4_6option6OptionB14_EEEEECsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.6.0.copyload.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.9.0.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.9.0.i = phi i64 [ %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.9.2.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_3cmp11KeyAndValuejTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtB4_6option6OptionB14_EEEEECsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.9.0.copyload.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i ], [ %.val.i.i.i5.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.6.i.i.i.sroa.0.0.i.i.i.i = phi i64 [ %.sroa.6.i.i.i.sroa.0.2.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_3cmp11KeyAndValuejTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtB4_6option6OptionB14_EEEEECsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aha, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.619.i.i.i.sroa.0.0.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.7.0.i.i.i.i.i.i.i505 = phi i64 [ %.sroa.7.1.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_3cmp11KeyAndValuejTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtB4_6option6OptionB14_EEEEECsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.722.0.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !10494
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map15filter_map_foldQNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionB2a_EEEINtNtBa_3cmp11KeyAndValuejB27_ENCINvNtNtNtB1h_6parser8features11suggestions17did_you_mean_flagINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterB2a_ENCNvMs0_NtB3T_6parserNtB5E_6Parser18did_you_mean_errors_0EReINtB54_7IterMutB1b_EE0NCINvB4O_8map_foldB27_B3f_B3f_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyB27_jNCB3M_s_0E0NvYB3f_NtB3i_3Ord3minE0E0B1h_.exit.i.i.i.i.i.i.i

bb.ed:                                            ; preds = %bb.dx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.12.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.11.i, i64 16, i1 false), !noalias !10485
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map15filter_map_foldQNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionB2a_EEEINtNtBa_3cmp11KeyAndValuejB27_ENCINvNtNtNtB1h_6parser8features11suggestions17did_you_mean_flagINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterB2a_ENCNvMs0_NtB3T_6parserNtB5E_6Parser18did_you_mean_errors_0EReINtB54_7IterMutB1b_EE0NCINvB4O_8map_foldB27_B3f_B3f_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyB27_jNCB3M_s_0E0NvYB3f_NtB3i_3Ord3minE0E0B1h_.exit.i.i.i.i.i.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map15filter_map_foldQNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionB2a_EEEINtNtBa_3cmp11KeyAndValuejB27_ENCINvNtNtNtB1h_6parser8features11suggestions17did_you_mean_flagINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterB2a_ENCNvMs0_NtB3T_6parserNtB5E_6Parser18did_you_mean_errors_0EReINtB54_7IterMutB1b_EE0NCINvB4O_8map_foldB27_B3f_B3f_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyB27_jNCB3M_s_0E0NvYB3f_NtB3i_3Ord3minE0E0B1h_.exit.i.i.i.i.i.i.i: ; preds = %bb.ed, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionBX_EEEINtNtBa_3cmp11KeyAndValuejBU_EB21_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyBU_jNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtB4_3MapINtNtNtBa_5slice4iter4IterBX_ENCNvMs0_NtB3H_6parserNtB5J_6Parser18did_you_mean_errors_0EReINtB5a_7IterMutNtNtNtB3J_7builder7command7CommandEEs_0E0NvYB21_NtB24_3Ord3minE0B3J_.exit.i.i.i.i.i.i.i.i
  %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.0.1.i = phi ptr [ %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.0.0.i, %bb.ed ], [ %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.0.0.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionBX_EEEINtNtBa_3cmp11KeyAndValuejBU_EB21_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyBU_jNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtB4_3MapINtNtNtBa_5slice4iter4IterBX_ENCNvMs0_NtB3H_6parserNtB5J_6Parser18did_you_mean_errors_0EReINtB5a_7IterMutNtNtNtB3J_7builder7command7CommandEEs_0E0NvYB21_NtB24_3Ord3minE0B3J_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.6.1.i = phi i64 [ %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.9.0.i, %bb.ed ], [ %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.6.0.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionBX_EEEINtNtBa_3cmp11KeyAndValuejBU_EB21_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyBU_jNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtB4_3MapINtNtNtBa_5slice4iter4IterBX_ENCNvMs0_NtB3H_6parserNtB5J_6Parser18did_you_mean_errors_0EReINtB5a_7IterMutNtNtNtB3J_7builder7command7CommandEEs_0E0NvYB21_NtB24_3Ord3minE0B3J_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.9.1.i = phi i64 [ %.val.i.i.i5.i.i.i.i.i.i.i.i.i.i.i, %bb.ed ], [ %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.9.0.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionBX_EEEINtNtBa_3cmp11KeyAndValuejBU_EB21_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyBU_jNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtB4_3MapINtNtNtBa_5slice4iter4IterBX_ENCNvMs0_NtB3H_6parserNtB5J_6Parser18did_you_mean_errors_0EReINtB5a_7IterMutNtNtNtB3J_7builder7command7CommandEEs_0E0NvYB21_NtB24_3Ord3minE0B3J_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.i.i.i.sroa.0.1.i.i.i.i = phi i64 [ %.sroa.619.i.i.i.sroa.0.0.i.i.i.i, %bb.ed ], [ %.sroa.6.i.i.i.sroa.0.0.i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionBX_EEEINtNtBa_3cmp11KeyAndValuejBU_EB21_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyBU_jNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtB4_3MapINtNtNtBa_5slice4iter4IterBX_ENCNvMs0_NtB3H_6parserNtB5J_6Parser18did_you_mean_errors_0EReINtB5a_7IterMutNtNtNtB3J_7builder7command7CommandEEs_0E0NvYB21_NtB24_3Ord3minE0B3J_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.7.2.i.i.i.i.i.i.i = phi i64 [ %.sroa.722.0.i.i.i.i.i.i.i, %bb.ed ], [ %.sroa.7.0.i.i.i.i.i.i.i505, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionBX_EEEINtNtBa_3cmp11KeyAndValuejBU_EB21_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyBU_jNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtB4_3MapINtNtNtBa_5slice4iter4IterBX_ENCNvMs0_NtB3H_6parserNtB5J_6Parser18did_you_mean_errors_0EReINtB5a_7IterMutNtNtNtB3J_7builder7command7CommandEEs_0E0NvYB21_NtB24_3Ord3minE0B3J_.exit.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !10491
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.11.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.12.i, i64 16, i1 false), !noalias !10485
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.12.i)
  %i.ahh = add nuw i64 %.sroa.01.0.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ahi = icmp eq i64 %i.ahh, %i.ags
  br i1 %i.ahi, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter7IterMutNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENCINvNtNtNtB1E_6parser8features11suggestions17did_you_mean_flagINtNtB8_3map3MapINtB18_4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB2E_6parserNtB4J_6Parser18did_you_mean_errors_0EReB15_E0ENtNtNtBa_6traits8iterator8Iterator10min_by_keyjNCB2x_s_0EB1E_.exit.thread30.i.i, label %bb.dx

bb.ee:                                            ; preds = %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB6_6parserNtB3j_6Parser18did_you_mean_errors_0EEB8_.exit.i.i
  %i.ahj = ptrtoint ptr %.sroa.4.0.lcssa.i.i.i.i.i.i66.i.i to i64
  %i.ahk = ptrtoint ptr %.pre55.i.i.i to i64
  %i.ahl = sub nuw i64 %i.ahj, %i.ahk             ; 2 uses
  %i.ahm = udiv exact i64 %i.ahl, 24
  %i.ahn = add nsw i64 %i.ahm, -1                 ; 4 uses
  %i.aho = icmp samesign ult i64 %i.ahn, %i.adq
  call void @llvm.assume(i1 %i.aho)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.i.i.i.i.i) ]
  %i.ahp = icmp ult i64 %i.ahl, -9223372036854775768
  call void @llvm.assume(i1 %i.ahp)
  %i.ahq = getelementptr inbounds nuw [24 x i8], ptr %.sroa.04.0.i.i.i.i.i, i64 %i.ahn ; 3 uses
  %.sroa.063.0.copyload65.i = load i64, ptr %i.ahq, align 8, !noalias !10512 ; 2 uses
  %.sroa.866.0..sroa_idx67.i = getelementptr inbounds nuw i8, ptr %i.ahq, i64 8
  %.sroa.866.0.copyload68.i = load ptr, ptr %.sroa.866.0..sroa_idx67.i, align 8, !noalias !10512 ; 2 uses
  %.sroa.10.0..sroa_idx69.i = getelementptr inbounds nuw i8, ptr %i.ahq, i64 16
  %.sroa.10.0.copyload70.i = load i64, ptr %.sroa.10.0..sroa_idx69.i, align 8, !noalias !10512 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10513)
  %i.ahr = icmp eq i64 %i.ahn, 0
  br i1 %i.ahr, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit14.sink.split.i.i, label %.lr.ph.i.i.i.i.i441

.lr.ph.i.i.i.i.i441:                              ; preds = %bb.ee, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i
  %.sroa.0.03.i.i.i.i.i = phi i64 [ %i.aht, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i ], [ 0, %bb.ee ] ; 2 uses
  %i.ahs = getelementptr inbounds nuw [24 x i8], ptr %.sroa.04.0.i.i.i.i.i, i64 %.sroa.0.03.i.i.i.i.i ; 2 uses
  %i.aht = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10514)
  %.val.i.i.i.i4.i.i = load i64, ptr %i.ahs, align 8, !range !12, !alias.scope !10515, !noalias !10516, !noundef !11 ; 2 uses
  %i.ahu = icmp eq i64 %.val.i.i.i.i4.i.i, 0
  br i1 %i.ahu, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i, label %bb.ef

bb.ef:                                            ; preds = %.lr.ph.i.i.i.i.i441
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahs, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.ahv, align 8, !alias.scope !10515, !noalias !10516, !nonnull !11, !noundef !11
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i4.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !10517
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i: ; preds = %bb.ef, %.lr.ph.i.i.i.i.i441
  %i.ahw = icmp eq i64 %i.aht, %i.ahn
  br i1 %i.ahw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit14.sink.split.i.i, label %.lr.ph.i.i.i.i.i441

_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter7IterMutNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENCINvNtNtNtB1E_6parser8features11suggestions17did_you_mean_flagINtNtB8_3map3MapINtB18_4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB2E_6parserNtB4J_6Parser18did_you_mean_errors_0EReB15_E0ENtNtNtBa_6traits8iterator8Iterator10min_by_keyjNCB2x_s_0EB1E_.exit.thread30.i.i: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map15filter_map_foldQNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionB2a_EEEINtNtBa_3cmp11KeyAndValuejB27_ENCINvNtNtNtB1h_6parser8features11suggestions17did_you_mean_flagINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterB2a_ENCNvMs0_NtB3T_6parserNtB5E_6Parser18did_you_mean_errors_0EReINtB54_7IterMutB1b_EE0NCINvB4O_8map_foldB27_B3f_B3f_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyB27_jNCB3M_s_0E0NvYB3f_NtB3i_3Ord3minE0E0B1h_.exit.i.i.i.i.i.i.i, %bb.dv
  %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.10.1.i = phi i64 [ %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.10.0.copyload.i, %bb.dv ], [ %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.9.1.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map15filter_map_foldQNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionB2a_EEEINtNtBa_3cmp11KeyAndValuejB27_ENCINvNtNtNtB1h_6parser8features11suggestions17did_you_mean_flagINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterB2a_ENCNvMs0_NtB3T_6parserNtB5E_6Parser18did_you_mean_errors_0EReINtB54_7IterMutB1b_EE0NCINvB4O_8map_foldB27_B3f_B3f_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyB27_jNCB3M_s_0E0NvYB3f_NtB3i_3Ord3minE0E0B1h_.exit.i.i.i.i.i.i.i ]
  %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.9.1.i = phi i64 [ %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.9.0.copyload.i, %bb.dv ], [ %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.6.1.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map15filter_map_foldQNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionB2a_EEEINtNtBa_3cmp11KeyAndValuejB27_ENCINvNtNtNtB1h_6parser8features11suggestions17did_you_mean_flagINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterB2a_ENCNvMs0_NtB3T_6parserNtB5E_6Parser18did_you_mean_errors_0EReINtB54_7IterMutB1b_EE0NCINvB4O_8map_foldB27_B3f_B3f_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyB27_jNCB3M_s_0E0NvYB3f_NtB3i_3Ord3minE0E0B1h_.exit.i.i.i.i.i.i.i ]
  %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.0.1.i = phi ptr [ %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.0.0.copyload.i, %bb.dv ], [ %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.0.1.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map15filter_map_foldQNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionB2a_EEEINtNtBa_3cmp11KeyAndValuejB27_ENCINvNtNtNtB1h_6parser8features11suggestions17did_you_mean_flagINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterB2a_ENCNvMs0_NtB3T_6parserNtB5E_6Parser18did_you_mean_errors_0EReINtB54_7IterMutB1b_EE0NCINvB4O_8map_foldB27_B3f_B3f_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyB27_jNCB3M_s_0E0NvYB3f_NtB3i_3Ord3minE0E0B1h_.exit.i.i.i.i.i.i.i ]
  %.sroa.511.sroa.0.0.i27.i33.i.i = phi i64 [ %i.agj, %bb.dv ], [ %.sroa.6.i.i.i.sroa.0.1.i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map15filter_map_foldQNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionB2a_EEEINtNtBa_3cmp11KeyAndValuejB27_ENCINvNtNtNtB1h_6parser8features11suggestions17did_you_mean_flagINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterB2a_ENCNvMs0_NtB3T_6parserNtB5E_6Parser18did_you_mean_errors_0EReINtB54_7IterMutB1b_EE0NCINvB4O_8map_foldB27_B3f_B3f_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyB27_jNCB3M_s_0E0NvYB3f_NtB3i_3Ord3minE0E0B1h_.exit.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !10485
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.11.i, i64 16, i1 false), !noalias !10434
  br label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i12.i.i

._crit_edge4560.loopexit:                         ; preds = %bb.du
  store ptr %i.agi, ptr %i.ag, align 8, !alias.scope !10483, !noalias !10484
  br label %._crit_edge4560

._crit_edge4560:                                  ; preds = %._crit_edge4560.loopexit, %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !10480
  br label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i12.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i12.i.i: ; preds = %._crit_edge4560, %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter7IterMutNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENCINvNtNtNtB1E_6parser8features11suggestions17did_you_mean_flagINtNtB8_3map3MapINtB18_4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB2E_6parserNtB4J_6Parser18did_you_mean_errors_0EReB15_E0ENtNtNtBa_6traits8iterator8Iterator10min_by_keyjNCB2x_s_0EB1E_.exit.thread30.i.i
  %.sroa.11.1.i = phi i64 [ undef, %._crit_edge4560 ], [ %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.10.1.i, %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter7IterMutNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENCINvNtNtNtB1E_6parser8features11suggestions17did_you_mean_flagINtNtB8_3map3MapINtB18_4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB2E_6parserNtB4J_6Parser18did_you_mean_errors_0EReB15_E0ENtNtNtBa_6traits8iterator8Iterator10min_by_keyjNCB2x_s_0EB1E_.exit.thread30.i.i ] ; 2 uses
  %.sroa.10.1.i = phi i64 [ undef, %._crit_edge4560 ], [ %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.9.1.i, %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter7IterMutNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENCINvNtNtNtB1E_6parser8features11suggestions17did_you_mean_flagINtNtB8_3map3MapINtB18_4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB2E_6parserNtB4J_6Parser18did_you_mean_errors_0EReB15_E0ENtNtNtBa_6traits8iterator8Iterator10min_by_keyjNCB2x_s_0EB1E_.exit.thread30.i.i ] ; 2 uses
  %.sroa.866.1.i = phi ptr [ undef, %._crit_edge4560 ], [ %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.0.1.i, %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter7IterMutNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENCINvNtNtNtB1E_6parser8features11suggestions17did_you_mean_flagINtNtB8_3map3MapINtB18_4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB2E_6parserNtB4J_6Parser18did_you_mean_errors_0EReB15_E0ENtNtNtBa_6traits8iterator8Iterator10min_by_keyjNCB2x_s_0EB1E_.exit.thread30.i.i ] ; 2 uses
  %.sroa.063.1.i = phi i64 [ -1, %._crit_edge4560 ], [ %.sroa.511.sroa.0.0.i27.i33.i.i, %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter7IterMutNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENCINvNtNtNtB1E_6parser8features11suggestions17did_you_mean_flagINtNtB8_3map3MapINtB18_4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB2E_6parserNtB4J_6Parser18did_you_mean_errors_0EReB15_E0ENtNtNtBa_6traits8iterator8Iterator10min_by_keyjNCB2x_s_0EB1E_.exit.thread30.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.11.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !10475
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.i.i.i69.i.i) ]
  %i.ahx = icmp eq i64 %i.agd, 0
  br i1 %i.ahx, label %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1v_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB6_6parserNtB3m_6Parser18did_you_mean_errors_0EReINtB2d_7IterMutNtNtNtB8_7builder7command7CommandEEB8_.exit.i, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i12.i._RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit14.sink.split.i_crit_edge.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i12.i._RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit14.sink.split.i_crit_edge.i: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i12.i.i
  %.pre200.i = mul nuw i64 %i.agd, 24
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit14.sink.split.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit14.sink.split.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i12.i._RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit14.sink.split.i_crit_edge.i, %bb.ee
  %.pre-phi.i = phi i64 [ %.pre200.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i12.i._RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit14.sink.split.i_crit_edge.i ], [ %i.aer, %bb.ee ], [ %i.aer, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i ]
  %.sroa.11.0.i = phi i64 [ %.sroa.11.1.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i12.i._RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit14.sink.split.i_crit_edge.i ], [ -1, %bb.ee ], [ -1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i ]
  %.sroa.10.0.i = phi i64 [ %.sroa.10.1.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i12.i._RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit14.sink.split.i_crit_edge.i ], [ %.sroa.10.0.copyload70.i, %bb.ee ], [ %.sroa.10.0.copyload70.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i ]
  %.sroa.866.0.i = phi ptr [ %.sroa.866.1.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i12.i._RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit14.sink.split.i_crit_edge.i ], [ %.sroa.866.0.copyload68.i, %bb.ee ], [ %.sroa.866.0.copyload68.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i ]
  %.sroa.063.0.i = phi i64 [ %.sroa.063.1.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i12.i._RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit14.sink.split.i_crit_edge.i ], [ %.sroa.063.0.copyload65.i, %bb.ee ], [ %.sroa.063.0.copyload65.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i ]
  %.sroa.04.0.i.i.i69.sink.i.i = phi ptr [ %.sroa.04.0.i.i.i69.i.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i12.i._RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit14.sink.split.i_crit_edge.i ], [ %.sroa.04.0.i.i.i.i.i, %bb.ee ], [ %.sroa.04.0.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.04.0.i.i.i69.sink.i.i, i64 noundef %.pre-phi.i, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !10518
  br label %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1v_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB6_6parserNtB3m_6Parser18did_you_mean_errors_0EReINtB2d_7IterMutNtNtNtB8_7builder7command7CommandEEB8_.exit.i

_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1v_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB6_6parserNtB3m_6Parser18did_you_mean_errors_0EReINtB2d_7IterMutNtNtNtB8_7builder7command7CommandEEB8_.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit14.sink.split.i.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i12.i.i
  %.sroa.11.2.i = phi i64 [ %.sroa.11.1.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i12.i.i ], [ %.sroa.11.0.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit14.sink.split.i.i ]
  %.sroa.10.2.i = phi i64 [ %.sroa.10.1.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i12.i.i ], [ %.sroa.10.0.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit14.sink.split.i.i ] ; 3 uses
  %.sroa.866.2.i = phi ptr [ %.sroa.866.1.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i12.i.i ], [ %.sroa.866.0.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit14.sink.split.i.i ] ; 3 uses
  %.sroa.063.2.i = phi i64 [ %.sroa.063.1.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i12.i.i ], [ %.sroa.063.0.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit14.sink.split.i.i ] ; 2 uses
  %i.ahy = getelementptr i8, ptr %i.aba, i64 700
  %.val24.i = load i32, ptr %i.ahy, align 4, !noalias !10432, !noundef !11
  %i.ahz = getelementptr i8, ptr %i.aba, i64 704
  %.val25.i442 = load i32, ptr %i.ahz, align 8, !noalias !10432
  %.not.i.i443 = trunc i32 %.val24.i to i1
  %i.aia = trunc i32 %.val25.i442 to i1
  %.sroa.0.0.i.i444 = select i1 %.not.i.i443, i1 true, i1 %i.aia
  %.not.i445 = icmp eq i64 %.sroa.063.2.i, -1     ; 2 uses
  %or.cond.i446 = select i1 %.sroa.0.0.i.i444, i1 true, i1 %.not.i445
  br i1 %or.cond.i446, label %.loopexit120.i, label %bb.eg

bb.eg:                                            ; preds = %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1v_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB6_6parserNtB3m_6Parser18did_you_mean_errors_0EReINtB2d_7IterMutNtNtNtB8_7builder7command7CommandEEB8_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.866.2.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !10519)
  %i.aib = load ptr, ptr %i.abb, align 8, !alias.scope !10519, !noalias !10520, !nonnull !11, !noundef !11 ; 2 uses
  %i.aic = load i64, ptr %i.abc, align 8, !alias.scope !10519, !noalias !10520, !noundef !11 ; 2 uses
  %.idx.i.i447 = shl nuw nsw i64 %i.aic, 5
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aib, i64 %.idx.i.i447
  %i.aie = icmp eq i64 %i.aic, 0
  br i1 %i.aie, label %.thread.i, label %.lr.ph.i.i34.i

.lr.ph.i.i34.i:                                   ; preds = %bb.eg, %_RNCINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB8_7MKeyMap3getReE0Ba_.exit.thread.i.i.i
  %i.aif = phi ptr [ %i.aig, %_RNCINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB8_7MKeyMap3getReE0Ba_.exit.thread.i.i.i ], [ %i.aib, %bb.eg ] ; 5 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aif, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10521)
  %i.aih = load i32, ptr %i.aif, align 8, !range !31, !alias.scope !10521, !noalias !10522, !noundef !11
  %i.aii = icmp eq i32 %i.aih, 1
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aif, i64 16
  %i.aik = load i64, ptr %i.aij, align 8, !alias.scope !10521, !noalias !10522
  %i.ail = icmp eq i64 %i.aik, %.sroa.10.2.i
  %or.cond.i.i.i.i.i448 = select i1 %i.aii, i1 %i.ail, i1 false
  br i1 %or.cond.i.i.i.i.i448, label %_RNCINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB8_7MKeyMap3getReE0Ba_.exit.i.i.i, label %_RNCINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB8_7MKeyMap3getReE0Ba_.exit.thread.i.i.i

_RNCINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB8_7MKeyMap3getReE0Ba_.exit.i.i.i: ; preds = %.lr.ph.i.i34.i
  %i.aim = getelementptr inbounds nuw i8, ptr %i.aif, i64 8
  %i.ain = load ptr, ptr %i.aim, align 8, !alias.scope !10521, !noalias !10522, !nonnull !11, !noundef !11
  %bcmp.i.i.i.i.i502 = call i32 @bcmp(ptr nonnull %i.ain, ptr nonnull readonly %.sroa.866.2.i, i64 %.sroa.10.2.i), !noalias !10523
  %i.aio = icmp eq i32 %bcmp.i.i.i.i.i502, 0
  br i1 %i.aio, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BS_NtBS_7MKeyMap3getReE0EBU_.exit.i.i, label %_RNCINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB8_7MKeyMap3getReE0Ba_.exit.thread.i.i.i

_RNCINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB8_7MKeyMap3getReE0Ba_.exit.thread.i.i.i: ; preds = %_RNCINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB8_7MKeyMap3getReE0Ba_.exit.i.i.i, %.lr.ph.i.i34.i
  %i.aip = icmp eq ptr %i.aig, %i.aid
  br i1 %i.aip, label %.loopexit120.i, label %.lr.ph.i.i34.i

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BS_NtBS_7MKeyMap3getReE0EBU_.exit.i.i: ; preds = %_RNCINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB8_7MKeyMap3getReE0Ba_.exit.i.i.i
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aif, i64 24
  %i.air = load i64, ptr %i.aiq, align 8, !noalias !10524, !noundef !11 ; 3 uses
  %i.ais = getelementptr inbounds nuw i8, ptr %i.aba, i64 144
  %i.ait = load i64, ptr %i.ais, align 8, !alias.scope !10519, !noalias !10520, !noundef !11 ; 2 uses
  %i.aiu = icmp ult i64 %i.air, %i.ait
  br i1 %i.aiu, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BS_NtBS_7MKeyMap3getReE0EBU_.exit.i.i
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.air, i64 noundef %i.ait, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #44, !noalias !10524
  unreachable

.loopexit120.i:                                   ; preds = %_RNCINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB8_7MKeyMap3getReE0Ba_.exit.thread.i.i.i, %bb.ei, %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1v_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB6_6parserNtB3m_6Parser18did_you_mean_errors_0EReINtB2d_7IterMutNtNtNtB8_7builder7command7CommandEEB8_.exit.i
  br i1 %.not.i445, label %bb.ek, label %.thread.i

bb.ei:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BS_NtBS_7MKeyMap3getReE0EBU_.exit.i.i
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aba, i64 136
  %i.aiw = load ptr, ptr %i.aiv, align 8, !alias.scope !10519, !noalias !10520, !nonnull !11, !noundef !11
  %i.aix = getelementptr inbounds nuw [600 x i8], ptr %i.aiw, i64 %i.air
  call fastcc void @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16start_custom_arg(ptr noundef nonnull readonly align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(600) %i.aix, i8 noundef 2) #43
  br label %.loopexit120.i

.thread.i:                                        ; preds = %.loopexit120.i, %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !10434
  call void @llvm.experimental.noalias.scope.decl(metadata !10525)
  call void @llvm.experimental.noalias.scope.decl(metadata !10526)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !10527
  store i64 %.sroa.063.2.i, ptr %i.ab, align 8, !noalias !10528
  %.sroa.489.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  store ptr %.sroa.866.2.i, ptr %.sroa.489.0..sroa_idx.i, align 8, !noalias !10528
  %.sroa.590.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 %.sroa.10.2.i, ptr %.sroa.590.0..sroa_idx.i, align 8, !noalias !10528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !10527
  store ptr %i.ab, ptr %i.aa, align 8, !noalias !10527
  %.sroa.42.0..sroa_idx.i37.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @_RNvXsq_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i37.i, align 8, !noalias !10527
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(48) %i.al, ptr noundef nonnull @72, ptr noundef nonnull %i.aa) #43, !noalias !10529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !10527
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i64 %.sroa.11.2.i, ptr %i.aiy, align 8, !alias.scope !10530, !noalias !10434
  %.sroa.892.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.892.24..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.i, i64 16, i1 false), !noalias !10434
  call void @llvm.experimental.noalias.scope.decl(metadata !10531)
  %.val.i.i.i449 = load i64, ptr %i.ab, align 8, !range !12, !alias.scope !10531, !noalias !10527, !noundef !11 ; 2 uses
  %i.aiz = icmp eq i64 %.val.i.i.i449, 0
  br i1 %i.aiz, label %_RNCNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB7_6Parser18did_you_mean_errors0_0Bb_.exit.i, label %bb.ej

bb.ej:                                            ; preds = %.thread.i
  %.val1.i.i.i450 = load ptr, ptr %.sroa.489.0..sroa_idx.i, align 8, !alias.scope !10531, !noalias !10527, !nonnull !11, !noundef !11
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i450, i64 noundef %.val.i.i.i449, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !10532
  br label %_RNCNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB7_6Parser18did_you_mean_errors0_0Bb_.exit.i

_RNCNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB7_6Parser18did_you_mean_errors0_0Bb_.exit.i: ; preds = %bb.ej, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !10527
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, ptr noundef nonnull align 8 dereferenceable(48) %i.al, i64 48, i1 false), !noalias !10434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !10434
  br label %bb.el

bb.ek:                                            ; preds = %.loopexit120.i
  store i64 -1, ptr %i.ar, align 8, !noalias !10434
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %_RNCNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB7_6Parser18did_you_mean_errors0_0Bb_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !10434
  call fastcc void @_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command14required_graph(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.aba) #43, !noalias !10432
  %.val26.i451 = load ptr, ptr %i.ib, align 8, !alias.scope !10433, !noalias !10533, !nonnull !11, !noundef !11 ; 2 uses
  %.val27.i452 = load i64, ptr %i.ic, align 8, !alias.scope !10433, !noalias !10533, !noundef !11 ; 2 uses
  %.idx115.i = shl nuw nsw i64 %.val27.i452, 4
  %i.aja = getelementptr inbounds nuw i8, ptr %.val26.i451, i64 %.idx115.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !10534
  %i.ajb = icmp eq i64 %.val27.i452, 0
  br i1 %i.ajb, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtB2k_6filter6FilterIB3a_INtNtNtB2o_5slice4iter4IterB11_ENCNvMs0_NtNtB17_6parser6parserNtB4f_6Parser18did_you_mean_errors1_0ENCB49_s2_0EEE9from_iterB17_.exit.i, label %.lr.ph.i.i.i.i.i.i.i453

.lr.ph.i.i.i.i.i.i.i453:                          ; preds = %bb.el
  %i.ajc = getelementptr i8, ptr %i.aba, i64 136  ; 2 uses
  %i.ajd = getelementptr i8, ptr %i.aba, i64 144  ; 2 uses
  br label %bb.em

bb.em:                                            ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IduINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs0_NtNtB1c_6parser6parserNtB2I_6Parser18did_you_mean_errors1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2C_s2_0E0E0B1c_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i453
  %i.aje = phi ptr [ %.val26.i451, %.lr.ph.i.i.i.i.i.i.i453 ], [ %i.ajf, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IduINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs0_NtNtB1c_6parser6parserNtB2I_6Parser18did_you_mean_errors1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2C_s2_0E0E0B1c_.exit.i.i.i.i.i.i.i ] ; 5 uses
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aje, i64 16 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10535)
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aje, align 8, !alias.scope !10535, !noalias !10536 ; 2 uses
  %i.ajg = getelementptr i8, ptr %i.aje, i64 8
  %.val1.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ajg, align 8, !alias.scope !10535, !noalias !10536 ; 3 uses
  %i.ajh = call fastcc noundef zeroext i1 @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1, ptr %.val.i.i.i.i.i.i.i.i.i, i64 %.val1.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) @0) #43, !noalias !10537
  br i1 %i.ajh, label %bb.en, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IduINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs0_NtNtB1c_6parser6parserNtB2I_6Parser18did_you_mean_errors1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2C_s2_0E0E0B1c_.exit.i.i.i.i.i.i.i

bb.en:                                            ; preds = %bb.em
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ajc, align 8, !noalias !10538, !nonnull !11, !noundef !11 ; 2 uses
  %.val5.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ajd, align 8, !noalias !10538, !noundef !11 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.val5.i.i.i.i.i.i.i.i.i.i.i, 600
  %i.aji = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ajj = icmp eq i64 %.val5.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ajj, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IduINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs0_NtNtB1c_6parser6parserNtB2I_6Parser18did_you_mean_errors1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2C_s2_0E0E0B1c_.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i492

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i492:              ; preds = %bb.en, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ajk = phi ptr [ %i.ajl, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i.i.i.i.i.i, %bb.en ] ; 4 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajk, i64 600 ; 2 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajk, i64 544
  %i.ajn = load i64, ptr %i.ajm, align 8, !noalias !10539, !noundef !11
  %i.ajo = icmp eq i64 %i.ajn, %.val1.i.i.i.i.i.i.i.i.i
  br i1 %i.ajo, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i492
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajk, i64 536
  %i.ajq = load ptr, ptr %i.ajp, align 8, !noalias !10539, !nonnull !11, !noundef !11
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.ajq, ptr nonnull %.val.i.i.i.i.i.i.i.i.i, i64 %.val1.i.i.i.i.i.i.i.i.i), !noalias !10539
  %i.ajr = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ajr, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtBW_6Parser18did_you_mean_errors2_0INtB7_5FnMutTRRNtNtNtB10_4util2id2IdEE8call_mutB10_.exit.i.i.i.i.i.i.i.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i492
  %i.ajs = icmp eq ptr %i.ajl, %i.aji
  br i1 %i.ajs, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IduINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs0_NtNtB1c_6parser6parserNtB2I_6Parser18did_you_mean_errors1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2C_s2_0E0E0B1c_.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i492

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtBW_6Parser18did_you_mean_errors2_0INtB7_5FnMutTRRNtNtNtB10_4util2id2IdEE8call_mutB10_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajk, i64 592
  %i.aju = load i32, ptr %i.ajt, align 8, !noalias !10538, !noundef !11
  %i.ajv = and i32 %i.aju, 4
  %.not4.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ajv, 0
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i39.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IduINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs0_NtNtB1c_6parser6parserNtB2I_6Parser18did_you_mean_errors1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2C_s2_0E0E0B1c_.exit.i.i.i.i.i.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IduINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs0_NtNtB1c_6parser6parserNtB2I_6Parser18did_you_mean_errors1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2C_s2_0E0E0B1c_.exit.i.i.i.i.i.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtBW_6Parser18did_you_mean_errors2_0INtB7_5FnMutTRRNtNtNtB10_4util2id2IdEE8call_mutB10_.exit.i.i.i.i.i.i.i.i.i, %bb.en, %bb.em
  %i.ajw = icmp eq ptr %i.ajf, %i.aja
  br i1 %i.ajw, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtB2k_6filter6FilterIB3a_INtNtNtB2o_5slice4iter4IterB11_ENCNvMs0_NtNtB17_6parser6parserNtB4f_6Parser18did_you_mean_errors1_0ENCB49_s2_0EEE9from_iterB17_.exit.i, label %bb.em

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i39.i: ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtBW_6Parser18did_you_mean_errors2_0INtB7_5FnMutTRRNtNtNtB10_4util2id2IdEE8call_mutB10_.exit.i.i.i.i.i.i.i.i.i
  %i.ajx = getelementptr i8, ptr %i.aje, i64 8
  %.val.i.i40.i493 = load ptr, ptr %i.aje, align 8, !noalias !10540, !nonnull !11, !noundef !11
  %.val3.i.i.i494 = load i64, ptr %i.ajx, align 8, !noalias !10540, !noundef !11
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !10541
  %i.ajy = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 64, i64 noundef range(i64 1, 9) 8) #43, !noalias !10541 ; 5 uses
  %i.ajz = icmp eq ptr %i.ajy, null
  br i1 %i.ajz, label %bb.eo, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i41.i

bb.eo:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i39.i
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 64) #46, !noalias !10542
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i41.i: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i39.i
  store ptr %.val.i.i40.i493, ptr %i.ajy, align 8, !noalias !10542
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajy, i64 8
  store i64 %.val3.i.i.i494, ptr %i.aka, align 8, !noalias !10542
  store i64 4, ptr %i.z, align 8, !noalias !10534
  %.sroa.4.0..sroa_idx.i42.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  store ptr %i.ajy, ptr %.sroa.4.0..sroa_idx.i42.i, align 8, !noalias !10534
  %.sroa.64.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i.i, align 8, !noalias !10534
  call void @llvm.experimental.noalias.scope.decl(metadata !10543)
end_hunk_4
begin_hunk_5_@_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16get_matches_with:bb.a
  br i1 %.not89.i, label %bb.fy, label %.split84.i

._crit_edge.i:                                    ; preds = %bb.gi, %_RINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB6_7MKeyMap3getjEB8_.exit148.thread.i
  %.sroa.0686.6 = phi i8 [ %.sroa.0686.01812, %_RINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB6_7MKeyMap3getjEB8_.exit148.thread.i ], [ 1, %bb.gi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !10618
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fm, ptr noundef nonnull align 8 dereferenceable(72) %i.bc, i64 72, i1 false), !noalias !10626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !10618
  %.pr820.pre = load i64, ptr %i.fm, align 8, !noalias !10287
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15parse_short_arg.exit

.split84.i:                                       ; preds = %.lr.ph.i393
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !10618
  call void @_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ay, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.015.0.copyload.i, i64 noundef %.sroa.6.0.copyload.i) #43, !noalias !10601
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !10618
  store ptr %i.ay, ptr %i.ax, align 8, !noalias !10618
  store ptr @_RNvXsb_NtCs4wP2HXfJTCR_5alloc6borrowINtB5_3CoweENtNtCsj6eKBz9Db1c_4core3fmt7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.457.0..sroa_idx.i395, align 8, !noalias !10618
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.az, ptr noundef nonnull @69, ptr noundef nonnull %i.ax) #43, !noalias !10601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !10618
  %.val102.i = load i64, ptr %i.ay, align 8, !range !13, !noalias !10618, !noundef !11 ; 2 uses
  %i.atg = icmp sgt i64 %.val102.i, 0
  br i1 %i.atg, label %bb.fx, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit.i

bb.fx:                                            ; preds = %.split84.i
  %.val103.i = load ptr, ptr %i.jg, align 8, !noalias !10618, !nonnull !11, !noundef !11
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val103.i, i64 noundef %.val102.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !10627
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit.i: ; preds = %bb.fx, %.split84.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !10618
  store i64 -9223372036854775801, ptr %i.fm, align 8, !alias.scope !10594, !noalias !10626
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false), !noalias !10626
  br label %.loopexit194.i

bb.fy:                                            ; preds = %.lr.ph.i393
  %.sroa.6.8.extract.trunc.i = trunc i64 %.sroa.6.0.copyload.i to i32 ; 4 uses
  store i32 %.sroa.6.8.extract.trunc.i, ptr %i.ba, align 4, !noalias !10618
  %i.ath = load ptr, ptr %i.gc, align 8, !alias.scope !10595, !noalias !10625, !nonnull !11, !align !17, !noundef !11 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10628)
  %i.ati = getelementptr inbounds nuw i8, ptr %i.ath, i64 160
  %i.atj = load ptr, ptr %i.ati, align 8, !alias.scope !10628, !noalias !10629, !nonnull !11, !noundef !11 ; 2 uses
  %i.atk = getelementptr inbounds nuw i8, ptr %i.ath, i64 168
  %i.atl = load i64, ptr %i.atk, align 8, !alias.scope !10628, !noalias !10629, !noundef !11 ; 2 uses
  %.idx4603.a = shl nuw nsw i64 %i.atl, 5
  %i.atm = getelementptr inbounds nuw i8, ptr %i.atj, i64 %.idx4603.a
  %i.atn = icmp eq i64 %i.atl, 0
  br i1 %i.atn, label %._crit_edge4533, label %.lr.ph4532

bb.fz:                                            ; preds = %.lr.ph4532
  %i.ato = getelementptr inbounds nuw i8, ptr %i.atq, i64 32 ; 2 uses
  %i.atp = icmp eq ptr %i.ato, %i.atm
  br i1 %i.atp, label %._crit_edge4533, label %.lr.ph4532

.lr.ph4532:                                       ; preds = %bb.fy, %bb.fz
  %i.atq = phi ptr [ %i.ato, %bb.fz ], [ %i.atj, %bb.fy ] ; 4 uses
  %.val.i.i.i153.i = load i32, ptr %i.atq, align 8, !range !31, !noalias !10630, !noundef !11
  %i.atr = getelementptr i8, ptr %i.atq, i64 4
  %.val1.i.i.i154.i = load i32, ptr %i.atr, align 4, !noalias !10630
  %i.ats = icmp eq i32 %.val.i.i.i153.i, 0
  %i.att = icmp eq i32 %.val1.i.i.i154.i, %.sroa.6.8.extract.trunc.i
  %.sroa.0.0.i.i.i.i155.i = select i1 %i.ats, i1 %i.att, i1 false
  br i1 %.sroa.0.0.i.i.i.i155.i, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BS_NtBS_7MKeyMap3getcE0EBU_.exit.i.i, label %bb.fz

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BS_NtBS_7MKeyMap3getcE0EBU_.exit.i.i: ; preds = %.lr.ph4532
  %i.atu = getelementptr inbounds nuw i8, ptr %i.atq, i64 24
  %i.atv = load i64, ptr %i.atu, align 8, !noalias !10631, !noundef !11 ; 3 uses
  %i.atw = getelementptr inbounds nuw i8, ptr %i.ath, i64 144
  %i.atx = load i64, ptr %i.atw, align 8, !alias.scope !10628, !noalias !10629, !noundef !11 ; 2 uses
  %i.aty = icmp ult i64 %i.atv, %i.atx
  br i1 %i.aty, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BS_NtBS_7MKeyMap3getcE0EBU_.exit.i.i
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.atv, i64 noundef %i.atx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #44, !noalias !10631
  unreachable

bb.gb:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BS_NtBS_7MKeyMap3getcE0EBU_.exit.i.i
  %i.atz = getelementptr inbounds nuw i8, ptr %i.ath, i64 136
  %i.aua = load ptr, ptr %i.atz, align 8, !alias.scope !10628, !noalias !10629, !nonnull !11, !noundef !11
  %i.aub = getelementptr inbounds nuw [600 x i8], ptr %i.aua, i64 %i.atv ; 4 uses
  %i.auc = getelementptr i8, ptr %i.aub, i64 16
  %.val107.i = load i64, ptr %i.auc, align 8, !noalias !10601
  %i.aud = getelementptr i8, ptr %i.aub, i64 32
  %.val108.i = load i64, ptr %i.aud, align 8, !noalias !10601
  %i.aue = trunc nuw i64 %.val107.i to i1
  %i.auf = icmp eq i64 %.val108.i, 0
  %.sroa.02.0.i.not.i = select i1 %i.aue, i1 %i.auf, i1 false
  br i1 %.sroa.02.0.i.not.i, label %bb.ge, label %bb.gf

._crit_edge4533:                                  ; preds = %bb.fy, %bb.fz
  %i.aug = getelementptr i8, ptr %i.ath, i64 184
  %.val113.i = load ptr, ptr %i.aug, align 8, !noalias !10601, !nonnull !11, !noundef !11 ; 2 uses
  %i.auh = getelementptr i8, ptr %i.ath, i64 192
  %.val114.i = load i64, ptr %i.auh, align 8, !noalias !10601, !noundef !11 ; 2 uses
  %.idx.i.i397 = mul nuw nsw i64 %.val114.i, 712
  %i.aui = getelementptr inbounds nuw i8, ptr %.val113.i, i64 %.idx.i.i397
  %i.auj = icmp eq i64 %.val114.i, 0
  br i1 %i.auj, label %.split.i401, label %.lr.ph.i.i.i398

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command17find_short_subcmd0Bb_.exit.loopexit.i.i.i: ; preds = %bb.gd, %bb.gc
  %i.auk = icmp eq ptr %i.aum, %i.aui
  br i1 %i.auk, label %.split.i401, label %.lr.ph.i.i.i398

.lr.ph.i.i.i398:                                  ; preds = %._crit_edge4533, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command17find_short_subcmd0Bb_.exit.loopexit.i.i.i
  %i.aul = phi ptr [ %i.aum, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command17find_short_subcmd0Bb_.exit.loopexit.i.i.i ], [ %.val113.i, %._crit_edge4533 ] ; 6 uses
  %i.aum = getelementptr inbounds nuw i8, ptr %i.aul, i64 712 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10632)
  %i.aun = getelementptr inbounds nuw i8, ptr %i.aul, i64 696
  %i.auo = load i32, ptr %i.aun, align 8, !range !45, !alias.scope !10632, !noalias !10633, !noundef !11
  %i.aup = icmp eq i32 %i.auo, %.sroa.6.8.extract.trunc.i
  br i1 %i.aup, label %.loopexit.i399, label %bb.gc

bb.gc:                                            ; preds = %.lr.ph.i.i.i398
  %i.auq = getelementptr inbounds nuw i8, ptr %i.aul, i64 88
  %i.aur = load ptr, ptr %i.auq, align 8, !alias.scope !10632, !noalias !10633, !nonnull !11, !noundef !11 ; 2 uses
  %i.aus = getelementptr inbounds nuw i8, ptr %i.aul, i64 96
  %i.aut = load i64, ptr %i.aus, align 8, !alias.scope !10632, !noalias !10633, !noundef !11 ; 2 uses
  %.idx4604.a = shl nuw nsw i64 %i.aut, 3
  %i.auu = getelementptr inbounds nuw i8, ptr %i.aur, i64 %.idx4604.a
  %.not.not.not.i.not.not.i.not.i.i.i.i4541 = icmp eq i64 %i.aut, 0
  br i1 %.not.not.not.i.not.not.i.not.i.i.i.i4541, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command17find_short_subcmd0Bb_.exit.loopexit.i.i.i, label %.lr.ph4543.a

bb.gd:                                            ; preds = %.lr.ph4543.a
  %i.auv = getelementptr inbounds nuw i8, ptr %i.auw, i64 8 ; 2 uses
  %.not.not.not.i.not.not.i.not.i.i.i.i = icmp eq ptr %i.auv, %i.auu
  br i1 %.not.not.not.i.not.not.i.not.i.i.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command17find_short_subcmd0Bb_.exit.loopexit.i.i.i, label %.lr.ph4543.a

.lr.ph4543.a:                                     ; preds = %bb.gc, %bb.gd
  %i.auw = phi ptr [ %i.auv, %bb.gd ], [ %i.aur, %bb.gc ] ; 2 uses
  %.val5.i.i.i.i.i.i = load i32, ptr %i.auw, align 4, !range !52, !noalias !10634, !noundef !11
  %i.aux = icmp eq i32 %.val5.i.i.i.i.i.i, %.sroa.6.8.extract.trunc.i
  br i1 %i.aux, label %.loopexit.i399, label %bb.gd

bb.ge:                                            ; preds = %bb.gb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !10618
  store i64 0, ptr %i.aw, align 8, !noalias !10618
  store ptr inttoptr (i64 8 to ptr), ptr %i.je, align 8, !noalias !10618
  store i64 0, ptr %i.jf, align 8, !noalias !10618
  call fastcc void @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser5react(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %i.fm, ptr noundef nonnull align 8 dereferenceable(40) %0, i8 noundef 0, i8 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(600) %i.aub, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.aw, i64 noundef 0, i64 undef, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1) #43, !noalias !10635
  %i.auy = load i64, ptr %i.fm, align 8, !range !58, !alias.scope !10594, !noalias !10626, !noundef !11
  %i.auz = icmp eq i64 %i.auy, -1
  br i1 %i.auz, label %bb.gg, label %bb.gh

bb.gf:                                            ; preds = %bb.gb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !10618
  %i.ava = load ptr, ptr %i.fn, align 8, !alias.scope !10596, !noalias !10619, !nonnull !11, !noundef !11
  %i.avb = load i64, ptr %i.in, align 8, !alias.scope !10596, !noalias !10619, !noundef !11
  %i.avc = load i64, ptr %i.ip, align 8, !alias.scope !10596, !noalias !10619, !noundef !11
  %i.avd = load ptr, ptr %i.ir, align 8, !alias.scope !10596, !noalias !10619, !noundef !11 ; 2 uses
  %.not95.i = icmp eq ptr %i.avd, null
  %i.ave = load i64, ptr %i.is, align 8, !alias.scope !10596, !noalias !10619
  %.sroa.564.0.i = select i1 %.not95.i, i64 undef, i64 %i.ave
  store ptr %i.ava, ptr %i.av, align 8, !noalias !10618
  store i64 %i.avb, ptr %i.ja, align 8, !noalias !10618
  %i.avf = load <2 x ptr>, ptr %i.io, align 8, !alias.scope !10596, !noalias !10619
  store <2 x ptr> %i.avf, ptr %i.jb, align 8, !noalias !10618
  store i64 %i.avc, ptr %.sroa.562.0..sroa_idx.i, align 8, !noalias !10618
  store ptr %i.avd, ptr %i.jc, align 8, !noalias !10618
  store i64 %.sroa.564.0.i, ptr %i.jd, align 8, !noalias !10618
  %i.avg = call { ptr, i64 } @_RNvMs2_Cs3RZUOUhPFQ6_8clap_lexNtB5_10ShortFlags13next_value_os(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.av) #43, !noalias !10601 ; 2 uses
  %i.avh = extractvalue { ptr, i64 } %i.avg, 0    ; 3 uses
  %.not96.i = icmp eq ptr %i.avh, null
  %i.avi = extractvalue { ptr, i64 } %i.avg, 1    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !10618
  %.not5.i192.i = icmp eq i64 %i.avi, 0
  %.not5.i.i396 = select i1 %.not96.i, i1 true, i1 %.not5.i192.i
  br i1 %.not5.i.i396, label %bb.gl, label %bb.gj

bb.gg:                                            ; preds = %bb.ge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !10618
  br label %.loopexit194.i

bb.gh:                                            ; preds = %bb.ge
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder6parser6parser11ParseResultEBH_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.bc) #43, !noalias !10601
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bc, ptr noundef nonnull align 8 dereferenceable(72) %i.fm, i64 72, i1 false), !noalias !10626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !10618
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gn, %bb.gh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !10618
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !10618
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !10618
  call void @_RNvMs2_Cs3RZUOUhPFQ6_8clap_lexNtB5_10ShortFlags9next_flag(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bb, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.fn) #43, !noalias !10601
  %i.avj = load i64, ptr %i.bb, align 8, !range !14, !noalias !10618, !noundef !11
  %i.avk = trunc nuw i64 %i.avj to i1
  br i1 %i.avk, label %.lr.ph.i393, label %._crit_edge.i

bb.gj:                                            ; preds = %bb.gf
  %i.avl = call { ptr, i64 } @_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt12strip_prefix(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.avh, i64 noundef %i.avi, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 1) #43, !noalias !10601 ; 2 uses
  %i.avm = extractvalue { ptr, i64 } %i.avl, 0    ; 2 uses
  %.not98.i = icmp eq ptr %i.avm, null
  br i1 %.not98.i, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.avn = extractvalue { ptr, i64 } %i.avl, 1
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.gj, %bb.gf
  %.sroa.530.0.i = phi i64 [ %i.avn, %bb.gk ], [ 0, %bb.gf ], [ %i.avi, %bb.gj ]
  %.sroa.027.0.i = phi ptr [ %i.avm, %bb.gk ], [ null, %bb.gf ], [ %i.avh, %bb.gj ]
  %.sroa.077.0.i = phi i1 [ true, %bb.gk ], [ false, %bb.gf ], [ false, %bb.gj ]
  call fastcc void @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15parse_opt_value(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.fm, ptr noundef nonnull align 8 dereferenceable(40) %0, i8 noundef 0, ptr noalias nofree noundef readonly captures(address, read_provenance) %.sroa.027.0.i, i64 %.sroa.530.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(600) %i.aub, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1, i1 noundef zeroext %.sroa.077.0.i) #43, !noalias !10635
  %i.avo = load i64, ptr %i.fm, align 8, !range !58, !alias.scope !10594, !noalias !10626, !noundef !11 ; 5 uses
  %i.avp = icmp eq i64 %i.avo, -1
  br i1 %i.avp, label %.loopexit194.i, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.avq = icmp ne i64 %i.avo, -9223372036854775804
  call void @llvm.assume(i1 %i.avq)
  %i.avr = icmp eq i64 %i.avo, -9223372036854775805
  br i1 %i.avr, label %bb.gn, label %.loopexit194.i

bb.gn:                                            ; preds = %bb.gm
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder6parser6parser11ParseResultEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.fm) #43, !noalias !10636
  br label %bb.gi

.loopexit194.i:                                   ; preds = %bb.gl, %bb.gm, %bb.gv, %bb.go, %.split.i401, %bb.gg, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit.i
  %.pr8202605 = phi i64 [ -9223372036854775801, %.split.i401 ], [ -9223372036854775808, %bb.gv ], [ -1, %bb.go ], [ -1, %bb.gg ], [ -9223372036854775801, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit.i ], [ %i.avo, %bb.gm ], [ %i.avo, %bb.gl ]
  %.sroa.0686.8 = phi i8 [ %.sroa.0686.7, %.split.i401 ], [ %.sroa.0686.7, %bb.gv ], [ %.sroa.0686.7, %bb.go ], [ 1, %bb.gg ], [ %.sroa.0686.7, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit.i ], [ 1, %bb.gm ], [ 1, %bb.gl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !10618
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !10618
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder6parser6parser11ParseResultEBH_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.bc) #43, !noalias !10601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !10618
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15parse_short_arg.exit

.loopexit.i399:                                   ; preds = %.lr.ph.i.i.i398, %.lr.ph4543.a
  %i.avs = getelementptr inbounds nuw i8, ptr %i.aul, i64 560
  %i.avt = load ptr, ptr %i.avs, align 8, !noalias !10601, !nonnull !11, !noundef !11
  %i.avu = getelementptr inbounds nuw i8, ptr %i.aul, i64 568
  %i.avv = load i64, ptr %i.avu, align 8, !noalias !10601, !noundef !11 ; 7 uses
  %i.avw = call fastcc noundef align 8 ptr @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15resolve_pending(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1) #43, !noalias !10637 ; 2 uses
  %.not92.i = icmp eq ptr %i.avw, null
  br i1 %.not92.i, label %bb.gp, label %bb.go

.split.i401:                                      ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command17find_short_subcmd0Bb_.exit.loopexit.i.i.i, %._crit_edge4533
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !10618
  store ptr %i.ba, ptr %i.au, align 8, !noalias !10618
  store ptr @_RNvXsk_NtCsj6eKBz9Db1c_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.474.0..sroa_idx.i, align 8, !noalias !10618
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noundef nonnull @69, ptr noundef nonnull %i.au) #43, !noalias !10636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !10618
  store i64 -9223372036854775801, ptr %i.fm, align 8, !alias.scope !10594, !noalias !10626
  br label %.loopexit194.i

bb.go:                                            ; preds = %.loopexit.i399
  store ptr %i.avw, ptr %.sroa.419.0..sroa_idx.i, align 8, !alias.scope !10594, !noalias !10626
  store i64 -1, ptr %i.fm, align 8, !alias.scope !10594, !noalias !10626
  br label %.loopexit194.i

bb.gp:                                            ; preds = %.loopexit.i399
  %i.avx = load i64, ptr %i.jh, align 8, !alias.scope !10595, !noalias !10625, !noundef !11
  %i.avy = add i64 %i.avx, 1                      ; 2 uses
  store i64 %i.avy, ptr %i.jh, align 8, !alias.scope !10595, !noalias !10625
  %.not.i159.i = icmp slt i64 %i.avv, 0
  br i1 %.not.i159.i, label %bb.gr, label %bb.gq, !prof !21

bb.gq:                                            ; preds = %bb.gp
  %i.avz = icmp eq i64 %i.avv, 0
  br i1 %i.avz, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread181.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i400

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i400: ; preds = %bb.gq
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !10638
  %i.awa = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.avv, i64 noundef range(i64 1, 9) 1) #43, !noalias !10638 ; 3 uses
  %i.awb = icmp eq ptr %i.awa, null
  br i1 %i.awb, label %bb.gr, label %bb.gt

bb.gr:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i400, %bb.gp
  %.sroa.4.0.ph.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i400 ], [ 0, %bb.gp ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.avv) #46, !noalias !10601
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread181.i: ; preds = %bb.gt, %bb.gq
  %i.awc = phi ptr [ %i.awa, %bb.gt ], [ inttoptr (i64 1 to ptr), %bb.gq ]
  %i.awd = load i64, ptr %0, align 8, !range !14, !alias.scope !10639, !noalias !10625, !noundef !11
  %i.awe = trunc nuw i64 %i.awd to i1
  br i1 %i.awe, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECsfu0rQaTkGUu_12clap_builder.exit.i, label %bb.gs

bb.gs:                                            ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread181.i
  store i64 1, ptr %0, align 8, !alias.scope !10639, !noalias !10625
  store i64 %i.avy, ptr %i.ji, align 8, !alias.scope !10639, !noalias !10625
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECsfu0rQaTkGUu_12clap_builder.exit.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECsfu0rQaTkGUu_12clap_builder.exit.i: ; preds = %bb.gs, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread181.i
  %i.awf = load ptr, ptr %i.ir, align 8, !alias.scope !10596, !noalias !10619, !noundef !11
  %.not94.i = icmp eq ptr %i.awf, null
  br i1 %.not94.i, label %bb.gu, label %bb.gv

bb.gt:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i400
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.awa, ptr nonnull align 1 %i.avt, i64 %i.avv, i1 false), !noalias !10601
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread181.i

bb.gu:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECsfu0rQaTkGUu_12clap_builder.exit.i
  %i.awg = load ptr, ptr %i.io, align 8, !alias.scope !10596, !noalias !10619, !nonnull !11, !noundef !11
  %i.awh = load ptr, ptr %i.iq, align 8, !alias.scope !10596, !noalias !10619, !nonnull !11, !noundef !11
  %i.awi = icmp eq ptr %i.awh, %i.awg
  br i1 %i.awi, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %bb.gw, %bb.gu, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECsfu0rQaTkGUu_12clap_builder.exit.i
  store i64 -9223372036854775808, ptr %i.fm, align 8, !alias.scope !10594, !noalias !10626
  store i64 %i.avv, ptr %.sroa.419.0..sroa_idx.i, align 8, !alias.scope !10594, !noalias !10626
  store ptr %i.awc, ptr %.sroa.444.sroa.4.0..sroa.444.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !10594, !noalias !10626
  store i64 %i.avv, ptr %.sroa.444.sroa.5.0..sroa.444.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !10594, !noalias !10626
  br label %.loopexit194.i

bb.gw:                                            ; preds = %bb.gu
  store i64 0, ptr %0, align 8, !alias.scope !10595, !noalias !10625
  br label %bb.gv

_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15parse_short_arg.exit.thread: ; preds = %bb.fr, %_RNvXs7_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7CommandINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexRNtNtNtB9_4util2id2IdE5index.exit.i414, %_RNvXs7_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7CommandINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexRNtNtNtB9_4util2id2IdE5index.exit123.i, %bb.fo, %bb.fp, %.loopexit195.i
  store i64 -9223372036854775803, ptr %i.fm, align 8, !alias.scope !10594, !noalias !10626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %bb.gz

_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15parse_short_arg.exit: ; preds = %._crit_edge.i, %.loopexit194.i
  %.pr820 = phi i64 [ %.pr820.pre, %._crit_edge.i ], [ %.pr8202605, %.loopexit194.i ]
  %.sroa.0686.9.ph = phi i8 [ %.sroa.0686.6, %._crit_edge.i ], [ %.sroa.0686.8, %.loopexit194.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  %i.awj = icmp eq i64 %.pr820, -1
  br i1 %i.awj, label %bb.gy, label %bb.gz

bb.gx:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fo), !noalias !10287
  br label %bb.fi

bb.gy:                                            ; preds = %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15parse_short_arg.exit
  %i.awk = load ptr, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !10287, !nonnull !11, !align !17, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm), !noalias !10287
  br label %bb.hy

bb.gz:                                            ; preds = %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15parse_short_arg.exit.thread, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15parse_short_arg.exit
  %.sroa.0686.9822 = phi i8 [ %.sroa.0686.01812, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15parse_short_arg.exit.thread ], [ %.sroa.0686.9.ph, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15parse_short_arg.exit ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fl, ptr noundef nonnull align 8 dereferenceable(72) %i.fm, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm), !noalias !10287
  %i.awl = load i64, ptr %i.fl, align 8, !range !29, !noundef !11 ; 3 uses
  %i.awm = icmp ne i64 %i.awl, -9223372036854775804
  call void @llvm.assume(i1 %i.awm)
  %i.awn = xor i64 %i.awl, -9223372036854775808
  %i.awo = icmp slt i64 %i.awl, 0
  %i.awp = select i1 %i.awo, i64 %i.awn, i64 4
  switch i64 %i.awp, label %bb.e [
    i64 0, label %bb.ha
    i64 1, label %bb.hv
    i64 2, label %bb.hw
    i64 3, label %bb.hb
    i64 4, label %bb.hb
    i64 7, label %bb.hj
    i64 6, label %bb.hc
    i64 5, label %bb.hz
    i64 8, label %bb.hz
  ], !prof !10640

bb.ha:                                            ; preds = %bb.gz
  %i.awq = load i64, ptr %0, align 8, !range !14, !alias.scope !10284, !noalias !10288, !noundef !11
  %i.awr = trunc nuw i64 %i.awq to i1             ; 2 uses
  br i1 %i.awr, label %bb.hq, label %bb.hr

bb.hb:                                            ; preds = %bb.gz, %bb.gz
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @251) #44, !noalias !10284, !inline_history !8601
  unreachable

bb.hc:                                            ; preds = %bb.gz
  %i.aws = call fastcc noundef align 8 ptr @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15resolve_pending(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1) #43, !inline_history !8601 ; 2 uses
  %i.awt = icmp eq ptr %i.aws, null
  br i1 %i.awt, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit389, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEBF_(ptr nonnull %i.aws) #43, !noalias !10284
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit389

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit389: ; preds = %bb.hc, %bb.hd
  %i.awu = load ptr, ptr %i.gc, align 8, !alias.scope !10284, !noalias !10288, !nonnull !11, !align !17, !noundef !11 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fk), !noalias !10287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fj), !noalias !10287
  call void @llvm.experimental.noalias.scope.decl(metadata !10641)
  call void @llvm.experimental.noalias.scope.decl(metadata !10642)
  call void @llvm.experimental.noalias.scope.decl(metadata !10643), !noalias !10284
  call void @llvm.experimental.noalias.scope.decl(metadata !10644), !noalias !10284
  %i.awv = getelementptr inbounds nuw i8, ptr %i.awu, i64 232
  %i.aww = load ptr, ptr %i.awv, align 8, !alias.scope !10645, !noalias !10646, !nonnull !11, !noundef !11 ; 2 uses
  %i.awx = getelementptr inbounds nuw i8, ptr %i.awu, i64 240
  %i.awy = load i64, ptr %i.awx, align 8, !alias.scope !10645, !noalias !10646, !noundef !11 ; 2 uses
  %.idx4605.a = shl nuw nsw i64 %i.awy, 4
  %i.awz = getelementptr inbounds nuw i8, ptr %i.aww, i64 %.idx4605.a
  %i.axa = icmp eq i64 %i.awy, 0
  br i1 %i.axa, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit388, label %.lr.ph4572.a

bb.he:                                            ; preds = %.lr.ph4572.a
  %i.axb = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i3804571, i64 16 ; 2 uses
  %i.axc = add i64 %.sroa.8.0.i.i.i3794570, 1
  %i.axd = icmp eq ptr %i.axb, %i.awz
  br i1 %i.axd, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit388, label %.lr.ph4572.a

.lr.ph4572.a:                                     ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit389, %bb.he
  %.sroa.0.01.i.i.i3804571 = phi ptr [ %i.axb, %bb.he ], [ %i.aww, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit389 ] ; 2 uses
  %.sroa.8.0.i.i.i3794570 = phi i64 [ %i.axc, %bb.he ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit389 ] ; 4 uses
  %.val.i.i.i381 = load i128, ptr %.sroa.0.01.i.i.i3804571, align 8, !noalias !10647
  %i.axe = icmp eq i128 %.val.i.i.i381, -100310019091698447603793328749864812255
  br i1 %i.axe, label %bb.hf, label %bb.he

bb.hf:                                            ; preds = %.lr.ph4572.a
  %i.axf = getelementptr inbounds nuw i8, ptr %i.awu, i64 264
  %i.axg = load i64, ptr %i.axf, align 8, !alias.scope !10645, !noalias !10646, !noundef !11 ; 2 uses
  %i.axh = icmp ult i64 %.sroa.8.0.i.i.i3794570, %i.axg
  br i1 %i.axh, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.0.i.i.i3794570, i64 noundef %i.axg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #44, !noalias !10647
  unreachable

bb.hh:                                            ; preds = %bb.hf
  %i.axi = getelementptr inbounds nuw i8, ptr %i.awu, i64 256
  %i.axj = load ptr, ptr %i.axi, align 8, !alias.scope !10645, !noalias !10646, !nonnull !11, !noundef !11
  %i.axk = getelementptr inbounds nuw [32 x i8], ptr %i.axj, i64 %.sroa.8.0.i.i.i3794570 ; 2 uses
  %.val5.i.i382 = load ptr, ptr %i.axk, align 8, !noalias !10648, !nonnull !11, !noundef !11
  %i.axl = getelementptr i8, ptr %i.axk, i64 8
  %.val6.i.i383 = load ptr, ptr %i.axl, align 8, !noalias !10648, !nonnull !11, !align !17, !noundef !11 ; 2 uses
  %i.axm = getelementptr inbounds nuw i8, ptr %.val6.i.i383, i64 16
  %i.axn = load i64, ptr %i.axm, align 8, !range !18, !invariant.load !11, !noalias !10648
  %i.axo = add nsw i64 %i.axn, -1
end_hunk_5
begin_hunk_6_@_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser5react:bb.a
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jv, i64 256
  %i.kk = load ptr, ptr %i.kj, align 8, !alias.scope !11784, !noalias !11785, !nonnull !11, !noundef !11
  %i.kl = getelementptr inbounds nuw [32 x i8], ptr %i.kk, i64 %.sroa.8.0.i.i.i128.i373 ; 2 uses
  %.val5.i.i131.i = load ptr, ptr %i.kl, align 8, !noalias !11787, !nonnull !11, !noundef !11
  %i.km = getelementptr i8, ptr %i.kl, i64 8
  %.val6.i.i132.i = load ptr, ptr %i.km, align 8, !noalias !11787, !nonnull !11, !align !17, !noundef !11 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.val6.i.i132.i, i64 16
  %i.ko = load i64, ptr %i.kn, align 8, !range !18, !invariant.load !11, !noalias !11787
  %i.kp = add nsw i64 %i.ko, -1
  %i.kq = and i64 %i.kp, -16
  %i.kr = getelementptr inbounds nuw i8, ptr %.val5.i.i131.i, i64 %i.kq
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !11787
  %i.kt = getelementptr inbounds nuw i8, ptr %.val6.i.i132.i, i64 24
  %i.ku = load ptr, ptr %i.kt, align 8, !invariant.load !11, !noalias !11787, !nonnull !11
  call void %i.ku(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.m, ptr noundef nonnull %i.ks) #45, !noalias !11787, !inline_history !11559
  %i.kv = load i128, ptr %i.m, align 16, !noalias !11787, !noundef !11
  %.not.i.i133.i = icmp eq i128 %i.kv, -100310019091698447603793328749864812255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !11787
  br i1 %.not.i.i133.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit137.i, label %bb.bt, !prof !16

bb.bt:                                            ; preds = %bb.bs
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !noalias !11787
  unreachable

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit137.i: ; preds = %bb.bp, %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit127.i, %bb.bs
  %.sroa.0.0.i.i134.i = phi ptr [ %i.ks, %bb.bs ], [ null, %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit127.i ], [ null, %bb.bp ] ; 2 uses
  %.not.i135.i = icmp eq ptr %.sroa.0.0.i.i134.i, null
  %..i136.i = select i1 %.not.i135.i, ptr @99, ptr %.sroa.0.0.i.i134.i ; 5 uses
  store ptr %i.jv, ptr %i.am, align 8, !alias.scope !11780, !noalias !11788
  %i.kw = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %..i136.i, ptr %i.kw, align 8, !alias.scope !11780, !noalias !11788
  %i.kx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store ptr null, ptr %i.kx, align 8, !alias.scope !11780, !noalias !11788
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !11789
  store i64 0, ptr %i.l, align 8, !alias.scope !11790, !noalias !11789
  %.sroa.42.0..sroa_idx.i.i138.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i138.i, align 8, !alias.scope !11790, !noalias !11789
  %.sroa.53.0..sroa_idx.i.i139.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i139.i, align 8, !alias.scope !11790, !noalias !11789
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !11789
  %i.ky = getelementptr inbounds nuw i8, ptr %..i136.i, i64 28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.k, ptr noundef nonnull align 2 dereferenceable(14) %i.ky, i64 14, i1 false), !noalias !11789
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !11789
  %.sroa.0.0.copyload.i140.i = load i8, ptr %i.ky, align 2, !noalias !11789
  %.sroa.7.0..sroa_idx.i141.i = getelementptr inbounds nuw i8, ptr %..i136.i, i64 32
  %.sroa.7.0.copyload.i142.i = load i8, ptr %.sroa.7.0..sroa_idx.i141.i, align 2, !noalias !11789
  %.sroa.11.0..sroa_idx.i143.i = getelementptr inbounds nuw i8, ptr %..i136.i, i64 36
  %.sroa.11.0.copyload.i144.i = load i8, ptr %.sroa.11.0..sroa_idx.i143.i, align 2, !noalias !11789
  %.sroa.15.0..sroa_idx.i145.i = getelementptr inbounds nuw i8, ptr %..i136.i, i64 40
  %.sroa.15.0.copyload.i146.i = load i16, ptr %.sroa.15.0..sroa_idx.i145.i, align 2, !noalias !11789
  %.not.i.i147.i = icmp eq i8 %.sroa.0.0.copyload.i140.i, -1
  %.not5.i.i148.i = icmp eq i8 %.sroa.7.0.copyload.i142.i, -1
  %or.cond.i149.i = select i1 %.not.i.i147.i, i1 %.not5.i.i148.i, i1 false
  %.not7.i.i150.i = icmp eq i8 %.sroa.11.0.copyload.i144.i, -1
  %or.cond35.i151.i = select i1 %or.cond.i149.i, i1 %.not7.i.i150.i, i1 false
  %i.kz = icmp eq i16 %.sroa.15.0.copyload.i146.i, 0
  %or.cond36.i152.i = select i1 %or.cond35.i151.i, i1 %i.kz, i1 false ; 2 uses
  %spec.select.i153.i = select i1 %or.cond36.i152.i, ptr inttoptr (i64 1 to ptr), ptr @139
  %spec.select38.i154.i = select i1 %or.cond36.i152.i, i64 0, i64 4
  store ptr %spec.select.i153.i, ptr %i.j, align 8, !noalias !11789, !captures !22
  %i.la = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %spec.select38.i154.i, ptr %i.la, align 8, !noalias !11789
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !11789
  store ptr %i.k, ptr %i.i, align 8, !noalias !11789
  %.sroa.48.0..sroa_idx.i155.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs8_NtCscy4Zx2DW6cp_7anstyle5styleNtB5_12StyleDisplayNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.48.0..sroa_idx.i155.i, align 8, !noalias !11789
  %i.lb = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.j, ptr %i.lb, align 8, !noalias !11789
  %.sroa.412.0..sroa_idx.i156.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.412.0..sroa_idx.i156.i, align 8, !noalias !11789
  %i.lc = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @140, ptr noundef nonnull %i.i) #43, !noalias !11789, !inline_history !23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !11789
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !11789
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !11789
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage20write_usage_no_title(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am, ptr noalias nofree noundef align 8 dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0) #43
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8trim_end(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #43, !noalias !11791, !inline_history !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !11792
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !11789
  %i.ld = call fastcc noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error15too_many_valuesB4_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.cc, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.aq, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.ao, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.an) #43, !noalias !11690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !11690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !11690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !11690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !11690
  br label %bb.bu

_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15verify_num_args.exit: ; preds = %._RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15verify_num_args.exit_crit_edge, %bb.aw, %bb.al, %bb.d
  %i.le = phi i64 [ %.pre, %._RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15verify_num_args.exit_crit_edge ], [ %i.ca, %bb.aw ], [ %i.ca, %bb.al ], [ %i.ca, %bb.d ] ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.lg = icmp ult i64 %i.le, 384307168202282326
  tail call void @llvm.assume(i1 %i.lg)
  %i.lh = icmp eq i64 %i.le, 0
  br i1 %i.lh, label %bb.bw, label %bb.bv

bb.bu:                                            ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit137.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEEB1e_.exit.i, %_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error22wrong_number_of_valuesB4_.exit.i, %_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error14too_few_valuesB4_.exit.i
  %.sroa.0.1.i.ph = phi ptr [ %i.is, %_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error14too_few_valuesB4_.exit.i ], [ %i.gy, %_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error22wrong_number_of_valuesB4_.exit.i ], [ %i.ep, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEEB1e_.exit.i ], [ %i.ld, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit137.i ]
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph, ptr %i.li, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.dw

bb.bv:                                            ; preds = %bb.bw, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15verify_num_args.exit
  %i.lj = getelementptr inbounds nuw i8, ptr %4, i64 588
  %.val128 = load i32, ptr %i.lj, align 4, !range !45, !noundef !11 ; 2 uses
  %.not95 = icmp eq i32 %.val128, -1
  br i1 %.not95, label %bb.cy, label %bb.cc

bb.bw:                                            ; preds = %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15verify_num_args.exit
  %i.lk = getelementptr inbounds nuw i8, ptr %4, i64 432
  %i.ll = load i64, ptr %i.lk, align 8, !noundef !11 ; 5 uses
  %i.lm = icmp ult i64 %i.ll, 576460752303423488
  tail call void @llvm.assume(i1 %i.lm)
  %i.ln = icmp eq i64 %i.ll, 0
  br i1 %i.ln, label %bb.bv, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.lo = getelementptr inbounds nuw i8, ptr %4, i64 424
  %i.lp = load ptr, ptr %i.lo, align 8, !nonnull !11, !noundef !11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11793)
  %i.lq = load i64, ptr %5, align 8, !range !12, !alias.scope !11794, !noundef !11
  %i.lr = icmp samesign ugt i64 %i.ll, %i.lq
  br i1 %i.lr, label %bb.by, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i, !prof !19

bb.by:                                            ; preds = %bb.bx
  tail call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5, i64 noundef 0, i64 noundef %i.ll, i64 noundef 8, i64 noundef 24) #43
  %.pre.i154 = load i64, ptr %i.lf, align 8, !alias.scope !11793
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i: ; preds = %bb.by, %bb.bx
  %i.ls = phi i64 [ 0, %bb.bx ], [ %.pre.i154, %bb.by ]
  %i.lt = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.lu = load ptr, ptr %i.lt, align 8, !alias.scope !11793, !nonnull !11, !noundef !11
  br label %.preheader.i

.preheader.i:                                     ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuNCNvMs_NtNtB11_6parser6parserNtB2E_6Parser5react0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1O_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4q_3VecB1O_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2x_EE0E0E0B11_.exit.i.i.i.i
  %i.lv = phi i64 [ %i.md, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuNCNvMs_NtNtB11_6parser6parserNtB2E_6Parser5react0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1O_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4q_3VecB1O_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2x_EE0E0E0B11_.exit.i.i.i.i ], [ %i.ls, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i ] ; 2 uses
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.me, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuNCNvMs_NtNtB11_6parser6parserNtB2E_6Parser5react0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1O_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4q_3VecB1O_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2x_EE0E0E0B11_.exit.i.i.i.i ], [ 0, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i ] ; 2 uses
  %i.lw = getelementptr inbounds nuw [16 x i8], ptr %i.lp, i64 %.sroa.01.0.i.i.i.i ; 2 uses
  %.val11.i.i.i.i = load ptr, ptr %i.lw, align 8, !noalias !11795, !nonnull !11, !noundef !11
  %i.lx = getelementptr i8, ptr %i.lw, i64 8
  %.val12.i.i.i.i = load i64, ptr %i.lx, align 8, !noalias !11795, !noundef !11 ; 7 uses
  %.not.i.i.i.i.i.i.i151 = icmp slt i64 %.val12.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i151, label %bb.ca, label %bb.bz, !prof !21

bb.bz:                                            ; preds = %.preheader.i
  %i.ly = icmp eq i64 %.val12.i.i.i.i, 0
  br i1 %i.ly, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuNCNvMs_NtNtB11_6parser6parserNtB2E_6Parser5react0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1O_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4q_3VecB1O_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2x_EE0E0E0B11_.exit.i.i.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i152

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i152: ; preds = %bb.bz
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !11796
  %i.lz = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val12.i.i.i.i, i64 noundef range(i64 1, 9) 1) #43, !noalias !11796 ; 3 uses
  %i.ma = icmp eq ptr %i.lz, null
  br i1 %i.ma, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i152, %.preheader.i
  %.sroa.4.0.ph.i.i.i.i.i.i153 = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i152 ], [ 0, %.preheader.i ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i153, i64 %.val12.i.i.i.i) #46, !noalias !11797
  unreachable

bb.cb:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i152
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lz, ptr nonnull readonly align 1 %.val11.i.i.i.i, i64 %.val12.i.i.i.i, i1 false), !noalias !11797
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuNCNvMs_NtNtB11_6parser6parserNtB2E_6Parser5react0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1O_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4q_3VecB1O_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2x_EE0E0E0B11_.exit.i.i.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuNCNvMs_NtNtB11_6parser6parserNtB2E_6Parser5react0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1O_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4q_3VecB1O_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2x_EE0E0E0B11_.exit.i.i.i.i: ; preds = %bb.cb, %bb.bz
  %i.mb = phi ptr [ %i.lz, %bb.cb ], [ inttoptr (i64 1 to ptr), %bb.bz ]
  %i.mc = getelementptr inbounds nuw [24 x i8], ptr %i.lu, i64 %i.lv ; 3 uses
  store i64 %.val12.i.i.i.i, ptr %i.mc, align 8, !noalias !11798
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  store ptr %i.mb, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !noalias !11798
  %.sroa.53.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.mc, i64 16
  store i64 %.val12.i.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i, align 8, !noalias !11798
  %i.md = add i64 %i.lv, 1                        ; 3 uses
  %i.me = add nuw nsw i64 %.sroa.01.0.i.i.i.i, 1  ; 2 uses
  %i.mf = icmp eq i64 %i.me, %i.ll
  br i1 %i.mf, label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1O_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrENCNvMs_NtNtB30_6parser6parserNtB3V_6Parser5react0EEB30_.exit, label %.preheader.i

_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1O_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrENCNvMs_NtNtB30_6parser6parserNtB3V_6Parser5react0EEB30_.exit: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuNCNvMs_NtNtB11_6parser6parserNtB2E_6Parser5react0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1O_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4q_3VecB1O_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2x_EE0E0E0B11_.exit.i.i.i.i
  store i64 %i.md, ptr %i.lf, align 8, !alias.scope !11793, !noalias !11799
  %i.mg = getelementptr inbounds nuw i8, ptr %4, i64 588
  %.val127 = load i32, ptr %i.mg, align 4, !range !45, !noundef !11 ; 2 uses
  %.not94 = icmp eq i32 %.val127, -1
  br i1 %.not94, label %bb.cy, label %bb.cd

bb.cc:                                            ; preds = %bb.bv
  %i.mh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.mi = load ptr, ptr %i.mh, align 8, !nonnull !11, !align !17, !noundef !11
  %i.mj = getelementptr i8, ptr %i.mi, i64 700
  %i.mk = load <2 x i32>, ptr %i.mj, align 4
  %i.ml = and <2 x i32> %i.mk, splat (i32 64)
  %i.mm = icmp ne <2 x i32> %i.ml, zeroinitializer ; 2 uses
  %i.mn = extractelement <2 x i1> %i.mm, i64 0
  %i.mo = extractelement <2 x i1> %i.mm, i64 1
  %.sroa.0.0.i157 = select i1 %i.mn, i1 true, i1 %i.mo
  %i.mp = trunc nuw i64 %6 to i1
  %i.mq = icmp eq i64 %7, 0
  %i.mr = and i1 %.sroa.0.0.i157, %i.mp
  %or.cond109 = select i1 %i.mr, i1 %i.mq, i1 false
  br i1 %or.cond109, label %bb.cy, label %bb.cd

bb.cd:                                            ; preds = %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1O_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrENCNvMs_NtNtB30_6parser6parserNtB3V_6Parser5react0EEB30_.exit, %bb.cc
  %i.ms = phi i64 [ %i.le, %bb.cc ], [ %i.md, %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1O_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrENCNvMs_NtNtB30_6parser6parserNtB3V_6Parser5react0EEB30_.exit ] ; 5 uses
  %.sroa.028.1 = phi i32 [ %.val128, %bb.cc ], [ %.val127, %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1O_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrENCNvMs_NtNtB30_6parser6parserNtB3V_6Parser5react0EEB30_.exit ] ; 8 uses
  %.sroa.4.1 = phi i64 [ %7, %bb.cc ], [ undef, %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1O_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrENCNvMs_NtNtB30_6parser6parserNtB3V_6Parser5react0EEB30_.exit ]
  %.sroa.013.1 = phi i64 [ %6, %bb.cc ], [ 0, %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1O_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrENCNvMs_NtNtB30_6parser6parserNtB3V_6Parser5react0EEB30_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  store i32 0, ptr %i.bu, align 4
  %i.mt = icmp samesign ult i32 %.sroa.028.1, 128
  br i1 %i.mt, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.mu = icmp samesign ult i32 %.sroa.028.1, 2048
  %i.mv = trunc i32 %.sroa.028.1 to i8
  %i.mw = and i8 %i.mv, 63
  %i.mx = or disjoint i8 %i.mw, -128              ; 3 uses
  %i.my = lshr i32 %.sroa.028.1, 6
  %i.mz = trunc i32 %i.my to i8                   ; 2 uses
  %i.na = and i8 %i.mz, 63
  %i.nb = or disjoint i8 %i.na, -128              ; 2 uses
  %i.nc = lshr i32 %.sroa.028.1, 12
  %i.nd = trunc i32 %i.nc to i8                   ; 2 uses
  %i.ne = and i8 %i.nd, 63
  %i.nf = or disjoint i8 %i.ne, -128
  %i.ng = lshr i32 %.sroa.028.1, 18
  %i.nh = trunc nuw nsw i32 %i.ng to i8
  %i.ni = or disjoint i8 %i.nh, -16
  br i1 %i.mu, label %bb.cg, label %bb.ch

bb.cf:                                            ; preds = %bb.cd
  %i.nj = trunc nuw nsw i32 %.sroa.028.1 to i8
  store i8 %i.nj, ptr %i.bu, align 4, !alias.scope !11800
  br label %_RNvNtNtCsj6eKBz9Db1c_4core4char7methods15encode_utf8_raw.exit

bb.cg:                                            ; preds = %bb.ce
  %i.nk = or disjoint i8 %i.mz, -64
  store i8 %i.nk, ptr %i.bu, align 4, !alias.scope !11800
  %i.nl = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  store i8 %i.mx, ptr %i.nl, align 1, !alias.scope !11800
  br label %_RNvNtNtCsj6eKBz9Db1c_4core4char7methods15encode_utf8_raw.exit

bb.ch:                                            ; preds = %bb.ce
  %i.nm = icmp samesign ult i32 %.sroa.028.1, 65536
  br i1 %i.nm, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.nn = or disjoint i8 %i.nd, -32
  store i8 %i.nn, ptr %i.bu, align 4, !alias.scope !11800
  %i.no = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  store i8 %i.nb, ptr %i.no, align 1, !alias.scope !11800
  %i.np = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  store i8 %i.mx, ptr %i.np, align 2, !alias.scope !11800
  br label %_RNvNtNtCsj6eKBz9Db1c_4core4char7methods15encode_utf8_raw.exit

bb.cj:                                            ; preds = %bb.ch
  store i8 %i.ni, ptr %i.bu, align 4, !alias.scope !11800
  %i.nq = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  store i8 %i.nf, ptr %i.nq, align 1, !alias.scope !11800
  %i.nr = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  store i8 %i.nb, ptr %i.nr, align 2, !alias.scope !11800
  %i.ns = getelementptr inbounds nuw i8, ptr %i.bu, i64 3
  store i8 %i.mx, ptr %i.ns, align 1, !alias.scope !11800
  br label %_RNvNtNtCsj6eKBz9Db1c_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCsj6eKBz9Db1c_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.cf, %bb.cg, %bb.ci, %bb.cj
  %.sroa.0.05.i = phi i64 [ 1, %bb.cf ], [ 2, %bb.cg ], [ 3, %bb.ci ], [ 4, %bb.cj ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  %i.nt = icmp ult i64 %i.ms, 384307168202282326
  tail call void @llvm.assume(i1 %i.nt)
  %i.nu = mul nuw nsw i64 %i.ms, 24               ; 4 uses
  %i.nv = icmp eq i64 %i.ms, 0
  br i1 %i.nv, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core4char7methods15encode_utf8_raw.exit
  store i64 %i.ms, ptr %i.bt, align 8
  %i.nw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.nw, align 8
  %i.nx = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store i64 0, ptr %i.nx, align 8
  %i.ny = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.nz = load ptr, ptr %i.ny, align 8, !nonnull !11, !noundef !11 ; 3 uses
  %i.oa = load i64, ptr %5, align 8, !range !12, !noundef !11
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nz, i64 %i.nu
  br label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i._crit_edge

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core4char7methods15encode_utf8_raw.exit
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !11801
  %i.oc = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.nu, i64 noundef range(i64 1, 9) 8) #43, !noalias !11801 ; 2 uses
  %i.od = icmp eq ptr %i.oc, null
  br i1 %i.od, label %bb.ck, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i.lr.ph

bb.ck:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.nu) #46
  unreachable

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i.lr.ph: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i
  store i64 %i.ms, ptr %i.bt, align 8
  %i.oe = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 3 uses
  store ptr %i.oc, ptr %i.oe, align 8
  %i.of = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 5 uses
  store i64 0, ptr %i.of, align 8
  %i.og = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.oh = load ptr, ptr %i.og, align 8, !nonnull !11, !noundef !11 ; 4 uses
  %i.oi = load i64, ptr %5, align 8, !range !12, !noundef !11 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.nu ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ol = trunc nuw i64 %.sroa.013.1 to i1
  br label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i: ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i.lr.ph, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit
  %.sroa.4.0267 = phi ptr [ %i.oh, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i.lr.ph ], [ %i.om, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit ] ; 4 uses
  %.sroa.13.0266 = phi i64 [ 0, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i.lr.ph ], [ %i.on, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit ] ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %.sroa.4.0267, i64 24 ; 3 uses
  %.sroa.0.0.copyload1.i = load i64, ptr %.sroa.4.0267, align 8, !noalias !11802 ; 4 uses
  %.not.i160 = icmp eq i64 %.sroa.0.0.copyload1.i, -1
  br i1 %.not.i160, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i._crit_edge, label %bb.cl

bb.cl:                                            ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i
  %.sroa.7.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0267, i64 8
  %.sroa.9.sroa.0.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx2.i, align 8, !noalias !11803, !nonnull !11, !noundef !11 ; 4 uses
  %.sroa.9.sroa.5.0..sroa.7.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.0267, i64 16
  %.sroa.9.sroa.5.0.copyload = load i64, ptr %.sroa.9.sroa.5.0..sroa.7.0..sroa_idx2.i.sroa_idx, align 8, !noalias !11803 ; 3 uses
  %i.on = add nuw nsw i64 %.sroa.13.0266, 1
  %i.oo = call noundef zeroext i1 @_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt8contains(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.9.sroa.0.0.copyload, i64 noundef %.sroa.9.sroa.5.0.copyload, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bu, i64 noundef %.sroa.0.05.i) #43
  br i1 %i.oo, label %bb.co, label %bb.cp

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i._crit_edge: ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread
  %i.op = phi ptr [ %i.ob, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread ], [ %i.oj, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i ] ; 2 uses
  %i.oq = phi i64 [ %i.oa, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread ], [ %i.oi, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i ] ; 2 uses
  %i.or = phi ptr [ %i.nz, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread ], [ %i.oh, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i ] ; 2 uses
  %.sroa.4.2.ph = phi ptr [ %i.nz, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread ], [ %i.om, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i ] ; 3 uses
  %i.os = ptrtoint ptr %i.op to i64
  %i.ot = ptrtoint ptr %.sroa.4.2.ph to i64
  %i.ou = sub nuw i64 %i.os, %i.ot
  %i.ov = udiv exact i64 %i.ou, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !11804)
  %i.ow = icmp eq ptr %i.op, %.sroa.4.2.ph
  br i1 %i.ow, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %.lr.ph.i.i.i.i163

.lr.ph.i.i.i.i163:                                ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i._crit_edge, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i
  %.sroa.0.03.i.i.i.i164 = phi i64 [ %i.oy, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i ], [ 0, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i._crit_edge ] ; 2 uses
  %i.ox = getelementptr inbounds nuw [24 x i8], ptr %.sroa.4.2.ph, i64 %.sroa.0.03.i.i.i.i164 ; 2 uses
  %i.oy = add nuw nsw i64 %.sroa.0.03.i.i.i.i164, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11805)
  %.val.i.i.i.i.i165 = load i64, ptr %i.ox, align 8, !range !12, !alias.scope !11806, !noalias !11807, !noundef !11 ; 2 uses
  %i.oz = icmp eq i64 %.val.i.i.i.i.i165, 0
  br i1 %i.oz, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph.i.i.i.i163
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  %.val1.i.i.i.i.i166 = load ptr, ptr %i.pa, align 8, !alias.scope !11806, !noalias !11807, !nonnull !11, !noundef !11
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i166, i64 noundef %.val.i.i.i.i.i165, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !11808
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i: ; preds = %bb.cm, %.lr.ph.i.i.i.i163
  %i.pb = icmp eq i64 %i.oy, %i.ov
  br i1 %i.pb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %.lr.ph.i.i.i.i163

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i._crit_edge
  %i.pc = phi ptr [ %i.or, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i ], [ %i.or, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i._crit_edge ], [ %i.oh, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit ]
  %i.pd = phi i64 [ %i.oq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i ], [ %i.oq, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i._crit_edge ], [ %i.oi, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit ] ; 2 uses
  %i.pe = icmp eq i64 %i.pd, 0
  br i1 %i.pe, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEEECsfu0rQaTkGUu_12clap_builder.exit, label %bb.cn

bb.cn:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i
  %i.pf = mul nuw i64 %i.pd, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.pc, i64 noundef %i.pf, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !11807
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEEECsfu0rQaTkGUu_12clap_builder.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEEECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i, %bb.cn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  br label %bb.cy

bb.co:                                            ; preds = %bb.cl
  %i.pg = load ptr, ptr %i.ok, align 8, !nonnull !11, !align !17, !noundef !11
  %i.ph = getelementptr i8, ptr %i.pg, i64 700
  %i.pi = load <2 x i32>, ptr %i.ph, align 4
  %i.pj = and <2 x i32> %i.pi, splat (i32 64)
  %i.pk = icmp ne <2 x i32> %i.pj, zeroinitializer ; 2 uses
  %i.pl = extractelement <2 x i1> %i.pk, i64 0
  %i.pm = extractelement <2 x i1> %i.pk, i64 1
  %.sroa.0.0.i168 = select i1 %i.pl, i1 true, i1 %i.pm
  %i.pn = icmp eq i64 %.sroa.4.1, %.sroa.13.0266
  %i.po = and i1 %.sroa.0.0.i168, %i.ol
  %or.cond111 = select i1 %i.po, i1 %i.pn, i1 false
  br i1 %or.cond111, label %bb.cp, label %bb.cr

bb.cp:                                            ; preds = %bb.co, %bb.cl
  %i.pp = load i64, ptr %i.of, align 8, !alias.scope !11809, !noalias !11810, !noundef !11 ; 3 uses
  %i.pq = load i64, ptr %i.bt, align 8, !range !12, !alias.scope !11809, !noalias !11810, !noundef !11
  %i.pr = icmp eq i64 %i.pp, %i.pq
  br i1 %i.pr, label %bb.cq, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE8push_mutCsfu0rQaTkGUu_12clap_builder.exit

bb.cq:                                            ; preds = %bb.cp
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt) #42, !noalias !11810
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE8push_mutCsfu0rQaTkGUu_12clap_builder.exit

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE8push_mutCsfu0rQaTkGUu_12clap_builder.exit: ; preds = %bb.cp, %bb.cq
  %i.ps = load ptr, ptr %i.oe, align 8, !alias.scope !11809, !noalias !11810, !nonnull !11, !noundef !11
  %i.pt = getelementptr inbounds nuw [24 x i8], ptr %i.ps, i64 %i.pp ; 3 uses
  store i64 %.sroa.0.0.copyload1.i, ptr %i.pt, align 8
  %.sroa.4209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
  store ptr %.sroa.9.sroa.0.0.copyload, ptr %.sroa.4209.0..sroa_idx, align 8
  %.sroa.5210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pt, i64 16
  store i64 %.sroa.9.sroa.5.0.copyload, ptr %.sroa.5210.0..sroa_idx, align 8
  %i.pu = add i64 %i.pp, 1
  store i64 %i.pu, ptr %i.of, align 8, !alias.scope !11809, !noalias !11810
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit

bb.cr:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  call void @_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt5split(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.br, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.9.sroa.0.0.copyload, i64 noundef %.sroa.9.sroa.5.0.copyload, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bu, i64 noundef %.sroa.0.05.i) #43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %i.br, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  call void @llvm.experimental.noalias.scope.decl(metadata !11811)
  %i.pv = call { ptr, i64 } @_RNvXs_NtCs3RZUOUhPFQ6_8clap_lex3extNtB4_5SplitNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bs) #43, !noalias !11812 ; 2 uses
  %i.pw = extractvalue { ptr, i64 } %i.pv, 0      ; 2 uses
  %.not.i14.i = icmp eq ptr %i.pw, null
  br i1 %.not.i14.i, label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE16extend_desugaredINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtCs3RZUOUhPFQ6_8clap_lex3ext5SplitNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB3d_6Parser5reacts_0EEB3h_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.cr, %bb.cw
  %i.px = phi ptr [ %i.ql, %bb.cw ], [ %i.pw, %bb.cr ]
  %i.py = phi { ptr, i64 } [ %i.qk, %bb.cw ], [ %i.pv, %bb.cr ]
  %i.pz = extractvalue { ptr, i64 } %i.py, 1      ; 7 uses
  %.not.i.i.i.i = icmp slt i64 %i.pz, 0
  br i1 %.not.i.i.i.i, label %bb.ct, label %bb.cs, !prof !21

bb.cs:                                            ; preds = %.lr.ph.i
  %i.qa = icmp eq i64 %i.pz, 0
  br i1 %i.qa, label %bb.cv, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i169

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i169: ; preds = %bb.cs
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !11813
  %i.qb = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.pz, i64 noundef range(i64 1, 9) 1) #43, !noalias !11813 ; 3 uses
  %i.qc = icmp eq ptr %i.qb, null
  br i1 %i.qc, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i169, %.lr.ph.i
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i169 ], [ 0, %.lr.ph.i ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.pz) #46, !noalias !11814
  unreachable

bb.cu:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i169
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.qb, ptr nonnull readonly align 1 %i.px, i64 %i.pz, i1 false), !noalias !11815
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.cs
  %.sroa.7.0.ph.i = phi ptr [ %i.qb, %bb.cu ], [ inttoptr (i64 1 to ptr), %bb.cs ]
  %i.qd = load i64, ptr %i.of, align 8, !alias.scope !11811, !noalias !11816, !noundef !11 ; 5 uses
  %i.qe = icmp ult i64 %i.qd, 384307168202282326
  call void @llvm.assume(i1 %i.qe)
  %i.qf = load i64, ptr %i.bt, align 8, !range !12, !alias.scope !11811, !noalias !11816, !noundef !11
  %i.qg = icmp eq i64 %i.qd, %i.qf
  br i1 %i.qg, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i171, label %bb.cw

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i171: ; preds = %bb.cv
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt, i64 noundef %i.qd, i64 noundef 1, i64 noundef 8, i64 noundef 24) #43
  br label %bb.cw

bb.cw:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i171, %bb.cv
  %i.qh = load ptr, ptr %i.oe, align 8, !alias.scope !11811, !noalias !11816, !nonnull !11, !noundef !11
  %i.qi = getelementptr inbounds nuw [24 x i8], ptr %i.qh, i64 %i.qd ; 3 uses
  store i64 %i.pz, ptr %i.qi, align 8, !noalias !11811
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  store ptr %.sroa.7.0.ph.i, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !11811
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qi, i64 16
  store i64 %i.pz, ptr %.sroa.56.0..sroa_idx.i, align 8, !noalias !11811
  %i.qj = add nuw nsw i64 %i.qd, 1
  store i64 %i.qj, ptr %i.of, align 8, !alias.scope !11811, !noalias !11816
  %i.qk = call { ptr, i64 } @_RNvXs_NtCs3RZUOUhPFQ6_8clap_lex3extNtB4_5SplitNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bs) #43, !noalias !11812 ; 2 uses
  %i.ql = extractvalue { ptr, i64 } %i.qk, 0      ; 2 uses
  %.not.i.i170 = icmp eq ptr %i.ql, null
end_hunk_6
begin_hunk_7_@_RNvXs0_NtNtCsfu0rQaTkGUu_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt
define noundef zeroext i1 @_RNvXs0_NtNtCsfu0rQaTkGUu_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load i64, ptr %0, align 8, !range !14, !noundef !11
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.g, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdNtB6_5Debug3fmtBC_, ptr %.sroa.43.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.h, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdNtB6_5Debug3fmtBC_, ptr %.sroa.47.0..sroa_idx, align 8
  %i.i = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !11, !align !17, !noundef !11
  %i.l = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k, ptr noundef nonnull @316, ptr noundef nonnull %i.a) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.1.in = phi i1 [ %i.r, %bb.d ], [ %i.l, %bb.b ]
  ret i1 %.sroa.0.1.in

bb.d:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !11, !align !17, !noundef !11
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !11, !nonnull !11
  %i.r = tail call noundef zeroext i1 %i.q(ptr noundef nonnull %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @317, i64 noundef 103) #45
  br label %bb.c
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs0_NtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_groupNtB5_8ArgGroupINtNtCsj6eKBz9Db1c_4core7convert4FromRBT_E4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #1 {
bb.a:
  tail call fastcc void @_RNvXs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_groupNtB5_8ArgGroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %1) #45
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMs3_NtNtB1W_7builder7commandNtB2I_7Command12format_group0ENCB2C_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1W_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12568)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12569)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12570)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !12571, !noalias !12570, !nonnull !11, !noundef !11 ; 3 uses
  %i.j = ptrtoaddr ptr %i.i to i64
  %.promoted.i.i = load ptr, ptr %1, align 8, !alias.scope !12571, !noalias !12570 ; 4 uses
  %.promoted17.i.i = ptrtoaddr ptr %.promoted.i.i to i64
  %i.k = icmp eq ptr %.promoted.i.i, %i.i
  br i1 %i.k, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMs3_NtNtB1G_7builder7commandNtB2s_7Command12format_group0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !12572, !noalias !12569, !nonnull !11, !align !17, !noundef !11 ; 2 uses
  %i.m = getelementptr i8, ptr %.val.i.i.i, i64 136
  %.val.i.i.i.i = load ptr, ptr %i.m, align 8, !noalias !12573, !nonnull !11, !noundef !11 ; 2 uses
  %i.n = getelementptr i8, ptr %.val.i.i.i, i64 144
  %.val1.i.i.i.i = load i64, ptr %i.n, align 8, !noalias !12573, !noundef !11 ; 2 uses
  %.idx.i.i.i.i.i = mul nuw nsw i64 %.val1.i.i.i.i, 600
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.idx.i.i.i.i.i
  %i.p = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.p, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command12format_group0INtB7_5FnMutTRNtNtNtB10_4util2id2IdEE8call_mutB10_.exit.us.preheader.i.i, label %.lr.ph.i.i.i.i.preheader.i.i

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command12format_group0INtB7_5FnMutTRNtNtNtB10_4util2id2IdEE8call_mutB10_.exit.us.preheader.i.i: ; preds = %.lr.ph.i.i
  %i.q = add i64 %i.j, -16
  %i.r = sub i64 %i.q, %.promoted17.i.i
  %i.s = and i64 %i.r, -16
  %i.t = getelementptr i8, ptr %.promoted.i.i, i64 %i.s
  %scevgep.i.i = getelementptr i8, ptr %i.t, i64 16
  br label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMs3_NtNtB1G_7builder7commandNtB2s_7Command12format_group0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit.thread4

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %.lr.ph.i.i, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command12format_group0INtB7_5FnMutTRNtNtNtB10_4util2id2IdEE8call_mutB10_.exit.loopexit.i.i
  %i.u = phi ptr [ %i.v, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command12format_group0INtB7_5FnMutTRNtNtNtB10_4util2id2IdEE8call_mutB10_.exit.loopexit.i.i ], [ %.promoted.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 4 uses
  %.val4.i.i = load ptr, ptr %i.u, align 8, !noalias !12573
  %i.w = getelementptr i8, ptr %i.u, i64 8
  %.val5.i.i = load i64, ptr %i.w, align 8, !noalias !12573 ; 9 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i
  %i.x = phi ptr [ %i.y, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i ], [ %.val.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i ] ; 9 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 600 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 544
  %i.aa = load i64, ptr %i.z, align 8, !noalias !12574, !noundef !11
  %i.ab = icmp eq i64 %i.aa, %.val5.i.i
  br i1 %i.ab, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 536
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !12574, !nonnull !11, !noundef !11 ; 2 uses
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ad, ptr nonnull readonly %.val4.i.i, i64 %.val5.i.i), !noalias !12574
  %i.ae = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.ae, label %bb.b, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.af = icmp eq ptr %i.y, %i.o
  br i1 %i.af, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command12format_group0INtB7_5FnMutTRNtNtNtB10_4util2id2IdEE8call_mutB10_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command12format_group0INtB7_5FnMutTRNtNtNtB10_4util2id2IdEE8call_mutB10_.exit.loopexit.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i
  %i.ag = icmp eq ptr %i.v, %i.i
  br i1 %i.ag, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMs3_NtNtB1G_7builder7commandNtB2s_7Command12format_group0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit.thread4, label %.lr.ph.i.i.i.i.preheader.i.i

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMs3_NtNtB1G_7builder7commandNtB2s_7Command12format_group0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit.thread4: ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command12format_group0INtB7_5FnMutTRNtNtNtB10_4util2id2IdEE8call_mutB10_.exit.loopexit.i.i, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command12format_group0INtB7_5FnMutTRNtNtNtB10_4util2id2IdEE8call_mutB10_.exit.us.preheader.i.i
  %.us-phi.sink.i.i.ph = phi ptr [ %scevgep.i.i, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command12format_group0INtB7_5FnMutTRNtNtNtB10_4util2id2IdEE8call_mutB10_.exit.us.preheader.i.i ], [ %i.v, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command12format_group0INtB7_5FnMutTRNtNtNtB10_4util2id2IdEE8call_mutB10_.exit.loopexit.i.i ]
  store ptr %.us-phi.sink.i.i.ph, ptr %1, align 8, !alias.scope !12571, !noalias !12570
  br label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMs3_NtNtB1G_7builder7commandNtB2s_7Command12format_group0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit.thread

bb.b:                                             ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i
  store ptr %i.v, ptr %1, align 8, !alias.scope !12571, !noalias !12570
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12575)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12576)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 552
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !12576, !noalias !12575, !noundef !11
  %.not.i = icmp eq ptr %i.ai, null
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 584
  %i.ak = load i32, ptr %i.aj, align 8, !range !45, !alias.scope !12576, !noalias !12575
  %.not1.i = icmp eq i32 %i.ak, -1
  %or.cond.i = select i1 %.not.i, i1 %.not1.i, i1 false
  br i1 %or.cond.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12577
  store i64 0, ptr %i.f, align 8, !noalias !12577
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !12577
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !12577
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12577
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 1610612768, ptr %i.al, align 8, !noalias !12577
  store ptr %i.f, ptr %i.e, align 8, !noalias !12577
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @204, ptr %i.am, align 8, !noalias !12577
  %i.an = call noundef zeroext i1 @_RNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3ArgNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(600) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #43, !noalias !12578
  br i1 %i.an, label %bb.d, label %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit.i, !prof !19

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @356, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @106, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @358) #44, !noalias !12577
  unreachable

_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit.i: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !12579
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12577
  br label %_RNCNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command12format_groups_0Bb_.exit

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12581)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 360
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !12582, !noalias !12583, !noundef !11 ; 7 uses
  %i.aq = icmp ult i64 %i.ap, 576460752303423488
  tail call void @llvm.assume(i1 %i.aq)
  switch i64 %i.ap, label %bb.h [
    i64 0, label %bb.f
    i64 1, label %bb.m
  ]

bb.f:                                             ; preds = %bb.e
  %.not.i.i.i = icmp slt i64 %.val5.i.i, 0
  br i1 %.not.i.i.i, label %bb.q, label %bb.g, !prof !21

bb.g:                                             ; preds = %bb.f
  %i.ar = icmp eq i64 %.val5.i.i, 0
  br i1 %i.ar, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread37.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.g
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !12584
  %i.as = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val5.i.i, i64 noundef range(i64 1, 9) 1) #43, !noalias !12584 ; 3 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.q, label %bb.r

bb.h:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 352
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !12582, !noalias !12583, !nonnull !11, !noundef !11
  %2 = mul nuw nsw i64 %i.ap, 24                  ; 3 uses
  %or.cond.i.i.i.i.i = icmp samesign ugt i64 %i.ap, 384307168202282325
  br i1 %or.cond.i.i.i.i.i, label %bb.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i, !prof !21

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i: ; preds = %bb.h
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !12585
  %i.aw = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 1, 9) 8) #43, !noalias !12585 ; 5 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i, %bb.h
  %.sroa.10.0.ph.i.i.i.i = phi i64 [ %2, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i ], [ undef, %bb.h ]
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i ], [ 0, %bb.h ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %.sroa.10.0.ph.i.i.i.i) #46, !noalias !12586
  unreachable

bb.j:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %i.ay = phi i64 [ 0, %bb.j ], [ %i.bb, %bb.k ]  ; 3 uses
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12587
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12587
  store ptr %i.az, ptr %i.c, align 8, !noalias !12588
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12588
  store ptr %i.c, ptr %i.b, align 8, !noalias !12588
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrNtB6_7Display3fmtBC_, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !12588
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @79, ptr noundef nonnull %i.b) #43, !noalias !12589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12587
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %i.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !12590
  %i.bb = add nuw nsw i64 %i.ay, 1                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12587
  %i.bc = icmp eq i64 %i.bb, %i.ap
  br i1 %i.bc, label %.lr.ph.i.i.i.preheader.i.i, label %bb.k

.lr.ph.i.i.i.preheader.i.i:                       ; preds = %bb.k
  call fastcc void @_RINvNtCs4wP2HXfJTCR_5alloc3str17join_generic_copyehNtNtB4_6string6StringECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.aw, i64 noundef %i.ap, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @161, i64 noundef 1) #43, !noalias !12582
  call void @llvm.experimental.noalias.scope.decl(metadata !12591)
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i, %.lr.ph.i.i.i.preheader.i.i
  %.sroa.0.03.i.i.i.i.i = phi i64 [ %i.be, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.preheader.i.i ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %.sroa.0.03.i.i.i.i.i ; 2 uses
  %i.be = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12592)
  %.val.i.i.i.i.i.i = load i64, ptr %i.bd, align 8, !range !12, !alias.scope !12593, !noalias !12594, !noundef !11 ; 2 uses
  %i.bf = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.bf, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !12593, !noalias !12594, !nonnull !11, !noundef !11
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !12595
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i: ; preds = %bb.l, %.lr.ph.i.i.i.i.i
  %i.bh = icmp eq i64 %i.be, %i.ap
  br i1 %i.bh, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !12594
  br label %_RNCNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command12format_groups_0Bb_.exit

bb.m:                                             ; preds = %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %i.x, i64 352
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !12582, !noalias !12583, !nonnull !11, !noundef !11 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !12596, !nonnull !11, !noundef !11
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !12596, !noundef !11 ; 7 uses
  %.not.i9.i.i = icmp slt i64 %i.bm, 0
  br i1 %.not.i9.i.i, label %bb.o, label %bb.n, !prof !21

bb.n:                                             ; preds = %bb.m
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit12.thread31.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i10.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i10.i.i: ; preds = %bb.n
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !12597
  %i.bo = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bm, i64 noundef range(i64 1, 9) 1) #43, !noalias !12597 ; 3 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i10.i.i, %bb.m
  %.sroa.415.0.ph.i.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i10.i.i ], [ 0, %bb.m ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.415.0.ph.i.i, i64 %i.bm) #46, !noalias !12596
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit12.thread31.i.i: ; preds = %bb.p, %bb.n
  %i.bq = phi ptr [ %i.bo, %bb.p ], [ inttoptr (i64 1 to ptr), %bb.n ]
  store i64 %i.bm, ptr %i.g, align 8, !alias.scope !12583, !noalias !12582
  %.sroa.4.0..sroa_idx.i3.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.bq, ptr %.sroa.4.0..sroa_idx.i3.i, align 8, !alias.scope !12583, !noalias !12582
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.bm, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !12583, !noalias !12582
  br label %_RNCNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command12format_groups_0Bb_.exit

bb.p:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i10.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bo, ptr nonnull align 1 %i.bk, i64 %i.bm, i1 false), !noalias !12596
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit12.thread31.i.i

bb.q:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.f
  %.sroa.418.0.ph.i.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i ], [ 0, %bb.f ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.418.0.ph.i.i, i64 %.val5.i.i) #46, !noalias !12596
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread37.i.i: ; preds = %bb.r, %bb.g
  %i.br = phi ptr [ %i.as, %bb.r ], [ inttoptr (i64 1 to ptr), %bb.g ]
  store i64 %.val5.i.i, ptr %i.g, align 8, !alias.scope !12583, !noalias !12582
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.br, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !alias.scope !12583, !noalias !12582
  %.sroa.64.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.val5.i.i, ptr %.sroa.64.0..sroa_idx.i.i, align 8, !alias.scope !12583, !noalias !12582
  br label %_RNCNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command12format_groups_0Bb_.exit

bb.r:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.as, ptr nonnull align 1 %i.ad, i64 %.val5.i.i, i1 false), !noalias !12596
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread37.i.i

_RNCNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command12format_groups_0Bb_.exit: ; preds = %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit12.thread31.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread37.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.s

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMs3_NtNtB1G_7builder7commandNtB2s_7Command12format_group0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit.thread: ; preds = %bb.a, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMs3_NtNtB1G_7builder7commandNtB2s_7Command12format_group0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit.thread4
  store i64 -1, ptr %0, align 8
  br label %bb.s

bb.s:                                             ; preds = %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMs3_NtNtB1G_7builder7commandNtB2s_7Command12format_group0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit.thread, %_RNCNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command12format_groups_0Bb_.exit
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENvMs_B1S_B1Q_23get_visible_quoted_nameENCNvMs1_NtNtB1W_6output13help_templateNtB3N_12HelpTemplate9spec_valss4_0ENtNtNtB9_6traits8iterator8Iterator4nextB1W_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.8 = alloca [16 x i8], align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12621)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12622)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !12623, !noalias !12624, !nonnull !11, !noundef !11 ; 2 uses
  %.promoted.i.i = load ptr, ptr %1, align 8, !alias.scope !12623, !noalias !12624 ; 2 uses
  %i.i = icmp eq ptr %.promoted.i.i, %i.h
  br i1 %i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i.i, %.lr.ph.i.i
  %i.m = phi ptr [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.n, %.backedge.i.i ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 72 ; 3 uses
  store ptr %i.n, ptr %1, align 8, !alias.scope !12623, !noalias !12624
  call void @llvm.experimental.noalias.scope.decl(metadata !12625)
  call void @llvm.experimental.noalias.scope.decl(metadata !12626)
  call void @llvm.experimental.noalias.scope.decl(metadata !12627)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.p = load i8, ptr %i.o, align 8, !range !34, !alias.scope !12628, !noalias !12629, !noundef !11
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %.backedge.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12630
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12630
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !12628, !noalias !12629, !nonnull !11, !noundef !11 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !12628, !noalias !12629, !noundef !11 ; 3 uses
  store ptr %i.s, ptr %i.c, align 8, !noalias !12630
  store i64 %i.u, ptr %i.j, align 8, !noalias !12630
  call void @llvm.experimental.noalias.scope.decl(metadata !12631)
  %i.v = call fastcc noundef zeroext i1 @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util6escapeNtB2_6Escape14needs_escaping(ptr nonnull %i.s, i64 %i.u) #43, !noalias !12632
  br i1 %i.v, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util6escapeNtB2_6Escape6to_cow.exit.i.i.i.i.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util6escapeNtB2_6Escape6to_cow.exit.i.i.i.i.i.thread

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util6escapeNtB2_6Escape6to_cow.exit.i.i.i.i.i.thread: ; preds = %bb.c
  store ptr %i.s, ptr %i.k, align 8, !alias.scope !12631, !noalias !12633
  store i64 %i.u, ptr %i.l, align 8, !alias.scope !12631, !noalias !12633
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !noalias !12634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12630
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12630
  br label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENvMs_B1C_B1A_23get_visible_quoted_nameENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util6escapeNtB2_6Escape6to_cow.exit.i.i.i.i.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12632
  store ptr %i.c, ptr %i.b, align 8, !noalias !12632
  store ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtReNtB6_5Debug3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !12632
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @108, ptr noundef nonnull %i.b) #43, !noalias !12630
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12632
  %.sroa.0.0.copyload1.pr = load i64, ptr %i.d, align 8, !noalias !12634 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !noalias !12634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12630
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12630
  %i.w = icmp eq i64 %.sroa.0.0.copyload1.pr, -2
end_hunk_7
begin_hunk_8_@_RNvXsC_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_15BoolValueParserNtB5_16TypedValueParser9parse_ref:bb.a
    i64 4, label %bb.b
    i64 5, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %4, align 1
  %i.h = icmp ne i32 %i.g, 1702195828
  %i.i = zext i1 %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.r, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = load i32, ptr %4, align 1
  %i.l = xor i32 %i.k, 1936482662
  %i.m = getelementptr i8, ptr %4, i64 4
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i32
  %i.p = xor i32 %i.o, 101
  %i.q = or i32 %i.l, %i.p
  %i.r = icmp ne i32 %i.q, 0
  %i.s = zext i1 %i.r to i32
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !13347
  %i.u = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 48, i64 noundef range(i64 1, 9) 8) #43, !noalias !13347 ; 9 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.e, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 48) #46, !noalias !13348
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i: ; preds = %bb.d
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !13349
  %i.w = tail call noundef dereferenceable_or_null(4) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 4, i64 noundef range(i64 1, 9) 1) #43, !noalias !13349 ; 4 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.f, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied9copy_foldReuNCINvNtB6_3map8map_foldBY_NtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueuINvMB1t_B1r_3newBY_ENCIB14_B1r_NtNtCs4wP2HXfJTCR_5alloc6string6StringuNCNvXsC_NtB1v_12value_parserNtB3T_15BoolValueParserNtB3T_16TypedValueParser9parse_ref0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB38_NCINvMsk_NtB3c_3vecINtB6f_3VecB38_E14extend_trustedINtB16_3MapIB6W_INtB4_6CopiedINtNtNtBa_5slice4iter4IterBY_EEB2D_EB3L_EE0E0E0E0E0B1x_.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied9copy_foldReuNCINvNtB6_3map8map_foldBY_NtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueuINvMB1t_B1r_3newBY_ENCIB14_B1r_NtNtCs4wP2HXfJTCR_5alloc6string6StringuNCNvXsC_NtB1v_12value_parserNtB3T_15BoolValueParserNtB3T_16TypedValueParser9parse_ref0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB38_NCINvMsk_NtB3c_3vecINtB6f_3VecB38_E14extend_trustedINtB16_3MapIB6W_INtB4_6CopiedINtNtNtBa_5slice4iter4IterBY_EEB2D_EB3L_EE0E0E0E0E0B1x_.exit.i.i.i.i.i.i.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i
  %.val8.lcssa.i.i.i.i.i.i.i.i = phi i64 [ 4, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i ], [ 5, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied9copy_foldReuNCINvNtB6_3map8map_foldBY_NtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueuINvMB1t_B1r_3newBY_ENCIB14_B1r_NtNtCs4wP2HXfJTCR_5alloc6string6StringuNCNvXsC_NtB1v_12value_parserNtB3T_15BoolValueParserNtB3T_16TypedValueParser9parse_ref0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB38_NCINvMsk_NtB3c_3vecINtB6f_3VecB38_E14extend_trustedINtB16_3MapIB6W_INtB4_6CopiedINtNtNtBa_5slice4iter4IterBY_EEB2D_EB3L_EE0E0E0E0E0B1x_.exit.i.i.i.i.i.i.i.i ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %.val8.lcssa.i.i.i.i.i.i.i.i) #46, !noalias !13350
  unreachable

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied9copy_foldReuNCINvNtB6_3map8map_foldBY_NtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueuINvMB1t_B1r_3newBY_ENCIB14_B1r_NtNtCs4wP2HXfJTCR_5alloc6string6StringuNCNvXsC_NtB1v_12value_parserNtB3T_15BoolValueParserNtB3T_16TypedValueParser9parse_ref0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB38_NCINvMsk_NtB3c_3vecINtB6f_3VecB38_E14extend_trustedINtB16_3MapIB6W_INtB4_6CopiedINtNtNtBa_5slice4iter4IterBY_EEB2D_EB3L_EE0E0E0E0E0B1x_.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i
  store i32 1702195828, ptr %i.w, align 1, !noalias !13351
  store i64 4, ptr %i.u, align 8, !noalias !13352
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.w, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !13352
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 4, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !13352
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !13353
  %i.y = tail call noundef dereferenceable_or_null(5) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 5, i64 noundef range(i64 1, 9) 1) #43, !noalias !13353 ; 4 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.f, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapIB1U_INtNtB1Y_6copied6CopiedINtNtNtB22_5slice4iter4IterReEEINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_valueNtB3I_13PossibleValue3newB3A_EENCNvXsC_NtB3K_12value_parserNtB5f_15BoolValueParserNtB5f_16TypedValueParser9parse_ref0EE9from_iterB3M_.exit

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapIB1U_INtNtB1Y_6copied6CopiedINtNtNtB22_5slice4iter4IterReEEINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_valueNtB3I_13PossibleValue3newB3A_EENCNvXsC_NtB3K_12value_parserNtB5f_15BoolValueParserNtB5f_16TypedValueParser9parse_ref0EE9from_iterB3M_.exit: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied9copy_foldReuNCINvNtB6_3map8map_foldBY_NtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueuINvMB1t_B1r_3newBY_ENCIB14_B1r_NtNtCs4wP2HXfJTCR_5alloc6string6StringuNCNvXsC_NtB1v_12value_parserNtB3T_15BoolValueParserNtB3T_16TypedValueParser9parse_ref0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB38_NCINvMsk_NtB3c_3vecINtB6f_3VecB38_E14extend_trustedINtB16_3MapIB6W_INtB4_6CopiedINtNtNtBa_5slice4iter4IterBY_EEB2D_EB3L_EE0E0E0E0E0B1x_.exit.i.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.y, ptr noundef nonnull readonly align 1 dereferenceable(5) @55, i64 5, i1 false), !noalias !13354
  %i.aa = getelementptr i8, ptr %i.u, i64 24
  store i64 5, ptr %i.aa, align 8, !noalias !13355
  %.sroa.42.0..sroa_idx.i.i.i.1.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.u, i64 32
  store ptr %i.y, ptr %.sroa.42.0..sroa_idx.i.i.i.1.i.i.i.i.i.i.i.i, align 8, !noalias !13355
  %.sroa.53.0..sroa_idx.i.i.i.1.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.u, i64 40
  store i64 5, ptr %.sroa.53.0..sroa_idx.i.i.i.1.i.i.i.i.i.i.i.i, align 8, !noalias !13355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) #43
  %i.ab = load i64, ptr %i.e, align 8, !range !13, !noundef !11
  %.not = icmp eq i64 %i.ab, -1
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapIB1U_INtNtB1Y_6copied6CopiedINtNtNtB22_5slice4iter4IterReEEINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_valueNtB3I_13PossibleValue3newB3A_EENCNvXsC_NtB3K_12value_parserNtB5f_15BoolValueParserNtB5f_16TypedValueParser9parse_ref0EE9from_iterB3M_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %bb.l

bb.h:                                             ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapIB1U_INtNtB1Y_6copied6CopiedINtNtNtB22_5slice4iter4IterReEEINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_valueNtB3I_13PossibleValue3newB3A_EENCNvXsC_NtB3K_12value_parserNtB5f_15BoolValueParserNtB5f_16TypedValueParser9parse_ref0EE9from_iterB3M_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !11, !noundef !11
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !noundef !11 ; 7 uses
  %.not.i = icmp slt i64 %i.af, 0
  br i1 %.not.i, label %bb.j, label %bb.i, !prof !21

bb.i:                                             ; preds = %bb.h
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread20, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.i
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !13356
  %i.ah = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.af, i64 noundef range(i64 1, 9) 1) #43, !noalias !13356 ; 3 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.h, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i
  %.sroa.413.0.ph = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.h ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.413.0.ph, i64 %i.af) #46
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread20: ; preds = %bb.i, %bb.k
  %i.aj = phi ptr [ %i.ah, %bb.k ], [ inttoptr (i64 1 to ptr), %bb.i ]
  store i64 %i.af, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.aj, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.af, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.l

bb.k:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr nonnull align 1 %i.ad, i64 %i.af, i1 false)
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread20

bb.l:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread20, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.not7 = icmp eq ptr %3, null
  br i1 %.not7, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13357
  store i64 0, ptr %i.c, align 8, !noalias !13357
  %.sroa.4.0..sroa_idx.i8 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i8, align 8, !noalias !13357
  %.sroa.5.0..sroa_idx.i9 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i9, align 8, !noalias !13357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13357
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.ak, align 8, !noalias !13357
  store ptr %i.c, ptr %i.b, align 8, !noalias !13357
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @204, ptr %i.al, align 8, !noalias !13357
  %i.am = call noundef zeroext i1 @_RNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3ArgNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(600) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #43, !noalias !13358
  br i1 %i.am, label %bb.n, label %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit, !prof !19

bb.n:                                             ; preds = %bb.m
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @356, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @106, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @358) #44, !noalias !13357
  unreachable

_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit: ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13357
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.1

bb.o:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13359)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !13360
  %i.an = tail call noundef dereferenceable_or_null(3) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 3, i64 noundef range(i64 1, 9) 1) #43, !noalias !13360 ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.p, label %_RNCNvXsC_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB7_15BoolValueParserNtB7_16TypedValueParser9parse_refs_0Bb_.exit

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 1, i64 3) #46, !noalias !13359
  unreachable

_RNCNvXsC_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB7_15BoolValueParserNtB7_16TypedValueParser9parse_refs_0Bb_.exit: ; preds = %bb.o
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.an, i8 46, i64 3, i1 false), !noalias !13359
  store i64 3, ptr %i.d, align 8, !alias.scope !13359
  %.sroa.4.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.an, ptr %.sroa.4.0..sroa_idx.i10, align 8, !alias.scope !13359
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 3, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !13359
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.1

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.1: ; preds = %_RNCNvXsC_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB7_15BoolValueParserNtB7_16TypedValueParser9parse_refs_0Bb_.exit, %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit
  %i.ap = call fastcc noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error13invalid_valueB4_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.u, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.d) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.aq, align 8
  store i8 1, ptr %0, align 8
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.w, i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !13361
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef 5, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !13362
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !13363
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.1
  ret void

bb.r:                                             ; preds = %bb.c, %bb.b
  %.sroa.02.0 = phi i8 [ 1, %bb.b ], [ 0, %bb.c ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.02.0, ptr %i.ar, align 1
  store i8 0, ptr %0, align 8
  br label %bb.q
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define { i64, i64 } @_RNvXsC_NtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11arg_matchesNtB5_7IndicesNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #24 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13370)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !13371, !nonnull !11, !noundef !11 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !13371, !nonnull !11, !noundef !11
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterjEENtNtNtB8_6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %0, align 8, !alias.scope !13371
  %i.f = load i64, ptr %i.a, align 8, !alias.scope !13372, !noalias !13370, !noundef !11 ; 2 uses
  %1 = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %i.f, 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !11
  %i.i = add i64 %i.h, -1
  store i64 %i.i, ptr %i.g, align 8
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterjEENtNtNtB8_6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterjEENtNtNtB8_6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit: ; preds = %bb.a, %bb.b
  %2 = phi { i64, i64 } [ %1, %bb.b ], [ { i64 0, i64 undef }, %bb.a ]
  %.sroa.0.0 = phi i64 [ %i.f, %bb.b ], [ undef, %bb.a ]
  %i.j = insertvalue { i64, i64 } %2, i64 %.sroa.0.0, 1
  ret { i64, i64 } %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define { i64, i64 } @_RNvXsD_NtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11arg_matchesNtB5_7IndicesNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #24 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13379)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !13380, !nonnull !11, !noundef !11 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !alias.scope !13380, !nonnull !11, !noundef !11
  %i.d = icmp eq ptr %i.c, %i.b
  br i1 %i.d, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCsfu0rQaTkGUu_12clap_builder.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  store ptr %i.e, ptr %i.a, align 8, !alias.scope !13380
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !13381, !noalias !13379, !noundef !11 ; 2 uses
  %1 = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %i.f, 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !11
  %i.i = add i64 %i.h, -1
  store i64 %i.i, ptr %i.g, align 8
  br label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCsfu0rQaTkGUu_12clap_builder.exit

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCsfu0rQaTkGUu_12clap_builder.exit: ; preds = %bb.a, %bb.b
  %2 = phi { i64, i64 } [ %1, %bb.b ], [ { i64 0, i64 undef }, %bb.a ]
  %.sroa.0.0 = phi i64 [ %i.f, %bb.b ], [ undef, %bb.a ]
  %i.j = insertvalue { i64, i64 } %2, i64 %.sroa.0.0, 1
  ret { i64, i64 } %i.j
}

; Function Attrs: nounwind nonlazybind uwtable
define { ptr, ptr } @_RNvXsF_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_17FalseyValueParserNtB5_16TypedValueParser15possible_values(ptr noalias nofree noundef nonnull readonly captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !13384
  %i.a = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef range(i64 1, 9) 8) #43, !noalias !13384 ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !prof !33

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #46, !noalias !13384
  unreachable

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store ptr @51, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @51, i64 96), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @58, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr getelementptr inbounds nuw (i8, ptr @58, i64 96), ptr %.sroa.6.0..sroa_idx, align 8
  %i.c = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.d = insertvalue { ptr, ptr } %i.c, ptr @361, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXsF_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_17FalseyValueParserNtB5_16TypedValueParser9parse_ref(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [14 x i8], align 2                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [16 x i8], align 16               ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) #43
  %i.j = load i64, ptr %i.i, align 8, !range !14, !noundef !11
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13405)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !13405
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13405
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13409)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !13410, !noalias !13406, !nonnull !11, !noundef !11 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !13410, !noalias !13406, !noundef !11 ; 2 uses
  %.idx = shl nuw nsw i64 %i.o, 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx
  %i.q = icmp eq i64 %i.o, 0
  br i1 %i.q, label %_RNCNvXsF_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB7_17FalseyValueParserNtB7_16TypedValueParser9parse_ref0Bb_.exit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i11, i64 16 ; 2 uses
  %i.s = add i64 %.sroa.8.0.i.i.i.i10, 1
  %i.t = icmp eq ptr %i.r, %i.p
  br i1 %i.t, label %_RNCNvXsF_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB7_17FalseyValueParserNtB7_16TypedValueParser9parse_ref0Bb_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.0.01.i.i.i.i11 = phi ptr [ %i.r, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %.sroa.8.0.i.i.i.i10 = phi i64 [ %i.s, %bb.c ], [ 0, %bb.b ] ; 4 uses
  %.val.i.i.i.i = load i128, ptr %.sroa.0.01.i.i.i.i11, align 8, !noalias !13411
  %i.u = icmp eq i128 %.val.i.i.i.i, -100310019091698447603793328749864812255
  br i1 %i.u, label %bb.d, label %bb.c

bb.d:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !13410, !noalias !13406, !noundef !11 ; 2 uses
  %i.x = icmp ult i64 %.sroa.8.0.i.i.i.i10, %i.w
  br i1 %i.x, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.0.i.i.i.i10, i64 noundef %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #44, !noalias !13411
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !13410, !noalias !13406, !nonnull !11, !noundef !11
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %.sroa.8.0.i.i.i.i10 ; 2 uses
  %.val5.i.i.i = load ptr, ptr %i.aa, align 8, !noalias !13412, !nonnull !11, !noundef !11
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %.val6.i.i.i = load ptr, ptr %i.ab, align 8, !noalias !13412, !nonnull !11, !align !17, !noundef !11 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !18, !invariant.load !11, !noalias !13412
  %i.ae = add nsw i64 %i.ad, -1
  %i.af = and i64 %i.ae, -16
  %i.ag = getelementptr inbounds nuw i8, ptr %.val5.i.i.i, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13412
  %i.ai = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !invariant.load !11, !noalias !13412, !nonnull !11
  call void %i.aj(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noundef nonnull %i.ah) #45, !noalias !13412, !inline_history !13394
  %i.ak = load i128, ptr %i.f, align 16, !noalias !13412, !noundef !11
  %.not.i.i.i = icmp eq i128 %i.ak, -100310019091698447603793328749864812255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13412
  br i1 %.not.i.i.i, label %_RNCNvXsF_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB7_17FalseyValueParserNtB7_16TypedValueParser9parse_ref0Bb_.exit, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !noalias !13412
  unreachable

_RNCNvXsF_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB7_17FalseyValueParserNtB7_16TypedValueParser9parse_ref0Bb_.exit: ; preds = %bb.c, %bb.b, %bb.f
  %.sroa.0.0.i.i.i = phi ptr [ %i.ah, %bb.f ], [ null, %bb.b ], [ null, %bb.c ] ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.0.0.i.i.i, null
  %..i.i = select i1 %.not.i.i, ptr @99, ptr %.sroa.0.0.i.i.i ; 5 uses
  store ptr %2, ptr %i.g, align 8, !alias.scope !13406, !noalias !13413
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %..i.i, ptr %i.al, align 8, !alias.scope !13406, !noalias !13413
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %i.am, align 8, !alias.scope !13406, !noalias !13413
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13414
  store i64 0, ptr %i.e, align 8, !alias.scope !13415, !noalias !13414
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !alias.scope !13415, !noalias !13414
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !alias.scope !13415, !noalias !13414
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13414
  %i.an = getelementptr inbounds nuw i8, ptr %..i.i, i64 28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.d, ptr noundef nonnull align 2 dereferenceable(14) %i.an, i64 14, i1 false), !noalias !13416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13414
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.an, align 2, !noalias !13416
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %..i.i, i64 32
  %.sroa.7.0.copyload.i.i = load i8, ptr %.sroa.7.0..sroa_idx.i.i, align 2, !noalias !13416
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %..i.i, i64 36
  %.sroa.11.0.copyload.i.i = load i8, ptr %.sroa.11.0..sroa_idx.i.i, align 2, !noalias !13416
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %..i.i, i64 40
  %.sroa.15.0.copyload.i.i = load i16, ptr %.sroa.15.0..sroa_idx.i.i, align 2, !noalias !13416
  %.not.i.i1.i = icmp eq i8 %.sroa.0.0.copyload.i.i, -1
  %.not5.i.i.i = icmp eq i8 %.sroa.7.0.copyload.i.i, -1
  %or.cond.i.i = select i1 %.not.i.i1.i, i1 %.not5.i.i.i, i1 false
  %.not7.i.i.i = icmp eq i8 %.sroa.11.0.copyload.i.i, -1
  %or.cond35.i.i = select i1 %or.cond.i.i, i1 %.not7.i.i.i, i1 false
  %i.ao = icmp eq i16 %.sroa.15.0.copyload.i.i, 0
  %or.cond36.i.i = select i1 %or.cond35.i.i, i1 %i.ao, i1 false ; 2 uses
  %spec.select.i.i = select i1 %or.cond36.i.i, ptr inttoptr (i64 1 to ptr), ptr @139
  %spec.select38.i.i = select i1 %or.cond36.i.i, i64 0, i64 4
  store ptr %spec.select.i.i, ptr %i.c, align 8, !noalias !13414, !captures !22
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %spec.select38.i.i, ptr %i.ap, align 8, !noalias !13414
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13414
  store ptr %i.d, ptr %i.b, align 8, !noalias !13414
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs8_NtCscy4Zx2DW6cp_7anstyle5styleNtB5_12StyleDisplayNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !noalias !13414
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.aq, align 8, !noalias !13414
  %.sroa.412.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.412.0..sroa_idx.i.i, align 8, !noalias !13414
  %i.ar = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @140, ptr noundef nonnull %i.b) #43, !noalias !13416, !inline_history !23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13414
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage20write_usage_no_title(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g, ptr noalias nofree noundef align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0) #43
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8trim_end(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #43, !noalias !13417, !inline_history !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !13418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13414
  %i.as = call fastcc noalias noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error12invalid_utf8B4_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.h) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !13405
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.at, align 8
  br label %bb.n

bb.h:                                             ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !11, !noundef !11
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !11 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13419
  call void @_RNvMs3_NtCs4wP2HXfJTCR_5alloc3stre12to_lowercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.av, i64 noundef %i.ax) #43
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !13419, !nonnull !11, !noundef !11 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !noalias !13419, !noundef !11 ; 2 uses
  %i.bd = tail call fastcc noundef zeroext i1 @_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpReNtB5_13SliceContains14slice_containsCsfu0rQaTkGUu_12clap_builder(ptr nonnull %i.ba, i64 %i.bc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @51) #43
  br i1 %i.bd, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = tail call fastcc noundef zeroext i1 @_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpReNtB5_13SliceContains14slice_containsCsfu0rQaTkGUu_12clap_builder(ptr nonnull %i.ba, i64 %i.bc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @58) #43
  %..i = select i1 %i.be, i8 0, i8 2
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.0.0.i = phi i8 [ %..i, %bb.j ], [ 1, %bb.i ] ; 2 uses
end_hunk_8
