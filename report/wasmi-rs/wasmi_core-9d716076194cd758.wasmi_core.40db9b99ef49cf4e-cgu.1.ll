Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi_core-9d716076194cd758.wasmi_core.40db9b99ef49cf4e-cgu.1?download=true
inline.NumInlined: 120
inline.NumDeleted: 78
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtCs5zeGauAcNNa_10wasmi_core6memoryNtB2_6Memory10new_static:bb.a
  %i.aj = call noundef zeroext i1 %i.ai(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) #17, !noalias !120, !inline_history !121
  br i1 %i.aj, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.ak, align 8, !alias.scope !110, !noalias !118
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sink17.i = phi i64 [ 16, %bb.p ], [ 8, %bb.o ]
  %.sink.i = phi i64 [ %i.r, %bb.p ], [ 5, %bb.o ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %.sink17.i
  store i64 %.sink.i, ptr %i.al, align 8, !alias.scope !110, !noalias !118
  store i64 2, ptr %0, align 8, !alias.scope !110, !noalias !118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !120
  br label %_RINvMNtCs5zeGauAcNNa_10wasmi_core6memoryNtB3_6Memory8new_implNCNvB2_10new_static0EB5_.exit

_RINvMNtCs5zeGauAcNNa_10wasmi_core6memoryNtB3_6Memory8new_implNCNvB2_10new_static0EB5_.exit: ; preds = %bb.c, %bb.e, %bb.i, %bb.l, %bb.n, %bb.q
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs5zeGauAcNNa_10wasmi_core6memoryNtB2_6Memory3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %.val = load ptr, ptr %2, align 8               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1 = load ptr, ptr %i.d, align 8            ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !131, !noalias !128, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.h = load i8, ptr %i.g, align 1, !alias.scope !131, !noalias !128, !noundef !8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load i8, ptr %i.i, align 8, !range !4, !alias.scope !131, !noalias !128, !noundef !8
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = zext i64 %i.f to i128                    ; 2 uses
  %..i = select i1 %i.k, i128 18446744073709551616, i128 4294967296
  %i.m = and i8 %i.h, 127
  %i.n = zext nneg i8 %i.m to i128                ; 3 uses
  %i.o = lshr i128 %..i, %i.n                     ; 2 uses
  %i.p = icmp samesign ult i128 %i.o, %i.l
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = shl i128 %i.l, %i.n                      ; 2 uses
  %i.r = icmp ugt i128 %i.q, 18446744073709551615
  br i1 %i.r, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.s, align 8, !alias.scope !128, !noalias !131
  store i64 2, ptr %0, align 8, !alias.scope !128, !noalias !131
  br label %_RINvMNtCs5zeGauAcNNa_10wasmi_core6memoryNtB3_6Memory8new_implNvMs0_NtB3_6bufferNtB13_10ByteBuffer3newEB5_.exit

bb.d:                                             ; preds = %bb.b
  %i.t = trunc nuw i128 %i.q to i64               ; 2 uses
  %i.u = load i64, ptr %1, align 8, !range !119, !alias.scope !131, !noalias !128, !noundef !8
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.w, align 8, !alias.scope !128, !noalias !131
  store i64 2, ptr %0, align 8, !alias.scope !128, !noalias !131
  br label %_RINvMNtCs5zeGauAcNNa_10wasmi_core6memoryNtB3_6Memory8new_implNvMs0_NtB3_6bufferNtB13_10ByteBuffer3newEB5_.exit

bb.f:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !131, !noalias !128
  %i.z = zext i64 %i.y to i128                    ; 2 uses
  %i.aa = icmp samesign ult i128 %i.o, %i.z
  br i1 %i.aa, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.h, %bb.d
  %.sroa.3.0.i = phi i64 [ %.sroa.05.0.i, %bb.h ], [ undef, %bb.d ]
  %.sroa.04.0.i = phi i64 [ 1, %bb.h ], [ 0, %bb.d ]
  %.not.i = icmp eq ptr %.val, null               ; 2 uses
  br i1 %.not.i, label %bb.k, label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.ab = shl i128 %i.z, %i.n
  %.sroa.05.01.i = tail call i128 @llvm.umin.i128(i128 %i.ab, i128 18446744073709551615)
  %.sroa.05.0.i = trunc nuw i128 %.sroa.05.01.i to i64
  br label %bb.g

bb.i:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.ac, align 8, !alias.scope !128, !noalias !131
  store i64 2, ptr %0, align 8, !alias.scope !128, !noalias !131
  br label %_RINvMNtCs5zeGauAcNNa_10wasmi_core6memoryNtB3_6Memory8new_implNvMs0_NtB3_6bufferNtB13_10ByteBuffer3newEB5_.exit

bb.j:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !8, !noalias !133, !nonnull !8
  %i.af = tail call noundef i8 %i.ae(ptr noundef nonnull %.val, i64 noundef 0, i64 noundef %i.t, i64 noundef %.sroa.04.0.i, i64 %.sroa.3.0.i) #17, !noalias !133, !inline_history !134
  switch i8 %i.af, label %bb.k [
    i8 2, label %bb.l
    i8 0, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !133
  call void @_RNvMs0_NtNtCs5zeGauAcNNa_10wasmi_core6memory6bufferNtB5_10ByteBuffer3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, i64 noundef %i.t), !noalias !133
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ah = load i8, ptr %i.ag, align 8, !range !135, !noalias !133, !noundef !8
  %i.ai = icmp eq i8 %i.ah, 2
  br i1 %i.ai, label %bb.m, label %bb.n

bb.l:                                             ; preds = %bb.j, %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 5, ptr %i.aj, align 8, !alias.scope !128, !noalias !131
  store i64 2, ptr %0, align 8, !alias.scope !128, !noalias !131
  br label %_RINvMNtCs5zeGauAcNNa_10wasmi_core6memoryNtB3_6Memory8new_implNvMs0_NtB3_6bufferNtB13_10ByteBuffer3newEB5_.exit

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !133
  %i.ak = load i64, ptr %i.c, align 8, !range !109, !noalias !133, !noundef !8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.am = load i64, ptr %i.al, align 8, !noalias !133 ; 2 uses
  store i64 %i.ak, ptr %i.b, align 8, !noalias !133
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.am, ptr %i.an, align 8, !noalias !133
  br i1 %.not.i, label %bb.p, label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !noalias !128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !noalias !131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvMNtCs5zeGauAcNNa_10wasmi_core6memoryNtB3_6Memory8new_implNvMs0_NtB3_6bufferNtB13_10ByteBuffer3newEB5_.exit

bb.o:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.val1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !invariant.load !8, !noalias !133, !nonnull !8
  %i.ar = call noundef zeroext i1 %i.aq(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b) #17, !noalias !133, !inline_history !134
  br i1 %i.ar, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ak, ptr %i.as, align 8, !alias.scope !128, !noalias !131
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sink6.i = phi i64 [ 16, %bb.p ], [ 8, %bb.o ]
  %.sink.i = phi i64 [ %i.am, %bb.p ], [ 5, %bb.o ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %.sink6.i
  store i64 %.sink.i, ptr %i.at, align 8, !alias.scope !128, !noalias !131
  store i64 2, ptr %0, align 8, !alias.scope !128, !noalias !131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !133
  br label %_RINvMNtCs5zeGauAcNNa_10wasmi_core6memoryNtB3_6Memory8new_implNvMs0_NtB3_6bufferNtB13_10ByteBuffer3newEB5_.exit

_RINvMNtCs5zeGauAcNNa_10wasmi_core6memoryNtB3_6Memory8new_implNvMs0_NtB3_6bufferNtB13_10ByteBuffer3newEB5_.exit: ; preds = %bb.c, %bb.e, %bb.i, %bb.l, %bb.n, %bb.q
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs5zeGauAcNNa_10wasmi_core6memoryNtB2_6Memory4grow(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(64) %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(address_is_null) dereferenceable_or_null(32) %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load i64, ptr %i.j, align 8, !noundef !8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.m = load i8, ptr %i.l, align 1, !noundef !8
  %i.n = and i8 %i.m, 63
  %i.o = zext nneg i8 %i.n to i64
  %i.p = lshr i64 %i.k, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.q, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 25
  %.val = load i8, ptr %i.r, align 1, !noundef !8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val36 = load i64, ptr %i.s, align 8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.t = and i8 %.val, 63
  %i.u = zext nneg i8 %i.t to i64
  %i.v = lshr i64 %.val36, %i.u                   ; 6 uses
  store i64 %i.v, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.w = and i8 %.val, 31                         ; 2 uses
  %i.x = zext nneg i8 %i.w to i32
  %i.y = shl nuw i32 1, %i.x
  %i.z = zext i32 %i.y to i64                     ; 6 uses
  store i64 %i.z, ptr %i.g, align 8
  %i.aa = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.v, i64 %i.z)
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.d, label %_RNvMNtCs5zeGauAcNNa_10wasmi_core6memoryNtB2_6Memory13size_in_bytes.exit, !prof !10

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.h, ptr %i.f, align 8
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.48.0..sroa_idx.i, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.g, ptr %i.ac, align 8
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.44.0..sroa_idx.i, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #19
  unreachable

_RNvMNtCs5zeGauAcNNa_10wasmi_core6memoryNtB2_6Memory13size_in_bytes.exit: ; preds = %bb.c
  %5 = zext nneg i8 %i.w to i64                   ; 4 uses
  %6 = shl nuw i64 %i.v, %5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !136
  %i.ad = load i64, ptr %1, align 8, !range !119, !alias.scope !136, !noundef !8 ; 2 uses
  %i.ae = trunc nuw i64 %i.ad to i1               ; 2 uses
  br i1 %i.ae, label %bb.e, label %_RNvMNtCs5zeGauAcNNa_10wasmi_core6memoryNtB2_6Memory17max_size_in_bytes.exit

bb.e:                                             ; preds = %_RNvMNtCs5zeGauAcNNa_10wasmi_core6memoryNtB2_6Memory13size_in_bytes.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !136 ; 3 uses
  store i64 %i.ag, ptr %i.e, align 8, !noalias !136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !136
  store i64 %i.z, ptr %i.d, align 8, !noalias !136
  %i.ah = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ag, i64 %i.z)
  %i.ai = extractvalue { i64, i1 } %i.ah, 1
  br i1 %i.ai, label %bb.g, label %bb.f, !prof !10

bb.f:                                             ; preds = %bb.e
  %7 = shl nuw i64 %i.ag, %5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !136
  br label %_RNvMNtCs5zeGauAcNNa_10wasmi_core6memoryNtB2_6Memory17max_size_in_bytes.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !136
  store ptr %i.e, ptr %i.c, align 8, !noalias !136
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !136
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.d, ptr %i.aj, align 8, !noalias !136
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !136
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #19, !noalias !136
  unreachable

_RNvMNtCs5zeGauAcNNa_10wasmi_core6memoryNtB2_6Memory17max_size_in_bytes.exit: ; preds = %_RNvMNtCs5zeGauAcNNa_10wasmi_core6memoryNtB2_6Memory13size_in_bytes.exit, %bb.f
  %.sroa.3.0 = phi i64 [ %7, %bb.f ], [ undef, %_RNvMNtCs5zeGauAcNNa_10wasmi_core6memoryNtB2_6Memory13size_in_bytes.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !136
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = add i64 %i.v, %2                        ; 5 uses
  %i.am = icmp ult i64 %i.al, %i.v
  br i1 %i.am, label %bb.j, label %bb.i, !prof !10

bb.h:                                             ; preds = %bb.j, %bb.n, %bb.l, %bb.t, %_RNvNvMNtCs5zeGauAcNNa_10wasmi_core6memoryNtB4_6Memory4grow14notify_limiter.exit, %_RNvNvMNtCs5zeGauAcNNa_10wasmi_core6memoryNtB4_6Memory4grow14notify_limiter.exit44, %bb.p, %bb.ai, %bb.b
  ret void

bb.i:                                             ; preds = %_RNvMNtCs5zeGauAcNNa_10wasmi_core6memoryNtB2_6Memory17max_size_in_bytes.exit
  %i.an = zext i64 %i.al to i128
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = load i8, ptr %i.ao, align 8, !range !4, !noundef !8
  %i.aq = trunc nuw i8 %i.ap to i1
  %. = select i1 %i.aq, i128 18446744073709551616, i128 4294967296
  %i.ar = and i8 %.val, 127
  %i.as = zext nneg i8 %i.ar to i128
  %i.at = lshr i128 %., %i.as
  %i.au = icmp samesign ult i128 %i.at, %i.an
  br i1 %i.au, label %bb.l, label %bb.k

bb.j:                                             ; preds = %_RNvMNtCs5zeGauAcNNa_10wasmi_core6memoryNtB2_6Memory17max_size_in_bytes.exit
  store i64 1, ptr %0, align 8
  br label %bb.h

bb.k:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = icmp ugt i64 %i.al, %i.aw
  %or.cond = select i1 %i.ae, i1 %i.ax, i1 false
  br i1 %or.cond, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.i
  store i64 1, ptr %0, align 8
  br label %bb.h

bb.m:                                             ; preds = %bb.k
  %i.ay = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.al, i64 %i.z)
  %8 = shl nuw i64 %i.al, %5                      ; 2 uses
  %i.az = extractvalue { i64, i1 } %i.ay, 1
  br i1 %i.az, label %bb.p, label %bb.o, !prof !10

bb.n:                                             ; preds = %bb.k
  store i64 1, ptr %0, align 8
  br label %bb.h

bb.o:                                             ; preds = %bb.m
  %i.ba = load ptr, ptr %4, align 8, !noundef !8  ; 4 uses
  %.not = icmp eq ptr %i.ba, null                 ; 3 uses
  br i1 %.not, label %bb.r, label %bb.q

bb.p:                                             ; preds = %bb.m
  store i64 1, ptr %0, align 8
  br label %bb.h

bb.q:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !8, !align !139, !noundef !8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !invariant.load !8, !nonnull !8
  %i.bf = tail call noundef i8 %i.be(ptr noundef nonnull %i.ba, i64 noundef %6, i64 noundef %8, i64 noundef %i.ad, i64 %.sroa.3.0) #17
  switch i8 %i.bf, label %bb.r [
    i8 2, label %bb.t
    i8 0, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q, %bb.o
  %.not33 = icmp eq ptr %3, null
  br i1 %.not33, label %bb.v, label %bb.u

bb.s:                                             ; preds = %bb.q
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.s
  %.sroa.013.0 = phi i64 [ 1, %bb.s ], [ 5, %bb.q ]
  store i64 %.sroa.013.0, ptr %0, align 8
  br label %bb.h

bb.u:                                             ; preds = %bb.r
  %i.bg = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %i.z)
  %i.bh = extractvalue { i64, i1 } %i.bg, 1
  br i1 %i.bh, label %bb.z, label %bb.w, !prof !10

bb.v:                                             ; preds = %bb.y, %bb.w, %bb.r
  %i.bi = tail call { i64, i64 } @_RNvMs0_NtNtCs5zeGauAcNNa_10wasmi_core6memory6bufferNtB5_10ByteBuffer4grow(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ak, i64 noundef %8) ; 2 uses
  %i.bj = extractvalue { i64, i64 } %i.bi, 0      ; 3 uses
  %.not35 = icmp eq i64 %i.bj, -1
  br i1 %.not35, label %bb.ai, label %bb.ae

bb.w:                                             ; preds = %bb.u
  %9 = shl nuw i64 %2, %5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bl = load i8, ptr %i.bk, align 8, !range !4, !alias.scope !140, !noundef !8
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.x, label %bb.v

bb.x:                                             ; preds = %bb.w
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val3.i = load ptr, ptr %i.bn, align 8, !alias.scope !143, !noundef !8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.val3.i, null
  br i1 %.not.i.i.i.i.i.i, label %_RNvMs1_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_17FuelCostsProvider21bytes_copied_per_fuel.exit.thread.i.i.i.i, label %_RNvMs1_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_17FuelCostsProvider21bytes_copied_per_fuel.exit.i.i.i.i

_RNvMs1_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_17FuelCostsProvider21bytes_copied_per_fuel.exit.i.i.i.i: ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val4.i = load ptr, ptr %i.bo, align 8, !alias.scope !140, !nonnull !8, !noundef !8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.val4.i, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !range !11, !invariant.load !8, !noalias !146
  %i.br = add nsw i64 %i.bq, -1
  %i.bs = and i64 %i.br, -16
  %i.bt = getelementptr inbounds nuw i8, ptr %.val3.i, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = getelementptr i8, ptr %.val4.i, i64 24
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.bv, align 8, !noalias !146
  %i.bw = tail call noundef i32 %.val3.i.i.i.i.i.i(ptr noundef nonnull %i.bu) #17, !noalias !146, !inline_history !149 ; 2 uses
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %_RNCNvMNtCs5zeGauAcNNa_10wasmi_core6memoryNtB4_6Memory4grows_0B6_.exit.i, label %_RNvMs1_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_17FuelCostsProvider21bytes_copied_per_fuel.exit.thread.i.i.i.i

_RNvMs1_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_17FuelCostsProvider21bytes_copied_per_fuel.exit.thread.i.i.i.i: ; preds = %_RNvMs1_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_17FuelCostsProvider21bytes_copied_per_fuel.exit.i.i.i.i, %bb.x
  %.sroa.0.0.i.i3.i.i.i.i = phi i32 [ %i.bw, %_RNvMs1_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_17FuelCostsProvider21bytes_copied_per_fuel.exit.i.i.i.i ], [ 64, %bb.x ]
  %i.by = zext i32 %.sroa.0.0.i.i3.i.i.i.i to i64
  %i.bz = udiv i64 %9, %i.by
  br label %_RNCNvMNtCs5zeGauAcNNa_10wasmi_core6memoryNtB4_6Memory4grows_0B6_.exit.i

_RNCNvMNtCs5zeGauAcNNa_10wasmi_core6memoryNtB4_6Memory4grows_0B6_.exit.i: ; preds = %_RNvMs1_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_17FuelCostsProvider21bytes_copied_per_fuel.exit.thread.i.i.i.i, %_RNvMs1_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_17FuelCostsProvider21bytes_copied_per_fuel.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i = phi i64 [ %i.bz, %_RNvMs1_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_17FuelCostsProvider21bytes_copied_per_fuel.exit.thread.i.i.i.i ], [ -1, %_RNvMs1_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_17FuelCostsProvider21bytes_copied_per_fuel.exit.i.i.i.i ] ; 4 uses
  %i.ca = load i64, ptr %3, align 8, !alias.scope !150, !noalias !153, !noundef !8 ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %.sroa.0.0.i.i.i.i
  br i1 %i.cb, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %_RNCNvMNtCs5zeGauAcNNa_10wasmi_core6memoryNtB4_6Memory4grows_0B6_.exit.i
  %i.cc = sub nuw i64 %i.ca, %.sroa.0.0.i.i.i.i
  store i64 %i.cc, ptr %3, align 8, !alias.scope !150, !noalias !153
  br label %bb.v

bb.z:                                             ; preds = %bb.u
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #19
  unreachable

bb.aa:                                            ; preds = %_RNCNvMNtCs5zeGauAcNNa_10wasmi_core6memoryNtB4_6Memory4grows_0B6_.exit.i
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val41 = load ptr, ptr %i.cd, align 8          ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 8, ptr %i.b, align 8, !noalias !155
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.ce, align 8, !noalias !155
  br i1 %.not, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val41) ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.val41, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !invariant.load !8, !noalias !155, !nonnull !8
  %i.ch = call noundef zeroext i1 %i.cg(ptr noundef nonnull %i.ba, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b) #17, !noalias !155, !inline_history !158
  br i1 %i.ch, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  store i64 8, ptr %0, align 8, !alias.scope !155
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.ci, align 8, !alias.scope !155
  br label %_RNvNvMNtCs5zeGauAcNNa_10wasmi_core6memoryNtB4_6Memory4grow14notify_limiter.exit

bb.ad:                                            ; preds = %bb.ab
  store i64 5, ptr %0, align 8, !alias.scope !155
  br label %_RNvNvMNtCs5zeGauAcNNa_10wasmi_core6memoryNtB4_6Memory4grow14notify_limiter.exit

_RNvNvMNtCs5zeGauAcNNa_10wasmi_core6memoryNtB4_6Memory4grow14notify_limiter.exit: ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.ae:                                            ; preds = %bb.v
  %i.cj = extractvalue { i64, i64 } %i.bi, 1      ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val39 = load ptr, ptr %i.ck, align 8          ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.bj, ptr %i.a, align 8, !noalias !159
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.cj, ptr %i.cl, align 8, !noalias !159
  br i1 %.not, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val39) ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.val39, i64 40
  %i.cn = load ptr, ptr %i.cm, align 8, !invariant.load !8, !noalias !159, !nonnull !8
  %i.co = call noundef zeroext i1 %i.cn(ptr noundef nonnull %i.ba, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) #17, !noalias !159, !inline_history !158
  br i1 %i.co, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  store i64 %i.bj, ptr %0, align 8, !alias.scope !159
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cj, ptr %i.cp, align 8, !alias.scope !159
  br label %_RNvNvMNtCs5zeGauAcNNa_10wasmi_core6memoryNtB4_6Memory4grow14notify_limiter.exit44

bb.ah:                                            ; preds = %bb.af
  store i64 5, ptr %0, align 8, !alias.scope !159
  br label %_RNvNvMNtCs5zeGauAcNNa_10wasmi_core6memoryNtB4_6Memory4grow14notify_limiter.exit44

_RNvNvMNtCs5zeGauAcNNa_10wasmi_core6memoryNtB4_6Memory4grow14notify_limiter.exit44: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.ai:                                            ; preds = %bb.v
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.v, ptr %i.cq, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvMNtCs5zeGauAcNNa_10wasmi_core6memoryNtB2_6Memory4read(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %0, i64 noundef %1, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 {
bb.a:
  %i.a = add i64 %3, %1                           ; 2 uses
  %i.b = icmp ult i64 %i.a, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp ugt i64 %i.a, %i.d
  %or.cond = select i1 %i.b, i1 true, i1 %.not, !prof !162
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !162

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !8, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %1
  tail call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs5zeGauAcNNa_10wasmi_core(ptr noalias nofree noundef nonnull %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ -1, %bb.b ], [ 2, %bb.a ]
  %i.h = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.i = insertvalue { i64, i64 } %i.h, i64 undef, 1
  ret { i64, i64 } %i.i
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvMNtCs5zeGauAcNNa_10wasmi_core6memoryNtB2_6Memory5write(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 {
bb.a:
  %i.a = add i64 %3, %1                           ; 2 uses
  %i.b = icmp ult i64 %i.a, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp ugt i64 %i.a, %i.d
  %or.cond = select i1 %i.b, i1 true, i1 %.not, !prof !162
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !162

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !8, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %1
  tail call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs5zeGauAcNNa_10wasmi_core(ptr noalias nofree noundef nonnull %i.g, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ -1, %bb.b ], [ 2, %bb.a ]
  %i.h = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.i = insertvalue { i64, i64 } %i.h, i64 undef, 1
  ret { i64, i64 } %i.i
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvMs1_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_17FuelCostsProvider22fuel_for_copying_bytes(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !noundef !8  ; 2 uses
  %.not.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i, label %_RNvMs1_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_17FuelCostsProvider21bytes_copied_per_fuel.exit.thread, label %_RNvMs1_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_17FuelCostsProvider21bytes_copied_per_fuel.exit

_RNvMs1_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_17FuelCostsProvider21bytes_copied_per_fuel.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !range !11, !invariant.load !8
  %i.d = add nsw i64 %i.c, -1
  %i.e = and i64 %i.d, -16
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr i8, ptr %.val1, i64 24
  %.val3.i.i = load ptr, ptr %i.h, align 8
  %i.i = tail call noundef i32 %.val3.i.i(ptr noundef nonnull %i.g) #17, !inline_history !163 ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %_RNvMs1_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_17FuelCostsProvider21bytes_copied_per_fuel.exit.thread

bb.b:                                             ; preds = %_RNvMs1_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_17FuelCostsProvider21bytes_copied_per_fuel.exit, %_RNvMs1_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_17FuelCostsProvider21bytes_copied_per_fuel.exit.thread
  %.sroa.0.0 = phi i64 [ %i.l, %_RNvMs1_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_17FuelCostsProvider21bytes_copied_per_fuel.exit.thread ], [ -1, %_RNvMs1_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_17FuelCostsProvider21bytes_copied_per_fuel.exit ]
  ret i64 %.sroa.0.0

_RNvMs1_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_17FuelCostsProvider21bytes_copied_per_fuel.exit.thread: ; preds = %bb.a, %_RNvMs1_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_17FuelCostsProvider21bytes_copied_per_fuel.exit
  %.sroa.0.0.i.i3 = phi i32 [ %i.i, %_RNvMs1_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_17FuelCostsProvider21bytes_copied_per_fuel.exit ], [ 64, %bb.a ]
  %i.k = zext i32 %.sroa.0.0.i.i3 to i64
  %i.l = udiv i64 %1, %i.k
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvMs1_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_17FuelCostsProvider25fuel_for_validating_bytes(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !noundef !8  ; 2 uses
  %.not.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i, label %_RNvMs1_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_17FuelCostsProvider24fuel_per_bytes_validated.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !range !11, !invariant.load !8
  %i.d = add nsw i64 %i.c, -1
  %i.e = and i64 %i.d, -16
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr i8, ptr %.val1, i64 40
  %.val3.i.i = load ptr, ptr %i.h, align 8
  %i.i = tail call noundef i32 %.val3.i.i(ptr noundef nonnull %i.g) #17, !inline_history !164
  %i.j = zext i32 %i.i to i64
  br label %_RNvMs1_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_17FuelCostsProvider24fuel_per_bytes_validated.exit

_RNvMs1_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_17FuelCostsProvider24fuel_per_bytes_validated.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i64 [ %i.j, %bb.b ], [ 2, %bb.a ] ; 2 uses
  %i.k = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %.sroa.0.0.i.i)
  %2 = mul nuw i64 %.sroa.0.0.i.i, %1
  %i.l = extractvalue { i64, i1 } %i.k, 1
  br i1 %i.l, label %bb.c, label %bb.d, !prof !10

bb.c:                                             ; preds = %_RNvMs1_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_17FuelCostsProvider24fuel_per_bytes_validated.exit
  br label %bb.d

bb.d:                                             ; preds = %_RNvMs1_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_17FuelCostsProvider24fuel_per_bytes_validated.exit, %bb.c
  %.sroa.0.0 = phi i64 [ -1, %bb.c ], [ %2, %_RNvMs1_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_17FuelCostsProvider24fuel_per_bytes_validated.exit ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvMs1_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_17FuelCostsProvider26fuel_for_translating_bytes(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !noundef !8  ; 2 uses
  %.not.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i, label %_RNvMs1_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_17FuelCostsProvider25fuel_per_bytes_translated.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !range !11, !invariant.load !8
  %i.d = add nsw i64 %i.c, -1
  %i.e = and i64 %i.d, -16
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr i8, ptr %.val1, i64 32
  %.val3.i.i = load ptr, ptr %i.h, align 8
  %i.i = tail call noundef i32 %.val3.i.i(ptr noundef nonnull %i.g) #17, !inline_history !165
  %i.j = zext i32 %i.i to i64
  br label %_RNvMs1_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_17FuelCostsProvider25fuel_per_bytes_translated.exit

_RNvMs1_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_17FuelCostsProvider25fuel_per_bytes_translated.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i64 [ %i.j, %bb.b ], [ 7, %bb.a ] ; 2 uses
  %i.k = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %.sroa.0.0.i.i)
  %2 = mul nuw i64 %.sroa.0.0.i.i, %1
  %i.l = extractvalue { i64, i1 } %i.k, 1
  br i1 %i.l, label %bb.c, label %bb.d, !prof !10

bb.c:                                             ; preds = %_RNvMs1_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_17FuelCostsProvider25fuel_per_bytes_translated.exit
  br label %bb.d

bb.d:                                             ; preds = %_RNvMs1_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_17FuelCostsProvider25fuel_per_bytes_translated.exit, %bb.c
  %.sroa.0.0 = phi i64 [ -1, %bb.c ], [ %2, %_RNvMs1_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_17FuelCostsProvider25fuel_per_bytes_translated.exit ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvMs1_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_17FuelCostsProvider6custom(ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !166
  %i.a = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef 8) #20, !noalias !166 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #21, !noalias !166
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i64 1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false)
  %i.c = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.d = insertvalue { ptr, ptr } %i.c, ptr @22, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefE6resizeBL_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !8 ; 7 uses
  %i.c = icmp ult i64 %i.b, 2305843009213693952
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ugt i64 %1, %i.b
  br i1 %i.d, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefE8truncateBK_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = sub nuw i64 %1, %i.b                     ; 5 uses
  %i.f = load i64, ptr %0, align 8, !range !60, !alias.scope !169, !noundef !8
  %i.g = sub nsw i64 %i.f, %i.b
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefE7reserveBK_.exit.i, !prof !10

bb.c:                                             ; preds = %bb.b
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5zeGauAcNNa_10wasmi_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %i.e, i64 noundef 4, i64 noundef 4)
  %.pre.i = load i64, ptr %i.a, align 8, !alias.scope !174
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefE7reserveBK_.exit.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefE7reserveBK_.exit.i: ; preds = %bb.c, %bb.b
  %i.i = phi i64 [ %i.b, %bb.b ], [ %.pre.i, %bb.c ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !174, !nonnull !8, !noundef !8
  %i.l = icmp ult i64 %i.i, 2305843009213693952
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.i ; 4 uses
  %i.n = icmp ugt i64 %i.e, 1
  br i1 %i.n, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefE7reserveBK_.exit.i
  %i.o = xor i64 %i.b, -1
  %i.p = add i64 %1, %i.o                         ; 3 uses
  %min.iters.check = icmp ult i64 %i.p, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader6, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.p, -8                       ; 4 uses
  %i.q = shl i64 %n.vec, 2
  %i.r = getelementptr i8, ptr %i.m, i64 %i.q     ; 2 uses
  %i.s = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %2, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.t ; 2 uses
  %i.u = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4
  store <4 x i32> %broadcast.splat, ptr %i.u, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !175

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread.i, label %.lr.ph.i.preheader6

.lr.ph.i.preheader6:                              ; preds = %.lr.ph.i.preheader, %middle.block
  %.sroa.0.022.i.ph = phi ptr [ %i.m, %.lr.ph.i.preheader ], [ %i.r, %middle.block ]
  %.sroa.03.021.i.ph = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.s, %middle.block ]
  br label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %.lr.ph.i, %middle.block
  %.lcssa = phi ptr [ %i.r, %middle.block ], [ %i.aa, %.lr.ph.i ]
  %i.w = add i64 %i.e, -1
  %i.x = add i64 %i.w, %i.i
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefE7reserveBK_.exit.i, %._crit_edge.thread.i
  %.sroa.0.0.lcssa29.i = phi ptr [ %.lcssa, %._crit_edge.thread.i ], [ %i.m, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefE7reserveBK_.exit.i ]
  %storemerge.lcssa28.i = phi i64 [ %i.x, %._crit_edge.thread.i ], [ %i.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefE7reserveBK_.exit.i ]
  store i32 %2, ptr %.sroa.0.0.lcssa29.i, align 4
  %i.y = add i64 %storemerge.lcssa28.i, 1
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefE8truncateBK_.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader6, %.lr.ph.i
  %.sroa.0.022.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %.sroa.0.022.i.ph, %.lr.ph.i.preheader6 ] ; 2 uses
  %.sroa.03.021.i = phi i64 [ %i.z, %.lr.ph.i ], [ %.sroa.03.021.i.ph, %.lr.ph.i.preheader6 ]
  %i.z = add nuw i64 %.sroa.03.021.i, 1           ; 2 uses
  store i32 %2, ptr %.sroa.0.022.i, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i, i64 4 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.z, %i.e
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %.lr.ph.i, !llvm.loop !176

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefE8truncateBK_.exit: ; preds = %._crit_edge.i, %bb.a
  %storemerge = phi i64 [ %1, %bb.a ], [ %i.y, %._crit_edge.i ]
  store i64 %storemerge, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE6resizeCs5zeGauAcNNa_10wasmi_core(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, i8 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !8 ; 6 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ugt i64 %1, %i.b
  br i1 %i.d, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE8truncateCs5zeGauAcNNa_10wasmi_core.exit

bb.b:                                             ; preds = %bb.a
  %i.e = sub nuw i64 %1, %i.b                     ; 4 uses
  %i.f = load i64, ptr %0, align 8, !range !60, !alias.scope !177, !noundef !8
  %i.g = sub nsw i64 %i.f, %i.b
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs5zeGauAcNNa_10wasmi_core.exit.i, !prof !10

bb.c:                                             ; preds = %bb.b
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5zeGauAcNNa_10wasmi_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %i.e, i64 noundef 1, i64 noundef 1)
  %.pre.i = load i64, ptr %i.a, align 8, !alias.scope !182
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs5zeGauAcNNa_10wasmi_core.exit.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs5zeGauAcNNa_10wasmi_core.exit.i: ; preds = %bb.c, %bb.b
  %i.i = phi i64 [ %i.b, %bb.b ], [ %.pre.i, %bb.c ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !182, !nonnull !8, !noundef !8 ; 2 uses
  %i.l = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr i8, ptr %i.k, i64 %i.i     ; 2 uses
  %i.n = icmp ugt i64 %i.e, 1
  br i1 %i.n, label %._crit_edge.thread.i, label %._crit_edge.i

._crit_edge.thread.i:                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs5zeGauAcNNa_10wasmi_core.exit.i
  %i.o = add i64 %i.e, -1                         ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.m, i8 %2, i64 %i.o, i1 false)
  %i.p = add i64 %i.o, %i.i                       ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.k, i64 %i.p
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs5zeGauAcNNa_10wasmi_core.exit.i, %._crit_edge.thread.i
  %.sroa.0.0.lcssa28.i = phi ptr [ %scevgep.i, %._crit_edge.thread.i ], [ %i.m, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs5zeGauAcNNa_10wasmi_core.exit.i ]
  %storemerge.lcssa27.i = phi i64 [ %i.p, %._crit_edge.thread.i ], [ %i.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs5zeGauAcNNa_10wasmi_core.exit.i ]
  store i8 %2, ptr %.sroa.0.0.lcssa28.i, align 1
  %i.q = add i64 %storemerge.lcssa27.i, 1
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE8truncateCs5zeGauAcNNa_10wasmi_core.exit

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE8truncateCs5zeGauAcNNa_10wasmi_core.exit: ; preds = %._crit_edge.i, %bb.a
  %storemerge = phi i64 [ %1, %bb.a ], [ %i.q, %._crit_edge.i ]
  store i64 %storemerge, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef i16 @_RNvMs2_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB5_8FuncType11len_results(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  %i.a = load i8, ptr %0, align 8, !range !4, !alias.scope !183, !noundef !8
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !183, !noundef !8 ; 2 uses
  %i.e = icmp ugt i64 %i.d, 65535
  br i1 %i.e, label %bb.e, label %bb.d, !prof !10

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i8, ptr %i.f, align 2, !alias.scope !183, !noundef !8
  %i.h = zext i8 %i.g to i16
  br label %_RNvMs0_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB5_13FuncTypeInner11len_results.exit
end_hunk_0
