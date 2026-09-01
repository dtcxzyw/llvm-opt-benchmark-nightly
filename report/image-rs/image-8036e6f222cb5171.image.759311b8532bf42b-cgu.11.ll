Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.11?download=true
inline.NumInlined: 1166
inline.NumDeleted: 423
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_RNvMs0_NtCsksn9slvsHfS_10image_webp3vp8INtB5_10Vp8DecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtBY_6cursor6CursorRShEEE15init_partitionsCsa5QsYiPB8Gl_5image:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.al:                                            ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !798
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !805
  store ptr @160, ptr %i.b, align 8, !noalias !805
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 55, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @59, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @85) #28
          to label %bb.an unwind label %bb.am, !noalias !805

bb.am:                                            ; preds = %bb.al
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #24
          to label %.body unwind label %bb.ao, !noalias !805

bb.an:                                            ; preds = %bb.al
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !noalias !805
  unreachable

bb.ap:                                            ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !798
  %i.ca = zext i32 %i.aq to i64                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.cb = add nuw nsw i64 %i.ca, 3
  %.sroa.07.0 = lshr i64 %i.cb, 2                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !808)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !808
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 2305843009213693953) %.sroa.07.0, i1 noundef zeroext true, i64 noundef 1, i64 noundef 4)
          to label %.noexc64 unwind label %.loopexit

.noexc64:                                         ; preds = %bb.ap
  %i.cc = load i64, ptr %i.a, align 8, !range !155, !noalias !808, !noundef !5
  %i.cd = trunc nuw i64 %i.cc to i1
  %i.ce = load i64, ptr %i.ai, align 8, !range !179, !noalias !808, !noundef !5 ; 2 uses
  br i1 %i.cd, label %bb.aq, label %bb.ar, !prof !154

bb.aq:                                            ; preds = %.noexc64
  %i.cf = load i64, ptr %i.aj, align 8, !noalias !808
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ce, i64 %i.cf) #28
          to label %.noexc65 unwind label %.loopexit.split-lp

.noexc65:                                         ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %.noexc64
  %i.cg = load ptr, ptr %i.aj, align 8, !noalias !808, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !808
  store i64 %i.ce, ptr %i.l, align 8, !alias.scope !808
  store ptr %i.cg, ptr %i.ak, align 8, !alias.scope !808
  store i64 %.sroa.07.0, ptr %i.al, align 8, !alias.scope !808
  %i.ch = invoke { ptr, i64 } @_RNvMs0_NtCsj6eKBz9Db1c_4core5sliceSAhj4_16as_flattened_mutCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.cg, i64 noundef %.sroa.07.0)
          to label %bb.at unwind label %.loopexit97 ; 2 uses

bb.as:                                            ; preds = %bb.bc
  %lpad.thr_comm.split-lp91 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.at:                                            ; preds = %bb.ar
  %i.ci = extractvalue { ptr, i64 } %i.ch, 1      ; 2 uses
  %.not50 = icmp ult i64 %i.ci, %i.ca
  br i1 %.not50, label %bb.av, label %bb.au, !prof !206

bb.au:                                            ; preds = %bb.at
  %i.cj = extractvalue { ptr, i64 } %i.ch, 0
  %i.ck = invoke noundef ptr @_RNvYINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB7_6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull %i.cj, i64 noundef %i.ca)
          to label %bb.aw unwind label %.loopexit97 ; 2 uses

bb.av:                                            ; preds = %bb.at
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ca, i64 noundef %i.ci, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #28
          to label %bb.z unwind label %.loopexit.split-lp98

bb.aw:                                            ; preds = %bb.au
  %.not51 = icmp eq ptr %i.ck, null
  br i1 %.not51, label %bb.bb, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store i8 0, ptr %0, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ck, ptr %.sroa.426.0..sroa_idx, align 8
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecAhj4_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.az unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecAhj4_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body unwind label %bb.ba

bb.az:                                            ; preds = %bb.ax
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecAhj4_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecAhj4_EECsa5QsYiPB8Gl_5image.exit unwind label %.loopexit.split-lp

bb.ba:                                            ; preds = %bb.ay
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.bb:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %exitcond.not = icmp eq i64 %.sroa.11.0140, 8
  br i1 %exitcond.not, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.cn = getelementptr inbounds nuw [48 x i8], ptr %i.am, i64 %.sroa.11.0140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  invoke void @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder4init(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.cn, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.j, i64 noundef %i.ca)
          to label %bb.be unwind label %bb.as

bb.bd:                                            ; preds = %bb.bb
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 8, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #28
          to label %bb.z unwind label %.loopexit.split-lp98

bb.be:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.co = load i8, ptr %i.k, align 8, !range !709, !noundef !5
  %.not52 = icmp eq i8 %i.co, -1
  br i1 %.not52, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecAhj4_EECsa5QsYiPB8Gl_5image.exit

bb.bg:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.cp = icmp eq i64 %i.ao, 0
  br i1 %i.cp, label %._crit_edge, label %bb.h

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecAhj4_EECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.az, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.bh

bb.bh:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecAhj4_EECsa5QsYiPB8Gl_5image.exit, %bb.f
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit71 unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %common.resume unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit71: ; preds = %bb.bh
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.af

.loopexit97:                                      ; preds = %bb.ar, %bb.au
  %lpad.loopexit99 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

.loopexit.split-lp98:                             ; preds = %bb.av, %bb.bd
  %lpad.loopexit.split-lp100 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bk:                                            ; preds = %.loopexit.split-lp98, %.loopexit97
  %lpad.phi101 = phi { ptr, i32 } [ %lpad.loopexit99, %.loopexit97 ], [ %lpad.loopexit.split-lp100, %.loopexit.split-lp98 ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecAhj4_EECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #24
          to label %.body unwind label %bb.ak
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCsksn9slvsHfS_10image_webp3vp8INtB5_10Vp8DecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtBY_6cursor6CursorRShEEE17read_coefficientsCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(896) %1, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(64) %2, i64 noundef range(i64 0, 255) %3, i64 noundef range(i64 0, 4) %4, i64 noundef range(i64 0, 256) %5, i16 noundef %6, i16 noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = icmp samesign ult i64 %5, 3
  br i1 %i.c, label %bb.c, label %bb.b, !prof !156

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 800
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw [1056 x i8], ptr %i.e, i64 %4 ; 2 uses
  %i.g = icmp samesign ult i64 %3, 8
  br i1 %i.g, label %.peel.begin, label %bb.o

.peel.begin:                                      ; preds = %bb.c
  %i.h = icmp eq i64 %4, 0                        ; 3 uses
  %. = zext i1 %i.h to i64                        ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.j = getelementptr inbounds nuw [48 x i8], ptr %i.i, i64 %3 ; 27 uses
  %i.k = select i1 %i.h, i64 2, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr @91, i64 %.
  %i.m = load i8, ptr %i.l, align 1, !noundef !5
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [132 x i8], ptr %i.f, i64 %i.n
  %i.p = getelementptr inbounds nuw [44 x i8], ptr %i.o, i64 %5 ; 2 uses
  %.sroa.08.0.copyload.peel = load i32, ptr %i.p, align 1
  %i.q = tail call noundef i8 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder30read_with_tree_with_first_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef 11, i32 noundef %.sroa.08.0.copyload.peel) #30 ; 6 uses
  switch i8 %i.q, label %bb.d [
    i8 11, label %.loopexit
    i8 0, label %.peel.newph
  ]

bb.d:                                             ; preds = %.peel.begin
  %i.r = add i8 %i.q, -1
  %or.cond.peel = icmp ult i8 %i.r, 4
  br i1 %or.cond.peel, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add i8 %i.q, -5                          ; 6 uses
  %or.cond1.peel = icmp ult i8 %i.s, 6
  br i1 %or.cond1.peel, label %bb.f, label %.loopexit65, !prof !811

bb.f:                                             ; preds = %bb.e
  %i.t = zext nneg i8 %i.s to i64                 ; 2 uses
  %i.u = getelementptr inbounds nuw [12 x i8], ptr @94, i64 %i.t ; 11 uses
  %.sroa.4.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %.sroa.4.0.copyload.peel = load i8, ptr %.sroa.4.0..sroa_idx.peel, align 1
  %.sroa.5.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %.sroa.5.0.copyload.peel = load i8, ptr %.sroa.5.0..sroa_idx.peel, align 1
  %.sroa.6.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.u, i64 3
  %.sroa.6.0.copyload.peel = load i8, ptr %.sroa.6.0..sroa_idx.peel, align 1
  %.sroa.7.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %.sroa.7.0.copyload.peel = load i8, ptr %.sroa.7.0..sroa_idx.peel, align 1
  %.sroa.8.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.u, i64 5
  %.sroa.8.0.copyload.peel = load i8, ptr %.sroa.8.0..sroa_idx.peel, align 1
  %.sroa.9.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.u, i64 6
  %.sroa.9.0.copyload.peel = load i8, ptr %.sroa.9.0..sroa_idx.peel, align 1
  %.sroa.10.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.u, i64 7
  %.sroa.10.0.copyload.peel = load i8, ptr %.sroa.10.0..sroa_idx.peel, align 1
  %.sroa.11.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.11.0.copyload.peel = load i8, ptr %.sroa.11.0..sroa_idx.peel, align 1
  %.sroa.12.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.u, i64 9
  %.sroa.12.0.copyload.peel = load i8, ptr %.sroa.12.0..sroa_idx.peel, align 1
  %.sroa.13.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.u, i64 10
  %.sroa.13.0.copyload.peel = load i8, ptr %.sroa.13.0..sroa_idx.peel, align 1
  %.sroa.0.0.copyload.peel = load i8, ptr %i.u, align 1
  %i.v = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_bool(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef %.sroa.0.0.copyload.peel) #30 ; 2 uses
  %i.w = zext i1 %i.v to i16
  %i.x = icmp eq i8 %i.s, 0
  br i1 %i.x, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_bool(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef %.sroa.4.0.copyload.peel) #30
  %i.z = select i1 %i.v, i16 2, i16 0
  %i.aa = zext i1 %i.y to i16
  %i.ab = or disjoint i16 %i.z, %i.aa             ; 2 uses
  %i.ac = icmp eq i8 %i.s, 1
  br i1 %i.ac, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_bool(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef %.sroa.5.0.copyload.peel) #30
  %i.ae = shl nuw nsw i16 %i.ab, 1
  %i.af = zext i1 %i.ad to i16
  %i.ag = or disjoint i16 %i.ae, %i.af            ; 2 uses
  %i.ah = icmp samesign ult i8 %i.s, 3
  br i1 %i.ah, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_bool(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef %.sroa.6.0.copyload.peel) #30
  %i.aj = shl nuw nsw i16 %i.ag, 1
  %i.ak = zext i1 %i.ai to i16
  %i.al = or disjoint i16 %i.aj, %i.ak            ; 2 uses
  %i.am = icmp ult i8 %i.q, 9
  br i1 %i.am, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_bool(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef %.sroa.7.0.copyload.peel) #30
  %i.ao = shl nuw nsw i16 %i.al, 1
  %i.ap = zext i1 %i.an to i16
  %i.aq = or disjoint i16 %i.ao, %i.ap            ; 2 uses
  %.not56.peel = icmp eq i8 %i.s, 5
  br i1 %.not56.peel, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ar = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_bool(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef %.sroa.8.0.copyload.peel) #30
  %i.as = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_bool(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef %.sroa.9.0.copyload.peel) #30
  %i.at = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_bool(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef %.sroa.10.0.copyload.peel) #30
  %i.au = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_bool(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef %.sroa.11.0.copyload.peel) #30
  %i.av = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_bool(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef %.sroa.12.0.copyload.peel) #30
  %i.aw = shl nuw nsw i16 %i.aq, 2
  %i.ax = select i1 %i.ar, i16 2, i16 0
  %i.ay = or disjoint i16 %i.aw, %i.ax
  %i.az = zext i1 %i.as to i16
  %i.ba = or disjoint i16 %i.ay, %i.az
  %i.bb = shl nuw nsw i16 %i.ba, 2
  %i.bc = select i1 %i.at, i16 2, i16 0
  %i.bd = or disjoint i16 %i.bb, %i.bc
  %i.be = zext i1 %i.au to i16
  %i.bf = or disjoint i16 %i.bd, %i.be
  %i.bg = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_bool(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef %.sroa.13.0.copyload.peel) #30
  %i.bh = shl nuw nsw i16 %i.bf, 2
  %i.bi = select i1 %i.av, i16 2, i16 0
  %i.bj = or disjoint i16 %i.bh, %i.bi
  %i.bk = zext i1 %i.bg to i16
  %i.bl = or disjoint i16 %i.bj, %i.bk
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.015.0.lcssa.peel = phi i16 [ %i.al, %bb.i ], [ %i.ag, %bb.h ], [ %i.w, %bb.f ], [ %i.bl, %bb.k ], [ %i.ab, %bb.g ], [ %i.aq, %bb.j ]
  %i.bm = getelementptr inbounds nuw i8, ptr @95, i64 %i.t
  %i.bn = load i8, ptr %i.bm, align 1, !noundef !5
  %i.bo = zext i8 %i.bn to i16
  %i.bp = add nuw nsw i16 %.sroa.015.0.lcssa.peel, %i.bo
  br label %bb.n

bb.m:                                             ; preds = %bb.d
  %i.bq = zext nneg i8 %i.q to i16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.014.0.peel = phi i16 [ %i.bq, %bb.m ], [ %i.bp, %bb.l ] ; 3 uses
  %i.br = zext nneg i16 %.sroa.014.0.peel to i32  ; 2 uses
  %switch.selectcmp.peel = icmp eq i16 %.sroa.014.0.peel, 1
  %switch.select.peel = select i1 %switch.selectcmp.peel, i64 1, i64 2
  %switch.selectcmp43.peel = icmp eq i16 %.sroa.014.0.peel, 0
  %switch.select44.peel = select i1 %switch.selectcmp43.peel, i64 0, i64 %switch.select.peel
  %i.bs = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_flag(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j) #30
  %i.bt = sub nsw i32 0, %i.br
  %spec.select.peel = select i1 %i.bs, i32 %i.bt, i32 %i.br
  %i.bu = getelementptr inbounds nuw i8, ptr @96, i64 %.
  %i.bv = load i8, ptr %i.bu, align 1, !noundef !5
  %i.bw = zext i8 %i.bv to i64
  %.sroa.020.0.peel = select i1 %i.h, i16 %7, i16 %6
  %i.bx = sext i16 %.sroa.020.0.peel to i32
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bw
  %i.bz = mul nsw i32 %spec.select.peel, %i.bx
  store i32 %i.bz, ptr %i.by, align 4
  br label %.peel.newph

.peel.newph:                                      ; preds = %.peel.begin, %bb.n
  %.sroa.06.0.be.peel = phi i64 [ 0, %bb.n ], [ 1, %.peel.begin ]
  %.sroa.0.0.be.peel = phi i64 [ %switch.select44.peel, %bb.n ], [ 0, %.peel.begin ]
  %i.ca = sext i16 %7 to i32
  br label %bb.p

bb.o:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %3, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #26
  unreachable

bb.p:                                             ; preds = %.peel.newph, %.backedge
  %.sroa.0.051 = phi i64 [ %.sroa.0.0.be.peel, %.peel.newph ], [ %.sroa.0.0.be, %.backedge ]
  %.sroa.06.049 = phi i64 [ %.sroa.06.0.be.peel, %.peel.newph ], [ %.sroa.06.0.be, %.backedge ]
  %.sroa.021.148 = phi i64 [ %i.k, %.peel.newph ], [ %i.cb, %.backedge ] ; 3 uses
  %i.cb = add nuw nsw i64 %.sroa.021.148, 1       ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr @91, i64 %.sroa.021.148
  %i.cd = load i8, ptr %i.cc, align 1, !noundef !5
  %i.ce = zext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [132 x i8], ptr %i.f, i64 %i.ce
  %i.cg = getelementptr inbounds nuw [44 x i8], ptr %i.cf, i64 %.sroa.0.051 ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %.sroa.06.049
  %.sroa.08.0.copyload = load i32, ptr %i.ch, align 1
  %i.ci = tail call noundef i8 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder30read_with_tree_with_first_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cg, i64 noundef 11, i32 noundef %.sroa.08.0.copyload) #30 ; 6 uses
  switch i8 %i.ci, label %bb.q [
    i8 11, label %.loopexit
    i8 0, label %.backedge
  ]

.loopexit:                                        ; preds = %bb.p, %.backedge, %.peel.begin
  %.sroa.05.0.lcssa = phi i8 [ 0, %.peel.begin ], [ 1, %.backedge ], [ 1, %bb.p ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.j, i64 43
  %i.ck = load i8, ptr %i.cj, align 1, !noundef !5
  %i.cl = icmp eq i8 %i.ck, -14
  br i1 %i.cl, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cm = add i8 %i.ci, -1
  %or.cond = icmp ult i8 %i.cm, 4
  br i1 %or.cond, label %bb.u, label %bb.t

bb.r:                                             ; preds = %.loopexit
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.05.0.lcssa, ptr %i.cn, align 1
  br label %bb.s

bb.s:                                             ; preds = %.loopexit, %bb.r
  %storemerge = phi i8 [ -1, %bb.r ], [ 15, %.loopexit ]
  store i8 %storemerge, ptr %0, align 8
  ret void

bb.t:                                             ; preds = %bb.q
  %i.co = add i8 %i.ci, -5                        ; 6 uses
  %or.cond1 = icmp ult i8 %i.co, 6
  br i1 %or.cond1, label %bb.v, label %.loopexit65, !prof !811

bb.u:                                             ; preds = %bb.q
  %i.cp = zext nneg i8 %i.ci to i16
  br label %bb.ac

.loopexit65:                                      ; preds = %bb.t, %bb.e
  %.lcssa63 = phi i8 [ %i.q, %bb.e ], [ %i.ci, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %.lcssa63, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impaNtB8_7Display3fmt, ptr %.sroa.426.0..sroa_idx, align 8
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @92, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #26
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.cq = zext nneg i8 %i.co to i64               ; 2 uses
  %i.cr = getelementptr inbounds nuw [12 x i8], ptr @94, i64 %i.cq ; 11 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 3
  %.sroa.6.0.copyload = load i8, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 5
  %.sroa.8.0.copyload = load i8, ptr %.sroa.8.0..sroa_idx, align 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 6
  %.sroa.9.0.copyload = load i8, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 7
  %.sroa.10.0.copyload = load i8, ptr %.sroa.10.0..sroa_idx, align 1
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %.sroa.11.0.copyload = load i8, ptr %.sroa.11.0..sroa_idx, align 1
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 9
  %.sroa.12.0.copyload = load i8, ptr %.sroa.12.0..sroa_idx, align 1
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 10
  %.sroa.13.0.copyload = load i8, ptr %.sroa.13.0..sroa_idx, align 1
  %.sroa.0.0.copyload = load i8, ptr %i.cr, align 1
  %i.cs = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_bool(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef %.sroa.0.0.copyload) #30 ; 2 uses
  %i.ct = zext i1 %i.cs to i16
  %i.cu = icmp eq i8 %i.co, 0
  br i1 %i.cu, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cv = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_bool(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef %.sroa.4.0.copyload) #30
  %i.cw = select i1 %i.cs, i16 2, i16 0
  %i.cx = zext i1 %i.cv to i16
  %i.cy = or disjoint i16 %i.cw, %i.cx            ; 2 uses
  %i.cz = icmp eq i8 %i.co, 1
  br i1 %i.cz, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.da = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_bool(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef %.sroa.5.0.copyload) #30
  %i.db = shl nuw nsw i16 %i.cy, 1
  %i.dc = zext i1 %i.da to i16
  %i.dd = or disjoint i16 %i.db, %i.dc            ; 2 uses
  %i.de = icmp samesign ult i8 %i.co, 3
  br i1 %i.de, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.df = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_bool(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef %.sroa.6.0.copyload) #30
  %i.dg = shl nuw nsw i16 %i.dd, 1
  %i.dh = zext i1 %i.df to i16
  %i.di = or disjoint i16 %i.dg, %i.dh            ; 2 uses
  %i.dj = icmp ult i8 %i.ci, 9
  br i1 %i.dj, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dk = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_bool(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef %.sroa.7.0.copyload) #30
  %i.dl = shl nuw nsw i16 %i.di, 1
  %i.dm = zext i1 %i.dk to i16
  %i.dn = or disjoint i16 %i.dl, %i.dm            ; 2 uses
  %.not56 = icmp eq i8 %i.co, 5
  br i1 %.not56, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.do = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_bool(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef %.sroa.8.0.copyload) #30
  %i.dp = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_bool(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef %.sroa.9.0.copyload) #30
  %i.dq = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_bool(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef %.sroa.10.0.copyload) #30
  %i.dr = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_bool(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef %.sroa.11.0.copyload) #30
  %i.ds = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_bool(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef %.sroa.12.0.copyload) #30
  %i.dt = shl nuw nsw i16 %i.dn, 2
  %i.du = select i1 %i.do, i16 2, i16 0
  %i.dv = or disjoint i16 %i.dt, %i.du
  %i.dw = zext i1 %i.dp to i16
  %i.dx = or disjoint i16 %i.dv, %i.dw
  %i.dy = shl nuw nsw i16 %i.dx, 2
  %i.dz = select i1 %i.dq, i16 2, i16 0
  %i.ea = or disjoint i16 %i.dy, %i.dz
  %i.eb = zext i1 %i.dr to i16
  %i.ec = or disjoint i16 %i.ea, %i.eb
  %i.ed = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_bool(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef %.sroa.13.0.copyload) #30
  %i.ee = shl nuw nsw i16 %i.ec, 2
  %i.ef = select i1 %i.ds, i16 2, i16 0
  %i.eg = or disjoint i16 %i.ee, %i.ef
  %i.eh = zext i1 %i.ed to i16
  %i.ei = or disjoint i16 %i.eg, %i.eh
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %.sroa.015.0.lcssa = phi i16 [ %i.di, %bb.y ], [ %i.dd, %bb.x ], [ %i.ct, %bb.v ], [ %i.ei, %bb.aa ], [ %i.cy, %bb.w ], [ %i.dn, %bb.z ]
  %i.ej = getelementptr inbounds nuw i8, ptr @95, i64 %i.cq
  %i.ek = load i8, ptr %i.ej, align 1, !noundef !5
  %i.el = zext i8 %i.ek to i16
  %i.em = add nuw nsw i16 %.sroa.015.0.lcssa, %i.el
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.u
  %.sroa.014.0 = phi i16 [ %i.cp, %bb.u ], [ %i.em, %bb.ab ] ; 3 uses
  %i.en = zext nneg i16 %.sroa.014.0 to i32       ; 2 uses
  %switch.selectcmp = icmp eq i16 %.sroa.014.0, 1
  %switch.select = select i1 %switch.selectcmp, i64 1, i64 2
  %switch.selectcmp43 = icmp eq i16 %.sroa.014.0, 0
  %switch.select44 = select i1 %switch.selectcmp43, i64 0, i64 %switch.select
  %i.eo = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_flag(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j) #30
  %i.ep = sub nsw i32 0, %i.en
  %spec.select = select i1 %i.eo, i32 %i.ep, i32 %i.en
  %i.eq = getelementptr inbounds nuw i8, ptr @96, i64 %.sroa.021.148
  %i.er = load i8, ptr %i.eq, align 1, !noundef !5
  %i.es = zext i8 %i.er to i64
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.es
  %i.eu = mul nsw i32 %spec.select, %i.ca
  store i32 %i.eu, ptr %i.et, align 4
  br label %.backedge

.backedge:                                        ; preds = %bb.ac, %bb.p
  %.sroa.06.0.be = phi i64 [ 0, %bb.ac ], [ 1, %bb.p ]
  %.sroa.0.0.be = phi i64 [ %switch.select44, %bb.ac ], [ 0, %bb.p ]
  %exitcond.not = icmp eq i64 %i.cb, 16
  br i1 %exitcond.not, label %.loopexit, label %bb.p, !llvm.loop !812
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCsksn9slvsHfS_10image_webp3vp8INtB5_10Vp8DecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtBY_6cursor6CursorRShEEE20read_segment_updatesCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) initializes((0, 1)) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(896) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 17 uses
  %i.b = tail call noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_flag(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a) #30
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 889 ; 2 uses
end_hunk_0
