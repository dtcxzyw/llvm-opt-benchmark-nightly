Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_dtype-1a69546bcdb44d93.polars_dtype.5d47620fe5dcef62-cgu.00?download=true
inline.NumInlined: 390
inline.NumDeleted: 187
begin_hunk_0_@_RNvXsg_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt:bb.a
    i64 8, label %bb.j
    i64 9, label %bb.k
    i64 10, label %bb.l
    i64 11, label %bb.m
    i64 12, label %bb.n
    i64 13, label %bb.o
    i64 14, label %bb.p
    i64 15, label %bb.q
    i64 16, label %bb.r
    i64 17, label %bb.s
  ], !dbg !5256

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !5257
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5257
  store ptr %i.t, ptr %i.r, align 8, !dbg !5257
  %i.u = call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 14, ptr noundef nonnull %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @60), !dbg !5258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !5260
  br label %bb.t, !dbg !5260

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !5261
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5261
  store ptr %i.v, ptr %i.q, align 8, !dbg !5261
  %i.w = call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 14, ptr noundef nonnull %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @60), !dbg !5262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !5260
  br label %bb.t, !dbg !5260

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !5264
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5264
  store ptr %i.x, ptr %i.p, align 8, !dbg !5264
  %i.y = call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 12, ptr noundef nonnull %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @60), !dbg !5265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !5260
  br label %bb.t, !dbg !5260

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !5267
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5267
  store ptr %i.z, ptr %i.o, align 8, !dbg !5267
  %i.aa = call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 9, ptr noundef nonnull %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @60), !dbg !5268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !5260
  br label %bb.t, !dbg !5260

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !5270
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5270
  store ptr %i.ab, ptr %i.n, align 8, !dbg !5270
  %i.ac = call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 16, ptr noundef nonnull %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @60), !dbg !5271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !5260
  br label %bb.t, !dbg !5260

bb.g:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5273
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !5274
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5274
  store ptr %i.ae, ptr %i.m, align 8, !dbg !5274
  %i.af = call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 5, ptr noundef nonnull %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 3, ptr noundef nonnull %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @67), !dbg !5275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !5260
  br label %bb.t, !dbg !5260

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !5277
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5277
  store ptr %i.ag, ptr %i.l, align 8, !dbg !5277
  %i.ah = call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 6, ptr noundef nonnull %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @60), !dbg !5278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !5260
  br label %bb.t, !dbg !5260

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !5280
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5280
  store ptr %i.ai, ptr %i.k, align 8, !dbg !5280
  %i.aj = call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 11, ptr noundef nonnull %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @60), !dbg !5281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !5260
  br label %bb.t, !dbg !5260

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !5283
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5283
  store ptr %i.ak, ptr %i.j, align 8, !dbg !5283
  %i.al = call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 19, ptr noundef nonnull %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @60), !dbg !5284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !5260
  br label %bb.t, !dbg !5260

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !5286
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5286
  store ptr %i.am, ptr %i.i, align 8, !dbg !5286
  %i.an = call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 14, ptr noundef nonnull %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @60), !dbg !5287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !5260
  br label %bb.t, !dbg !5260

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !5289
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5289
  store ptr %i.ao, ptr %i.h, align 8, !dbg !5289
  %i.ap = call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 13, ptr noundef nonnull %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @60), !dbg !5290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !5260
  br label %bb.t, !dbg !5260

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !5292
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5292
  store ptr %i.aq, ptr %i.g, align 8, !dbg !5292
  %i.ar = call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @76, i64 noundef 12, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @60), !dbg !5293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !5260
  br label %bb.t, !dbg !5260

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !5295
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5295
  store ptr %i.as, ptr %i.f, align 8, !dbg !5295
  %i.at = call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 9, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @60), !dbg !5296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !5260
  br label %bb.t, !dbg !5260

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !5298
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5298
  store ptr %i.au, ptr %i.e, align 8, !dbg !5298
  %i.av = call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @78, i64 noundef 19, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @60), !dbg !5299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !5260
  br label %bb.t, !dbg !5260

bb.p:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !5301
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5301
  store ptr %i.aw, ptr %i.d, align 8, !dbg !5301
  %i.ax = call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 19, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @60), !dbg !5302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !5260
  br label %bb.t, !dbg !5260

bb.q:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5304
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !5305
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5305
  store ptr %i.az, ptr %i.c, align 8, !dbg !5305
  %i.ba = call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 7, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 5, ptr noundef nonnull %i.ay, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @80, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 3, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @60), !dbg !5306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !5260
  br label %bb.t, !dbg !5260

bb.r:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !5309
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5309
  store ptr %i.bc, ptr %i.b, align 8, !dbg !5309
  %i.bd = call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 11, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 5, ptr noundef nonnull %i.bb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @80, ptr noalias noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 4, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @60), !dbg !5310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !5260
  br label %bb.t, !dbg !5260

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5312
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5312
  store ptr %i.be, ptr %i.a, align 8, !dbg !5312
  %i.bf = call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 6, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @84), !dbg !5313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !5260
  br label %bb.t, !dbg !5260

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.u, %bb.b ], [ %i.w, %bb.c ], [ %i.y, %bb.d ], [ %i.aa, %bb.e ], [ %i.ac, %bb.f ], [ %i.af, %bb.g ], [ %i.ah, %bb.h ], [ %i.aj, %bb.i ], [ %i.al, %bb.j ], [ %i.an, %bb.k ], [ %i.ap, %bb.l ], [ %i.ar, %bb.m ], [ %i.at, %bb.n ], [ %i.av, %bb.o ], [ %i.ax, %bb.p ], [ %i.ba, %bb.q ], [ %i.bd, %bb.r ], [ %i.bf, %bb.s ]
  ret i1 %.sroa.0.0.in, !dbg !5315
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsp_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !5316 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 23, !dbg !5318
  %i.b = load i8, ptr %i.a, align 1, !dbg !5318, !range !36, !alias.scope !5327, !noundef !13 ; 2 uses
  %i.c = icmp ugt i8 %i.b, -41, !dbg !5330
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !5330

bb.b:                                             ; preds = %bb.a
  %i.d = add i8 %i.b, 64, !dbg !5331
  %i.e = tail call i8 @llvm.umin.i8(i8 %i.d, i8 24), !dbg !5333
  %.sroa.0.0.i.i = zext nneg i8 %i.e to i64, !dbg !5333
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, !dbg !5336

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !dbg !5337, !alias.scope !5327, !noundef !13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5338
  %i.h = load i64, ptr %i.g, align 8, !dbg !5338, !alias.scope !5327, !noundef !13
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, !dbg !5339

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit: ; preds = %bb.b, %bb.c
  %.sroa.01.0.i = phi i64 [ %i.h, %bb.c ], [ %.sroa.0.0.i.i, %bb.b ], !dbg !5340
  %.sroa.0.0.i = phi ptr [ %i.f, %bb.c ], [ %0, %bb.b ], !dbg !5341
  %i.i = tail call noundef zeroext i1 @_RNvXsh_NtCscgRAwXFJnXP_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.01.0.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !5342
  ret i1 %i.i, !dbg !5343
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef nonnull ptr @_RNvYNCNvNtCs80wj1cxFixi_12polars_dtype11categorical17GLOBAL_CATEGORIES0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_onceB8_() unnamed_addr #2 personality ptr @rust_eh_personality !dbg !5344 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [88 x i8], align 8                ; 13 uses
  %i.e = alloca [56 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 7 uses
  %i.h = alloca [56 x i8], align 8                ; 13 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !5345
  %i.j = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs80wj1cxFixi_12polars_dtype11categorical19CATEGORIES_REGISTRY, i64 48) acquire, align 8, !dbg !5349
  %i.k = icmp eq i32 %i.j, 0, !dbg !5358
  br i1 %i.k, label %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison5mutex5MutexINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtB2N_10CategoriesENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEE5force0EB2P_.exit.i, label %bb.b, !dbg !5358, !prof !699

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !5359
  store ptr @_RNvNtCs80wj1cxFixi_12polars_dtype11categorical19CATEGORIES_REGISTRY, ptr %i.b, align 8, !dbg !5360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5361
  store ptr %i.b, ptr %i.a, align 8, !dbg !5361
  call void @_RNvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtCs80wj1cxFixi_12polars_dtype11categorical19CATEGORIES_REGISTRY, i64 48), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2), !dbg !5362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !5363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !5364
  br label %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison5mutex5MutexINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtB2N_10CategoriesENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEE5force0EB2P_.exit.i, !dbg !5364

_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison5mutex5MutexINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtB2N_10CategoriesENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEE5force0EB2P_.exit.i: ; preds = %bb.b, %bb.a
  call void @_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtB1E_10CategoriesENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE4lockB1G_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull align 8 @_RNvNtCs80wj1cxFixi_12polars_dtype11categorical19CATEGORIES_REGISTRY), !dbg !5365
  call void @llvm.experimental.noalias.scope.decl(metadata !5366), !dbg !5369
  %i.l = load i64, ptr %i.i, align 8, !dbg !5370, !range !1001, !alias.scope !5366, !noalias !5372, !noundef !13
  %i.m = trunc nuw i64 %i.l to i1, !dbg !5374
  br i1 %i.m, label %bb.c, label %bb.h, !dbg !5374, !prof !296

bb.c:                                             ; preds = %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison5mutex5MutexINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtB2N_10CategoriesENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEE5force0EB2P_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !5375, !noalias !5376
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !5375
  %i.o = load ptr, ptr %i.n, align 8, !dbg !5375, !alias.scope !5366, !noalias !5372, !nonnull !13, !align !665, !noundef !13
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !5375
  %i.q = load i8, ptr %i.p, align 8, !dbg !5375, !range !666, !alias.scope !5366, !noalias !5372, !noundef !13
  store ptr %i.o, ptr %i.c, align 8, !dbg !5375, !noalias !5376
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !5375
  store i8 %i.q, ptr %i.r, align 8, !dbg !5375, !noalias !5376
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @19, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #27
          to label %bb.e unwind label %bb.d, !dbg !5377, !noalias !5366

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtB2B_10CategoriesENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEEEB2D_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #25
          to label %common.resume.i unwind label %bb.f, !dbg !5378, !noalias !5366

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #22, !dbg !5379, !noalias !5366
  unreachable, !dbg !5379

common.resume.i:                                  ; preds = %.body29.i, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.s, %bb.d ], [ %.pn21.i, %.body29.i ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !5380

.body29.i:                                        ; preds = %.thread.i, %bb.ad, %bb.ac, %bb.o, %bb.n, %bb.g
  %.pn21.i = phi { ptr, i32 } [ %.pn.i, %bb.ac ], [ %eh.lpad-body.i, %.thread.i ], [ %i.u, %bb.g ], [ %i.ao, %bb.n ], [ %i.ao, %bb.o ], [ %.pn.i, %bb.ad ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtB2i_10CategoriesENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEEB2k_(ptr nonnull %i.w, i8 %i.y) #25
          to label %common.resume.i unwind label %bb.aj, !dbg !5381

bb.g:                                             ; preds = %bb.p
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body29.i

bb.h:                                             ; preds = %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison5mutex5MutexINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtB2N_10CategoriesENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEE5force0EB2P_.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !5382
  %i.w = load ptr, ptr %i.v, align 8, !dbg !5382, !alias.scope !5366, !noalias !5372, !nonnull !13, !align !665, !noundef !13 ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !5382
  %i.y = load i8, ptr %i.x, align 8, !dbg !5382, !range !666, !alias.scope !5366, !noalias !5372, !noundef !13 ; 2 uses
  %i.z = trunc nuw i8 %i.y to i1, !dbg !5382      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !5383
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !5384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, i8 0, i64 23, i1 false), !dbg !5386, !alias.scope !5399
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !5402 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %i.aa, i8 0, i64 23, i1 false), !dbg !5403, !alias.scope !5399
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 23, !dbg !5402 ; 2 uses
  store i8 -64, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !dbg !5402, !alias.scope !5399
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 47, !dbg !5402 ; 3 uses
  store i8 -64, ptr %.sroa.413.0..sroa_idx.i.i, align 1, !dbg !5402, !alias.scope !5399
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 48, !dbg !5402
  store i8 2, ptr %i.ab, align 8, !dbg !5402, !alias.scope !5399
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !5410 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 32, !dbg !5417
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !5417, !alias.scope !5421, !noalias !5424, !noundef !13
  %i.af = icmp eq i64 %i.ae, 0, !dbg !5426
  br i1 %i.af, label %_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtBQ_10CategoriesENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_EBS_.exit.thread.i, label %bb.i, !dbg !5426

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 40, !dbg !5427
  %i.ah = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdEB1I_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.h)
          to label %.noexc.i unwind label %bb.j, !dbg !5428

.noexc.i:                                         ; preds = %bb.i
  %i.ai = call fastcc noundef ptr @_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtBS_10CategoriesEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1O_E0EBU_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ac, i64 noundef %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.h) #28, !dbg !5430 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, null, !dbg !5432
  br i1 %.not.i.i, label %_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtBQ_10CategoriesENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_EBS_.exit.thread.i, label %_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtBQ_10CategoriesENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_EBS_.exit.i, !dbg !5433

bb.j:                                             ; preds = %_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtBQ_10CategoriesENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_EBS_.exit.i, %bb.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtBQ_10CategoriesENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_EBS_.exit.i: ; preds = %.noexc.i
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -8, !dbg !5434
  %i.al = invoke noundef ptr @_RNvMsJ_NtCsgZ49sUHp3tW_5alloc4syncINtB5_4WeakNtNtCs80wj1cxFixi_12polars_dtype11categorical10CategoriesE7upgradeBL_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak)
          to label %bb.k unwind label %bb.j, !dbg !5435 ; 3 uses

bb.k:                                             ; preds = %_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtBQ_10CategoriesENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_EBS_.exit.i
  %.not18.i = icmp eq ptr %i.al, null, !dbg !5437
  br i1 %.not18.i, label %_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtBQ_10CategoriesENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_EBS_.exit.thread.i, label %bb.l, !dbg !5438

bb.l:                                             ; preds = %bb.k
  %i.am = load i8, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !dbg !5439, !range !36, !alias.scope !5447, !noundef !13
  %i.an = icmp eq i8 %i.am, -40, !dbg !5458
  br i1 %i.an, label %bb.m, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs80wj1cxFixi_12polars_dtype.exit.i.i, !dbg !5458, !prof !296

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.h)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs80wj1cxFixi_12polars_dtype.exit.i.i unwind label %bb.n, !dbg !5459

bb.n:                                             ; preds = %bb.m
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load i8, ptr %.sroa.413.0..sroa_idx.i.i, align 1, !dbg !5460, !range !36, !alias.scope !5467, !noundef !13
  %i.aq = icmp eq i8 %i.ap, -40, !dbg !5476
  br i1 %i.aq, label %bb.o, label %.body29.i, !dbg !5476, !prof !296

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.body29.i unwind label %bb.q, !dbg !5477

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs80wj1cxFixi_12polars_dtype.exit.i.i: ; preds = %bb.m, %bb.l
  %i.ar = load i8, ptr %.sroa.413.0..sroa_idx.i.i, align 1, !dbg !5478, !range !36, !alias.scope !5485, !noundef !13
  %i.as = icmp eq i8 %i.ar, -40, !dbg !5494
  br i1 %i.as, label %bb.p, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdEBK_.exit.i, !dbg !5494, !prof !296

bb.p:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs80wj1cxFixi_12polars_dtype.exit.i.i
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdEBK_.exit.i unwind label %bb.g, !dbg !5495

bb.q:                                             ; preds = %bb.o
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #22, !dbg !5496
  unreachable, !dbg !5496

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdEBK_.exit.i: ; preds = %bb.p, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs80wj1cxFixi_12polars_dtype.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !5497
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 4, !dbg !5498
  br i1 %i.z, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.r, !dbg !5501

bb.r:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdEBK_.exit.i
  %i.av = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !5503
  %i.aw = and i64 %i.av, 9223372036854775807, !dbg !5509
  %i.ax = icmp eq i64 %i.aw, 0, !dbg !5509
  br i1 %i.ax, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.s, !dbg !5509, !prof !699

bb.s:                                             ; preds = %bb.r
  %i.ay = call noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #24, !dbg !5510
  br i1 %i.ay, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.t, !dbg !5511

bb.t:                                             ; preds = %bb.s
  store atomic i8 1, ptr %i.au monotonic, align 4, !dbg !5512
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, !dbg !5515

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.t, %bb.s, %bb.r, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdEBK_.exit.i
  %i.az = atomicrmw xchg ptr %i.w, i32 0 release, align 4, !dbg !5516
  %i.ba = icmp eq i32 %i.az, 2, !dbg !5520
  br i1 %i.ba, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtB2i_10CategoriesENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEEB2k_.exit.sink.split.i, label %_RNCNvNtCs80wj1cxFixi_12polars_dtype11categorical17GLOBAL_CATEGORIES0B5_.exit, !dbg !5520, !prof !296

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtB2i_10CategoriesENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEEB2k_.exit.sink.split.i: ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i36.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  %.sroa.0.0.ph.i = phi ptr [ %i.bp, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i36.i ], [ %i.al, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i ]
  call void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.w), !dbg !5521
  br label %_RNCNvNtCs80wj1cxFixi_12polars_dtype11categorical17GLOBAL_CATEGORIES0B5_.exit, !dbg !5525

_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtBQ_10CategoriesENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_EBS_.exit.thread.i: ; preds = %bb.k, %.noexc.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !5526
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32, !dbg !5527
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !5527
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %.sroa.58.0..sroa_idx.i, i8 0, i64 23, i1 false), !dbg !5530
  %.sroa.58.sroa.5.0..sroa.58.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56, !dbg !5527
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %.sroa.58.sroa.5.0..sroa.58.0..sroa_idx.sroa_idx.i, i8 0, i64 23, i1 false), !dbg !5536
  store i64 1, ptr %i.d, align 8, !dbg !5527
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !5527
  store i64 1, ptr %i.bb, align 8, !dbg !5527
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !5527
  store i64 0, ptr %i.bc, align 8, !dbg !5527
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !5527
  store ptr inttoptr (i64 -1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !5527
  %.sroa.58.sroa.4.0..sroa.58.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 55, !dbg !5527
  store i8 -64, ptr %.sroa.58.sroa.4.0..sroa.58.0..sroa_idx.sroa_idx.i, align 1, !dbg !5527
  %.sroa.58.sroa.6.0..sroa.58.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 79, !dbg !5527
  store i8 -64, ptr %.sroa.58.sroa.6.0..sroa.58.0..sroa_idx.sroa_idx.i, align 1, !dbg !5527
  %.sroa.58.sroa.7.0..sroa.58.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 80, !dbg !5527
  store i8 2, ptr %.sroa.58.sroa.7.0..sroa.58.0..sroa_idx.sroa_idx.i, align 8, !dbg !5527
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !dbg !5541, !noalias !5548
  %i.bd = call noundef align 8 dereferenceable_or_null(88) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 88, 769) 88, i64 noundef range(i64 8, 129) 8) #23, !dbg !5551, !noalias !5548 ; 3 uses
  %i.be = icmp eq ptr %i.bd, null, !dbg !5552
  br i1 %i.be, label %bb.u, label %bb.x, !dbg !5553, !prof !296

bb.u:                                             ; preds = %_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtBQ_10CategoriesENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_EBS_.exit.thread.i
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 88) #27
          to label %.noexc33.i unwind label %bb.v, !dbg !5554

.noexc33.i:                                       ; preds = %bb.u
  unreachable, !dbg !5554

bb.v:                                             ; preds = %bb.u
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerNtNtCs80wj1cxFixi_12polars_dtype11categorical10CategoriesEEB1n_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.d) #25
          to label %.thread.i unwind label %bb.w, !dbg !5555

bb.w:                                             ; preds = %bb.v
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #22, !dbg !5556
  unreachable, !dbg !5556

bb.x:                                             ; preds = %_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtBQ_10CategoriesENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_EBS_.exit.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bd, ptr noundef nonnull align 8 dereferenceable(88) %i.d, i64 88, i1 false), !dbg !5557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !5558
  store ptr %i.bd, ptr %i.g, align 8, !dbg !5559
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !5565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !5567
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false), !dbg !5567
  %i.bh = invoke noundef nonnull ptr @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs80wj1cxFixi_12polars_dtype11categorical10CategoriesE9downgradeBK_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
          to label %bb.z unwind label %bb.ai, !dbg !5568

bb.y:                                             ; preds = %bb.z
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac, !dbg !5569

bb.z:                                             ; preds = %bb.x
  %i.bj = invoke fastcc noundef ptr @_RNvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB5_7HashMapNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtBP_10CategoriesENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE6insertBR_(ptr noalias noundef align 8 dereferenceable(40) %i.ac, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.e, ptr noundef nonnull %i.bh)
          to label %bb.aa unwind label %bb.y, !dbg !5570 ; 2 uses

bb.aa:                                            ; preds = %bb.z
  store ptr %i.bj, ptr %i.f, align 8, !dbg !5565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !5569
  %i.bk = icmp eq ptr %i.bj, null, !dbg !5571
  br i1 %i.bk, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtNtCs80wj1cxFixi_12polars_dtype11categorical10CategoriesEEEB1F_.exit.i, label %bb.ab, !dbg !5571

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvXsN_NtCsgZ49sUHp3tW_5alloc4syncINtB5_4WeakNtNtCs80wj1cxFixi_12polars_dtype11categorical10CategoriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtNtCs80wj1cxFixi_12polars_dtype11categorical10CategoriesEEEB1F_.exit.i unwind label %bb.ae, !dbg !5573

bb.ac:                                            ; preds = %bb.ai, %bb.ae, %bb.y
  %.pn.i = phi { ptr, i32 } [ %i.bo, %bb.ae ], [ %i.bx, %bb.ai ], [ %i.bi, %bb.y ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5575), !dbg !5578
  call void @llvm.experimental.noalias.scope.decl(metadata !5579), !dbg !5582
  %i.bl = load ptr, ptr %i.g, align 8, !dbg !5584, !alias.scope !5588, !nonnull !13, !noundef !13
  %i.bm = atomicrmw sub ptr %i.bl, i64 1 release, align 8, !dbg !5589, !noalias !5588
  %i.bn = icmp eq i64 %i.bm, 1, !dbg !5592
  br i1 %i.bn, label %bb.ad, label %.body29.i, !dbg !5592

bb.ad:                                            ; preds = %bb.ac
  fence acquire, !dbg !5593
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs80wj1cxFixi_12polars_dtype11categorical10CategoriesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #24
          to label %.body29.i unwind label %bb.aj, !dbg !5595

bb.ae:                                            ; preds = %bb.ab
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtNtCs80wj1cxFixi_12polars_dtype11categorical10CategoriesEEEB1F_.exit.i: ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !5596
  %i.bp = load ptr, ptr %i.g, align 8, !dbg !5597, !nonnull !13, !noundef !13 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !5578
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !5497
  %i.bq = getelementptr inbounds nuw i8, ptr %i.w, i64 4, !dbg !5598
  br i1 %i.z, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i36.i, label %bb.af, !dbg !5601

bb.af:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtNtCs80wj1cxFixi_12polars_dtype11categorical10CategoriesEEEB1F_.exit.i
  %i.br = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !5603
  %i.bs = and i64 %i.br, 9223372036854775807, !dbg !5609
  %i.bt = icmp eq i64 %i.bs, 0, !dbg !5609
  br i1 %i.bt, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i36.i, label %bb.ag, !dbg !5609, !prof !699

bb.ag:                                            ; preds = %bb.af
  %i.bu = call noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #24, !dbg !5610
  br i1 %i.bu, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i36.i, label %bb.ah, !dbg !5611

bb.ah:                                            ; preds = %bb.ag
  store atomic i8 1, ptr %i.bq monotonic, align 4, !dbg !5612
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i36.i, !dbg !5615

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i36.i: ; preds = %bb.ah, %bb.ag, %bb.af, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtNtCs80wj1cxFixi_12polars_dtype11categorical10CategoriesEEEB1F_.exit.i
  %i.bv = atomicrmw xchg ptr %i.w, i32 0 release, align 4, !dbg !5616
  %i.bw = icmp eq i32 %i.bv, 2, !dbg !5620
  br i1 %i.bw, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtB2i_10CategoriesENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEEB2k_.exit.sink.split.i, label %_RNCNvNtCs80wj1cxFixi_12polars_dtype11categorical17GLOBAL_CATEGORIES0B5_.exit, !dbg !5620, !prof !296

bb.ai:                                            ; preds = %bb.x
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdEBK_(ptr noalias noundef align 8 dereferenceable(56) %i.e) #25
          to label %bb.ac unwind label %bb.aj, !dbg !5569

bb.aj:                                            ; preds = %.thread.i, %bb.ai, %bb.ad, %.body29.i
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #22, !dbg !5621
  unreachable, !dbg !5621

.thread.i:                                        ; preds = %bb.v, %bb.j
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.aj, %bb.j ], [ %i.bf, %bb.v ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdEBK_(ptr noalias noundef align 8 dereferenceable(56) %i.h) #25
          to label %.body29.i unwind label %bb.aj, !dbg !5497

_RNCNvNtCs80wj1cxFixi_12polars_dtype11categorical17GLOBAL_CATEGORIES0B5_.exit: ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtB2i_10CategoriesENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEEB2k_.exit.sink.split.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i36.i
  %.sroa.0.0.i = phi ptr [ %i.bp, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i36.i ], [ %i.al, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i ], [ %.sroa.0.0.ph.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtB2i_10CategoriesENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEEB2k_.exit.sink.split.i ], !dbg !5622
  ret ptr %.sroa.0.0.i, !dbg !5623
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCNvNtCs80wj1cxFixi_12polars_dtype11categorical19CATEGORIES_REGISTRY0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_onceB8_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !5624 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5625
  tail call void @_RNvXs3_NtCs2mZqlW55729_12polars_utils7aliasesINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtB1o_10CategoriesENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtB5_12InitHashMaps3newB1q_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a), !dbg !5631
  store i32 0, ptr %0, align 8, !dbg !5625, !alias.scope !5632
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !5625
  store i8 0, ptr %i.b, align 4, !dbg !5625, !alias.scope !5632
  ret void, !dbg !5635
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNCNvNtCs80wj1cxFixi_12polars_dtype11categorical26FROZEN_CATEGORIES_REGISTRY0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_onceB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 5), (8, 40)) %0) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !5636 {
bb.a:
  store i32 0, ptr %0, align 8, !dbg !5637, !alias.scope !5643
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !5637
  store i8 0, ptr %i.a, align 4, !dbg !5637, !alias.scope !5643
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5637
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @16, i64 32, i1 false), !dbg !5637
  ret void, !dbg !5646
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4, i1 noundef zeroext, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdEB1I_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2_18CategoricalMapping11with_hasher(ptr dead_on_unwind noalias noundef writable sret([640 x i8]) align 128 captures(none) dereferenceable(640), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7builderINtB2_29BinaryViewArrayGenericBuildereE3newCs80wj1cxFixi_12polars_dtype(ptr dead_on_unwind noalias noundef writable sret([272 x i8]) align 8 captures(none) dereferenceable(272), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE7reserveCs80wj1cxFixi_12polars_dtype(ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB5_16OptBitmapBuilder7reserve(ptr noalias noundef align 8 dereferenceable(56), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7builderINtB4_29BinaryViewArrayGenericBuildereENtNtB8_7builder18StaticArrayBuilder6freezeCs80wj1cxFixi_12polars_dtype(ptr dead_on_unwind noalias noundef writable sret([128 x i8]) align 8 captures(none) dereferenceable(128), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(272)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2_18CategoricalMapping18set_max_categories(ptr noalias noundef align 128 dereferenceable(640), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexINtNtCs7tGzs63DEEy_9hashbrown5table9HashTableTyINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtNtCs80wj1cxFixi_12polars_dtype11categorical16FrozenCategoriesEEEE4lockB2l_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs80wj1cxFixi_12polars_dtype11categorical16FrozenCategoriesE9downgradeBK_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
end_hunk_0
