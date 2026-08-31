Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_arrow-40563aeb3a74498c.polars_arrow.5e84758b183e9a03-cgu.11?download=true
inline.NumInlined: 1916
inline.NumDeleted: 590
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RINvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB6_13SharedStoragexE21from_slice_with_ownerNtNtNtCs8774dFTUdNv_12polars_arrow3ffi5array18InternalArrowArrayEB1z_:bb.a
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow3ffi5array18InternalArrowArrayEBM_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #33
          to label %common.resume unwind label %bb.d, !dbg !1144

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !1145
  unreachable, !dbg !1145

common.resume:                                    ; preds = %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.o, %bb.f ]
  resume { ptr, i32 } %common.resume.op, !dbg !1146

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow3ffi5array18InternalArrowArrayE3newBK_.exit: ; preds = %bb.a
  %i.h = shl nuw nsw i64 %1, 3, !dbg !1147
  store ptr %2, ptr %i.d, align 8, !dbg !1149
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !1149
  store ptr %3, ptr %i.i, align 8, !dbg !1149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1150
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !1151
  store i64 1, ptr %i.j, align 8, !dbg !1151
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !1151
  store ptr %0, ptr %i.k, align 8, !dbg !1151
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !1151
  store i64 %i.h, ptr %i.l, align 8, !dbg !1151
  store i64 1, ptr %i.b, align 8, !dbg !1151
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !1151
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !1151
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !1151
  store ptr @8, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !1151
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !dbg !1152, !noalias !1161
  %i.m = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 161) 48, i64 noundef 8) #36, !dbg !1164, !noalias !1161 ; 3 uses
  %i.n = icmp eq ptr %i.m, null, !dbg !1165
  br i1 %i.n, label %bb.e, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInnerxEE3newCs8774dFTUdNv_12polars_arrow.exit, !dbg !1166, !prof !455

bb.e:                                             ; preds = %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow3ffi5array18InternalArrowArrayE3newBK_.exit
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #34
          to label %.noexc3 unwind label %bb.f, !dbg !1167

.noexc3:                                          ; preds = %bb.e
  unreachable, !dbg !1167

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInnerxEECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b) #33
          to label %common.resume unwind label %bb.g, !dbg !1168

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !1169
  unreachable, !dbg !1169

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInnerxEE3newCs8774dFTUdNv_12polars_arrow.exit: ; preds = %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow3ffi5array18InternalArrowArrayE3newBK_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !dbg !1170
  ret ptr %i.m, !dbg !1172
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB6_13SharedStorageyE21from_slice_with_ownerNtNtNtCs8774dFTUdNv_12polars_arrow3ffi5array18InternalArrowArrayEB1z_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noundef nonnull %2, ptr noundef nonnull %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1173 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %3, ptr %i.c, align 8
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !dbg !1174
  %i.d = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 161) 16, i64 noundef 8) #36, !dbg !1183 ; 4 uses
  %i.e = icmp eq ptr %i.d, null, !dbg !1184
  br i1 %i.e, label %bb.b, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow3ffi5array18InternalArrowArrayE3newBK_.exit, !dbg !1185, !prof !455

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #34
          to label %.noexc unwind label %bb.c, !dbg !1186

.noexc:                                           ; preds = %bb.b
  unreachable, !dbg !1186

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow3ffi5array18InternalArrowArrayEBM_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #33
          to label %common.resume unwind label %bb.d, !dbg !1187

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !1188
  unreachable, !dbg !1188

common.resume:                                    ; preds = %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.o, %bb.f ]
  resume { ptr, i32 } %common.resume.op, !dbg !1189

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow3ffi5array18InternalArrowArrayE3newBK_.exit: ; preds = %bb.a
  %i.h = shl nuw nsw i64 %1, 3, !dbg !1190
  store ptr %2, ptr %i.d, align 8, !dbg !1192
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !1192
  store ptr %3, ptr %i.i, align 8, !dbg !1192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1193
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !1194
  store i64 1, ptr %i.j, align 8, !dbg !1194
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !1194
  store ptr %0, ptr %i.k, align 8, !dbg !1194
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !1194
  store i64 %i.h, ptr %i.l, align 8, !dbg !1194
  store i64 1, ptr %i.b, align 8, !dbg !1194
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !1194
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !1194
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !1194
  store ptr @8, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !1194
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !dbg !1195, !noalias !1204
  %i.m = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 161) 48, i64 noundef 8) #36, !dbg !1207, !noalias !1204 ; 3 uses
  %i.n = icmp eq ptr %i.m, null, !dbg !1208
  br i1 %i.n, label %bb.e, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInneryEE3newCs8774dFTUdNv_12polars_arrow.exit, !dbg !1209, !prof !455

bb.e:                                             ; preds = %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow3ffi5array18InternalArrowArrayE3newBK_.exit
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #34
          to label %.noexc3 unwind label %bb.f, !dbg !1210

.noexc3:                                          ; preds = %bb.e
  unreachable, !dbg !1210

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInneryEECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b) #33
          to label %common.resume unwind label %bb.g, !dbg !1211

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !1212
  unreachable, !dbg !1212

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInneryEE3newCs8774dFTUdNv_12polars_arrow.exit: ; preds = %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow3ffi5array18InternalArrowArrayE3newBK_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !dbg !1213
  ret ptr %i.m, !dbg !1215
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB6_13MutableBitmap31from_trusted_len_iter_uncheckedINtNtNtNtCscgRAwXFJnXP_4core4iter7sources8repeat_n7RepeatNbEEBa_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, i64 %1, i8 noundef range(i8 1, 3) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !1216 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !1217
  store i64 0, ptr %i.c, align 8, !dbg !1218
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !1218 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8, !dbg !1218
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !1218 ; 8 uses
  store i64 0, ptr %i.e, align 8, !dbg !1218
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1221), !dbg !1224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1226
  %.not.i.i.i = icmp eq i8 %2, 2, !dbg !1226
  %.sroa.0.0.i.i.i = select i1 %.not.i.i.i, i64 0, i64 %1, !dbg !1241 ; 4 uses
  %i.f = lshr i64 %.sroa.0.0.i.i.i, 6, !dbg !1242 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1244, !noalias !1221
  %i.g = lshr i64 %.sroa.0.0.i.i.i, 3, !dbg !1247 ; 3 uses
  %i.h = and i64 %.sroa.0.0.i.i.i, 7, !dbg !1250  ; 2 uses
  %.not.i = icmp ne i64 %i.h, 0, !dbg !1252       ; 2 uses
  %i.i = zext i1 %.not.i to i64, !dbg !1252       ; 2 uses
  %storemerge.i = add nuw nsw i64 %i.g, %i.i, !dbg !1252 ; 2 uses
  store i64 %storemerge.i, ptr %i.b, align 8, !dbg !1254, !noalias !1221
  %i.j = shl nuw nsw i64 %i.f, 3, !dbg !1255
  %i.k = and i64 %i.g, 7, !dbg !1257              ; 3 uses
  %i.l = or disjoint i64 %i.j, %i.k, !dbg !1255   ; 2 uses
  %i.m = add nuw nsw i64 %i.l, %i.i, !dbg !1255
  store i64 %i.m, ptr %i.a, align 8, !dbg !1255, !noalias !1221
  %i.n = icmp eq i64 %i.g, %i.l, !dbg !1258
  br i1 %i.n, label %bb.c, label %bb.b, !dbg !1258, !prof !208

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #34
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !1261

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %storemerge.i)
          to label %.noexc1 unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !1264

.noexc1:                                          ; preds = %bb.c
  %.not67.i = icmp eq i64 %i.f, 0, !dbg !1265
  br i1 %.not67.i, label %.preheader46.i, label %.lr.ph.i, !dbg !1274

.preheader46.i:                                   ; preds = %.noexc2, %.noexc1
  %.sroa.0.0.lcssa.i = phi i64 [ %1, %.noexc1 ], [ %.sroa.0.5.i.7, %.noexc2 ]
  %.not68.i = icmp eq i64 %i.k, 0, !dbg !1275
  br i1 %.not68.i, label %._crit_edge.i, label %.lr.ph59.i, !dbg !1283

.lr.ph59.i:                                       ; preds = %.preheader46.i
  %.pre.i = load i64, ptr %i.e, align 8, !dbg !1284, !alias.scope !1289
  br label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter7sources8repeat_nINtB5_7RepeatNbENtNtNtB9_6traits8iterator8Iterator4nextCs8774dFTUdNv_12polars_arrow.exit34.i, !dbg !1283

.lr.ph.i:                                         ; preds = %.noexc1, %.noexc2
  %.sroa.020.049.i = phi i64 [ %i.p, %.noexc2 ], [ 0, %.noexc1 ]
  %.sroa.0.048.i = phi i64 [ %.sroa.0.5.i.7, %.noexc2 ], [ %1, %.noexc1 ] ; 15 uses
  %.sroa.15.047.i = phi i8 [ %.sroa.15.5.i.7, %.noexc2 ], [ %2, %.noexc1 ]
  %.not8.i.i.i = icmp ne i64 %.sroa.0.048.i, 1, !dbg !1292
  call void @llvm.assume(i1 %.not8.i.i.i), !dbg !1305
  %.not8.i.1.i.i = icmp ne i64 %.sroa.0.048.i, 2, !dbg !1292
  call void @llvm.assume(i1 %.not8.i.1.i.i), !dbg !1305
  %.not8.i.2.i.i = icmp ne i64 %.sroa.0.048.i, 3, !dbg !1292
  call void @llvm.assume(i1 %.not8.i.2.i.i), !dbg !1305
  %.not8.i.3.i.i = icmp ne i64 %.sroa.0.048.i, 4, !dbg !1292
  call void @llvm.assume(i1 %.not8.i.3.i.i), !dbg !1305
  %.not8.i.4.i.i = icmp ne i64 %.sroa.0.048.i, 5, !dbg !1292
  call void @llvm.assume(i1 %.not8.i.4.i.i), !dbg !1305
  %.not8.i.5.i.i = icmp ne i64 %.sroa.0.048.i, 6, !dbg !1292
  call void @llvm.assume(i1 %.not8.i.5.i.i), !dbg !1305
  %.not8.i.6.i.i = icmp ne i64 %.sroa.0.048.i, 7, !dbg !1292
  call void @llvm.assume(i1 %.not8.i.6.i.i), !dbg !1305
  %3 = and i64 %.sroa.0.048.i, -2, !dbg !1292
  %.not8.i.i.i.1 = icmp ne i64 %3, 8, !dbg !1292
  call void @llvm.assume(i1 %.not8.i.i.i.1), !dbg !1305
  %4 = and i64 %.sroa.0.048.i, -2, !dbg !1292
  %.not8.i.i.i.2 = icmp ne i64 %4, 16, !dbg !1292
  call void @llvm.assume(i1 %.not8.i.i.i.2), !dbg !1305
  %5 = and i64 %.sroa.0.048.i, -2, !dbg !1292
  %.not8.i.i.i.3 = icmp ne i64 %5, 24, !dbg !1292
  call void @llvm.assume(i1 %.not8.i.i.i.3), !dbg !1305
  %6 = and i64 %.sroa.0.048.i, -2, !dbg !1292
  %.not8.i.i.i.4 = icmp ne i64 %6, 32, !dbg !1292
  call void @llvm.assume(i1 %.not8.i.i.i.4), !dbg !1305
  %7 = and i64 %.sroa.0.048.i, -2, !dbg !1292
  %.not8.i.i.i.5 = icmp ne i64 %7, 40, !dbg !1292
  call void @llvm.assume(i1 %.not8.i.i.i.5), !dbg !1305
  %8 = and i64 %.sroa.0.048.i, -2, !dbg !1292
  %.not8.i.i.i.6 = icmp ne i64 %8, 48, !dbg !1292
  call void @llvm.assume(i1 %.not8.i.i.i.6), !dbg !1305
  %9 = and i64 %.sroa.0.048.i, -2, !dbg !1292
  %.not8.i.i.i.7 = icmp ne i64 %9, 56, !dbg !1292
  call void @llvm.assume(i1 %.not8.i.i.i.7), !dbg !1305
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 8)
          to label %.noexc2 unwind label %.loopexit.split-lp.loopexit, !dbg !1306

.noexc2:                                          ; preds = %.lr.ph.i
  %i.o = add i64 %.sroa.0.048.i, -64, !dbg !1314  ; 2 uses
  %.sroa.0.5.i.7 = call i64 @llvm.umax.i64(i64 %i.o, i64 1), !dbg !1305 ; 2 uses
  %.not8.i.7.i.i.7 = icmp eq i64 %i.o, 0, !dbg !1292
  %.sroa.15.5.i.7 = select i1 %.not8.i.7.i.i.7, i8 2, i8 %.sroa.15.047.i, !dbg !1305
  %i.p = add nuw nsw i64 %.sroa.020.049.i, 1, !dbg !1320 ; 2 uses
  %i.q = load i64, ptr %i.e, align 8, !dbg !1326, !alias.scope !1328, !noundef !11 ; 2 uses
  %i.r = icmp sgt i64 %i.q, -1, !dbg !1331
  call void @llvm.assume(i1 %i.r), !dbg !1332
  %i.s = load ptr, ptr %i.d, align 8, !dbg !1333, !alias.scope !1328, !nonnull !11, !noundef !11
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q, !dbg !1338
  store i64 -1, ptr %i.t, align 1, !dbg !1340
  %.pre.i.i = load i64, ptr %i.e, align 8, !dbg !1342, !alias.scope !1328
  %i.u = add i64 %.pre.i.i, 8, !dbg !1342
  store i64 %i.u, ptr %i.e, align 8, !dbg !1342, !alias.scope !1328
  %exitcond.not.i = icmp eq i64 %i.p, %i.f, !dbg !1265
  br i1 %exitcond.not.i, label %.preheader46.i, label %.lr.ph.i, !dbg !1274

._crit_edge.i:                                    ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs8774dFTUdNv_12polars_arrow.exit31.i, %.preheader46.i
  br i1 %.not.i, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter7sources8repeat_nINtB5_7RepeatNbENtNtNtB9_6traits8iterator8Iterator4nextCs8774dFTUdNv_12polars_arrow.exit.i, label %bb.g, !dbg !1343

_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter7sources8repeat_nINtB5_7RepeatNbENtNtNtB9_6traits8iterator8Iterator4nextCs8774dFTUdNv_12polars_arrow.exit34.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs8774dFTUdNv_12polars_arrow.exit31.i, %.lr.ph59.i
  %i.v = phi i64 [ %.pre.i, %.lr.ph59.i ], [ %i.ai, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs8774dFTUdNv_12polars_arrow.exit31.i ], !dbg !1284 ; 3 uses
  %.sroa.022.058.i = phi i64 [ 0, %.lr.ph59.i ], [ %i.x, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs8774dFTUdNv_12polars_arrow.exit31.i ]
  %.sroa.0.157.i = phi i64 [ %.sroa.0.0.lcssa.i, %.lr.ph59.i ], [ %spec.select45.7.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs8774dFTUdNv_12polars_arrow.exit31.i ]
  %i.w = add i64 %.sroa.0.157.i, -8, !dbg !1345
  %spec.select45.7.i = call i64 @llvm.umax.i64(i64 %i.w, i64 1), !dbg !1345
  %i.x = add nuw nsw i64 %.sroa.022.058.i, 1, !dbg !1354 ; 2 uses
  %i.y = load i64, ptr %i.c, align 8, !dbg !1360, !range !362, !alias.scope !1289, !noundef !11
  %i.z = icmp eq i64 %i.v, %i.y, !dbg !1363
  br i1 %i.z, label %bb.f, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs8774dFTUdNv_12polars_arrow.exit31.i, !dbg !1363

.fold.split:                                      ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter7sources8repeat_nINtB5_7RepeatNbENtNtNtB9_6traits8iterator8Iterator4nextCs8774dFTUdNv_12polars_arrow.exit.i
  br label %bb.d, !dbg !1364

.fold.split28:                                    ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter7sources8repeat_nINtB5_7RepeatNbENtNtNtB9_6traits8iterator8Iterator4nextCs8774dFTUdNv_12polars_arrow.exit.i
  br label %bb.d, !dbg !1364

.fold.split29:                                    ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter7sources8repeat_nINtB5_7RepeatNbENtNtNtB9_6traits8iterator8Iterator4nextCs8774dFTUdNv_12polars_arrow.exit.i
  br label %bb.d, !dbg !1364

.fold.split30:                                    ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter7sources8repeat_nINtB5_7RepeatNbENtNtNtB9_6traits8iterator8Iterator4nextCs8774dFTUdNv_12polars_arrow.exit.i
  br label %bb.d, !dbg !1364

.fold.split31:                                    ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter7sources8repeat_nINtB5_7RepeatNbENtNtNtB9_6traits8iterator8Iterator4nextCs8774dFTUdNv_12polars_arrow.exit.i
  br label %bb.d, !dbg !1364

bb.d:                                             ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter7sources8repeat_nINtB5_7RepeatNbENtNtNtB9_6traits8iterator8Iterator4nextCs8774dFTUdNv_12polars_arrow.exit.i, %.fold.split31, %.fold.split30, %.fold.split29, %.fold.split28, %.fold.split, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter7sources8repeat_nINtB5_7RepeatNbENtNtNtB9_6traits8iterator8Iterator4nextCs8774dFTUdNv_12polars_arrow.exit.i.6
  %.sroa.017.0.i.lcssa = phi i8 [ 1, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter7sources8repeat_nINtB5_7RepeatNbENtNtNtB9_6traits8iterator8Iterator4nextCs8774dFTUdNv_12polars_arrow.exit.i ], [ 127, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter7sources8repeat_nINtB5_7RepeatNbENtNtNtB9_6traits8iterator8Iterator4nextCs8774dFTUdNv_12polars_arrow.exit.i.6 ], [ 3, %.fold.split ], [ 7, %.fold.split28 ], [ 15, %.fold.split29 ], [ 31, %.fold.split30 ], [ 63, %.fold.split31 ], !dbg !1368
  %i.aa = load i64, ptr %i.e, align 8, !dbg !1364, !alias.scope !1374, !noundef !11 ; 3 uses
  %i.ab = load i64, ptr %i.c, align 8, !dbg !1377, !range !362, !alias.scope !1374, !noundef !11
  %i.ac = icmp eq i64 %i.aa, %i.ab, !dbg !1380
  br i1 %i.ac, label %bb.e, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs8774dFTUdNv_12polars_arrow.exit.i, !dbg !1380

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs8774dFTUdNv_12polars_arrow.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !1381

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs8774dFTUdNv_12polars_arrow.exit.i: ; preds = %bb.e, %bb.d
  %i.ad = load ptr, ptr %i.d, align 8, !dbg !1382, !alias.scope !1374, !nonnull !11, !noundef !11
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.aa, !dbg !1387
  store i8 %.sroa.017.0.i.lcssa, ptr %i.ae, align 1, !dbg !1389
  %i.af = add i64 %i.aa, 1, !dbg !1391
  store i64 %i.af, ptr %i.e, align 8, !dbg !1391, !alias.scope !1374
  br label %bb.g, !dbg !1392

_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter7sources8repeat_nINtB5_7RepeatNbENtNtNtB9_6traits8iterator8Iterator4nextCs8774dFTUdNv_12polars_arrow.exit.i: ; preds = %._crit_edge.i
  switch i64 %i.h, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter7sources8repeat_nINtB5_7RepeatNbENtNtNtB9_6traits8iterator8Iterator4nextCs8774dFTUdNv_12polars_arrow.exit.i.6 [
    i64 1, label %bb.d
    i64 2, label %.fold.split
    i64 3, label %.fold.split28
    i64 4, label %.fold.split29
    i64 5, label %.fold.split30
    i64 6, label %.fold.split31
  ], !dbg !1393

_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter7sources8repeat_nINtB5_7RepeatNbENtNtNtB9_6traits8iterator8Iterator4nextCs8774dFTUdNv_12polars_arrow.exit.i.6: ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter7sources8repeat_nINtB5_7RepeatNbENtNtNtB9_6traits8iterator8Iterator4nextCs8774dFTUdNv_12polars_arrow.exit.i
  br label %bb.d, !dbg !1393

bb.f:                                             ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter7sources8repeat_nINtB5_7RepeatNbENtNtNtB9_6traits8iterator8Iterator4nextCs8774dFTUdNv_12polars_arrow.exit34.i
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs8774dFTUdNv_12polars_arrow.exit31.i unwind label %.loopexit, !dbg !1398

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs8774dFTUdNv_12polars_arrow.exit31.i: ; preds = %bb.f, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter7sources8repeat_nINtB5_7RepeatNbENtNtNtB9_6traits8iterator8Iterator4nextCs8774dFTUdNv_12polars_arrow.exit34.i
  %i.ag = load ptr, ptr %i.d, align 8, !dbg !1399, !alias.scope !1289, !nonnull !11, !noundef !11
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.v, !dbg !1404
  store i8 -1, ptr %i.ah, align 1, !dbg !1406
  %i.ai = add i64 %i.v, 1, !dbg !1408             ; 2 uses
  store i64 %i.ai, ptr %i.e, align 8, !dbg !1408, !alias.scope !1289
  %exitcond70.not.i = icmp eq i64 %i.x, %i.k, !dbg !1275
  br i1 %exitcond70.not.i, label %._crit_edge.i, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter7sources8repeat_nINtB5_7RepeatNbENtNtNtB9_6traits8iterator8Iterator4nextCs8774dFTUdNv_12polars_arrow.exit34.i, !dbg !1283

.loopexit:                                        ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph.i
  %lpad.loopexit5 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.e, %bb.c, %bb.b
  %lpad.loopexit.split-lp6 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit5, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp6, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs8774dFTUdNv_12polars_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.c) #33
          to label %bb.i unwind label %bb.h, !dbg !1409

bb.g:                                             ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs8774dFTUdNv_12polars_arrow.exit.i, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1410, !noalias !1221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1411
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !1412
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !1414
  store i64 %.sroa.0.0.i.i.i, ptr %i.aj, align 8, !dbg !1414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1409
  ret void, !dbg !1415

bb.h:                                             ; preds = %.loopexit.split-lp
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !1416
  unreachable, !dbg !1416

bb.i:                                             ; preds = %.loopexit.split-lp
  resume { ptr, i32 } %lpad.phi, !dbg !1416
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs7_NtCsknLZRuU4977_13polars_buffer6bufferINtB6_6BufferNtNtCs2mZqlW55729_12polars_utils7float164pf16E13try_transmutehECs8774dFTUdNv_12polars_arrow(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1417 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !1421
  %i.b = load i64, ptr %i.a, align 8, !dbg !1421, !noundef !11 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !dbg !1423, !nonnull !11, !noundef !11 ; 4 uses
  %i.d = icmp slt i64 %i.b, 0, !dbg !1425
  br i1 %i.d, label %bb.d, label %bb.c, !dbg !1431, !prof !455

bb.b:                                             ; preds = %bb.d
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !1437
  %i.f = load ptr, ptr %i.e, align 8, !dbg !1437, !noundef !11
  %i.g = shl nuw i64 %i.b, 1, !dbg !1425
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1438
  store ptr %i.c, ptr %i.h, align 8, !dbg !1438
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1438
  store ptr %i.f, ptr %.sroa.44.0..sroa_idx, align 8, !dbg !1438
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !1438
  store i64 %i.g, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !1438
  store i64 0, ptr %0, align 8, !dbg !1438
  ret void, !dbg !1439

bb.d:                                             ; preds = %bb.a
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #34
          to label %bb.b unwind label %bb.e, !dbg !1440

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load i64, ptr %i.c, align 8, !dbg !1443, !range !1452, !noalias !1453, !noundef !11
  %i.k = icmp eq i64 %i.j, 3, !dbg !1456
  br i1 %i.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer7storage13SharedStoragehEECs8774dFTUdNv_12polars_arrow.exit, label %bb.f, !dbg !1456

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !1457
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8, !dbg !1471, !noalias !1453
  %i.n = icmp eq i64 %i.m, 1, !dbg !1474
  br i1 %i.n, label %bb.g, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer7storage13SharedStoragehEECs8774dFTUdNv_12polars_arrow.exit, !dbg !1474, !prof !455

bb.g:                                             ; preds = %bb.f
  fence acquire, !dbg !1475
  invoke fastcc void @_RNvMs9_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE9drop_slowCs8774dFTUdNv_12polars_arrow(ptr %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer7storage13SharedStoragehEECs8774dFTUdNv_12polars_arrow.exit unwind label %bb.h, !dbg !1478

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !1479
  unreachable, !dbg !1479

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer7storage13SharedStoragehEECs8774dFTUdNv_12polars_arrow.exit: ; preds = %bb.f, %bb.e, %bb.g
  resume { ptr, i32 } %i.i, !dbg !1479
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs7_NtCsknLZRuU4977_13polars_buffer6bufferINtB6_6BufferNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE13try_transmutehEB13_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1480 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !1481
  %i.b = load i64, ptr %i.a, align 8, !dbg !1481, !noundef !11 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !dbg !1483, !nonnull !11, !noundef !11 ; 4 uses
  %i.d = icmp ugt i64 %i.b, 1152921504606846975, !dbg !1485
  br i1 %i.d, label %bb.d, label %bb.c, !dbg !1491, !prof !455
end_hunk_0
