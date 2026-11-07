Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.15?download=true
inline.NumInlined: 862
inline.NumDeleted: 412
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read16append_to_stringNCINvB2_22default_read_to_stringINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0ECsa5QsYiPB8Gl_5image:bb.a
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  %i.e = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.d, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %0, ptr %i.f, align 8
  %.val7 = load i64, ptr %2, align 8, !range !20, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val8 = load i64, ptr %i.g, align 8
  %i.h = invoke { i64, ptr } @_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.val7, i64 %.val8)
          to label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read22default_read_to_stringINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit unwind label %bb.c ; 3 uses

bb.b:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.q, %bb.d ], [ %i.i, %bb.c ]
  invoke void @_RNvXs1_NtNtCsj6eKBz9Db1c_4core3mem10drop_guardINtB5_9DropGuardTjQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENCINvNtNtB16_2io4read16append_to_stringNCINvB1G_22default_read_to_stringINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtB9_2io6cursor6CursorRShEEE0E0ENtNtNtB9_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtB4_3mem10drop_guard9DropGuardTjQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENCINvNtNtB1j_2io4read16append_to_stringNCINvB1T_22default_read_to_stringINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtB4_2io6cursor6CursorRShEEE0E0EECsa5QsYiPB8Gl_5image.exit unwind label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read22default_read_to_stringINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit: ; preds = %bb.a
  %i.j = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.h, 1        ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5
  %i.n = load i64, ptr %i.c, align 8, !noundef !5
  %i.o = sub nuw i64 %i.n, %i.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtCsj6eKBz9Db1c_4core3stre9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef %i.o)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read22default_read_to_stringINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.j, ptr %i.k) #31
          to label %bb.b unwind label %bb.i

bb.e:                                             ; preds = %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read22default_read_to_stringINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit
  %i.r = load i64, ptr %i.a, align 8, !range !20, !noundef !5
  %.not = icmp eq i64 %i.r, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.f, align 8, !nonnull !5, !align !6, !noundef !5
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i64, ptr %i.t, align 8, !noundef !5 ; 2 uses
  %i.v = icmp sgt i64 %i.u, -1
  call void @llvm.assume(i1 %i.v)
  store i64 %i.u, ptr %i.b, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.w = trunc nuw i64 %i.j to i1
  %spec.select = select i1 %i.w, ptr %i.k, ptr @11
  %i.x = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %spec.select, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.merged = phi { i64, ptr } [ %i.x, %bb.g ], [ %i.h, %bb.f ]
  call void @_RNvXs1_NtNtCsj6eKBz9Db1c_4core3mem10drop_guardINtB5_9DropGuardTjQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENCINvNtNtB16_2io4read16append_to_stringNCINvB1G_22default_read_to_stringINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtB9_2io6cursor6CursorRShEEE0E0ENtNtNtB9_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, ptr } %.merged

bb.i:                                             ; preds = %bb.b, %bb.d
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtB4_3mem10drop_guard9DropGuardTjQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENCINvNtNtB1j_2io4read16append_to_stringNCINvB1T_22default_read_to_stringINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtB4_2io6cursor6CursorRShEEE0E0EECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read16append_to_stringNCINvB2_22default_read_to_stringINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB1r_6cursor6CursorRShEEE0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  %i.e = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.d, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %0, ptr %i.f, align 8
  %.val7 = load i64, ptr %2, align 8, !range !20, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val8 = load i64, ptr %i.g, align 8
  %i.h = invoke { i64, ptr } @_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtBY_6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.val7, i64 %.val8)
          to label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read22default_read_to_stringINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB13_6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit unwind label %bb.c ; 3 uses

bb.b:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.q, %bb.d ], [ %i.i, %bb.c ]
  invoke void @_RNvXs1_NtNtCsj6eKBz9Db1c_4core3mem10drop_guardINtB5_9DropGuardTjQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENCINvNtNtB16_2io4read16append_to_stringNCINvB1G_22default_read_to_stringINtNtNtB9_2io4util4TakeQINtNtB2Q_6cursor6CursorRShEEE0E0ENtNtNtB9_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtB4_3mem10drop_guard9DropGuardTjQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENCINvNtNtB1j_2io4read16append_to_stringNCINvB1T_22default_read_to_stringINtNtNtB4_2io4util4TakeQINtNtB33_6cursor6CursorRShEEE0E0EECsa5QsYiPB8Gl_5image.exit unwind label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read22default_read_to_stringINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB13_6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit: ; preds = %bb.a
  %i.j = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.h, 1        ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5
  %i.n = load i64, ptr %i.c, align 8, !noundef !5
  %i.o = sub nuw i64 %i.n, %i.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtCsj6eKBz9Db1c_4core3stre9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef %i.o)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read22default_read_to_stringINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB13_6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.j, ptr %i.k) #31
          to label %bb.b unwind label %bb.i

bb.e:                                             ; preds = %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read22default_read_to_stringINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB13_6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit
  %i.r = load i64, ptr %i.a, align 8, !range !20, !noundef !5
  %.not = icmp eq i64 %i.r, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.f, align 8, !nonnull !5, !align !6, !noundef !5
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i64, ptr %i.t, align 8, !noundef !5 ; 2 uses
  %i.v = icmp sgt i64 %i.u, -1
  call void @llvm.assume(i1 %i.v)
  store i64 %i.u, ptr %i.b, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.w = trunc nuw i64 %i.j to i1
  %spec.select = select i1 %i.w, ptr %i.k, ptr @11
  %i.x = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %spec.select, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.merged = phi { i64, ptr } [ %i.x, %bb.g ], [ %i.h, %bb.f ]
  call void @_RNvXs1_NtNtCsj6eKBz9Db1c_4core3mem10drop_guardINtB5_9DropGuardTjQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENCINvNtNtB16_2io4read16append_to_stringNCINvB1G_22default_read_to_stringINtNtNtB9_2io4util4TakeQINtNtB2Q_6cursor6CursorRShEEE0E0ENtNtNtB9_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, ptr } %.merged

bb.i:                                             ; preds = %bb.b, %bb.d
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtB4_3mem10drop_guard9DropGuardTjQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENCINvNtNtB1j_2io4read16append_to_stringNCINvB1T_22default_read_to_stringINtNtNtB4_2io4util4TakeQINtNtB33_6cursor6CursorRShEEE0E0EECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read16append_to_stringNCINvB2_22default_read_to_stringINtNtNtCsj6eKBz9Db1c_4core2io4util5ChainINtNtB1r_6cursor6CursorRShEINtB1p_4TakeIB2s_QB20_EEEE0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(72) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 9 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %i.f, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %0, ptr %i.h, align 8
  %.val7 = load i64, ptr %2, align 8, !range !20, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val8 = load i64, ptr %i.i, align 8            ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %i.j = load i64, ptr %0, align 8, !range !13, !alias.scope !193, !noundef !5 ; 3 uses
  %i.k = trunc nuw i64 %.val7 to i1               ; 3 uses
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %.val8, -1025
  br i1 %i.l, label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util5ChainINtNtB10_6cursor6CursorRShEINtBY_4TakeIB21_QB1z_EEEE0Csa5QsYiPB8Gl_5image.exit.thread.i.i, label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util5ChainINtNtB10_6cursor6CursorRShEINtBY_4TakeIB21_QB1z_EEEE0Csa5QsYiPB8Gl_5image.exit.i.i, !prof !21

_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util5ChainINtNtB10_6cursor6CursorRShEINtBY_4TakeIB21_QB1z_EEEE0Csa5QsYiPB8Gl_5image.exit.i.i: ; preds = %bb.b
  %i.m = add nuw i64 %.val8, 1024                 ; 3 uses
  %i.n = and i64 %i.m, 8191                       ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  %i.p = sub i64 %.val8, %i.n
  %i.q = add i64 %i.p, 9216                       ; 2 uses
  %3 = icmp uge i64 %i.q, %i.m
  %cond.fr.i.i = freeze i1 %3
  %.sroa.5.1.i.i.i = select i1 %cond.fr.i.i, i64 %i.q, i64 8192
  %.sroa.053.1.i.i = select i1 %i.o, i64 %i.m, i64 %.sroa.5.1.i.i.i ; 2 uses
  %i.r = icmp eq i64 %.val8, 0
  br i1 %i.r, label %bb.c, label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util5ChainINtNtB10_6cursor6CursorRShEINtBY_4TakeIB21_QB1z_EEEE0Csa5QsYiPB8Gl_5image.exit.thread.i.i

bb.c:                                             ; preds = %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util5ChainINtNtB10_6cursor6CursorRShEINtBY_4TakeIB21_QB1z_EEEE0Csa5QsYiPB8Gl_5image.exit.i.i, %bb.a
  %.sroa.053.0.i.i = phi i64 [ %.sroa.053.1.i.i, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util5ChainINtNtB10_6cursor6CursorRShEINtBY_4TakeIB21_QB1z_EEEE0Csa5QsYiPB8Gl_5image.exit.i.i ], [ 8192, %bb.a ] ; 2 uses
  %i.s = sub nsw i64 %i.j, %i.f
  %i.t = icmp ult i64 %i.s, 32
  br i1 %i.t, label %bb.d, label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util5ChainINtNtB10_6cursor6CursorRShEINtBY_4TakeIB21_QB1z_EEEE0Csa5QsYiPB8Gl_5image.exit.thread.i.i

_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util5ChainINtNtB10_6cursor6CursorRShEINtBY_4TakeIB21_QB1z_EEEE0Csa5QsYiPB8Gl_5image.exit.thread.i.i: ; preds = %._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util5ChainINtNtB10_6cursor6CursorRShEINtBY_4TakeIB21_QB1z_EEEE0Csa5QsYiPB8Gl_5image.exit.thread_crit_edge.i.i, %bb.c, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util5ChainINtNtB10_6cursor6CursorRShEINtBY_4TakeIB21_QB1z_EEEE0Csa5QsYiPB8Gl_5image.exit.i.i, %bb.b
  %.pre.i.i = phi i64 [ %.pre.pre.i.i, %._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util5ChainINtNtB10_6cursor6CursorRShEINtBY_4TakeIB21_QB1z_EEEE0Csa5QsYiPB8Gl_5image.exit.thread_crit_edge.i.i ], [ %i.f, %bb.c ], [ %i.f, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util5ChainINtNtB10_6cursor6CursorRShEINtBY_4TakeIB21_QB1z_EEEE0Csa5QsYiPB8Gl_5image.exit.i.i ], [ %i.f, %bb.b ]
  %.sroa.053.2.i.i = phi i64 [ %.sroa.053.0.i.i, %._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util5ChainINtNtB10_6cursor6CursorRShEINtBY_4TakeIB21_QB1z_EEEE0Csa5QsYiPB8Gl_5image.exit.thread_crit_edge.i.i ], [ %.sroa.053.0.i.i, %bb.c ], [ %.sroa.053.1.i.i, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util5ChainINtNtB10_6cursor6CursorRShEINtBY_4TakeIB21_QB1z_EEEE0Csa5QsYiPB8Gl_5image.exit.i.i ], [ 8192, %bb.b ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %.outer.i.i

bb.d:                                             ; preds = %bb.c
  %i.z = invoke fastcc { i64, ptr } @_RINvNvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCsj6eKBz9Db1c_4core2io4util5ChainINtNtB1i_6cursor6CursorRShEINtB1g_4TakeIB2j_QB1R_EEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %bb.d
  %i.aa = extractvalue { i64, ptr } %i.z, 0
  %i.ab = extractvalue { i64, ptr } %i.z, 1       ; 2 uses
  %i.ac = trunc nuw i64 %i.aa to i1
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.noexc
  %i.ad = ptrtoint ptr %i.ab to i64
  br label %.loopexit24

bb.f:                                             ; preds = %.noexc
  %i.ae = icmp eq ptr %i.ab, null
  br i1 %i.ae, label %.loopexit24, label %._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util5ChainINtNtB10_6cursor6CursorRShEINtBY_4TakeIB21_QB1z_EEEE0Csa5QsYiPB8Gl_5image.exit.thread_crit_edge.i.i

._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util5ChainINtNtB10_6cursor6CursorRShEINtBY_4TakeIB21_QB1z_EEEE0Csa5QsYiPB8Gl_5image.exit.thread_crit_edge.i.i: ; preds = %bb.f
  %.pre.pre.i.i = load i64, ptr %i.e, align 8, !alias.scope !193
  br label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util5ChainINtNtB10_6cursor6CursorRShEINtBY_4TakeIB21_QB1z_EEEE0Csa5QsYiPB8Gl_5image.exit.thread.i.i

._crit_edge.i.i:                                  ; preds = %bb.ab, %.outer.i.i
  %.sroa.027.2.lcssa.i.i = phi i64 [ %.sroa.027.2.ph.i.i, %.outer.i.i ], [ %i.co, %bb.ab ]
  %.lcssa88.i.i = phi i64 [ %i.ce, %.outer.i.i ], [ %i.co, %bb.ab ] ; 2 uses
  %.lcssa.i.i = phi i1 [ %i.ch, %.outer.i.i ], [ %i.ct, %bb.ab ]
  br i1 %.lcssa.i.i, label %bb.h, label %bb.g

.lr.ph.i.i:                                       ; preds = %.outer.i.i, %bb.ab
  %i.af = invoke fastcc { i64, ptr } @_RINvNvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCsj6eKBz9Db1c_4core2io4util5ChainINtNtB1i_6cursor6CursorRShEINtB1g_4TakeIB2j_QB1R_EEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc9:                                          ; preds = %.lr.ph.i.i
  %i.ag = extractvalue { i64, ptr } %i.af, 0
  %i.ah = extractvalue { i64, ptr } %i.af, 1      ; 2 uses
  %i.ai = trunc nuw i64 %i.ag to i1
  br i1 %i.ai, label %bb.y, label %bb.z

bb.g:                                             ; preds = %bb.i, %._crit_edge.i.i
  %i.aj = phi i64 [ %i.ap, %bb.i ], [ %.lcssa88.i.i, %._crit_edge.i.i ] ; 7 uses
  %.sroa.027.3.i.i = phi i64 [ %i.ap, %bb.i ], [ %.sroa.027.2.lcssa.i.i, %._crit_edge.i.i ] ; 4 uses
  %i.ak = icmp sgt i64 %i.aj, -1
  call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw i64 %i.aj, 32
  %i.am = icmp ugt i64 %.sroa.027.3.i.i, %i.al
  br i1 %i.am, label %bb.j, label %.thread.i.i

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.an = invoke { i64, i64 } @_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.lcssa88.i.i, i64 noundef 32, i64 noundef 1, i64 noundef 1)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc10:                                         ; preds = %bb.h
  %i.ao = extractvalue { i64, i64 } %i.an, 0
  %.not.i.i = icmp eq i64 %i.ao, -1
  br i1 %.not.i.i, label %bb.i, label %.loopexit24

bb.i:                                             ; preds = %.noexc10
  %i.ap = load i64, ptr %i.e, align 8, !alias.scope !193, !noundef !5 ; 3 uses
  %i.aq = icmp sgt i64 %i.ap, -1
  call void @llvm.assume(i1 %i.aq)
  br label %bb.g

.thread.i.i:                                      ; preds = %bb.g
  %i.ar = load i64, ptr %0, align 8, !range !13, !alias.scope !193, !noundef !5
  %i.as = sub nsw i64 %i.ar, %i.aj
  %..i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.as, i64 %.sroa.053.3.ph.i.i)
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.at = sub nuw i64 %.sroa.027.3.i.i, %i.aj     ; 3 uses
  %.pre153.i.i = load i64, ptr %0, align 8, !range !13, !alias.scope !193
  %.pre156.i.i = sub nsw i64 %.pre153.i.i, %i.aj  ; 2 uses
  %.not60.i.i = icmp ugt i64 %i.at, %.pre156.i.i
  br i1 %.not60.i.i, label %bb.l, label %bb.k, !prof !22

bb.k:                                             ; preds = %bb.j, %.thread.i.i
  %.sroa.034.0164.i.i = phi i64 [ %..i.i.i, %.thread.i.i ], [ %i.at, %bb.j ] ; 3 uses
  %i.au = load ptr, ptr %i.u, align 8, !alias.scope !193, !nonnull !5, !noundef !5
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aj
  %i.aw = add i64 %.sroa.034.0164.i.i, %i.aj
  %.not59.i.i = icmp uge i64 %.sroa.027.3.i.i, %i.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !194
  store ptr %i.av, ptr %i.b, align 8, !noalias !194
  store i64 %.sroa.034.0164.i.i, ptr %i.v, align 8, !noalias !194
  store i64 0, ptr %i.w, align 8, !noalias !194
  %spec.select.i.i = zext i1 %.not59.i.i to i8
  store i8 %spec.select.i.i, ptr %i.x, align 8, !noalias !194
  %i.ax = invoke noundef ptr @_RNvXs1_NtNtCs4wP2HXfJTCR_5alloc2io4utilINtNtNtCsj6eKBz9Db1c_4core2io4util5ChainINtNtBG_6cursor6CursorRShEINtBE_4TakeIB1G_QB1f_EEENtNtB7_4read4Read8read_bufCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc11:                                         ; preds = %bb.k
  %.not61118.i.i = icmp eq ptr %i.ax, null
  br i1 %.not61118.i.i, label %.split81._crit_edge.i.i, label %.lr.ph121.i.i

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.at, i64 noundef %.pre156.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #28
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc12:                                         ; preds = %bb.l
  unreachable

.lr.ph121.i.i:                                    ; preds = %.noexc11, %.noexc14
  %i.ay = phi ptr [ %i.ca, %.noexc14 ], [ %i.ax, %.noexc11 ] ; 6 uses
  %i.az = ptrtoint ptr %i.ay to i64               ; 8 uses
  %i.ba = and i64 %i.az, 3
  switch i64 %i.ba, label %default.unreachable [
    i64 2, label %bb.m
    i64 3, label %.split80.i.i
    i64 0, label %.split81.i.i
    i64 1, label %.split.i.i
  ], !prof !16

default.unreachable:                              ; preds = %.lr.ph121.i.i
  unreachable

bb.m:                                             ; preds = %.lr.ph121.i.i
  %i.bb = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.i.i unwind label %bb.p

.noexc.i.i:                                       ; preds = %bb.m
  %i.bc = lshr i64 %i.az, 32
  %i.bd = trunc nuw i64 %i.bc to i32
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !5, !noundef !5
  %i.bg = invoke noundef zeroext i1 %i.bf(i32 noundef %i.bd)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i unwind label %bb.p, !inline_history !0

.split80.i.i:                                     ; preds = %.lr.ph121.i.i
  %i.bh = lshr i64 %i.az, 32
  %i.bi = icmp ult ptr %i.ay, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.i.i = trunc i64 %i.bh to i8
  %spec.select.i.i.i.i.i = select i1 %i.bi, i8 %switch.idx.cast.i.i.i.i.i, i8 -1 ; 2 uses
  %i.bj = icmp ne i8 %spec.select.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.bj)
  %i.bk = icmp eq i8 %spec.select.i.i.i.i.i, 35
  br i1 %i.bk, label %bb.n, label %.split81._crit_edge.i.i

.split81.i.i:                                     ; preds = %.lr.ph121.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bm = load i8, ptr %i.bl, align 8, !range !23, !noundef !5
  %i.bn = icmp eq i8 %i.bm, 35
  br i1 %i.bn, label %.thread83.i.i, label %.split81._crit_edge.i.i

.split.i.i:                                       ; preds = %.lr.ph121.i.i
  %i.bo = getelementptr i8, ptr %i.ay, i64 31
  %i.bp = load i8, ptr %i.bo, align 8, !range !23, !noundef !5
  %i.bq = icmp eq i8 %i.bp, 35
  br i1 %i.bq, label %bb.o, label %.split81._crit_edge.i.i

.split81._crit_edge.i.i:                          ; preds = %.split80.i.i, %.split81.i.i, %.split.i.i, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i, %.noexc14, %.noexc11
  %.lcssa100.i.i = phi i64 [ 0, %.noexc11 ], [ %i.az, %.split80.i.i ], [ %i.az, %.split81.i.i ], [ %i.az, %.split.i.i ], [ %i.az, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i ], [ 0, %.noexc14 ]
  %.not61.lcssa.i.i = phi i1 [ true, %.noexc11 ], [ false, %.split80.i.i ], [ false, %.split81.i.i ], [ false, %.split.i.i ], [ false, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i ], [ true, %.noexc14 ]
  %i.br = load i64, ptr %i.w, align 8, !noalias !194, !noundef !5 ; 3 uses
  %i.bs = load i8, ptr %i.x, align 8, !range !10, !noalias !194, !noundef !5
  %i.bt = trunc nuw i8 %i.bs to i1                ; 2 uses
  %.pre154.i.i = load i64, ptr %i.e, align 8, !alias.scope !193 ; 3 uses
  %i.bu = add i64 %.pre154.i.i, %.sroa.034.0164.i.i
  %spec.select178.i.i = select i1 %i.bt, i64 %i.bu, i64 %.sroa.027.3.i.i
  %i.bv = icmp sgt i64 %.pre154.i.i, -1
  call void @llvm.assume(i1 %i.bv)
  %i.bw = add i64 %.pre154.i.i, %i.br             ; 3 uses
  store i64 %i.bw, ptr %i.e, align 8, !alias.scope !193
  br i1 %.not61.lcssa.i.i, label %bb.r, label %.loopexit165.i.i

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i: ; preds = %.noexc.i.i
  br i1 %i.bg, label %.thread83.i.i, label %.split81._crit_edge.i.i

.thread83.i.i:                                    ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i, %.split81.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !194
  br label %.noexc13

bb.n:                                             ; preds = %.split80.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !194
  %i.bx = and i64 %i.az, 1095216660480
  %i.by = icmp ne i64 %i.bx, 1095216660480
  call void @llvm.assume(i1 %i.bi)
  call void @llvm.assume(i1 %i.by)
  br label %.noexc13

bb.o:                                             ; preds = %.split.i.i
end_hunk_0
begin_hunk_1_@_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read18default_read_exactINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtBX_6cursor6CursorRShEEECsa5QsYiPB8Gl_5image:bb.a
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit

bb.j:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ag = getelementptr i8, ptr %i.f, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  store ptr %i.ag, ptr %i.c, align 8, !alias.scope !225
  store i8 3, ptr %i.a, align 8, !alias.scope !225
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit: ; preds = %.thread.thread, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit
  %.sroa.0.120 = phi ptr [ %.sroa.0.041, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit ], [ %i.ac, %bb.h ]
  %.sroa.7.118 = phi i64 [ %.sroa.7.040, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit ], [ %i.ab, %bb.h ] ; 2 uses
  %i.ah = icmp eq i64 %.sroa.7.118, 0
  br i1 %i.ah, label %._crit_edge, label %bb.b

bb.l:                                             ; preds = %.noexc, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image(ptr nonnull %i.f) #31
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  resume { ptr, i32 } %lpad.thr_comm

bb.n:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read18default_read_exactINtNtNtCsj6eKBz9Db1c_4core2io4util5ChainINtNtBX_6cursor6CursorRShEINtBV_4TakeIB1X_QB1w_EEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(72) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.sroa.0.041 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.120, %bb.k ] ; 3 uses
  %.sroa.7.040 = phi i64 [ %2, %.lr.ph ], [ %.sroa.7.118, %bb.k ] ; 6 uses
  %i.d = call { i64, ptr } @_RNvXs1_NtNtCs4wP2HXfJTCR_5alloc2io4utilINtNtNtCsj6eKBz9Db1c_4core2io4util5ChainINtNtBG_6cursor6CursorRShEINtBE_4TakeIB1G_QB1f_EEENtNtB7_4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, ptr noalias nofree noundef nonnull %.sroa.0.041, i64 noundef %.sroa.7.040) ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0
  %i.f = extractvalue { i64, ptr } %i.d, 1        ; 13 uses
  %i.g = ptrtoint ptr %i.f to i64                 ; 8 uses
  %i.h = trunc nuw i64 %i.e to i1
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.i = and i64 %i.g, 3
  switch i64 %i.i, label %default.unreachable [
    i64 2, label %bb.d
    i64 3, label %.split27
    i64 0, label %.split28
    i64 1, label %.split
  ], !prof !16

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.d
  %i.k = lshr i64 %i.g, 32
  %i.l = trunc nuw i64 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5
  %i.o = invoke noundef zeroext i1 %i.n(i32 noundef %i.l)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.l, !inline_history !0

.split27:                                         ; preds = %bb.c
  %i.p = lshr i64 %i.g, 32
  %i.q = icmp ult ptr %i.f, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.p to i8
  %spec.select.i.i.i = select i1 %i.q, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.r = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.r)
  %i.s = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.s, label %bb.i, label %._crit_edge

.split28:                                         ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.u = load i8, ptr %i.t, align 8, !range !23, !noundef !5
  %i.v = icmp eq i8 %i.u, 35
  br i1 %i.v, label %.thread.thread, label %._crit_edge

.split:                                           ; preds = %bb.c
  %i.w = getelementptr i8, ptr %i.f, i64 31
  %i.x = load i8, ptr %i.w, align 8, !range !23, !noundef !5
  %i.y = icmp eq i8 %i.x, 35
  br i1 %i.y, label %bb.j, label %._crit_edge

bb.e:                                             ; preds = %bb.b
  %i.z = icmp eq ptr %i.f, null
  br i1 %i.z, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = icmp ult i64 %.sroa.7.040, %i.g
  br i1 %i.aa, label %bb.g, label %bb.h, !prof !21

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.g, i64 noundef %.sroa.7.040, i64 noundef %.sroa.7.040, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #32
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ab = sub nuw nsw i64 %.sroa.7.040, %i.g
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.041, i64 %i.g
  br label %bb.k

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.o, label %.thread.thread, label %._crit_edge

._crit_edge:                                      ; preds = %.split28, %.split27, %.split, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit, %bb.e, %bb.k, %bb.a
  %.sroa.09.0 = phi ptr [ null, %bb.a ], [ @18, %bb.e ], [ %i.f, %.split27 ], [ %i.f, %.split ], [ %i.f, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ null, %bb.k ], [ %i.f, %.split28 ]
  ret ptr %.sroa.09.0

.thread.thread:                                   ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit

bb.i:                                             ; preds = %.split27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ad = icmp ult ptr %i.f, inttoptr (i64 188978561024 to ptr)
  %i.ae = and i64 %i.g, 1095216660480
  %i.af = icmp ne i64 %i.ae, 1095216660480
  call void @llvm.assume(i1 %i.ad)
  call void @llvm.assume(i1 %i.af)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit

bb.j:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ag = getelementptr i8, ptr %i.f, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  store ptr %i.ag, ptr %i.c, align 8, !alias.scope !228
  store i8 3, ptr %i.a, align 8, !alias.scope !228
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit: ; preds = %.thread.thread, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit
  %.sroa.0.120 = phi ptr [ %.sroa.0.041, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit ], [ %i.ac, %bb.h ]
  %.sroa.7.118 = phi i64 [ %.sroa.7.040, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit ], [ %i.ab, %bb.h ] ; 2 uses
  %i.ah = icmp eq i64 %.sroa.7.118, 0
  br i1 %i.ah, label %._crit_edge, label %bb.b

bb.l:                                             ; preds = %.noexc, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image(ptr nonnull %i.f) #31
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  resume { ptr, i32 } %lpad.thr_comm

bb.n:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12Group4ReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(168) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 8 uses
  %i.e = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = load i64, ptr %1, align 8, !range !13, !noundef !5 ; 3 uses
  %i.g = trunc nuw i64 %2 to i1                   ; 3 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %3, -1025
  br i1 %i.h, label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12Group4ReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread, label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12Group4ReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit, !prof !21

_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12Group4ReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit: ; preds = %bb.b
  %i.i = add nuw i64 %3, 1024                     ; 3 uses
  %i.j = and i64 %i.i, 8191                       ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = sub i64 %3, %i.j
  %i.m = add i64 %i.l, 9216                       ; 2 uses
  %4 = icmp uge i64 %i.m, %i.i
  %cond.fr = freeze i1 %4
  %.sroa.5.1.i = select i1 %cond.fr, i64 %i.m, i64 8192
  %.sroa.053.1 = select i1 %i.k, i64 %i.i, i64 %.sroa.5.1.i ; 2 uses
  %i.n = icmp eq i64 %3, 0
  br i1 %i.n, label %bb.c, label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12Group4ReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread

bb.c:                                             ; preds = %bb.a, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12Group4ReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit
  %.sroa.053.0 = phi i64 [ %.sroa.053.1, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12Group4ReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit ], [ 8192, %bb.a ] ; 2 uses
  %i.o = sub nsw i64 %i.f, %i.d
  %i.p = icmp ult i64 %i.o, 32
  br i1 %i.p, label %bb.d, label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12Group4ReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread

_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12Group4ReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread: ; preds = %._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12Group4ReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12Group4ReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12Group4ReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread_crit_edge ], [ %i.d, %bb.c ], [ %i.d, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12Group4ReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit ], [ %i.d, %bb.b ]
  %.sroa.053.2 = phi i64 [ %.sroa.053.0, %._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12Group4ReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread_crit_edge ], [ %.sroa.053.0, %bb.c ], [ %.sroa.053.1, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12Group4ReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit ], [ 8192, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %.outer

bb.d:                                             ; preds = %bb.c
  %i.v = tail call fastcc { i64, ptr } @_RINvNvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12Group4ReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(168) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.v, 0
  %i.x = extractvalue { i64, ptr } %i.v, 1        ; 2 uses
  %i.y = trunc nuw i64 %i.w to i1
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = ptrtoint ptr %i.x to i64
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.aa = icmp eq ptr %i.x, null
  br i1 %i.aa, label %.loopexit, label %._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12Group4ReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread_crit_edge

._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12Group4ReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread_crit_edge: ; preds = %bb.f
  %.pre.pre = load i64, ptr %i.c, align 8
  br label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12Group4ReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread

._crit_edge:                                      ; preds = %bb.ad, %.outer
  %.sroa.027.2.lcssa = phi i64 [ %.sroa.027.2.ph, %.outer ], [ %i.co, %bb.ad ]
  %.lcssa88 = phi i64 [ %i.cb, %.outer ], [ %i.co, %bb.ad ] ; 2 uses
  %.lcssa = phi i1 [ %i.ce, %.outer ], [ %i.ct, %bb.ad ]
  br i1 %.lcssa, label %bb.h, label %bb.g

.lr.ph:                                           ; preds = %.outer, %bb.ad
  %i.ab = call fastcc { i64, ptr } @_RINvNvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12Group4ReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(168) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) ; 2 uses
  %i.ac = extractvalue { i64, ptr } %i.ab, 0
  %i.ad = extractvalue { i64, ptr } %i.ab, 1      ; 2 uses
  %i.ae = trunc nuw i64 %i.ac to i1
  br i1 %i.ae, label %bb.aa, label %bb.ab

bb.g:                                             ; preds = %bb.i, %._crit_edge
  %i.af = phi i64 [ %i.al, %bb.i ], [ %.lcssa88, %._crit_edge ] ; 7 uses
  %.sroa.027.3 = phi i64 [ %i.al, %bb.i ], [ %.sroa.027.2.lcssa, %._crit_edge ] ; 4 uses
  %i.ag = icmp sgt i64 %i.af, -1
  call void @llvm.assume(i1 %i.ag)
  %i.ah = add nuw i64 %i.af, 32
  %i.ai = icmp ugt i64 %.sroa.027.3, %i.ah
  br i1 %i.ai, label %bb.j, label %.thread

bb.h:                                             ; preds = %._crit_edge
  %i.aj = call { i64, i64 } @_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.lcssa88, i64 noundef 32, i64 noundef 1, i64 noundef 1)
  %i.ak = extractvalue { i64, i64 } %i.aj, 0
  %.not = icmp eq i64 %i.ak, -1
  br i1 %.not, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.al = load i64, ptr %i.c, align 8, !noundef !5 ; 3 uses
  %i.am = icmp sgt i64 %i.al, -1
  call void @llvm.assume(i1 %i.am)
  br label %bb.g

.thread:                                          ; preds = %bb.g
  %i.an = load i64, ptr %1, align 8, !range !13, !noundef !5
  %i.ao = sub nsw i64 %i.an, %i.af
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.ao, i64 %.sroa.053.3.ph)
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.ap = sub nuw i64 %.sroa.027.3, %i.af         ; 3 uses
  %.pre153 = load i64, ptr %1, align 8, !range !13
  %.pre156 = sub nsw i64 %.pre153, %i.af          ; 2 uses
  %.not60 = icmp ugt i64 %i.ap, %.pre156
  br i1 %.not60, label %bb.l, label %bb.k, !prof !22

bb.k:                                             ; preds = %.thread, %bb.j
  %.sroa.034.0164 = phi i64 [ %..i, %.thread ], [ %i.ap, %bb.j ] ; 3 uses
  %i.aq = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.af
  %i.as = add i64 %.sroa.034.0164, %i.af
  %.not59 = icmp uge i64 %.sroa.027.3, %i.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.ar, ptr %i.b, align 8
  store i64 %.sroa.034.0164, ptr %i.r, align 8
  store i64 0, ptr %i.s, align 8
  %spec.select = zext i1 %.not59 to i8
  store i8 %spec.select, ptr %i.t, align 8
  %i.at = call noundef ptr @_RNvYINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12Group4ReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) ; 2 uses
  %.not61118 = icmp eq ptr %i.at, null
  br i1 %.not61118, label %.split81._crit_edge, label %.lr.ph121

bb.l:                                             ; preds = %bb.j
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ap, i64 noundef %.pre156, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #28
  unreachable

.lr.ph121:                                        ; preds = %bb.k, %bb.p
  %i.au = phi ptr [ %i.bx, %bb.p ], [ %i.at, %bb.k ] ; 10 uses
  %i.av = ptrtoint ptr %i.au to i64               ; 4 uses
  %i.aw = and i64 %i.av, 3
  switch i64 %i.aw, label %default.unreachable [
    i64 2, label %bb.m
    i64 3, label %.split80
    i64 0, label %.split81
    i64 1, label %.split
  ], !prof !16

default.unreachable:                              ; preds = %.lr.ph121
  unreachable

bb.m:                                             ; preds = %.lr.ph121
  %i.ax = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.m
  %i.ay = lshr i64 %i.av, 32
  %i.az = trunc nuw i64 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !5, !noundef !5
  %i.bc = invoke noundef zeroext i1 %i.bb(i32 noundef %i.az)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.r, !inline_history !0

.split80:                                         ; preds = %.lr.ph121
  %i.bd = lshr i64 %i.av, 32
  %i.be = icmp ult ptr %i.au, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.bd to i8
  %spec.select.i.i.i = select i1 %i.be, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.bf = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.bf)
  %i.bg = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.bg, label %bb.n, label %.split81._crit_edge.loopexit

.split81:                                         ; preds = %.lr.ph121
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.bi = load i8, ptr %i.bh, align 8, !range !23, !noundef !5
  %i.bj = icmp eq i8 %i.bi, 35
  br i1 %i.bj, label %.thread83, label %.split81._crit_edge.loopexit

.split:                                           ; preds = %.lr.ph121
  %i.bk = getelementptr i8, ptr %i.au, i64 31
  %i.bl = load i8, ptr %i.bk, align 8, !range !23, !noundef !5
  %i.bm = icmp eq i8 %i.bl, 35
  br i1 %i.bm, label %bb.o, label %.split81._crit_edge.loopexit

.split81._crit_edge.loopexit:                     ; preds = %.split81, %.split80, %.split, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit, %bb.p
  %.lcssa100.ph = phi ptr [ null, %bb.p ], [ %i.au, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ %i.au, %.split ], [ %i.au, %.split80 ], [ %i.au, %.split81 ]
  %.not61.lcssa.ph = phi i1 [ true, %bb.p ], [ false, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ false, %.split ], [ false, %.split80 ], [ false, %.split81 ]
  %i.bn = ptrtoint ptr %.lcssa100.ph to i64
  br label %.split81._crit_edge

.split81._crit_edge:                              ; preds = %.split81._crit_edge.loopexit, %bb.k
  %.lcssa100 = phi i64 [ 0, %bb.k ], [ %i.bn, %.split81._crit_edge.loopexit ]
  %.not61.lcssa = phi i1 [ true, %bb.k ], [ %.not61.lcssa.ph, %.split81._crit_edge.loopexit ]
  %i.bo = load i64, ptr %i.s, align 8, !noundef !5 ; 3 uses
  %i.bp = load i8, ptr %i.t, align 8, !range !10, !noundef !5
  %i.bq = trunc nuw i8 %i.bp to i1                ; 2 uses
  %.pre154 = load i64, ptr %i.c, align 8          ; 3 uses
  %i.br = add i64 %.pre154, %.sroa.034.0164
  %spec.select178 = select i1 %i.bq, i64 %i.br, i64 %.sroa.027.3
  %i.bs = icmp sgt i64 %.pre154, -1
  call void @llvm.assume(i1 %i.bs)
  %i.bt = add i64 %.pre154, %i.bo                 ; 3 uses
  store i64 %i.bt, ptr %i.c, align 8
  br i1 %.not61.lcssa, label %bb.t, label %.loopexit165

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.bc, label %.thread83, label %.split81._crit_edge.loopexit

.thread83:                                        ; preds = %.split81, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.p

bb.n:                                             ; preds = %.split80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bu = and i64 %i.av, 1095216660480
  %i.bv = icmp ne i64 %i.bu, 1095216660480
  call void @llvm.assume(i1 %i.be)
  call void @llvm.assume(i1 %i.bv)
  br label %bb.p

bb.o:                                             ; preds = %.split
  %i.bw = getelementptr i8, ptr %i.au, i64 -1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bw) ]
  store ptr %i.bw, ptr %i.u, align 8, !alias.scope !231
  store i8 3, ptr %i.a, align 8, !alias.scope !231
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %.thread83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bx = call noundef ptr @_RNvYINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12Group4ReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) ; 2 uses
  %.not61 = icmp eq ptr %i.bx, null
  br i1 %.not61, label %.split81._crit_edge.loopexit, label %.lr.ph121

bb.q:                                             ; preds = %bb.r
  resume { ptr, i32 } %lpad.thr_comm

bb.r:                                             ; preds = %.noexc, %bb.m
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image(ptr nonnull %i.au) #31
          to label %bb.q unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.t:                                             ; preds = %.split81._crit_edge
  %i.bz = icmp eq i64 %i.bo, 0
  br i1 %i.bz, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ca = sub nsw i64 %i.bt, %i.d
  br label %.loopexit165

bb.v:                                             ; preds = %bb.t
  %.not64 = xor i1 %i.bq, true
  %brmerge = or i1 %i.g, %.not64
  %.sroa.053.3.mux = select i1 %i.g, i64 %.sroa.053.3.ph, i64 -1
  br i1 %brmerge, label %bb.w, label %bb.x

.loopexit165:                                     ; preds = %.split81._crit_edge, %bb.u
  %.sroa.8.0 = phi i64 [ %i.ca, %bb.u ], [ %.lcssa100, %.split81._crit_edge ]
  %.sroa.07.0 = phi i64 [ 0, %bb.u ], [ 1, %.split81._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.w:                                             ; preds = %bb.v, %bb.z, %bb.y, %bb.x
  %.sroa.053.4 = phi i64 [ -1, %bb.z ], [ %i.ch, %bb.y ], [ %.sroa.053.3.ph, %bb.x ], [ %.sroa.053.3.mux, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.outer

.outer:                                           ; preds = %bb.w, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12Group4ReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread
  %i.cb = phi i64 [ %i.bt, %bb.w ], [ %.pre, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12Group4ReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread ] ; 2 uses
  %.sroa.053.3.ph = phi i64 [ %.sroa.053.4, %bb.w ], [ %.sroa.053.2, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12Group4ReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread ] ; 6 uses
  %.sroa.027.2.ph = phi i64 [ %spec.select178, %bb.w ], [ %i.d, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12Group4ReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread ]
  %i.cc = load i64, ptr %1, align 8, !range !13, !noundef !5 ; 2 uses
  %i.cd = sub i64 %i.cc, %i.cb
  %i.ce = icmp ult i64 %i.cd, 32                  ; 2 uses
  %i.cf = icmp eq i64 %i.cc, %i.f
  %or.cond63115 = and i1 %i.cf, %i.ce
  br i1 %or.cond63115, label %.lr.ph, label %._crit_edge

bb.x:                                             ; preds = %bb.v
  %i.cg = icmp eq i64 %i.bo, %.sroa.053.3.ph
  br i1 %i.cg, label %bb.y, label %bb.w

bb.y:                                             ; preds = %bb.x
  %i.ch = shl nuw i64 %.sroa.053.3.ph, 1
  %i.ci = icmp slt i64 %.sroa.053.3.ph, 0
  br i1 %i.ci, label %bb.z, label %bb.w, !prof !21

bb.z:                                             ; preds = %bb.y
  br label %bb.w

.loopexit:                                        ; preds = %bb.h, %bb.f, %bb.aa, %bb.ac, %bb.e, %.loopexit165
  %.sroa.8.1 = phi i64 [ %i.z, %bb.e ], [ %.sroa.8.0, %.loopexit165 ], [ %i.cm, %bb.aa ], [ %i.cq, %bb.ac ], [ 0, %bb.f ], [ 163208757251, %bb.h ]
  %.sroa.07.1 = phi i64 [ 1, %bb.e ], [ %.sroa.07.0, %.loopexit165 ], [ 1, %bb.aa ], [ 0, %bb.ac ], [ 0, %bb.f ], [ 1, %bb.h ]
  %i.cj = inttoptr i64 %.sroa.8.1 to ptr
  %i.ck = insertvalue { i64, ptr } poison, i64 %.sroa.07.1, 0
  %i.cl = insertvalue { i64, ptr } %i.ck, ptr %i.cj, 1
  ret { i64, ptr } %i.cl

bb.aa:                                            ; preds = %.lr.ph
  %i.cm = ptrtoint ptr %i.ad to i64
  br label %.loopexit

bb.ab:                                            ; preds = %.lr.ph
  %i.cn = icmp eq ptr %i.ad, null
  %i.co = load i64, ptr %i.c, align 8, !noundef !5 ; 5 uses
  %i.cp = icmp sgt i64 %i.co, -1
  call void @llvm.assume(i1 %i.cp)
  br i1 %i.cn, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cq = sub nsw i64 %i.co, %i.d
  br label %.loopexit

bb.ad:                                            ; preds = %bb.ab
  %i.cr = load i64, ptr %1, align 8, !range !13, !noundef !5 ; 2 uses
  %i.cs = sub nsw i64 %i.cr, %i.co
  %i.ct = icmp ult i64 %i.cs, 32                  ; 2 uses
  %i.cu = icmp eq i64 %i.cr, %i.f
  %or.cond63 = and i1 %i.cu, %i.ct
  br i1 %or.cond63, label %.lr.ph, label %._crit_edge
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream14PackBitsReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 8 uses
  %i.e = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = load i64, ptr %1, align 8, !range !13, !noundef !5 ; 3 uses
  %i.g = trunc nuw i64 %2 to i1                   ; 3 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %3, -1025
  br i1 %i.h, label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream14PackBitsReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread, label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream14PackBitsReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit, !prof !21

_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream14PackBitsReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit: ; preds = %bb.b
  %i.i = add nuw i64 %3, 1024                     ; 3 uses
  %i.j = and i64 %i.i, 8191                       ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = sub i64 %3, %i.j
  %i.m = add i64 %i.l, 9216                       ; 2 uses
  %4 = icmp uge i64 %i.m, %i.i
  %cond.fr = freeze i1 %4
  %.sroa.5.1.i = select i1 %cond.fr, i64 %i.m, i64 8192
  %.sroa.053.1 = select i1 %i.k, i64 %i.i, i64 %.sroa.5.1.i ; 2 uses
  %i.n = icmp eq i64 %3, 0
  br i1 %i.n, label %bb.c, label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream14PackBitsReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread

bb.c:                                             ; preds = %bb.a, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream14PackBitsReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit
  %.sroa.053.0 = phi i64 [ %.sroa.053.1, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream14PackBitsReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit ], [ 8192, %bb.a ] ; 2 uses
  %i.o = sub nsw i64 %i.f, %i.d
  %i.p = icmp ult i64 %i.o, 32
  br i1 %i.p, label %bb.d, label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream14PackBitsReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread

_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream14PackBitsReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread: ; preds = %._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream14PackBitsReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream14PackBitsReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream14PackBitsReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread_crit_edge ], [ %i.d, %bb.c ], [ %i.d, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream14PackBitsReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit ], [ %i.d, %bb.b ]
  %.sroa.053.2 = phi i64 [ %.sroa.053.0, %._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream14PackBitsReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread_crit_edge ], [ %.sroa.053.0, %bb.c ], [ %.sroa.053.1, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream14PackBitsReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit ], [ 8192, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %.outer

bb.d:                                             ; preds = %bb.c
  %i.v = tail call fastcc { i64, ptr } @_RINvNvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCs53gkmrwjETj_4tiff7decoder6stream14PackBitsReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.v, 0
  %i.x = extractvalue { i64, ptr } %i.v, 1        ; 2 uses
  %i.y = trunc nuw i64 %i.w to i1
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = ptrtoint ptr %i.x to i64
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.aa = icmp eq ptr %i.x, null
  br i1 %i.aa, label %.loopexit, label %._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream14PackBitsReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread_crit_edge

._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream14PackBitsReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread_crit_edge: ; preds = %bb.f
  %.pre.pre = load i64, ptr %i.c, align 8
  br label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream14PackBitsReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread

._crit_edge:                                      ; preds = %bb.ad, %.outer
  %.sroa.027.2.lcssa = phi i64 [ %.sroa.027.2.ph, %.outer ], [ %i.co, %bb.ad ]
  %.lcssa88 = phi i64 [ %i.cb, %.outer ], [ %i.co, %bb.ad ] ; 2 uses
  %.lcssa = phi i1 [ %i.ce, %.outer ], [ %i.ct, %bb.ad ]
  br i1 %.lcssa, label %bb.h, label %bb.g

.lr.ph:                                           ; preds = %.outer, %bb.ad
  %i.ab = call fastcc { i64, ptr } @_RINvNvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCs53gkmrwjETj_4tiff7decoder6stream14PackBitsReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) ; 2 uses
  %i.ac = extractvalue { i64, ptr } %i.ab, 0
  %i.ad = extractvalue { i64, ptr } %i.ab, 1      ; 2 uses
  %i.ae = trunc nuw i64 %i.ac to i1
  br i1 %i.ae, label %bb.aa, label %bb.ab

bb.g:                                             ; preds = %bb.i, %._crit_edge
  %i.af = phi i64 [ %i.al, %bb.i ], [ %.lcssa88, %._crit_edge ] ; 7 uses
  %.sroa.027.3 = phi i64 [ %i.al, %bb.i ], [ %.sroa.027.2.lcssa, %._crit_edge ] ; 4 uses
  %i.ag = icmp sgt i64 %i.af, -1
  call void @llvm.assume(i1 %i.ag)
  %i.ah = add nuw i64 %i.af, 32
  %i.ai = icmp ugt i64 %.sroa.027.3, %i.ah
  br i1 %i.ai, label %bb.j, label %.thread

bb.h:                                             ; preds = %._crit_edge
  %i.aj = call { i64, i64 } @_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.lcssa88, i64 noundef 32, i64 noundef 1, i64 noundef 1)
  %i.ak = extractvalue { i64, i64 } %i.aj, 0
  %.not = icmp eq i64 %i.ak, -1
  br i1 %.not, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.al = load i64, ptr %i.c, align 8, !noundef !5 ; 3 uses
  %i.am = icmp sgt i64 %i.al, -1
  call void @llvm.assume(i1 %i.am)
  br label %bb.g

.thread:                                          ; preds = %bb.g
  %i.an = load i64, ptr %1, align 8, !range !13, !noundef !5
  %i.ao = sub nsw i64 %i.an, %i.af
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.ao, i64 %.sroa.053.3.ph)
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.ap = sub nuw i64 %.sroa.027.3, %i.af         ; 3 uses
  %.pre153 = load i64, ptr %1, align 8, !range !13
  %.pre156 = sub nsw i64 %.pre153, %i.af          ; 2 uses
  %.not60 = icmp ugt i64 %i.ap, %.pre156
  br i1 %.not60, label %bb.l, label %bb.k, !prof !22

bb.k:                                             ; preds = %.thread, %bb.j
  %.sroa.034.0164 = phi i64 [ %..i, %.thread ], [ %i.ap, %bb.j ] ; 3 uses
  %i.aq = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.af
  %i.as = add i64 %.sroa.034.0164, %i.af
  %.not59 = icmp uge i64 %.sroa.027.3, %i.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.ar, ptr %i.b, align 8
  store i64 %.sroa.034.0164, ptr %i.r, align 8
  store i64 0, ptr %i.s, align 8
  %spec.select = zext i1 %.not59 to i8
  store i8 %spec.select, ptr %i.t, align 8
  %i.at = call noundef ptr @_RNvYINtNtNtCs53gkmrwjETj_4tiff7decoder6stream14PackBitsReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) ; 2 uses
  %.not61118 = icmp eq ptr %i.at, null
  br i1 %.not61118, label %.split81._crit_edge, label %.lr.ph121

bb.l:                                             ; preds = %bb.j
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ap, i64 noundef %.pre156, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #28
  unreachable

.lr.ph121:                                        ; preds = %bb.k, %bb.p
  %i.au = phi ptr [ %i.bx, %bb.p ], [ %i.at, %bb.k ] ; 10 uses
  %i.av = ptrtoint ptr %i.au to i64               ; 4 uses
  %i.aw = and i64 %i.av, 3
  switch i64 %i.aw, label %default.unreachable [
    i64 2, label %bb.m
    i64 3, label %.split80
    i64 0, label %.split81
    i64 1, label %.split
  ], !prof !16

default.unreachable:                              ; preds = %.lr.ph121
  unreachable

bb.m:                                             ; preds = %.lr.ph121
  %i.ax = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.m
  %i.ay = lshr i64 %i.av, 32
  %i.az = trunc nuw i64 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !5, !noundef !5
  %i.bc = invoke noundef zeroext i1 %i.bb(i32 noundef %i.az)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.r, !inline_history !0

.split80:                                         ; preds = %.lr.ph121
  %i.bd = lshr i64 %i.av, 32
  %i.be = icmp ult ptr %i.au, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.bd to i8
  %spec.select.i.i.i = select i1 %i.be, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.bf = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.bf)
  %i.bg = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.bg, label %bb.n, label %.split81._crit_edge.loopexit

.split81:                                         ; preds = %.lr.ph121
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.bi = load i8, ptr %i.bh, align 8, !range !23, !noundef !5
  %i.bj = icmp eq i8 %i.bi, 35
  br i1 %i.bj, label %.thread83, label %.split81._crit_edge.loopexit

.split:                                           ; preds = %.lr.ph121
  %i.bk = getelementptr i8, ptr %i.au, i64 31
  %i.bl = load i8, ptr %i.bk, align 8, !range !23, !noundef !5
  %i.bm = icmp eq i8 %i.bl, 35
  br i1 %i.bm, label %bb.o, label %.split81._crit_edge.loopexit

.split81._crit_edge.loopexit:                     ; preds = %.split81, %.split80, %.split, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit, %bb.p
  %.lcssa100.ph = phi ptr [ null, %bb.p ], [ %i.au, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ %i.au, %.split ], [ %i.au, %.split80 ], [ %i.au, %.split81 ]
  %.not61.lcssa.ph = phi i1 [ true, %bb.p ], [ false, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ false, %.split ], [ false, %.split80 ], [ false, %.split81 ]
  %i.bn = ptrtoint ptr %.lcssa100.ph to i64
  br label %.split81._crit_edge

.split81._crit_edge:                              ; preds = %.split81._crit_edge.loopexit, %bb.k
  %.lcssa100 = phi i64 [ 0, %bb.k ], [ %i.bn, %.split81._crit_edge.loopexit ]
  %.not61.lcssa = phi i1 [ true, %bb.k ], [ %.not61.lcssa.ph, %.split81._crit_edge.loopexit ]
  %i.bo = load i64, ptr %i.s, align 8, !noundef !5 ; 3 uses
  %i.bp = load i8, ptr %i.t, align 8, !range !10, !noundef !5
  %i.bq = trunc nuw i8 %i.bp to i1                ; 2 uses
  %.pre154 = load i64, ptr %i.c, align 8          ; 3 uses
  %i.br = add i64 %.pre154, %.sroa.034.0164
  %spec.select178 = select i1 %i.bq, i64 %i.br, i64 %.sroa.027.3
  %i.bs = icmp sgt i64 %.pre154, -1
  call void @llvm.assume(i1 %i.bs)
  %i.bt = add i64 %.pre154, %i.bo                 ; 3 uses
  store i64 %i.bt, ptr %i.c, align 8
  br i1 %.not61.lcssa, label %bb.t, label %.loopexit165

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.bc, label %.thread83, label %.split81._crit_edge.loopexit

.thread83:                                        ; preds = %.split81, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.p

bb.n:                                             ; preds = %.split80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bu = and i64 %i.av, 1095216660480
  %i.bv = icmp ne i64 %i.bu, 1095216660480
  call void @llvm.assume(i1 %i.be)
  call void @llvm.assume(i1 %i.bv)
  br label %bb.p

bb.o:                                             ; preds = %.split
  %i.bw = getelementptr i8, ptr %i.au, i64 -1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bw) ]
  store ptr %i.bw, ptr %i.u, align 8, !alias.scope !234
  store i8 3, ptr %i.a, align 8, !alias.scope !234
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %.thread83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bx = call noundef ptr @_RNvYINtNtNtCs53gkmrwjETj_4tiff7decoder6stream14PackBitsReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) ; 2 uses
  %.not61 = icmp eq ptr %i.bx, null
  br i1 %.not61, label %.split81._crit_edge.loopexit, label %.lr.ph121

bb.q:                                             ; preds = %bb.r
  resume { ptr, i32 } %lpad.thr_comm

bb.r:                                             ; preds = %.noexc, %bb.m
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image(ptr nonnull %i.au) #31
          to label %bb.q unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.t:                                             ; preds = %.split81._crit_edge
  %i.bz = icmp eq i64 %i.bo, 0
  br i1 %i.bz, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ca = sub nsw i64 %i.bt, %i.d
  br label %.loopexit165

bb.v:                                             ; preds = %bb.t
  %.not64 = xor i1 %i.bq, true
  %brmerge = or i1 %i.g, %.not64
  %.sroa.053.3.mux = select i1 %i.g, i64 %.sroa.053.3.ph, i64 -1
  br i1 %brmerge, label %bb.w, label %bb.x

.loopexit165:                                     ; preds = %.split81._crit_edge, %bb.u
  %.sroa.8.0 = phi i64 [ %i.ca, %bb.u ], [ %.lcssa100, %.split81._crit_edge ]
  %.sroa.07.0 = phi i64 [ 0, %bb.u ], [ 1, %.split81._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.w:                                             ; preds = %bb.v, %bb.z, %bb.y, %bb.x
  %.sroa.053.4 = phi i64 [ -1, %bb.z ], [ %i.ch, %bb.y ], [ %.sroa.053.3.ph, %bb.x ], [ %.sroa.053.3.mux, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.outer

.outer:                                           ; preds = %bb.w, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream14PackBitsReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread
  %i.cb = phi i64 [ %i.bt, %bb.w ], [ %.pre, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream14PackBitsReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread ] ; 2 uses
  %.sroa.053.3.ph = phi i64 [ %.sroa.053.4, %bb.w ], [ %.sroa.053.2, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream14PackBitsReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread ] ; 6 uses
  %.sroa.027.2.ph = phi i64 [ %spec.select178, %bb.w ], [ %i.d, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream14PackBitsReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread ]
  %i.cc = load i64, ptr %1, align 8, !range !13, !noundef !5 ; 2 uses
  %i.cd = sub i64 %i.cc, %i.cb
  %i.ce = icmp ult i64 %i.cd, 32                  ; 2 uses
  %i.cf = icmp eq i64 %i.cc, %i.f
  %or.cond63115 = and i1 %i.cf, %i.ce
  br i1 %or.cond63115, label %.lr.ph, label %._crit_edge

bb.x:                                             ; preds = %bb.v
  %i.cg = icmp eq i64 %i.bo, %.sroa.053.3.ph
  br i1 %i.cg, label %bb.y, label %bb.w

bb.y:                                             ; preds = %bb.x
  %i.ch = shl nuw i64 %.sroa.053.3.ph, 1
  %i.ci = icmp slt i64 %.sroa.053.3.ph, 0
  br i1 %i.ci, label %bb.z, label %bb.w, !prof !21

bb.z:                                             ; preds = %bb.y
  br label %bb.w

.loopexit:                                        ; preds = %bb.h, %bb.f, %bb.aa, %bb.ac, %bb.e, %.loopexit165
  %.sroa.8.1 = phi i64 [ %i.z, %bb.e ], [ %.sroa.8.0, %.loopexit165 ], [ %i.cm, %bb.aa ], [ %i.cq, %bb.ac ], [ 0, %bb.f ], [ 163208757251, %bb.h ]
  %.sroa.07.1 = phi i64 [ 1, %bb.e ], [ %.sroa.07.0, %.loopexit165 ], [ 1, %bb.aa ], [ 0, %bb.ac ], [ 0, %bb.f ], [ 1, %bb.h ]
  %i.cj = inttoptr i64 %.sroa.8.1 to ptr
  %i.ck = insertvalue { i64, ptr } poison, i64 %.sroa.07.1, 0
  %i.cl = insertvalue { i64, ptr } %i.ck, ptr %i.cj, 1
  ret { i64, ptr } %i.cl

bb.aa:                                            ; preds = %.lr.ph
  %i.cm = ptrtoint ptr %i.ad to i64
  br label %.loopexit

bb.ab:                                            ; preds = %.lr.ph
  %i.cn = icmp eq ptr %i.ad, null
  %i.co = load i64, ptr %i.c, align 8, !noundef !5 ; 5 uses
  %i.cp = icmp sgt i64 %i.co, -1
  call void @llvm.assume(i1 %i.cp)
  br i1 %i.cn, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cq = sub nsw i64 %i.co, %i.d
  br label %.loopexit

bb.ad:                                            ; preds = %bb.ab
  %i.cr = load i64, ptr %1, align 8, !range !13, !noundef !5 ; 2 uses
  %i.cs = sub nsw i64 %i.cr, %i.co
  %i.ct = icmp ult i64 %i.cs, 32                  ; 2 uses
  %i.cu = icmp eq i64 %i.cr, %i.f
  %or.cond63 = and i1 %i.cu, %i.ct
  br i1 %or.cond63, label %.lr.ph, label %._crit_edge
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream9LZWReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(80) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 8 uses
  %i.e = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = load i64, ptr %1, align 8, !range !13, !noundef !5 ; 3 uses
  %i.g = trunc nuw i64 %2 to i1                   ; 3 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %3, -1025
  br i1 %i.h, label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream9LZWReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread, label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream9LZWReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit, !prof !21

_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream9LZWReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit: ; preds = %bb.b
  %i.i = add nuw i64 %3, 1024                     ; 3 uses
  %i.j = and i64 %i.i, 8191                       ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = sub i64 %3, %i.j
  %i.m = add i64 %i.l, 9216                       ; 2 uses
  %4 = icmp uge i64 %i.m, %i.i
  %cond.fr = freeze i1 %4
  %.sroa.5.1.i = select i1 %cond.fr, i64 %i.m, i64 8192
  %.sroa.053.1 = select i1 %i.k, i64 %i.i, i64 %.sroa.5.1.i ; 2 uses
  %i.n = icmp eq i64 %3, 0
  br i1 %i.n, label %bb.c, label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream9LZWReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread

bb.c:                                             ; preds = %bb.a, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream9LZWReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit
  %.sroa.053.0 = phi i64 [ %.sroa.053.1, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream9LZWReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit ], [ 8192, %bb.a ] ; 2 uses
  %i.o = sub nsw i64 %i.f, %i.d
  %i.p = icmp ult i64 %i.o, 32
  br i1 %i.p, label %bb.d, label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream9LZWReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread

_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream9LZWReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread: ; preds = %._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream9LZWReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream9LZWReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream9LZWReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread_crit_edge ], [ %i.d, %bb.c ], [ %i.d, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream9LZWReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit ], [ %i.d, %bb.b ]
  %.sroa.053.2 = phi i64 [ %.sroa.053.0, %._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream9LZWReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread_crit_edge ], [ %.sroa.053.0, %bb.c ], [ %.sroa.053.1, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream9LZWReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit ], [ 8192, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %.outer

bb.d:                                             ; preds = %bb.c
  %i.v = tail call fastcc { i64, ptr } @_RINvNvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCs53gkmrwjETj_4tiff7decoder6stream9LZWReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(80) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.v, 0
  %i.x = extractvalue { i64, ptr } %i.v, 1        ; 2 uses
  %i.y = trunc nuw i64 %i.w to i1
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = ptrtoint ptr %i.x to i64
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.aa = icmp eq ptr %i.x, null
  br i1 %i.aa, label %.loopexit, label %._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream9LZWReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread_crit_edge

._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream9LZWReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread_crit_edge: ; preds = %bb.f
  %.pre.pre = load i64, ptr %i.c, align 8
  br label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream9LZWReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread

._crit_edge:                                      ; preds = %bb.ad, %.outer
  %.sroa.027.2.lcssa = phi i64 [ %.sroa.027.2.ph, %.outer ], [ %i.co, %bb.ad ]
  %.lcssa88 = phi i64 [ %i.cb, %.outer ], [ %i.co, %bb.ad ] ; 2 uses
  %.lcssa = phi i1 [ %i.ce, %.outer ], [ %i.ct, %bb.ad ]
  br i1 %.lcssa, label %bb.h, label %bb.g

.lr.ph:                                           ; preds = %.outer, %bb.ad
  %i.ab = call fastcc { i64, ptr } @_RINvNvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCs53gkmrwjETj_4tiff7decoder6stream9LZWReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(80) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) ; 2 uses
  %i.ac = extractvalue { i64, ptr } %i.ab, 0
  %i.ad = extractvalue { i64, ptr } %i.ab, 1      ; 2 uses
  %i.ae = trunc nuw i64 %i.ac to i1
  br i1 %i.ae, label %bb.aa, label %bb.ab

bb.g:                                             ; preds = %bb.i, %._crit_edge
  %i.af = phi i64 [ %i.al, %bb.i ], [ %.lcssa88, %._crit_edge ] ; 7 uses
  %.sroa.027.3 = phi i64 [ %i.al, %bb.i ], [ %.sroa.027.2.lcssa, %._crit_edge ] ; 4 uses
  %i.ag = icmp sgt i64 %i.af, -1
  call void @llvm.assume(i1 %i.ag)
  %i.ah = add nuw i64 %i.af, 32
  %i.ai = icmp ugt i64 %.sroa.027.3, %i.ah
  br i1 %i.ai, label %bb.j, label %.thread

bb.h:                                             ; preds = %._crit_edge
  %i.aj = call { i64, i64 } @_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.lcssa88, i64 noundef 32, i64 noundef 1, i64 noundef 1)
  %i.ak = extractvalue { i64, i64 } %i.aj, 0
  %.not = icmp eq i64 %i.ak, -1
  br i1 %.not, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.al = load i64, ptr %i.c, align 8, !noundef !5 ; 3 uses
  %i.am = icmp sgt i64 %i.al, -1
  call void @llvm.assume(i1 %i.am)
  br label %bb.g

.thread:                                          ; preds = %bb.g
  %i.an = load i64, ptr %1, align 8, !range !13, !noundef !5
  %i.ao = sub nsw i64 %i.an, %i.af
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.ao, i64 %.sroa.053.3.ph)
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.ap = sub nuw i64 %.sroa.027.3, %i.af         ; 3 uses
  %.pre153 = load i64, ptr %1, align 8, !range !13
  %.pre156 = sub nsw i64 %.pre153, %i.af          ; 2 uses
  %.not60 = icmp ugt i64 %i.ap, %.pre156
  br i1 %.not60, label %bb.l, label %bb.k, !prof !22

bb.k:                                             ; preds = %.thread, %bb.j
  %.sroa.034.0164 = phi i64 [ %..i, %.thread ], [ %i.ap, %bb.j ] ; 3 uses
  %i.aq = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.af
  %i.as = add i64 %.sroa.034.0164, %i.af
  %.not59 = icmp uge i64 %.sroa.027.3, %i.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.ar, ptr %i.b, align 8
  store i64 %.sroa.034.0164, ptr %i.r, align 8
  store i64 0, ptr %i.s, align 8
  %spec.select = zext i1 %.not59 to i8
  store i8 %spec.select, ptr %i.t, align 8
  %i.at = call noundef ptr @_RNvYINtNtNtCs53gkmrwjETj_4tiff7decoder6stream9LZWReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) ; 2 uses
  %.not61118 = icmp eq ptr %i.at, null
  br i1 %.not61118, label %.split81._crit_edge, label %.lr.ph121

bb.l:                                             ; preds = %bb.j
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ap, i64 noundef %.pre156, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #28
  unreachable

.lr.ph121:                                        ; preds = %bb.k, %bb.p
  %i.au = phi ptr [ %i.bx, %bb.p ], [ %i.at, %bb.k ] ; 10 uses
  %i.av = ptrtoint ptr %i.au to i64               ; 4 uses
  %i.aw = and i64 %i.av, 3
  switch i64 %i.aw, label %default.unreachable [
    i64 2, label %bb.m
    i64 3, label %.split80
    i64 0, label %.split81
    i64 1, label %.split
  ], !prof !16

default.unreachable:                              ; preds = %.lr.ph121
  unreachable

bb.m:                                             ; preds = %.lr.ph121
  %i.ax = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.m
  %i.ay = lshr i64 %i.av, 32
  %i.az = trunc nuw i64 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !5, !noundef !5
  %i.bc = invoke noundef zeroext i1 %i.bb(i32 noundef %i.az)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.r, !inline_history !0

.split80:                                         ; preds = %.lr.ph121
  %i.bd = lshr i64 %i.av, 32
  %i.be = icmp ult ptr %i.au, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.bd to i8
  %spec.select.i.i.i = select i1 %i.be, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.bf = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.bf)
  %i.bg = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.bg, label %bb.n, label %.split81._crit_edge.loopexit

.split81:                                         ; preds = %.lr.ph121
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.bi = load i8, ptr %i.bh, align 8, !range !23, !noundef !5
  %i.bj = icmp eq i8 %i.bi, 35
  br i1 %i.bj, label %.thread83, label %.split81._crit_edge.loopexit

.split:                                           ; preds = %.lr.ph121
  %i.bk = getelementptr i8, ptr %i.au, i64 31
  %i.bl = load i8, ptr %i.bk, align 8, !range !23, !noundef !5
  %i.bm = icmp eq i8 %i.bl, 35
  br i1 %i.bm, label %bb.o, label %.split81._crit_edge.loopexit

.split81._crit_edge.loopexit:                     ; preds = %.split81, %.split80, %.split, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit, %bb.p
  %.lcssa100.ph = phi ptr [ null, %bb.p ], [ %i.au, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ %i.au, %.split ], [ %i.au, %.split80 ], [ %i.au, %.split81 ]
  %.not61.lcssa.ph = phi i1 [ true, %bb.p ], [ false, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ false, %.split ], [ false, %.split80 ], [ false, %.split81 ]
  %i.bn = ptrtoint ptr %.lcssa100.ph to i64
  br label %.split81._crit_edge

.split81._crit_edge:                              ; preds = %.split81._crit_edge.loopexit, %bb.k
  %.lcssa100 = phi i64 [ 0, %bb.k ], [ %i.bn, %.split81._crit_edge.loopexit ]
  %.not61.lcssa = phi i1 [ true, %bb.k ], [ %.not61.lcssa.ph, %.split81._crit_edge.loopexit ]
  %i.bo = load i64, ptr %i.s, align 8, !noundef !5 ; 3 uses
  %i.bp = load i8, ptr %i.t, align 8, !range !10, !noundef !5
  %i.bq = trunc nuw i8 %i.bp to i1                ; 2 uses
  %.pre154 = load i64, ptr %i.c, align 8          ; 3 uses
  %i.br = add i64 %.pre154, %.sroa.034.0164
  %spec.select178 = select i1 %i.bq, i64 %i.br, i64 %.sroa.027.3
  %i.bs = icmp sgt i64 %.pre154, -1
  call void @llvm.assume(i1 %i.bs)
  %i.bt = add i64 %.pre154, %i.bo                 ; 3 uses
  store i64 %i.bt, ptr %i.c, align 8
  br i1 %.not61.lcssa, label %bb.t, label %.loopexit165

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.bc, label %.thread83, label %.split81._crit_edge.loopexit

.thread83:                                        ; preds = %.split81, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.p

bb.n:                                             ; preds = %.split80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bu = and i64 %i.av, 1095216660480
  %i.bv = icmp ne i64 %i.bu, 1095216660480
  call void @llvm.assume(i1 %i.be)
  call void @llvm.assume(i1 %i.bv)
  br label %bb.p

bb.o:                                             ; preds = %.split
  %i.bw = getelementptr i8, ptr %i.au, i64 -1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bw) ]
  store ptr %i.bw, ptr %i.u, align 8, !alias.scope !237
  store i8 3, ptr %i.a, align 8, !alias.scope !237
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %.thread83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bx = call noundef ptr @_RNvYINtNtNtCs53gkmrwjETj_4tiff7decoder6stream9LZWReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) ; 2 uses
  %.not61 = icmp eq ptr %i.bx, null
  br i1 %.not61, label %.split81._crit_edge.loopexit, label %.lr.ph121

bb.q:                                             ; preds = %bb.r
  resume { ptr, i32 } %lpad.thr_comm

bb.r:                                             ; preds = %.noexc, %bb.m
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image(ptr nonnull %i.au) #31
          to label %bb.q unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.t:                                             ; preds = %.split81._crit_edge
  %i.bz = icmp eq i64 %i.bo, 0
  br i1 %i.bz, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ca = sub nsw i64 %i.bt, %i.d
  br label %.loopexit165

bb.v:                                             ; preds = %bb.t
  %.not64 = xor i1 %i.bq, true
  %brmerge = or i1 %i.g, %.not64
  %.sroa.053.3.mux = select i1 %i.g, i64 %.sroa.053.3.ph, i64 -1
  br i1 %brmerge, label %bb.w, label %bb.x

.loopexit165:                                     ; preds = %.split81._crit_edge, %bb.u
  %.sroa.8.0 = phi i64 [ %i.ca, %bb.u ], [ %.lcssa100, %.split81._crit_edge ]
  %.sroa.07.0 = phi i64 [ 0, %bb.u ], [ 1, %.split81._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.w:                                             ; preds = %bb.v, %bb.z, %bb.y, %bb.x
  %.sroa.053.4 = phi i64 [ -1, %bb.z ], [ %i.ch, %bb.y ], [ %.sroa.053.3.ph, %bb.x ], [ %.sroa.053.3.mux, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.outer

.outer:                                           ; preds = %bb.w, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream9LZWReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread
  %i.cb = phi i64 [ %i.bt, %bb.w ], [ %.pre, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream9LZWReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread ] ; 2 uses
  %.sroa.053.3.ph = phi i64 [ %.sroa.053.4, %bb.w ], [ %.sroa.053.2, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream9LZWReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread ] ; 6 uses
  %.sroa.027.2.ph = phi i64 [ %spec.select178, %bb.w ], [ %i.d, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCs53gkmrwjETj_4tiff7decoder6stream9LZWReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread ]
  %i.cc = load i64, ptr %1, align 8, !range !13, !noundef !5 ; 2 uses
  %i.cd = sub i64 %i.cc, %i.cb
  %i.ce = icmp ult i64 %i.cd, 32                  ; 2 uses
  %i.cf = icmp eq i64 %i.cc, %i.f
  %or.cond63115 = and i1 %i.cf, %i.ce
  br i1 %or.cond63115, label %.lr.ph, label %._crit_edge

bb.x:                                             ; preds = %bb.v
  %i.cg = icmp eq i64 %i.bo, %.sroa.053.3.ph
  br i1 %i.cg, label %bb.y, label %bb.w

bb.y:                                             ; preds = %bb.x
  %i.ch = shl nuw i64 %.sroa.053.3.ph, 1
  %i.ci = icmp slt i64 %.sroa.053.3.ph, 0
  br i1 %i.ci, label %bb.z, label %bb.w, !prof !21

bb.z:                                             ; preds = %bb.y
  br label %bb.w

.loopexit:                                        ; preds = %bb.h, %bb.f, %bb.aa, %bb.ac, %bb.e, %.loopexit165
  %.sroa.8.1 = phi i64 [ %i.z, %bb.e ], [ %.sroa.8.0, %.loopexit165 ], [ %i.cm, %bb.aa ], [ %i.cq, %bb.ac ], [ 0, %bb.f ], [ 163208757251, %bb.h ]
  %.sroa.07.1 = phi i64 [ 1, %bb.e ], [ %.sroa.07.0, %.loopexit165 ], [ 1, %bb.aa ], [ 0, %bb.ac ], [ 0, %bb.f ], [ 1, %bb.h ]
  %i.cj = inttoptr i64 %.sroa.8.1 to ptr
  %i.ck = insertvalue { i64, ptr } poison, i64 %.sroa.07.1, 0
  %i.cl = insertvalue { i64, ptr } %i.ck, ptr %i.cj, 1
  ret { i64, ptr } %i.cl

bb.aa:                                            ; preds = %.lr.ph
  %i.cm = ptrtoint ptr %i.ad to i64
  br label %.loopexit

bb.ab:                                            ; preds = %.lr.ph
  %i.cn = icmp eq ptr %i.ad, null
  %i.co = load i64, ptr %i.c, align 8, !noundef !5 ; 5 uses
  %i.cp = icmp sgt i64 %i.co, -1
  call void @llvm.assume(i1 %i.cp)
  br i1 %i.cn, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cq = sub nsw i64 %i.co, %i.d
  br label %.loopexit

bb.ad:                                            ; preds = %bb.ab
  %i.cr = load i64, ptr %1, align 8, !range !13, !noundef !5 ; 2 uses
  %i.cs = sub nsw i64 %i.cr, %i.co
  %i.ct = icmp ult i64 %i.cs, 32                  ; 2 uses
  %i.cu = icmp eq i64 %i.cr, %i.f
  %or.cond63 = and i1 %i.cu, %i.ct
  br i1 %or.cond63, label %.lr.ph, label %._crit_edge
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 8 uses
  %i.e = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = load i64, ptr %1, align 8, !range !13, !noundef !5 ; 3 uses
  %i.g = trunc nuw i64 %2 to i1                   ; 3 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %3, -1025
  br i1 %i.h, label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread, label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit, !prof !21

_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit: ; preds = %bb.b
  %i.i = add nuw i64 %3, 1024                     ; 3 uses
  %i.j = and i64 %i.i, 8191                       ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = sub i64 %3, %i.j
  %i.m = add i64 %i.l, 9216                       ; 2 uses
  %4 = icmp uge i64 %i.m, %i.i
  %cond.fr = freeze i1 %4
  %.sroa.5.1.i = select i1 %cond.fr, i64 %i.m, i64 8192
  %.sroa.053.1 = select i1 %i.k, i64 %i.i, i64 %.sroa.5.1.i ; 2 uses
  %i.n = icmp eq i64 %3, 0
  br i1 %i.n, label %bb.c, label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread

bb.c:                                             ; preds = %bb.a, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit
  %.sroa.053.0 = phi i64 [ %.sroa.053.1, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit ], [ 8192, %bb.a ] ; 2 uses
  %i.o = sub nsw i64 %i.f, %i.d
  %i.p = icmp ult i64 %i.o, 32
  br i1 %i.p, label %bb.d, label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread

_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread: ; preds = %._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread_crit_edge ], [ %i.d, %bb.c ], [ %i.d, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit ], [ %i.d, %bb.b ]
  %.sroa.053.2 = phi i64 [ %.sroa.053.0, %._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread_crit_edge ], [ %.sroa.053.0, %bb.c ], [ %.sroa.053.1, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit ], [ 8192, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %.outer

bb.d:                                             ; preds = %bb.c
  %i.v = tail call fastcc { i64, ptr } @_RINvNvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.v, 0
  %i.x = extractvalue { i64, ptr } %i.v, 1        ; 2 uses
  %i.y = trunc nuw i64 %i.w to i1
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = ptrtoint ptr %i.x to i64
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.aa = icmp eq ptr %i.x, null
  br i1 %i.aa, label %.loopexit, label %._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread_crit_edge

._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread_crit_edge: ; preds = %bb.f
  %.pre.pre = load i64, ptr %i.c, align 8
  br label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread

._crit_edge:                                      ; preds = %bb.ad, %.outer
  %.sroa.027.2.lcssa = phi i64 [ %.sroa.027.2.ph, %.outer ], [ %i.co, %bb.ad ]
  %.lcssa88 = phi i64 [ %i.cb, %.outer ], [ %i.co, %bb.ad ] ; 2 uses
  %.lcssa = phi i1 [ %i.ce, %.outer ], [ %i.ct, %bb.ad ]
  br i1 %.lcssa, label %bb.h, label %bb.g

.lr.ph:                                           ; preds = %.outer, %bb.ad
  %i.ab = call fastcc { i64, ptr } @_RINvNvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) ; 2 uses
  %i.ac = extractvalue { i64, ptr } %i.ab, 0
  %i.ad = extractvalue { i64, ptr } %i.ab, 1      ; 2 uses
  %i.ae = trunc nuw i64 %i.ac to i1
  br i1 %i.ae, label %bb.aa, label %bb.ab

bb.g:                                             ; preds = %bb.i, %._crit_edge
  %i.af = phi i64 [ %i.al, %bb.i ], [ %.lcssa88, %._crit_edge ] ; 7 uses
  %.sroa.027.3 = phi i64 [ %i.al, %bb.i ], [ %.sroa.027.2.lcssa, %._crit_edge ] ; 4 uses
  %i.ag = icmp sgt i64 %i.af, -1
  call void @llvm.assume(i1 %i.ag)
  %i.ah = add nuw i64 %i.af, 32
  %i.ai = icmp ugt i64 %.sroa.027.3, %i.ah
  br i1 %i.ai, label %bb.j, label %.thread

bb.h:                                             ; preds = %._crit_edge
  %i.aj = call { i64, i64 } @_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.lcssa88, i64 noundef 32, i64 noundef 1, i64 noundef 1)
  %i.ak = extractvalue { i64, i64 } %i.aj, 0
  %.not = icmp eq i64 %i.ak, -1
  br i1 %.not, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.al = load i64, ptr %i.c, align 8, !noundef !5 ; 3 uses
  %i.am = icmp sgt i64 %i.al, -1
  call void @llvm.assume(i1 %i.am)
  br label %bb.g

.thread:                                          ; preds = %bb.g
  %i.an = load i64, ptr %1, align 8, !range !13, !noundef !5
  %i.ao = sub nsw i64 %i.an, %i.af
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.ao, i64 %.sroa.053.3.ph)
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.ap = sub nuw i64 %.sroa.027.3, %i.af         ; 3 uses
  %.pre153 = load i64, ptr %1, align 8, !range !13
  %.pre156 = sub nsw i64 %.pre153, %i.af          ; 2 uses
  %.not60 = icmp ugt i64 %i.ap, %.pre156
  br i1 %.not60, label %bb.l, label %bb.k, !prof !22

bb.k:                                             ; preds = %.thread, %bb.j
  %.sroa.034.0164 = phi i64 [ %..i, %.thread ], [ %i.ap, %bb.j ] ; 3 uses
  %i.aq = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.af
  %i.as = add i64 %.sroa.034.0164, %i.af
  %.not59 = icmp uge i64 %.sroa.027.3, %i.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.ar, ptr %i.b, align 8
  store i64 %.sroa.034.0164, ptr %i.r, align 8
  store i64 0, ptr %i.s, align 8
  %spec.select = zext i1 %.not59 to i8
  store i8 %spec.select, ptr %i.t, align 8
  %i.at = call noundef ptr @_RNvYINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) ; 2 uses
  %.not61118 = icmp eq ptr %i.at, null
  br i1 %.not61118, label %.split81._crit_edge, label %.lr.ph121

bb.l:                                             ; preds = %bb.j
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ap, i64 noundef %.pre156, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #28
  unreachable

.lr.ph121:                                        ; preds = %bb.k, %bb.p
  %i.au = phi ptr [ %i.bx, %bb.p ], [ %i.at, %bb.k ] ; 10 uses
  %i.av = ptrtoint ptr %i.au to i64               ; 4 uses
  %i.aw = and i64 %i.av, 3
  switch i64 %i.aw, label %default.unreachable [
    i64 2, label %bb.m
    i64 3, label %.split80
    i64 0, label %.split81
    i64 1, label %.split
  ], !prof !16

default.unreachable:                              ; preds = %.lr.ph121
  unreachable

bb.m:                                             ; preds = %.lr.ph121
  %i.ax = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.m
  %i.ay = lshr i64 %i.av, 32
  %i.az = trunc nuw i64 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !5, !noundef !5
  %i.bc = invoke noundef zeroext i1 %i.bb(i32 noundef %i.az)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.r, !inline_history !0

.split80:                                         ; preds = %.lr.ph121
  %i.bd = lshr i64 %i.av, 32
  %i.be = icmp ult ptr %i.au, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.bd to i8
  %spec.select.i.i.i = select i1 %i.be, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.bf = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.bf)
  %i.bg = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.bg, label %bb.n, label %.split81._crit_edge.loopexit

.split81:                                         ; preds = %.lr.ph121
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.bi = load i8, ptr %i.bh, align 8, !range !23, !noundef !5
  %i.bj = icmp eq i8 %i.bi, 35
  br i1 %i.bj, label %.thread83, label %.split81._crit_edge.loopexit

.split:                                           ; preds = %.lr.ph121
  %i.bk = getelementptr i8, ptr %i.au, i64 31
  %i.bl = load i8, ptr %i.bk, align 8, !range !23, !noundef !5
  %i.bm = icmp eq i8 %i.bl, 35
  br i1 %i.bm, label %bb.o, label %.split81._crit_edge.loopexit

.split81._crit_edge.loopexit:                     ; preds = %.split81, %.split80, %.split, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit, %bb.p
  %.lcssa100.ph = phi ptr [ null, %bb.p ], [ %i.au, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ %i.au, %.split ], [ %i.au, %.split80 ], [ %i.au, %.split81 ]
  %.not61.lcssa.ph = phi i1 [ true, %bb.p ], [ false, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ false, %.split ], [ false, %.split80 ], [ false, %.split81 ]
  %i.bn = ptrtoint ptr %.lcssa100.ph to i64
  br label %.split81._crit_edge

.split81._crit_edge:                              ; preds = %.split81._crit_edge.loopexit, %bb.k
  %.lcssa100 = phi i64 [ 0, %bb.k ], [ %i.bn, %.split81._crit_edge.loopexit ]
  %.not61.lcssa = phi i1 [ true, %bb.k ], [ %.not61.lcssa.ph, %.split81._crit_edge.loopexit ]
  %i.bo = load i64, ptr %i.s, align 8, !noundef !5 ; 3 uses
  %i.bp = load i8, ptr %i.t, align 8, !range !10, !noundef !5
  %i.bq = trunc nuw i8 %i.bp to i1                ; 2 uses
  %.pre154 = load i64, ptr %i.c, align 8          ; 3 uses
  %i.br = add i64 %.pre154, %.sroa.034.0164
  %spec.select178 = select i1 %i.bq, i64 %i.br, i64 %.sroa.027.3
  %i.bs = icmp sgt i64 %.pre154, -1
  call void @llvm.assume(i1 %i.bs)
  %i.bt = add i64 %.pre154, %i.bo                 ; 3 uses
  store i64 %i.bt, ptr %i.c, align 8
  br i1 %.not61.lcssa, label %bb.t, label %.loopexit165

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.bc, label %.thread83, label %.split81._crit_edge.loopexit

.thread83:                                        ; preds = %.split81, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.p

bb.n:                                             ; preds = %.split80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bu = and i64 %i.av, 1095216660480
  %i.bv = icmp ne i64 %i.bu, 1095216660480
  call void @llvm.assume(i1 %i.be)
  call void @llvm.assume(i1 %i.bv)
  br label %bb.p

bb.o:                                             ; preds = %.split
  %i.bw = getelementptr i8, ptr %i.au, i64 -1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bw) ]
  store ptr %i.bw, ptr %i.u, align 8, !alias.scope !240
  store i8 3, ptr %i.a, align 8, !alias.scope !240
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %.thread83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bx = call noundef ptr @_RNvYINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) ; 2 uses
  %.not61 = icmp eq ptr %i.bx, null
  br i1 %.not61, label %.split81._crit_edge.loopexit, label %.lr.ph121

bb.q:                                             ; preds = %bb.r
  resume { ptr, i32 } %lpad.thr_comm

bb.r:                                             ; preds = %.noexc, %bb.m
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image(ptr nonnull %i.au) #31
          to label %bb.q unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.t:                                             ; preds = %.split81._crit_edge
  %i.bz = icmp eq i64 %i.bo, 0
  br i1 %i.bz, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ca = sub nsw i64 %i.bt, %i.d
  br label %.loopexit165

bb.v:                                             ; preds = %bb.t
  %.not64 = xor i1 %i.bq, true
  %brmerge = or i1 %i.g, %.not64
  %.sroa.053.3.mux = select i1 %i.g, i64 %.sroa.053.3.ph, i64 -1
  br i1 %brmerge, label %bb.w, label %bb.x

.loopexit165:                                     ; preds = %.split81._crit_edge, %bb.u
  %.sroa.8.0 = phi i64 [ %i.ca, %bb.u ], [ %.lcssa100, %.split81._crit_edge ]
  %.sroa.07.0 = phi i64 [ 0, %bb.u ], [ 1, %.split81._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.w:                                             ; preds = %bb.v, %bb.z, %bb.y, %bb.x
  %.sroa.053.4 = phi i64 [ -1, %bb.z ], [ %i.ch, %bb.y ], [ %.sroa.053.3.ph, %bb.x ], [ %.sroa.053.3.mux, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.outer

.outer:                                           ; preds = %bb.w, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread
  %i.cb = phi i64 [ %i.bt, %bb.w ], [ %.pre, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread ] ; 2 uses
  %.sroa.053.3.ph = phi i64 [ %.sroa.053.4, %bb.w ], [ %.sroa.053.2, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread ] ; 6 uses
  %.sroa.027.2.ph = phi i64 [ %spec.select178, %bb.w ], [ %i.d, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread ]
  %i.cc = load i64, ptr %1, align 8, !range !13, !noundef !5 ; 2 uses
  %i.cd = sub i64 %i.cc, %i.cb
  %i.ce = icmp ult i64 %i.cd, 32                  ; 2 uses
  %i.cf = icmp eq i64 %i.cc, %i.f
  %or.cond63115 = and i1 %i.cf, %i.ce
  br i1 %or.cond63115, label %.lr.ph, label %._crit_edge

bb.x:                                             ; preds = %bb.v
  %i.cg = icmp eq i64 %i.bo, %.sroa.053.3.ph
  br i1 %i.cg, label %bb.y, label %bb.w

bb.y:                                             ; preds = %bb.x
  %i.ch = shl nuw i64 %.sroa.053.3.ph, 1
  %i.ci = icmp slt i64 %.sroa.053.3.ph, 0
  br i1 %i.ci, label %bb.z, label %bb.w, !prof !21

bb.z:                                             ; preds = %bb.y
  br label %bb.w

.loopexit:                                        ; preds = %bb.h, %bb.f, %bb.aa, %bb.ac, %bb.e, %.loopexit165
  %.sroa.8.1 = phi i64 [ %i.z, %bb.e ], [ %.sroa.8.0, %.loopexit165 ], [ %i.cm, %bb.aa ], [ %i.cq, %bb.ac ], [ 0, %bb.f ], [ 163208757251, %bb.h ]
  %.sroa.07.1 = phi i64 [ 1, %bb.e ], [ %.sroa.07.0, %.loopexit165 ], [ 1, %bb.aa ], [ 0, %bb.ac ], [ 0, %bb.f ], [ 1, %bb.h ]
  %i.cj = inttoptr i64 %.sroa.8.1 to ptr
  %i.ck = insertvalue { i64, ptr } poison, i64 %.sroa.07.1, 0
  %i.cl = insertvalue { i64, ptr } %i.ck, ptr %i.cj, 1
  ret { i64, ptr } %i.cl

bb.aa:                                            ; preds = %.lr.ph
  %i.cm = ptrtoint ptr %i.ad to i64
  br label %.loopexit

bb.ab:                                            ; preds = %.lr.ph
  %i.cn = icmp eq ptr %i.ad, null
  %i.co = load i64, ptr %i.c, align 8, !noundef !5 ; 5 uses
  %i.cp = icmp sgt i64 %i.co, -1
  call void @llvm.assume(i1 %i.cp)
  br i1 %i.cn, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cq = sub nsw i64 %i.co, %i.d
  br label %.loopexit

bb.ad:                                            ; preds = %bb.ab
  %i.cr = load i64, ptr %1, align 8, !range !13, !noundef !5 ; 2 uses
  %i.cs = sub nsw i64 %i.cr, %i.co
  %i.ct = icmp ult i64 %i.cs, 32                  ; 2 uses
  %i.cu = icmp eq i64 %i.cr, %i.f
  %or.cond63 = and i1 %i.cu, %i.ct
  br i1 %or.cond63, label %.lr.ph, label %._crit_edge
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeIBU_QINtNtBY_6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 8 uses
  %i.e = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = load i64, ptr %1, align 8, !range !13, !noundef !5 ; 3 uses
  %i.g = trunc nuw i64 %2 to i1                   ; 3 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %3, -1025
  br i1 %i.h, label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeIBW_QINtNtB10_6cursor6CursorRShEEEE0Csa5QsYiPB8Gl_5image.exit.thread, label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeIBW_QINtNtB10_6cursor6CursorRShEEEE0Csa5QsYiPB8Gl_5image.exit, !prof !21

_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeIBW_QINtNtB10_6cursor6CursorRShEEEE0Csa5QsYiPB8Gl_5image.exit: ; preds = %bb.b
  %i.i = add nuw i64 %3, 1024                     ; 3 uses
  %i.j = and i64 %i.i, 8191                       ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = sub i64 %3, %i.j
  %i.m = add i64 %i.l, 9216                       ; 2 uses
  %4 = icmp uge i64 %i.m, %i.i
  %cond.fr = freeze i1 %4
  %.sroa.5.1.i = select i1 %cond.fr, i64 %i.m, i64 8192
  %.sroa.053.1 = select i1 %i.k, i64 %i.i, i64 %.sroa.5.1.i ; 2 uses
  %i.n = icmp eq i64 %3, 0
  br i1 %i.n, label %bb.c, label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeIBW_QINtNtB10_6cursor6CursorRShEEEE0Csa5QsYiPB8Gl_5image.exit.thread

bb.c:                                             ; preds = %bb.a, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeIBW_QINtNtB10_6cursor6CursorRShEEEE0Csa5QsYiPB8Gl_5image.exit
  %.sroa.053.0 = phi i64 [ %.sroa.053.1, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeIBW_QINtNtB10_6cursor6CursorRShEEEE0Csa5QsYiPB8Gl_5image.exit ], [ 8192, %bb.a ] ; 2 uses
  %i.o = sub nsw i64 %i.f, %i.d
  %i.p = icmp ult i64 %i.o, 32
  br i1 %i.p, label %bb.d, label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeIBW_QINtNtB10_6cursor6CursorRShEEEE0Csa5QsYiPB8Gl_5image.exit.thread

_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeIBW_QINtNtB10_6cursor6CursorRShEEEE0Csa5QsYiPB8Gl_5image.exit.thread: ; preds = %._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeIBW_QINtNtB10_6cursor6CursorRShEEEE0Csa5QsYiPB8Gl_5image.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeIBW_QINtNtB10_6cursor6CursorRShEEEE0Csa5QsYiPB8Gl_5image.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeIBW_QINtNtB10_6cursor6CursorRShEEEE0Csa5QsYiPB8Gl_5image.exit.thread_crit_edge ], [ %i.d, %bb.c ], [ %i.d, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeIBW_QINtNtB10_6cursor6CursorRShEEEE0Csa5QsYiPB8Gl_5image.exit ], [ %i.d, %bb.b ]
  %.sroa.053.2 = phi i64 [ %.sroa.053.0, %._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeIBW_QINtNtB10_6cursor6CursorRShEEEE0Csa5QsYiPB8Gl_5image.exit.thread_crit_edge ], [ %.sroa.053.0, %bb.c ], [ %.sroa.053.1, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeIBW_QINtNtB10_6cursor6CursorRShEEEE0Csa5QsYiPB8Gl_5image.exit ], [ 8192, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %.outer

bb.d:                                             ; preds = %bb.c
  %i.v = tail call fastcc { i64, ptr } @_RINvNvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeIB1e_QINtNtB1i_6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.v, 0
  %i.x = extractvalue { i64, ptr } %i.v, 1        ; 2 uses
  %i.y = trunc nuw i64 %i.w to i1
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = ptrtoint ptr %i.x to i64
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.aa = icmp eq ptr %i.x, null
  br i1 %i.aa, label %.loopexit, label %._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeIBW_QINtNtB10_6cursor6CursorRShEEEE0Csa5QsYiPB8Gl_5image.exit.thread_crit_edge

._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeIBW_QINtNtB10_6cursor6CursorRShEEEE0Csa5QsYiPB8Gl_5image.exit.thread_crit_edge: ; preds = %bb.f
  %.pre.pre = load i64, ptr %i.c, align 8
  br label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeIBW_QINtNtB10_6cursor6CursorRShEEEE0Csa5QsYiPB8Gl_5image.exit.thread

._crit_edge:                                      ; preds = %bb.ad, %.outer
  %.sroa.027.2.lcssa = phi i64 [ %.sroa.027.2.ph, %.outer ], [ %i.co, %bb.ad ]
  %.lcssa88 = phi i64 [ %i.cb, %.outer ], [ %i.co, %bb.ad ] ; 2 uses
  %.lcssa = phi i1 [ %i.ce, %.outer ], [ %i.ct, %bb.ad ]
  br i1 %.lcssa, label %bb.h, label %bb.g

.lr.ph:                                           ; preds = %.outer, %bb.ad
  %i.ab = call fastcc { i64, ptr } @_RINvNvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeIB1e_QINtNtB1i_6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) ; 2 uses
  %i.ac = extractvalue { i64, ptr } %i.ab, 0
  %i.ad = extractvalue { i64, ptr } %i.ab, 1      ; 2 uses
  %i.ae = trunc nuw i64 %i.ac to i1
  br i1 %i.ae, label %bb.aa, label %bb.ab

bb.g:                                             ; preds = %bb.i, %._crit_edge
  %i.af = phi i64 [ %i.al, %bb.i ], [ %.lcssa88, %._crit_edge ] ; 7 uses
  %.sroa.027.3 = phi i64 [ %i.al, %bb.i ], [ %.sroa.027.2.lcssa, %._crit_edge ] ; 4 uses
  %i.ag = icmp sgt i64 %i.af, -1
  call void @llvm.assume(i1 %i.ag)
  %i.ah = add nuw i64 %i.af, 32
  %i.ai = icmp ugt i64 %.sroa.027.3, %i.ah
  br i1 %i.ai, label %bb.j, label %.thread

bb.h:                                             ; preds = %._crit_edge
  %i.aj = call { i64, i64 } @_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.lcssa88, i64 noundef 32, i64 noundef 1, i64 noundef 1)
  %i.ak = extractvalue { i64, i64 } %i.aj, 0
  %.not = icmp eq i64 %i.ak, -1
  br i1 %.not, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.al = load i64, ptr %i.c, align 8, !noundef !5 ; 3 uses
  %i.am = icmp sgt i64 %i.al, -1
  call void @llvm.assume(i1 %i.am)
  br label %bb.g

.thread:                                          ; preds = %bb.g
  %i.an = load i64, ptr %1, align 8, !range !13, !noundef !5
  %i.ao = sub nsw i64 %i.an, %i.af
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.ao, i64 %.sroa.053.3.ph)
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.ap = sub nuw i64 %.sroa.027.3, %i.af         ; 3 uses
  %.pre153 = load i64, ptr %1, align 8, !range !13
  %.pre156 = sub nsw i64 %.pre153, %i.af          ; 2 uses
  %.not60 = icmp ugt i64 %i.ap, %.pre156
  br i1 %.not60, label %bb.l, label %bb.k, !prof !22

bb.k:                                             ; preds = %.thread, %bb.j
  %.sroa.034.0164 = phi i64 [ %..i, %.thread ], [ %i.ap, %bb.j ] ; 3 uses
  %i.aq = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.af
  %i.as = add i64 %.sroa.034.0164, %i.af
  %.not59 = icmp uge i64 %.sroa.027.3, %i.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.ar, ptr %i.b, align 8
  store i64 %.sroa.034.0164, ptr %i.r, align 8
  store i64 0, ptr %i.s, align 8
  %spec.select = zext i1 %.not59 to i8
  store i8 %spec.select, ptr %i.t, align 8
  %i.at = call noundef ptr @_RNvXs3_NtNtCs4wP2HXfJTCR_5alloc2io4utilINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeIBC_QINtNtBG_6cursor6CursorRShEEENtNtB7_4read4Read8read_bufCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) ; 2 uses
  %.not61118 = icmp eq ptr %i.at, null
  br i1 %.not61118, label %.split81._crit_edge, label %.lr.ph121

bb.l:                                             ; preds = %bb.j
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ap, i64 noundef %.pre156, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #28
  unreachable

.lr.ph121:                                        ; preds = %bb.k, %bb.p
  %i.au = phi ptr [ %i.bx, %bb.p ], [ %i.at, %bb.k ] ; 10 uses
  %i.av = ptrtoint ptr %i.au to i64               ; 4 uses
  %i.aw = and i64 %i.av, 3
  switch i64 %i.aw, label %default.unreachable [
    i64 2, label %bb.m
    i64 3, label %.split80
    i64 0, label %.split81
    i64 1, label %.split
  ], !prof !16

default.unreachable:                              ; preds = %.lr.ph121
  unreachable

bb.m:                                             ; preds = %.lr.ph121
  %i.ax = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.m
  %i.ay = lshr i64 %i.av, 32
  %i.az = trunc nuw i64 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !5, !noundef !5
  %i.bc = invoke noundef zeroext i1 %i.bb(i32 noundef %i.az)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.r, !inline_history !0

.split80:                                         ; preds = %.lr.ph121
  %i.bd = lshr i64 %i.av, 32
  %i.be = icmp ult ptr %i.au, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.bd to i8
  %spec.select.i.i.i = select i1 %i.be, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.bf = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.bf)
  %i.bg = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.bg, label %bb.n, label %.split81._crit_edge.loopexit

.split81:                                         ; preds = %.lr.ph121
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.bi = load i8, ptr %i.bh, align 8, !range !23, !noundef !5
  %i.bj = icmp eq i8 %i.bi, 35
  br i1 %i.bj, label %.thread83, label %.split81._crit_edge.loopexit

.split:                                           ; preds = %.lr.ph121
  %i.bk = getelementptr i8, ptr %i.au, i64 31
  %i.bl = load i8, ptr %i.bk, align 8, !range !23, !noundef !5
  %i.bm = icmp eq i8 %i.bl, 35
  br i1 %i.bm, label %bb.o, label %.split81._crit_edge.loopexit

.split81._crit_edge.loopexit:                     ; preds = %.split81, %.split80, %.split, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit, %bb.p
  %.lcssa100.ph = phi ptr [ null, %bb.p ], [ %i.au, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ %i.au, %.split ], [ %i.au, %.split80 ], [ %i.au, %.split81 ]
  %.not61.lcssa.ph = phi i1 [ true, %bb.p ], [ false, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ false, %.split ], [ false, %.split80 ], [ false, %.split81 ]
  %i.bn = ptrtoint ptr %.lcssa100.ph to i64
  br label %.split81._crit_edge

.split81._crit_edge:                              ; preds = %.split81._crit_edge.loopexit, %bb.k
  %.lcssa100 = phi i64 [ 0, %bb.k ], [ %i.bn, %.split81._crit_edge.loopexit ]
  %.not61.lcssa = phi i1 [ true, %bb.k ], [ %.not61.lcssa.ph, %.split81._crit_edge.loopexit ]
  %i.bo = load i64, ptr %i.s, align 8, !noundef !5 ; 3 uses
  %i.bp = load i8, ptr %i.t, align 8, !range !10, !noundef !5
  %i.bq = trunc nuw i8 %i.bp to i1                ; 2 uses
  %.pre154 = load i64, ptr %i.c, align 8          ; 3 uses
  %i.br = add i64 %.pre154, %.sroa.034.0164
  %spec.select178 = select i1 %i.bq, i64 %i.br, i64 %.sroa.027.3
  %i.bs = icmp sgt i64 %.pre154, -1
  call void @llvm.assume(i1 %i.bs)
  %i.bt = add i64 %.pre154, %i.bo                 ; 3 uses
  store i64 %i.bt, ptr %i.c, align 8
  br i1 %.not61.lcssa, label %bb.t, label %.loopexit165

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.bc, label %.thread83, label %.split81._crit_edge.loopexit

.thread83:                                        ; preds = %.split81, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.p

bb.n:                                             ; preds = %.split80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bu = and i64 %i.av, 1095216660480
  %i.bv = icmp ne i64 %i.bu, 1095216660480
  call void @llvm.assume(i1 %i.be)
  call void @llvm.assume(i1 %i.bv)
  br label %bb.p

bb.o:                                             ; preds = %.split
  %i.bw = getelementptr i8, ptr %i.au, i64 -1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bw) ]
  store ptr %i.bw, ptr %i.u, align 8, !alias.scope !243
  store i8 3, ptr %i.a, align 8, !alias.scope !243
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %.thread83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bx = call noundef ptr @_RNvXs3_NtNtCs4wP2HXfJTCR_5alloc2io4utilINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeIBC_QINtNtBG_6cursor6CursorRShEEENtNtB7_4read4Read8read_bufCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) ; 2 uses
  %.not61 = icmp eq ptr %i.bx, null
  br i1 %.not61, label %.split81._crit_edge.loopexit, label %.lr.ph121

bb.q:                                             ; preds = %bb.r
  resume { ptr, i32 } %lpad.thr_comm

bb.r:                                             ; preds = %.noexc, %bb.m
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image(ptr nonnull %i.au) #31
          to label %bb.q unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.t:                                             ; preds = %.split81._crit_edge
  %i.bz = icmp eq i64 %i.bo, 0
  br i1 %i.bz, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ca = sub nsw i64 %i.bt, %i.d
  br label %.loopexit165

bb.v:                                             ; preds = %bb.t
  %.not64 = xor i1 %i.bq, true
  %brmerge = or i1 %i.g, %.not64
  %.sroa.053.3.mux = select i1 %i.g, i64 %.sroa.053.3.ph, i64 -1
  br i1 %brmerge, label %bb.w, label %bb.x

.loopexit165:                                     ; preds = %.split81._crit_edge, %bb.u
  %.sroa.8.0 = phi i64 [ %i.ca, %bb.u ], [ %.lcssa100, %.split81._crit_edge ]
  %.sroa.07.0 = phi i64 [ 0, %bb.u ], [ 1, %.split81._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.w:                                             ; preds = %bb.v, %bb.z, %bb.y, %bb.x
  %.sroa.053.4 = phi i64 [ -1, %bb.z ], [ %i.ch, %bb.y ], [ %.sroa.053.3.ph, %bb.x ], [ %.sroa.053.3.mux, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.outer

.outer:                                           ; preds = %bb.w, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeIBW_QINtNtB10_6cursor6CursorRShEEEE0Csa5QsYiPB8Gl_5image.exit.thread
  %i.cb = phi i64 [ %i.bt, %bb.w ], [ %.pre, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeIBW_QINtNtB10_6cursor6CursorRShEEEE0Csa5QsYiPB8Gl_5image.exit.thread ] ; 2 uses
  %.sroa.053.3.ph = phi i64 [ %.sroa.053.4, %bb.w ], [ %.sroa.053.2, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeIBW_QINtNtB10_6cursor6CursorRShEEEE0Csa5QsYiPB8Gl_5image.exit.thread ] ; 6 uses
  %.sroa.027.2.ph = phi i64 [ %spec.select178, %bb.w ], [ %i.d, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeIBW_QINtNtB10_6cursor6CursorRShEEEE0Csa5QsYiPB8Gl_5image.exit.thread ]
  %i.cc = load i64, ptr %1, align 8, !range !13, !noundef !5 ; 2 uses
  %i.cd = sub i64 %i.cc, %i.cb
  %i.ce = icmp ult i64 %i.cd, 32                  ; 2 uses
  %i.cf = icmp eq i64 %i.cc, %i.f
  %or.cond63115 = and i1 %i.cf, %i.ce
  br i1 %or.cond63115, label %.lr.ph, label %._crit_edge

bb.x:                                             ; preds = %bb.v
  %i.cg = icmp eq i64 %i.bo, %.sroa.053.3.ph
  br i1 %i.cg, label %bb.y, label %bb.w

bb.y:                                             ; preds = %bb.x
  %i.ch = shl nuw i64 %.sroa.053.3.ph, 1
  %i.ci = icmp slt i64 %.sroa.053.3.ph, 0
  br i1 %i.ci, label %bb.z, label %bb.w, !prof !21

bb.z:                                             ; preds = %bb.y
  br label %bb.w

.loopexit:                                        ; preds = %bb.h, %bb.f, %bb.aa, %bb.ac, %bb.e, %.loopexit165
  %.sroa.8.1 = phi i64 [ %i.z, %bb.e ], [ %.sroa.8.0, %.loopexit165 ], [ %i.cm, %bb.aa ], [ %i.cq, %bb.ac ], [ 0, %bb.f ], [ 163208757251, %bb.h ]
  %.sroa.07.1 = phi i64 [ 1, %bb.e ], [ %.sroa.07.0, %.loopexit165 ], [ 1, %bb.aa ], [ 0, %bb.ac ], [ 0, %bb.f ], [ 1, %bb.h ]
  %i.cj = inttoptr i64 %.sroa.8.1 to ptr
  %i.ck = insertvalue { i64, ptr } poison, i64 %.sroa.07.1, 0
  %i.cl = insertvalue { i64, ptr } %i.ck, ptr %i.cj, 1
  ret { i64, ptr } %i.cl

bb.aa:                                            ; preds = %.lr.ph
  %i.cm = ptrtoint ptr %i.ad to i64
  br label %.loopexit

bb.ab:                                            ; preds = %.lr.ph
  %i.cn = icmp eq ptr %i.ad, null
  %i.co = load i64, ptr %i.c, align 8, !noundef !5 ; 5 uses
  %i.cp = icmp sgt i64 %i.co, -1
  call void @llvm.assume(i1 %i.cp)
  br i1 %i.cn, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cq = sub nsw i64 %i.co, %i.d
  br label %.loopexit

bb.ad:                                            ; preds = %bb.ab
  %i.cr = load i64, ptr %1, align 8, !range !13, !noundef !5 ; 2 uses
  %i.cs = sub nsw i64 %i.cr, %i.co
  %i.ct = icmp ult i64 %i.cs, 32                  ; 2 uses
  %i.cu = icmp eq i64 %i.cr, %i.f
  %or.cond63 = and i1 %i.cu, %i.ct
  br i1 %or.cond63, label %.lr.ph, label %._crit_edge
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtBY_6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 8 uses
  %i.e = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = load i64, ptr %1, align 8, !range !13, !noundef !5 ; 3 uses
  %i.g = trunc nuw i64 %2 to i1                   ; 3 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %3, -1025
  br i1 %i.h, label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB10_6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread, label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB10_6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit, !prof !21

_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB10_6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit: ; preds = %bb.b
  %i.i = add nuw i64 %3, 1024                     ; 3 uses
  %i.j = and i64 %i.i, 8191                       ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = sub i64 %3, %i.j
  %i.m = add i64 %i.l, 9216                       ; 2 uses
  %4 = icmp uge i64 %i.m, %i.i
  %cond.fr = freeze i1 %4
  %.sroa.5.1.i = select i1 %cond.fr, i64 %i.m, i64 8192
  %.sroa.053.1 = select i1 %i.k, i64 %i.i, i64 %.sroa.5.1.i ; 2 uses
  %i.n = icmp eq i64 %3, 0
  br i1 %i.n, label %bb.c, label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB10_6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread

bb.c:                                             ; preds = %bb.a, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB10_6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit
  %.sroa.053.0 = phi i64 [ %.sroa.053.1, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB10_6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit ], [ 8192, %bb.a ] ; 2 uses
  %i.o = sub nsw i64 %i.f, %i.d
  %i.p = icmp ult i64 %i.o, 32
  br i1 %i.p, label %bb.d, label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB10_6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread

_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB10_6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread: ; preds = %._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB10_6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB10_6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB10_6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread_crit_edge ], [ %i.d, %bb.c ], [ %i.d, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB10_6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit ], [ %i.d, %bb.b ]
  %.sroa.053.2 = phi i64 [ %.sroa.053.0, %._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB10_6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread_crit_edge ], [ %.sroa.053.0, %bb.c ], [ %.sroa.053.1, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB10_6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit ], [ 8192, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %.outer

bb.d:                                             ; preds = %bb.c
  %i.v = tail call fastcc { i64, ptr } @_RINvNvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB1i_6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.v, 0
  %i.x = extractvalue { i64, ptr } %i.v, 1        ; 2 uses
  %i.y = trunc nuw i64 %i.w to i1
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = ptrtoint ptr %i.x to i64
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.aa = icmp eq ptr %i.x, null
  br i1 %i.aa, label %.loopexit, label %._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB10_6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread_crit_edge

._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB10_6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread_crit_edge: ; preds = %bb.f
  %.pre.pre = load i64, ptr %i.c, align 8
  br label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB10_6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit.thread

._crit_edge:                                      ; preds = %bb.ad, %.outer
  %.sroa.027.2.lcssa = phi i64 [ %.sroa.027.2.ph, %.outer ], [ %i.co, %bb.ad ]
  %.lcssa88 = phi i64 [ %i.cb, %.outer ], [ %i.co, %bb.ad ] ; 2 uses
  %.lcssa = phi i1 [ %i.ce, %.outer ], [ %i.ct, %bb.ad ]
  br i1 %.lcssa, label %bb.h, label %bb.g

.lr.ph:                                           ; preds = %.outer, %bb.ad
  %i.ab = call fastcc { i64, ptr } @_RINvNvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB1i_6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) ; 2 uses
  %i.ac = extractvalue { i64, ptr } %i.ab, 0
  %i.ad = extractvalue { i64, ptr } %i.ab, 1      ; 2 uses
  %i.ae = trunc nuw i64 %i.ac to i1
  br i1 %i.ae, label %bb.aa, label %bb.ab

bb.g:                                             ; preds = %bb.i, %._crit_edge
  %i.af = phi i64 [ %i.al, %bb.i ], [ %.lcssa88, %._crit_edge ] ; 7 uses
  %.sroa.027.3 = phi i64 [ %i.al, %bb.i ], [ %.sroa.027.2.lcssa, %._crit_edge ] ; 4 uses
  %i.ag = icmp sgt i64 %i.af, -1
  call void @llvm.assume(i1 %i.ag)
  %i.ah = add nuw i64 %i.af, 32
  %i.ai = icmp ugt i64 %.sroa.027.3, %i.ah
  br i1 %i.ai, label %bb.j, label %.thread

bb.h:                                             ; preds = %._crit_edge
  %i.aj = call { i64, i64 } @_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.lcssa88, i64 noundef 32, i64 noundef 1, i64 noundef 1)
  %i.ak = extractvalue { i64, i64 } %i.aj, 0
  %.not = icmp eq i64 %i.ak, -1
  br i1 %.not, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.al = load i64, ptr %i.c, align 8, !noundef !5 ; 3 uses
  %i.am = icmp sgt i64 %i.al, -1
  call void @llvm.assume(i1 %i.am)
  br label %bb.g

.thread:                                          ; preds = %bb.g
  %i.an = load i64, ptr %1, align 8, !range !13, !noundef !5
  %i.ao = sub nsw i64 %i.an, %i.af
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.ao, i64 %.sroa.053.3.ph)
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.ap = sub nuw i64 %.sroa.027.3, %i.af         ; 3 uses
  %.pre153 = load i64, ptr %1, align 8, !range !13
  %.pre156 = sub nsw i64 %.pre153, %i.af          ; 2 uses
  %.not60 = icmp ugt i64 %i.ap, %.pre156
  br i1 %.not60, label %bb.l, label %bb.k, !prof !22

bb.k:                                             ; preds = %.thread, %bb.j
  %.sroa.034.0164 = phi i64 [ %..i, %.thread ], [ %i.ap, %bb.j ] ; 3 uses
  %i.aq = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.af
  %i.as = add i64 %.sroa.034.0164, %i.af
  %.not59 = icmp uge i64 %.sroa.027.3, %i.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.ar, ptr %i.b, align 8
  store i64 %.sroa.034.0164, ptr %i.r, align 8
  store i64 0, ptr %i.s, align 8
  %spec.select = zext i1 %.not59 to i8
  store i8 %spec.select, ptr %i.t, align 8
  %i.at = call noundef ptr @_RNvXs3_NtNtCs4wP2HXfJTCR_5alloc2io4utilINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtBG_6cursor6CursorRShEENtNtB7_4read4Read8read_bufCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) ; 2 uses
  %.not61118 = icmp eq ptr %i.at, null
  br i1 %.not61118, label %.split81._crit_edge, label %.lr.ph121

bb.l:                                             ; preds = %bb.j
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ap, i64 noundef %.pre156, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #28
  unreachable

.lr.ph121:                                        ; preds = %bb.k, %bb.p
  %i.au = phi ptr [ %i.bx, %bb.p ], [ %i.at, %bb.k ] ; 10 uses
  %i.av = ptrtoint ptr %i.au to i64               ; 4 uses
  %i.aw = and i64 %i.av, 3
  switch i64 %i.aw, label %default.unreachable [
    i64 2, label %bb.m
    i64 3, label %.split80
    i64 0, label %.split81
    i64 1, label %.split
  ], !prof !16

default.unreachable:                              ; preds = %.lr.ph121
  unreachable

bb.m:                                             ; preds = %.lr.ph121
  %i.ax = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.m
  %i.ay = lshr i64 %i.av, 32
  %i.az = trunc nuw i64 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !5, !noundef !5
  %i.bc = invoke noundef zeroext i1 %i.bb(i32 noundef %i.az)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.r, !inline_history !0

.split80:                                         ; preds = %.lr.ph121
  %i.bd = lshr i64 %i.av, 32
  %i.be = icmp ult ptr %i.au, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.bd to i8
  %spec.select.i.i.i = select i1 %i.be, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.bf = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.bf)
  %i.bg = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.bg, label %bb.n, label %.split81._crit_edge.loopexit

.split81:                                         ; preds = %.lr.ph121
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.bi = load i8, ptr %i.bh, align 8, !range !23, !noundef !5
  %i.bj = icmp eq i8 %i.bi, 35
  br i1 %i.bj, label %.thread83, label %.split81._crit_edge.loopexit

.split:                                           ; preds = %.lr.ph121
  %i.bk = getelementptr i8, ptr %i.au, i64 31
  %i.bl = load i8, ptr %i.bk, align 8, !range !23, !noundef !5
  %i.bm = icmp eq i8 %i.bl, 35
  br i1 %i.bm, label %bb.o, label %.split81._crit_edge.loopexit

.split81._crit_edge.loopexit:                     ; preds = %.split81, %.split80, %.split, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit, %bb.p
  %.lcssa100.ph = phi ptr [ null, %bb.p ], [ %i.au, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ %i.au, %.split ], [ %i.au, %.split80 ], [ %i.au, %.split81 ]
  %.not61.lcssa.ph = phi i1 [ true, %bb.p ], [ false, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ false, %.split ], [ false, %.split80 ], [ false, %.split81 ]
  %i.bn = ptrtoint ptr %.lcssa100.ph to i64
  br label %.split81._crit_edge

.split81._crit_edge:                              ; preds = %.split81._crit_edge.loopexit, %bb.k
  %.lcssa100 = phi i64 [ 0, %bb.k ], [ %i.bn, %.split81._crit_edge.loopexit ]
  %.not61.lcssa = phi i1 [ true, %bb.k ], [ %.not61.lcssa.ph, %.split81._crit_edge.loopexit ]
  %i.bo = load i64, ptr %i.s, align 8, !noundef !5 ; 3 uses
  %i.bp = load i8, ptr %i.t, align 8, !range !10, !noundef !5
  %i.bq = trunc nuw i8 %i.bp to i1                ; 2 uses
  %.pre154 = load i64, ptr %i.c, align 8          ; 3 uses
  %i.br = add i64 %.pre154, %.sroa.034.0164
  %spec.select178 = select i1 %i.bq, i64 %i.br, i64 %.sroa.027.3
  %i.bs = icmp sgt i64 %.pre154, -1
  call void @llvm.assume(i1 %i.bs)
  %i.bt = add i64 %.pre154, %i.bo                 ; 3 uses
  store i64 %i.bt, ptr %i.c, align 8
  br i1 %.not61.lcssa, label %bb.t, label %.loopexit165

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.bc, label %.thread83, label %.split81._crit_edge.loopexit

.thread83:                                        ; preds = %.split81, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.p

bb.n:                                             ; preds = %.split80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bu = and i64 %i.av, 1095216660480
  %i.bv = icmp ne i64 %i.bu, 1095216660480
  call void @llvm.assume(i1 %i.be)
  call void @llvm.assume(i1 %i.bv)
  br label %bb.p

bb.o:                                             ; preds = %.split
  %i.bw = getelementptr i8, ptr %i.au, i64 -1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bw) ]
  store ptr %i.bw, ptr %i.u, align 8, !alias.scope !246
  store i8 3, ptr %i.a, align 8, !alias.scope !246
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %.thread83
end_hunk_1
begin_hunk_2_@_RNvMs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoderNtB5_11HdrMetadata18update_header_info:bb.a
  %i.ef = load i8, ptr %i.ee, align 1, !alias.scope !834, !noalias !837, !noundef !5
  %.not21.i.i.i.i = icmp eq i8 %i.eb, %i.ef
  br i1 %.not21.i.i.i.i, label %bb.u, label %bb.x

.preheader36.i.i.i.i:                             ; preds = %bb.v
  %i.eg = icmp ult i64 %.sink70.i.i29.i.i, %i.eh
  br i1 %i.eg, label %.lr.ph213, label %_RINvMNtCsj6eKBz9Db1c_4core3stre4findReECsa5QsYiPB8Gl_5image.exit.i

.lr.ph213:                                        ; preds = %.preheader36.i.i.i.i.preheader, %.preheader36.i.i.i.i
  %.sroa.2.0.i.i.i.i212 = phi i64 [ %i.eh, %.preheader36.i.i.i.i ], [ %i.di, %.preheader36.i.i.i.i.preheader ]
  %i.eh = add i64 %.sroa.2.0.i.i.i.i212, -1       ; 6 uses
  %i.ei = icmp ult i64 %i.eh, %i.cj
  br i1 %i.ei, label %bb.v, label %.split32.us.i.i.i.i

bb.v:                                             ; preds = %.lr.ph213
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.eh
  %i.ek = load i8, ptr %i.ej, align 1, !alias.scope !835, !noalias !837, !noundef !5
  %i.el = add i64 %i.eh, %.sink71.i.i26.i.i       ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.cf
  tail call void @llvm.assume(i1 %i.em)
  %i.en = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.el
  %i.eo = load i8, ptr %i.en, align 1, !alias.scope !834, !noalias !837, !noundef !5
  %.not20.i.i.i.i = icmp eq i8 %i.ek, %i.eo
  br i1 %.not20.i.i.i.i, label %.preheader36.i.i.i.i, label %bb.w

.split32.us.i.i.i.i:                              ; preds = %.lr.ph213
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.eh, i64 noundef range(i64 0, -9223372036854775808) %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #28, !noalias !838
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.ep = add i64 %.sink71.i.i26.i.i, %i.dk
  br label %bb.t

bb.x:                                             ; preds = %.lr.ph
  %.reass.i.reass.i.reass.i.reass.reass = add i64 %.sink71.i.i26.i.i, %invariant.op
  %i.eq = add i64 %.reass.i.reass.i.reass.i.reass.reass, %.sroa.04.0.i.i.i.i211
  br label %bb.t

bb.y:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !839)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !840)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !841)
  %.promoted.i4.i.i.i = load i64, ptr %i.ck, align 8, !alias.scope !842, !noalias !823 ; 3 uses
  %i.er = add i64 %.promoted.i4.i.i.i, %i.cl      ; 3 uses
  %i.es = icmp ult i64 %i.er, %i.cf
  br i1 %i.es, label %.lr.ph.i7.i.i.i, label %_RINvMNtCsj6eKBz9Db1c_4core3stre4findReECsa5QsYiPB8Gl_5image.exit.thread.i

.lr.ph.i7.i.i.i:                                  ; preds = %bb.y
  %i.et = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.eu = load i64, ptr %i.et, align 8, !alias.scope !842, !noalias !823, !noundef !5 ; 2 uses
  %i.ev = load i64, ptr %i.u, align 8, !alias.scope !842, !noalias !823
  %.fr63.i.i.i = freeze i64 %i.ev                 ; 10 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ex = load i64, ptr %i.ew, align 8, !alias.scope !842, !noalias !823
  %umax.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %.fr63.i.i.i, i64 range(i64 0, -9223372036854775808) %i.cj) ; 2 uses
  %i.ey = add i64 %.fr63.i.i.i, -1                ; 2 uses
  %.first_iter.i8.i.i.i = icmp ult i64 %i.ey, %i.cj
  %i.ez = sub i64 1, %.fr63.i.i.i                 ; 2 uses
  br i1 %.first_iter.i8.i.i.i, label %.lr.ph.split.us.i.us.i.i.i.preheader, label %.lr.ph.split.us.i.i.i.i.preheader

.lr.ph.split.us.i.i.i.i.preheader:                ; preds = %.lr.ph.i7.i.i.i
  %exitcond.not.i.i.i.i215.not = icmp ult i64 %.fr63.i.i.i, %i.cj
  br label %.lr.ph.split.us.i.i.i.i

.lr.ph.split.us.i.us.i.i.i.preheader:             ; preds = %.lr.ph.i7.i.i.i
  %exitcond.not.i.us.i.i.i220.not = icmp ult i64 %.fr63.i.i.i, %i.cj
  %.not34.i.us.us.i.i.i223 = icmp eq i64 %.fr63.i.i.i, 0
  br label %.lr.ph.split.us.i.us.i.i.i

.lr.ph.split.us.i.us.i.i.i:                       ; preds = %.lr.ph.split.us.i.us.i.i.i.preheader, %bb.ab
  %.sink.i9.us.i34.i.i = phi i64 [ %.sink.i9.us.i.i.i, %bb.ab ], [ %.promoted.i4.i.i.i, %.lr.ph.split.us.i.us.i.i.i.preheader ] ; 7 uses
  %i.fa = phi i64 [ %i.fz, %bb.ab ], [ %i.er, %.lr.ph.split.us.i.us.i.i.i.preheader ]
  %i.fb = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !alias.scope !840, !noalias !837, !noundef !5
  %i.fd = and i8 %i.fc, 63
  %i.fe = zext nneg i8 %i.fd to i64
  %i.ff = shl nuw i64 1, %i.fe
  %i.fg = and i64 %i.ff, %i.eu
  %.not.us.i.us.i.i.i = icmp eq i64 %i.fg, 0
  br i1 %.not.us.i.us.i.i.i, label %bb.aa, label %.preheader35.i.us.i.i.i.preheader

.preheader35.i.us.i.i.i.preheader:                ; preds = %.lr.ph.split.us.i.us.i.i.i
  br i1 %exitcond.not.i.us.i.i.i220.not, label %.lr.ph222, label %.preheader.i10.us.us.i.i.i.preheader

.preheader35.i.us.i.i.i:                          ; preds = %.lr.ph222
  %i.fh = add i64 %.sroa.04.0.us.i.us.i.i.i221, 1 ; 2 uses
  %exitcond.not.i.us.i.i.i = icmp eq i64 %i.fh, %umax.i.i.i.i
  br i1 %exitcond.not.i.us.i.i.i, label %.preheader.i10.us.us.i.i.i.preheader, label %.lr.ph222

.preheader.i10.us.us.i.i.i.preheader:             ; preds = %.preheader35.i.us.i.i.i, %.preheader35.i.us.i.i.i.preheader
  br i1 %.not34.i.us.us.i.i.i223, label %_RINvMNtCsj6eKBz9Db1c_4core3stre4findReECsa5QsYiPB8Gl_5image.exit.i, label %.lr.ph225

.lr.ph222:                                        ; preds = %.preheader35.i.us.i.i.i.preheader, %.preheader35.i.us.i.i.i
  %.sroa.04.0.us.i.us.i.i.i221 = phi i64 [ %i.fh, %.preheader35.i.us.i.i.i ], [ %.fr63.i.i.i, %.preheader35.i.us.i.i.i.preheader ] ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.sroa.04.0.us.i.us.i.i.i221
  %i.fj = load i8, ptr %i.fi, align 1, !alias.scope !841, !noalias !837, !noundef !5
  %i.fk = add i64 %.sroa.04.0.us.i.us.i.i.i221, %.sink.i9.us.i34.i.i ; 2 uses
  %i.fl = icmp ult i64 %i.fk, %i.cf
  tail call void @llvm.assume(i1 %i.fl)
  %i.fm = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.fk
  %i.fn = load i8, ptr %i.fm, align 1, !alias.scope !840, !noalias !837, !noundef !5
  %.not21.us.i.us.i.i.i = icmp eq i8 %i.fj, %i.fn
  br i1 %.not21.us.i.us.i.i.i, label %.preheader35.i.us.i.i.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph222
  %i.fo = add i64 %.sink.i9.us.i34.i.i, %i.ez
  %i.fp = add i64 %i.fo, %.sroa.04.0.us.i.us.i.i.i221
  br label %bb.ab

.preheader.i10.us.us.i.i.i:                       ; preds = %.lr.ph225
  %.not34.i.us.us.i.i.i = icmp eq i64 %i.fq, 0
  br i1 %.not34.i.us.us.i.i.i, label %_RINvMNtCsj6eKBz9Db1c_4core3stre4findReECsa5QsYiPB8Gl_5image.exit.i, label %.lr.ph225

.lr.ph225:                                        ; preds = %.preheader.i10.us.us.i.i.i.preheader, %.preheader.i10.us.us.i.i.i
  %.sroa.2.0.us.i.us.us.i.i.i224 = phi i64 [ %i.fq, %.preheader.i10.us.us.i.i.i ], [ %.fr63.i.i.i, %.preheader.i10.us.us.i.i.i.preheader ]
  %i.fq = add i64 %.sroa.2.0.us.i.us.us.i.i.i224, -1 ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !alias.scope !841, !noalias !837, !noundef !5
  %i.ft = add i64 %i.fq, %.sink.i9.us.i34.i.i     ; 2 uses
  %i.fu = icmp ult i64 %i.ft, %i.cf
  tail call void @llvm.assume(i1 %i.fu)
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ft
  %i.fw = load i8, ptr %i.fv, align 1, !alias.scope !840, !noalias !837, !noundef !5
  %.not20.us.i.us.us.i.i.i = icmp eq i8 %i.fs, %i.fw
  br i1 %.not20.us.i.us.us.i.i.i, label %.preheader.i10.us.us.i.i.i, label %.split.us.us.i.i.i

.split.us.us.i.i.i:                               ; preds = %.lr.ph225
  %i.fx = add i64 %.sink.i9.us.i34.i.i, %i.ex
  br label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.split.us.i.us.i.i.i
  %i.fy = add i64 %.sink.i9.us.i34.i.i, %i.cj
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.split.us.us.i.i.i, %bb.z
  %.sink.i9.us.i.i.i = phi i64 [ %i.fy, %bb.aa ], [ %i.fp, %bb.z ], [ %i.fx, %.split.us.us.i.i.i ] ; 2 uses
  %i.fz = add i64 %.sink.i9.us.i.i.i, %i.cl       ; 2 uses
  %i.ga = icmp ult i64 %i.fz, %i.cf
  br i1 %i.ga, label %.lr.ph.split.us.i.us.i.i.i, label %_RINvMNtCsj6eKBz9Db1c_4core3stre4findReECsa5QsYiPB8Gl_5image.exit.thread.i

.lr.ph.split.us.i.i.i.i:                          ; preds = %.lr.ph.split.us.i.i.i.i.preheader, %bb.ae
  %.sink.i9.i32.i.i = phi i64 [ %.sink.i9.i.i.i, %bb.ae ], [ %.promoted.i4.i.i.i, %.lr.ph.split.us.i.i.i.i.preheader ] ; 4 uses
  %i.gb = phi i64 [ %i.gs, %bb.ae ], [ %i.er, %.lr.ph.split.us.i.i.i.i.preheader ]
  %i.gc = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !alias.scope !840, !noalias !837, !noundef !5
  %i.ge = and i8 %i.gd, 63
  %i.gf = zext nneg i8 %i.ge to i64
  %i.gg = shl nuw i64 1, %i.gf
  %i.gh = and i64 %i.gg, %i.eu
  %.not.us.i.i.i.i = icmp eq i64 %i.gh, 0
  br i1 %.not.us.i.i.i.i, label %bb.ad, label %.preheader35.i.i.i.i.preheader

.preheader35.i.i.i.i.preheader:                   ; preds = %.lr.ph.split.us.i.i.i.i
  br i1 %exitcond.not.i.i.i.i215.not, label %.lr.ph217, label %.preheader.i10.i.i.i

.preheader35.i.i.i.i:                             ; preds = %.lr.ph217
  %i.gi = add i64 %.sroa.04.0.us.i.i.i.i216, 1    ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.gi, %umax.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i10.i.i.i, label %.lr.ph217

.lr.ph217:                                        ; preds = %.preheader35.i.i.i.i.preheader, %.preheader35.i.i.i.i
  %.sroa.04.0.us.i.i.i.i216 = phi i64 [ %i.gi, %.preheader35.i.i.i.i ], [ %.fr63.i.i.i, %.preheader35.i.i.i.i.preheader ] ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.sroa.04.0.us.i.i.i.i216
  %i.gk = load i8, ptr %i.gj, align 1, !alias.scope !841, !noalias !837, !noundef !5
  %i.gl = add i64 %.sroa.04.0.us.i.i.i.i216, %.sink.i9.i32.i.i ; 2 uses
  %i.gm = icmp ult i64 %i.gl, %i.cf
  tail call void @llvm.assume(i1 %i.gm)
  %i.gn = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.gl
  %i.go = load i8, ptr %i.gn, align 1, !alias.scope !840, !noalias !837, !noundef !5
  %.not21.us.i.i.i.i = icmp eq i8 %i.gk, %i.go
  br i1 %.not21.us.i.i.i.i, label %.preheader35.i.i.i.i, label %bb.ac

.preheader.i10.i.i.i:                             ; preds = %.preheader35.i.i.i.i.preheader, %.preheader35.i.i.i.i
  %.not34.i.i.i.i = icmp eq i64 %.fr63.i.i.i, 0
  br i1 %.not34.i.i.i.i, label %_RINvMNtCsj6eKBz9Db1c_4core3stre4findReECsa5QsYiPB8Gl_5image.exit.i, label %.split32.us.i11.i.i.i

.split32.us.i11.i.i.i:                            ; preds = %.preheader.i10.i.i.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ey, i64 noundef range(i64 0, -9223372036854775808) %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #28, !noalias !843
  unreachable

bb.ac:                                            ; preds = %.lr.ph217
  %i.gp = add i64 %.sink.i9.i32.i.i, %i.ez
  %i.gq = add i64 %i.gp, %.sroa.04.0.us.i.i.i.i216
  br label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.split.us.i.i.i.i
  %i.gr = add i64 %.sink.i9.i32.i.i, %i.cj
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.sink.i9.i.i.i = phi i64 [ %i.gr, %bb.ad ], [ %i.gq, %bb.ac ] ; 2 uses
  %i.gs = add i64 %.sink.i9.i.i.i, %i.cl          ; 2 uses
  %i.gt = icmp ult i64 %i.gs, %i.cf
  br i1 %i.gt, label %.lr.ph.split.us.i.i.i.i, label %_RINvMNtCsj6eKBz9Db1c_4core3stre4findReECsa5QsYiPB8Gl_5image.exit.thread.i

_RINvMNtCsj6eKBz9Db1c_4core3stre4findReECsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %bb.t, %bb.ae, %bb.ab, %bb.y, %bb.q, %.preheader.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !823
  br label %.thread

_RINvMNtCsj6eKBz9Db1c_4core3stre4findReECsa5QsYiPB8Gl_5image.exit.i: ; preds = %.preheader36.i.i.i.i.preheader, %.preheader36.i.i.i.i, %.preheader.i10.us.us.i.i.i.preheader, %.preheader.i10.us.us.i.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i.i.i, %bb.p, %.preheader.i10.i.i.i, %bb.o, %bb.g, %bb.d
  %.sroa.4.0.i.i = phi i64 [ %i.ac, %bb.o ], [ %.promoted.i.i.i, %bb.d ], [ %.sink.i9.i32.i.i, %.preheader.i10.i.i.i ], [ %.sink71.i.i26.i.i, %.preheader36.i.i.i.i ], [ %.promoted.i.i.i, %bb.g ], [ %i.cm, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.i.i ], [ %i.cm, %bb.p ], [ %i.cm, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i.i.i ], [ %i.cm, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.i.i ], [ %.sink.i9.us.i34.i.i, %.preheader.i10.us.us.i.i.i.preheader ], [ %.sink.i9.us.i34.i.i, %.preheader.i10.us.us.i.i.i ], [ %.sink71.i.i26.i.i, %.preheader36.i.i.i.i.preheader ] ; 8 uses
  %storemerge.i.sink.i.i.i = phi i1 [ true, %bb.o ], [ %i.ad, %bb.d ], [ true, %.preheader.i10.i.i.i ], [ true, %.preheader36.i.i.i.i ], [ true, %bb.g ], [ true, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.i.i ], [ true, %bb.p ], [ true, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i.i.i ], [ true, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.i.i ], [ true, %.preheader.i10.us.us.i.i.i.preheader ], [ true, %.preheader.i10.us.us.i.i.i ], [ true, %.preheader36.i.i.i.i.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !823
  %i.gu = icmp ne i64 %.sroa.4.0.i.i, 0
  %or.cond.not.i = and i1 %storemerge.i.sink.i.i.i, %i.gu
  %i.gv = add i64 %3, -1
  %.not.i = icmp ult i64 %.sroa.4.0.i.i, %i.gv
  %or.cond = and i1 %.not.i, %or.cond.not.i
  br i1 %or.cond, label %bb.af, label %.thread

bb.af:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core3stre4findReECsa5QsYiPB8Gl_5image.exit.i
  %.not.i.i = icmp ult i64 %.sroa.4.0.i.i, %3
  br i1 %.not.i.i, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.af
  %i.gw = icmp eq i64 %.sroa.4.0.i.i, %3
  br i1 %i.gw, label %bb.ag, label %bb.ai, !prof !19

_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i: ; preds = %bb.af
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.4.0.i.i
  %i.gy = load i8, ptr %i.gx, align 1, !alias.scope !844, !noundef !5
  %i.gz = icmp sgt i8 %i.gy, -65
  br i1 %i.gz, label %bb.ag, label %bb.ai, !prof !19

bb.ag:                                            ; preds = %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i, %.split.i
  %i.ha = add nuw i64 %.sroa.4.0.i.i, 1           ; 7 uses
  %.not.i18.i = icmp ult i64 %i.ha, %3
  br i1 %.not.i18.i, label %bb.ah, label %.split.i.i

.split.i.i:                                       ; preds = %bb.ag
  %i.hb = icmp eq i64 %i.ha, %3
  br i1 %i.hb, label %bb.ak, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 %i.ha
  %i.hd = load i8, ptr %i.hc, align 1, !alias.scope !845, !noundef !5
  %i.he = icmp sgt i8 %i.hd, -65
  br i1 %i.he, label %bb.ak, label %bb.aj

bb.ai:                                            ; preds = %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i, %.split.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i64 noundef 0, i64 noundef %.sroa.4.0.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #28, !noalias !824
  unreachable

bb.aj:                                            ; preds = %bb.ah, %.split.i.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %i.ha, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #28, !noalias !824
  unreachable

bb.ak:                                            ; preds = %.split.i.i, %bb.ah
  %i.hf = sub nuw i64 %3, %i.ha                   ; 10 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %2, i64 %i.ha ; 7 uses
  %i.hh = tail call { ptr, i64 } @_RINvMNtCsj6eKBz9Db1c_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %.sroa.4.0.i.i) ; 2 uses
  %i.hi = extractvalue { ptr, i64 } %i.hh, 0      ; 9 uses
  %i.hj = extractvalue { ptr, i64 } %i.hh, 1      ; 6 uses
  %.not89 = icmp eq ptr %i.hi, null
  br i1 %.not89, label %.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %i.hj, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.hk = load i64, ptr %i.g, align 8, !range !20, !noundef !5
  %i.hl = trunc nuw i64 %i.hk to i1
  %i.hm = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.hn = load i64, ptr %i.hm, align 8, !range !24, !noundef !5 ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.hl, label %bb.ax, label %bb.ay, !prof !21

.thread:                                          ; preds = %_RINvMNtCsj6eKBz9Db1c_4core3stre4findReECsa5QsYiPB8Gl_5image.exit.thread.i, %_RINvMNtCsj6eKBz9Db1c_4core3stre4findReECsa5QsYiPB8Gl_5image.exit.i, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 0, ptr %i.o, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.456.0..sroa_idx, align 8
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %.sroa.557.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.an unwind label %bb.am

bb.am:                                            ; preds = %bb.ao, %.thread
  %i.hp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #31
          to label %common.resume unwind label %bb.aw

bb.an:                                            ; preds = %.thread
  %i.hq = load i64, ptr %i.e, align 8, !range !20, !noundef !5
  %i.hr = trunc nuw i64 %i.hq to i1
  %i.hs = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ht = load i64, ptr %i.hs, align 8, !range !24, !noundef !5 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.hr, label %bb.ao, label %bb.ap, !prof !21

bb.ao:                                            ; preds = %bb.an
  %i.hv = load i64, ptr %i.hu, align 8
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ht, i64 %i.hv) #32
          to label %bb.av unwind label %bb.am

bb.ap:                                            ; preds = %bb.an
  %i.hw = load ptr, ptr %i.hu, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.hx = icmp ule i64 %3, %i.ht
  tail call void @llvm.assume(i1 %i.hx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not90 = icmp eq i64 %3, 0
  br i1 %.not90, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %bb.au, %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  %i.hy = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 %i.ht, ptr %i.hy, align 8
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.hw, ptr %.sroa.471.0..sroa_idx, align 8
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i64 %3, ptr %.sroa.572.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ia = load i64, ptr %i.hz, align 8, !alias.scope !846, !noundef !5 ; 3 uses
  %i.ib = load i64, ptr %1, align 8, !range !13, !alias.scope !846, !noundef !5
  %i.ic = icmp eq i64 %i.ia, %i.ib
  br i1 %i.ic, label %bb.ar, label %.thread124

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBN_EE8grow_oneCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %.thread124 unwind label %bb.as, !noalias !847

bb.as:                                            ; preds = %bb.ar
  %i.id = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCs4wP2HXfJTCR_5alloc6string6StringBC_EECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.p) #31
          to label %common.resume unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ie = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

common.resume:                                    ; preds = %bb.bh, %bb.am, %bb.bb, %bb.cr, %bb.as
  %common.resume.op = phi { ptr, i32 } [ %i.hp, %bb.am ], [ %i.id, %bb.as ], [ %i.in, %bb.bb ], [ %i.np, %bb.cr ], [ %i.jb, %bb.bh ]
  resume { ptr, i32 } %common.resume.op

.thread124:                                       ; preds = %bb.ar, %bb.aq
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ig = load ptr, ptr %i.if, align 8, !alias.scope !846, !nonnull !5, !noundef !5
  %i.ih = getelementptr inbounds nuw [48 x i8], ptr %i.ig, i64 %i.ia
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ih, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 48, i1 false)
  %i.ii = add i64 %i.ia, 1
  store i64 %i.ii, ptr %i.hz, align 8, !alias.scope !846
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %.critedge

bb.au:                                            ; preds = %bb.ap
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hw, ptr nonnull align 1 %2, i64 %3, i1 false)
  br label %bb.aq

bb.av:                                            ; preds = %bb.bd, %bb.ao
  unreachable

bb.aw:                                            ; preds = %bb.cr, %bb.bb, %bb.am
  %i.ij = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.ax:                                            ; preds = %bb.al
  %i.ik = load i64, ptr %i.ho, align 8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.hn, i64 %i.ik) #32
  unreachable

bb.ay:                                            ; preds = %bb.al
  %i.il = load ptr, ptr %i.ho, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.im = icmp ule i64 %i.hj, %i.hn
  tail call void @llvm.assume(i1 %i.im)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.not91 = icmp eq i64 %i.hj, 0
  br i1 %.not91, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ba, %bb.ay
  store i64 %i.hn, ptr %i.q, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.il, ptr %.sroa.459.0..sroa_idx, align 8
  %.sroa.660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.hj, ptr %.sroa.660.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %i.hf, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bc unwind label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.il, ptr nonnull align 1 %i.hi, i64 %i.hj, i1 false)
  br label %bb.az

bb.bb:                                            ; preds = %bb.bd, %bb.az
  %i.in = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q) #31
          to label %common.resume unwind label %bb.aw

bb.bc:                                            ; preds = %bb.az
  %i.io = load i64, ptr %i.f, align 8, !range !20, !noundef !5
  %i.ip = trunc nuw i64 %i.io to i1
  %i.iq = getelementptr inbounds nuw i8, ptr %i.f, i64 8
end_hunk_2
begin_hunk_3_@_RNvXs_NtCsa5QsYiPB8Gl_5image9animationNtB4_6FramesNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB6_8buf_read7BufRead8fill_bufCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !1587, !nonnull !5, !noundef !5
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i = load i64, ptr %i.a, align 8, !alias.scope !1587, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1587, !noundef !5
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %.val1.i, i64 %i.c) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val.i, i64 %..i.i
  %i.e = sub nuw nsw i64 %.val1.i, %..i.i
  store ptr %i.d, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %i.f, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsd_NtNtCsj6eKBz9Db1c_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @112, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @116)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCsj6eKBz9Db1c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvYINtNtNtCsgidZRN39rux_6flate24zlib5write11ZlibEncoderINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_allCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.sroa.0.040 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.119, %bb.k ] ; 3 uses
  %.sroa.6.039 = phi i64 [ %2, %.lr.ph ], [ %.sroa.6.117, %bb.k ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1593
  call void @_RNvMs2_NtCsgidZRN39rux_6flate23zioINtB5_6WriterINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB7_3mem8CompressE17write_with_statusCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.040, i64 noundef range(i64 1, -9223372036854775808) %.sroa.6.039)
  %i.f = load i8, ptr %i.d, align 8, !range !1594, !noalias !1593, !noundef !5
  %i.g = icmp eq i8 %i.f, -1
  %i.h = load ptr, ptr %i.b, align 8, !noalias !1593 ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1593
  %i.i = ptrtoint ptr %i.h to i64                 ; 8 uses
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.j = and i64 %i.i, 3
  switch i64 %i.j, label %default.unreachable [
    i64 2, label %bb.d
    i64 3, label %.split26
    i64 0, label %.split27
    i64 1, label %.split
  ], !prof !16

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.k = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.d
  %i.l = lshr i64 %i.i, 32
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5
  %i.p = invoke noundef zeroext i1 %i.o(i32 noundef %i.m)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.l, !inline_history !0

.split26:                                         ; preds = %bb.c
  %i.q = lshr i64 %i.i, 32
  %i.r = icmp ult ptr %i.h, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.q to i8
  %spec.select.i.i.i = select i1 %i.r, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.s = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.s)
  %i.t = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.t, label %bb.i, label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge

.split27:                                         ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.v = load i8, ptr %i.u, align 8, !range !23, !noundef !5
  %i.w = icmp eq i8 %i.v, 35
  br i1 %i.w, label %.thread.thread, label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge

.split:                                           ; preds = %bb.c
  %i.x = getelementptr i8, ptr %i.h, i64 31
  %i.y = load i8, ptr %i.x, align 8, !range !23, !noundef !5
  %i.z = icmp eq i8 %i.y, 35
  br i1 %i.z, label %bb.j, label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge

bb.e:                                             ; preds = %bb.b
  %i.aa = icmp eq ptr %i.h, null
  br i1 %i.aa, label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = icmp ult i64 %.sroa.6.039, %i.i
  br i1 %i.ab, label %bb.g, label %bb.h, !prof !21

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.i, i64 noundef %.sroa.6.039, i64 noundef %.sroa.6.039, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @138) #32
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ac = sub nuw nsw i64 %.sroa.6.039, %i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.040, i64 %i.i
  br label %bb.k

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.p, label %.thread.thread, label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge: ; preds = %bb.k, %bb.e, %.split27, %.split26, %.split, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit, %bb.a
  %.sroa.07.1 = phi ptr [ null, %bb.a ], [ @136, %bb.e ], [ %i.h, %.split27 ], [ %i.h, %.split26 ], [ %i.h, %.split ], [ %i.h, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ null, %bb.k ]
  ret ptr %.sroa.07.1

.thread.thread:                                   ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit

bb.i:                                             ; preds = %.split26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ae = icmp ult ptr %i.h, inttoptr (i64 188978561024 to ptr)
  %i.af = and i64 %i.i, 1095216660480
  %i.ag = icmp ne i64 %i.af, 1095216660480
  call void @llvm.assume(i1 %i.ae)
  call void @llvm.assume(i1 %i.ag)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit

bb.j:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ah = getelementptr i8, ptr %i.h, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ]
  store ptr %i.ah, ptr %i.e, align 8, !alias.scope !1595
  store i8 3, ptr %i.a, align 8, !alias.scope !1595
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit: ; preds = %.thread.thread, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit
  %.sroa.0.119 = phi ptr [ %.sroa.0.040, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit ], [ %i.ad, %bb.h ]
  %.sroa.6.117 = phi i64 [ %.sroa.6.039, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit ], [ %i.ac, %bb.h ] ; 2 uses
  %i.ai = icmp eq i64 %.sroa.6.117, 0
  br i1 %i.ai, label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge, label %bb.b

bb.l:                                             ; preds = %.noexc, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image(ptr nonnull %i.h) #31
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  resume { ptr, i32 } %lpad.thr_comm

bb.n:                                             ; preds = %bb.l
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden noundef ptr @_RNvYINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB7_4seek4Seek13seek_relativeCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.07.0.i = load i64, ptr %i.a, align 8, !alias.scope !1598, !noundef !5 ; 2 uses
  %i.b = add i64 %.sroa.07.0.i, %1                ; 2 uses
  %i.c = icmp ult i64 %i.b, %.sroa.07.0.i
  %i.d = icmp slt i64 %1, 0
  %i.e = xor i1 %i.d, %i.c
  br i1 %i.e, label %_RNvXs4_NtNtCsj6eKBz9Db1c_4core2io6cursorINtB5_6CursorRShENtNtB7_4seek4Seek4seekCsa5QsYiPB8Gl_5image.exit, label %.sink.split.i, !prof !21

.sink.split.i:                                    ; preds = %bb.a
  store i64 %i.b, ptr %i.a, align 8, !alias.scope !1598
  br label %_RNvXs4_NtNtCsj6eKBz9Db1c_4core2io6cursorINtB5_6CursorRShENtNtB7_4seek4Seek4seekCsa5QsYiPB8Gl_5image.exit

_RNvXs4_NtNtCsj6eKBz9Db1c_4core2io6cursorINtB5_6CursorRShENtNtB7_4seek4Seek4seekCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a, %.sink.split.i
  %.sroa.0.0 = phi ptr [ null, %.sink.split.i ], [ @114, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden noalias noundef ptr @_RNvYINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB7_4seek4Seek6rewindCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(24) initializes((16, 24)) %0) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.a, align 8, !alias.scope !1601
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvYINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoder12HeaderReader13read_next_u32BV_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 16               ; 9 uses
  %i.g = alloca [40 x i8], align 8                ; 7 uses
  %i.h = alloca [40 x i8], align 8                ; 7 uses
  %i.i = alloca [40 x i8], align 8                ; 5 uses
  %i.j = alloca [64 x i8], align 8                ; 4 uses
  %i.k = alloca [40 x i8], align 8                ; 5 uses
  %i.l = alloca [64 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %1, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  store i8 1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 9 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.p, ptr %i.f, align 16
  store ptr %i.o, ptr %i.q, align 8
  store ptr %i.n, ptr %i.r, align 16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val1.i.i.i.i.i.i30.i180 = load i64, ptr %i.s, align 8, !alias.scope !1637, !noalias !1638, !noundef !5
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !1637, !noalias !1638, !noundef !5 ; 2 uses
  %i.v = icmp ugt i64 %.val1.i.i.i.i.i.i30.i180, %i.u
  br i1 %i.v, label %.lr.ph.i.lr.ph, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.y

.lr.ph.i.lr.ph:                                   ; preds = %bb.a
  %.sroa.410.sroa.4.0..sroa.410.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.410.sroa.5.0..sroa.410.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %i.y = insertelement <2 x ptr> poison, ptr %i.p, i64 0
  %i.z = insertelement <2 x ptr> %i.y, ptr %i.o, i64 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit98
  %i.aa = phi i64 [ %i.u, %.lr.ph.i.lr.ph ], [ %i.at, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit98 ]
  %i.ab = phi ptr [ %i.t, %.lr.ph.i.lr.ph ], [ %i.as, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit98 ] ; 3 uses
  %i.ac = phi ptr [ %i.s, %.lr.ph.i.lr.ph ], [ %i.ar, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit98 ]
  %.val94183 = phi ptr [ %1, %.lr.ph.i.lr.ph ], [ %.val94, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit98 ]
  %.sroa.0.0182 = phi i8 [ 0, %.lr.ph.i.lr.ph ], [ %.sroa.0.1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit98 ] ; 2 uses
  %.sroa.047.0181 = phi i32 [ 0, %.lr.ph.i.lr.ph ], [ %.sroa.047.1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit98 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1639)
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %i.ad = phi i64 [ %i.aa, %.lr.ph.i ], [ %i.an, %bb.f ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1640)
  %.val.i.i.i.i.i.i.i = load ptr, ptr %.val94183, align 8, !alias.scope !1641, !noalias !1642, !nonnull !5, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !noalias !1643, !noundef !5 ; 8 uses
  %.sink2.i.i.i.i = add nuw i64 %i.ad, 1
  store i64 %.sink2.i.i.i.i, ptr %i.ab, align 8, !alias.scope !1640, !noalias !1642
  call void @llvm.experimental.noalias.scope.decl(metadata !1644)
  %i.ag = load ptr, ptr %i.q, align 8, !alias.scope !1645, !nonnull !5, !noundef !5 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !range !10, !alias.scope !1646, !noalias !1647, !noundef !5
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i8 %i.af, 35
  br i1 %.not.i.i.i, label %.thread.i.i.i, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.aj = icmp eq i8 %i.af, 13
  br i1 %i.aj, label %bb.e, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.d, %bb.c
  %i.ak = icmp eq i8 %i.af, 10
  %i.al = zext i1 %i.ak to i8
  br label %bb.e

bb.e:                                             ; preds = %.thread.i.i.i, %bb.d, %bb.c
  %.sroa.01.1.i.i.i = phi i8 [ 0, %.thread.i.i.i ], [ 1, %bb.c ], [ 0, %bb.d ]
  %.sroa.03.0.i.i.i = phi i8 [ %i.al, %.thread.i.i.i ], [ 1, %bb.c ], [ 1, %bb.d ]
  store i8 %.sroa.03.0.i.i.i, ptr %i.ag, align 1, !alias.scope !1646, !noalias !1647
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1648
  store i8 %.sroa.01.1.i.i.i, ptr %i.a, align 8, !noalias !1648
  store i8 0, ptr %.sroa.410.sroa.4.0..sroa.410.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1648
  store i8 %i.af, ptr %.sroa.410.sroa.5.0..sroa.410.0..sroa_idx.sroa_idx.i.i, align 1, !noalias !1648
  %i.am = call noundef zeroext i1 @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvYINtNtNtBb_2io6cursor6CursorRShENtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoder12HeaderReader13read_next_u32s_0INtB7_5FnMutTRTbINtNtBb_6result6ResulthNtNtBY_5error5ErrorEEEE8call_mutB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a), !noalias !1649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1648
  br i1 %i.am, label %bb.g, label %bb.f

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp298

bb.f:                                             ; preds = %bb.e
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.ac, align 8, !alias.scope !1650, !noalias !1642, !noundef !5
  %i.an = load i64, ptr %i.ab, align 8, !alias.scope !1650, !noalias !1642, !noundef !5 ; 3 uses
  %i.ao = icmp ugt i64 %.val1.i.i.i.i.i.i.i, %i.an
  br i1 %i.ao, label %bb.b, label %.loopexit

.thread136:                                       ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.z

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  switch i8 %i.af, label %bb.h [
    i8 9, label %bb.i
    i8 10, label %bb.i
    i8 11, label %bb.i
    i8 12, label %bb.i
    i8 13, label %bb.i
    i8 32, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.ap = icmp sgt i8 %i.af, -1
  br i1 %i.ap, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  %i.aq = trunc nuw i8 %.sroa.0.0182 to i1
  br i1 %i.aq, label %.thread136, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit98

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit98: ; preds = %bb.u, %bb.i
  %.sroa.047.1 = phi i32 [ %i.bc, %bb.u ], [ %.sroa.047.0181, %bb.i ] ; 2 uses
  %.sroa.0.1 = phi i8 [ 1, %bb.u ], [ 0, %bb.i ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store <2 x ptr> %i.z, ptr %i.f, align 16
  store ptr %i.n, ptr %i.r, align 16
  %.val94 = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.val94, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val94, i64 16 ; 3 uses
  %.val1.i.i.i.i.i.i30.i = load i64, ptr %i.ar, align 8, !alias.scope !1637, !noalias !1651, !noundef !5
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !1637, !noalias !1651, !noundef !5 ; 3 uses
  %i.au = icmp ugt i64 %.val1.i.i.i.i.i.i30.i, %i.at
  br i1 %i.au, label %.lr.ph.i, label %.loopexit

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.av = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.af, ptr %i.av, align 1
  store i8 2, ptr %i.k, align 8
  invoke void @_RNvXs_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderNtNtBa_5error10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB4_12DecoderErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.k)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.h
  %i.aw = add nsw i8 %i.af, -48                   ; 2 uses
  %or.cond = icmp ult i8 %i.aw, 10
  br i1 %or.cond, label %bb.n, label %bb.m

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.s, %bb.p, %bb.t, %bb.q, %bb.m, %bb.j
  %lpad.loopexit.split-lp298 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i8 0, ptr undef) #31
          to label %common.resume unwind label %bb.x

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.l, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit101

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit101: ; preds = %bb.l, %bb.w, %bb.v, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.aa

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 4, ptr %i.ax, align 1
  store i8 4, ptr %i.i, align 8
  invoke void @_RNvXs_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderNtNtBa_5error10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB4_12DecoderErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.i)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.k
  %i.ay = zext nneg i8 %i.aw to i32
  %i.az = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.047.0181, i32 10) ; 2 uses
  %i.ba = extractvalue { i32, i1 } %i.az, 0       ; 2 uses
  %i.bb = extractvalue { i32, i1 } %i.az, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
end_hunk_3
begin_hunk_4_@_RNvYINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoder12HeaderReader21read_arbitrary_headerBV_:bb.a
bb.aq:                                            ; preds = %bb.ap
  %i.fx = lshr i32 %.sroa.4.0.i.ph.i.i.i.i.i, 8
  switch i32 %i.fx, label %bb.ba [
    i32 0, label %bb.at
    i32 22, label %bb.ar
    i32 32, label %bb.au
    i32 48, label %bb.as
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.fy = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i, 5760
  %i.fz = zext i1 %i.fy to i8
  br label %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.as:                                            ; preds = %bb.aq
  %i.ga = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i, 12288
  %i.gb = zext i1 %i.ga to i8
  br label %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.at:                                            ; preds = %bb.aq
  %i.gc = and i32 %.sroa.4.0.i.ph.i.i.i.i.i, 255
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !noalias !1783, !noundef !5
  br label %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.au:                                            ; preds = %bb.aq
  %i.gg = and i32 %.sroa.4.0.i.ph.i.i.i.i.i, 255
  %i.gh = zext nneg i32 %i.gg to i64
  %i.gi = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.gh
  %i.gj = load i8, ptr %i.gi, align 1, !noalias !1783, !noundef !5
  %i.gk = lshr i8 %i.gj, 1
  br label %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsa5QsYiPB8Gl_5image.exit.i.i.i.i

_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsa5QsYiPB8Gl_5image.exit.i.i.i.i: ; preds = %bb.au, %bb.at, %bb.as, %bb.ar
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i8 [ %i.gb, %bb.as ], [ %i.gf, %bb.at ], [ %i.fz, %bb.ar ], [ %i.gk, %bb.au ]
  %i.gl = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i.i to i1
  br i1 %i.gl, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsa5QsYiPB8Gl_5image.exit.i.i.i, label %bb.ba

_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsa5QsYiPB8Gl_5image.exit.i.i.i: ; preds = %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsa5QsYiPB8Gl_5image.exit.i.i.i.i, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao
  %i.gm = icmp eq ptr %i.fr, %i.ef
  br i1 %i.gm, label %bb.ba, label %.lr.ph.i.i.i

bb.av:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.s, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.cf, %bb.db, %bb.de, %bb.dh, %bb.dk, %bb.ea, %bb.dz, %bb.av
  %i.gn = load i64, ptr %i.v, align 8, !range !12, !alias.scope !1784, !noundef !5
  %i.go = icmp eq i64 %i.gn, -1
  br i1 %i.go, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsa5QsYiPB8Gl_5image.exit181, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit.i176 unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %.body166.thread unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit.i176: ; preds = %bb.ax
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsa5QsYiPB8Gl_5image.exit181 unwind label %bb.dx

bb.ba:                                            ; preds = %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsa5QsYiPB8Gl_5image.exit.i.i.i, %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsa5QsYiPB8Gl_5image.exit.i.i.i.i, %bb.aq, %bb.ap
  %.sroa.0.0.i174 = phi i64 [ %i.eg, %bb.aq ], [ %.sroa.6.sroa.6.0.i, %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsa5QsYiPB8Gl_5image.exit.i.i.i ], [ %i.eg, %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsa5QsYiPB8Gl_5image.exit.i.i.i.i ], [ %i.eg, %bb.ap ] ; 2 uses
  %i.gr = sub nuw i64 %.sroa.6.sroa.6.0.i, %.sroa.0.0.i174 ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.sroa.0.0.i174 ; 15 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1785)
  br label %.lr.ph.i.i.i182

.lr.ph.i.i.i182:                                  ; preds = %bb.ba, %bb.bj
  %i.gt = phi i64 [ %i.ii, %bb.bj ], [ 0, %bb.ba ] ; 8 uses
  %i.gu = phi ptr [ %i.ie, %bb.bj ], [ %i.cf, %bb.ba ] ; 6 uses
  %i.gv = ptrtoint ptr %i.gu to i64
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 1 ; 3 uses
  %i.gx = load i8, ptr %i.gu, align 1, !alias.scope !1785, !noalias !1786, !noundef !5 ; 5 uses
  %i.gy = icmp sgt i8 %i.gx, -1
  br i1 %i.gy, label %bb.bb, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.i.i.i183

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.i.i.i183: ; preds = %.lr.ph.i.i.i182
  %i.gz = and i8 %i.gx, 31
  %i.ha = zext nneg i8 %i.gz to i32               ; 3 uses
  %i.hb = icmp ne ptr %i.gw, %i.ef
  call void @llvm.assume(i1 %i.hb)
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gu, i64 2 ; 3 uses
  %i.hd = load i8, ptr %i.gw, align 1, !alias.scope !1785, !noalias !1786, !noundef !5
  %i.he = shl nuw nsw i32 %i.ha, 6
  %i.hf = and i8 %i.hd, 63
  %i.hg = zext nneg i8 %i.hf to i32               ; 2 uses
  %i.hh = or disjoint i32 %i.he, %i.hg
  %i.hi = icmp samesign ugt i8 %i.gx, -33
  br i1 %i.hi, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.i.i.i187, label %bb.bc

bb.bb:                                            ; preds = %.lr.ph.i.i.i182
  %i.hj = zext nneg i8 %i.gx to i32
  br label %bb.bc

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.i.i.i187: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.i.i.i183
  %i.hk = icmp ne ptr %i.hc, %i.ef
  call void @llvm.assume(i1 %i.hk)
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gu, i64 3 ; 3 uses
  %i.hm = load i8, ptr %i.hc, align 1, !alias.scope !1785, !noalias !1786, !noundef !5
  %i.hn = shl nuw nsw i32 %i.hg, 6
  %i.ho = and i8 %i.hm, 63
  %i.hp = zext nneg i8 %i.ho to i32
  %i.hq = or disjoint i32 %i.hn, %i.hp            ; 2 uses
  %i.hr = shl nuw nsw i32 %i.ha, 12
  %i.hs = or disjoint i32 %i.hq, %i.hr
  %i.ht = icmp samesign ugt i8 %i.gx, -17
  br i1 %i.ht, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i.i.i.i188, label %bb.bc

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i.i.i.i188: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.i.i.i187
  %i.hu = icmp ne ptr %i.hl, %i.ef
  call void @llvm.assume(i1 %i.hu)
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  %i.hw = load i8, ptr %i.hl, align 1, !alias.scope !1785, !noalias !1786, !noundef !5
  %i.hx = shl nuw nsw i32 %i.ha, 18
  %i.hy = and i32 %i.hx, 1835008
  %i.hz = shl nuw nsw i32 %i.hq, 6
  %i.ia = and i8 %i.hw, 63
  %i.ib = zext nneg i8 %i.ia to i32
  %i.ic = or disjoint i32 %i.hz, %i.ib
  %i.id = or disjoint i32 %i.ic, %i.hy
  br label %bb.bc

bb.bc:                                            ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i.i.i.i188, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.i.i.i187, %bb.bb, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.i.i.i183
  %i.ie = phi ptr [ %i.hl, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.i.i.i187 ], [ %i.hv, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i.i.i.i188 ], [ %i.hc, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.i.i.i183 ], [ %i.gw, %bb.bb ] ; 3 uses
  %.sroa.4.0.i.ph.i.i.i.i.i184 = phi i32 [ %i.hs, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.i.i.i187 ], [ %i.id, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i.i.i.i188 ], [ %i.hh, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.i.i.i183 ], [ %i.hj, %bb.bb ] ; 8 uses
  %i.if = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i184, 1114112
  call void @llvm.assume(i1 %i.if)
  %i.ig = ptrtoint ptr %i.ie to i64
  %i.ih = sub i64 %i.gt, %i.gv
  %i.ii = add i64 %i.ih, %i.ig
  switch i32 %.sroa.4.0.i.ph.i.i.i.i.i184, label %bb.bd [
    i32 32, label %bb.bk
    i32 13, label %bb.bk
    i32 12, label %bb.bk
    i32 11, label %bb.bk
    i32 10, label %bb.bk
    i32 9, label %bb.bk
  ]

bb.bd:                                            ; preds = %bb.bc
  %i.ij = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i184, 133
  br i1 %i.ij, label %bb.bj, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ik = lshr i32 %.sroa.4.0.i.ph.i.i.i.i.i184, 8
  switch i32 %i.ik, label %bb.bj [
    i32 0, label %bb.bh
    i32 22, label %bb.bf
    i32 32, label %bb.bi
    i32 48, label %bb.bg
  ]

bb.bf:                                            ; preds = %bb.be
  %i.il = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i184, 5760
  %i.im = zext i1 %i.il to i8
  br label %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsa5QsYiPB8Gl_5image.exit.i.i.i.i185

bb.bg:                                            ; preds = %bb.be
  %i.in = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i184, 12288
  %i.io = zext i1 %i.in to i8
  br label %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsa5QsYiPB8Gl_5image.exit.i.i.i.i185

bb.bh:                                            ; preds = %bb.be
  %i.ip = and i32 %.sroa.4.0.i.ph.i.i.i.i.i184, 255
  %i.iq = zext nneg i32 %i.ip to i64
  %i.ir = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.iq
  %i.is = load i8, ptr %i.ir, align 1, !noalias !1787, !noundef !5
  br label %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsa5QsYiPB8Gl_5image.exit.i.i.i.i185

bb.bi:                                            ; preds = %bb.be
  %i.it = and i32 %.sroa.4.0.i.ph.i.i.i.i.i184, 255
  %i.iu = zext nneg i32 %i.it to i64
  %i.iv = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.iu
  %i.iw = load i8, ptr %i.iv, align 1, !noalias !1787, !noundef !5
  %i.ix = lshr i8 %i.iw, 1
  br label %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsa5QsYiPB8Gl_5image.exit.i.i.i.i185

_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsa5QsYiPB8Gl_5image.exit.i.i.i.i185: ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.bf
  %.sroa.0.0.i.i.i.i.i.i.i.i186 = phi i8 [ %i.io, %bb.bg ], [ %i.is, %bb.bh ], [ %i.im, %bb.bf ], [ %i.ix, %bb.bi ]
  %i.iy = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i.i186 to i1
  br i1 %i.iy, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsa5QsYiPB8Gl_5image.exit.i.i.i.i185, %bb.be, %bb.bd
  %i.iz = icmp eq ptr %i.ie, %i.ef
  br i1 %i.iz, label %bb.bk, label %.lr.ph.i.i.i182

bb.bk:                                            ; preds = %bb.bj, %bb.bc, %bb.bc, %bb.bc, %bb.bc, %bb.bc, %bb.bc, %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsa5QsYiPB8Gl_5image.exit.i.i.i.i185
  %storemerge.i.i8.i = phi i64 [ %i.gt, %bb.bc ], [ %i.gt, %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsa5QsYiPB8Gl_5image.exit.i.i.i.i185 ], [ %i.gt, %bb.bc ], [ %i.gt, %bb.bc ], [ %i.gt, %bb.bc ], [ %i.gt, %bb.bc ], [ %i.gt, %bb.bc ], [ %.sroa.6.sroa.6.0.i, %bb.bj ] ; 12 uses
  %i.ja = icmp eq i64 %storemerge.i.i8.i, 0       ; 2 uses
  br i1 %i.ja, label %_RNvMNtCsj6eKBz9Db1c_4core3stre16split_at_checked.exit.thread241, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %.not.i189 = icmp ult i64 %storemerge.i.i8.i, %i.gr
  br i1 %.not.i189, label %bb.bm, label %.split3.i

.split3.i:                                        ; preds = %bb.bl
  %i.jb = icmp eq i64 %storemerge.i.i8.i, %i.gr
  br i1 %i.jb, label %_RNvMNtCsj6eKBz9Db1c_4core3stre16split_at_checked.exit, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.jc = getelementptr inbounds nuw i8, ptr %i.gs, i64 %storemerge.i.i8.i
  %i.jd = load i8, ptr %i.jc, align 1, !alias.scope !1788, !noundef !5
  %i.je = icmp sgt i8 %i.jd, -65
  br i1 %i.je, label %_RNvMNtCsj6eKBz9Db1c_4core3stre16split_at_checked.exit, label %bb.bn

_RNvMNtCsj6eKBz9Db1c_4core3stre16split_at_checked.exit: ; preds = %.split3.i, %bb.bm
  %i.jf = getelementptr inbounds nuw i8, ptr %i.gs, i64 %storemerge.i.i8.i ; 5 uses
  %i.jg = sub i64 %i.gr, %storemerge.i.i8.i       ; 5 uses
  switch i64 %storemerge.i.i8.i, label %_RNvMNtCsj6eKBz9Db1c_4core3stre16split_at_checked.exit.thread241 [
    i64 6, label %bb.bo
    i64 5, label %bb.bs
    i64 8, label %bb.by
  ]

bb.bn:                                            ; preds = %bb.bm, %.split3.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gs, i64 noundef %i.gr, i64 noundef 0, i64 noundef %storemerge.i.i8.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #32
          to label %bb.aa unwind label %.loopexit.split-lp

bb.bo:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core3stre16split_at_checked.exit
  %i.jh = load i32, ptr %i.gs, align 1
  %i.ji = xor i32 %i.jh, 1212436037
  %i.jj = getelementptr i8, ptr %i.gs, i64 4
  %i.jk = load i16, ptr %i.jj, align 1
  %i.jl = zext i16 %i.jk to i32
  %i.jm = xor i32 %i.jl, 21060
  %i.jn = or i32 %i.ji, %i.jm
  %i.jo = icmp ne i32 %i.jn, 0
  %i.jp = zext i1 %i.jo to i32
  %i.jq = icmp eq i32 %i.jp, 0
  br i1 %i.jq, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.jr = load i32, ptr %i.z, align 4, !range !9, !noundef !5 ; 2 uses
  %i.js = load i32, ptr %i.aj, align 4            ; 3 uses
  %i.jt = load i32, ptr %i.ak, align 4            ; 3 uses
  %i.ju = load i32, ptr %i.x, align 4, !range !9, !noundef !5 ; 2 uses
  %i.jv = load i32, ptr %i.al, align 4            ; 3 uses
  %i.jw = load i32, ptr %i.w, align 4, !range !9, !noundef !5 ; 2 uses
  %i.jx = load i32, ptr %i.am, align 4            ; 3 uses
  %i.jy = load i32, ptr %i.y, align 4, !range !9  ; 2 uses
  %i.jz = and i32 %i.ju, %i.jr
  %i.ka = icmp ne i32 %i.jz, 0
  %i.kb = and i32 %i.jy, %i.jw
  %i.kc = icmp ne i32 %i.kb, 0
  %or.cond165 = select i1 %i.ka, i1 %i.kc, i1 false
  br i1 %or.cond165, label %bb.dn, label %bb.dm

bb.bq:                                            ; preds = %bb.bo
  %i.kd = load i32, ptr %i.gs, align 1
  %i.ke = xor i32 %i.kd, 1195984200
  %i.kf = getelementptr i8, ptr %i.gs, i64 4
  %i.kg = load i16, ptr %i.kf, align 1
  %i.kh = zext i16 %i.kg to i32
  %i.ki = xor i32 %i.kh, 21576
  %i.kj = or i32 %i.ke, %i.ki
  %i.kk = icmp ne i32 %i.kj, 0
  %i.kl = zext i1 %i.kk to i32
  %i.km = icmp eq i32 %i.kl, 0
  br i1 %i.km, label %bb.br, label %bb.bw

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke void @_RNvNvNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoder12HeaderReader21read_arbitrary_header23parse_single_value_line(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.q, ptr noalias nofree noundef nonnull align 4 dereferenceable(8) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jf, i64 noundef %i.jg, i8 noundef 0)
          to label %bb.dj unwind label %.loopexit260

bb.bs:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core3stre16split_at_checked.exit
  %i.kn = load i32, ptr %i.gs, align 1
  %i.ko = xor i32 %i.kn, 1413761367
  %i.kp = getelementptr i8, ptr %i.gs, i64 4
  %i.kq = load i8, ptr %i.kp, align 1
  %i.kr = zext i8 %i.kq to i32
  %i.ks = xor i32 %i.kr, 72
  %i.kt = or i32 %i.ko, %i.ks
  %i.ku = icmp ne i32 %i.kt, 0
  %i.kv = zext i1 %i.ku to i32
  %i.kw = icmp eq i32 %i.kv, 0
  br i1 %i.kw, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke void @_RNvNvNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoder12HeaderReader21read_arbitrary_header23parse_single_value_line(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.p, ptr noalias nofree noundef nonnull align 4 dereferenceable(8) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jf, i64 noundef %i.jg, i8 noundef 1)
          to label %bb.dg unwind label %.loopexit260

bb.bu:                                            ; preds = %bb.bs
  %i.kx = load i32, ptr %i.gs, align 1
  %i.ky = xor i32 %i.kx, 1414546756
  %i.kz = getelementptr i8, ptr %i.gs, i64 4
  %i.la = load i8, ptr %i.kz, align 1
  %i.lb = zext i8 %i.la to i32
  %i.lc = xor i32 %i.lb, 72
  %i.ld = or i32 %i.ky, %i.lc
  %i.le = icmp ne i32 %i.ld, 0
  %i.lf = zext i1 %i.le to i32
  %i.lg = icmp eq i32 %i.lf, 0
  br i1 %i.lg, label %bb.bv, label %_RNvMNtCsj6eKBz9Db1c_4core3stre16split_at_checked.exit.thread241

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RNvNvNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoder12HeaderReader21read_arbitrary_header23parse_single_value_line(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.o, ptr noalias nofree noundef nonnull align 4 dereferenceable(8) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jf, i64 noundef %i.jg, i8 noundef 2)
          to label %bb.dd unwind label %.loopexit260

bb.bw:                                            ; preds = %bb.bq
  %i.lh = load i32, ptr %i.gs, align 1
  %i.li = xor i32 %i.lh, 1448624461
  %i.lj = getelementptr i8, ptr %i.gs, i64 4
  %i.lk = load i16, ptr %i.lj, align 1
  %i.ll = zext i16 %i.lk to i32
  %i.lm = xor i32 %i.ll, 19521
  %i.ln = or i32 %i.li, %i.lm
  %i.lo = icmp ne i32 %i.ln, 0
  %i.lp = zext i1 %i.lo to i32
  %i.lq = icmp eq i32 %i.lp, 0
  br i1 %i.lq, label %bb.bx, label %_RNvMNtCsj6eKBz9Db1c_4core3stre16split_at_checked.exit.thread241

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RNvNvNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoder12HeaderReader21read_arbitrary_header23parse_single_value_line(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.n, ptr noalias nofree noundef nonnull align 4 dereferenceable(8) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jf, i64 noundef %i.jg, i8 noundef 3)
          to label %bb.da unwind label %.loopexit260

bb.by:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core3stre16split_at_checked.exit
  %i.lr = load i64, ptr %i.gs, align 1
  %i.ls = icmp ne i64 %i.lr, 4994590205346338132
  %i.lt = zext i1 %i.ls to i32
  %i.lu = icmp eq i32 %i.lt, 0
  br i1 %i.lu, label %bb.bz, label %_RNvMNtCsj6eKBz9Db1c_4core3stre16split_at_checked.exit.thread241

_RNvMNtCsj6eKBz9Db1c_4core3stre16split_at_checked.exit.thread241: ; preds = %bb.bk, %bb.bw, %bb.bu, %_RNvMNtCsj6eKBz9Db1c_4core3stre16split_at_checked.exit, %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i64 noundef %storemerge.i.i8.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ca unwind label %.loopexit.split-lp

bb.bz:                                            ; preds = %bb.by
  %i.lv = call { ptr, i64 } @_RINvMNtCsj6eKBz9Db1c_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jf, i64 noundef %i.jg) ; 2 uses
  %i.lw = extractvalue { ptr, i64 } %i.lv, 0      ; 2 uses
  %i.lx = extractvalue { ptr, i64 } %i.lv, 1      ; 10 uses
  %i.ly = load i64, ptr %i.v, align 8, !range !12, !noundef !5 ; 2 uses
  %.not146 = icmp eq i64 %i.ly, -1
  br i1 %.not146, label %bb.cg, label %bb.cq

bb.ca:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core3stre16split_at_checked.exit.thread241
  %i.lz = load i64, ptr %i.i, align 8, !range !20, !noundef !5
  %i.ma = trunc nuw i64 %i.lz to i1
  %i.mb = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.mc = load i64, ptr %i.mb, align 8, !range !24, !noundef !5 ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  br i1 %i.ma, label %bb.cb, label %bb.cc, !prof !21

bb.cb:                                            ; preds = %bb.ca
  %i.me = load i64, ptr %i.md, align 8
  br label %.invoke

.invoke:                                          ; preds = %bb.ci, %bb.cb
  %i.mf = phi i64 [ %i.mc, %bb.cb ], [ %i.mm, %bb.ci ]
  %i.mg = phi i64 [ %i.me, %bb.cb ], [ %i.mn, %bb.ci ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.mf, i64 %i.mg) #32
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.cc:                                            ; preds = %bb.ca
  %i.mh = load ptr, ptr %i.md, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.mi = icmp ule i64 %storemerge.i.i8.i, %i.mc
  call void @llvm.assume(i1 %i.mi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.ja, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.ce, %bb.cc
  %i.mj = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.mc, ptr %i.mj, align 8
  %.sroa.4100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.mh, ptr %.sroa.4100.0..sroa_idx, align 8
  %.sroa.5101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %storemerge.i.i8.i, ptr %.sroa.5101.0..sroa_idx, align 8
  store i8 8, ptr %i.l, align 8
  invoke void @_RNvXs_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderNtNtBa_5error10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB4_12DecoderErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.l)
          to label %bb.cf unwind label %.loopexit.split-lp

bb.ce:                                            ; preds = %bb.cc
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mh, ptr nonnull align 1 %i.gs, i64 %storemerge.i.i8.i, i1 false)
  br label %bb.cd

bb.cf:                                            ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
end_hunk_4
