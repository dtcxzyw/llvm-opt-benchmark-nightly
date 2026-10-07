Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.10?download=true
inline.NumInlined: 917
inline.NumDeleted: 432
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RNvNtNtNtCsa5QsYiPB8Gl_5image6codecs3tga7decoder21expand_rgb15_to_rgb24:bb.a
  %i.j = zext nneg i16 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsa5QsYiPB8Gl_5image6codecs3tga7decoder27LOOKUP_TABLE_5_BIT_TO_8_BIT, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsa5QsYiPB8Gl_5image6codecs3tga7decoder27LOOKUP_TABLE_5_BIT_TO_8_BIT, i64 %i.g
  %i.n = load i8, ptr %i.m, align 1, !noundef !5
  %.sroa.3.0.insert.ext = zext i8 %i.n to i24
  %.sroa.3.0.insert.shift = shl nuw i24 %.sroa.3.0.insert.ext, 16
  %.sroa.2.0.insert.ext = zext i8 %i.l to i24
  %.sroa.2.0.insert.shift = shl nuw nsw i24 %.sroa.2.0.insert.ext, 8
  %.sroa.02.0.insert.ext = zext i8 %i.d to i24
  %.sroa.2.0.insert.insert = or disjoint i24 %.sroa.2.0.insert.shift, %.sroa.02.0.insert.ext
  %.sroa.02.0.insert.insert = or disjoint i24 %.sroa.2.0.insert.insert, %.sroa.3.0.insert.shift
  ret i24 %.sroa.02.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i64, i64 } @_RNvNvXs0_NtNtCsa5QsYiPB8Gl_5image6codecs8farbfeldINtB7_14FarbfeldReaderpENtNtNtCsj6eKBz9Db1c_4core2io4seek4Seek4seek12parse_offset(i64 noundef %0, i64 noundef %1, i64 noundef range(i64 0, 3) %2, i64 noundef %3) unnamed_addr #8 {
bb.a:
  switch i64 %2, label %default.unreachable50 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable50:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.a = or i64 %3, %0
  %or.cond.not = icmp sgt i64 %i.a, -1            ; 2 uses
  %i.b = sub nsw i64 %3, %0
  %spec.select46 = select i1 %or.cond.not, i64 %i.b, i64 undef
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %. = tail call i64 @llvm.umin.i64(i64 %1, i64 9223372036854775807)
  %i.c = icmp slt i64 %3, %.
  %i.d = icmp ult i64 %1, %0
  %or.cond43 = or i1 %i.d, %i.c
  br i1 %or.cond43, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.a
  %.41 = tail call i64 @llvm.umin.i64(i64 %0, i64 9223372036854775807)
  %i.e = icmp sge i64 %3, %.41
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.f, %bb.d, %bb.c
  %.sroa.11.1 = phi i64 [ %3, %bb.d ], [ %spec.select44, %bb.f ], [ %spec.select46, %bb.b ], [ undef, %bb.c ]
  %.sroa.04.1.shrunk = phi i1 [ %i.e, %bb.d ], [ %i.i, %bb.f ], [ %or.cond.not, %bb.b ], [ false, %bb.c ]
  %.sroa.04.1 = zext i1 %.sroa.04.1.shrunk to i64
  %i.f = insertvalue { i64, i64 } poison, i64 %.sroa.04.1, 0
  %i.g = insertvalue { i64, i64 } %i.f, i64 %.sroa.11.1, 1
  ret { i64, i64 } %i.g

bb.f:                                             ; preds = %bb.c
  %i.h = sub nuw i64 %1, %0                       ; 2 uses
  %i.i = icmp sgt i64 %i.h, -1                    ; 2 uses
  %i.j = add nuw i64 %3, %i.h
  %spec.select44 = select i1 %i.i, i64 %i.j, i64 undef
  br label %bb.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read16is_read_vectoredCsa5QsYiPB8Gl_5image(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret i1 true
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderNtB2_12DecoderErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load i8, ptr %0, align 4, !range !35, !noundef !5
  switch i8 %i.e, label %default.unreachable23 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
  ]

default.unreachable23:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @127, i64 noundef 31)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @128, i64 noundef 68)
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @129, i64 noundef 70)
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @130, i64 noundef 57)
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @131, i64 noundef 30)
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @132, i64 noundef 47)
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.l, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2
  store ptr %i.m, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRTttENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.43.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.o, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoder19IcoEntryImageFormatNtB6_7Display3fmtBE_, ptr %.sroa.47.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %i.p, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.411.0..sroa_idx, align 8
  %i.q = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !5, !align !7, !noundef !5
  %i.t = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noundef nonnull @133, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.f, %bb.b ], [ %i.g, %bb.c ], [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.j, %bb.f ], [ %i.k, %bb.g ], [ %i.t, %bb.h ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderNtB5_19IcoEntryImageFormatNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !24, !noundef !5
  %i.b = trunc nuw i8 %i.a to i1
  %. = select i1 %i.b, ptr @143, ptr @142
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %., i64 noundef 3)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCsa5QsYiPB8Gl_5image6codecs3tga7decoderINtB5_10TgaDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder16read_image_boxedBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(address) %1, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
switch.lookup:
  %i.a = alloca [24 x i8], align 16               ; 13 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %.sroa.410.i.i = alloca [55 x i8], align 1      ; 5 uses
  %i.f = alloca [72 x i8], align 8                ; 8 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [72 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 16               ; 13 uses
  %i.k = alloca [48 x i8], align 8                ; 7 uses
  %i.l = alloca [48 x i8], align 8                ; 7 uses
  %i.m = alloca [1 x i8], align 1                 ; 6 uses
  %i.n = alloca [4 x i8], align 4                 ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [48 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 16               ; 11 uses
  %i.r = alloca [24 x i8], align 16               ; 14 uses
  %i.s = alloca [32 x i8], align 8                ; 6 uses
  %i.t = alloca [16 x i8], align 8                ; 7 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [112 x i8], align 8               ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.v, ptr noundef nonnull align 8 dereferenceable(112) %1, i64 112, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1259)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.410.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1260
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %3, ptr %i.w, align 8, !noalias !1260
  store i8 0, ptr %i.u, align 8, !noalias !1260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1260
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 64 ; 3 uses
  %.val.i.i = load i64, ptr %i.x, align 8, !alias.scope !1261, !noalias !1262, !noundef !5 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 72 ; 2 uses
  %.val2.i.i = load i64, ptr %i.y, align 8, !alias.scope !1261, !noalias !1262, !noundef !5 ; 2 uses
  %i.z = and i64 %.val.i.i, 4294967295
  %i.aa = and i64 %.val2.i.i, 4294967295
  %i.ab = mul nuw i64 %i.aa, %i.z
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 108 ; 2 uses
  %.val3.i.i = load i8, ptr %i.ac, align 4, !range !37, !alias.scope !1261, !noalias !1262, !noundef !5 ; 2 uses
  %i.ad = zext nneg i8 %.val3.i.i to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtNtCsa5QsYiPB8Gl_5image6codecs3tga7decoder10TgaDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder11total_bytesBb_, i64 %i.ad
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.ae = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ab, i64 %switch.ext) ; 2 uses
  %i.af = extractvalue { i64, i1 } %i.ae, 1
  br i1 %i.af, label %.thread.i, label %bb.a, !prof !6

.thread.i:                                        ; preds = %switch.lookup
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 -1, ptr %i.ag, align 8, !noalias !1260
  store i8 0, ptr %i.t, align 8, !noalias !1260
  br label %bb.b

.body.i:                                          ; preds = %bb.ci, %bb.by, %bb.bv, %bb.bo, %bb.bl, %bb.bc, %bb.ay, %.loopexit.split-lp.i, %bb.af, %bb.ac, %.loopexit.split-lp221.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp221.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp221.loopexit.split-lp.loopexit.i, %.loopexit.split-lp221.loopexit.i, %.loopexit220.i
  %.pn.i = phi { ptr, i32 } [ %i.mr, %bb.ci ], [ %i.lh, %bb.bv ], [ %lpad.phi.i, %.loopexit.split-lp.i ], [ %i.kw, %bb.bl ], [ %i.gq, %bb.ac ], [ %i.kf, %bb.ay ], [ %i.kh, %bb.bc ], [ %i.mh, %bb.by ], [ %i.gs, %bb.af ], [ %i.ky, %bb.bo ], [ %lpad.loopexit222.i, %.loopexit220.i ], [ %lpad.loopexit225.i, %.loopexit.split-lp221.loopexit.i ], [ %lpad.loopexit228.i, %.loopexit.split-lp221.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit230.i, %.loopexit.split-lp221.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp231.i, %.loopexit.split-lp221.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsa5QsYiPB8Gl_5image6codecs3tga7decoder10TgaDecoderINtNtNtB4_2io6cursor6CursorRShEEEBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.v) #28
          to label %bb.co unwind label %bb.bj, !noalias !1257

.loopexit220.i:                                   ; preds = %bb.aa
  %lpad.loopexit222.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp221.loopexit.i:                 ; preds = %bb.x
  %lpad.loopexit225.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp221.loopexit.split-lp.loopexit.i: ; preds = %.lr.ph.i.i
  %lpad.loopexit228.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp221.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.n, %bb.m, %bb.j
  %lpad.loopexit230.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp221.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.bz, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i143.i, %bb.bi, %bb.bd, %bb.az, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i.i, %.invoke.i, %.invoke293.i, %bb.q, %bb.i, %bb.b
  %lpad.loopexit.split-lp231.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.a:                                             ; preds = %switch.lookup
  %i.ah = extractvalue { i64, i1 } %i.ae, 0       ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !noalias !1260
  store i8 0, ptr %i.t, align 8, !noalias !1260
  %i.aj = icmp eq i64 %3, %i.ah
  br i1 %i.aj, label %switch.lookup114, label %bb.b, !prof !38

bb.b:                                             ; preds = %bb.a, %.thread.i
  invoke void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedINtNtB4_6result6ResultyNtNtNtB4_3num5error15TryFromIntErrorEBM_ECsa5QsYiPB8Gl_5image(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.t, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @144) #33
          to label %bb.c unwind label %.loopexit.split-lp221.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !1257

switch.lookup114:                                 ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1260
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 80 ; 7 uses
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !1258, !noalias !1262, !noundef !5 ; 5 uses
  %i.am = zext nneg i8 %.val3.i.i to i64
  %switch.gep115 = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtNtCsa5QsYiPB8Gl_5image6codecs3tga7decoder10TgaDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder11total_bytesBb_, i64 %i.am
  %switch.load116 = load i8, ptr %switch.gep115, align 1
  %switch.ext117 = zext i8 %switch.load116 to i64
  %i.an = icmp ugt i64 %i.al, %switch.ext117
  br i1 %i.an, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.ck, %bb.b
  unreachable

bb.d:                                             ; preds = %switch.lookup114
  %i.ao = mul i64 %.val2.i.i, %.val.i.i
  %i.ap = mul i64 %i.ao, %i.al                    ; 21 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 109
  %i.ar = load i8, ptr %i.aq, align 1, !range !1263, !alias.scope !1258, !noalias !1262, !noundef !5
  %.off.i = add nsw i8 %i.ar, -9
  %switch.i = icmp ult i8 %.off.i, 3
  %.not.i = icmp ugt i64 %i.ap, %3                ; 2 uses
  br i1 %switch.i, label %bb.g, label %bb.f

bb.e:                                             ; preds = %switch.lookup114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1260
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 6, ptr %i.as, align 1, !noalias !1260
  store i8 0, ptr %i.s, align 8, !noalias !1260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1260
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, i64 noundef 67, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.cj unwind label %bb.ci, !noalias !1257

bb.f:                                             ; preds = %bb.d
  br i1 %.not.i, label %.invoke293.i, label %bb.q, !prof !26

bb.g:                                             ; preds = %bb.d
  br i1 %.not.i, label %.invoke293.i, label %bb.h, !prof !26

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1264)
  %i.at = icmp samesign ult i64 %i.al, 5
  br i1 %i.at, label %.split.i.i, label %bb.i, !prof !23

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #32
          to label %.noexc.i unwind label %.loopexit.split-lp221.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !1257

.noexc.i:                                         ; preds = %bb.i
  unreachable

.split.i.i:                                       ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1265
  store i32 0, ptr %i.n, align 4, !noalias !1265
  %.not48.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not48.i.i, label %.thread.sink.split, label %.lr.ph46.i.i

.lr.ph46.i.i:                                     ; preds = %.split.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.v, i64 40 ; 3 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.o, %.lr.ph46.i.i
  %.sroa.02.045.i.i = phi i64 [ 0, %.lr.ph46.i.i ], [ %.sroa.02.1.i.i, %bb.o ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1266
  store i8 0, ptr %i.m, align 1, !noalias !1266
  %i.av = invoke noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au, ptr noalias nofree noundef nonnull %i.m, i64 noundef 1)
          to label %.noexc96.i unwind label %.loopexit.split-lp221.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !1257 ; 2 uses

.noexc96.i:                                       ; preds = %bb.j
  %.not.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.noexc96.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1266
  br label %.loopexit233.i

bb.l:                                             ; preds = %.noexc96.i
  %i.aw = load i8, ptr %i.m, align 1, !noalias !1266, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1266
  %i.ax = icmp sgt i8 %i.aw, -1
  br i1 %i.ax, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = and i8 %i.aw, 127
  %i.az = add nuw i8 %i.ay, 1
  %i.ba = zext i8 %i.az to i64                    ; 2 uses
  %i.bb = invoke noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au, ptr noalias nofree noundef nonnull %i.n, i64 noundef %i.al)
          to label %.noexc97.i unwind label %.loopexit.split-lp221.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !1257 ; 2 uses

.noexc97.i:                                       ; preds = %bb.m
  %.not.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i, label %bb.p, label %.loopexit233.i

bb.n:                                             ; preds = %bb.l
  %i.bc = add nuw i8 %i.aw, 1
  %i.bd = zext i8 %i.bc to i64
  %i.be = load i64, ptr %i.ak, align 8, !alias.scope !1267, !noalias !1268, !noundef !5
  %i.bf = mul i64 %i.be, %i.bd
  %i.bg = sub nuw nsw i64 %i.ap, %.sroa.02.045.i.i
  %..i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bg, i64 %i.bf) ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.02.045.i.i
  %i.bi = invoke noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au, ptr noalias nofree noundef nonnull %i.bh, i64 noundef %..i.i.i)
          to label %.noexc98.i unwind label %.loopexit.split-lp221.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !1257 ; 2 uses

.noexc98.i:                                       ; preds = %bb.n
  %.not29.i.i = icmp eq ptr %i.bi, null
  br i1 %.not29.i.i, label %bb.o, label %.loopexit233.i

bb.o:                                             ; preds = %._crit_edge.i.i, %.noexc98.i
  %.pn.i.i = phi i64 [ %i.br, %._crit_edge.i.i ], [ %..i.i.i, %.noexc98.i ]
  %.sroa.02.1.i.i = add i64 %.pn.i.i, %.sroa.02.045.i.i ; 2 uses
  %i.bj = icmp ult i64 %.sroa.02.1.i.i, %i.ap
  br i1 %i.bj, label %bb.j, label %.thread.sink.split

bb.p:                                             ; preds = %.noexc97.i
  %i.bk = load i64, ptr %i.ak, align 8, !alias.scope !1267, !noalias !1268, !noundef !5 ; 8 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %.invoke.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCsa5QsYiPB8Gl_5image.exit.i.i, !prof !6

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %bb.p
  %i.bm = sub nuw nsw i64 %i.ap, %.sroa.02.045.i.i ; 2 uses
  %i.bn = urem i64 %i.bm, %i.bk
  %i.bo = sub nuw nsw i64 %i.bm, %i.bn            ; 2 uses
  %.not2741.i.i = icmp ugt i64 %i.bk, %i.bo
  br i1 %.not2741.i.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCsa5QsYiPB8Gl_5image.exit.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.02.045.i.i
  br label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.noexc100.i
  %.pre.i.i = load i64, ptr %i.ak, align 8, !alias.scope !1267, !noalias !1268
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCsa5QsYiPB8Gl_5image.exit.i.i
  %i.bq = phi i64 [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.bk, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCsa5QsYiPB8Gl_5image.exit.i.i ]
  %i.br = mul i64 %i.bq, %i.ba
  br label %bb.o

.lr.ph.i.i:                                       ; preds = %.noexc100.i, %.lr.ph.preheader.i.i
  %.sroa.3.044.i.i = phi ptr [ %i.bt, %.noexc100.i ], [ %i.bp, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.515.043.i.i = phi i64 [ %i.bs, %.noexc100.i ], [ %i.bo, %.lr.ph.preheader.i.i ]
  %.sroa.8.042.i.i = phi i64 [ %i.bu, %.noexc100.i ], [ %i.ba, %.lr.ph.preheader.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.044.i.i) ]
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %.sroa.3.044.i.i, i64 noundef %i.bk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.al, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86)
          to label %.noexc100.i unwind label %.loopexit.split-lp221.loopexit.split-lp.loopexit.i, !noalias !1257

.noexc100.i:                                      ; preds = %.lr.ph.i.i
  %i.bs = sub nuw nsw i64 %.sroa.515.043.i.i, %i.bk ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.3.044.i.i, i64 %i.bk
  %i.bu = add nsw i64 %.sroa.8.042.i.i, -1        ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 0
  %.not27.i.i = icmp ugt i64 %i.bk, %i.bs
  %or.cond.i.i = select i1 %i.bv, i1 true, i1 %.not27.i.i
  br i1 %or.cond.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

.loopexit233.i:                                   ; preds = %.noexc98.i, %.noexc97.i, %bb.k
  %.sroa.0.0.i95.ph.i = phi ptr [ %i.av, %bb.k ], [ %i.bb, %.noexc97.i ], [ %i.bi, %.noexc98.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1265
  store i8 9, ptr %0, align 8, !alias.scope !1257, !noalias !1269
  %.sroa.448.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i95.ph.i, ptr %.sroa.448.0..sroa_idx.i, align 8, !alias.scope !1257, !noalias !1269
  br label %bb.ce

bb.q:                                             ; preds = %bb.f
  %i.bw = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.bx = invoke noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bw, ptr noalias nofree noundef nonnull %2, i64 noundef %i.ap)
          to label %bb.r unwind label %.loopexit.split-lp221.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !1257 ; 2 uses

bb.r:                                             ; preds = %bb.q
  %.not84.i = icmp eq ptr %i.bx, null
  br i1 %.not84.i, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i8 9, ptr %0, align 8, !alias.scope !1257, !noalias !1269
  %.sroa.451.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bx, ptr %.sroa.451.0..sroa_idx.i, align 8, !alias.scope !1257, !noalias !1269
  br label %bb.ce

.invoke293.i:                                     ; preds = %bb.g, %bb.f
  %i.by = phi ptr [ @146, %bb.f ], [ @145, %bb.g ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ap, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.by) #33
          to label %.cont294.i unwind label %.loopexit.split-lp221.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !1257

.cont294.i:                                       ; preds = %.invoke293.i
  unreachable

.thread.sink.split:                               ; preds = %bb.o, %.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1265
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !1270)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1260
  %i.bz = getelementptr inbounds nuw i8, ptr %i.v, i64 107
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !1271, !noalias !1272, !noundef !5 ; 2 uses
  %i.cb = and i8 %i.ca, 16
  %i.cc = icmp eq i8 %i.cb, 0
  %i.cd = and i8 %i.ca, 32
  %i.ce = icmp eq i8 %i.cd, 0                     ; 2 uses
  %.old3.i.i = load i64, ptr %i.y, align 8, !alias.scope !1271, !noalias !1272 ; 2 uses
  %.old4.i.i = icmp ugt i64 %.old3.i.i, 1
  %or.cond162.i.i = select i1 %i.ce, i1 %.old4.i.i, i1 false ; 2 uses
  br i1 %i.cc, label %4, label %._crit_edge.i

4:                                                ; preds = %.thread
  br i1 %or.cond162.i.i, label %bb.t, label %.loopexit219.i

bb.t:                                             ; preds = %4
  %.old3.i.i.a = load i64, ptr %i.x, align 8, !alias.scope !1271, !noalias !1272
  br label %bb.v

._crit_edge.i:                                    ; preds = %.thread
  %.pre.i = load i64, ptr %i.x, align 8, !alias.scope !1271, !noalias !1272 ; 2 uses
  br i1 %or.cond162.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i
  %.26.i.i = select i1 %i.ce, i64 2, i64 1
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.w, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit48.thread.loopexit.i.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCsa5QsYiPB8Gl_5image.exit27.i.i, %bb.u
  %i.cf = phi i64 [ %.pre.i, %bb.u ], [ %i.ci, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCsa5QsYiPB8Gl_5image.exit27.i.i ], [ %i.ci, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit48.thread.loopexit.i.i ], [ %i.ci, %bb.w ] ; 3 uses
  %.sroa.0.1.i.i = phi i64 [ %.26.i.i, %bb.u ], [ %.sroa.0.2.i.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCsa5QsYiPB8Gl_5image.exit27.i.i ], [ %.sroa.0.2.i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit48.thread.loopexit.i.i ], [ %.sroa.0.2.i.i, %bb.w ]
  %i.cg = icmp ne i64 %.sroa.0.1.i.i, 3
  %i.ch = icmp ugt i64 %i.cf, 1
  %or.cond9.i.i = select i1 %i.cg, i1 %i.ch, i1 false
  br i1 %or.cond9.i.i, label %bb.y, label %.loopexit219.i

bb.v:                                             ; preds = %._crit_edge.i, %bb.t
  %i.ci = phi i64 [ %.old3.i.i.a, %bb.t ], [ %.pre.i, %._crit_edge.i ] ; 4 uses
  %.sroa.0.2.i.i = phi i64 [ 3, %bb.t ], [ 2, %._crit_edge.i ] ; 3 uses
  %i.cj = load i64, ptr %i.ak, align 8, !alias.scope !1271, !noalias !1272, !noundef !5
  %i.ck = mul i64 %i.cj, %i.ci                    ; 10 uses
  %i.cl = lshr i64 %.old3.i.i, 1
  %i.cm = mul i64 %i.ck, %i.cl                    ; 5 uses
  %.not.i.i102.i = icmp ugt i64 %i.cm, %i.ap
  br i1 %.not.i.i102.i, label %.invoke.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsa5QsYiPB8Gl_5image.exit.i.i, !prof !6

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %bb.v
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 %i.cm ; 2 uses
  %i.co = icmp eq i64 %i.ck, 0
  br i1 %i.co, label %.invoke.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCsa5QsYiPB8Gl_5image.exit27.i.i, !prof !6

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCsa5QsYiPB8Gl_5image.exit27.i.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsa5QsYiPB8Gl_5image.exit.i.i
  %i.cp = urem i64 %i.cm, %i.ck
  %i.cq = sub nuw nsw i64 %i.cm, %i.cp            ; 2 uses
  %.not.i.i164.i.i = icmp ugt i64 %i.ck, %i.cq
  br i1 %.not.i.i164.i.i, label %.loopexit.i.i, label %.lr.ph.i103.i

.lr.ph.i103.i:                                    ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCsa5QsYiPB8Gl_5image.exit27.i.i
  %i.cr = sub nuw nsw i64 %i.ap, %i.cm            ; 2 uses
  %i.cs = urem i64 %i.cr, %i.ck
  %i.ct = sub nuw nsw i64 %i.cr, %i.cs
  %.sroa.481.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.583.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.784.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  br label %bb.w

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit48.thread.loopexit.i.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit48.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit48.i.i, %middle.block, %vec.epilog.middle.block, %.noexc106.i
  %.not.i.i.i.i = icmp ugt i64 %i.ck, %i.cv
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.w

bb.w:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit48.thread.loopexit.i.i, %.lr.ph.i103.i
  %.sroa.475.0167.i.i = phi ptr [ %2, %.lr.ph.i103.i ], [ %i.cu, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit48.thread.loopexit.i.i ] ; 2 uses
  %.sroa.776.0166.i.i = phi i64 [ %i.cq, %.lr.ph.i103.i ], [ %i.cv, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit48.thread.loopexit.i.i ]
  %.sroa.16.0165.i.i = phi i64 [ %i.ct, %.lr.ph.i103.i ], [ %i.cx, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit48.thread.loopexit.i.i ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.475.0167.i.i, i64 %i.ck ; 2 uses
  %i.cv = sub nuw nsw i64 %.sroa.776.0166.i.i, %i.ck ; 2 uses
  %i.cw = icmp ult i64 %.sroa.16.0165.i.i, %i.ck
  br i1 %i.cw, label %.loopexit.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cx = sub nuw nsw i64 %.sroa.16.0165.i.i, %i.ck ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.sroa.16.0165.i.i
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.l, ptr noundef nonnull %.sroa.475.0167.i.i, ptr noundef nonnull %i.cu, ptr noundef nonnull %i.cy, ptr noundef nonnull %i.cz)
          to label %.noexc106.i unwind label %.loopexit.split-lp221.loopexit.i, !noalias !1257

.noexc106.i:                                      ; preds = %bb.x
  %.sroa.079.0.copyload.i.i = load ptr, ptr %i.l, align 8, !noalias !1273 ; 8 uses
  %.sroa.481.0.copyload.i.i = load ptr, ptr %.sroa.481.0..sroa_idx.i.i, align 8, !noalias !1273 ; 8 uses
  %.sroa.583.0.copyload.i.i = load i64, ptr %.sroa.583.0..sroa_idx.i.i, align 8, !noalias !1273 ; 10 uses
  %.sroa.784.0.copyload.i.i = load i64, ptr %.sroa.784.0..sroa_idx.i.i, align 8, !noalias !1273 ; 7 uses
  %i.da = icmp ult i64 %.sroa.583.0.copyload.i.i, %.sroa.784.0.copyload.i.i
  br i1 %i.da, label %iter.check, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit48.thread.loopexit.i.i

iter.check:                                       ; preds = %.noexc106.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.079.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.481.0.copyload.i.i) ]
  %i.db = sub nuw i64 %.sroa.784.0.copyload.i.i, %.sroa.583.0.copyload.i.i ; 7 uses
  %min.iters.check = icmp ult i64 %i.db, 8
  br i1 %min.iters.check, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit48.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.sroa.079.0.copyload.i.i, i64 %.sroa.583.0.copyload.i.i
  %scevgep63.a = getelementptr i8, ptr %.sroa.079.0.copyload.i.i, i64 %.sroa.784.0.copyload.i.i
  %scevgep64.a = getelementptr i8, ptr %.sroa.481.0.copyload.i.i, i64 %.sroa.583.0.copyload.i.i
  %scevgep65 = getelementptr i8, ptr %.sroa.481.0.copyload.i.i, i64 %.sroa.784.0.copyload.i.i
  %bound0 = icmp ult ptr %scevgep, %scevgep65
  %bound1 = icmp ult ptr %scevgep64.a, %scevgep63.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit48.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check66 = icmp ult i64 %i.db, 32
  br i1 %min.iters.check66, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dc = and i64 %i.db, 24
  %n.vec = and i64 %i.db, -32                     ; 4 uses
  %i.dd = add i64 %.sroa.583.0.copyload.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.de = add nuw i64 %.sroa.583.0.copyload.i.i, %index ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.079.0.copyload.i.i, i64 %i.de ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.481.0.copyload.i.i, i64 %i.de ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.df, align 1, !alias.scope !1274, !noalias !1275
  %wide.load67.a = load <16 x i8>, ptr %i.dh, align 1, !alias.scope !1274, !noalias !1275
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  %wide.load68.a = load <16 x i8>, ptr %i.dg, align 1, !alias.scope !1276, !noalias !1277
  %wide.load69 = load <16 x i8>, ptr %i.di, align 1, !alias.scope !1276, !noalias !1277
  store <16 x i8> %wide.load68.a, ptr %i.df, align 1, !alias.scope !1274, !noalias !1275
  store <16 x i8> %wide.load69, ptr %i.dh, align 1, !alias.scope !1274, !noalias !1275
  store <16 x i8> %wide.load, ptr %i.dg, align 1, !alias.scope !1276, !noalias !1277
  store <16 x i8> %wide.load67.a, ptr %i.di, align 1, !alias.scope !1276, !noalias !1277
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dj = icmp eq i64 %index.next, %n.vec
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !1207

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.db, %n.vec
  br i1 %cmp.n, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit48.thread.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dc, 0
  br i1 %min.epilog.iters.check, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit48.i.i.preheader, label %vec.epilog.ph, !prof !1278

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec70 = and i64 %i.db, -8                    ; 3 uses
  %i.dk = add i64 %.sroa.583.0.copyload.i.i, %n.vec70
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index71 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next74, %vec.epilog.vector.body ] ; 2 uses
  %i.dl = add nuw i64 %.sroa.583.0.copyload.i.i, %index71 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.079.0.copyload.i.i, i64 %i.dl ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.481.0.copyload.i.i, i64 %i.dl ; 2 uses
  %wide.load72.a = load <8 x i8>, ptr %i.dm, align 1, !alias.scope !1274, !noalias !1275
  %wide.load73 = load <8 x i8>, ptr %i.dn, align 1, !alias.scope !1276, !noalias !1277
  store <8 x i8> %wide.load73, ptr %i.dm, align 1, !alias.scope !1274, !noalias !1275
  store <8 x i8> %wide.load72.a, ptr %i.dn, align 1, !alias.scope !1276, !noalias !1277
  %index.next74 = add nuw i64 %index71, 8         ; 2 uses
  %i.do = icmp eq i64 %index.next74, %n.vec70
  br i1 %i.do, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1208

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n75 = icmp eq i64 %i.db, %n.vec70
  br i1 %cmp.n75, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit48.thread.loopexit.i.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit48.i.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit48.i.i.preheader: ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.583.0163.i.i.ph = phi i64 [ %.sroa.583.0.copyload.i.i, %iter.check ], [ %.sroa.583.0.copyload.i.i, %vector.memcheck ], [ %i.dd, %vec.epilog.iter.check ], [ %i.dk, %vec.epilog.middle.block ] ; 6 uses
  %i.dp = sub i64 %.sroa.784.0.copyload.i.i, %.sroa.583.0163.i.i.ph
  %.neg = add i64 %.sroa.583.0163.i.i.ph, 1
  %xtraiter = and i64 %i.dp, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit48.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit48.i.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit48.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit48.i.i.preheader
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.079.0.copyload.i.i, i64 %.sroa.583.0163.i.i.ph ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.481.0.copyload.i.i, i64 %.sroa.583.0163.i.i.ph ; 2 uses
  %i.ds = add nuw i64 %.sroa.583.0163.i.i.ph, 1
  %i.dt = load i8, ptr %i.dq, align 1, !noalias !1277, !noundef !5
  %i.du = load i8, ptr %i.dr, align 1, !noalias !1277
  store i8 %i.du, ptr %i.dq, align 1, !noalias !1277
  store i8 %i.dt, ptr %i.dr, align 1, !noalias !1277
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit48.i.i.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit48.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit48.i.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit48.i.i.preheader
  %.sroa.583.0163.i.i.unr = phi i64 [ %.sroa.583.0163.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit48.i.i.preheader ], [ %i.ds, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit48.i.i.prol ]
  %i.dv = icmp eq i64 %.sroa.784.0.copyload.i.i, %.neg
  br i1 %i.dv, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit48.thread.loopexit.i.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit48.i.i

bb.y:                                             ; preds = %.loopexit.i.i
  %i.dw = load i64, ptr %i.ak, align 8, !alias.scope !1271, !noalias !1272, !noundef !5 ; 11 uses
  %i.dx = mul i64 %i.dw, %i.cf                    ; 10 uses
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %.invoke.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCsa5QsYiPB8Gl_5image.exit28.i.i, !prof !6

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCsa5QsYiPB8Gl_5image.exit28.i.i: ; preds = %bb.y
  %i.dz = urem i64 %i.ap, %i.dx
  %i.ea = sub nuw nsw i64 %i.ap, %i.dz            ; 3 uses
  %.not22174.i.i = icmp ugt i64 %i.dx, %i.ea
  br i1 %.not22174.i.i, label %.loopexit219.i, label %.lr.ph177.i.i

.lr.ph177.i.i:                                    ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCsa5QsYiPB8Gl_5image.exit28.i.i
  %i.eb = lshr i64 %i.cf, 1
  %i.ec = mul i64 %i.dw, %i.eb                    ; 5 uses
  %.not.i29.i.i = icmp ugt i64 %i.ec, %i.dx
  %i.ed = sub nuw nsw i64 %i.dx, %i.ec            ; 2 uses
  %.sroa.4132.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.5134.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.7135.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  br i1 %.not.i29.i.i, label %.invoke.i, label %.lr.ph177.split.i.i, !prof !6

.lr.ph177.split.i.i:                              ; preds = %.lr.ph177.i.i
  %i.ee = icmp eq i64 %i.dw, 0
  br i1 %i.ee, label %.invoke.i, label %.lr.ph177.split.split.i.i, !prof !6

.lr.ph177.split.split.i.i:                        ; preds = %.lr.ph177.split.i.i
  %i.ef = urem i64 %i.ec, %i.dw
  %i.eg = sub nuw nsw i64 %i.ec, %i.ef            ; 2 uses
  %i.eh = urem i64 %i.ed, %i.dw
  %i.ei = sub nuw nsw i64 %i.ed, %i.eh
  %.not.i.i36169.i.i = icmp ugt i64 %i.dw, %i.eg
  br i1 %.not.i.i36169.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsa5QsYiPB8Gl_5image.exit33.us.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsa5QsYiPB8Gl_5image.exit33.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsa5QsYiPB8Gl_5image.exit33.us.i.i: ; preds = %.lr.ph177.split.split.i.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsa5QsYiPB8Gl_5image.exit33.us.i.i
  %.sroa.5.0175.us.i.i = phi i64 [ %i.ej, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsa5QsYiPB8Gl_5image.exit33.us.i.i ], [ %i.ea, %.lr.ph177.split.split.i.i ]
  %i.ej = sub nuw nsw i64 %.sroa.5.0175.us.i.i, %i.dx ; 2 uses
  %.not22.us.i.i = icmp ugt i64 %i.dx, %i.ej
  br i1 %.not22.us.i.i, label %.loopexit219.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsa5QsYiPB8Gl_5image.exit33.us.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsa5QsYiPB8Gl_5image.exit33.i.i: ; preds = %.lr.ph177.split.split.i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.thread._crit_edge.i.i
  %.sroa.3.0176.i.i = phi ptr [ %i.ek, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.thread._crit_edge.i.i ], [ %2, %.lr.ph177.split.split.i.i ] ; 3 uses
  %.sroa.5.0175.i.i = phi i64 [ %i.el, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.thread._crit_edge.i.i ], [ %i.ea, %.lr.ph177.split.split.i.i ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.3.0176.i.i, i64 %i.dx
  %i.el = sub nuw nsw i64 %.sroa.5.0175.i.i, %i.dx ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.3.0176.i.i, i64 %i.ec ; 2 uses
  br label %bb.z

.invoke.i:                                        ; preds = %bb.p, %.lr.ph177.split.i.i, %.lr.ph177.i.i, %bb.y, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsa5QsYiPB8Gl_5image.exit.i.i, %bb.v
  %i.en = phi ptr [ @63, %.lr.ph177.i.i ], [ @0, %bb.y ], [ @0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsa5QsYiPB8Gl_5image.exit.i.i ], [ @63, %bb.v ], [ @0, %.lr.ph177.split.i.i ], [ @0, %bb.p ]
  %i.eo = phi ptr [ inttoptr (i64 19 to ptr), %.lr.ph177.i.i ], [ inttoptr (i64 55 to ptr), %bb.y ], [ inttoptr (i64 55 to ptr), %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsa5QsYiPB8Gl_5image.exit.i.i ], [ inttoptr (i64 19 to ptr), %bb.v ], [ inttoptr (i64 55 to ptr), %.lr.ph177.split.i.i ], [ inttoptr (i64 55 to ptr), %bb.p ]
  %i.ep = phi ptr [ @81, %.lr.ph177.i.i ], [ @80, %bb.y ], [ @79, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsa5QsYiPB8Gl_5image.exit.i.i ], [ @78, %bb.v ], [ @82, %.lr.ph177.split.i.i ], [ @85, %bb.p ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull %i.en, ptr noundef nonnull %i.eo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ep) #32
          to label %.cont.i unwind label %.loopexit.split-lp221.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !1257

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.i.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, %middle.block97, %vec.epilog.middle.block111, %.noexc110.i
  %.not.i.i36.i.i = icmp ugt i64 %i.dw, %i.er
  br i1 %.not.i.i36.i.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.thread._crit_edge.i.i, label %bb.z

bb.z:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.i.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsa5QsYiPB8Gl_5image.exit33.i.i
  %.sroa.16123.0172.i.i = phi i64 [ %i.ei, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsa5QsYiPB8Gl_5image.exit33.i.i ], [ %i.et, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.i.i ] ; 3 uses
  %.sroa.7118.0171.i.i = phi i64 [ %i.eg, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsa5QsYiPB8Gl_5image.exit33.i.i ], [ %i.er, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.i.i ]
  %.sroa.4117.0170.i.i = phi ptr [ %.sroa.3.0176.i.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsa5QsYiPB8Gl_5image.exit33.i.i ], [ %i.eq, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.i.i ] ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.4117.0170.i.i, i64 %i.dw ; 2 uses
  %i.er = sub nuw nsw i64 %.sroa.7118.0171.i.i, %i.dw ; 2 uses
  %i.es = icmp ult i64 %.sroa.16123.0172.i.i, %i.dw
  br i1 %i.es, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.thread._crit_edge.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.et = sub nuw nsw i64 %.sroa.16123.0172.i.i, %i.dw ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %i.em, i64 %.sroa.16123.0172.i.i
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.k, ptr noundef nonnull %.sroa.4117.0170.i.i, ptr noundef nonnull %i.eq, ptr noundef nonnull %i.eu, ptr noundef nonnull %i.ev)
          to label %.noexc110.i unwind label %.loopexit220.i, !noalias !1257

.noexc110.i:                                      ; preds = %bb.aa
  %.sroa.0130.0.copyload.i.i = load ptr, ptr %i.k, align 8, !noalias !1273 ; 8 uses
  %.sroa.4132.0.copyload.i.i = load ptr, ptr %.sroa.4132.0..sroa_idx.i.i, align 8, !noalias !1273 ; 8 uses
  %.sroa.5134.0.copyload.i.i = load i64, ptr %.sroa.5134.0..sroa_idx.i.i, align 8, !noalias !1273 ; 10 uses
  %.sroa.7135.0.copyload.i.i = load i64, ptr %.sroa.7135.0..sroa_idx.i.i, align 8, !noalias !1273 ; 7 uses
  %i.ew = icmp ult i64 %.sroa.5134.0.copyload.i.i, %.sroa.7135.0.copyload.i.i
  br i1 %i.ew, label %iter.check100, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.i.i

iter.check100:                                    ; preds = %.noexc110.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0130.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4132.0.copyload.i.i) ]
  %i.ex = sub nuw i64 %.sroa.7135.0.copyload.i.i, %.sroa.5134.0.copyload.i.i ; 7 uses
  %min.iters.check85 = icmp ult i64 %i.ex, 8
  br i1 %min.iters.check85, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.memcheck77

vector.memcheck77:                                ; preds = %iter.check100
  %scevgep78.a = getelementptr i8, ptr %.sroa.4132.0.copyload.i.i, i64 %.sroa.5134.0.copyload.i.i
  %scevgep79.a = getelementptr i8, ptr %.sroa.4132.0.copyload.i.i, i64 %.sroa.7135.0.copyload.i.i
  %scevgep80.a = getelementptr i8, ptr %.sroa.0130.0.copyload.i.i, i64 %.sroa.5134.0.copyload.i.i
  %scevgep81 = getelementptr i8, ptr %.sroa.0130.0.copyload.i.i, i64 %.sroa.7135.0.copyload.i.i
  %bound082 = icmp ult ptr %scevgep78.a, %scevgep81
  %bound183 = icmp ult ptr %scevgep80.a, %scevgep79.a
  %found.conflict84 = and i1 %bound082, %bound183
  br i1 %found.conflict84, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.main.loop.iter.check86

vector.main.loop.iter.check86:                    ; preds = %vector.memcheck77
  %min.iters.check87 = icmp ult i64 %i.ex, 32
  br i1 %min.iters.check87, label %vec.epilog.ph104, label %vector.ph88

vector.ph88:                                      ; preds = %vector.main.loop.iter.check86
  %i.ey = and i64 %i.ex, 24
  %n.vec89 = and i64 %i.ex, -32                   ; 4 uses
  %i.ez = add i64 %.sroa.5134.0.copyload.i.i, %n.vec89
  br label %vector.body90

vector.body90:                                    ; preds = %vector.ph88, %vector.body90
  %index91 = phi i64 [ 0, %vector.ph88 ], [ %index.next96, %vector.body90 ] ; 2 uses
  %i.fa = add nuw i64 %.sroa.5134.0.copyload.i.i, %index91 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0130.0.copyload.i.i, i64 %i.fa ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.4132.0.copyload.i.i, i64 %i.fa ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16 ; 2 uses
  %wide.load92.a = load <16 x i8>, ptr %i.fc, align 1, !alias.scope !1279, !noalias !1280
  %wide.load93.a = load <16 x i8>, ptr %i.fd, align 1, !alias.scope !1279, !noalias !1280
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 16 ; 2 uses
  %wide.load94.a = load <16 x i8>, ptr %i.fb, align 1, !alias.scope !1281, !noalias !1277
  %wide.load95 = load <16 x i8>, ptr %i.fe, align 1, !alias.scope !1281, !noalias !1277
  store <16 x i8> %wide.load94.a, ptr %i.fc, align 1, !alias.scope !1279, !noalias !1280
  store <16 x i8> %wide.load95, ptr %i.fd, align 1, !alias.scope !1279, !noalias !1280
  store <16 x i8> %wide.load92.a, ptr %i.fb, align 1, !alias.scope !1281, !noalias !1277
  store <16 x i8> %wide.load93.a, ptr %i.fe, align 1, !alias.scope !1281, !noalias !1277
  %index.next96 = add nuw i64 %index91, 32        ; 2 uses
  %i.ff = icmp eq i64 %index.next96, %n.vec89
  br i1 %i.ff, label %middle.block97, label %vector.body90, !llvm.loop !1212

middle.block97:                                   ; preds = %vector.body90
  %cmp.n98 = icmp eq i64 %i.ex, %n.vec89
  br i1 %cmp.n98, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.i.i, label %vec.epilog.iter.check102

vec.epilog.iter.check102:                         ; preds = %middle.block97
  %min.epilog.iters.check103 = icmp eq i64 %i.ey, 0
  br i1 %min.epilog.iters.check103, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vec.epilog.ph104, !prof !1278

vec.epilog.ph104:                                 ; preds = %vector.main.loop.iter.check86, %vec.epilog.iter.check102
  %vec.epilog.resume.val99 = phi i64 [ %n.vec89, %vec.epilog.iter.check102 ], [ 0, %vector.main.loop.iter.check86 ]
  %n.vec105 = and i64 %i.ex, -8                   ; 3 uses
  %i.fg = add i64 %.sroa.5134.0.copyload.i.i, %n.vec105
  br label %vec.epilog.vector.body106

vec.epilog.vector.body106:                        ; preds = %vec.epilog.vector.body106, %vec.epilog.ph104
  %index107 = phi i64 [ %vec.epilog.resume.val99, %vec.epilog.ph104 ], [ %index.next110, %vec.epilog.vector.body106 ] ; 2 uses
  %i.fh = add nuw i64 %.sroa.5134.0.copyload.i.i, %index107 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0130.0.copyload.i.i, i64 %i.fh ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.4132.0.copyload.i.i, i64 %i.fh ; 2 uses
  %wide.load108.a = load <8 x i8>, ptr %i.fj, align 1, !alias.scope !1279, !noalias !1280
  %wide.load109 = load <8 x i8>, ptr %i.fi, align 1, !alias.scope !1281, !noalias !1277
  store <8 x i8> %wide.load109, ptr %i.fj, align 1, !alias.scope !1279, !noalias !1280
  store <8 x i8> %wide.load108.a, ptr %i.fi, align 1, !alias.scope !1281, !noalias !1277
  %index.next110 = add nuw i64 %index107, 8       ; 2 uses
  %i.fk = icmp eq i64 %index.next110, %n.vec105
  br i1 %i.fk, label %vec.epilog.middle.block111, label %vec.epilog.vector.body106, !llvm.loop !1213

vec.epilog.middle.block111:                       ; preds = %vec.epilog.vector.body106
  %cmp.n112 = icmp eq i64 %i.ex, %n.vec105
  br i1 %cmp.n112, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.i.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader: ; preds = %iter.check100, %vector.memcheck77, %vec.epilog.iter.check102, %vec.epilog.middle.block111
  %.sroa.5134.0168.i.i.ph = phi i64 [ %.sroa.5134.0.copyload.i.i, %iter.check100 ], [ %.sroa.5134.0.copyload.i.i, %vector.memcheck77 ], [ %i.ez, %vec.epilog.iter.check102 ], [ %i.fg, %vec.epilog.middle.block111 ] ; 6 uses
  %i.fl = sub i64 %.sroa.7135.0.copyload.i.i, %.sroa.5134.0168.i.i.ph
  %.neg126 = add i64 %.sroa.5134.0168.i.i.ph, 1
  %xtraiter124 = and i64 %i.fl, 1
  %lcmp.mod125.not = icmp eq i64 %xtraiter124, 0
  br i1 %lcmp.mod125.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0130.0.copyload.i.i, i64 %.sroa.5134.0168.i.i.ph ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.4132.0.copyload.i.i, i64 %.sroa.5134.0168.i.i.ph ; 2 uses
  %i.fo = add nuw i64 %.sroa.5134.0168.i.i.ph, 1
  %i.fp = load i8, ptr %i.fn, align 1, !noalias !1277, !noundef !5
  %i.fq = load i8, ptr %i.fm, align 1, !noalias !1277
  store i8 %i.fq, ptr %i.fn, align 1, !noalias !1277
  store i8 %i.fp, ptr %i.fm, align 1, !noalias !1277
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %.sroa.5134.0168.i.i.unr = phi i64 [ %.sroa.5134.0168.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ], [ %i.fo, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ]
  %i.fr = icmp eq i64 %.sroa.7135.0.copyload.i.i, %.neg126
  br i1 %i.fr, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.i.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.thread._crit_edge.i.i: ; preds = %bb.z, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.i.i
  %.not22.i.i = icmp ugt i64 %i.dx, %i.el
  br i1 %.not22.i.i, label %.loopexit219.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsa5QsYiPB8Gl_5image.exit33.i.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.i.i
  %.sroa.5134.0168.i.i = phi i64 [ %i.fz, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.i.i ], [ %.sroa.5134.0168.i.i.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit ] ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0130.0.copyload.i.i, i64 %.sroa.5134.0168.i.i ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.4132.0.copyload.i.i, i64 %.sroa.5134.0168.i.i ; 2 uses
  %i.fu = add nuw i64 %.sroa.5134.0168.i.i, 1     ; 2 uses
  %i.fv = load i8, ptr %i.ft, align 1, !noalias !1277, !noundef !5
  %i.fw = load i8, ptr %i.fs, align 1, !noalias !1277
  store i8 %i.fw, ptr %i.ft, align 1, !noalias !1277
  store i8 %i.fv, ptr %i.fs, align 1, !noalias !1277
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.0130.0.copyload.i.i, i64 %i.fu ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.4132.0.copyload.i.i, i64 %i.fu ; 2 uses
  %i.fz = add nuw i64 %.sroa.5134.0168.i.i, 2     ; 2 uses
  %i.ga = load i8, ptr %i.fy, align 1, !noalias !1277, !noundef !5
  %i.gb = load i8, ptr %i.fx, align 1, !noalias !1277
  store i8 %i.gb, ptr %i.fy, align 1, !noalias !1277
  store i8 %i.ga, ptr %i.fx, align 1, !noalias !1277
  %exitcond179.not.i.i.1 = icmp eq i64 %i.fz, %.sroa.7135.0.copyload.i.i
  br i1 %exitcond179.not.i.i.1, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.i.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, !llvm.loop !1214

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit48.i.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit48.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit48.i.i
  %.sroa.583.0163.i.i = phi i64 [ %i.gj, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit48.i.i ], [ %.sroa.583.0163.i.i.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit48.i.i.prol.loopexit ] ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.079.0.copyload.i.i, i64 %.sroa.583.0163.i.i ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.481.0.copyload.i.i, i64 %.sroa.583.0163.i.i ; 2 uses
  %i.ge = add nuw i64 %.sroa.583.0163.i.i, 1      ; 2 uses
  %i.gf = load i8, ptr %i.gc, align 1, !noalias !1277, !noundef !5
  %i.gg = load i8, ptr %i.gd, align 1, !noalias !1277
  store i8 %i.gg, ptr %i.gc, align 1, !noalias !1277
  store i8 %i.gf, ptr %i.gd, align 1, !noalias !1277
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.079.0.copyload.i.i, i64 %i.ge ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.481.0.copyload.i.i, i64 %i.ge ; 2 uses
  %i.gj = add nuw i64 %.sroa.583.0163.i.i, 2      ; 2 uses
  %i.gk = load i8, ptr %i.gh, align 1, !noalias !1277, !noundef !5
  %i.gl = load i8, ptr %i.gi, align 1, !noalias !1277
  store i8 %i.gl, ptr %i.gh, align 1, !noalias !1277
  store i8 %i.gk, ptr %i.gi, align 1, !noalias !1277
  %exitcond.not.i.i.1 = icmp eq i64 %i.gj, %.sroa.784.0.copyload.i.i
  br i1 %exitcond.not.i.i.1, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit48.thread.loopexit.i.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit48.i.i, !llvm.loop !1215

.loopexit219.i:                                   ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.thread._crit_edge.i.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsa5QsYiPB8Gl_5image.exit33.us.i.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCsa5QsYiPB8Gl_5image.exit28.i.i, %.loopexit.i.i, %4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1260
  %i.gm = load i64, ptr %i.v, align 8, !range !14, !alias.scope !1258, !noalias !1262, !noundef !5
  %.not86.i = icmp eq i64 %i.gm, -1
  br i1 %.not86.i, label %bb.ai, label %bb.ab

bb.ab:                                            ; preds = %.loopexit219.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1282
  store i64 0, ptr %i.j, align 16, !noalias !1282
  %i.gn = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.gn, align 8, !noalias !1282
  %i.go = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store i64 0, ptr %i.go, align 16, !noalias !1282
  %i.gp = invoke { i64, i64 } @_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j, i64 noundef 0, i64 noundef %i.ap, i64 noundef 1, i64 noundef 1)
          to label %bb.ad unwind label %bb.ac, !noalias !1283

bb.ac:                                            ; preds = %bb.ab
  %i.gq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #28
          to label %.body.i unwind label %bb.ah, !noalias !1283

bb.ad:                                            ; preds = %bb.ab
  %i.gr = extractvalue { i64, i64 } %i.gp, 0
  %.not.i111.i = icmp eq i64 %i.gr, -1
  br i1 %.not.i111.i, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i.i unwind label %bb.af, !noalias !1283

bb.af:                                            ; preds = %bb.ae
  %i.gs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body.i unwind label %bb.ag, !noalias !1283

bb.ag:                                            ; preds = %bb.af
  %i.gt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1283
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %bb.ae
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.thread201.i unwind label %.loopexit.split-lp221.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !1257

.thread201.i:                                     ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1282
  br label %bb.ak

bb.ah:                                            ; preds = %bb.ac
  %i.gu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1283
  unreachable

bb.ai:                                            ; preds = %.loopexit219.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  %i.gw = load i8, ptr %i.gv, align 8, !range !1284, !alias.scope !1258, !noalias !1262, !noundef !5
  %cond.i = icmp eq i8 %i.gw, 13
  br i1 %cond.i, label %bb.bk, label %bb.bf

bb.aj:                                            ; preds = %bb.ad
  %i.gx = load <2 x i64>, ptr %i.j, align 16, !noalias !1260
  %.sroa.0.0.copyload.i = load i64, ptr %i.j, align 16, !noalias !1260
  %.sroa.8.0.copyload.i = load i64, ptr %i.go, align 16, !noalias !1260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1282
  %i.gy = icmp eq i64 %.sroa.0.0.copyload.i, -1
  br i1 %i.gy, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj, %.thread201.i
  store i8 7, ptr %0, align 8, !alias.scope !1257, !noalias !1269
  %.sroa.457.sroa.3.0..sroa.457.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %.sroa.457.sroa.3.0..sroa.457.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1257, !noalias !1269
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i

bb.al:                                            ; preds = %bb.aj
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store <2 x i64> %i.gx, ptr %i.r, align 16, !noalias !1260
  %.sroa.523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 4 uses
  store i64 %.sroa.8.0.copyload.i, ptr %.sroa.523.0..sroa_idx.i, align 16, !noalias !1260
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef %i.ap)
          to label %.noexc115.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !1257

.noexc115.i:                                      ; preds = %bb.al
  %i.gz = load i64, ptr %.sroa.523.0..sroa_idx.i, align 16, !alias.scope !1285, !noalias !1260, !noundef !5 ; 3 uses
  %i.ha = icmp sgt i64 %i.gz, -1
  call void @llvm.assume(i1 %i.ha)
  %.not.i113.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i113.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.noexc115.i
  %i.hb = load ptr, ptr %.sroa.422.0..sroa_idx.i, align 8, !alias.scope !1285, !noalias !1260, !nonnull !5, !noundef !5
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.gz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hc, ptr nonnull readonly align 1 %2, i64 %i.ap, i1 false), !noalias !1257
  %.pre.i114.i = load i64, ptr %.sroa.523.0..sroa_idx.i, align 16, !alias.scope !1285, !noalias !1260
  br label %bb.an

.loopexit.i:                                      ; preds = %bb.ar, %bb.ap
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.aw, %bb.au
  %lpad.loopexit216.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.ax, %.invoke295.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCsa5QsYiPB8Gl_5image.exit15.i.i, %bb.as, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCsa5QsYiPB8Gl_5image.exit.i118.i, %bb.al
  %lpad.loopexit.split-lp217.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit216.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp217.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #28
          to label %.body.i unwind label %bb.bj, !noalias !1257

bb.an:                                            ; preds = %bb.am, %.noexc115.i
  %i.hd = phi i64 [ %.pre.i114.i, %bb.am ], [ %i.gz, %.noexc115.i ]
  %i.he = add i64 %i.hd, %i.ap                    ; 3 uses
  store i64 %i.he, ptr %.sroa.523.0..sroa_idx.i, align 16, !alias.scope !1285, !noalias !1260
  %i.hf = load ptr, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !1260, !nonnull !5, !noundef !5 ; 4 uses
  %.val.i = load i64, ptr %i.ak, align 8, !alias.scope !1258, !noalias !1262, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !1286)
  switch i64 %.val.i, label %.invoke295.i [
    i64 1, label %bb.ao
    i64 2, label %bb.at
  ], !prof !1287

bb.ao:                                            ; preds = %bb.an
  %i.hg = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.hh = load i64, ptr %i.hg, align 8, !alias.scope !1288, !noalias !1289, !noundef !5 ; 6 uses
  %i.hi = icmp eq i64 %i.hh, 0
  br i1 %i.hi, label %.invoke295.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCsa5QsYiPB8Gl_5image.exit.i118.i, !prof !6

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCsa5QsYiPB8Gl_5image.exit.i118.i: ; preds = %bb.ao
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.he
  %i.hk = urem i64 %3, %i.hh                      ; 2 uses
  %i.hl = sub nuw nsw i64 %3, %i.hk               ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 %i.hl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1290
  store ptr %i.hm, ptr %i.c, align 8, !alias.scope !1291, !noalias !1292
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.hk, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !alias.scope !1291, !noalias !1292
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %2, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !1291, !noalias !1292
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.hl, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !1291, !noalias !1292
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %i.hh, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !1291, !noalias !1292
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1293
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_14ChunksExactMuthEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.i, ptr noundef nonnull readonly %i.hf, ptr noundef nonnull readonly %i.hj, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c)
          to label %.noexc121.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !1257

.noexc121.i:                                      ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCsa5QsYiPB8Gl_5image.exit.i118.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1290
  %i.hn = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  %i.hp = load i64, ptr %i.hn, align 8, !alias.scope !1294, !noalias !1295, !noundef !5 ; 2 uses
  %i.hq = load i64, ptr %i.ho, align 8, !alias.scope !1294, !noalias !1295, !noundef !5
  %i.hr = icmp ult i64 %i.hp, %i.hq
  br i1 %i.hr, label %.lr.ph28.i.i, label %._crit_edge29.i.i

.lr.ph28.i.i:                                     ; preds = %.noexc121.i
  %i.hs = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ht = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.hu = load i64, ptr %i.ht, align 8, !alias.scope !1288, !noalias !1289 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.hw = load i64, ptr %i.hv, align 8, !alias.scope !1288, !noalias !1289
  %i.hx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8, !alias.scope !1288, !noalias !1289, !nonnull !5
  br label %bb.ap

bb.ap:                                            ; preds = %.noexc123.i, %.lr.ph28.i.i
  %i.hz = phi i64 [ %i.hp, %.lr.ph28.i.i ], [ %i.in, %.noexc123.i ] ; 3 uses
  %i.ia = add nuw i64 %i.hz, 1
  store i64 %i.ia, ptr %i.hn, align 8, !alias.scope !1294, !noalias !1295
  %.val.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !1294, !noalias !1295, !nonnull !5, !noundef !5
  %i.ib = invoke { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.hs, i64 noundef %i.hz)
          to label %.noexc122.i unwind label %.loopexit.i, !noalias !1257 ; 2 uses

.noexc122.i:                                      ; preds = %bb.ap
  %i.ic = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.hz
  %i.id = extractvalue { ptr, i64 } %i.ib, 0      ; 2 uses
  %i.ie = extractvalue { ptr, i64 } %i.ib, 1
  %i.if = load i8, ptr %i.ic, align 1, !noalias !1296, !noundef !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.id) ]
  %i.ig = zext i8 %i.if to i64                    ; 2 uses
  %i.ih = icmp ugt i64 %i.hu, %i.ig
  br i1 %i.ih, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %.noexc122.i
  %i.ii = sub nuw nsw i64 %i.ig, %i.hu
  %i.ij = mul i64 %i.ii, %i.hh                    ; 3 uses
  %i.ik = add i64 %i.ij, %i.hh                    ; 2 uses
  %i.il = icmp ult i64 %i.ik, %i.ij
  %.not.i.i119.i = icmp ugt i64 %i.ik, %i.hw
end_hunk_0
