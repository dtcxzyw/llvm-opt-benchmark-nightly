Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/exr-f2a8b2e207dae201.exr.9cd9361a9d216ccf-cgu.07?download=true
inline.NumInlined: 171
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RNvNtNtCsdsTQD3x2eOp_3exr11compression3rle17unpack_rle_tokens:bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.d
  store i64 2, ptr %0, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %.sroa.431.0..sroa_idx, align 8
  %.sroa.431.sroa.4.0..sroa.431.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @22, ptr %.sroa.431.sroa.4.0..sroa.431.0..sroa_idx.sroa_idx, align 8
  br label %bb.l

bb.q:                                             ; preds = %.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa13channel_rules19parse_channel_rules(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 12 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 3 uses
  %i.i = icmp ugt i64 %i.h, 1
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 8
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %.sroa.476.0..sroa_idx, align 8
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @24, ptr %.sroa.577.0..sroa_idx, align 8
  %.sroa.678.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 27, ptr %.sroa.678.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.014.0.copyload = load i16, ptr %i.j, align 1 ; 2 uses
  %i.k = icmp ult i16 %.sroa.014.0.copyload, 2
  br i1 %i.k, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.f, %bb.h, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa13channel_rules4RuleEEB1g_.exit, %._crit_edge, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  %i.l = add i64 %i.h, -2
  %i.m = zext i16 %.sroa.014.0.copyload to i64    ; 3 uses
  %i.n = add nsw i64 %i.m, -2                     ; 3 uses
  %i.o = icmp ugt i64 %i.n, %i.l
  br i1 %i.o, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.c
  store i64 2, ptr %0, align 8
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %.sroa.494.0..sroa_idx, align 8
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @24, ptr %.sroa.595.0..sroa_idx, align 8
  %.sroa.696.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 27, ptr %.sroa.696.0..sroa_idx, align 8
  br label %bb.d

bb.g:                                             ; preds = %bb.e
  %i.p = sub nuw i64 %i.h, %i.m
  %i.q = getelementptr i8, ptr %i.j, i64 %i.m
  store ptr %i.q, ptr %1, align 8, !captures !147
  store i64 %i.p, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store i64 0, ptr %i.s, align 8
  %i.t = icmp eq i64 %i.n, 0
  br i1 %i.t, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.464.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.665.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.638.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.638.sroa.7.0..sroa.638.0..sroa_idx39.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.638.sroa.8.0..sroa.638.0..sroa_idx39.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.638.sroa.9.0..sroa.638.0..sroa_idx39.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.840.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  store i64 2, ptr %0, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.435.sroa.4.0..sroa.435.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @24, ptr %.sroa.435.sroa.4.0..sroa.435.0..sroa_idx.sroa_idx, align 8
  %.sroa.435.sroa.5.0..sroa.435.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 27, ptr %.sroa.435.sroa.5.0..sroa.435.0..sroa_idx.sroa_idx, align 8
  br label %bb.d

bb.i:                                             ; preds = %.lr.ph, %bb.an
  %.pn = phi ptr [ %i.j, %.lr.ph ], [ %i.as, %bb.an ]
  %.sroa.6.0164 = phi i64 [ %i.n, %.lr.ph ], [ %i.at, %bb.an ] ; 3 uses
  %.sroa.0.0165 = getelementptr inbounds nuw i8, ptr %.pn, i64 2 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0165, i64 %.sroa.6.0164
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i, %bb.j
  %.sroa.02.07.i.i = phi i64 [ %i.ac, %bb.j ], [ 0, %bb.i ] ; 5 uses
  %i.z = phi ptr [ %i.ab, %bb.j ], [ %.sroa.0.0165, %bb.i ] ; 2 uses
  %.val.i.i = load i8, ptr %i.z, align 1, !noalias !148, !noundef !4
  %i.aa = icmp eq i8 %.val.i.i, 0
  br i1 %i.aa, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 2 uses
  %i.ac = add nuw i64 %.sroa.02.07.i.i, 1
  %i.ad = icmp eq ptr %i.ab, %i.y
  br i1 %i.ad, label %.loopexit, label %.lr.ph.i.i

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.ae = icmp ult i64 %.sroa.02.07.i.i, %.sroa.6.0164
  call void @llvm.assume(i1 %i.ae)
  %i.af = icmp ugt i64 %.sroa.02.07.i.i, 128
  br i1 %i.af, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !149
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !149
  invoke void @_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0165, i64 noundef %.sroa.02.07.i.i)
          to label %.noexc unwind label %.loopexit160

.noexc:                                           ; preds = %bb.l
  %i.ag = load i64, ptr %i.c, align 8, !range !6, !noalias !149, !noundef !4
  %.not115.i = icmp eq i64 %i.ag, -1
  br i1 %.not115.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !149
  br label %bb.s

bb.n:                                             ; preds = %.noexc
  %i.ah = load ptr, ptr %i.u, align 8, !noalias !149, !nonnull !4, !noundef !4
  %i.ai = load i64, ptr %i.v, align 8, !noalias !149, !noundef !4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !149
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.ai, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc109 unwind label %.loopexit160

.noexc109:                                        ; preds = %bb.n
  %i.aj = load i64, ptr %i.a, align 8, !range !11, !noalias !149, !noundef !4
  %i.ak = trunc nuw i64 %i.aj to i1
  %i.al = load i64, ptr %i.w, align 8, !range !12, !noalias !149, !noundef !4 ; 3 uses
  br i1 %i.ak, label %bb.o, label %bb.p, !prof !5

bb.o:                                             ; preds = %.noexc109
  %i.am = load i64, ptr %i.x, align 8, !noalias !149
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.al, i64 %i.am) #20
          to label %.noexc110 unwind label %.loopexit.split-lp

.noexc110:                                        ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %.noexc109
  %i.an = load ptr, ptr %i.x, align 8, !noalias !149, !nonnull !4, !noundef !4 ; 2 uses
  %i.ao = icmp ule i64 %i.ai, %i.al
  call void @llvm.assume(i1 %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !149
  %.not116.i = icmp eq i64 %i.ai, 0
  br i1 %.not116.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.r, %bb.p
  store i64 %i.al, ptr %i.d, align 8, !noalias !149
  store ptr %i.an, ptr %.sroa.464.0..sroa_idx.i, align 8, !noalias !149
  store i64 %i.ai, ptr %.sroa.665.0..sroa_idx.i, align 8, !noalias !149
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.an, ptr nonnull align 1 %i.ah, i64 %i.ai, i1 false), !noalias !149
  br label %bb.q

bb.s:                                             ; preds = %bb.q, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !149
  %i.ap = add nuw nsw i64 %.sroa.02.07.i.i, 1     ; 2 uses
  %i.aq = sub nuw nsw i64 %.sroa.6.0164, %i.ap    ; 2 uses
  %i.ar = icmp ugt i64 %i.aq, 1
  br i1 %i.ar, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0165, i64 %i.ap ; 3 uses
  %i.at = add nsw i64 %i.aq, -2                   ; 2 uses
  %i.au = load i8, ptr %i.as, align 1, !noalias !149, !noundef !4 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !noalias !149, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !149
  %i.ax = lshr i8 %i.au, 4                        ; 2 uses
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.y, label %bb.x

bb.u:                                             ; preds = %bb.s
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdsTQD3x2eOp_3exr.exit.i unwind label %bb.v, !noalias !149

bb.v:                                             ; preds = %bb.u
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body unwind label %bb.w, !noalias !149

bb.w:                                             ; preds = %bb.v
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19, !noalias !149
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdsTQD3x2eOp_3exr.exit.i: ; preds = %bb.u
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.loopexit.sink.split unwind label %.loopexit.split-lp

bb.x:                                             ; preds = %bb.t
  %2 = zext nneg i8 %i.ax to i64
  %3 = add nsw i64 %2, -1
  %i.bb = icmp ult i8 %i.au, 64
  br i1 %i.bb, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x, %bb.t
  %.sroa.741.0.i = phi i64 [ undef, %bb.t ], [ %3, %bb.x ]
  %.sroa.040.0.i = phi i64 [ 0, %bb.t ], [ 1, %bb.x ]
  %i.bc = lshr i8 %i.au, 2
  %i.bd = and i8 %i.bc, 3                         ; 2 uses
  %i.be = icmp ne i8 %i.bd, 3
  %switch.i = icmp ult i8 %i.aw, 3
  %or.cond.i = and i1 %switch.i, %i.be
  br i1 %or.cond.i, label %bb.aj, label %bb.ad

bb.z:                                             ; preds = %bb.x
  %i.bf = load i64, ptr %i.b, align 8, !range !6, !alias.scope !150, !noalias !149, !noundef !4
  %i.bg = icmp eq i64 %i.bf, -1
  br i1 %i.bg, label %.loopexit.sink.split.sink.split, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdsTQD3x2eOp_3exr.exit.i.i.invoke unwind label %bb.ab, !noalias !149

bb.ab:                                            ; preds = %bb.aa
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.ac, !noalias !149

bb.ac:                                            ; preds = %bb.ab
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19, !noalias !149
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdsTQD3x2eOp_3exr.exit.i.i.invoke: ; preds = %bb.ae, %bb.aa
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.loopexit.sink.split.sink.split unwind label %.loopexit.split-lp

bb.ad:                                            ; preds = %bb.y
  %i.bj = load i64, ptr %i.b, align 8, !range !6, !alias.scope !151, !noalias !149, !noundef !4
  %i.bk = icmp eq i64 %i.bj, -1
  br i1 %i.bk, label %.loopexit.sink.split.sink.split, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdsTQD3x2eOp_3exr.exit.i.i.invoke unwind label %bb.af, !noalias !149

bb.af:                                            ; preds = %bb.ae
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.ag, !noalias !149

bb.ag:                                            ; preds = %bb.af
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19, !noalias !149
  unreachable

._crit_edge:                                      ; preds = %bb.an, %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.d

.loopexit160:                                     ; preds = %bb.l, %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdsTQD3x2eOp_3exr.exit.i.i.invoke, %bb.o, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdsTQD3x2eOp_3exr.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit160, %.loopexit.split-lp, %bb.al, %bb.v, %bb.ab, %bb.af
  %eh.lpad-body = phi { ptr, i32 } [ %i.bh, %bb.ab ], [ %i.az, %bb.v ], [ %i.bl, %bb.af ], [ %i.bu, %bb.al ], [ %lpad.loopexit, %.loopexit160 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa13channel_rules4RuleEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #18
          to label %common.resume unwind label %bb.ao

.loopexit.sink.split.sink.split:                  ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdsTQD3x2eOp_3exr.exit.i.i.invoke, %bb.ad, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !149
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %.loopexit.sink.split.sink.split, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdsTQD3x2eOp_3exr.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !149
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %bb.j, %.loopexit.sink.split
  store i64 2, ptr %0, align 8
  %.sroa.4144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %.sroa.4144.0..sroa_idx, align 8
  %.sroa.5145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @16, ptr %.sroa.5145.0..sroa_idx, align 8
  %.sroa.6146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 24, ptr %.sroa.6146.0..sroa_idx, align 8
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa13channel_rules4RuleENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa13channel_rules4RuleEEB1g_.exit unwind label %bb.ah

bb.ah:                                            ; preds = %.loopexit
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa13channel_rules4RuleENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %.body, %bb.ah
  %common.resume.op = phi { ptr, i32 } [ %i.bo, %bb.ah ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa13channel_rules4RuleEEB1g_.exit: ; preds = %.loopexit
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa13channel_rules4RuleENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.d

bb.aj:                                            ; preds = %bb.y
  %.sroa.19.16.copyload = load i64, ptr %i.d, align 8, !noalias !152
  %.sroa.25.16.copyload = load ptr, ptr %.sroa.464.0..sroa_idx.i, align 8, !noalias !152
  %.sroa.30.16.copyload = load i64, ptr %.sroa.665.0..sroa_idx.i, align 8, !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !149
  %.sroa.35.41.insert.ext = zext nneg i8 %i.bd to i64
  %.sroa.35.41.insert.shift = shl nuw nsw i64 %.sroa.35.41.insert.ext, 8
  %i.bq = and i8 %i.au, 1
  %.sroa.35.41.insert.mask = zext nneg i8 %i.bq to i64
  %.sroa.35.41.insert.insert = or disjoint i64 %.sroa.35.41.insert.shift, %.sroa.35.41.insert.mask
  %.sroa.35.42.insert.ext = zext nneg i8 %i.aw to i64
  %.sroa.35.42.insert.shift = shl nuw nsw i64 %.sroa.35.42.insert.ext, 16
  %.sroa.35.42.insert.insert = or disjoint i64 %.sroa.35.41.insert.insert, %.sroa.35.42.insert.shift
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !149
  store i64 %.sroa.040.0.i, ptr %i.e, align 8
  store i64 %.sroa.741.0.i, ptr %.sroa.638.0..sroa_idx39, align 8
  store i64 %.sroa.19.16.copyload, ptr %.sroa.638.sroa.7.0..sroa.638.0..sroa_idx39.sroa_idx, align 8
  store ptr %.sroa.25.16.copyload, ptr %.sroa.638.sroa.8.0..sroa.638.0..sroa_idx39.sroa_idx, align 8
  store i64 %.sroa.30.16.copyload, ptr %.sroa.638.sroa.9.0..sroa.638.0..sroa_idx39.sroa_idx, align 8
  store i64 %.sroa.35.42.insert.insert, ptr %.sroa.840.0..sroa_idx41, align 8
  %i.br = load i64, ptr %i.s, align 8, !alias.scope !153, !noalias !154, !noundef !4 ; 3 uses
  %i.bs = load i64, ptr %i.f, align 8, !range !14, !alias.scope !153, !noalias !154, !noundef !4
  %i.bt = icmp eq i64 %i.br, %i.bs
  br i1 %i.bt, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa13channel_rules4RuleE8grow_oneBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.an unwind label %bb.al, !noalias !154

bb.al:                                            ; preds = %bb.ak
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa13channel_rules4RuleEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e) #18
          to label %.body unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.an:                                            ; preds = %bb.ak, %bb.aj
  %i.bw = load ptr, ptr %i.r, align 8, !alias.scope !153, !noalias !154, !nonnull !4, !noundef !4
  %i.bx = getelementptr inbounds nuw [48 x i8], ptr %i.bw, i64 %i.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bx, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  %i.by = add i64 %i.br, 1
  store i64 %i.by, ptr %i.s, align 8
  %i.bz = icmp eq i64 %i.at, 0
  br i1 %i.bz, label %._crit_edge, label %bb.i

bb.ao:                                            ; preds = %.body
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa13channel_rules20legacy_channel_rules(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 19 uses
  %i.c = alloca [48 x i8], align 8                ; 16 uses
  %i.d = alloca [368 x i8], align 8               ; 43 uses
  %i.e = alloca [24 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 25, i1 noundef zeroext false, i64 noundef 8, i64 noundef 48)
  %i.f = load i64, ptr %i.a, align 8, !range !11, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !12, !noundef !4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = icmp samesign ugt i64 %i.i, 24
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.i, ptr %i.e, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 6 uses
  store ptr %i.l, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 6 uses
  store i64 0, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.sroa.5214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store ptr @25, ptr %.sroa.5214.0..sroa_idx, align 8
  %.sroa.6215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 1, ptr %.sroa.6215.0..sroa_idx, align 8
  %.sroa.7216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 1, ptr %.sroa.7216.0..sroa_idx, align 8
  %.sroa.8217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 0, ptr %.sroa.8217.0..sroa_idx, align 8
  %.sroa.9218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr @26, ptr %.sroa.9218.0..sroa_idx, align 8
  %.sroa.10219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 3, ptr %.sroa.10219.0..sroa_idx, align 8
  %.sroa.11220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i64 1, ptr %.sroa.11220.0..sroa_idx, align 8
  %.sroa.12221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i64 0, ptr %.sroa.12221.0..sroa_idx, align 8
  %.sroa.13222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store ptr @27, ptr %.sroa.13222.0..sroa_idx, align 8
  %.sroa.14223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store i64 1, ptr %.sroa.14223.0..sroa_idx, align 8
  %.sroa.15224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store i64 1, ptr %.sroa.15224.0..sroa_idx, align 8
  %.sroa.16225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store i64 1, ptr %.sroa.16225.0..sroa_idx, align 8
  %.sroa.17226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store ptr @28, ptr %.sroa.17226.0..sroa_idx, align 8
end_hunk_0
