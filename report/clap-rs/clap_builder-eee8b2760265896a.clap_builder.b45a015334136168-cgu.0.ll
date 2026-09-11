Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clap-rs/original/clap_builder-eee8b2760265896a.clap_builder.b45a015334136168-cgu.0?download=true
inline.NumInlined: 5218
inline.NumDeleted: 2692
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_arg10MatchedArgEBJ_:bb.a

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsfu0rQaTkGUu_12clap_builder.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEEB1e_.exit.i.i.i
  %.sroa.0.03.i.i.i = phi i64 [ %i.j, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEEB1e_.exit.i.i.i ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsfu0rQaTkGUu_12clap_builder.exit ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.03.i.i.i ; 3 uses
  %i.j = add nuw nsw i64 %.sroa.0.03.i.i.i, 1     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1173)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !1174, !noalias !1171, !nonnull !11, !noundef !11 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.val1.i.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !1174, !noalias !1171, !noundef !11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  %i.m = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.m, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEBH_.exit.i.i.i.i.i.i
  %.sroa.0.03.i.i.i.i.i.i = phi i64 [ %i.o, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEBH_.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i.i, i64 %.sroa.0.03.i.i.i.i.i.i ; 2 uses
  %i.o = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i.i, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1178)
  %i.p = load ptr, ptr %i.n, align 8, !alias.scope !1179, !noalias !1180, !nonnull !11, !noundef !11
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !1181
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEBH_.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  fence acquire
  tail call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsj6eKBz9Db1c_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_E9drop_slowCsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.n) #42, !noalias !1180
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEBH_.exit.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEBH_.exit.i.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i
  %i.s = icmp eq i64 %i.o, %.val1.i.i.i.i
  br i1 %i.s, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEBH_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %.val2.i.i.i.i = load i64, ptr %i.i, align 8, !range !12, !alias.scope !1174, !noalias !1171, !noundef !11 ; 2 uses
  %i.t = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.t, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEEB1e_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i.i.i.i
  %i.u = shl nuw i64 %.val2.i.i.i.i, 5
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !1180
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEEB1e_.exit.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEEB1e_.exit.i.i.i: ; preds = %bb.d, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i.i.i.i
  %i.v = icmp eq i64 %i.j, %.val1.i
  br i1 %i.v, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBP_.exit.i, label %.lr.ph.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBP_.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEEB1e_.exit.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsfu0rQaTkGUu_12clap_builder.exit
  %.val2.i = load i64, ptr %i.e, align 8, !range !12, !alias.scope !1171, !noundef !11 ; 2 uses
  %i.w = icmp eq i64 %.val2.i, 0
  br i1 %i.w, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEEEB1i_.exit, label %bb.e

bb.e:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBP_.exit.i
  %i.x = mul nuw i64 %.val2.i, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !1171
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEEEB1i_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEEEB1i_.exit: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBP_.exit.i, %bb.e
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
  %.ph = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.bw, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.outer.backedge ] ; 2 uses
  %.ph134 = phi i64 [ 0, %bb.a ], [ %i.bx, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.outer.backedge ] ; 14 uses
  %.ph135 = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.by, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.outer.backedge ] ; 3 uses
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
  %i.ad = load i64, ptr %i.r, align 8, !noalias !1271 ; 13 uses
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
  br i1 %i.ai, label %bb.l, label %bb.j

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
  br i1 %.sroa.0.0.i.i.i.i, label %3, label %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1Y_3map3MapINtNtNtB22_5slice4iter4IterNtNtB8_7mkeymap3KeyENCNvMs4_B3F_NtB3F_7MKeyMap4keys0ENCNCINvB2_17did_you_mean_flagIB2W_IB3d_B1h_ENCNvMs0_NtB6_6parserNtB5k_6Parser18did_you_mean_errors_0EReINtB3f_7IterMutNtNtNtB8_7builder7command7CommandEE00EEB8_.exit

3:                                                ; preds = %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i
  %4 = icmp eq i64 %i.ap, 0
  br i1 %4, label %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1Y_3map3MapINtNtNtB22_5slice4iter4IterNtNtB8_7mkeymap3KeyENCNvMs4_B3F_NtB3F_7MKeyMap4keys0ENCNCINvB2_17did_you_mean_flagIB2W_IB3d_B1h_ENCNvMs0_NtB6_6parserNtB5k_6Parser18did_you_mean_errors_0EReINtB3f_7IterMutNtNtNtB8_7builder7command7CommandEE00EEB8_.exit.thread, label %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i

_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i: ; preds = %3
  %i.bt = icmp ule i64 %i.br, %i.ap
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc14___rust_realloc(ptr noundef nonnull %i.al, i64 noundef %i.ap, i64 noundef 8, i64 noundef range(i64 0, -15) %i.br) #43, !noalias !1276 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.i, label %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1Y_3map3MapINtNtNtB22_5slice4iter4IterNtNtB8_7mkeymap3KeyENCNvMs4_B3F_NtB3F_7MKeyMap4keys0ENCNCINvB2_17did_you_mean_flagIB2W_IB3d_B1h_ENCNvMs0_NtB6_6parserNtB5k_6Parser18did_you_mean_errors_0EReINtB3f_7IterMutNtNtNtB8_7builder7command7CommandEE00EEB8_.exit, !prof !33

bb.i:                                             ; preds = %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.br) #46, !noalias !1276
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i, %.loopexit136
  %.sroa.01.0.i.i.i.i.i.i.i.i84.i = phi i64 [ %.sroa.01.0.i.i.i.i.i.i.i.i8591101.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i ], [ %.sroa.01.0.i.i.i.i.i.i.i.i.i, %.loopexit136 ] ; 2 uses
  %.sroa.5.0.i.i.i.i.i.i.i.i82.i = phi ptr [ %.sroa.5.0.i.i.i.i.i.i.i.i8392100.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i ], [ %.sroa.5.0.i.i.i.i.i.i.i.i.i, %.loopexit136 ]
  %i.bw = phi ptr [ %i.cv, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i ], [ %.ph, %.loopexit136 ]
  %i.bx = phi i64 [ %i.db, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i ], [ %.ph134, %.loopexit136 ]
  %i.by = phi ptr [ %i.cv, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i ], [ %.ph135, %.loopexit136 ]
  %i.bz = icmp eq i64 %.sroa.01.0.i.i.i.i.i.i.i.i84.i, 0
  br i1 %i.bz, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.outer.backedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.i.i.i.i.i.i.i.i82.i, i64 noundef %.sroa.01.0.i.i.i.i.i.i.i.i84.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !1277
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.outer.backedge

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.outer.backedge: ; preds = %bb.k, %bb.j
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.outer

bb.l:                                             ; preds = %.loopexit136
  %.not.i.i = icmp slt i64 %i.ad, 0
  br i1 %.not.i.i, label %bb.n, label %bb.m, !prof !1278

bb.m:                                             ; preds = %bb.l
  %i.ca = icmp eq i64 %i.ad, 0
  br i1 %i.ca, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread44.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.m
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !1279
  %i.cb = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ad, i64 noundef range(i64 1, 9) 1) #43, !noalias !1279 ; 3 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.n, label %bb.s

bb.n:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i, %bb.l
  %.sroa.432.0.ph.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %bb.l ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.432.0.ph.i, i64 %i.ad) #46, !noalias !1274
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread44.i: ; preds = %.thread.i, %bb.s, %bb.m
  %i.cd = phi double [ %i.ah, %bb.s ], [ %i.ah, %bb.m ], [ %i.aj, %.thread.i ] ; 3 uses
  %.sroa.01.0.i.i.i.i.i.i.i.i8591101.i = phi i64 [ %.sroa.01.0.i.i.i.i.i.i.i.i.i, %bb.s ], [ %.sroa.01.0.i.i.i.i.i.i.i.i.i, %bb.m ], [ 0, %.thread.i ]
  %.sroa.5.0.i.i.i.i.i.i.i.i8392100.i = phi ptr [ %.sroa.5.0.i.i.i.i.i.i.i.i.i, %bb.s ], [ %.sroa.5.0.i.i.i.i.i.i.i.i.i, %bb.m ], [ inttoptr (i64 1 to ptr), %.thread.i ]
  %.sroa.65.0.i.i.i.i.i.i.i.i819399.i = phi i64 [ %i.ad, %bb.s ], [ 0, %bb.m ], [ 0, %.thread.i ] ; 2 uses
  %i.ce = phi ptr [ %i.cb, %bb.s ], [ inttoptr (i64 1 to ptr), %bb.m ], [ inttoptr (i64 1 to ptr), %.thread.i ]
  switch i64 %.ph134, label %.lr.ph.i.i [
    i64 0, label %bb.o
    i64 1, label %._crit_edge.i.i
  ]

.lr.ph.i.i:                                       ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread44.i, %.lr.ph.i.i
  %.sroa.01.017.i.i = phi i64 [ %i.cl, %.lr.ph.i.i ], [ %.ph134, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread44.i ] ; 2 uses
  %.sroa.05.016.i.i = phi i64 [ %i.ck, %.lr.ph.i.i ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread44.i ] ; 2 uses
  %i.cf = lshr i64 %.sroa.01.017.i.i, 1           ; 2 uses
  %i.cg = add nuw nsw i64 %i.cf, %.sroa.05.016.i.i ; 3 uses
  %i.ch = icmp ult i64 %i.cg, %.ph134
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = getelementptr inbounds nuw [32 x i8], ptr %.ph135, i64 %i.cg
  %.val12.i.i = load double, ptr %i.ci, align 8, !alias.scope !1280, !noalias !1281, !noundef !11
  %i.cj = fcmp ogt double %.val12.i.i, %i.cd
  %i.ck = select i1 %i.cj, i64 %.sroa.05.016.i.i, i64 %i.cg, !unpredictable !11 ; 2 uses
  %i.cl = sub nuw nsw i64 %.sroa.01.017.i.i, %i.cf ; 2 uses
  %i.cm = icmp ugt i64 %i.cl, 1
  br i1 %i.cm, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread44.i
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread44.i ], [ %i.ck, %.lr.ph.i.i ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %.ph135, i64 %.sroa.05.0.lcssa.i.i
  %.val14.i.i = load double, ptr %i.cn, align 8, !alias.scope !1280, !noalias !1281, !noundef !11
  %i.co = fcmp ule double %.val14.i.i, %i.cd
  %i.cp = zext i1 %i.co to i64
  %i.cq = add nuw nsw i64 %.sroa.05.0.lcssa.i.i, %i.cp ; 2 uses
  %i.cr = icmp ule i64 %i.cq, %.ph134
  tail call void @llvm.assume(i1 %i.cr)
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread44.i
  %.sroa.4.0.i.i = phi i64 [ %.ph134, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread44.i ], [ %i.cq, %._crit_edge.i.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1282)
  %i.cs = icmp ult i64 %.ph134, 288230376151711744
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = load i64, ptr %i.b, align 8, !range !12, !alias.scope !1282, !noalias !1283, !noundef !11
  %i.cu = icmp eq i64 %.ph134, %i.ct
  br i1 %i.cu, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTdNtNtB7_6string6StringEE8grow_oneCsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #42, !noalias !1284
  %.pre.i = load ptr, ptr %i.o, align 8, !alias.scope !1282, !noalias !1283
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cv = phi ptr [ %.pre.i, %bb.p ], [ %.ph, %bb.o ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [32 x i8], ptr %i.cv, i64 %.sroa.4.0.i.i ; 6 uses
  %i.cx = icmp samesign ult i64 %.sroa.4.0.i.i, %.ph134
  br i1 %i.cx, label %bb.r, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i

bb.r:                                             ; preds = %bb.q
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.cz = sub nuw nsw i64 %.ph134, %.sroa.4.0.i.i
  %i.da = shl nuw nsw i64 %i.cz, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cy, ptr nonnull align 8 %i.cw, i64 %i.da, i1 false), !noalias !1285
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i: ; preds = %bb.r, %bb.q
  store double %i.cd, ptr %i.cw, align 8, !noalias !1286
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i64 %.sroa.65.0.i.i.i.i.i.i.i.i819399.i, ptr %.sroa.424.0..sroa_idx.i, align 8, !noalias !1286
  %.sroa.525.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store ptr %i.ce, ptr %.sroa.525.0..sroa_idx.i, align 8, !noalias !1286
  %.sroa.6.0..sroa_idx26.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  store i64 %.sroa.65.0.i.i.i.i.i.i.i.i819399.i, ptr %.sroa.6.0..sroa_idx26.i, align 8, !noalias !1286
  %i.db = add nuw nsw i64 %.ph134, 1              ; 2 uses
  store i64 %i.db, ptr %i.p, align 8, !alias.scope !1282, !noalias !1283
  br label %bb.j

bb.s:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cb, ptr nonnull align 1 %.sroa.5.0.i.i.i.i.i.i.i.i.i, i64 %i.ad, i1 false), !noalias !1274
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread44.i

_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1Y_3map3MapINtNtNtB22_5slice4iter4IterNtNtB8_7mkeymap3KeyENCNvMs4_B3F_NtB3F_7MKeyMap4keys0ENCNCINvB2_17did_you_mean_flagIB2W_IB3d_B1h_ENCNvMs0_NtB6_6parserNtB5k_6Parser18did_you_mean_errors_0EReINtB3f_7IterMutNtNtNtB8_7builder7command7CommandEE00EEB8_.exit: ; preds = %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i
  %.sroa.04.0.i.i.i = phi ptr [ %i.al, %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i ], [ %i.bu, %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1264
  %i.dc = icmp eq ptr %.sroa.4.0.lcssa.i.i.i.i.i77.i, %i.al
  br i1 %i.dc, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i, label %bb.u

_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1Y_3map3MapINtNtNtB22_5slice4iter4IterNtNtB8_7mkeymap3KeyENCNvMs4_B3F_NtB3F_7MKeyMap4keys0ENCNCINvB2_17did_you_mean_flagIB2W_IB3d_B1h_ENCNvMs0_NtB6_6parserNtB5k_6Parser18did_you_mean_errors_0EReINtB3f_7IterMutNtNtNtB8_7builder7command7CommandEE00EEB8_.exit.thread: ; preds = %3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1264
  %5 = icmp eq ptr %.sroa.4.0.lcssa.i.i.i.i.i77.i, %i.al
  br i1 %5, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.thread, label %bb.u

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.thread: ; preds = %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1Y_3map3MapINtNtNtB22_5slice4iter4IterNtNtB8_7mkeymap3KeyENCNvMs4_B3F_NtB3F_7MKeyMap4keys0ENCNCINvB2_17did_you_mean_flagIB2W_IB3d_B1h_ENCNvMs0_NtB6_6parserNtB5k_6Parser18did_you_mean_errors_0EReINtB3f_7IterMutNtNtNtB8_7builder7command7CommandEE00EEB8_.exit.thread
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %6, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i: ; preds = %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1Y_3map3MapINtNtNtB22_5slice4iter4IterNtNtB8_7mkeymap3KeyENCNvMs4_B3F_NtB3F_7MKeyMap4keys0ENCNCINvB2_17did_you_mean_flagIB2W_IB3d_B1h_ENCNvMs0_NtB6_6parserNtB5k_6Parser18did_you_mean_errors_0EReINtB3f_7IterMutNtNtNtB8_7builder7command7CommandEE00EEB8_.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %i.dd, align 8
  %i.de = icmp eq i64 %i.ap, 0
  br i1 %i.de, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit, label %bb.t

bb.t:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.04.0.i.i.i, i64 noundef %i.br, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !1287
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit

bb.u:                                             ; preds = %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1Y_3map3MapINtNtNtB22_5slice4iter4IterNtNtB8_7mkeymap3KeyENCNvMs4_B3F_NtB3F_7MKeyMap4keys0ENCNCINvB2_17did_you_mean_flagIB2W_IB3d_B1h_ENCNvMs0_NtB6_6parserNtB5k_6Parser18did_you_mean_errors_0EReINtB3f_7IterMutNtNtNtB8_7builder7command7CommandEE00EEB8_.exit.thread, %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1Y_3map3MapINtNtNtB22_5slice4iter4IterNtNtB8_7mkeymap3KeyENCNvMs4_B3F_NtB3F_7MKeyMap4keys0ENCNCINvB2_17did_you_mean_flagIB2W_IB3d_B1h_ENCNvMs0_NtB6_6parserNtB5k_6Parser18did_you_mean_errors_0EReINtB3f_7IterMutNtNtNtB8_7builder7command7CommandEE00EEB8_.exit
  %.sroa.04.0.i.i.i111 = phi ptr [ inttoptr (i64 8 to ptr), %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1Y_3map3MapINtNtNtB22_5slice4iter4IterNtNtB8_7mkeymap3KeyENCNvMs4_B3F_NtB3F_7MKeyMap4keys0ENCNCINvB2_17did_you_mean_flagIB2W_IB3d_B1h_ENCNvMs0_NtB6_6parserNtB5k_6Parser18did_you_mean_errors_0EReINtB3f_7IterMutNtNtNtB8_7builder7command7CommandEE00EEB8_.exit.thread ], [ %.sroa.04.0.i.i.i, %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1Y_3map3MapINtNtNtB22_5slice4iter4IterNtNtB8_7mkeymap3KeyENCNvMs4_B3F_NtB3F_7MKeyMap4keys0ENCNCINvB2_17did_you_mean_flagIB2W_IB3d_B1h_ENCNvMs0_NtB6_6parserNtB5k_6Parser18did_you_mean_errors_0EReINtB3f_7IterMutNtNtNtB8_7builder7command7CommandEE00EEB8_.exit ] ; 3 uses
  %i.df = ptrtoint ptr %.sroa.4.0.lcssa.i.i.i.i.i77.i to i64
  %i.dg = ptrtoint ptr %i.al to i64
  %i.dh = sub nuw i64 %i.df, %i.dg                ; 2 uses
  %i.di = udiv exact i64 %i.dh, 24
  %i.dj = add nsw i64 %i.di, -1                   ; 4 uses
  %i.dk = icmp samesign ult i64 %i.dj, %i.aq
  tail call void @llvm.assume(i1 %i.dk)
  %i.dl = icmp ult i64 %i.dh, -9223372036854775768
  tail call void @llvm.assume(i1 %i.dl)
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %.sroa.04.0.i.i.i111, i64 %i.dj ; 3 uses
  %.sroa.053.0.copyload = load i64, ptr %i.dm, align 8 ; 3 uses
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.sroa.454.0.copyload = load ptr, ptr %.sroa.454.0..sroa_idx, align 8 ; 3 uses
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %.sroa.555.0.copyload = load i64, ptr %.sroa.555.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1288)
  %i.dn = icmp eq i64 %i.dj, 0
  br i1 %i.dn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit25, label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %bb.u, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i22
  %.sroa.0.03.i.i.i19 = phi i64 [ %i.dp, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i22 ], [ 0, %bb.u ] ; 2 uses
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %.sroa.04.0.i.i.i111, i64 %.sroa.0.03.i.i.i19 ; 2 uses
  %i.dp = add nuw nsw i64 %.sroa.0.03.i.i.i19, 1  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1289)
  %.val.i.i.i.i20 = load i64, ptr %i.do, align 8, !range !12, !alias.scope !1290, !noalias !1291, !noundef !11 ; 2 uses
  %i.dq = icmp eq i64 %.val.i.i.i.i20, 0
  br i1 %i.dq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i22, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i18
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %.val1.i.i.i.i21 = load ptr, ptr %i.dr, align 8, !alias.scope !1290, !noalias !1291, !nonnull !11, !noundef !11
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i21, i64 noundef %.val.i.i.i.i20, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !1292
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i22

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i22: ; preds = %bb.v, %.lr.ph.i.i.i18
  %i.ds = icmp eq i64 %i.dp, %i.dj
  br i1 %i.ds, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit25, label %.lr.ph.i.i.i18

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit25: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i22, %bb.u
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.04.0.i.i.i111, i64 noundef %i.br, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !1291
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !nonnull !11, !align !17, !noundef !11 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dw = load i64, ptr %i.dv, align 8, !noundef !11 ; 3 uses
  %.idx = shl nuw nsw i64 %i.dw, 4
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 %.idx
  %i.dy = icmp eq i64 %i.dw, 0
  br i1 %i.dy, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit25, %_RNCNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1z_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtBa_6parserNtB3q_6Parser18did_you_mean_errors_0EReINtB2h_7IterMutNtNtNtBc_7builder7command7CommandEE0s_0Bc_.exit.thread.i
  %.sroa.02.010.i = phi i64 [ %i.ee, %_RNCNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1z_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtBa_6parserNtB3q_6Parser18did_you_mean_errors_0EReINtB2h_7IterMutNtNtNtBc_7builder7command7CommandEE0s_0Bc_.exit.thread.i ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit25 ] ; 3 uses
  %i.dz = phi ptr [ %i.ea, %_RNCNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1z_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtBa_6parserNtB3q_6Parser18did_you_mean_errors_0EReINtB2h_7IterMutNtNtNtBc_7builder7command7CommandEE0s_0Bc_.exit.thread.i ], [ %i.du, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit25 ] ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16 ; 2 uses
  %i.eb = getelementptr i8, ptr %i.dz, i64 8
  %.val7.i = load i64, ptr %i.eb, align 8, !noalias !1293, !noundef !11
  %i.ec = icmp eq i64 %.val7.i, %i.k
  br i1 %i.ec, label %_RNCNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1z_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtBa_6parserNtB3q_6Parser18did_you_mean_errors_0EReINtB2h_7IterMutNtNtNtBc_7builder7command7CommandEE0s_0Bc_.exit.i, label %_RNCNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1z_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtBa_6parserNtB3q_6Parser18did_you_mean_errors_0EReINtB2h_7IterMutNtNtNtBc_7builder7command7CommandEE0s_0Bc_.exit.thread.i

_RNCNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1z_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtBa_6parserNtB3q_6Parser18did_you_mean_errors_0EReINtB2h_7IterMutNtNtNtBc_7builder7command7CommandEE0s_0Bc_.exit.i: ; preds = %.lr.ph.i
  %.val6.i = load ptr, ptr %i.dz, align 8, !noalias !1293, !nonnull !11, !noundef !11
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val6.i, ptr nonnull %i.i, i64 %i.k), !noalias !1293
  %i.ed = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ed, label %bb.w, label %_RNCNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1z_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtBa_6parserNtB3q_6Parser18did_you_mean_errors_0EReINtB2h_7IterMutNtNtNtBc_7builder7command7CommandEE0s_0Bc_.exit.thread.i

_RNCNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1z_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtBa_6parserNtB3q_6Parser18did_you_mean_errors_0EReINtB2h_7IterMutNtNtNtBc_7builder7command7CommandEE0s_0Bc_.exit.thread.i: ; preds = %_RNCNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1z_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtBa_6parserNtB3q_6Parser18did_you_mean_errors_0EReINtB2h_7IterMutNtNtNtBc_7builder7command7CommandEE0s_0Bc_.exit.i, %.lr.ph.i
  %i.ee = add nuw nsw i64 %.sroa.02.010.i, 1
  %i.ef = icmp eq ptr %i.ea, %i.dx
  br i1 %i.ef, label %.loopexit, label %.lr.ph.i

bb.w:                                             ; preds = %_RNCNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1z_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtBa_6parserNtB3q_6Parser18did_you_mean_errors_0EReINtB2h_7IterMutNtNtNtBc_7builder7command7CommandEE0s_0Bc_.exit.i
  %i.eg = icmp ult i64 %.sroa.02.010.i, %i.dw
  tail call void @llvm.assume(i1 %i.eg)
  %.not.i = icmp slt i64 %i.k, 0
  br i1 %.not.i, label %bb.z, label %bb.x, !prof !21

bb.x:                                             ; preds = %bb.w
  %i.eh = icmp eq i64 %i.k, 0
  br i1 %i.eh, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread66, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.x
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !1294
  %i.ei = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.k, i64 noundef range(i64 1, 9) 1) #43, !noalias !1294 ; 3 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %bb.z, label %bb.aa

.loopexit:                                        ; preds = %_RNCNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1z_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtBa_6parserNtB3q_6Parser18did_you_mean_errors_0EReINtB2h_7IterMutNtNtNtBc_7builder7command7CommandEE0s_0Bc_.exit.thread.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit25
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %i.ek, align 8
  %i.el = icmp eq i64 %.sroa.053.0.copyload, 0
  br i1 %i.el, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit, label %bb.y

bb.y:                                             ; preds = %.loopexit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.454.0.copyload) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.454.0.copyload, i64 noundef %.sroa.053.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !1295
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.thread, %bb.y, %.loopexit, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i, %bb.t, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread66
  ret void

bb.z:                                             ; preds = %bb.w, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i
  %.sroa.457.0.ph = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.w ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.457.0.ph, i64 %i.k) #46
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread66: ; preds = %bb.x, %bb.aa
  %i.em = phi ptr [ %i.ei, %bb.aa ], [ inttoptr (i64 1 to ptr), %bb.x ]
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
  store ptr %i.em, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.k, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit

bb.aa:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ei, ptr nonnull align 1 %i.i, i64 %i.k, i1 false)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1325)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1332)
  br label %.loopexit11.split.loop.exit12.i.i

.loopexit.i.i.i.i.i.us.i.i:                       ; preds = %.lr.ph.split.us.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB17_4util2id2IdERB2a_uINtNtNtBa_3ops12control_flow11ControlFlowB2w_ENCNCNvMNtNtB17_6parser9validatorNtB3t_9Validator24build_conflict_err_usages3_00QNCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2w_QNCB3q_s4_0E0E0B17_.exit.loopexit.us.i.i
  %i.p = phi ptr [ %i.q, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB17_4util2id2IdERB2a_uINtNtNtBa_3ops12control_flow11ControlFlowB2w_ENCNCNvMNtNtB17_6parser9validatorNtB3t_9Validator24build_conflict_err_usages3_00QNCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2w_QNCB3q_s4_0E0E0B17_.exit.loopexit.us.i.i ], [ %.promoted.i.i, %.lr.ph.split.us.i.i ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1328)
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1325)
  %.val2.i.i.i.i.i.us.i.i = load ptr, ptr %i.r, align 8, !alias.scope !1333, !noalias !1334
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.val3.i.i.i.i.i.us.i.i = load i64, ptr %i.s, align 8, !alias.scope !1333, !noalias !1334 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1332)
  br label %.lr.ph.i.i6.i.i.i.i.i.us.i.i

.lr.ph.i.i6.i.i.i.i.i.us.i.i:                     ; preds = %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB7_13SliceContains14slice_contains0BK_.exit.backedge.i.i8.i.i.i.i.i.us.i.i, %.loopexit.i.i.i.i.i.us.i.i
  %i.t = phi ptr [ %i.u, %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB7_13SliceContains14slice_contains0BK_.exit.backedge.i.i8.i.i.i.i.i.us.i.i ], [ %i.l, %.loopexit.i.i.i.i.i.us.i.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.v = getelementptr i8, ptr %i.t, i64 8
  %.val3.i.i7.i.i.i.i.i.us.i.i = load i64, ptr %i.v, align 8, !alias.scope !1332, !noalias !1335, !noundef !11
  %i.w = icmp eq i64 %.val3.i.i7.i.i.i.i.i.us.i.i, %.val3.i.i.i.i.i.us.i.i
  br i1 %i.w, label %.split.i.i11.i.i.i.i.i.us.i.i, label %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB7_13SliceContains14slice_contains0BK_.exit.backedge.i.i8.i.i.i.i.i.us.i.i

.split.i.i11.i.i.i.i.i.us.i.i:                    ; preds = %.lr.ph.i.i6.i.i.i.i.i.us.i.i
  %.val2.i.i12.i.i.i.i.i.us.i.i = load ptr, ptr %i.t, align 8, !alias.scope !1332, !noalias !1335, !nonnull !11, !noundef !11
  %bcmp.i.i.i.i.i13.i.i.i.i.i.us.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val2.i.i12.i.i.i.i.i.us.i.i, ptr nonnull readonly %.val2.i.i.i.i.i.us.i.i, i64 %.val3.i.i.i.i.i.us.i.i), !noalias !1336
  %i.x = icmp eq i32 %bcmp.i.i.i.i.i13.i.i.i.i.i.us.i.i, 0
  br i1 %i.x, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB17_4util2id2IdERB2a_uINtNtNtBa_3ops12control_flow11ControlFlowB2w_ENCNCNvMNtNtB17_6parser9validatorNtB3t_9Validator24build_conflict_err_usages3_00QNCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2w_QNCB3q_s4_0E0E0B17_.exit.loopexit.us.i.i, label %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB7_13SliceContains14slice_contains0BK_.exit.backedge.i.i8.i.i.i.i.i.us.i.i

_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB7_13SliceContains14slice_contains0BK_.exit.backedge.i.i8.i.i.i.i.i.us.i.i: ; preds = %.split.i.i11.i.i.i.i.i.us.i.i, %.lr.ph.i.i6.i.i.i.i.i.us.i.i
  %.not7.i.i9.i.i.i.i.i.us.i.i = icmp eq ptr %i.u, %i.n
  br i1 %.not7.i.i9.i.i.i.i.i.us.i.i, label %.loopexit.i.i, label %.lr.ph.i.i6.i.i.i.i.i.us.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB17_4util2id2IdERB2a_uINtNtNtBa_3ops12control_flow11ControlFlowB2w_ENCNCNvMNtNtB17_6parser9validatorNtB3t_9Validator24build_conflict_err_usages3_00QNCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2w_QNCB3q_s4_0E0E0B17_.exit.loopexit.us.i.i: ; preds = %.split.i.i11.i.i.i.i.i.us.i.i
  %i.y = icmp eq ptr %i.q, %i.b
  br i1 %i.y, label %..loopexit11.split.loop.exit_crit_edge.i.i, label %.loopexit.i.i.i.i.i.us.i.i

.lr.ph.i.i.i.i.i.i.i.preheader.i.i:               ; preds = %.lr.ph.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB17_4util2id2IdERB2a_uINtNtNtBa_3ops12control_flow11ControlFlowB2w_ENCNCNvMNtNtB17_6parser9validatorNtB3t_9Validator24build_conflict_err_usages3_00QNCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2w_QNCB3q_s4_0E0E0B17_.exit.i.i
  %i.z = phi ptr [ %i.aa, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB17_4util2id2IdERB2a_uINtNtNtBa_3ops12control_flow11ControlFlowB2w_ENCNCNvMNtNtB17_6parser9validatorNtB3t_9Validator24build_conflict_err_usages3_00QNCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2w_QNCB3q_s4_0E0E0B17_.exit.i.i ], [ %.promoted.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1328)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1325)
  %.val2.i.i.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !1333, !noalias !1334 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.val3.i.i.i.i.i.i.i = load i64, ptr %i.ac, align 8, !alias.scope !1333, !noalias !1334 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1331)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB7_13SliceContains14slice_contains0BK_.exit.backedge.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader.i.i
  %i.ad = phi ptr [ %i.ae, %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB7_13SliceContains14slice_contains0BK_.exit.backedge.i.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i.i.i.i.i.preheader.i.i ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ad, i64 8
  %.val3.i.i.i.i.i.i.i.i.i = load i64, ptr %i.af, align 8, !alias.scope !1331, !noalias !1337, !noundef !11
  %i.ag = icmp eq i64 %.val3.i.i.i.i.i.i.i.i.i, %.val3.i.i.i.i.i.i.i
  br i1 %i.ag, label %.split.i.i.i.i.i.i.i.i.i, label %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB7_13SliceContains14slice_contains0BK_.exit.backedge.i.i.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %.val2.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !1331, !noalias !1337, !nonnull !11, !noundef !11
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val2.i.i.i.i.i.i.i.i.i, ptr nonnull readonly %.val2.i.i.i.i.i.i.i, i64 %.val3.i.i.i.i.i.i.i), !noalias !1338
  %i.ah = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ah, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB17_4util2id2IdERB2a_uINtNtNtBa_3ops12control_flow11ControlFlowB2w_ENCNCNvMNtNtB17_6parser9validatorNtB3t_9Validator24build_conflict_err_usages3_00QNCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2w_QNCB3q_s4_0E0E0B17_.exit.i.i, label %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB7_13SliceContains14slice_contains0BK_.exit.backedge.i.i.i.i.i.i.i.i.i

_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB7_13SliceContains14slice_contains0BK_.exit.backedge.i.i.i.i.i.i.i.i.i: ; preds = %.split.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.not7.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ae, %i.i
  br i1 %.not7.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.loopexit.i.i:                 ; preds = %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB7_13SliceContains14slice_contains0BK_.exit.backedge.i.i.i.i.i.i.i.i.i
  %i.ai = load ptr, ptr %i.j, align 8, !alias.scope !1325, !noalias !1326, !nonnull !11, !align !17, !noundef !11 ; 2 uses
  %i.aj = load i64, ptr %i.k, align 8, !alias.scope !1325, !noalias !1326, !noundef !11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1332)
  %.idx.i4.i.i.i.i.i.i.i = shl nuw nsw i64 %i.aj, 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx.i4.i.i.i.i.i.i.i
  %.not.i.i5.i.i.i.i.i.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i5.i.i.i.i.i.i.i, label %.loopexit11.split.loop.exit12.i.i, label %.lr.ph.i.i6.i.i.i.i.i.i.i

.lr.ph.i.i6.i.i.i.i.i.i.i:                        ; preds = %.loopexit.i.i.i.i.i.loopexit.i.i, %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB7_13SliceContains14slice_contains0BK_.exit.backedge.i.i8.i.i.i.i.i.i.i
  %i.al = phi ptr [ %i.am, %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB7_13SliceContains14slice_contains0BK_.exit.backedge.i.i8.i.i.i.i.i.i.i ], [ %i.ai, %.loopexit.i.i.i.i.i.loopexit.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.an = getelementptr i8, ptr %i.al, i64 8
  %.val3.i.i7.i.i.i.i.i.i.i = load i64, ptr %i.an, align 8, !alias.scope !1332, !noalias !1335, !noundef !11
  %i.ao = icmp eq i64 %.val3.i.i7.i.i.i.i.i.i.i, %.val3.i.i.i.i.i.i.i
  br i1 %i.ao, label %.split.i.i11.i.i.i.i.i.i.i, label %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB7_13SliceContains14slice_contains0BK_.exit.backedge.i.i8.i.i.i.i.i.i.i

.split.i.i11.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i6.i.i.i.i.i.i.i
  %.val2.i.i12.i.i.i.i.i.i.i = load ptr, ptr %i.al, align 8, !alias.scope !1332, !noalias !1335, !nonnull !11, !noundef !11
  %bcmp.i.i.i.i.i13.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val2.i.i12.i.i.i.i.i.i.i, ptr nonnull readonly %.val2.i.i.i.i.i.i.i, i64 %.val3.i.i.i.i.i.i.i), !noalias !1336
  %i.ap = icmp eq i32 %bcmp.i.i.i.i.i13.i.i.i.i.i.i.i, 0
  br i1 %i.ap, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB17_4util2id2IdERB2a_uINtNtNtBa_3ops12control_flow11ControlFlowB2w_ENCNCNvMNtNtB17_6parser9validatorNtB3t_9Validator24build_conflict_err_usages3_00QNCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2w_QNCB3q_s4_0E0E0B17_.exit.i.i, label %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB7_13SliceContains14slice_contains0BK_.exit.backedge.i.i8.i.i.i.i.i.i.i

_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB7_13SliceContains14slice_contains0BK_.exit.backedge.i.i8.i.i.i.i.i.i.i: ; preds = %.split.i.i11.i.i.i.i.i.i.i, %.lr.ph.i.i6.i.i.i.i.i.i.i
  %.not7.i.i9.i.i.i.i.i.i.i = icmp eq ptr %i.am, %i.ak
  br i1 %.not7.i.i9.i.i.i.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i6.i.i.i.i.i.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB17_4util2id2IdERB2a_uINtNtNtBa_3ops12control_flow11ControlFlowB2w_ENCNCNvMNtNtB17_6parser9validatorNtB3t_9Validator24build_conflict_err_usages3_00QNCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2w_QNCB3q_s4_0E0E0B17_.exit.i.i: ; preds = %.split.i.i.i.i.i.i.i.i.i, %.split.i.i11.i.i.i.i.i.i.i
  %i.aq = icmp eq ptr %i.aa, %i.b
  br i1 %i.aq, label %..loopexit11.split.loop.exit_crit_edge.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader.i.i

.loopexit.i.i:                                    ; preds = %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB7_13SliceContains14slice_contains0BK_.exit.backedge.i.i8.i.i.i.i.i.i.i, %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB7_13SliceContains14slice_contains0BK_.exit.backedge.i.i8.i.i.i.i.i.us.i.i
  %.us-phi19.i.i = phi ptr [ %i.q, %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB7_13SliceContains14slice_contains0BK_.exit.backedge.i.i8.i.i.i.i.i.us.i.i ], [ %i.aa, %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB7_13SliceContains14slice_contains0BK_.exit.backedge.i.i8.i.i.i.i.i.i.i ]
  %.us-phi20.i.i = phi ptr [ %i.p, %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB7_13SliceContains14slice_contains0BK_.exit.backedge.i.i8.i.i.i.i.i.us.i.i ], [ %i.z, %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB7_13SliceContains14slice_contains0BK_.exit.backedge.i.i8.i.i.i.i.i.i.i ]
  store ptr %.us-phi19.i.i, ptr %0, align 8, !alias.scope !1323, !noalias !1324
  %i.ar = getelementptr inbounds nuw i8, ptr %.us-phi20.i.i, i64 16
  br label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB1u_4util2id2IdEENCNCNvMNtNtB1u_6parser9validatorNtB31_9Validator24build_conflict_err_usages3_00ENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvB4c_4find5checkRB2x_QNCB2Y_s4_0E0INtNtNtBc_3ops12control_flow11ControlFlowB5h_EEB1u_.exit

..loopexit11.split.loop.exit_crit_edge.i.i:       ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB17_4util2id2IdERB2a_uINtNtNtBa_3ops12control_flow11ControlFlowB2w_ENCNCNvMNtNtB17_6parser9validatorNtB3t_9Validator24build_conflict_err_usages3_00QNCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2w_QNCB3q_s4_0E0E0B17_.exit.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB17_4util2id2IdERB2a_uINtNtNtBa_3ops12control_flow11ControlFlowB2w_ENCNCNvMNtNtB17_6parser9validatorNtB3t_9Validator24build_conflict_err_usages3_00QNCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2w_QNCB3q_s4_0E0E0B17_.exit.loopexit.us.i.i
  %.us-phi21.i.i = phi ptr [ %i.q, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB17_4util2id2IdERB2a_uINtNtNtBa_3ops12control_flow11ControlFlowB2w_ENCNCNvMNtNtB17_6parser9validatorNtB3t_9Validator24build_conflict_err_usages3_00QNCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2w_QNCB3q_s4_0E0E0B17_.exit.loopexit.us.i.i ], [ %i.aa, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB17_4util2id2IdERB2a_uINtNtNtBa_3ops12control_flow11ControlFlowB2w_ENCNCNvMNtNtB17_6parser9validatorNtB3t_9Validator24build_conflict_err_usages3_00QNCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2w_QNCB3q_s4_0E0E0B17_.exit.i.i ]
  store ptr %.us-phi21.i.i, ptr %0, align 8, !alias.scope !1323, !noalias !1324
  br label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB1u_4util2id2IdEENCNCNvMNtNtB1u_6parser9validatorNtB31_9Validator24build_conflict_err_usages3_00ENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvB4c_4find5checkRB2x_QNCB2Y_s4_0E0INtNtNtBc_3ops12control_flow11ControlFlowB5h_EEB1u_.exit

.loopexit11.split.loop.exit12.i.i:                ; preds = %.loopexit.i.i.i.i.i.loopexit.i.i, %.loopexit.i.i.i.i.i.us.us.i.i
  %.us-phi.i.i = phi ptr [ %i.o, %.loopexit.i.i.i.i.i.us.us.i.i ], [ %i.aa, %.loopexit.i.i.i.i.i.loopexit.i.i ]
  %.us-phi18.i.i = phi ptr [ %.promoted.i.i, %.loopexit.i.i.i.i.i.us.us.i.i ], [ %i.z, %.loopexit.i.i.i.i.i.loopexit.i.i ]
  store ptr %.us-phi.i.i, ptr %0, align 8, !alias.scope !1323, !noalias !1324
  %i.as = getelementptr inbounds nuw i8, ptr %.us-phi18.i.i, i64 16
  br label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB1u_4util2id2IdEENCNCNvMNtNtB1u_6parser9validatorNtB31_9Validator24build_conflict_err_usages3_00ENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvB4c_4find5checkRB2x_QNCB2Y_s4_0E0INtNtNtBc_3ops12control_flow11ControlFlowB5h_EEB1u_.exit

_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB1u_4util2id2IdEENCNCNvMNtNtB1u_6parser9validatorNtB31_9Validator24build_conflict_err_usages3_00ENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvB4c_4find5checkRB2x_QNCB2Y_s4_0E0INtNtNtBc_3ops12control_flow11ControlFlowB5h_EEB1u_.exit: ; preds = %bb.a, %.loopexit.i.i, %..loopexit11.split.loop.exit_crit_edge.i.i, %.loopexit11.split.loop.exit12.i.i
  %.sroa.0.0.i.i = phi ptr [ %i.ar, %.loopexit.i.i ], [ %i.as, %.loopexit11.split.loop.exit12.i.i ], [ null, %..loopexit11.split.loop.exit_crit_edge.i.i ], [ null, %bb.a ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCINvNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvB1j_3any5checkRB2y_NCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB4u_10MatchedArg14check_explicits_0E0E0B4A_(ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %.8.val, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
end_hunk_0
begin_hunk_1_@_RNvMNtCs9ma7mAhtjN1_8anstream4autoINtB2_10AutoStreamNtNtNtCsaKJjC64KgbL_3std2io5stdio10StdoutLockE3newCsfu0rQaTkGUu_12clap_builder:bb.a
  %i.b = call noundef i8 @_RNvNtCs9ma7mAhtjN1_8anstream4auto6choice(ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) @98) #43, !noalias !1361, !inline_history !1360
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
define internal fastcc noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error12invalid_utf8B4_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(712) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
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
define internal fastcc noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error13invalid_valueB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(712) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 384307168202282326) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
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

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %i.m = phi ptr [ %i.bd, %bb.c ], [ inttoptr (i64 8 to ptr), %bb.a ] ; 2 uses
  %i.n = phi i64 [ %i.be, %bb.c ], [ 0, %bb.a ]   ; 11 uses
  %i.o = phi ptr [ %i.bf, %bb.c ], [ inttoptr (i64 8 to ptr), %bb.a ] ; 3 uses
  %.sroa.0.047.i = phi ptr [ %i.p, %bb.c ], [ %2, %bb.a ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.047.i, i64 24 ; 2 uses
  %i.q = getelementptr i8, ptr %.sroa.0.047.i, i64 8
  %.val.i.i = load ptr, ptr %i.q, align 8, !noalias !1420, !nonnull !11, !noundef !11 ; 2 uses
  %i.r = getelementptr i8, ptr %.sroa.0.047.i, i64 16
  %.val1.i.i = load i64, ptr %i.r, align 8, !noalias !1420, !noundef !11 ; 8 uses
  %i.s = tail call noundef double @_RNvCsb8lMixXdhIO_6strsim4jaro(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i) #43, !noalias !1421 ; 4 uses
  %i.t = fcmp ogt double %i.s, f0x3FE6666666666666
  br i1 %i.t, label %bb.d, label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  %.pre50.i = load ptr, ptr %i.j, align 8, !noalias !1420 ; 10 uses
  %.pre51.i = load i64, ptr %i.b, align 8, !range !12, !noalias !1420 ; 2 uses
  %i.u = icmp ult i64 %i.be, 288230376151711744
  tail call void @llvm.assume(i1 %i.u)
  %.idx.i = shl nuw nsw i64 %i.be, 5              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.pre50.i, i64 %.idx.i
  %i.w = shl i64 %.pre51.i, 5                     ; 5 uses
  %i.x = udiv i64 %i.w, 24                        ; 3 uses
  %.not9.i.i.i.i.i.i = icmp eq i64 %i.be, 0
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
  br i1 %.sroa.0.0.i.i.i.i, label %5, label %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterB1i_EEB8_.exit

5:                                                ; preds = %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i
  %6 = icmp eq i64 %i.w, 0
  br i1 %6, label %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterB1i_EEB8_.exit, label %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i

_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i: ; preds = %5
  %i.ba = icmp ule i64 %i.ay, %i.w
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc14___rust_realloc(ptr noundef nonnull %.pre50.i, i64 noundef %i.w, i64 noundef 8, i64 noundef range(i64 0, -15) %i.ay) #43, !noalias !1423 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.b, label %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterB1i_EEB8_.exit, !prof !33

bb.b:                                             ; preds = %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.ay) #46, !noalias !1423
  unreachable

bb.c:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i, %.lr.ph.i
  %i.bd = phi ptr [ %i.cb, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i ], [ %i.m, %.lr.ph.i ]
  %i.be = phi i64 [ %i.ch, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i ], [ %i.n, %.lr.ph.i ] ; 4 uses
  %i.bf = phi ptr [ %i.cb, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i ], [ %i.o, %.lr.ph.i ]
  %i.bg = icmp eq ptr %i.p, %i.i
  br i1 %i.bg, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp slt i64 %.val1.i.i, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e, !prof !21

bb.e:                                             ; preds = %bb.d
  %i.bh = icmp eq i64 %.val1.i.i, 0
  br i1 %i.bh, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread39.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.e
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !1424
  %i.bi = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val1.i.i, i64 noundef range(i64 1, 9) 1) #43, !noalias !1424 ; 3 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.f, label %bb.k

bb.f:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i, %bb.d
  %.sroa.429.0.ph.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %bb.d ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.429.0.ph.i, i64 %.val1.i.i) #46, !noalias !1421
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread39.i: ; preds = %bb.k, %bb.e
  %i.bk = phi ptr [ %i.bi, %bb.k ], [ inttoptr (i64 1 to ptr), %bb.e ]
  switch i64 %i.n, label %.lr.ph.i.i [
    i64 0, label %bb.g
    i64 1, label %._crit_edge.i.i
  ]

.lr.ph.i.i:                                       ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread39.i, %.lr.ph.i.i
  %.sroa.01.017.i.i = phi i64 [ %i.br, %.lr.ph.i.i ], [ %i.n, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread39.i ] ; 2 uses
  %.sroa.05.016.i.i = phi i64 [ %i.bq, %.lr.ph.i.i ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread39.i ] ; 2 uses
  %i.bl = lshr i64 %.sroa.01.017.i.i, 1           ; 2 uses
  %i.bm = add nuw nsw i64 %i.bl, %.sroa.05.016.i.i ; 3 uses
  %i.bn = icmp ult i64 %i.bm, %i.n
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.bm
  %.val12.i.i = load double, ptr %i.bo, align 8, !alias.scope !1425, !noalias !1426, !noundef !11
  %i.bp = fcmp ogt double %.val12.i.i, %i.s
  %i.bq = select i1 %i.bp, i64 %.sroa.05.016.i.i, i64 %i.bm, !unpredictable !11 ; 2 uses
  %i.br = sub nuw nsw i64 %.sroa.01.017.i.i, %i.bl ; 2 uses
  %i.bs = icmp ugt i64 %i.br, 1
  br i1 %i.bs, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread39.i
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread39.i ], [ %i.bq, %.lr.ph.i.i ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.05.0.lcssa.i.i
  %.val14.i.i = load double, ptr %i.bt, align 8, !alias.scope !1425, !noalias !1426, !noundef !11
  %i.bu = fcmp ule double %.val14.i.i, %i.s
  %i.bv = zext i1 %i.bu to i64
  %i.bw = add nuw nsw i64 %.sroa.05.0.lcssa.i.i, %i.bv ; 2 uses
  %i.bx = icmp ule i64 %i.bw, %i.n
  tail call void @llvm.assume(i1 %i.bx)
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread39.i
  %.sroa.4.0.i.i = phi i64 [ %i.n, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread39.i ], [ %i.bw, %._crit_edge.i.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1427)
  %i.by = icmp ult i64 %i.n, 288230376151711744
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = load i64, ptr %i.b, align 8, !range !12, !alias.scope !1427, !noalias !1428, !noundef !11
  %i.ca = icmp eq i64 %i.n, %i.bz
  br i1 %i.ca, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTdNtNtB7_6string6StringEE8grow_oneCsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #42, !noalias !1429
  %.pre.i = load ptr, ptr %i.j, align 8, !alias.scope !1427, !noalias !1428
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cb = phi ptr [ %.pre.i, %bb.h ], [ %i.m, %bb.g ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [32 x i8], ptr %i.cb, i64 %.sroa.4.0.i.i ; 6 uses
  %i.cd = icmp samesign ult i64 %.sroa.4.0.i.i, %i.n
  br i1 %i.cd, label %bb.j, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i

bb.j:                                             ; preds = %bb.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.cf = sub nuw nsw i64 %i.n, %.sroa.4.0.i.i
  %i.cg = shl nuw nsw i64 %i.cf, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ce, ptr nonnull align 8 %i.cc, i64 %i.cg, i1 false), !noalias !1430
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i: ; preds = %bb.j, %bb.i
  store double %i.s, ptr %i.cc, align 8, !noalias !1431
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i64 %.val1.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1431
  %.sroa.523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store ptr %i.bk, ptr %.sroa.523.0..sroa_idx.i, align 8, !noalias !1431
  %.sroa.6.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store i64 %.val1.i.i, ptr %.sroa.6.0..sroa_idx24.i, align 8, !noalias !1431
  %i.ch = add nuw nsw i64 %i.n, 1                 ; 2 uses
  store i64 %i.ch, ptr %i.k, align 8, !alias.scope !1427, !noalias !1428
  br label %bb.c

bb.k:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bi, ptr nonnull align 1 %.val.i.i, i64 %.val1.i.i, i1 false), !noalias !1421
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread39.i

_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterB1i_EEB8_.exit: ; preds = %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, %5, %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i
  %7 = phi i64 [ %i.x, %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i ], [ %i.x, %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i ], [ 0, %5 ] ; 4 uses
  %.sroa.04.0.i.i.i = phi ptr [ %.pre50.i, %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i ], [ %i.bb, %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i ], [ inttoptr (i64 8 to ptr), %5 ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1420
  %i.ci = icmp eq ptr %.sroa.4.0.lcssa.i.i.i.i.i.i170, %.pre50.i
  br i1 %i.ci, label %.thread, label %bb.l

.thread:                                          ; preds = %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterB1i_EEB8_.exit.thread, %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterB1i_EEB8_.exit
  %.sroa.04.0.i.i.i175 = phi ptr [ inttoptr (i64 8 to ptr), %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterB1i_EEB8_.exit.thread ], [ %.sroa.04.0.i.i.i, %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterB1i_EEB8_.exit ] ; 2 uses
  %i.cj = phi i64 [ 0, %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterB1i_EEB8_.exit.thread ], [ %7, %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterB1i_EEB8_.exit ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.i.i.i175) ]
  br label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i

bb.l:                                             ; preds = %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterB1i_EEB8_.exit
  %i.ck = ptrtoint ptr %.sroa.4.0.lcssa.i.i.i.i.i.i170 to i64
  %i.cl = ptrtoint ptr %.pre50.i to i64
  %i.cm = sub nuw i64 %i.ck, %i.cl                ; 2 uses
  %i.cn = udiv exact i64 %i.cm, 24
  %i.co = add nsw i64 %i.cn, -1                   ; 4 uses
  %i.cp = icmp samesign ult i64 %i.co, %7
  tail call void @llvm.assume(i1 %i.cp)
  %i.cq = icmp ult i64 %i.cm, -9223372036854775768
  tail call void @llvm.assume(i1 %i.cq)
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %.sroa.04.0.i.i.i, i64 %i.co ; 2 uses
  %.sroa.025.0.copyload = load i64, ptr %i.cr, align 8 ; 2 uses
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.426.0..sroa_idx, i64 16, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.i.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1432)
  %i.cs = icmp eq i64 %i.co, 0
  br i1 %i.cs, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i
  %.sroa.0.03.i.i.i = phi i64 [ %i.cu, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i ], [ 0, %bb.l ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %.sroa.04.0.i.i.i, i64 %.sroa.0.03.i.i.i ; 2 uses
  %i.cu = add nuw nsw i64 %.sroa.0.03.i.i.i, 1    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1433)
  %.val.i.i.i.i87 = load i64, ptr %i.ct, align 8, !range !12, !alias.scope !1434, !noalias !1435, !noundef !11 ; 2 uses
  %i.cv = icmp eq i64 %.val.i.i.i.i87, 0
  br i1 %i.cv, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.cw, align 8, !alias.scope !1434, !noalias !1435, !nonnull !11, !noundef !11
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i87, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !1436
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i: ; preds = %bb.m, %.lr.ph.i.i.i
  %i.cx = icmp eq i64 %i.cu, %i.co
  br i1 %i.cx, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i, label %.lr.ph.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i, %.thread
  %.sroa.04.0.i.i.i173 = phi ptr [ %.sroa.04.0.i.i.i175, %.thread ], [ %.sroa.04.0.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i ]
  %i.cy = phi i64 [ %i.cj, %.thread ], [ %7, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i ] ; 2 uses
  %.sroa.03.0142 = phi i64 [ -1, %.thread ], [ %.sroa.025.0.copyload, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i ] ; 2 uses
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.thread

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.thread: ; preds = %bb.l, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i
  %.sroa.04.0.i.i.i174 = phi ptr [ %.sroa.04.0.i.i.i173, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i ], [ %.sroa.04.0.i.i.i, %bb.l ]
  %i.da = phi i64 [ %i.cy, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i ], [ %7, %bb.l ]
  %.sroa.03.0142144 = phi i64 [ %.sroa.03.0142, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i ], [ %.sroa.025.0.copyload, %bb.l ]
  %i.db = mul nuw i64 %i.da, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.04.0.i.i.i174, i64 noundef %i.db, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !1435
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.thread
  %.sroa.03.0142145 = phi i64 [ %.sroa.03.0142, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i ], [ %.sroa.03.0142144, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.thread ] ; 2 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !1437
  %i.dc = tail call noundef align 8 dereferenceable_or_null(256) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 256, i64 noundef range(i64 1, 9) 8) #43, !noalias !1437 ; 47 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.n, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !prof !33

bb.n:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 256) #46, !noalias !1437
  unreachable

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit
  store i64 2, ptr %i.dc, align 8
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  store i64 0, ptr %.sroa.497.0..sroa_idx, align 8
  %.sroa.598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.598.0..sroa_idx, align 8
  %.sroa.699.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  %.sroa.8101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.699.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8101.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx102 = getelementptr inbounds nuw i8, ptr %i.dc, i64 72
  store i64 0, ptr %.sroa.9.0..sroa_idx102, align 8
  %.sroa.10.0..sroa_idx103 = getelementptr inbounds nuw i8, ptr %i.dc, i64 80
  store i64 -2, ptr %.sroa.10.0..sroa_idx103, align 8
  %.sroa.11105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 104
  store ptr null, ptr %.sroa.11105.0..sroa_idx, align 8
  %.sroa.12107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 120
  store i8 -1, ptr %.sroa.12107.0..sroa_idx, align 8
  %.sroa.13108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 124
  store i8 -1, ptr %.sroa.13108.0..sroa_idx, align 4
  %.sroa.14110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 128
  store i8 -1, ptr %.sroa.14110.0..sroa_idx, align 8
  %.sroa.15112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 132
  store i16 0, ptr %.sroa.15112.0..sroa_idx, align 4
  %.sroa.16.0..sroa_idx113 = getelementptr inbounds nuw i8, ptr %i.dc, i64 134
  store i8 -1, ptr %.sroa.16.0..sroa_idx113, align 2
  %.sroa.17115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 138
  store i8 -1, ptr %.sroa.17115.0..sroa_idx, align 2
  %.sroa.18117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 142
  store i8 -1, ptr %.sroa.18117.0..sroa_idx, align 2
  %.sroa.19119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 146
  store i16 0, ptr %.sroa.19119.0..sroa_idx, align 2
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 148
  store i8 -1, ptr %.sroa.20.0..sroa_idx, align 4
  %.sroa.21120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 152
  store i8 -1, ptr %.sroa.21120.0..sroa_idx, align 8
  %.sroa.22121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 156
  store i8 -1, ptr %.sroa.22121.0..sroa_idx, align 4
  %.sroa.23122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 160
  store i16 0, ptr %.sroa.23122.0..sroa_idx, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 162
  store i8 -1, ptr %.sroa.24.0..sroa_idx, align 2
  %.sroa.25123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 166
  store i8 -1, ptr %.sroa.25123.0..sroa_idx, align 2
  %.sroa.26124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 170
  store i8 -1, ptr %.sroa.26124.0..sroa_idx, align 2
  %.sroa.27125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 174
  store i16 0, ptr %.sroa.27125.0..sroa_idx, align 2
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 176
  store i8 -1, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.29126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 180
  store i8 -1, ptr %.sroa.29126.0..sroa_idx, align 4
  %.sroa.30127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 184
  store i8 -1, ptr %.sroa.30127.0..sroa_idx, align 8
  %.sroa.31128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 188
  store i16 0, ptr %.sroa.31128.0..sroa_idx, align 4
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 190
  store i8 -1, ptr %.sroa.32.0..sroa_idx, align 2
  %.sroa.33129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 194
  store i8 -1, ptr %.sroa.33129.0..sroa_idx, align 2
  %.sroa.34130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 198
  store i8 -1, ptr %.sroa.34130.0..sroa_idx, align 2
  %.sroa.35131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 202
  store i16 0, ptr %.sroa.35131.0..sroa_idx, align 2
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 204
  store i8 -1, ptr %.sroa.36.0..sroa_idx, align 4
  %.sroa.37132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 208
  store i8 -1, ptr %.sroa.37132.0..sroa_idx, align 8
  %.sroa.38133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 212
  store i8 -1, ptr %.sroa.38133.0..sroa_idx, align 4
  %.sroa.39134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 216
  store i16 0, ptr %.sroa.39134.0..sroa_idx, align 8
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 218
  store i8 -1, ptr %.sroa.40.0..sroa_idx, align 2
  %.sroa.41135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 222
  store i8 -1, ptr %.sroa.41135.0..sroa_idx, align 2
  %.sroa.42136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 226
  store i8 -1, ptr %.sroa.42136.0..sroa_idx, align 2
  %.sroa.43137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 230
  store i16 0, ptr %.sroa.43137.0..sroa_idx, align 2
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 232
  store i8 -2, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.45138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 246
  store <4 x i8> <i8 0, i8 2, i8 2, i8 0>, ptr %.sroa.45138.0..sroa_idx, align 2
  %i.de = tail call fastcc noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error8with_cmdB4_(ptr noalias noundef nonnull align 8 %i.dc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %0) #43 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.sroa.48.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.48, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.48.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %.sroa.412.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.412, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.412.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br i1 %i.l, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4IterBU_ENCNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB31_5Error13invalid_value0EE9from_iterB33_.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !1438
  %i.df = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.idx, i64 noundef range(i64 1, 9) 8) #43, !noalias !1438 ; 3 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %bb.o, label %.preheader.i.i.i.i

bb.o:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %.idx) #46, !noalias !1439
  unreachable

.preheader.i.i.i.i:                               ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i, %.preheader.i.i.i.i
  %i.dh = phi i64 [ %i.dk, %.preheader.i.i.i.i ], [ 0, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i ] ; 3 uses
  %i.di = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1440
  call void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.di) #43, !noalias !1441
  %i.dj = getelementptr inbounds nuw [24 x i8], ptr %i.df, i64 %i.dh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dj, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1442
  %i.dk = add nuw nsw i64 %i.dh, 1                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1440
  %i.dl = icmp eq i64 %i.dk, %3
  br i1 %i.dl, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4IterBU_ENCNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB31_5Error13invalid_value0EE9from_iterB33_.exit, label %.preheader.i.i.i.i

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4IterBU_ENCNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB31_5Error13invalid_value0EE9from_iterB33_.exit: ; preds = %.preheader.i.i.i.i, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit
  %.sroa.10.0.i8.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit ], [ %i.df, %.preheader.i.i.i.i ]
  store i8 1, ptr %i.d, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 2, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.48, i64 31, i1 false)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i8 5, ptr %i.dm, align 8
  %.sroa.4.sroa.314.0..sroa.4.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i8 2, ptr %.sroa.4.sroa.314.0..sroa.4.0..sroa_idx10.sroa_idx, align 8
  %.sroa.4.sroa.415.0..sroa.4.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.sroa.415.0..sroa.4.0..sroa_idx10.sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.412, i64 31, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store i8 4, ptr %i.dn, align 8
  %.sroa.4.sroa.321.0..sroa.4.0..sroa_idx17.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store i8 3, ptr %.sroa.4.sroa.321.0..sroa.4.0..sroa_idx17.sroa_idx, align 8
  %.sroa.4.sroa.422.sroa.4.0..sroa.4.sroa.422.0..sroa.4.0..sroa_idx17.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store i64 %3, ptr %.sroa.4.sroa.422.sroa.4.0..sroa.4.sroa.422.0..sroa.4.0..sroa_idx17.sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.422.sroa.5.0..sroa.4.sroa.422.0..sroa.4.0..sroa_idx17.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store ptr %.sroa.10.0.i8.i.i, ptr %.sroa.4.sroa.422.sroa.5.0..sroa.4.sroa.422.0..sroa.4.0..sroa_idx17.sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.422.sroa.6.0..sroa.4.sroa.422.0..sroa.4.0..sroa_idx17.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store i64 %3, ptr %.sroa.4.sroa.422.sroa.6.0..sroa.4.sroa.422.0..sroa.4.0..sroa_idx17.sroa_idx.sroa_idx, align 8
  %i.do = call noundef nonnull align 8 ptr @_RINvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB3_5Error24extend_context_uncheckedKj3_EB5_(ptr noalias noundef nonnull align 8 %i.dc, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(120) %i.d) #42 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not = icmp eq i64 %.sroa.03.0142145, -1
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4IterBU_ENCNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB31_5Error13invalid_value0EE9from_iterB33_.exit
  %.sroa.4.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx24, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.03.0142145, ptr %i.dp, align 8
  store i8 2, ptr %i.c, align 8
  %i.dq = call noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error24insert_context_uncheckedB4_(ptr noalias noundef nonnull align 8 %i.dc, i8 noundef 12, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c) #42 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4IterBU_ENCNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB31_5Error13invalid_value0EE9from_iterB33_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret ptr %i.dc
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error15too_many_valuesB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(712) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
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
begin_hunk_2_@_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15match_arg_error:bb.a

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.f
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !8342
  %i.dj = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.dh, i64 noundef range(i64 1, 9) 1) #43, !noalias !8342 ; 3 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %bb.da, label %bb.dp

bb.g:                                             ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit.thread
  %i.dl = getelementptr i8, ptr %i.cz, i64 700
  %i.dm = load <2 x i32>, ptr %i.dl, align 4
  %i.dn = and <2 x i32> %i.dm, splat (i32 8192)
  %i.do = icmp ne <2 x i32> %i.dn, zeroinitializer ; 2 uses
  %i.dp = extractelement <2 x i1> %i.do, i64 0
  %i.dq = extractelement <2 x i1> %i.do, i64 1
  %.sroa.0.0.i = select i1 %i.dp, i1 true, i1 %i.dq
  %brmerge.demorgan = and i1 %2, %.sroa.0.0.i
  br i1 %brmerge.demorgan, label %bb.l, label %bb.j

bb.h:                                             ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit.thread, %bb.bd
  %i.dr = phi ptr [ %i.cz, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit.thread ], [ %.pre266, %bb.bd ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  call void @_RNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB5_9ParsedArg7display(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) #43
  %i.ds = load i64, ptr %i.bl, align 8, !range !13, !noundef !11 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.du = load ptr, ptr %i.dt, align 8            ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.dw = load i64, ptr %i.dv, align 8            ; 7 uses
  %.not.i72 = icmp slt i64 %i.dw, 0
  br i1 %.not.i72, label %bb.be, label %bb.i, !prof !21

bb.i:                                             ; preds = %bb.h
  %i.dx = icmp eq i64 %i.dw, 0
  br i1 %i.dx, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit75.thread186, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i73

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i73: ; preds = %bb.i
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !8343
  %i.dy = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.dw, i64 noundef range(i64 1, 9) 1) #43, !noalias !8343 ; 3 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %bb.be, label %bb.bl

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  call void @_RNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB5_9ParsedArg7display(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) #43
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !nonnull !11
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.ed = load i64, ptr %i.ec, align 8            ; 8 uses
  %.not.i76 = icmp slt i64 %i.ed, 0
  br i1 %.not.i76, label %bb.n, label %bb.k, !prof !21

bb.k:                                             ; preds = %bb.j
  %i.ee = icmp eq i64 %i.ed, 0                    ; 2 uses
  br i1 %i.ee, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit79.thread64, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i77

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i77: ; preds = %bb.k
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !8344
  %i.ef = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ed, i64 noundef range(i64 1, 9) 1) #43, !noalias !8344 ; 3 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %bb.n, label %bb.ad

bb.l:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  call void @_RNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB5_9ParsedArg7display(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) #43
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !nonnull !11
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.ek = load i64, ptr %i.ej, align 8            ; 7 uses
  %.not.i80 = icmp slt i64 %i.ek, 0
  br i1 %.not.i80, label %bb.bw, label %bb.m, !prof !21

bb.m:                                             ; preds = %bb.l
  %i.el = icmp eq i64 %i.ek, 0
  br i1 %i.el, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit83.thread198, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i81

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i81: ; preds = %bb.m
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !8345
  %i.em = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ek, i64 noundef range(i64 1, 9) 1) #43, !noalias !8345 ; 3 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %bb.bw, label %bb.cz

bb.n:                                             ; preds = %bb.j, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i77
  %.sroa.424.0.ph = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i77 ], [ 0, %bb.j ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.424.0.ph, i64 %i.ed) #46
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit79.thread64: ; preds = %bb.k, %bb.ad
  %i.eo = phi ptr [ %i.ef, %bb.ad ], [ inttoptr (i64 1 to ptr), %bb.k ] ; 3 uses
  %i.ep = load ptr, ptr %i.cy, align 8, !nonnull !11, !align !17, !noundef !11 ; 2 uses
  %i.eq = getelementptr i8, ptr %i.ep, i64 184
  %.val67 = load ptr, ptr %i.eq, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.er = getelementptr i8, ptr %i.ep, i64 192
  %.val68 = load i64, ptr %i.er, align 8, !noundef !11
  %i.es = getelementptr inbounds nuw [712 x i8], ptr %.val67, i64 %.val68 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8346)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !8347
  store i64 0, ptr %i.bh, align 8, !noalias !8347
  %i.et = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.et, align 8, !noalias !8347
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  br label %.sink.split

.sink.split:                                      ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit79.thread64, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i
  %.sink = phi i64 [ %i.ii, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit79.thread64 ] ; 14 uses
  %.ph = phi ptr [ %i.ic, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i ], [ inttoptr (i64 8 to ptr), %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit79.thread64 ] ; 3 uses
  %.sroa.26.0.i.ph = phi ptr [ %.sroa.26.2.ph.i.lcssa, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i ], [ %.val67, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit79.thread64 ] ; 7 uses
  %.sroa.15.0.i.ph = phi ptr [ %.sroa.15.2.ph.i.lcssa, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i ], [ undef, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit79.thread64 ] ; 2 uses
  %.sroa.12.0.i.ph = phi ptr [ %.sroa.12.2.ph.i.lcssa, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i ], [ undef, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit79.thread64 ] ; 5 uses
  %.sroa.0.0.i85.ph = phi i1 [ false, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i ], [ true, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit79.thread64 ]
  store i64 %.sink, ptr %i.eu, align 8, !noalias !8347
  br i1 %.sroa.0.0.i85.ph, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.sink.split
  %.not.i.i.i.i.i.peel.i.i.i.peel = icmp eq ptr %.sroa.12.0.i.ph, null
  %i.ev = icmp eq ptr %.sroa.12.0.i.ph, %.sroa.15.0.i.ph
  %or.cond.i.i.i.peel = select i1 %.not.i.i.i.i.i.peel.i.i.i.peel, i1 true, i1 %i.ev
  br i1 %or.cond.i.i.i.peel, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.12.0.i.ph, i64 24
  %i.ex = getelementptr i8, ptr %.sroa.12.0.i.ph, i64 8
  br label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.peel

bb.q:                                             ; preds = %bb.o, %.sink.split
  %i.ey = icmp eq ptr %.sroa.26.0.i.ph, %i.es
  br i1 %i.ey, label %.loopexit, label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.loopexit.i.i.i.peel

_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.loopexit.i.i.i.peel: ; preds = %bb.q
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.26.0.i.ph, i64 712
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.26.0.i.ph, i64 560
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.26.0.i.ph, i64 568
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.26.0.i.ph, i64 64
  %i.fd = load ptr, ptr %i.fc, align 8, !alias.scope !8348, !noalias !8349, !nonnull !11, !noundef !11 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.26.0.i.ph, i64 72
  %i.ff = load i64, ptr %i.fe, align 8, !alias.scope !8348, !noalias !8349, !noundef !11
  %i.fg = getelementptr inbounds nuw [24 x i8], ptr %i.fd, i64 %i.ff
  br label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.peel

_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.peel: ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.loopexit.i.i.i.peel, %bb.p
  %.sroa.26.2.ph.i.peel = phi ptr [ %.sroa.26.0.i.ph, %bb.p ], [ %i.ez, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.loopexit.i.i.i.peel ] ; 2 uses
  %.sroa.15.2.ph.i.peel = phi ptr [ %.sroa.15.0.i.ph, %bb.p ], [ %i.fg, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.loopexit.i.i.i.peel ] ; 2 uses
  %.sroa.12.2.ph.i.peel = phi ptr [ %i.ew, %bb.p ], [ %i.fd, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.loopexit.i.i.i.peel ] ; 2 uses
  %.sroa.3.0.i7.pn.i.i.ph.i.in.peel = phi ptr [ %i.ex, %bb.p ], [ %i.fb, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.loopexit.i.i.i.peel ]
  %.sroa.0.0.i.i.ph.i.in.peel = phi ptr [ %.sroa.12.0.i.ph, %bb.p ], [ %i.fa, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.loopexit.i.i.i.peel ]
  %.sroa.0.0.i.i.ph.i.peel = load ptr, ptr %.sroa.0.0.i.i.ph.i.in.peel, align 8, !noalias !8350, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.3.0.i7.pn.i.i.ph.i.peel = load i64, ptr %.sroa.3.0.i7.pn.i.i.ph.i.in.peel, align 8, !noalias !8350, !noundef !11 ; 2 uses
  %i.fh = call noundef double @_RNvCsb8lMixXdhIO_6strsim4jaro(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eo, i64 noundef %i.ed, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.ph.i.peel, i64 noundef %.sroa.3.0.i7.pn.i.i.ph.i.peel) #43, !noalias !8351 ; 2 uses
  %i.fi = fcmp ogt double %i.fh, f0x3FE6666666666666
  br i1 %i.fi, label %.loopexit430, label %.sink.split.peel.newph

.sink.split.peel.newph:                           ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.peel, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i
  %.sroa.26.0.i = phi ptr [ %.sroa.26.2.ph.i, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i ], [ %.sroa.26.2.ph.i.peel, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.peel ] ; 7 uses
  %.sroa.15.0.i = phi ptr [ %.sroa.15.2.ph.i, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i ], [ %.sroa.15.2.ph.i.peel, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.peel ] ; 2 uses
  %.sroa.12.0.i = phi ptr [ %.sroa.12.2.ph.i, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i ], [ %.sroa.12.2.ph.i.peel, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.peel ] ; 4 uses
  %i.fj = icmp eq ptr %.sroa.12.0.i, %.sroa.15.0.i
  br i1 %i.fj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.sink.split.peel.newph
  %i.fk = icmp eq ptr %.sroa.26.0.i, %i.es
  br i1 %i.fk, label %.loopexit, label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.loopexit.i.i.i

_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.loopexit.i.i.i: ; preds = %bb.r
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.26.0.i, i64 712
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.26.0.i, i64 560
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.26.0.i, i64 568
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.26.0.i, i64 64
  %i.fp = load ptr, ptr %i.fo, align 8, !alias.scope !8348, !noalias !8349, !nonnull !11, !noundef !11 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.26.0.i, i64 72
  %i.fr = load i64, ptr %i.fq, align 8, !alias.scope !8348, !noalias !8349, !noundef !11
  %i.fs = getelementptr inbounds nuw [24 x i8], ptr %i.fp, i64 %i.fr
  br label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i

bb.s:                                             ; preds = %.sink.split.peel.newph
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.12.0.i, i64 24
  %i.fu = getelementptr i8, ptr %.sroa.12.0.i, i64 8
  br label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i

_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i: ; preds = %bb.s, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.loopexit.i.i.i
  %.sroa.26.2.ph.i = phi ptr [ %.sroa.26.0.i, %bb.s ], [ %i.fl, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.loopexit.i.i.i ] ; 2 uses
  %.sroa.15.2.ph.i = phi ptr [ %.sroa.15.0.i, %bb.s ], [ %i.fs, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.loopexit.i.i.i ] ; 2 uses
  %.sroa.12.2.ph.i = phi ptr [ %i.ft, %bb.s ], [ %i.fp, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.loopexit.i.i.i ] ; 2 uses
  %.sroa.3.0.i7.pn.i.i.ph.i.in = phi ptr [ %i.fu, %bb.s ], [ %i.fn, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.loopexit.i.i.i ]
  %.sroa.0.0.i.i.ph.i.in = phi ptr [ %.sroa.12.0.i, %bb.s ], [ %i.fm, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.loopexit.i.i.i ]
  %.sroa.0.0.i.i.ph.i = load ptr, ptr %.sroa.0.0.i.i.ph.i.in, align 8, !noalias !8350, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.3.0.i7.pn.i.i.ph.i = load i64, ptr %.sroa.3.0.i7.pn.i.i.ph.i.in, align 8, !noalias !8350, !noundef !11 ; 2 uses
  %i.fv = call noundef double @_RNvCsb8lMixXdhIO_6strsim4jaro(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eo, i64 noundef %i.ed, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.ph.i, i64 noundef %.sroa.3.0.i7.pn.i.i.ph.i) #43, !noalias !8351 ; 2 uses
  %i.fw = fcmp ogt double %i.fv, f0x3FE6666666666666
  br i1 %i.fw, label %.loopexit430, label %.sink.split.peel.newph, !llvm.loop !8111

.loopexit:                                        ; preds = %bb.q, %bb.r
  %i.fx = load ptr, ptr %i.et, align 8, !noalias !8347, !nonnull !11, !noundef !11 ; 10 uses
  %i.fy = load i64, ptr %i.bh, align 8, !range !12, !noalias !8347, !noundef !11 ; 2 uses
  %i.fz = icmp samesign ult i64 %.sink, 288230376151711744
  call void @llvm.assume(i1 %i.fz)
  %.idx.i87 = shl nuw nsw i64 %.sink, 5           ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 %.idx.i87
  call void @llvm.experimental.noalias.scope.decl(metadata !8352)
  call void @llvm.experimental.noalias.scope.decl(metadata !8353)
  %i.gb = shl i64 %i.fy, 5                        ; 6 uses
  %i.gc = udiv i64 %i.gb, 24                      ; 2 uses
  %.not9.i.i.i.i.i.i = icmp eq i64 %.sink, 0
  br i1 %.not9.i.i.i.i.i.i, label %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.loopexit
  %i.gd = add nsw i64 %.idx.i87, -32              ; 2 uses
  %i.ge = lshr exact i64 %i.gd, 5
  %i.gf = add nuw nsw i64 %i.ge, 1
  %xtraiter = and i64 %i.gf, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.sroa.4.010.i.i.i.i.i.i.prol = phi ptr [ %i.gj, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.fx, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.gg = phi ptr [ %i.gh, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.fx, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 32 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.010.i.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(24) %i.gi, i64 24, i1 false), !noalias !8354
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !8124

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.lcssa423.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.gj, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.4.010.i.i.i.i.i.i.unr = phi ptr [ %i.fx, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.gj, %.lr.ph.i.i.i.i.i.i.prol ]
  %.unr = phi ptr [ %i.fx, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.gh, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.gk = icmp ult i64 %i.gd, 224
  br i1 %i.gk, label %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.sroa.4.010.i.i.i.i.i.i = phi ptr [ %i.hc, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.4.010.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.gl = phi ptr [ %i.ha, %.lr.ph.i.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.010.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.gm, i64 24, i1 false), !noalias !8354
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 24
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 40
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gn, ptr noundef nonnull align 8 dereferenceable(24) %i.go, i64 24, i1 false), !noalias !8354
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 48
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gl, i64 72
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gp, ptr noundef nonnull align 8 dereferenceable(24) %i.gq, i64 24, i1 false), !noalias !8354
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 72
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gl, i64 104
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gr, ptr noundef nonnull align 8 dereferenceable(24) %i.gs, i64 24, i1 false), !noalias !8354
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 96
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gl, i64 136
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gt, ptr noundef nonnull align 8 dereferenceable(24) %i.gu, i64 24, i1 false), !noalias !8354
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 120
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gl, i64 168
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gv, ptr noundef nonnull align 8 dereferenceable(24) %i.gw, i64 24, i1 false), !noalias !8354
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 144
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gl, i64 200
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gx, ptr noundef nonnull align 8 dereferenceable(24) %i.gy, i64 24, i1 false), !noalias !8354
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 168
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gl, i64 256 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gl, i64 232
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gz, ptr noundef nonnull align 8 dereferenceable(24) %i.hb, i64 24, i1 false), !noalias !8354
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.i.i.i.7 = icmp eq ptr %i.ha, %i.ga
  br i1 %.not.i.i.i.i.i.i.7, label %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %.loopexit
  %.sroa.4.0.lcssa.i.i.i.i.i90.i = phi ptr [ %i.fx, %.loopexit ], [ %.lcssa423.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.hc, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i88 = icmp ne i64 %i.fy, 0
  %i.hd = mul nuw i64 %i.gc, 24                   ; 5 uses
  %i.he = icmp ne i64 %i.gb, %i.hd
  %.sroa.0.0.i.i.i.i = select i1 %.not.i.i.i.i88, i1 %i.he, i1 false
  br i1 %.sroa.0.0.i.i.i.i, label %4, label %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtNtB1s_5slice4iter4IterNtNtNtB8_7builder7command7CommandEINtNtB1o_5chain5ChainINtNtNtB1q_7sources4once4OnceB1h_EINtNtB1o_3map3MapIB2g_TNtNtB2K_3str3StrbEENCNvMs2_B2I_B2G_15get_all_aliases0EENCNvMs5_B2I_B2G_20all_subcommand_names0EEB8_.exit

4:                                                ; preds = %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i
  %5 = icmp eq i64 %i.gb, 0
  br i1 %5, label %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtNtB1s_5slice4iter4IterNtNtNtB8_7builder7command7CommandEINtNtB1o_5chain5ChainINtNtNtB1q_7sources4once4OnceB1h_EINtNtB1o_3map3MapIB2g_TNtNtB2K_3str3StrbEENCNvMs2_B2I_B2G_15get_all_aliases0EENCNvMs5_B2I_B2G_20all_subcommand_names0EEB8_.exit, label %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i

_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i: ; preds = %4
  %i.hf = icmp ule i64 %i.hd, %i.gb
  call void @llvm.assume(i1 %i.hf)
  %i.hg = call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc14___rust_realloc(ptr noundef nonnull %i.fx, i64 noundef %i.gb, i64 noundef 8, i64 noundef range(i64 0, -15) %i.hd) #43, !noalias !8355 ; 2 uses
  %i.hh = icmp eq ptr %i.hg, null
  br i1 %i.hh, label %bb.t, label %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtNtB1s_5slice4iter4IterNtNtNtB8_7builder7command7CommandEINtNtB1o_5chain5ChainINtNtNtB1q_7sources4once4OnceB1h_EINtNtB1o_3map3MapIB2g_TNtNtB2K_3str3StrbEENCNvMs2_B2I_B2G_15get_all_aliases0EENCNvMs5_B2I_B2G_20all_subcommand_names0EEB8_.exit, !prof !33

bb.t:                                             ; preds = %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i
  call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.hd) #46, !noalias !8355
  unreachable

.loopexit430:                                     ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.peel
  %.sroa.26.2.ph.i.lcssa = phi ptr [ %.sroa.26.2.ph.i.peel, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.peel ], [ %.sroa.26.2.ph.i, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i ]
  %.sroa.15.2.ph.i.lcssa = phi ptr [ %.sroa.15.2.ph.i.peel, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.peel ], [ %.sroa.15.2.ph.i, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i ]
  %.sroa.12.2.ph.i.lcssa = phi ptr [ %.sroa.12.2.ph.i.peel, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.peel ], [ %.sroa.12.2.ph.i, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i ]
  %.sroa.0.0.i.i.ph.i.lcssa = phi ptr [ %.sroa.0.0.i.i.ph.i.peel, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.peel ], [ %.sroa.0.0.i.i.ph.i, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i ]
  %.sroa.3.0.i7.pn.i.i.ph.i.lcssa = phi i64 [ %.sroa.3.0.i7.pn.i.i.ph.i.peel, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.peel ], [ %.sroa.3.0.i7.pn.i.i.ph.i, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i ] ; 7 uses
  %.lcssa424 = phi double [ %i.fh, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.peel ], [ %i.fv, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i ] ; 3 uses
  %.not.i.i = icmp slt i64 %.sroa.3.0.i7.pn.i.i.ph.i.lcssa, 0
  br i1 %.not.i.i, label %bb.v, label %bb.u, !prof !59

bb.u:                                             ; preds = %.loopexit430
  %i.hi = icmp eq i64 %.sroa.3.0.i7.pn.i.i.ph.i.lcssa, 0
  br i1 %i.hi, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread71.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.u
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !8356
  %i.hj = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.3.0.i7.pn.i.i.ph.i.lcssa, i64 noundef range(i64 1, 9) 1) #43, !noalias !8356 ; 3 uses
  %i.hk = icmp eq ptr %i.hj, null
  br i1 %i.hk, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i, %.loopexit430
  %.sroa.440.0.ph.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %.loopexit430 ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.440.0.ph.i, i64 %.sroa.3.0.i7.pn.i.i.ph.i.lcssa) #46, !noalias !8351
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread71.i: ; preds = %bb.aa, %bb.u
  %i.hl = phi ptr [ %i.hj, %bb.aa ], [ inttoptr (i64 1 to ptr), %bb.u ]
  switch i64 %.sink, label %.lr.ph.i.i86 [
    i64 0, label %bb.w
    i64 1, label %._crit_edge.i.i
  ]

.lr.ph.i.i86:                                     ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread71.i, %.lr.ph.i.i86
  %.sroa.01.017.i.i = phi i64 [ %i.hs, %.lr.ph.i.i86 ], [ %.sink, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread71.i ] ; 2 uses
  %.sroa.05.016.i.i = phi i64 [ %i.hr, %.lr.ph.i.i86 ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread71.i ] ; 2 uses
  %i.hm = lshr i64 %.sroa.01.017.i.i, 1           ; 2 uses
  %i.hn = add nuw nsw i64 %i.hm, %.sroa.05.016.i.i ; 3 uses
  %i.ho = icmp ult i64 %i.hn, %.sink
  call void @llvm.assume(i1 %i.ho)
  %i.hp = getelementptr inbounds nuw [32 x i8], ptr %.ph, i64 %i.hn
  %.val12.i.i = load double, ptr %i.hp, align 8, !alias.scope !8357, !noalias !8358, !noundef !11
  %i.hq = fcmp ogt double %.val12.i.i, %.lcssa424
  %i.hr = select i1 %i.hq, i64 %.sroa.05.016.i.i, i64 %i.hn, !unpredictable !11 ; 2 uses
  %i.hs = sub nuw nsw i64 %.sroa.01.017.i.i, %i.hm ; 2 uses
  %i.ht = icmp ugt i64 %i.hs, 1
  br i1 %i.ht, label %.lr.ph.i.i86, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i86, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread71.i
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread71.i ], [ %i.hr, %.lr.ph.i.i86 ] ; 2 uses
  %i.hu = getelementptr inbounds nuw [32 x i8], ptr %.ph, i64 %.sroa.05.0.lcssa.i.i
  %.val14.i.i = load double, ptr %i.hu, align 8, !alias.scope !8357, !noalias !8358, !noundef !11
  %i.hv = fcmp ule double %.val14.i.i, %.lcssa424
  %i.hw = zext i1 %i.hv to i64
  %i.hx = add nuw nsw i64 %.sroa.05.0.lcssa.i.i, %i.hw ; 2 uses
  %i.hy = icmp ule i64 %i.hx, %.sink
  call void @llvm.assume(i1 %i.hy)
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread71.i
  %.sroa.4.0.i.i = phi i64 [ %.sink, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread71.i ], [ %i.hx, %._crit_edge.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8359)
  %i.hz = icmp samesign ult i64 %.sink, 288230376151711744
  call void @llvm.assume(i1 %i.hz)
  %i.ia = load i64, ptr %i.bh, align 8, !range !12, !alias.scope !8359, !noalias !8360, !noundef !11
  %i.ib = icmp eq i64 %.sink, %i.ia
  br i1 %i.ib, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTdNtNtB7_6string6StringEE8grow_oneCsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh) #42, !noalias !8361
  %.pre.i = load ptr, ptr %i.et, align 8, !alias.scope !8359, !noalias !8360
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ic = phi ptr [ %.pre.i, %bb.x ], [ %.ph, %bb.w ] ; 2 uses
  %i.id = getelementptr inbounds nuw [32 x i8], ptr %i.ic, i64 %.sroa.4.0.i.i ; 6 uses
  %i.ie = icmp samesign ult i64 %.sroa.4.0.i.i, %.sink
  br i1 %i.ie, label %bb.z, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i

bb.z:                                             ; preds = %bb.y
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 32
  %i.ig = sub nuw nsw i64 %.sink, %.sroa.4.0.i.i
  %i.ih = shl nuw nsw i64 %i.ig, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.if, ptr nonnull align 8 %i.id, i64 %i.ih, i1 false), !noalias !8362
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i: ; preds = %bb.z, %bb.y
  store double %.lcssa424, ptr %i.id, align 8, !noalias !8363
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  store i64 %.sroa.3.0.i7.pn.i.i.ph.i.lcssa, ptr %.sroa.432.0..sroa_idx.i, align 8, !noalias !8363
  %.sroa.533.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  store ptr %i.hl, ptr %.sroa.533.0..sroa_idx.i, align 8, !noalias !8363
  %.sroa.634.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.id, i64 24
  store i64 %.sroa.3.0.i7.pn.i.i.ph.i.lcssa, ptr %.sroa.634.0..sroa_idx.i, align 8, !noalias !8363
  %i.ii = add nuw nsw i64 %.sink, 1
  br label %.sink.split

bb.aa:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hj, ptr nonnull align 1 %.sroa.0.0.i.i.ph.i.lcssa, i64 %.sroa.3.0.i7.pn.i.i.ph.i.lcssa, i1 false), !noalias !8351
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread71.i

_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtNtB1s_5slice4iter4IterNtNtNtB8_7builder7command7CommandEINtNtB1o_5chain5ChainINtNtNtB1q_7sources4once4OnceB1h_EINtNtB1o_3map3MapIB2g_TNtNtB2K_3str3StrbEENCNvMs2_B2I_B2G_15get_all_aliases0EENCNvMs5_B2I_B2G_20all_subcommand_names0EEB8_.exit: ; preds = %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, %4, %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i
  %.sroa.04.0.i.i.i = phi ptr [ %i.fx, %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i ], [ %i.hg, %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i ], [ inttoptr (i64 8 to ptr), %4 ] ; 2 uses
  %i.ij = ptrtoint ptr %.sroa.4.0.lcssa.i.i.i.i.i90.i to i64
  %i.ik = ptrtoint ptr %i.fx to i64
  %i.il = sub nuw i64 %i.ij, %i.ik                ; 2 uses
  %i.im = udiv exact i64 %i.il, 24
  store i64 %i.gc, ptr %i.bx, align 8, !alias.scope !8364, !noalias !8365
  %i.in = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %.sroa.04.0.i.i.i, ptr %i.in, align 8, !alias.scope !8364, !noalias !8365
  %i.io = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store i64 %i.im, ptr %i.io, align 8, !alias.scope !8364, !noalias !8365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !8347
  br i1 %i.ee, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit, label %bb.ab

bb.ab:                                            ; preds = %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtNtB1s_5slice4iter4IterNtNtNtB8_7builder7command7CommandEINtNtB1o_5chain5ChainINtNtNtB1q_7sources4once4OnceB1h_EINtNtB1o_3map3MapIB2g_TNtNtB2K_3str3StrbEENCNvMs2_B2I_B2G_15get_all_aliases0EENCNvMs5_B2I_B2G_20all_subcommand_names0EEB8_.exit
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.eo, i64 noundef %i.ed, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !8366
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtNtB1s_5slice4iter4IterNtNtNtB8_7builder7command7CommandEINtNtB1o_5chain5ChainINtNtNtB1q_7sources4once4OnceB1h_EINtNtB1o_3map3MapIB2g_TNtNtB2K_3str3StrbEENCNvMs2_B2I_B2G_15get_all_aliases0EENCNvMs5_B2I_B2G_20all_subcommand_names0EEB8_.exit, %bb.ab
  %.val58 = load i64, ptr %i.bw, align 8, !range !13, !noundef !11 ; 2 uses
  %i.ip = icmp sgt i64 %.val58, 0
  br i1 %i.ip, label %bb.ac, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit

bb.ac:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit
  %.val59 = load ptr, ptr %i.ea, align 8, !nonnull !11, !noundef !11
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val59, i64 noundef %.val58, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !8367
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  %i.iq = icmp ult i64 %i.il, -9223372036854775792
  call void @llvm.assume(i1 %i.iq)
  %i.ir = icmp eq ptr %.sroa.4.0.lcssa.i.i.i.i.i90.i, %i.fx
  %i.is = load ptr, ptr %i.cy, align 8, !nonnull !11, !align !17, !noundef !11 ; 9 uses
  br i1 %i.ir, label %bb.ag, label %bb.ae

bb.ad:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i77
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ef, ptr nonnull align 1 %i.eb, i64 %i.ed, i1 false)
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit79.thread64

bb.ae:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  call void @_RNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB5_9ParsedArg7display(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) #43
  %i.it = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.iu = load ptr, ptr %i.it, align 8, !nonnull !11 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.iw = load i64, ptr %i.iv, align 8            ; 7 uses
  %.not.i89 = icmp slt i64 %i.iw, 0
  br i1 %.not.i89, label %bb.ah, label %bb.af, !prof !21

bb.af:                                            ; preds = %bb.ae
  %i.ix = icmp eq i64 %i.iw, 0
  br i1 %i.ix, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit93.thread164, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i91

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i91: ; preds = %bb.af
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !8368
  %i.iy = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.iw, i64 noundef range(i64 1, 9) 1) #43, !noalias !8368 ; 3 uses
  %i.iz = icmp eq ptr %i.iy, null
  br i1 %i.iz, label %bb.ah, label %bb.aj

bb.ag:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit
  %i.ja = getelementptr i8, ptr %i.is, i64 136
  %.val62 = load ptr, ptr %i.ja, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.jb = getelementptr i8, ptr %i.is, i64 144
  %.val63 = load i64, ptr %i.jb, align 8, !noundef !11 ; 2 uses
  %.idx.i94 = mul nuw nsw i64 %.val63, 600
  %i.jc = getelementptr inbounds nuw i8, ptr %.val62, i64 %.idx.i94
  %i.jd = icmp eq i64 %.val63, 0
  br i1 %i.jd, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit101.thread, label %.lr.ph.i.i95

.lr.ph.i.i95:                                     ; preds = %bb.ag, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command15get_positionals0INtB7_5FnMutTRRNtNtBY_3arg3ArgEE8call_mutB10_.exit.thread.i.i97
  %i.je = phi ptr [ %i.jf, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command15get_positionals0INtB7_5FnMutTRRNtNtBY_3arg3ArgEE8call_mutB10_.exit.thread.i.i97 ], [ %.val62, %bb.ag ] ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 600 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 552
  %i.jh = load ptr, ptr %i.jg, align 8, !noalias !8369, !noundef !11
  %.not.i.i.i.i96 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i.i96, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command15get_positionals0INtB7_5FnMutTRRNtNtBY_3arg3ArgEE8call_mutB10_.exit.i.i99, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command15get_positionals0INtB7_5FnMutTRRNtNtBY_3arg3ArgEE8call_mutB10_.exit.thread.i.i97

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command15get_positionals0INtB7_5FnMutTRRNtNtBY_3arg3ArgEE8call_mutB10_.exit.i.i99: ; preds = %.lr.ph.i.i95
  %i.ji = getelementptr inbounds nuw i8, ptr %i.je, i64 584
  %i.jj = load i32, ptr %i.ji, align 8, !range !45, !noalias !8369, !noundef !11
  %.not1.i.i.i.i100 = icmp eq i32 %i.jj, -1
  br i1 %.not1.i.i.i.i100, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit101, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command15get_positionals0INtB7_5FnMutTRRNtNtBY_3arg3ArgEE8call_mutB10_.exit.thread.i.i97

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command15get_positionals0INtB7_5FnMutTRRNtNtBY_3arg3ArgEE8call_mutB10_.exit.thread.i.i97: ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command15get_positionals0INtB7_5FnMutTRRNtNtBY_3arg3ArgEE8call_mutB10_.exit.i.i99, %.lr.ph.i.i95
  %i.jk = icmp eq ptr %i.jf, %i.jc
  br i1 %i.jk, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit101.thread, label %.lr.ph.i.i95

bb.ah:                                            ; preds = %bb.ae, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i91
  %.sroa.428.0.ph = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i91 ], [ 0, %bb.ae ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.428.0.ph, i64 %i.iw) #46
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit93.thread164: ; preds = %bb.af, %bb.aj
  %i.jl = phi ptr [ %i.iy, %bb.aj ], [ inttoptr (i64 1 to ptr), %bb.af ]
  store i64 %i.iw, ptr %i.bv, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.jl, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store i64 %i.iw, ptr %.sroa.620.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  %i.jm = load ptr, ptr %i.cy, align 8, !nonnull !11, !align !17, !noundef !11 ; 4 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 296
  %i.jo = load i64, ptr %i.jn, align 8, !range !13, !alias.scope !8370, !noundef !11
  %.not.i102 = icmp eq i64 %i.jo, -1              ; 2 uses
  %.sroa.3.0.in.v.i = select i1 %.not.i102, i64 568, i64 312
  %.sroa.3.0.in.i = getelementptr inbounds nuw i8, ptr %i.jm, i64 %.sroa.3.0.in.v.i
  %.sroa.0.0.in.v.i = select i1 %.not.i102, i64 560, i64 304
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %i.jm, i64 %.sroa.0.0.in.v.i
  %.sroa.0.0.i103 = load ptr, ptr %.sroa.0.0.in.i, align 8, !alias.scope !8370, !nonnull !11, !noundef !11
  %.sroa.3.0.i = load i64, ptr %.sroa.3.0.in.i, align 8, !alias.scope !8370, !noundef !11 ; 7 uses
  %.not.i104 = icmp slt i64 %.sroa.3.0.i, 0
  br i1 %.not.i104, label %bb.ak, label %bb.ai, !prof !21

bb.ai:                                            ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit93.thread164
  %i.jp = icmp eq i64 %.sroa.3.0.i, 0
  br i1 %i.jp, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit108.thread175, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i106

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i106: ; preds = %bb.ai
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !8371
  %i.jq = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.3.0.i, i64 noundef range(i64 1, 9) 1) #43, !noalias !8371 ; 3 uses
  %i.jr = icmp eq ptr %i.jq, null
  br i1 %i.jr, label %bb.ak, label %bb.bb

bb.aj:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i91
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.iy, ptr nonnull align 1 %i.iu, i64 %i.iw, i1 false)
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit93.thread164

bb.ak:                                            ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit93.thread164, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i106
  %.sroa.432.0.ph = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i106 ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit93.thread164 ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.432.0.ph, i64 %.sroa.3.0.i) #46
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit108.thread175: ; preds = %bb.ai, %bb.bb
  %i.js = phi ptr [ %.pre, %bb.bb ], [ %i.jm, %bb.ai ] ; 5 uses
  %i.jt = phi ptr [ %i.jq, %bb.bb ], [ inttoptr (i64 1 to ptr), %bb.ai ]
  store i64 %.sroa.3.0.i, ptr %i.bs, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  store ptr %i.jt, ptr %.sroa.422.0..sroa_idx, align 8
  %.sroa.623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i64 %.sroa.3.0.i, ptr %.sroa.623.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.513)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  call void @llvm.experimental.noalias.scope.decl(metadata !8372)
  call void @llvm.experimental.noalias.scope.decl(metadata !8373)
  call void @llvm.experimental.noalias.scope.decl(metadata !8374)
  call void @llvm.experimental.noalias.scope.decl(metadata !8375)
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 232
  %i.jv = load ptr, ptr %i.ju, align 8, !alias.scope !8376, !noalias !8372, !nonnull !11, !noundef !11 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.js, i64 240
  %i.jx = load i64, ptr %i.jw, align 8, !alias.scope !8376, !noalias !8372, !noundef !11 ; 2 uses
  %.idx394 = shl nuw nsw i64 %i.jx, 4
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 %.idx394
  %i.jz = icmp eq i64 %i.jx, 0
  br i1 %i.jz, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit, label %.lr.ph379

bb.al:                                            ; preds = %.lr.ph379
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i378, i64 16 ; 2 uses
  %i.kb = add i64 %.sroa.8.0.i.i.i377, 1
  %i.kc = icmp eq ptr %i.ka, %i.jy
  br i1 %i.kc, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit, label %.lr.ph379

.lr.ph379:                                        ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit108.thread175, %bb.al
  %.sroa.0.01.i.i.i378 = phi ptr [ %i.ka, %bb.al ], [ %i.jv, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit108.thread175 ] ; 2 uses
  %.sroa.8.0.i.i.i377 = phi i64 [ %i.kb, %bb.al ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit108.thread175 ] ; 4 uses
  %.val.i.i.i = load i128, ptr %.sroa.0.01.i.i.i378, align 8, !noalias !8377
  %i.kd = icmp eq i128 %.val.i.i.i, -100310019091698447603793328749864812255
  br i1 %i.kd, label %bb.am, label %bb.al

bb.am:                                            ; preds = %.lr.ph379
  %i.ke = getelementptr inbounds nuw i8, ptr %i.js, i64 264
  %i.kf = load i64, ptr %i.ke, align 8, !alias.scope !8376, !noalias !8372, !noundef !11 ; 2 uses
  %i.kg = icmp ult i64 %.sroa.8.0.i.i.i377, %i.kf
  br i1 %i.kg, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.0.i.i.i377, i64 noundef %i.kf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #44, !noalias !8377
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.kh = getelementptr inbounds nuw i8, ptr %i.js, i64 256
  %i.ki = load ptr, ptr %i.kh, align 8, !alias.scope !8376, !noalias !8372, !nonnull !11, !noundef !11
  %i.kj = getelementptr inbounds nuw [32 x i8], ptr %i.ki, i64 %.sroa.8.0.i.i.i377 ; 2 uses
  %.val5.i.i = load ptr, ptr %i.kj, align 8, !noalias !8378, !nonnull !11, !noundef !11
  %i.kk = getelementptr i8, ptr %i.kj, i64 8
  %.val6.i.i = load ptr, ptr %i.kk, align 8, !noalias !8378, !nonnull !11, !align !17, !noundef !11 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 16
  %i.km = load i64, ptr %i.kl, align 8, !range !18, !invariant.load !11, !noalias !8378
  %i.kn = add nsw i64 %i.km, -1
  %i.ko = and i64 %i.kn, -16
  %i.kp = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 %i.ko
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !8378
  %i.kr = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 24
  %i.ks = load ptr, ptr %i.kr, align 8, !invariant.load !11, !noalias !8378, !nonnull !11
  call void %i.ks(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.bg, ptr noundef nonnull %i.kq) #45, !noalias !8378, !inline_history !0
  %i.kt = load i128, ptr %i.bg, align 16, !noalias !8378, !noundef !11
  %.not.i.i109 = icmp eq i128 %i.kt, -100310019091698447603793328749864812255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !8378
end_hunk_2
begin_hunk_3_@_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16get_matches_with:bb.a
  %i.abq = load ptr, ptr %i.abp, align 8, !noalias !10444 ; 2 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.abs = load i64, ptr %i.abr, align 8, !noalias !10444 ; 8 uses
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
  %.sroa.65.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.cu ], [ %i.abs, %bb.cw ], [ %i.abs, %bb.cs ]
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
  store i64 %.sroa.65.0.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.513.0..sroa_idx.i.i, align 8, !noalias !10448
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
  %i.acm = load i64, ptr %i.abz, align 8, !noalias !10457 ; 8 uses
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
  %.sroa.65.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.dd ], [ %i.acm, %bb.df ], [ %i.acm, %bb.db ]
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
  store i64 %.sroa.65.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.510.0..sroa_idx.i.i.i.i, align 8, !noalias !10461
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
  br label %bb.ds

.lr.ph.i.i.i433:                                  ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1W_3map3MapINtNtNtB20_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B3D_NtB3D_7MKeyMap4keys0ENCNvMs0_NtNtB3F_6parser6parserNtB4Z_6Parser18did_you_mean_error0EE9from_iterB3F_.exit.i, %bb.dj
  %i.adf = phi ptr [ %i.aew, %bb.dj ], [ inttoptr (i64 8 to ptr), %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1W_3map3MapINtNtNtB20_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B3D_NtB3D_7MKeyMap4keys0ENCNvMs0_NtNtB3F_6parser6parserNtB4Z_6Parser18did_you_mean_error0EE9from_iterB3F_.exit.i ] ; 2 uses
  %i.adg = phi i64 [ %i.aex, %bb.dj ], [ 0, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1W_3map3MapINtNtNtB20_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B3D_NtB3D_7MKeyMap4keys0ENCNvMs0_NtNtB3F_6parser6parserNtB4Z_6Parser18did_you_mean_error0EE9from_iterB3F_.exit.i ] ; 11 uses
  %i.adh = phi ptr [ %i.aey, %bb.dj ], [ inttoptr (i64 8 to ptr), %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1W_3map3MapINtNtNtB20_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B3D_NtB3D_7MKeyMap4keys0ENCNvMs0_NtNtB3F_6parser6parserNtB4Z_6Parser18did_you_mean_error0EE9from_iterB3F_.exit.i ] ; 3 uses
  %.sroa.0.051.i.i.i = phi ptr [ %i.adi, %bb.dj ], [ %.sroa.5.0.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1W_3map3MapINtNtNtB20_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B3D_NtB3D_7MKeyMap4keys0ENCNvMs0_NtNtB3F_6parser6parserNtB4Z_6Parser18did_you_mean_error0EE9from_iterB3F_.exit.i ] ; 3 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %.sroa.0.051.i.i.i, i64 24 ; 2 uses
  %i.adj = getelementptr i8, ptr %.sroa.0.051.i.i.i, i64 8
  %.val.i.i.i.i434 = load ptr, ptr %i.adj, align 8, !noalias !10463, !nonnull !11, !noundef !11 ; 2 uses
  %i.adk = getelementptr i8, ptr %.sroa.0.051.i.i.i, i64 16
  %.val3.i.i.i.i435 = load i64, ptr %i.adk, align 8, !noalias !10463, !noundef !11 ; 8 uses
  %i.adl = call noundef double @_RNvCsb8lMixXdhIO_6strsim4jaro(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.acx, i64 noundef %i.acw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i.i434, i64 noundef %.val3.i.i.i.i435) #43, !noalias !10464 ; 4 uses
  %i.adm = fcmp ogt double %i.adl, f0x3FE6666666666666
  br i1 %i.adm, label %bb.dk, label %bb.dj

._crit_edge.i.i.i436:                             ; preds = %bb.dj
  %.pre55.i.i.i = load ptr, ptr %i.adc, align 8, !noalias !10462 ; 10 uses
  %.pre56.i.i.i = load i64, ptr %i.ah, align 8, !range !12, !noalias !10462 ; 2 uses
  %i.adn = icmp ult i64 %i.aex, 288230376151711744
  call void @llvm.assume(i1 %i.adn)
  %.idx.i.i.i437 = shl nuw nsw i64 %i.aex, 5      ; 2 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %.pre55.i.i.i, i64 %.idx.i.i.i437
  %i.adp = shl i64 %.pre56.i.i.i, 5               ; 5 uses
  %i.adq = udiv i64 %i.adp, 24                    ; 3 uses
  %.not9.i.i.i.i.i.i.i.i = icmp eq i64 %i.aex, 0
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
  %i.aer = mul nuw i64 %i.adq, 24                 ; 4 uses
  %i.aes = icmp ne i64 %i.adp, %i.aer
  %.sroa.0.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i440, i1 %i.aes, i1 false
  br i1 %.sroa.0.0.i.i.i.i.i.i, label %4, label %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB6_6parserNtB3j_6Parser18did_you_mean_errors_0EEB8_.exit.i.i

4:                                                ; preds = %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i
  %5 = icmp eq i64 %i.adp, 0
  br i1 %5, label %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB6_6parserNtB3j_6Parser18did_you_mean_errors_0EEB8_.exit.i.i, label %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i.i.i

_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i.i.i: ; preds = %4
  %i.aet = icmp ule i64 %i.aer, %i.adp
  call void @llvm.assume(i1 %i.aet)
  %i.aeu = call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc14___rust_realloc(ptr noundef nonnull %.pre55.i.i.i, i64 noundef %i.adp, i64 noundef 8, i64 noundef range(i64 0, -15) %i.aer) #43, !noalias !10466 ; 2 uses
  %i.aev = icmp eq ptr %i.aeu, null
  br i1 %i.aev, label %bb.di, label %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB6_6parserNtB3j_6Parser18did_you_mean_errors_0EEB8_.exit.i.i, !prof !33

bb.di:                                            ; preds = %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i.i.i
  call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.aer) #46, !noalias !10466
  unreachable

bb.dj:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, %.lr.ph.i.i.i433
  %i.aew = phi ptr [ %i.afu, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i.i.i ], [ %i.adf, %.lr.ph.i.i.i433 ]
  %i.aex = phi i64 [ %i.aga, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i.i.i ], [ %i.adg, %.lr.ph.i.i.i433 ] ; 4 uses
  %i.aey = phi ptr [ %i.afu, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i.i.i ], [ %i.adh, %.lr.ph.i.i.i433 ]
  %i.aez = icmp eq ptr %i.adi, %i.acy
  br i1 %i.aez, label %._crit_edge.i.i.i436, label %.lr.ph.i.i.i433

bb.dk:                                            ; preds = %.lr.ph.i.i.i433
  %.not.i.i.i.i506 = icmp slt i64 %.val3.i.i.i.i435, 0
  br i1 %.not.i.i.i.i506, label %bb.dm, label %bb.dl, !prof !21

bb.dl:                                            ; preds = %bb.dk
  %i.afa = icmp eq i64 %.val3.i.i.i.i435, 0
  br i1 %i.afa, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread43.i.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i33.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i33.i: ; preds = %bb.dl
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !10467
  %i.afb = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val3.i.i.i.i435, i64 noundef range(i64 1, 9) 1) #43, !noalias !10467 ; 3 uses
  %i.afc = icmp eq ptr %i.afb, null
  br i1 %i.afc, label %bb.dm, label %bb.dr

bb.dm:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i33.i, %bb.dk
  %.sroa.432.0.ph.i.i.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i33.i ], [ 0, %bb.dk ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.432.0.ph.i.i.i, i64 %.val3.i.i.i.i435) #46, !noalias !10464
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread43.i.i.i: ; preds = %bb.dr, %bb.dl
  %i.afd = phi ptr [ %i.afb, %bb.dr ], [ inttoptr (i64 1 to ptr), %bb.dl ]
  switch i64 %i.adg, label %.lr.ph.i.i.i.i509 [
    i64 0, label %bb.dn
    i64 1, label %._crit_edge.i.i.i.i
  ]

.lr.ph.i.i.i.i509:                                ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread43.i.i.i, %.lr.ph.i.i.i.i509
  %.sroa.01.017.i.i.i.i = phi i64 [ %i.afk, %.lr.ph.i.i.i.i509 ], [ %i.adg, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread43.i.i.i ] ; 2 uses
  %.sroa.05.016.i.i.i.i = phi i64 [ %i.afj, %.lr.ph.i.i.i.i509 ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread43.i.i.i ] ; 2 uses
  %i.afe = lshr i64 %.sroa.01.017.i.i.i.i, 1      ; 2 uses
  %i.aff = add nuw nsw i64 %i.afe, %.sroa.05.016.i.i.i.i ; 3 uses
  %i.afg = icmp ult i64 %i.aff, %i.adg
  call void @llvm.assume(i1 %i.afg)
  %i.afh = getelementptr inbounds nuw [32 x i8], ptr %i.adh, i64 %i.aff
  %.val12.i.i.i.i510 = load double, ptr %i.afh, align 8, !alias.scope !10468, !noalias !10469, !noundef !11
  %i.afi = fcmp ogt double %.val12.i.i.i.i510, %i.adl
  %i.afj = select i1 %i.afi, i64 %.sroa.05.016.i.i.i.i, i64 %i.aff, !unpredictable !11 ; 2 uses
  %i.afk = sub nuw nsw i64 %.sroa.01.017.i.i.i.i, %i.afe ; 2 uses
  %i.afl = icmp ugt i64 %i.afk, 1
  br i1 %i.afl, label %.lr.ph.i.i.i.i509, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i509, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread43.i.i.i
  %.sroa.05.0.lcssa.i.i.i.i = phi i64 [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread43.i.i.i ], [ %i.afj, %.lr.ph.i.i.i.i509 ] ; 2 uses
  %i.afm = getelementptr inbounds nuw [32 x i8], ptr %i.adh, i64 %.sroa.05.0.lcssa.i.i.i.i
  %.val14.i.i.i.i = load double, ptr %i.afm, align 8, !alias.scope !10468, !noalias !10469, !noundef !11
  %i.afn = fcmp ule double %.val14.i.i.i.i, %i.adl
  %i.afo = zext i1 %i.afn to i64
  %i.afp = add nuw nsw i64 %.sroa.05.0.lcssa.i.i.i.i, %i.afo ; 2 uses
  %i.afq = icmp ule i64 %i.afp, %i.adg
  call void @llvm.assume(i1 %i.afq)
  br label %bb.dn

bb.dn:                                            ; preds = %._crit_edge.i.i.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread43.i.i.i
  %.sroa.4.0.i.i.i.i = phi i64 [ %i.adg, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread43.i.i.i ], [ %i.afp, %._crit_edge.i.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10470)
  %i.afr = icmp ult i64 %i.adg, 288230376151711744
  call void @llvm.assume(i1 %i.afr)
  %i.afs = load i64, ptr %i.ah, align 8, !range !12, !alias.scope !10470, !noalias !10471, !noundef !11
  %i.aft = icmp eq i64 %i.adg, %i.afs
  br i1 %i.aft, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTdNtNtB7_6string6StringEE8grow_oneCsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah) #42, !noalias !10472
  %.pre.i.i.i508 = load ptr, ptr %i.adc, align 8, !alias.scope !10470, !noalias !10471
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.afu = phi ptr [ %.pre.i.i.i508, %bb.do ], [ %i.adf, %bb.dn ] ; 3 uses
  %i.afv = getelementptr inbounds nuw [32 x i8], ptr %i.afu, i64 %.sroa.4.0.i.i.i.i ; 6 uses
  %i.afw = icmp samesign ult i64 %.sroa.4.0.i.i.i.i, %i.adg
  br i1 %i.afw, label %bb.dq, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i.i.i

bb.dq:                                            ; preds = %bb.dp
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afv, i64 32
  %i.afy = sub nuw nsw i64 %i.adg, %.sroa.4.0.i.i.i.i
  %i.afz = shl nuw nsw i64 %i.afy, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.afx, ptr nonnull align 8 %i.afv, i64 %i.afz, i1 false), !noalias !10473
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i.i.i: ; preds = %bb.dq, %bb.dp
  store double %i.adl, ptr %i.afv, align 8, !noalias !10474
  %.sroa.4.0..sroa_idx.i.i.i507 = getelementptr inbounds nuw i8, ptr %i.afv, i64 8
  store i64 %.val3.i.i.i.i435, ptr %.sroa.4.0..sroa_idx.i.i.i507, align 8, !noalias !10474
  %.sroa.527.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.afv, i64 16
  store ptr %i.afd, ptr %.sroa.527.0..sroa_idx.i.i.i, align 8, !noalias !10474
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.afv, i64 24
  store i64 %.val3.i.i.i.i435, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !10474
  %i.aga = add nuw nsw i64 %i.adg, 1              ; 2 uses
  store i64 %i.aga, ptr %i.add, align 8, !alias.scope !10470, !noalias !10471
  br label %bb.dj

bb.dr:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i33.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.afb, ptr nonnull align 1 %.val.i.i.i.i434, i64 %.val3.i.i.i.i435, i1 false), !noalias !10464
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread43.i.i.i

_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB6_6parserNtB3j_6Parser18did_you_mean_errors_0EEB8_.exit.i.i: ; preds = %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i.i.i, %4, %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i
  %6 = phi i64 [ %i.adq, %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i ], [ %i.adq, %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i.i.i ], [ 0, %4 ] ; 4 uses
  %.sroa.04.0.i.i.i.i.i = phi ptr [ %.pre55.i.i.i, %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i ], [ %i.aeu, %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i.i.i ], [ inttoptr (i64 8 to ptr), %4 ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !10462
  %i.agb = icmp eq ptr %.sroa.4.0.lcssa.i.i.i.i.i.i66.i.i, %.pre55.i.i.i
  br i1 %i.agb, label %bb.ds, label %bb.ed

bb.ds:                                            ; preds = %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB6_6parserNtB3j_6Parser18did_you_mean_errors_0EEB8_.exit.i.i, %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB6_6parserNtB3j_6Parser18did_you_mean_errors_0EEB8_.exit.thread.i.i
  %.sroa.04.0.i.i.i69.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB6_6parserNtB3j_6Parser18did_you_mean_errors_0EEB8_.exit.thread.i.i ], [ %.sroa.04.0.i.i.i.i.i, %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB6_6parserNtB3j_6Parser18did_you_mean_errors_0EEB8_.exit.i.i ] ; 2 uses
  %i.agc = phi i64 [ 0, %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB6_6parserNtB3j_6Parser18did_you_mean_errors_0EEB8_.exit.thread.i.i ], [ %6, %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB6_6parserNtB3j_6Parser18did_you_mean_errors_0EEB8_.exit.i.i ] ; 2 uses
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
  %i.agd = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.age = icmp eq i64 %.val29.i432, 0
  br i1 %i.age, label %._crit_edge4560, label %.lr.ph4559

bb.dt:                                            ; preds = %.lr.ph4559
  %i.agf = icmp eq ptr %i.agh, %i.adb
  br i1 %i.agf, label %._crit_edge4560.loopexit, label %.lr.ph4559

.lr.ph4559:                                       ; preds = %bb.ds, %bb.dt
  %i.agg = phi ptr [ %i.agh, %bb.dt ], [ %.val28.i431, %bb.ds ] ; 2 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agg, i64 712 ; 4 uses
  call fastcc void @_RNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB8_6parserNtB3o_6Parser18did_you_mean_errors_0EReINtB2f_7IterMutNtNtNtBa_7builder7command7CommandEE0Ba_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(56) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i.i503, ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.agg) #45, !noalias !10482
  %i.agi = load i64, ptr %i.agd, align 8, !range !13, !noalias !10480, !noundef !11 ; 3 uses
  %.not.i.i.i.i.i.i.i504 = icmp eq i64 %i.agi, -1
  br i1 %.not.i.i.i.i.i.i.i504, label %bb.dt, label %bb.du

bb.du:                                            ; preds = %.lr.ph4559
  store ptr %i.agh, ptr %i.ag, align 8, !alias.scope !10483, !noalias !10484
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
  %i.agj = load ptr, ptr %i.af, align 8, !alias.scope !10489, !noalias !10490, !nonnull !11, !noundef !11 ; 3 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.agl = load ptr, ptr %i.agk, align 8, !alias.scope !10489, !noalias !10490, !nonnull !11, !noundef !11 ; 2 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.agn = icmp eq ptr %i.agj, %i.agl
  br i1 %i.agn, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter7IterMutNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENCINvNtNtNtB1E_6parser8features11suggestions17did_you_mean_flagINtNtB8_3map3MapINtB18_4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB2E_6parserNtB4J_6Parser18did_you_mean_errors_0EReB15_E0ENtNtNtBa_6traits8iterator8Iterator10min_by_keyjNCB2x_s_0EB1E_.exit.thread30.i.i, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.ago = ptrtoint ptr %i.agl to i64
  %i.agp = ptrtoint ptr %i.agj to i64
  %i.agq = sub nuw i64 %i.ago, %i.agp
  %i.agr = udiv exact i64 %i.agq, 712
  %i.ags = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %.sroa.8.0..sroa_idx31.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ac, i64 64 ; 2 uses
  %.sroa.01.sroa.8.64..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 72 ; 2 uses
  %.sroa.8.64..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 120
  %i.agu = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.agv = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  %i.agw = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.agx = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %.sroa.6.i.i.i.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.6.0..sroa.6.i.i.i.sroa.6.0..sroa_idx.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.9.0..sroa.6.i.i.i.sroa.6.0..sroa_idx.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.12.0..sroa.6.i.i.i.sroa.6.0..sroa_idx.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  br label %bb.dw

bb.dw:                                            ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map15filter_map_foldQNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionB2a_EEEINtNtBa_3cmp11KeyAndValuejB27_ENCINvNtNtNtB1h_6parser8features11suggestions17did_you_mean_flagINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterB2a_ENCNvMs0_NtB3T_6parserNtB5E_6Parser18did_you_mean_errors_0EReINtB54_7IterMutB1b_EE0NCINvB4O_8map_foldB27_B3f_B3f_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyB27_jNCB3M_s_0E0NvYB3f_NtB3i_3Ord3minE0E0B1h_.exit.i.i.i.i.i.i.i, %bb.dv
  %.val.i.i.i5.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.10.0.copyload.i, %bb.dv ], [ %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.9.1.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map15filter_map_foldQNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionB2a_EEEINtNtBa_3cmp11KeyAndValuejB27_ENCINvNtNtNtB1h_6parser8features11suggestions17did_you_mean_flagINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterB2a_ENCNvMs0_NtB3T_6parserNtB5E_6Parser18did_you_mean_errors_0EReINtB54_7IterMutB1b_EE0NCINvB4O_8map_foldB27_B3f_B3f_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyB27_jNCB3M_s_0E0NvYB3f_NtB3i_3Ord3minE0E0B1h_.exit.i.i.i.i.i.i.i ] ; 6 uses
  %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.9.0.i = phi i64 [ %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.9.0.copyload.i, %bb.dv ], [ %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.6.1.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map15filter_map_foldQNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionB2a_EEEINtNtBa_3cmp11KeyAndValuejB27_ENCINvNtNtNtB1h_6parser8features11suggestions17did_you_mean_flagINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterB2a_ENCNvMs0_NtB3T_6parserNtB5E_6Parser18did_you_mean_errors_0EReINtB54_7IterMutB1b_EE0NCINvB4O_8map_foldB27_B3f_B3f_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyB27_jNCB3M_s_0E0NvYB3f_NtB3i_3Ord3minE0E0B1h_.exit.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.0.0.i = phi ptr [ %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.0.0.copyload.i, %bb.dv ], [ %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.0.1.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map15filter_map_foldQNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionB2a_EEEINtNtBa_3cmp11KeyAndValuejB27_ENCINvNtNtNtB1h_6parser8features11suggestions17did_you_mean_flagINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterB2a_ENCNvMs0_NtB3T_6parserNtB5E_6Parser18did_you_mean_errors_0EReINtB54_7IterMutB1b_EE0NCINvB4O_8map_foldB27_B3f_B3f_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyB27_jNCB3M_s_0E0NvYB3f_NtB3i_3Ord3minE0E0B1h_.exit.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.619.i.i.i.sroa.0.0.i.i.i.i = phi i64 [ %i.agi, %bb.dv ], [ %.sroa.6.i.i.i.sroa.0.1.i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map15filter_map_foldQNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionB2a_EEEINtNtBa_3cmp11KeyAndValuejB27_ENCINvNtNtNtB1h_6parser8features11suggestions17did_you_mean_flagINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterB2a_ENCNvMs0_NtB3T_6parserNtB5E_6Parser18did_you_mean_errors_0EReINtB54_7IterMutB1b_EE0NCINvB4O_8map_foldB27_B3f_B3f_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyB27_jNCB3M_s_0E0NvYB3f_NtB3i_3Ord3minE0E0B1h_.exit.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.722.0.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.dv ], [ %.sroa.7.2.i.i.i.i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map15filter_map_foldQNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionB2a_EEEINtNtBa_3cmp11KeyAndValuejB27_ENCINvNtNtNtB1h_6parser8features11suggestions17did_you_mean_flagINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterB2a_ENCNvMs0_NtB3T_6parserNtB5E_6Parser18did_you_mean_errors_0EReINtB54_7IterMutB1b_EE0NCINvB4O_8map_foldB27_B3f_B3f_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyB27_jNCB3M_s_0E0NvYB3f_NtB3i_3Ord3minE0E0B1h_.exit.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.01.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.dv ], [ %i.ahg, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map15filter_map_foldQNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionB2a_EEEINtNtBa_3cmp11KeyAndValuejB27_ENCINvNtNtNtB1h_6parser8features11suggestions17did_you_mean_flagINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterB2a_ENCNvMs0_NtB3T_6parserNtB5E_6Parser18did_you_mean_errors_0EReINtB54_7IterMutB1b_EE0NCINvB4O_8map_foldB27_B3f_B3f_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyB27_jNCB3M_s_0E0NvYB3f_NtB3i_3Ord3minE0E0B1h_.exit.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.12.i)
  %i.agy = getelementptr inbounds nuw [712 x i8], ptr %i.agj, i64 %.sroa.01.0.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !10491
  call fastcc void @_RNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB8_6parserNtB3o_6Parser18did_you_mean_errors_0EReINtB2f_7IterMutNtNtNtBa_7builder7command7CommandEE0Ba_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.agm, ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.agy) #45, !noalias !10492
  %i.agz = load i64, ptr %i.ags, align 8, !range !13, !noalias !10493, !noundef !11 ; 3 uses
  %.not.i.i.i.i.i.i3.i.i = icmp eq i64 %i.agz, -1
  br i1 %.not.i.i.i.i.i.i3.i.i, label %bb.ec, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.ad, align 8, !noalias !10493 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !10494
  store ptr %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.0.0.i, ptr %i.agw, align 8, !noalias !10485
  store i64 %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.9.0.i, ptr %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.9.0..sroa_idx.i, align 8, !noalias !10485
  store i64 %.val.i.i.i5.i.i.i.i.i.i.i.i.i.i.i, ptr %i.agx, align 8, !noalias !10485
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.11.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.11.i, i64 16, i1 false), !noalias !10485
  store i64 %.sroa.722.0.i.i.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx31.i.i.i.i.i.i.i, align 8, !noalias !10495
  store i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, ptr %i.agt, align 8, !noalias !10496
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.01.sroa.8.64..sroa_idx.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.ags, i64 48, i1 false), !noalias !10493
  store i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.8.64..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !10496
  call void @llvm.experimental.noalias.scope.decl(metadata !10497)
  call void @llvm.experimental.noalias.scope.decl(metadata !10498)
  %i.aha = icmp ult i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, %.sroa.722.0.i.i.i.i.i.i.i
  br i1 %i.aha, label %bb.ea, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.12.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.11.i, i64 16, i1 false), !noalias !10485
  call void @llvm.experimental.noalias.scope.decl(metadata !10499)
  call void @llvm.experimental.noalias.scope.decl(metadata !10500)
  call void @llvm.experimental.noalias.scope.decl(metadata !10501)
  call void @llvm.experimental.noalias.scope.decl(metadata !10502)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.01.sroa.8.64..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !range !12, !alias.scope !10503, !noalias !10504, !noundef !11 ; 2 uses
  %i.ahb = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ahb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.agu, align 8, !alias.scope !10503, !noalias !10504, !nonnull !11, !noundef !11
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !10505
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dz, %bb.dy
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.agv, align 8, !range !13, !alias.scope !10506, !noalias !10504, !noundef !11 ; 2 uses
  %i.ahc = icmp sgt i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ahc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_3cmp11KeyAndValuejTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtB4_6option6OptionB14_EEEEECsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionBX_EEEINtNtBa_3cmp11KeyAndValuejBU_EB21_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyBU_jNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtB4_3MapINtNtNtBa_5slice4iter4IterBX_ENCNvMs0_NtB3H_6parserNtB5J_6Parser18did_you_mean_errors_0EReINtB5a_7IterMutNtNtNtB3J_7builder7command7CommandEEs_0E0NvYB21_NtB24_3Ord3minE0B3J_.exit.i.i.i.i.i.i.i.i

bb.ea:                                            ; preds = %bb.dx
  %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.0.0.copyload.i = load ptr, ptr %.sroa.6.i.i.i.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !10507 ; 2 uses
  %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.6.0..sroa.6.i.i.i.sroa.6.0..sroa_idx.i.i.i.sroa_idx.i, align 8, !noalias !10507 ; 2 uses
  %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.9.0.copyload.i = load i64, ptr %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.9.0..sroa.6.i.i.i.sroa.6.0..sroa_idx.i.i.i.sroa_idx.i, align 8, !noalias !10507 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.12.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.12.0..sroa.6.i.i.i.sroa.6.0..sroa_idx.i.i.i.sroa_idx.i, i64 16, i1 false), !noalias !10507
  %i.ahd = icmp eq i64 %.sroa.619.i.i.i.sroa.0.0.i.i.i.i, 0
  br i1 %i.ahd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.0.0.i, i64 noundef %.sroa.619.i.i.i.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !10508
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.eb, %bb.ea
  %i.ahe = icmp sgt i64 %.val.i.i.i5.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ahe, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_3cmp11KeyAndValuejTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtB4_6option6OptionB14_EEEEECsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionBX_EEEINtNtBa_3cmp11KeyAndValuejBU_EB21_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyBU_jNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtB4_3MapINtNtNtBa_5slice4iter4IterBX_ENCNvMs0_NtB3H_6parserNtB5J_6Parser18did_you_mean_errors_0EReINtB5a_7IterMutNtNtNtB3J_7builder7command7CommandEEs_0E0NvYB21_NtB24_3Ord3minE0B3J_.exit.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_3cmp11KeyAndValuejTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtB4_6option6OptionB14_EEEEECsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.0.2.i = phi ptr [ %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.0.0.copyload.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.0.0.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.6.2.i = phi i64 [ %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.6.0.copyload.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.9.0.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.9.2.i = phi i64 [ %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.9.0.copyload.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i ], [ %.val.i.i.i5.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.6.i.i.i.sroa.0.2.i.i.i.i = phi i64 [ %i.agz, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.619.i.i.i.sroa.0.0.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.7.1.i.i.i.i.i.i.i = phi i64 [ %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.722.0.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sink8.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ac, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i ], [ %i.agt, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.val.i.i.i5.sink.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.val.i.i.i5.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ahf = getelementptr inbounds nuw i8, ptr %.sink8.i.i.i.i.i.i.i.i.i.i.i, i64 40
  %.val1.i.i.i6.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ahf, align 8, !alias.scope !10509, !noalias !10510, !nonnull !11, !noundef !11
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i6.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i5.sink.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !10511
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionBX_EEEINtNtBa_3cmp11KeyAndValuejBU_EB21_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyBU_jNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtB4_3MapINtNtNtBa_5slice4iter4IterBX_ENCNvMs0_NtB3H_6parserNtB5J_6Parser18did_you_mean_errors_0EReINtB5a_7IterMutNtNtNtB3J_7builder7command7CommandEEs_0E0NvYB21_NtB24_3Ord3minE0B3J_.exit.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionBX_EEEINtNtBa_3cmp11KeyAndValuejBU_EB21_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyBU_jNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtB4_3MapINtNtNtBa_5slice4iter4IterBX_ENCNvMs0_NtB3H_6parserNtB5J_6Parser18did_you_mean_errors_0EReINtB5a_7IterMutNtNtNtB3J_7builder7command7CommandEEs_0E0NvYB21_NtB24_3Ord3minE0B3J_.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_3cmp11KeyAndValuejTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtB4_6option6OptionB14_EEEEECsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.0.0.i = phi ptr [ %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.0.2.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_3cmp11KeyAndValuejTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtB4_6option6OptionB14_EEEEECsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.0.0.copyload.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.0.0.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.6.0.i = phi i64 [ %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.6.2.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_3cmp11KeyAndValuejTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtB4_6option6OptionB14_EEEEECsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.6.0.copyload.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.9.0.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.9.0.i = phi i64 [ %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.9.2.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_3cmp11KeyAndValuejTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtB4_6option6OptionB14_EEEEECsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.9.0.copyload.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i ], [ %.val.i.i.i5.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.6.i.i.i.sroa.0.0.i.i.i.i = phi i64 [ %.sroa.6.i.i.i.sroa.0.2.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_3cmp11KeyAndValuejTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtB4_6option6OptionB14_EEEEECsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.agz, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.619.i.i.i.sroa.0.0.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.7.0.i.i.i.i.i.i.i505 = phi i64 [ %.sroa.7.1.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_3cmp11KeyAndValuejTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtB4_6option6OptionB14_EEEEECsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.722.0.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !10494
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map15filter_map_foldQNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionB2a_EEEINtNtBa_3cmp11KeyAndValuejB27_ENCINvNtNtNtB1h_6parser8features11suggestions17did_you_mean_flagINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterB2a_ENCNvMs0_NtB3T_6parserNtB5E_6Parser18did_you_mean_errors_0EReINtB54_7IterMutB1b_EE0NCINvB4O_8map_foldB27_B3f_B3f_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyB27_jNCB3M_s_0E0NvYB3f_NtB3i_3Ord3minE0E0B1h_.exit.i.i.i.i.i.i.i

bb.ec:                                            ; preds = %bb.dw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.12.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.11.i, i64 16, i1 false), !noalias !10485
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map15filter_map_foldQNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionB2a_EEEINtNtBa_3cmp11KeyAndValuejB27_ENCINvNtNtNtB1h_6parser8features11suggestions17did_you_mean_flagINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterB2a_ENCNvMs0_NtB3T_6parserNtB5E_6Parser18did_you_mean_errors_0EReINtB54_7IterMutB1b_EE0NCINvB4O_8map_foldB27_B3f_B3f_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyB27_jNCB3M_s_0E0NvYB3f_NtB3i_3Ord3minE0E0B1h_.exit.i.i.i.i.i.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map15filter_map_foldQNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionB2a_EEEINtNtBa_3cmp11KeyAndValuejB27_ENCINvNtNtNtB1h_6parser8features11suggestions17did_you_mean_flagINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterB2a_ENCNvMs0_NtB3T_6parserNtB5E_6Parser18did_you_mean_errors_0EReINtB54_7IterMutB1b_EE0NCINvB4O_8map_foldB27_B3f_B3f_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyB27_jNCB3M_s_0E0NvYB3f_NtB3i_3Ord3minE0E0B1h_.exit.i.i.i.i.i.i.i: ; preds = %bb.ec, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionBX_EEEINtNtBa_3cmp11KeyAndValuejBU_EB21_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyBU_jNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtB4_3MapINtNtNtBa_5slice4iter4IterBX_ENCNvMs0_NtB3H_6parserNtB5J_6Parser18did_you_mean_errors_0EReINtB5a_7IterMutNtNtNtB3J_7builder7command7CommandEEs_0E0NvYB21_NtB24_3Ord3minE0B3J_.exit.i.i.i.i.i.i.i.i
  %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.0.1.i = phi ptr [ %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.0.0.i, %bb.ec ], [ %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.0.0.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionBX_EEEINtNtBa_3cmp11KeyAndValuejBU_EB21_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyBU_jNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtB4_3MapINtNtNtBa_5slice4iter4IterBX_ENCNvMs0_NtB3H_6parserNtB5J_6Parser18did_you_mean_errors_0EReINtB5a_7IterMutNtNtNtB3J_7builder7command7CommandEEs_0E0NvYB21_NtB24_3Ord3minE0B3J_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.6.1.i = phi i64 [ %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.9.0.i, %bb.ec ], [ %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.6.0.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionBX_EEEINtNtBa_3cmp11KeyAndValuejBU_EB21_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyBU_jNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtB4_3MapINtNtNtBa_5slice4iter4IterBX_ENCNvMs0_NtB3H_6parserNtB5J_6Parser18did_you_mean_errors_0EReINtB5a_7IterMutNtNtNtB3J_7builder7command7CommandEEs_0E0NvYB21_NtB24_3Ord3minE0B3J_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.9.1.i = phi i64 [ %.val.i.i.i5.i.i.i.i.i.i.i.i.i.i.i, %bb.ec ], [ %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.9.0.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionBX_EEEINtNtBa_3cmp11KeyAndValuejBU_EB21_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyBU_jNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtB4_3MapINtNtNtBa_5slice4iter4IterBX_ENCNvMs0_NtB3H_6parserNtB5J_6Parser18did_you_mean_errors_0EReINtB5a_7IterMutNtNtNtB3J_7builder7command7CommandEEs_0E0NvYB21_NtB24_3Ord3minE0B3J_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.i.i.i.sroa.0.1.i.i.i.i = phi i64 [ %.sroa.619.i.i.i.sroa.0.0.i.i.i.i, %bb.ec ], [ %.sroa.6.i.i.i.sroa.0.0.i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionBX_EEEINtNtBa_3cmp11KeyAndValuejBU_EB21_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyBU_jNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtB4_3MapINtNtNtBa_5slice4iter4IterBX_ENCNvMs0_NtB3H_6parserNtB5J_6Parser18did_you_mean_errors_0EReINtB5a_7IterMutNtNtNtB3J_7builder7command7CommandEEs_0E0NvYB21_NtB24_3Ord3minE0B3J_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.7.2.i.i.i.i.i.i.i = phi i64 [ %.sroa.722.0.i.i.i.i.i.i.i, %bb.ec ], [ %.sroa.7.0.i.i.i.i.i.i.i505, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionBX_EEEINtNtBa_3cmp11KeyAndValuejBU_EB21_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyBU_jNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtB4_3MapINtNtNtBa_5slice4iter4IterBX_ENCNvMs0_NtB3H_6parserNtB5J_6Parser18did_you_mean_errors_0EReINtB5a_7IterMutNtNtNtB3J_7builder7command7CommandEEs_0E0NvYB21_NtB24_3Ord3minE0B3J_.exit.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !10491
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.11.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.12.i, i64 16, i1 false), !noalias !10485
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.12.i)
  %i.ahg = add nuw i64 %.sroa.01.0.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ahh = icmp eq i64 %i.ahg, %i.agr
  br i1 %i.ahh, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter7IterMutNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENCINvNtNtNtB1E_6parser8features11suggestions17did_you_mean_flagINtNtB8_3map3MapINtB18_4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB2E_6parserNtB4J_6Parser18did_you_mean_errors_0EReB15_E0ENtNtNtBa_6traits8iterator8Iterator10min_by_keyjNCB2x_s_0EB1E_.exit.thread30.i.i, label %bb.dw

bb.ed:                                            ; preds = %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB6_6parserNtB3j_6Parser18did_you_mean_errors_0EEB8_.exit.i.i
  %i.ahi = ptrtoint ptr %.sroa.4.0.lcssa.i.i.i.i.i.i66.i.i to i64
  %i.ahj = ptrtoint ptr %.pre55.i.i.i to i64
  %i.ahk = sub nuw i64 %i.ahi, %i.ahj             ; 2 uses
  %i.ahl = udiv exact i64 %i.ahk, 24
  %i.ahm = add nsw i64 %i.ahl, -1                 ; 4 uses
  %i.ahn = icmp samesign ult i64 %i.ahm, %6
  call void @llvm.assume(i1 %i.ahn)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.i.i.i.i.i) ]
  %i.aho = icmp ult i64 %i.ahk, -9223372036854775768
  call void @llvm.assume(i1 %i.aho)
  %i.ahp = getelementptr inbounds nuw [24 x i8], ptr %.sroa.04.0.i.i.i.i.i, i64 %i.ahm ; 3 uses
  %.sroa.063.0.copyload65.i = load i64, ptr %i.ahp, align 8, !noalias !10512 ; 2 uses
  %.sroa.866.0..sroa_idx67.i = getelementptr inbounds nuw i8, ptr %i.ahp, i64 8
  %.sroa.866.0.copyload68.i = load ptr, ptr %.sroa.866.0..sroa_idx67.i, align 8, !noalias !10512 ; 2 uses
  %.sroa.10.0..sroa_idx69.i = getelementptr inbounds nuw i8, ptr %i.ahp, i64 16
  %.sroa.10.0.copyload70.i = load i64, ptr %.sroa.10.0..sroa_idx69.i, align 8, !noalias !10512 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10513)
  %i.ahq = icmp eq i64 %i.ahm, 0
  br i1 %i.ahq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit14.sink.split.i.i, label %.lr.ph.i.i.i.i.i441

.lr.ph.i.i.i.i.i441:                              ; preds = %bb.ed, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i
  %.sroa.0.03.i.i.i.i.i = phi i64 [ %i.ahs, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i ], [ 0, %bb.ed ] ; 2 uses
  %i.ahr = getelementptr inbounds nuw [24 x i8], ptr %.sroa.04.0.i.i.i.i.i, i64 %.sroa.0.03.i.i.i.i.i ; 2 uses
  %i.ahs = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10514)
  %.val.i.i.i.i4.i.i = load i64, ptr %i.ahr, align 8, !range !12, !alias.scope !10515, !noalias !10516, !noundef !11 ; 2 uses
  %i.aht = icmp eq i64 %.val.i.i.i.i4.i.i, 0
  br i1 %i.aht, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i, label %bb.ee

bb.ee:                                            ; preds = %.lr.ph.i.i.i.i.i441
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahr, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.ahu, align 8, !alias.scope !10515, !noalias !10516, !nonnull !11, !noundef !11
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i4.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !10517
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i: ; preds = %bb.ee, %.lr.ph.i.i.i.i.i441
  %i.ahv = icmp eq i64 %i.ahs, %i.ahm
  br i1 %i.ahv, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit14.sink.split.i.i, label %.lr.ph.i.i.i.i.i441

_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter7IterMutNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENCINvNtNtNtB1E_6parser8features11suggestions17did_you_mean_flagINtNtB8_3map3MapINtB18_4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB2E_6parserNtB4J_6Parser18did_you_mean_errors_0EReB15_E0ENtNtNtBa_6traits8iterator8Iterator10min_by_keyjNCB2x_s_0EB1E_.exit.thread30.i.i: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map15filter_map_foldQNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionB2a_EEEINtNtBa_3cmp11KeyAndValuejB27_ENCINvNtNtNtB1h_6parser8features11suggestions17did_you_mean_flagINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterB2a_ENCNvMs0_NtB3T_6parserNtB5E_6Parser18did_you_mean_errors_0EReINtB54_7IterMutB1b_EE0NCINvB4O_8map_foldB27_B3f_B3f_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyB27_jNCB3M_s_0E0NvYB3f_NtB3i_3Ord3minE0E0B1h_.exit.i.i.i.i.i.i.i, %bb.du
  %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.10.1.i = phi i64 [ %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.10.0.copyload.i, %bb.du ], [ %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.9.1.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map15filter_map_foldQNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionB2a_EEEINtNtBa_3cmp11KeyAndValuejB27_ENCINvNtNtNtB1h_6parser8features11suggestions17did_you_mean_flagINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterB2a_ENCNvMs0_NtB3T_6parserNtB5E_6Parser18did_you_mean_errors_0EReINtB54_7IterMutB1b_EE0NCINvB4O_8map_foldB27_B3f_B3f_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyB27_jNCB3M_s_0E0NvYB3f_NtB3i_3Ord3minE0E0B1h_.exit.i.i.i.i.i.i.i ]
  %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.9.1.i = phi i64 [ %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.9.0.copyload.i, %bb.du ], [ %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.6.1.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map15filter_map_foldQNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionB2a_EEEINtNtBa_3cmp11KeyAndValuejB27_ENCINvNtNtNtB1h_6parser8features11suggestions17did_you_mean_flagINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterB2a_ENCNvMs0_NtB3T_6parserNtB5E_6Parser18did_you_mean_errors_0EReINtB54_7IterMutB1b_EE0NCINvB4O_8map_foldB27_B3f_B3f_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyB27_jNCB3M_s_0E0NvYB3f_NtB3i_3Ord3minE0E0B1h_.exit.i.i.i.i.i.i.i ]
  %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.0.1.i = phi ptr [ %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.0.0.copyload.i, %bb.du ], [ %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.0.1.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map15filter_map_foldQNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionB2a_EEEINtNtBa_3cmp11KeyAndValuejB27_ENCINvNtNtNtB1h_6parser8features11suggestions17did_you_mean_flagINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterB2a_ENCNvMs0_NtB3T_6parserNtB5E_6Parser18did_you_mean_errors_0EReINtB54_7IterMutB1b_EE0NCINvB4O_8map_foldB27_B3f_B3f_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyB27_jNCB3M_s_0E0NvYB3f_NtB3i_3Ord3minE0E0B1h_.exit.i.i.i.i.i.i.i ]
  %.sroa.511.sroa.0.0.i27.i33.i.i = phi i64 [ %i.agi, %bb.du ], [ %.sroa.6.i.i.i.sroa.0.1.i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map15filter_map_foldQNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionB2a_EEEINtNtBa_3cmp11KeyAndValuejB27_ENCINvNtNtNtB1h_6parser8features11suggestions17did_you_mean_flagINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterB2a_ENCNvMs0_NtB3T_6parserNtB5E_6Parser18did_you_mean_errors_0EReINtB54_7IterMutB1b_EE0NCINvB4O_8map_foldB27_B3f_B3f_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyB27_jNCB3M_s_0E0NvYB3f_NtB3i_3Ord3minE0E0B1h_.exit.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !10485
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.11.i, i64 16, i1 false), !noalias !10434
  br label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i12.i.i

._crit_edge4560.loopexit:                         ; preds = %bb.dt
  store ptr %i.agh, ptr %i.ag, align 8, !alias.scope !10483, !noalias !10484
  br label %._crit_edge4560

._crit_edge4560:                                  ; preds = %._crit_edge4560.loopexit, %bb.ds
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
  %i.ahw = icmp eq i64 %i.agc, 0
  br i1 %i.ahw, label %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1v_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB6_6parserNtB3m_6Parser18did_you_mean_errors_0EReINtB2d_7IterMutNtNtNtB8_7builder7command7CommandEEB8_.exit.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit14.sink.split.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit14.sink.split.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i12.i.i, %bb.ed
  %.sroa.11.0.i = phi i64 [ %.sroa.11.1.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i12.i.i ], [ -1, %bb.ed ], [ -1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i ]
  %.sroa.10.0.i = phi i64 [ %.sroa.10.1.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i12.i.i ], [ %.sroa.10.0.copyload70.i, %bb.ed ], [ %.sroa.10.0.copyload70.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i ]
  %.sroa.866.0.i = phi ptr [ %.sroa.866.1.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i12.i.i ], [ %.sroa.866.0.copyload68.i, %bb.ed ], [ %.sroa.866.0.copyload68.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i ]
  %.sroa.063.0.i = phi i64 [ %.sroa.063.1.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i12.i.i ], [ %.sroa.063.0.copyload65.i, %bb.ed ], [ %.sroa.063.0.copyload65.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i ]
  %.sink74.i.i = phi i64 [ %i.agc, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i12.i.i ], [ %6, %bb.ed ], [ %6, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i ]
  %.sroa.04.0.i.i.i69.sink.i.i = phi ptr [ %.sroa.04.0.i.i.i69.i.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i12.i.i ], [ %.sroa.04.0.i.i.i.i.i, %bb.ed ], [ %.sroa.04.0.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i ]
  %7 = mul nuw i64 %.sink74.i.i, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.04.0.i.i.i69.sink.i.i, i64 noundef %7, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !10518
  br label %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1v_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB6_6parserNtB3m_6Parser18did_you_mean_errors_0EReINtB2d_7IterMutNtNtNtB8_7builder7command7CommandEEB8_.exit.i

_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1v_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB6_6parserNtB3m_6Parser18did_you_mean_errors_0EReINtB2d_7IterMutNtNtNtB8_7builder7command7CommandEEB8_.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit14.sink.split.i.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i12.i.i
  %.sroa.11.2.i = phi i64 [ %.sroa.11.1.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i12.i.i ], [ %.sroa.11.0.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit14.sink.split.i.i ]
  %.sroa.10.2.i = phi i64 [ %.sroa.10.1.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i12.i.i ], [ %.sroa.10.0.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit14.sink.split.i.i ] ; 3 uses
  %.sroa.866.2.i = phi ptr [ %.sroa.866.1.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i12.i.i ], [ %.sroa.866.0.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit14.sink.split.i.i ] ; 3 uses
  %.sroa.063.2.i = phi i64 [ %.sroa.063.1.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i12.i.i ], [ %.sroa.063.0.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit14.sink.split.i.i ] ; 2 uses
  %i.ahx = getelementptr i8, ptr %i.aba, i64 700
  %.val24.i = load i32, ptr %i.ahx, align 4, !noalias !10432, !noundef !11
  %i.ahy = getelementptr i8, ptr %i.aba, i64 704
  %.val25.i442 = load i32, ptr %i.ahy, align 8, !noalias !10432
  %.not.i.i443 = trunc i32 %.val24.i to i1
  %i.ahz = trunc i32 %.val25.i442 to i1
  %.sroa.0.0.i.i444 = select i1 %.not.i.i443, i1 true, i1 %i.ahz
  %.not.i445 = icmp eq i64 %.sroa.063.2.i, -1     ; 2 uses
  %or.cond.i446 = select i1 %.sroa.0.0.i.i444, i1 true, i1 %.not.i445
  br i1 %or.cond.i446, label %.loopexit120.i, label %bb.ef

bb.ef:                                            ; preds = %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1v_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB6_6parserNtB3m_6Parser18did_you_mean_errors_0EReINtB2d_7IterMutNtNtNtB8_7builder7command7CommandEEB8_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.866.2.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !10519)
  %i.aia = load ptr, ptr %i.abb, align 8, !alias.scope !10519, !noalias !10520, !nonnull !11, !noundef !11 ; 2 uses
  %i.aib = load i64, ptr %i.abc, align 8, !alias.scope !10519, !noalias !10520, !noundef !11 ; 2 uses
  %.idx.i.i447 = shl nuw nsw i64 %i.aib, 5
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aia, i64 %.idx.i.i447
  %i.aid = icmp eq i64 %i.aib, 0
  br i1 %i.aid, label %.thread.i, label %.lr.ph.i.i34.i

.lr.ph.i.i34.i:                                   ; preds = %bb.ef, %_RNCINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB8_7MKeyMap3getReE0Ba_.exit.thread.i.i.i
  %i.aie = phi ptr [ %i.aif, %_RNCINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB8_7MKeyMap3getReE0Ba_.exit.thread.i.i.i ], [ %i.aia, %bb.ef ] ; 5 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aie, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10521)
  %i.aig = load i32, ptr %i.aie, align 8, !range !31, !alias.scope !10521, !noalias !10522, !noundef !11
  %i.aih = icmp eq i32 %i.aig, 1
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aie, i64 16
  %i.aij = load i64, ptr %i.aii, align 8, !alias.scope !10521, !noalias !10522
  %i.aik = icmp eq i64 %i.aij, %.sroa.10.2.i
  %or.cond.i.i.i.i.i448 = select i1 %i.aih, i1 %i.aik, i1 false
  br i1 %or.cond.i.i.i.i.i448, label %_RNCINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB8_7MKeyMap3getReE0Ba_.exit.i.i.i, label %_RNCINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB8_7MKeyMap3getReE0Ba_.exit.thread.i.i.i

_RNCINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB8_7MKeyMap3getReE0Ba_.exit.i.i.i: ; preds = %.lr.ph.i.i34.i
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aie, i64 8
  %i.aim = load ptr, ptr %i.ail, align 8, !alias.scope !10521, !noalias !10522, !nonnull !11, !noundef !11
  %bcmp.i.i.i.i.i502 = call i32 @bcmp(ptr nonnull %i.aim, ptr nonnull readonly %.sroa.866.2.i, i64 %.sroa.10.2.i), !noalias !10523
  %i.ain = icmp eq i32 %bcmp.i.i.i.i.i502, 0
  br i1 %i.ain, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BS_NtBS_7MKeyMap3getReE0EBU_.exit.i.i, label %_RNCINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB8_7MKeyMap3getReE0Ba_.exit.thread.i.i.i

_RNCINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB8_7MKeyMap3getReE0Ba_.exit.thread.i.i.i: ; preds = %_RNCINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB8_7MKeyMap3getReE0Ba_.exit.i.i.i, %.lr.ph.i.i34.i
  %i.aio = icmp eq ptr %i.aif, %i.aic
  br i1 %i.aio, label %.loopexit120.i, label %.lr.ph.i.i34.i

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BS_NtBS_7MKeyMap3getReE0EBU_.exit.i.i: ; preds = %_RNCINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB8_7MKeyMap3getReE0Ba_.exit.i.i.i
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aie, i64 24
  %i.aiq = load i64, ptr %i.aip, align 8, !noalias !10524, !noundef !11 ; 3 uses
  %i.air = getelementptr inbounds nuw i8, ptr %i.aba, i64 144
  %i.ais = load i64, ptr %i.air, align 8, !alias.scope !10519, !noalias !10520, !noundef !11 ; 2 uses
  %i.ait = icmp ult i64 %i.aiq, %i.ais
  br i1 %i.ait, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BS_NtBS_7MKeyMap3getReE0EBU_.exit.i.i
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aiq, i64 noundef %i.ais, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #44, !noalias !10524
  unreachable

.loopexit120.i:                                   ; preds = %_RNCINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB8_7MKeyMap3getReE0Ba_.exit.thread.i.i.i, %bb.eh, %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1v_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB6_6parserNtB3m_6Parser18did_you_mean_errors_0EReINtB2d_7IterMutNtNtNtB8_7builder7command7CommandEEB8_.exit.i
  br i1 %.not.i445, label %bb.ej, label %.thread.i

bb.eh:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BS_NtBS_7MKeyMap3getReE0EBU_.exit.i.i
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.aba, i64 136
  %i.aiv = load ptr, ptr %i.aiu, align 8, !alias.scope !10519, !noalias !10520, !nonnull !11, !noundef !11
  %i.aiw = getelementptr inbounds nuw [600 x i8], ptr %i.aiv, i64 %i.aiq
  call fastcc void @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16start_custom_arg(ptr noundef nonnull readonly align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(600) %i.aiw, i8 noundef 2) #43
  br label %.loopexit120.i

.thread.i:                                        ; preds = %.loopexit120.i, %bb.ef
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
  %i.aix = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i64 %.sroa.11.2.i, ptr %i.aix, align 8, !alias.scope !10530, !noalias !10434
  %.sroa.892.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.892.24..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.i, i64 16, i1 false), !noalias !10434
  call void @llvm.experimental.noalias.scope.decl(metadata !10531)
  %.val.i.i.i449 = load i64, ptr %i.ab, align 8, !range !12, !alias.scope !10531, !noalias !10527, !noundef !11 ; 2 uses
  %i.aiy = icmp eq i64 %.val.i.i.i449, 0
  br i1 %i.aiy, label %_RNCNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB7_6Parser18did_you_mean_errors0_0Bb_.exit.i, label %bb.ei

bb.ei:                                            ; preds = %.thread.i
  %.val1.i.i.i450 = load ptr, ptr %.sroa.489.0..sroa_idx.i, align 8, !alias.scope !10531, !noalias !10527, !nonnull !11, !noundef !11
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i450, i64 noundef %.val.i.i.i449, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !10532
  br label %_RNCNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB7_6Parser18did_you_mean_errors0_0Bb_.exit.i

_RNCNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB7_6Parser18did_you_mean_errors0_0Bb_.exit.i: ; preds = %bb.ei, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !10527
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, ptr noundef nonnull align 8 dereferenceable(48) %i.al, i64 48, i1 false), !noalias !10434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !10434
  br label %bb.ek

bb.ej:                                            ; preds = %.loopexit120.i
  store i64 -1, ptr %i.ar, align 8, !noalias !10434
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %_RNCNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB7_6Parser18did_you_mean_errors0_0Bb_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !10434
  call fastcc void @_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command14required_graph(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.aba) #43, !noalias !10432
  %.val26.i451 = load ptr, ptr %i.ib, align 8, !alias.scope !10433, !noalias !10533, !nonnull !11, !noundef !11 ; 2 uses
  %.val27.i452 = load i64, ptr %i.ic, align 8, !alias.scope !10433, !noalias !10533, !noundef !11 ; 2 uses
  %.idx115.i = shl nuw nsw i64 %.val27.i452, 4
  %i.aiz = getelementptr inbounds nuw i8, ptr %.val26.i451, i64 %.idx115.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !10534
  %i.aja = icmp eq i64 %.val27.i452, 0
  br i1 %i.aja, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtB2k_6filter6FilterIB3a_INtNtNtB2o_5slice4iter4IterB11_ENCNvMs0_NtNtB17_6parser6parserNtB4f_6Parser18did_you_mean_errors1_0ENCB49_s2_0EEE9from_iterB17_.exit.i, label %.lr.ph.i.i.i.i.i.i.i453

.lr.ph.i.i.i.i.i.i.i453:                          ; preds = %bb.ek
  %i.ajb = getelementptr i8, ptr %i.aba, i64 136  ; 2 uses
  %i.ajc = getelementptr i8, ptr %i.aba, i64 144  ; 2 uses
  br label %bb.el

bb.el:                                            ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IduINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs0_NtNtB1c_6parser6parserNtB2I_6Parser18did_you_mean_errors1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2C_s2_0E0E0B1c_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i453
  %i.ajd = phi ptr [ %.val26.i451, %.lr.ph.i.i.i.i.i.i.i453 ], [ %i.aje, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IduINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs0_NtNtB1c_6parser6parserNtB2I_6Parser18did_you_mean_errors1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2C_s2_0E0E0B1c_.exit.i.i.i.i.i.i.i ] ; 5 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajd, i64 16 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10535)
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ajd, align 8, !alias.scope !10535, !noalias !10536 ; 2 uses
  %i.ajf = getelementptr i8, ptr %i.ajd, i64 8
  %.val1.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ajf, align 8, !alias.scope !10535, !noalias !10536 ; 3 uses
  %i.ajg = call fastcc noundef zeroext i1 @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1, ptr %.val.i.i.i.i.i.i.i.i.i, i64 %.val1.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) @0) #43, !noalias !10537
  br i1 %i.ajg, label %bb.em, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IduINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs0_NtNtB1c_6parser6parserNtB2I_6Parser18did_you_mean_errors1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2C_s2_0E0E0B1c_.exit.i.i.i.i.i.i.i

bb.em:                                            ; preds = %bb.el
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ajb, align 8, !noalias !10538, !nonnull !11, !noundef !11 ; 2 uses
  %.val5.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ajc, align 8, !noalias !10538, !noundef !11 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.val5.i.i.i.i.i.i.i.i.i.i.i, 600
  %i.ajh = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aji = icmp eq i64 %.val5.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.aji, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IduINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs0_NtNtB1c_6parser6parserNtB2I_6Parser18did_you_mean_errors1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2C_s2_0E0E0B1c_.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i492

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i492:              ; preds = %bb.em, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ajj = phi ptr [ %i.ajk, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i.i.i.i.i.i, %bb.em ] ; 4 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajj, i64 600 ; 2 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajj, i64 544
  %i.ajm = load i64, ptr %i.ajl, align 8, !noalias !10539, !noundef !11
  %i.ajn = icmp eq i64 %i.ajm, %.val1.i.i.i.i.i.i.i.i.i
  br i1 %i.ajn, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i492
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajj, i64 536
  %i.ajp = load ptr, ptr %i.ajo, align 8, !noalias !10539, !nonnull !11, !noundef !11
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.ajp, ptr nonnull %.val.i.i.i.i.i.i.i.i.i, i64 %.val1.i.i.i.i.i.i.i.i.i), !noalias !10539
  %i.ajq = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ajq, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtBW_6Parser18did_you_mean_errors2_0INtB7_5FnMutTRRNtNtNtB10_4util2id2IdEE8call_mutB10_.exit.i.i.i.i.i.i.i.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i492
  %i.ajr = icmp eq ptr %i.ajk, %i.ajh
  br i1 %i.ajr, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IduINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs0_NtNtB1c_6parser6parserNtB2I_6Parser18did_you_mean_errors1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2C_s2_0E0E0B1c_.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i492

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtBW_6Parser18did_you_mean_errors2_0INtB7_5FnMutTRRNtNtNtB10_4util2id2IdEE8call_mutB10_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajj, i64 592
  %i.ajt = load i32, ptr %i.ajs, align 8, !noalias !10538, !noundef !11
  %i.aju = and i32 %i.ajt, 4
  %.not4.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.aju, 0
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i39.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IduINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs0_NtNtB1c_6parser6parserNtB2I_6Parser18did_you_mean_errors1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2C_s2_0E0E0B1c_.exit.i.i.i.i.i.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IduINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs0_NtNtB1c_6parser6parserNtB2I_6Parser18did_you_mean_errors1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2C_s2_0E0E0B1c_.exit.i.i.i.i.i.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtBW_6Parser18did_you_mean_errors2_0INtB7_5FnMutTRRNtNtNtB10_4util2id2IdEE8call_mutB10_.exit.i.i.i.i.i.i.i.i.i, %bb.em, %bb.el
  %i.ajv = icmp eq ptr %i.aje, %i.aiz
  br i1 %i.ajv, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtB2k_6filter6FilterIB3a_INtNtNtB2o_5slice4iter4IterB11_ENCNvMs0_NtNtB17_6parser6parserNtB4f_6Parser18did_you_mean_errors1_0ENCB49_s2_0EEE9from_iterB17_.exit.i, label %bb.el

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i39.i: ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtBW_6Parser18did_you_mean_errors2_0INtB7_5FnMutTRRNtNtNtB10_4util2id2IdEE8call_mutB10_.exit.i.i.i.i.i.i.i.i.i
  %i.ajw = getelementptr i8, ptr %i.ajd, i64 8
  %.val.i.i40.i493 = load ptr, ptr %i.ajd, align 8, !noalias !10540, !nonnull !11, !noundef !11
  %.val3.i.i.i494 = load i64, ptr %i.ajw, align 8, !noalias !10540, !noundef !11
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !10541
  %i.ajx = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 64, i64 noundef range(i64 1, 9) 8) #43, !noalias !10541 ; 5 uses
  %i.ajy = icmp eq ptr %i.ajx, null
  br i1 %i.ajy, label %bb.en, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i41.i

bb.en:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i39.i
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 64) #46, !noalias !10542
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i41.i: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i39.i
  store ptr %.val.i.i40.i493, ptr %i.ajx, align 8, !noalias !10542
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajx, i64 8
  store i64 %.val3.i.i.i494, ptr %i.ajz, align 8, !noalias !10542
  store i64 4, ptr %i.z, align 8, !noalias !10534
  %.sroa.4.0..sroa_idx.i42.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  store ptr %i.ajx, ptr %.sroa.4.0..sroa_idx.i42.i, align 8, !noalias !10534
  %.sroa.64.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i.i, align 8, !noalias !10534
  call void @llvm.experimental.noalias.scope.decl(metadata !10543)
end_hunk_3
begin_hunk_4_@llvm.vector.reduce.add.v2i64
!10094 = distinct !{!10094, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtBW_6parser9validatorNtB2o_9Validator25fails_arg_required_unless0EBW_"}
!10095 = distinct !{!10095, !10094, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtBW_6parser9validatorNtB2o_9Validator25fails_arg_required_unless0EBW_: argument 1"}
!10096 = distinct !{!10096, !10094, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtBW_6parser9validatorNtB2o_9Validator25fails_arg_required_unless0EBW_: argument 0"}
!10097 = distinct !{!10097, !"_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit"}
!10098 = distinct !{!10098, !10097, !"_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit: argument 1"}
!10099 = distinct !{!10099, !10097, !"_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit: argument 0"}
!10100 = distinct !{!10100, !"_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher3get"}
!10101 = distinct !{!10101, !10100, !"_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher3get: argument 0"}
!10102 = distinct !{!10102, !"_RINvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_2id2IdNtNtNtNtB7_6parser7matches11matched_arg10MatchedArgE3getB11_EB7_"}
!10103 = distinct !{!10103, !10102, !"_RINvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_2id2IdNtNtNtNtB7_6parser7matches11matched_arg10MatchedArgE3getB11_EB7_: argument 0"}
!10104 = distinct !{!10104, !"_RNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg14check_explicit"}
!10105 = distinct !{!10105, !10104, !"_RNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg14check_explicit: argument 0"}
!10106 = distinct !{!10106, !10104, !"_RNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg14check_explicit: argument 1"}
!10107 = distinct !{!10107, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtBW_6parser9validatorNtB2o_9Validator25fails_arg_required_unless0EBW_"}
!10108 = distinct !{!10108, !10107, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtBW_6parser9validatorNtB2o_9Validator25fails_arg_required_unless0EBW_: argument 1"}
!10109 = distinct !{!10109, !10107, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtBW_6parser9validatorNtB2o_9Validator25fails_arg_required_unless0EBW_: argument 0"}
!10110 = distinct !{!10110, !"_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit"}
!10111 = distinct !{!10111, !10110, !"_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit: argument 1"}
!10112 = distinct !{!10112, !10110, !"_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit: argument 0"}
!10113 = distinct !{!10113, !"_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher3get"}
!10114 = distinct !{!10114, !10113, !"_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher3get: argument 0"}
!10115 = distinct !{!10115, !"_RINvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_2id2IdNtNtNtNtB7_6parser7matches11matched_arg10MatchedArgE3getB11_EB7_"}
!10116 = distinct !{!10116, !10115, !"_RINvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_2id2IdNtNtNtNtB7_6parser7matches11matched_arg10MatchedArgE3getB11_EB7_: argument 0"}
!10117 = distinct !{!10117, !"_RNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg14check_explicit"}
!10118 = distinct !{!10118, !10117, !"_RNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg14check_explicit: argument 0"}
!10119 = distinct !{!10119, !10117, !"_RNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg14check_explicit: argument 1"}
!10120 = distinct !{!10120, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_"}
!10121 = distinct !{!10121, !10120, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_: argument 0"}
!10122 = distinct !{!10122, !10120, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_: argument 1"}
!10123 = distinct !{!10123, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs5_NtBU_7commandNtB2I_7Command10find_group0EBW_"}
!10124 = distinct !{!10124, !10123, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs5_NtBU_7commandNtB2I_7Command10find_group0EBW_: argument 1"}
!10125 = distinct !{!10125, !10123, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs5_NtBU_7commandNtB2I_7Command10find_group0EBW_: argument 0"}
!10126 = distinct !{!10126, !"_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator22is_missing_required_ok"}
!10127 = distinct !{!10127, !10126, !"_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator22is_missing_required_ok: argument 0"}
!10128 = distinct !{!10128, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_"}
!10129 = distinct !{!10129, !10128, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_: argument 0"}
!10130 = distinct !{!10130, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_"}
!10131 = distinct !{!10131, !10130, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_: argument 0"}
!10132 = distinct !{!10132, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs5_NtBU_7commandNtB2J_7Command14groups_for_arg0EBW_"}
!10133 = distinct !{!10133, !10132, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs5_NtBU_7commandNtB2J_7Command14groups_for_arg0EBW_: argument 1"}
!10134 = distinct !{!10134, !10132, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs5_NtBU_7commandNtB2J_7Command14groups_for_arg0EBW_: argument 0"}
!10135 = distinct !{!10135, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvMs5_NtNtBW_7builder7commandNtB2t_7Command14groups_for_arg00EBW_"}
!10136 = distinct !{!10136, !10135, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvMs5_NtNtBW_7builder7commandNtB2t_7Command14groups_for_arg00EBW_: argument 1"}
!10137 = distinct !{!10137, !10135, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvMs5_NtNtBW_7builder7commandNtB2t_7Command14groups_for_arg00EBW_: argument 0"}
!10138 = distinct !{!10138, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_"}
!10139 = distinct !{!10139, !10138, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_: argument 0"}
!10140 = distinct !{!10140, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_"}
!10141 = distinct !{!10141, !10140, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_: argument 0"}
!10142 = distinct !{!10142, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_"}
!10143 = distinct !{!10143, !10142, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_: argument 0"}
!10144 = distinct !{!10144, !10142, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_: argument 1"}
!10145 = distinct !{!10145, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtBW_6parser9validatorNtB2o_9Validator17validate_requireds1_0EBW_"}
!10146 = distinct !{!10146, !10145, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtBW_6parser9validatorNtB2o_9Validator17validate_requireds1_0EBW_: argument 1"}
!10147 = distinct !{!10147, !10145, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtBW_6parser9validatorNtB2o_9Validator17validate_requireds1_0EBW_: argument 0"}
!10148 = distinct !{!10148, !"_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit"}
!10149 = distinct !{!10149, !10148, !"_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit: argument 1"}
!10150 = distinct !{!10150, !10148, !"_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit: argument 0"}
!10151 = distinct !{!10151, !"_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher3get"}
!10152 = distinct !{!10152, !10151, !"_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher3get: argument 0"}
!10153 = distinct !{!10153, !"_RINvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_2id2IdNtNtNtNtB7_6parser7matches11matched_arg10MatchedArgE3getB11_EB7_"}
!10154 = distinct !{!10154, !10153, !"_RINvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_2id2IdNtNtNtNtB7_6parser7matches11matched_arg10MatchedArgE3getB11_EB7_: argument 0"}
!10155 = distinct !{!10155, !"_RNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg14check_explicit"}
!10156 = distinct !{!10156, !10155, !"_RNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg14check_explicit: argument 0"}
!10157 = distinct !{!10157, !10155, !"_RNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg14check_explicit: argument 1"}
!10158 = distinct !{!10158, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_"}
!10159 = distinct !{!10159, !10158, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_: argument 0"}
!10160 = distinct !{!10160, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_"}
!10161 = distinct !{!10161, !10160, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_: argument 0"}
!10162 = distinct !{!10162, !10160, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_: argument 1"}
!10163 = distinct !{!10163, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_"}
!10164 = distinct !{!10164, !10163, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_: argument 0"}
!10165 = distinct !{!10165, !"_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1W_7flatten7FlatMapINtNtNtB20_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEINtNtB1W_5chain5ChainINtNtNtB1Y_7sources4once4OnceReEIB1S_IB35_TNtNtB3z_3str3StrbEENCNvMs2_B3x_B3v_15get_all_aliases0EENCNvMs5_B3x_B3v_20all_subcommand_names0ENCNvMNtNtB3B_6parser9validatorNtB76_9Validator8validates_0EE9from_iterB3B_"}
!10166 = distinct !{!10166, !10165, !"_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1W_7flatten7FlatMapINtNtNtB20_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEINtNtB1W_5chain5ChainINtNtNtB1Y_7sources4once4OnceReEIB1S_IB35_TNtNtB3z_3str3StrbEENCNvMs2_B3x_B3v_15get_all_aliases0EENCNvMs5_B3x_B3v_20all_subcommand_names0ENCNvMNtNtB3B_6parser9validatorNtB76_9Validator8validates_0EE9from_iterB3B_: argument 1"}
!10167 = distinct !{!10167, !10165, !"_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1W_7flatten7FlatMapINtNtNtB20_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEINtNtB1W_5chain5ChainINtNtNtB1Y_7sources4once4OnceReEIB1S_IB35_TNtNtB3z_3str3StrbEENCNvMs2_B3x_B3v_15get_all_aliases0EENCNvMs5_B3x_B3v_20all_subcommand_names0ENCNvMNtNtB3B_6parser9validatorNtB76_9Validator8validates_0EE9from_iterB3B_: argument 0"}
!10168 = distinct !{!10168, !"_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command20all_subcommand_names0Bb_"}
!10169 = distinct !{!10169, !10168, !"_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command20all_subcommand_names0Bb_: argument 1"}
!10170 = distinct !{!10170, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceReEIBN_IB1l_TNtNtB1O_3str3StrbEENCNvMs2_B1M_B1K_15get_all_aliases0EENCNvMs5_B1M_B1K_20all_subcommand_names0ENCNvMNtNtB1Q_6parser9validatorNtB5i_9Validator8validates_0ENtNtNtB9_6traits8iterator8Iterator4nextB1Q_"}
!10171 = distinct !{!10171, !10170, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceReEIBN_IB1l_TNtNtB1O_3str3StrbEENCNvMs2_B1M_B1K_15get_all_aliases0EENCNvMs5_B1M_B1K_20all_subcommand_names0ENCNvMNtNtB1Q_6parser9validatorNtB5i_9Validator8validates_0ENtNtNtB9_6traits8iterator8Iterator4nextB1Q_: argument 1"}
!10172 = distinct !{!10172, !10170, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceReEIBN_IB1l_TNtNtB1O_3str3StrbEENCNvMs2_B1M_B1K_15get_all_aliases0EENCNvMs5_B1M_B1K_20all_subcommand_names0ENCNvMNtNtB1Q_6parser9validatorNtB5i_9Validator8validates_0ENtNtNtB9_6traits8iterator8Iterator4nextB1Q_: argument 0"}
!10173 = distinct !{!10173, !"_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceReEINtNtB7_3map3MapIB15_TNtNtB1y_3str3StrbEENCNvMs2_B1w_B1u_15get_all_aliases0EENCNvMs5_B1w_B1u_20all_subcommand_names0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_"}
!10174 = distinct !{!10174, !10173, !"_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceReEINtNtB7_3map3MapIB15_TNtNtB1y_3str3StrbEENCNvMs2_B1w_B1u_15get_all_aliases0EENCNvMs5_B1w_B1u_20all_subcommand_names0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_: argument 0"}
!10175 = distinct !{!10175, !"_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENCNvMs5_B1T_B1R_20all_subcommand_names0EINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceReEIB1c_IB1s_TNtNtB1V_3str3StrbEENCNvMs2_B1T_B1R_15get_all_aliases0EEENtNtNtB9_6traits8iterator8Iterator4nextB1X_"}
!10176 = distinct !{!10176, !10175, !"_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENCNvMs5_B1T_B1R_20all_subcommand_names0EINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceReEIB1c_IB1s_TNtNtB1V_3str3StrbEENCNvMs2_B1T_B1R_15get_all_aliases0EEENtNtNtB9_6traits8iterator8Iterator4nextB1X_: argument 0"}
!10177 = distinct !{!10177, !"_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENCNvMs5_B1G_B1E_20all_subcommand_names0EEINtB5_8FuseImplBY_E4nextB1K_"}
!10178 = distinct !{!10178, !10177, !"_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENCNvMs5_B1G_B1E_20all_subcommand_names0EEINtB5_8FuseImplBY_E4nextB1K_: argument 1:Peel0"}
!10179 = distinct !{!10179, !10177, !"_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENCNvMs5_B1G_B1E_20all_subcommand_names0EEINtB5_8FuseImplBY_E4nextB1K_: argument 0"}
!10180 = distinct !{!10180, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENCNvMs5_B1o_B1m_20all_subcommand_names0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_"}
!10181 = distinct !{!10181, !10180, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENCNvMs5_B1o_B1m_20all_subcommand_names0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_: argument 1:Peel0"}
!10182 = distinct !{!10182, !10180, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENCNvMs5_B1o_B1m_20all_subcommand_names0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_: argument 0"}
!10183 = distinct !{!10183, !10168, !"_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command20all_subcommand_names0Bb_: argument 0"}
!10184 = distinct !{!10184, !"_RNCNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB4_9Validator8validates_0B8_"}
!10185 = distinct !{!10185, !10184, !"_RNCNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB4_9Validator8validates_0B8_: argument 1"}
!10186 = distinct !{!10186, !10184, !"_RNCNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB4_9Validator8validates_0B8_: argument 0"}
!10187 = distinct !{!10187, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder"}
!10188 = distinct !{!10188, !10187, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder: argument 0"}
!10189 = distinct !{!10189, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder"}
!10190 = distinct !{!10190, !10189, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder: argument 0"}
!10191 = distinct !{!10191, !"_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1D_7flatten7FlatMapINtNtNtB1H_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEINtNtB1D_5chain5ChainINtNtNtB1F_7sources4once4OnceReEIB1z_IB2M_TNtNtB3g_3str3StrbEENCNvMs2_B3e_B3c_15get_all_aliases0EENCNvMs5_B3e_B3c_20all_subcommand_names0ENCNvMNtNtB3i_6parser9validatorNtB6N_9Validator8validates_0EE11spec_extendB3i_"}
!10192 = distinct !{!10192, !10191, !"_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1D_7flatten7FlatMapINtNtNtB1H_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEINtNtB1D_5chain5ChainINtNtNtB1F_7sources4once4OnceReEIB1z_IB2M_TNtNtB3g_3str3StrbEENCNvMs2_B3e_B3c_15get_all_aliases0EENCNvMs5_B3e_B3c_20all_subcommand_names0ENCNvMNtNtB3i_6parser9validatorNtB6N_9Validator8validates_0EE11spec_extendB3i_: argument 0"}
!10193 = distinct !{!10193, !"_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtB8_6string6StringE16extend_desugaredINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1p_7flatten7FlatMapINtNtNtB1t_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEINtNtB1p_5chain5ChainINtNtNtB1r_7sources4once4OnceReEIB1l_IB2y_TNtNtB32_3str3StrbEENCNvMs2_B30_B2Y_15get_all_aliases0EENCNvMs5_B30_B2Y_20all_subcommand_names0ENCNvMNtNtB34_6parser9validatorNtB6z_9Validator8validates_0EEB34_"}
!10194 = distinct !{!10194, !10193, !"_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtB8_6string6StringE16extend_desugaredINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1p_7flatten7FlatMapINtNtNtB1t_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEINtNtB1p_5chain5ChainINtNtNtB1r_7sources4once4OnceReEIB1l_IB2y_TNtNtB32_3str3StrbEENCNvMs2_B30_B2Y_15get_all_aliases0EENCNvMs5_B30_B2Y_20all_subcommand_names0ENCNvMNtNtB34_6parser9validatorNtB6z_9Validator8validates_0EEB34_: argument 0"}
!10195 = distinct !{!10195, !"_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command20all_subcommand_names0Bb_"}
!10196 = distinct !{!10196, !10195, !"_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command20all_subcommand_names0Bb_: argument 1"}
!10197 = distinct !{!10197, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceReEIBN_IB1l_TNtNtB1O_3str3StrbEENCNvMs2_B1M_B1K_15get_all_aliases0EENCNvMs5_B1M_B1K_20all_subcommand_names0ENCNvMNtNtB1Q_6parser9validatorNtB5i_9Validator8validates_0ENtNtNtB9_6traits8iterator8Iterator4nextB1Q_"}
!10198 = distinct !{!10198, !10197, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceReEIBN_IB1l_TNtNtB1O_3str3StrbEENCNvMs2_B1M_B1K_15get_all_aliases0EENCNvMs5_B1M_B1K_20all_subcommand_names0ENCNvMNtNtB1Q_6parser9validatorNtB5i_9Validator8validates_0ENtNtNtB9_6traits8iterator8Iterator4nextB1Q_: argument 1"}
!10199 = distinct !{!10199, !10197, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceReEIBN_IB1l_TNtNtB1O_3str3StrbEENCNvMs2_B1M_B1K_15get_all_aliases0EENCNvMs5_B1M_B1K_20all_subcommand_names0ENCNvMNtNtB1Q_6parser9validatorNtB5i_9Validator8validates_0ENtNtNtB9_6traits8iterator8Iterator4nextB1Q_: argument 0"}
!10200 = distinct !{!10200, !"_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceReEINtNtB7_3map3MapIB15_TNtNtB1y_3str3StrbEENCNvMs2_B1w_B1u_15get_all_aliases0EENCNvMs5_B1w_B1u_20all_subcommand_names0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_"}
!10201 = distinct !{!10201, !10200, !"_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceReEINtNtB7_3map3MapIB15_TNtNtB1y_3str3StrbEENCNvMs2_B1w_B1u_15get_all_aliases0EENCNvMs5_B1w_B1u_20all_subcommand_names0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_: argument 0"}
!10202 = distinct !{!10202, !"_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENCNvMs5_B1T_B1R_20all_subcommand_names0EINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceReEIB1c_IB1s_TNtNtB1V_3str3StrbEENCNvMs2_B1T_B1R_15get_all_aliases0EEENtNtNtB9_6traits8iterator8Iterator4nextB1X_"}
!10203 = distinct !{!10203, !10202, !"_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENCNvMs5_B1T_B1R_20all_subcommand_names0EINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceReEIB1c_IB1s_TNtNtB1V_3str3StrbEENCNvMs2_B1T_B1R_15get_all_aliases0EEENtNtNtB9_6traits8iterator8Iterator4nextB1X_: argument 0"}
!10204 = distinct !{!10204, !"_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENCNvMs5_B1G_B1E_20all_subcommand_names0EEINtB5_8FuseImplBY_E4nextB1K_"}
!10205 = distinct !{!10205, !10204, !"_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENCNvMs5_B1G_B1E_20all_subcommand_names0EEINtB5_8FuseImplBY_E4nextB1K_: argument 1:Peel0"}
!10206 = distinct !{!10206, !10204, !"_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENCNvMs5_B1G_B1E_20all_subcommand_names0EEINtB5_8FuseImplBY_E4nextB1K_: argument 0"}
!10207 = distinct !{!10207, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENCNvMs5_B1o_B1m_20all_subcommand_names0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_"}
!10208 = distinct !{!10208, !10207, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENCNvMs5_B1o_B1m_20all_subcommand_names0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_: argument 1:Peel0"}
!10209 = distinct !{!10209, !10207, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENCNvMs5_B1o_B1m_20all_subcommand_names0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_: argument 0"}
!10210 = distinct !{!10210, !10195, !"_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command20all_subcommand_names0Bb_: argument 0"}
!10211 = distinct !{!10211, !"_RNCNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB4_9Validator8validates_0B8_"}
!10212 = distinct !{!10212, !10211, !"_RNCNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB4_9Validator8validates_0B8_: argument 1"}
!10213 = distinct !{!10213, !10211, !"_RNCNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB4_9Validator8validates_0B8_: argument 0"}
!10214 = distinct !{!10214, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder"}
!10215 = distinct !{!10215, !10214, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder: argument 0"}
!10216 = distinct !{!10216, !10191, !"_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1D_7flatten7FlatMapINtNtNtB1H_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEINtNtB1D_5chain5ChainINtNtNtB1F_7sources4once4OnceReEIB1z_IB2M_TNtNtB3g_3str3StrbEENCNvMs2_B3e_B3c_15get_all_aliases0EENCNvMs5_B3e_B3c_20all_subcommand_names0ENCNvMNtNtB3i_6parser9validatorNtB6N_9Validator8validates_0EE11spec_extendB3i_: argument 1"}
!10217 = distinct !{!10217, !10193, !"_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtB8_6string6StringE16extend_desugaredINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1p_7flatten7FlatMapINtNtNtB1t_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEINtNtB1p_5chain5ChainINtNtNtB1r_7sources4once4OnceReEIB1l_IB2y_TNtNtB32_3str3StrbEENCNvMs2_B30_B2Y_15get_all_aliases0EENCNvMs5_B30_B2Y_20all_subcommand_names0ENCNvMNtNtB34_6parser9validatorNtB6z_9Validator8validates_0EEB34_: argument 1"}
!10218 = distinct !{!10218, !"_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command20all_subcommand_names0Bb_"}
!10219 = distinct !{!10219, !10218, !"_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command20all_subcommand_names0Bb_: argument 1"}
!10220 = distinct !{!10220, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceReEIBN_IB1l_TNtNtB1O_3str3StrbEENCNvMs2_B1M_B1K_15get_all_aliases0EENCNvMs5_B1M_B1K_20all_subcommand_names0ENCNvMNtNtB1Q_6parser9validatorNtB5i_9Validator8validates_0ENtNtNtB9_6traits8iterator8Iterator4nextB1Q_"}
!10221 = distinct !{!10221, !10220, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceReEIBN_IB1l_TNtNtB1O_3str3StrbEENCNvMs2_B1M_B1K_15get_all_aliases0EENCNvMs5_B1M_B1K_20all_subcommand_names0ENCNvMNtNtB1Q_6parser9validatorNtB5i_9Validator8validates_0ENtNtNtB9_6traits8iterator8Iterator4nextB1Q_: argument 1"}
!10222 = distinct !{!10222, !10220, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceReEIBN_IB1l_TNtNtB1O_3str3StrbEENCNvMs2_B1M_B1K_15get_all_aliases0EENCNvMs5_B1M_B1K_20all_subcommand_names0ENCNvMNtNtB1Q_6parser9validatorNtB5i_9Validator8validates_0ENtNtNtB9_6traits8iterator8Iterator4nextB1Q_: argument 0"}
!10223 = distinct !{!10223, !"_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceReEINtNtB7_3map3MapIB15_TNtNtB1y_3str3StrbEENCNvMs2_B1w_B1u_15get_all_aliases0EENCNvMs5_B1w_B1u_20all_subcommand_names0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_"}
!10224 = distinct !{!10224, !10223, !"_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceReEINtNtB7_3map3MapIB15_TNtNtB1y_3str3StrbEENCNvMs2_B1w_B1u_15get_all_aliases0EENCNvMs5_B1w_B1u_20all_subcommand_names0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_: argument 0"}
!10225 = distinct !{!10225, !"_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENCNvMs5_B1T_B1R_20all_subcommand_names0EINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceReEIB1c_IB1s_TNtNtB1V_3str3StrbEENCNvMs2_B1T_B1R_15get_all_aliases0EEENtNtNtB9_6traits8iterator8Iterator4nextB1X_"}
!10226 = distinct !{!10226, !10225, !"_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENCNvMs5_B1T_B1R_20all_subcommand_names0EINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceReEIB1c_IB1s_TNtNtB1V_3str3StrbEENCNvMs2_B1T_B1R_15get_all_aliases0EEENtNtNtB9_6traits8iterator8Iterator4nextB1X_: argument 0"}
!10227 = distinct !{!10227, !"_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENCNvMs5_B1G_B1E_20all_subcommand_names0EEINtB5_8FuseImplBY_E4nextB1K_"}
!10228 = distinct !{!10228, !10227, !"_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENCNvMs5_B1G_B1E_20all_subcommand_names0EEINtB5_8FuseImplBY_E4nextB1K_: argument 1:Peel0"}
!10229 = distinct !{!10229, !10227, !"_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENCNvMs5_B1G_B1E_20all_subcommand_names0EEINtB5_8FuseImplBY_E4nextB1K_: argument 0"}
!10230 = distinct !{!10230, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENCNvMs5_B1o_B1m_20all_subcommand_names0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_"}
!10231 = distinct !{!10231, !10230, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENCNvMs5_B1o_B1m_20all_subcommand_names0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_: argument 1:Peel0"}
!10232 = distinct !{!10232, !10230, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENCNvMs5_B1o_B1m_20all_subcommand_names0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_: argument 0"}
!10233 = distinct !{!10233, !10218, !"_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command20all_subcommand_names0Bb_: argument 0"}
!10234 = distinct !{!10234, !"_RNCNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB4_9Validator8validates_0B8_"}
!10235 = distinct !{!10235, !10234, !"_RNCNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB4_9Validator8validates_0B8_: argument 1"}
!10236 = distinct !{!10236, !10234, !"_RNCNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB4_9Validator8validates_0B8_: argument 0"}
!10237 = distinct !{!10237, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder"}
!10238 = distinct !{!10238, !10237, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder: argument 0"}
!10239 = distinct !{!10239, !"_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new"}
!10240 = distinct !{!10240, !10239, !"_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new: argument 1"}
!10241 = distinct !{!10241, !"_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesEB7_"}
!10242 = distinct !{!10242, !10241, !"_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesEB7_: argument 0"}
!10243 = distinct !{!10243, !"_RINvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_9any_value10AnyValueIdNtB13_8AnyValueE3getB11_EB7_"}
!10244 = distinct !{!10244, !10243, !"_RINvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_9any_value10AnyValueIdNtB13_8AnyValueE3getB11_EB7_: argument 0"}
!10245 = distinct !{!10245, !10239, !"_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new: argument 0"}
!10246 = distinct !{null, ptr @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new, null, null}
!10247 = distinct !{!10247, !"_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage8required"}
!10248 = distinct !{!10248, !10247, !"_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage8required: argument 1"}
!10249 = distinct !{!10249, !10247, !"_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage8required: argument 0"}
!10250 = distinct !{!10250, !10247, !"_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage8required: argument 2"}
!10251 = distinct !{!10251, !"_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage23create_usage_with_title"}
!10252 = distinct !{!10252, !10251, !"_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage23create_usage_with_title: argument 2"}
!10253 = distinct !{!10253, !10251, !"_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage23create_usage_with_title: argument 1"}
!10254 = distinct !{!10254, !10251, !"_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage23create_usage_with_title: argument 0"}
!10255 = distinct !{!10255, !"_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr3new"}
!10256 = distinct !{!10256, !10255, !"_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr3new: argument 0"}
!10257 = distinct !{!10257, !"_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error18missing_subcommandB4_"}
!10258 = distinct !{!10258, !10257, !"_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error18missing_subcommandB4_: argument 3"}
!10259 = distinct !{!10259, !10257, !"_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error18missing_subcommandB4_: argument 2"}
!10260 = distinct !{!10260, !10257, !"_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error18missing_subcommandB4_: argument 1"}
!10261 = distinct !{!10261, !10257, !"_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error18missing_subcommandB4_: argument 0"}
!10262 = distinct !{!10262, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtCsfu0rQaTkGUu_12clap_builder5error10ErrorInnerE3newBI_"}
!10263 = distinct !{!10263, !10262, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtCsfu0rQaTkGUu_12clap_builder5error10ErrorInnerE3newBI_: argument 0"}
!10264 = distinct !{!10264, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator9ConflictsEBH_"}
!10265 = distinct !{!10265, !10264, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator9ConflictsEBH_: argument 0"}
!10266 = distinct !{!10266, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map7FlatMapNtNtBG_2id2IdINtNtCs4wP2HXfJTCR_5alloc3vec3VecB1w_EEEBI_"}
!10267 = distinct !{!10267, !10266, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map7FlatMapNtNtBG_2id2IdINtNtCs4wP2HXfJTCR_5alloc3vec3VecB1w_EEEBI_: argument 0"}
!10268 = distinct !{!10268, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_"}
!10269 = distinct !{!10269, !10268, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_: argument 0"}
!10270 = distinct !{!10270, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEEB1i_"}
!10271 = distinct !{!10271, !10270, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEEB1i_: argument 0"}
!10272 = distinct !{!10272, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1f_"}
!10273 = distinct !{!10273, !10272, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1f_: argument 0"}
!10274 = distinct !{!10274, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_"}
!10275 = distinct !{!10275, !10274, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_: argument 0"}
!10276 = distinct !{!10276, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator9ValidatorEBH_"}
!10277 = distinct !{!10277, !10276, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator9ValidatorEBH_: argument 0"}
!10278 = distinct !{!10278, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph10ChildGraphNtNtBG_2id2IdEEBI_"}
!10279 = distinct !{!10279, !10278, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph10ChildGraphNtNtBG_2id2IdEEBI_: argument 0"}
!10280 = distinct !{!10280, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtB1d_2id2IdEEEB1f_"}
!10281 = distinct !{!10281, !10280, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtB1d_2id2IdEEEB1f_: argument 0"}
!10282 = distinct !{!10282, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBH_2id2IdEEBJ_"}
!10283 = distinct !{!10283, !10282, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBH_2id2IdEEBJ_: argument 0"}
!10284 = !{!8590}
!10285 = !{!8591}
!10286 = !{!8592}
!10287 = !{!8590, !8591, !8592}
!10288 = !{!8591, !8592}
!10289 = !{!8594}
!10290 = !{!8598, !8590, !8591, !8592}
!10291 = !{!8590, !8591}
!10292 = !{!8600}
!10293 = !{!8600, !8590}
!10294 = !{!"branch_weights", i32 1947129650, i32 200353998}
!10295 = !{!8603, !8590}
!10296 = !{!8605, !8590}
!10297 = !{!8607}
!10298 = !{!8608}
!10299 = !{!8610}
!10300 = !{!8617, !8616, !8607, !8615, !8608, !8614, !8613, !8612, !8611}
!10301 = !{!8622, !8621, !8619, !8610, !8617, !8616, !8607, !8615, !8608, !8614, !8613, !8612, !8611}
!10302 = !{!8610, !8617, !8607, !8615, !8608, !8614, !8613, !8612, !8611}
!10303 = !{!8607, !8615, !8608, !8614, !8613, !8612, !8611}
!10304 = !{!8624}
!10305 = !{!8626, !8625, !8607, !8615, !8608, !8614, !8613, !8612, !8611}
!10306 = !{!8631, !8630, !8628, !8624, !8626, !8625, !8607, !8615, !8608, !8614, !8613, !8612, !8611}
!10307 = !{!8624, !8626, !8607, !8615, !8608, !8614, !8613, !8612, !8611}
!10308 = !{!8633}
!10309 = !{!8634, !8607, !8615, !8608, !8614, !8613, !8612, !8611}
!10310 = !{!8636}
!10311 = !{!8640, !8639, !8638, !8633, !8634, !8607, !8615, !8608, !8614, !8613, !8612, !8611}
!10312 = !{!8636, !8639, !8638, !8633, !8607, !8615, !8608, !8614, !8613, !8612, !8611}
!10313 = !{!8633, !8634, !8607, !8615, !8608, !8614, !8613, !8612, !8611}
!10314 = !{!8642}
!10315 = !{!8644}
!10316 = !{!8644, !8642}
!10317 = !{!8650, !8649, !8648, !8647, !8646, !8607, !8615, !8608, !8614, !8613, !8612, !8611}
!10318 = !{!8653, !8652}
!10319 = !{!8650, !8644, !8649, !8642, !8648, !8647, !8646, !8607, !8615, !8608, !8614, !8613, !8612, !8611}
!10320 = !{!8658, !8657, !8656, !8655, !8650, !8644, !8649, !8642, !8648, !8647, !8646, !8607, !8615, !8608, !8614, !8613, !8612, !8611}
!10321 = !{!8661, !8660}
!10322 = !{!8663, !8658, !8657, !8656, !8655, !8650, !8644, !8649, !8642, !8648, !8647, !8646, !8607, !8615, !8608, !8614, !8613, !8612, !8611}
!10323 = !{!8664, !8658, !8657, !8656, !8655, !8650, !8644, !8649, !8642, !8648, !8647, !8646, !8607, !8615, !8608, !8614, !8613, !8612, !8611}
!10324 = !{!8667}
!10325 = !{!8669}
!10326 = !{!8669, !8667}
!10327 = !{!8681, !8680, !8679, !8678, !8677, !8675, !8673, !8672, !8671, !8607, !8615, !8608, !8614, !8613, !8612, !8611}
!10328 = !{!8684, !8683}
!10329 = !{!8681, !8669, !8680, !8667, !8679, !8678, !8677, !8675, !8673, !8672, !8671, !8607, !8615, !8608, !8614, !8613, !8612, !8611}
!10330 = !{!8689, !8688, !8687, !8686, !8681, !8669, !8680, !8667, !8679, !8678, !8677, !8675, !8673, !8672, !8671, !8607, !8615, !8608, !8614, !8613, !8612, !8611}
!10331 = !{!8692, !8691}
!10332 = !{!8694, !8689, !8688, !8687, !8686, !8681, !8669, !8680, !8667, !8679, !8678, !8677, !8675, !8673, !8672, !8671, !8607, !8615, !8608, !8614, !8613, !8612, !8611}
!10333 = !{!8695, !8689, !8688, !8687, !8686, !8681, !8669, !8680, !8667, !8679, !8678, !8677, !8675, !8673, !8672, !8671, !8607, !8615, !8608, !8614, !8613, !8612, !8611}
!10334 = !{!8697, !8607, !8615, !8608, !8614, !8613, !8612, !8611}
!10335 = !{!8699}
!10336 = !{!8705, !8704, !8703, !8701, !8697, !8607, !8615, !8608, !8614, !8613, !8612, !8611}
!10337 = !{!8708, !8707, !8699, !8705, !8704, !8703, !8701, !8697, !8607, !8615, !8608, !8614, !8613, !8612, !8611}
!10338 = !{!8708, !8707, !8699, !8704, !8607, !8615, !8608, !8614, !8613, !8612, !8611}
!10339 = !{!8699, !8704, !8607, !8615, !8608, !8614, !8613, !8612, !8611}
!10340 = !{!8711, !8710, !8699, !8705, !8704, !8703, !8701, !8697, !8607, !8615, !8608, !8614, !8613, !8612, !8611}
!10341 = !{!8711, !8710, !8699, !8704, !8607, !8615, !8608, !8614, !8613, !8612, !8611}
!10342 = !{!8701, !8697, !8607, !8615, !8608, !8614, !8613, !8612, !8611}
!10343 = !{!8713}
!10344 = !{!8715}
!10345 = !{!8715, !8713}
!10346 = !{!8718, !8717, !8697, !8607, !8615, !8608, !8614, !8613, !8612, !8611}
!10347 = !{!8720}
!10348 = !{!8723, !8722}
!10349 = !{!8724, !8720, !8715, !8713, !8718, !8717, !8607, !8615, !8608, !8614, !8613, !8612, !8611}
!10350 = !{!8720, !8715, !8713}
!10351 = !{!8724, !8725, !8718, !8717, !8697, !8607, !8615, !8608, !8614, !8613, !8612, !8611}
!10352 = !{!8727, !8724, !8720, !8725, !8715, !8713, !8718, !8717, !8697, !8607, !8615, !8608, !8614, !8613, !8612, !8611}
!10353 = !{!8730, !8729}
!10354 = !{!8727, !8724, !8720, !8725, !8715, !8713, !8718, !8717, !8607, !8615, !8608, !8614, !8613, !8612, !8611}
!10355 = !{!8732}
!10356 = !{!8734}
!10357 = !{!8734, !8732}
!10358 = !{!8737, !8736, !8697, !8607, !8615, !8608, !8614, !8613, !8612, !8611}
!10359 = !{!8739}
!10360 = !{!8742, !8741}
!10361 = !{!8743, !8739, !8734, !8732, !8737, !8736, !8607, !8615, !8608, !8614, !8613, !8612, !8611}
!10362 = !{!8739, !8734, !8732}
!10363 = !{!8743, !8744, !8737, !8736, !8697, !8607, !8615, !8608, !8614, !8613, !8612, !8611}
!10364 = !{!8746, !8743, !8739, !8744, !8734, !8732, !8737, !8736, !8697, !8607, !8615, !8608, !8614, !8613, !8612, !8611}
!10365 = !{!8749, !8748}
!10366 = !{!8746, !8743, !8739, !8744, !8734, !8732, !8737, !8736, !8607, !8615, !8608, !8614, !8613, !8612, !8611}
!10367 = !{!8614, !8612, !8611}
!10368 = !{!8607, !8615, !8614, !8613, !8612, !8611}
!10369 = !{!8751, !8607, !8615, !8614, !8613, !8612, !8611}
!10370 = !{!8754, !8751, !8752, !8607, !8615, !8614, !8613, !8612, !8611}
!10371 = !{!8751, !8752, !8607, !8615, !8614, !8613, !8612, !8611}
!10372 = !{!8751, !8752, !8607, !8615, !8608, !8614, !8613, !8612, !8611}
!10373 = !{!8751, !8607, !8615, !8608, !8614, !8613, !8612, !8611}
!10374 = !{!8758, !8756, !8751, !8752, !8607, !8615, !8614, !8613, !8612, !8611}
!10375 = !{!8758, !8760, !8756, !8759, !8751, !8752, !8607, !8615, !8614, !8613, !8612, !8611}
!10376 = !{!8763, !8762, !8607, !8615, !8614, !8613, !8612, !8611}
!10377 = !{!8763, !8607, !8615, !8614, !8613, !8612, !8611}
!10378 = !{!8607, !8615, !8614, !8612, !8611}
!10379 = !{!8614, !8613, !8612, !8611}
!10380 = !{!8765, !8607, !8615, !8614, !8612, !8611}
!10381 = !{!8768, !8767, !8607, !8615, !8608, !8614, !8613, !8612, !8611}
!10382 = !{!8768, !8607, !8615, !8614, !8612, !8611}
!10383 = !{!8768, !8767, !8607, !8615, !8614, !8612, !8611}
!10384 = !{!8615, !8608, !8614, !8613, !8612, !8611}
!10385 = !{!8770}
!10386 = !{!8772}
!10387 = !{!8772, !8770}
!10388 = !{!8774}
!10389 = !{!8772, !8770, !8607, !8615, !8614, !8612, !8611}
!10390 = !{!8774, !8772, !8770, !8607, !8615, !8614, !8612, !8611}
!10391 = !{!8776, !8607, !8615, !8608, !8614, !8613, !8612, !8611}
!10392 = !{!8778}
!10393 = !{!8782, !8781, !8778, !8779, !8607, !8615, !8608, !8614, !8613, !8612, !8611}
!10394 = !{!8778, !8779, !8607, !8615, !8608, !8614, !8613, !8612, !8611}
!10395 = !{!8779, !8607, !8615, !8608, !8614, !8613, !8612, !8611}
!10396 = !{!8784, !8607, !8615, !8608, !8614, !8613, !8612, !8611}
!10397 = !{!8786, !8607, !8615, !8608, !8614, !8613, !8612, !8611}
!10398 = !{!"branch_weights", i32 214748365, i32 214748365, i32 214748365, i32 214748365, i32 214748365, i32 214748365, i32 214748365, i32 214748365, i32 214748365, i32 214748365}
!10399 = !{!8788, !8590}
!10400 = !{!8790}
!10401 = !{!8791}
!10402 = !{!8793}
!10403 = !{!8795}
!10404 = !{!8795, !8793, !8791}
!10405 = !{!8790, !8590}
!10406 = !{!8795, !8793, !8790, !8791, !8590}
!10407 = !{!8793, !8790, !8791, !8590}
!10408 = !{!8791, !8590}
!10409 = !{!8800, !8799, !8798, !8590}
!10410 = !{!8802}
!10411 = !{!8800, !8799, !8590}
!10412 = !{!8799, !8798, !8590}
!10413 = !{!8805, !8590}
!10414 = !{!8807}
!10415 = !{!8808}
!10416 = !{!8810}
!10417 = !{!8812}
!10418 = !{!8812, !8810, !8808}
!10419 = !{!8807, !8590}
!10420 = !{!8812, !8810, !8807, !8808, !8590}
!10421 = !{!8810, !8807, !8808, !8590}
!10422 = !{!8808, !8590}
!10423 = !{!8816, !8815, !8814, !8590}
!10424 = !{!8818}
!10425 = !{!8816, !8815, !8590}
!10426 = !{!8815, !8814, !8590}
!10427 = !{!8822, !8820, !8590}
!10428 = !{!8820, !8590}
!10429 = !{!8832, !8830, !8828, !8826, !8824, !8820, !8590}
!10430 = !{!8840, !8839, !8837, !8836, !8834, !8832, !8830, !8828, !8826, !8824, !8820, !8590}
!10431 = !{!8840, !8837, !8834, !8832, !8830, !8828, !8826, !8824, !8820, !8590}
!10432 = !{!8842}
!10433 = !{!8843}
!10434 = !{!8842, !8845, !8843, !8844}
!10435 = !{!8845, !8843, !8844}
!10436 = !{!8842, !8843, !8844}
!10437 = !{!8847, !8842, !8845, !8843, !8844}
!10438 = !{!8849}
!10439 = !{!8851}
!10440 = !{!8853}
!10441 = !{!8855}
!10442 = !{!8855, !8853, !8851, !8849}
!10443 = !{!8871, !8870, !8869, !8868, !8867, !8866, !8864, !8863, !8861, !8860, !8858, !8857, !8847, !8842}
!10444 = !{!8871, !8855, !8870, !8853, !8869, !8851, !8868, !8849, !8867, !8866, !8864, !8863, !8861, !8860, !8858, !8857, !8847, !8842, !8845, !8843, !8844}
!10445 = !{!8871, !8855, !8870, !8853, !8869, !8851, !8868, !8849, !8867, !8866, !8864, !8863, !8861, !8860, !8858, !8857, !8847, !8842}
!10446 = !{!8873, !8871, !8855, !8870, !8853, !8869, !8851, !8868, !8849, !8867, !8866, !8864, !8863, !8861, !8860, !8858, !8857, !8847, !8842}
!10447 = !{!8875, !8847, !8842}
!10448 = !{!8847, !8842}
!10449 = !{!8877}
!10450 = !{!8879}
!10451 = !{!8881}
!10452 = !{!8883}
!10453 = !{!8885}
!10454 = !{!8887}
!10455 = !{!8887, !8885, !8883, !8881}
!10456 = !{!8903, !8902, !8901, !8900, !8899, !8898, !8896, !8895, !8893, !8892, !8890, !8889, !8879, !8877, !8847, !8842}
!10457 = !{!8903, !8887, !8902, !8885, !8901, !8883, !8900, !8881, !8899, !8898, !8896, !8895, !8893, !8892, !8890, !8889, !8879, !8877, !8847, !8842, !8845, !8843, !8844}
!10458 = !{!8903, !8887, !8902, !8885, !8901, !8883, !8900, !8881, !8899, !8898, !8896, !8895, !8893, !8892, !8890, !8889, !8879, !8877, !8847, !8842}
!10459 = !{!8905, !8903, !8887, !8902, !8885, !8901, !8883, !8900, !8881, !8899, !8898, !8896, !8895, !8893, !8892, !8890, !8889, !8879, !8877, !8847, !8842}
!10460 = !{!8879, !8877}
!10461 = !{!8879, !8877, !8847, !8842}
!10462 = !{!8912, !8911, !8909, !8908, !8907, !8842, !8845, !8843, !8844}
!10463 = !{!8914, !8912, !8911, !8909, !8908, !8907, !8842}
!10464 = !{!8912, !8909, !8907, !8842}
!10465 = !{!8926, !8924, !8922, !8920, !8919, !8917, !8916, !8912, !8909, !8907, !8842}
!10466 = !{!8920, !8919, !8917, !8916, !8912, !8909, !8907, !8842}
!10467 = !{!8929, !8912, !8909, !8907, !8842}
!10468 = !{!8931}
!10469 = !{!8932, !8912, !8909, !8907, !8842}
!10470 = !{!8934}
!10471 = !{!8935, !8912, !8911, !8909, !8908, !8907, !8842, !8845, !8843, !8844}
!10472 = !{!8935, !8912, !8909, !8907, !8842}
!10473 = !{!8934, !8935, !8912, !8909, !8907, !8842}
!10474 = !{!8934, !8912, !8909, !8907, !8842}
!10475 = !{!8938, !8937, !8909, !8908, !8907, !8842, !8845, !8843, !8844}
!10476 = !{!8941, !8940}
!10477 = !{!8938, !8909, !8908, !8907, !8842, !8845, !8843, !8844}
!10478 = !{!8943}
!10479 = !{!8945}
!10480 = !{!8947, !8945, !8946, !8943, !8938, !8937, !8909, !8908, !8907, !8842, !8845, !8843, !8844}
!10481 = !{!8949}
!10482 = !{!8949, !8947, !8946, !8938, !8937, !8909, !8842}
!10483 = !{!8949, !8951, !8945, !8943}
!10484 = !{!8954, !8953, !8952, !8947, !8946, !8938, !8937, !8909, !8908, !8907, !8842, !8845, !8843, !8844}
!10485 = !{!8946, !8943, !8938, !8937, !8909, !8908, !8907, !8842, !8845, !8843, !8844}
!10486 = !{!8946, !8938, !8937, !8909, !8908, !8907, !8842, !8845, !8843, !8844}
!10487 = !{!8956}
!10488 = !{!8958}
!10489 = !{!8958, !8956}
!10490 = !{!8962, !8961, !8960, !8959, !8946, !8943, !8938, !8937, !8909, !8908, !8907, !8842, !8845, !8843, !8844}
!10491 = !{!8966, !8965, !8964, !8962, !8958, !8961, !8960, !8956, !8959, !8946, !8943, !8938, !8937, !8909, !8908, !8907, !8842, !8845, !8843, !8844}
!10492 = !{!8962, !8961, !8960, !8959, !8946, !8943, !8938, !8937, !8909, !8842}
!10493 = !{!8971, !8970, !8969, !8968, !8966, !8965, !8964, !8962, !8958, !8961, !8960, !8956, !8959, !8946, !8943, !8938, !8937, !8909, !8908, !8907, !8842, !8845, !8843, !8844}
!10494 = !{!8975, !8974, !8973, !8971, !8970, !8969, !8968, !8966, !8965, !8964, !8962, !8958, !8961, !8960, !8956, !8959, !8946, !8943, !8938, !8937, !8909, !8908, !8907, !8842, !8845, !8843, !8844}
end_hunk_4
