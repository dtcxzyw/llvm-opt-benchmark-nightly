Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.05?download=true
inline.NumInlined: 720
inline.NumDeleted: 313
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_RNvMs1_NtCsksn9slvsHfS_10image_webp7decoderINtB5_11WebPDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE16new_with_optionsCsa5QsYiPB8Gl_5image:bb.a
  %.sroa.0.0.copyload52 = phi i8 [ %.sroa.0.0.copyload52.pr, %thread-pre-split ], [ %i.dy, %.noexc30 ] ; 2 uses
  %.sroa.40.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %.sroa.40, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.40.0..sroa_idx54, i64 5, i1 false), !noalias !1573
  %.sroa.50.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.w, i64 6
  %.sroa.50.0.copyload58 = load i16, ptr %.sroa.50.0..sroa_idx57, align 2, !noalias !1573
  %.sroa.5061.0.copyload65 = load i64, ptr %i.dq, align 8, !noalias !1573
  %.sroa.70.0.copyload69 = load ptr, ptr %i.dr, align 8, !noalias !1573
  %.sroa.78.0.copyload76 = load i64, ptr %i.ds, align 8, !noalias !1573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1579
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1579
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.not = icmp eq i8 %.sroa.0.0.copyload52, -1
  br i1 %.not, label %bb.eh, label %bb.eb

.sink.split:                                      ; preds = %bb.h, %bb.i, %_RNvMNtCsksn9slvsHfS_10image_webp7decoderNtB2_13WebPRiffChunk9to_fourcc.exit.i, %bb.z, %bb.av, %bb.ay, %bb.az, %bb.bc, %bb.ak, %bb.e, %bb.au, %bb.af, %bb.ab, %.thread143, %.thread151
  %.sroa.0.4133.ph = phi i8 [ %.sroa.0.2.ph, %.thread151 ], [ %.sroa.0.0.ph, %.thread143 ], [ 4, %bb.h ], [ 0, %bb.i ], [ 2, %_RNvMNtCsksn9slvsHfS_10image_webp7decoderNtB2_13WebPRiffChunk9to_fourcc.exit.i ], [ 0, %bb.z ], [ 0, %bb.av ], [ 11, %bb.ay ], [ 0, %bb.az ], [ 12, %bb.bc ], [ 24, %bb.ak ], [ 0, %bb.e ], [ %.sroa.0.3, %bb.au ], [ 0, %bb.af ], [ 4, %bb.ab ]
  %.sroa.50.3132.ph = phi i16 [ %.sroa.50.2.ph, %.thread151 ], [ %.sroa.50.0.ph, %.thread143 ], [ undef, %bb.h ], [ undef, %bb.i ], [ undef, %_RNvMNtCsksn9slvsHfS_10image_webp7decoderNtB2_13WebPRiffChunk9to_fourcc.exit.i ], [ undef, %bb.z ], [ undef, %bb.av ], [ undef, %bb.ay ], [ undef, %bb.az ], [ undef, %bb.bc ], [ undef, %bb.ak ], [ undef, %bb.e ], [ undef, %bb.au ], [ undef, %bb.af ], [ undef, %bb.ab ]
  %.sroa.5061.4131.ph = phi i64 [ %.sroa.5061.2.ph, %.thread151 ], [ %.sroa.5061.0.ph, %.thread143 ], [ undef, %bb.h ], [ %i.ay, %bb.i ], [ undef, %_RNvMNtCsksn9slvsHfS_10image_webp7decoderNtB2_13WebPRiffChunk9to_fourcc.exit.i ], [ %.sroa.9538.0.ph.i, %bb.z ], [ %i.cq, %bb.av ], [ undef, %bb.ay ], [ %i.cu, %bb.az ], [ undef, %bb.bc ], [ %i.bx, %bb.ak ], [ %.sroa.9.0.ph.i, %bb.e ], [ %.sroa.5061.3, %bb.au ], [ %i.bp, %bb.af ], [ undef, %bb.ab ]
  %.sroa.78.3130.ph = phi i64 [ %.sroa.78.2.ph, %.thread151 ], [ %.sroa.78.0.ph, %.thread143 ], [ 19, %bb.h ], [ 19, %bb.i ], [ 19, %_RNvMNtCsksn9slvsHfS_10image_webp7decoderNtB2_13WebPRiffChunk9to_fourcc.exit.i ], [ 19, %bb.z ], [ 19, %bb.av ], [ 19, %bb.ay ], [ 19, %bb.az ], [ 19, %bb.bc ], [ 19, %bb.ak ], [ 19, %bb.e ], [ 19, %bb.au ], [ 19, %bb.af ], [ 19, %bb.ab ]
  %.sroa.70.3129.ph = phi ptr [ %.sroa.70.2.ph, %.thread151 ], [ %.sroa.70.0.ph, %.thread143 ], [ undef, %bb.h ], [ undef, %bb.i ], [ undef, %_RNvMNtCsksn9slvsHfS_10image_webp7decoderNtB2_13WebPRiffChunk9to_fourcc.exit.i ], [ null, %bb.z ], [ undef, %bb.av ], [ undef, %bb.ay ], [ undef, %bb.az ], [ undef, %bb.bc ], [ %i.cb, %bb.ak ], [ null, %bb.e ], [ undef, %bb.au ], [ undef, %bb.af ], [ undef, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.eb

bb.eb:                                            ; preds = %.sink.split, %.loopexit158
  %.sroa.0.4133 = phi i8 [ %.sroa.0.0.copyload52, %.loopexit158 ], [ %.sroa.0.4133.ph, %.sink.split ]
  %.sroa.50.3132 = phi i16 [ %.sroa.50.0.copyload58, %.loopexit158 ], [ %.sroa.50.3132.ph, %.sink.split ]
  %.sroa.5061.4131 = phi i64 [ %.sroa.5061.0.copyload65, %.loopexit158 ], [ %.sroa.5061.4131.ph, %.sink.split ]
  %.sroa.78.3130 = phi i64 [ %.sroa.78.0.copyload76, %.loopexit158 ], [ %.sroa.78.3130.ph, %.sink.split ]
  %.sroa.70.3129 = phi ptr [ %.sroa.70.0.copyload69, %.loopexit158 ], [ %.sroa.70.3129.ph, %.sink.split ]
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.4118.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(5) %.sroa.40, i64 5, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.40)
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.0.4133, ptr %i.hw, align 8
  %.sroa.5119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i16 %.sroa.50.3132, ptr %.sroa.5119.0..sroa_idx, align 2
  %.sroa.6120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5061.4131, ptr %.sroa.6120.0..sroa_idx, align 8
  %.sroa.7121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.70.3129, ptr %.sroa.7121.0..sroa_idx, align 8
  %.sroa.8122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.78.3130, ptr %.sroa.8122.0..sroa_idx, align 8
  store i64 -2, ptr %0, align 8
  %i.hx = load i64, ptr %i.ac, align 8, !range !15, !alias.scope !1592, !noundef !6
  %i.hy = icmp eq i64 %i.hx, -1
  br i1 %i.hy, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsksn9slvsHfS_10image_webp7decoder11WebPDecoderINtNtNtB4_2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image.exit, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.ac)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i.i.i unwind label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.hz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.ac)
          to label %.body.i unwind label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.ia = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i.i.i: ; preds = %bb.ec
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.ac)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsksn9slvsHfS_10image_webp7decoder11WebPDecoderINtNtNtB4_2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image.exit unwind label %bb.ef

bb.ef:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i.i.i
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ef, %bb.ed
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ib, %bb.ef ], [ %i.hz, %bb.ed ]
  invoke void @_RNvXsg_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTNtNtCsksn9slvsHfS_10image_webp7decoder13WebPRiffChunkINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangeyEEENtNtB1L_4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ap)
          to label %common.resume unwind label %bb.eg

bb.eg:                                            ; preds = %.body.i
  %i.ic = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %.body, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsksn9slvsHfS_10image_webp7decoder11WebPDecoderINtNtNtB4_2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.eb, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i.i.i
  call void @_RNvXsg_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTNtNtCsksn9slvsHfS_10image_webp7decoder13WebPRiffChunkINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangeyEEENtNtB1L_4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ap)
  br label %bb.ei

bb.eh:                                            ; preds = %.thread135, %.loopexit158
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.40)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(192) %i.ac, i64 192, i1 false)
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsksn9slvsHfS_10image_webp7decoder11WebPDecoderINtNtNtB4_2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  ret void

bb.ej:                                            ; preds = %.body
  %i.id = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtCsksn9slvsHfS_10image_webp8losslessINtB5_9BitReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB11_6cursor6CursorRShEEE4fillCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %.val30 = load ptr, ptr %1, align 8             ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.val31 = load i64, ptr %i.c, align 8, !noundef !6 ; 5 uses
  %i.d = icmp eq i64 %.val31, 0
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1605
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val30) ]
  call void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB6_8buf_read7BufRead8fill_bufCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val30), !noalias !1605
  %i.e = load ptr, ptr %i.b, align 8, !noalias !1605, !noundef !6 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.g, align 8, !noalias !1605, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1605
  store i8 0, ptr %0, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.420.0..sroa_idx, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.g, align 8, !noalias !1605, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1605
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %.val31, i64 %i.i)
  %i.j = icmp ugt i64 %..i.i, 7
  br i1 %i.j, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted = load i8, ptr %i.k, align 8         ; 2 uses
  %i.l = icmp ne i64 %i.i, 0
  %i.m = icmp ult i8 %.promoted, 56
  %or.cond49 = select i1 %i.l, i1 %i.m, i1 false
  br i1 %or.cond49, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val30, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.promoted51 = load i64, ptr %i.n, align 8
  %i.q = zext nneg i8 %.promoted to i64
  br label %bb.e

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.d
  %.sroa.021.0.copyload = load i64, ptr %i.e, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8, !noundef !6  ; 3 uses
  %i.t = sub i8 63, %i.s
  %i.u = lshr i8 %i.t, 3
  %i.v = zext nneg i8 %i.u to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1606)
  %..i.i32 = tail call noundef i64 @llvm.umin.i64(i64 %.val31, i64 range(i64 0, 32) %i.v) ; 2 uses
  %i.w = sub nuw i64 %.val31, %..i.i32
  store i64 %i.w, ptr %i.c, align 8, !alias.scope !1606
  %i.x = getelementptr inbounds nuw i8, ptr %.val30, i64 16 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !1607, !noalias !1606, !noundef !6
  %i.z = add i64 %..i.i32, %i.y
  store i64 %i.z, ptr %i.x, align 8, !alias.scope !1607, !noalias !1606
  %i.aa = and i8 %i.s, 63
  %i.ab = zext nneg i8 %i.aa to i64
  %i.ac = shl i64 %.sroa.021.0.copyload, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !6
  %i.af = or i64 %i.ae, %i.ac
  store i64 %i.af, ptr %i.ad, align 8
  %i.ag = or i8 %i.s, 56
  store i8 %i.ag, ptr %i.r, align 8
  br label %.loopexit

bb.e:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ %i.q, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.ah = phi i64 [ %.promoted51, %.lr.ph ], [ %i.am, %bb.h ]
  %.sroa.06.050 = phi ptr [ %i.e, %.lr.ph ], [ %i.at, %bb.h ]
  %i.ai = phi i64 [ %.val31, %.lr.ph ], [ %i.ap, %bb.h ] ; 3 uses
  %i.aj = load i8, ptr %.sroa.06.050, align 1, !noundef !6
  %i.ak = zext i8 %i.aj to i64
  %i.al = shl nuw nsw i64 %i.ak, %indvars.iv
  %i.am = or i64 %i.al, %i.ah                     ; 2 uses
  store i64 %i.am, ptr %i.n, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %i.an = trunc nuw nsw i64 %indvars.iv.next to i8
  store i8 %i.an, ptr %i.k, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1608)
  %i.ao = icmp ne i64 %i.ai, 0
  %..i.i33 = zext i1 %i.ao to i64                 ; 2 uses
  %i.ap = sub nuw i64 %i.ai, %..i.i33             ; 2 uses
  store i64 %i.ap, ptr %i.c, align 8, !alias.scope !1608
  %i.aq = load i64, ptr %i.o, align 8, !alias.scope !1609, !noalias !1608, !noundef !6
  %i.ar = add i64 %i.aq, %..i.i33
  store i64 %i.ar, ptr %i.o, align 8, !alias.scope !1609, !noalias !1608
  %i.as = icmp ult i64 %i.ai, 2
  br i1 %i.as, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1610
  call void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB6_8buf_read7BufRead8fill_bufCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val30), !noalias !1610
  %i.at = load ptr, ptr %i.a, align 8, !noalias !1610, !noundef !6 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.av = load ptr, ptr %i.p, align 8, !noalias !1610, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1610
  store i8 0, ptr %0, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %.sroa.425.0..sroa_idx, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aw = load i64, ptr %i.p, align 8, !noalias !1610, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1610
  %i.ax = icmp ne i64 %i.aw, 0
  %i.ay = icmp samesign ult i64 %indvars.iv, 48
  %or.cond = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %or.cond, label %bb.e, label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.h, %bb.a, %.preheader, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit
  store i8 -1, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.g, %.loopexit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtCsksn9slvsHfS_10image_webp8losslessINtB5_9BitReaderQINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB12_6cursor6CursorRShEEE4fillCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %.val29 = load ptr, ptr %1, align 8, !nonnull !6, !align !29, !noundef !6 ; 5 uses
  %i.c = getelementptr i8, ptr %.val29, i64 16    ; 6 uses
  %.val1.i = load i64, ptr %i.c, align 8, !noalias !1627, !noundef !6 ; 2 uses
  %i.d = icmp eq i64 %.val1.i, 0
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %.val29, align 8, !noalias !1627, !nonnull !6, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1628
  call void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB6_8buf_read7BufRead8fill_bufCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i), !noalias !1628
  %i.e = load ptr, ptr %i.b, align 8, !noalias !1628, !noundef !6 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.g, align 8, !noalias !1628, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1628
  store i8 0, ptr %0, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.420.0..sroa_idx, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.g, align 8, !noalias !1628, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1628
  %..i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.val1.i, i64 %i.i)
  %i.j = icmp ugt i64 %..i.i.i, 7
  br i1 %i.j, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.promoted = load i8, ptr %i.k, align 8         ; 2 uses
  %i.l = icmp ne i64 %i.i, 0
  %i.m = icmp ult i8 %.promoted, 56
  %or.cond50 = select i1 %i.l, i1 %i.m, i1 false
  br i1 %or.cond50, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.promoted52 = load i64, ptr %i.n, align 8
  %i.p = zext nneg i8 %.promoted to i64
  br label %bb.e

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.d
  %.sroa.021.0.copyload = load i64, ptr %i.e, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !noundef !6  ; 3 uses
  %i.s = sub i8 63, %i.r
  %i.t = lshr i8 %i.s, 3
  %i.u = zext nneg i8 %i.t to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1629)
  %i.v = load i64, ptr %i.c, align 8, !alias.scope !1629, !noundef !6 ; 2 uses
  %..i.i.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.v, i64 range(i64 0, 32) %i.u) ; 2 uses
  %i.w = sub nuw i64 %i.v, %..i.i.i32
  store i64 %i.w, ptr %i.c, align 8, !alias.scope !1629
  %.val.i.i = load ptr, ptr %.val29, align 8, !alias.scope !1629, !nonnull !6, !align !29, !noundef !6
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !1630, !noalias !1629, !noundef !6
  %i.z = add i64 %i.y, %..i.i.i32
  store i64 %i.z, ptr %i.x, align 8, !alias.scope !1630, !noalias !1629
  %i.aa = and i8 %i.r, 63
  %i.ab = zext nneg i8 %i.aa to i64
  %i.ac = shl i64 %.sroa.021.0.copyload, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !6
  %i.af = or i64 %i.ae, %i.ac
  store i64 %i.af, ptr %i.ad, align 8
  %i.ag = or i8 %i.r, 56
  store i8 %i.ag, ptr %i.q, align 8
  br label %.loopexit

bb.e:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ %i.p, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.ah = phi i64 [ %.promoted52, %.lr.ph ], [ %i.al, %bb.h ]
  %.sroa.06.051 = phi ptr [ %i.e, %.lr.ph ], [ %i.au, %bb.h ]
  %i.ai = load i8, ptr %.sroa.06.051, align 1, !noundef !6
  %i.aj = zext i8 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, %indvars.iv
  %i.al = or i64 %i.ak, %i.ah                     ; 2 uses
  store i64 %i.al, ptr %i.n, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %i.am = trunc nuw nsw i64 %indvars.iv.next to i8
  store i8 %i.am, ptr %i.k, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1631)
  %i.an = load i64, ptr %i.c, align 8, !alias.scope !1631, !noundef !6 ; 2 uses
  %i.ao = icmp ne i64 %i.an, 0
  %..i.i.i33 = zext i1 %i.ao to i64               ; 2 uses
  %i.ap = sub nuw i64 %i.an, %..i.i.i33
  store i64 %i.ap, ptr %i.c, align 8, !alias.scope !1631
  %.val.i.i34 = load ptr, ptr %.val29, align 8, !alias.scope !1631, !nonnull !6, !align !29, !noundef !6
  %i.aq = getelementptr inbounds nuw i8, ptr %.val.i.i34, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !1632, !noalias !1631, !noundef !6
  %i.as = add i64 %i.ar, %..i.i.i33
  store i64 %i.as, ptr %i.aq, align 8, !alias.scope !1632, !noalias !1631
  %.val1.i36 = load i64, ptr %i.c, align 8, !noalias !1633, !noundef !6
  %i.at = icmp eq i64 %.val1.i36, 0
  br i1 %i.at, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val.i35 = load ptr, ptr %.val29, align 8, !noalias !1633, !nonnull !6, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1634
  call void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB6_8buf_read7BufRead8fill_bufCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i35), !noalias !1634
  %i.au = load ptr, ptr %i.a, align 8, !noalias !1634, !noundef !6 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aw = load ptr, ptr %i.o, align 8, !noalias !1634, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1634
  store i8 0, ptr %0, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %.sroa.425.0..sroa_idx, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ax = load i64, ptr %i.o, align 8, !noalias !1634, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1634
  %i.ay = icmp ne i64 %i.ax, 0
  %i.az = icmp samesign ult i64 %indvars.iv, 48
  %or.cond = select i1 %i.ay, i1 %i.az, i1 false
  br i1 %or.cond, label %bb.e, label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.h, %bb.a, %.preheader, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsa5QsYiPB8Gl_5image.exit
  store i8 -1, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.g, %.loopexit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 0, 44) i8 @_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = ptrtoint ptr %.0.val to i64              ; 3 uses
  %i.b = and i64 %i.a, 3
  switch i64 %i.b, label %default.unreachable [
    i64 2, label %bb.b
    i64 3, label %bb.c
    i64 0, label %bb.d
    i64 1, label %bb.e
  ], !prof !24

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 32
  %i.d = trunc nuw i64 %i.c to i32
  %i.e = tail call noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6
  %i.h = tail call noundef i8 %i.g(i32 noundef %i.d)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.i = lshr i64 %i.a, 32
  %i.j = icmp ult ptr %.0.val, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i = trunc i64 %i.i to i8     ; 2 uses
  %i.k = icmp ne i8 %switch.idx.cast.i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  tail call void @llvm.assume(i1 %i.k)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.m = load i8, ptr %i.l, align 8, !range !30, !noundef !6
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %.0.val, i64 31
  %i.o = load i8, ptr %i.n, align 8, !range !30, !noundef !6
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ %i.h, %bb.b ], [ %switch.idx.cast.i.i, %bb.c ], [ %i.m, %bb.d ], [ %i.o, %bb.e ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtNtCs53gkmrwjETj_4tiff7decoder6streamINtB5_12Group4ReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([168 x i8]) align 8 captures(none) dereferenceable(168) %0, i32 noundef %1, i32 noundef %2, ptr noalias nofree noundef align 8 dereferenceable(24) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
end_hunk_0
