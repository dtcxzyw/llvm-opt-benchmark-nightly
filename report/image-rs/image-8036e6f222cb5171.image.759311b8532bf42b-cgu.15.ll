Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.15?download=true
inline.NumInlined: 862
inline.NumDeleted: 412
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_RNvMs7_NtCs5XDXJCpOCOR_3png7encoderINtB5_6WriterQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE16write_image_dataCsa5QsYiPB8Gl_5image:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.dq

bb.em:                                            ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.dp

bb.en:                                            ; preds = %bb.dp
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.iz = load i32, ptr %i.iy, align 4, !noundef !5
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.jb = load i32, ptr %i.ja, align 4, !noundef !5
  %.not320 = icmp ugt i32 %i.iz, %i.jb
  br i1 %.not320, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.ep, %bb.en, %bb.dp
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.al)
          to label %bb.eq unwind label %bb.m

bb.ep:                                            ; preds = %bb.en
  store i8 2, ptr %i.bb, align 1
  br label %bb.eo

bb.eq:                                            ; preds = %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %bb.d

bb.er:                                            ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.ae

bb.es:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i8 %i.fz, ptr %i.q, align 1
  %i.jc = invoke fastcc noundef ptr @_RNvYINtNtNtCsgidZRN39rux_6flate24zlib5write11ZlibEncoderINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_allCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(72) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef 1)
          to label %bb.et unwind label %.loopexit465 ; 2 uses

bb.et:                                            ; preds = %bb.es
  %.not294 = icmp eq ptr %i.jc, null
  br i1 %.not294, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  store i64 3, ptr %0, align 8
  %.sroa.4251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.jc, ptr %.sroa.4251.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.ey

bb.ev:                                            ; preds = %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.jd = load ptr, ptr %i.fl, align 8, !nonnull !5, !noundef !5
  %i.je = load i64, ptr %i.fm, align 8, !noundef !5
  %i.jf = invoke fastcc noundef ptr @_RNvYINtNtNtCsgidZRN39rux_6flate24zlib5write11ZlibEncoderINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_allCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(72) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jd, i64 noundef %i.je)
          to label %bb.ew unwind label %.loopexit465 ; 2 uses

bb.ew:                                            ; preds = %bb.ev
  %.not295 = icmp eq ptr %i.jf, null
  br i1 %.not295, label %.preheader464, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  store i64 3, ptr %0, align 8
  %.sroa.4254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.jf, ptr %.sroa.4254.0..sroa_idx, align 8
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.eu
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgidZRN39rux_6flate24zlib5write11ZlibEncoderINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(72) %i.s)
          to label %bb.ez unwind label %bb.cs

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.fb unwind label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.jg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.body unwind label %bb.fc

bb.fb:                                            ; preds = %bb.ez
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit376 unwind label %bb.m

bb.fc:                                            ; preds = %bb.fa
  %i.jh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit376: ; preds = %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.ae

.loopexit465:                                     ; preds = %bb.cv, %bb.es, %bb.ev
  %lpad.loopexit467 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

.loopexit.split-lp466:                            ; preds = %bb.cu
  %lpad.loopexit.split-lp468 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.fd:                                            ; preds = %.loopexit.split-lp466, %.loopexit465
  %lpad.phi469 = phi { ptr, i32 } [ %lpad.loopexit467, %.loopexit465 ], [ %lpad.loopexit.split-lp468, %.loopexit.split-lp466 ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgidZRN39rux_6flate24zlib5write11ZlibEncoderINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(72) %i.s) #31
          to label %.body349 unwind label %bb.ao
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs7_NtCs5XDXJCpOCOR_3png7encoderINtB5_6WriterQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE23write_zlib_encoded_idatCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.sroa.0.08 = phi ptr [ %i.e, %bb.d ], [ %1, %bb.a ] ; 2 uses
  %.sroa.6.07 = phi i64 [ %i.d, %bb.d ], [ %2, %bb.a ] ; 2 uses
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.6.07, i64 2147483647) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs7_NtCs5XDXJCpOCOR_3png7encoderINtB5_6WriterQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE11write_chunkCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr %.0.val, i32 noundef 1413563465, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.08, i64 noundef %..i.i)
  %i.c = load i64, ptr %i.a, align 8, !range !697, !noundef !5
  %.not5 = icmp eq i64 %i.c, -1
  br i1 %.not5, label %bb.d, label %bb.c

._crit_edge:                                      ; preds = %bb.d, %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %._crit_edge
  ret void

bb.c:                                             ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.d:                                             ; preds = %.lr.ph
  %i.d = sub nuw nsw i64 %.sroa.6.07, %..i.i      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.08, i64 %..i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define internal fastcc range(i64 0, -4294967295) i64 @_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #10 {
bb.a:
  switch i64 %1, label %thread-pre-split [
    i64 0, label %.loopexit59
    i64 1, label %bb.b
  ]

.loopexit59:                                      ; preds = %bb.d, %bb.f, %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.lr.ph.6, %.lr.ph.7, %bb.e, %bb.b, %bb.b, %bb.a, %.loopexit
  %.sroa.8.0.insert.insert = phi i64 [ 257, %.lr.ph ], [ %i.f, %.loopexit ], [ 257, %bb.b ], [ 1, %bb.a ], [ 257, %bb.b ], [ %spec.select, %bb.e ], [ 257, %.lr.ph.7 ], [ 257, %.lr.ph.6 ], [ 257, %.lr.ph.5 ], [ 257, %.lr.ph.4 ], [ 257, %.lr.ph.3 ], [ 257, %.lr.ph.2 ], [ 257, %.lr.ph.1 ], [ 257, %bb.d ], [ 513, %bb.f ]
  ret i64 %.sroa.8.0.insert.insert

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !noundef !5    ; 2 uses
  switch i8 %i.a, label %bb.c [
    i8 43, label %.loopexit59
    i8 45, label %.loopexit59
  ]

thread-pre-split:                                 ; preds = %bb.a
  %.pr = load i8, ptr %0, align 1
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split, %bb.b
  %i.b = phi i8 [ %.pr, %thread-pre-split ], [ %i.a, %bb.b ]
  %cond = icmp eq i8 %i.b, 43                     ; 2 uses
  %i.c = sext i1 %cond to i64
  %.sroa.15.0 = add nsw i64 %1, %i.c              ; 10 uses
  %.sroa.0.0.idx = zext i1 %cond to i64
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.idx ; 9 uses
  %i.d = icmp samesign ult i64 %.sroa.15.0, 9
  br i1 %i.d, label %.preheader, label %.preheader60.preheader

.preheader:                                       ; preds = %bb.c
  %.not5668 = icmp eq i64 %.sroa.15.0, 0
  br i1 %.not5668, label %.loopexit, label %.lr.ph

.preheader60:                                     ; preds = %bb.f
  %.not55 = icmp eq i64 %i.h, 0
  br i1 %.not55, label %.loopexit, label %.preheader60.preheader

.loopexit:                                        ; preds = %.preheader60, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %.preheader
  %.sroa.045.1 = phi i32 [ %i.bq, %bb.n ], [ 0, %.preheader ], [ %i.s, %bb.g ], [ %i.aa, %bb.h ], [ %i.ah, %bb.i ], [ %i.ao, %bb.j ], [ %i.av, %bb.k ], [ %i.bc, %bb.l ], [ %i.bj, %bb.m ], [ %i.o, %.preheader60 ]
  %i.e = zext i32 %.sroa.045.1 to i64
  %i.f = shl nuw i64 %i.e, 32
  br label %.loopexit59

.preheader60.preheader:                           ; preds = %bb.c, %.preheader60
  %.sroa.0.19 = phi ptr [ %i.g, %.preheader60 ], [ %.sroa.0.0, %bb.c ] ; 2 uses
  %.sroa.15.18 = phi i64 [ %i.h, %.preheader60 ], [ %.sroa.15.0, %bb.c ]
  %.sroa.045.07 = phi i32 [ %i.o, %.preheader60 ], [ 0, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.19, i64 1
  %i.h = add nsw i64 %.sroa.15.18, -1             ; 2 uses
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.045.07, i32 10) ; 2 uses
  %3 = extractvalue { i32, i1 } %2, 0             ; 2 uses
  %4 = extractvalue { i32, i1 } %2, 1
  %i.i = load i8, ptr %.sroa.0.19, align 1, !noundef !5 ; 2 uses
  br i1 %4, label %bb.e, label %bb.d, !prof !177

bb.d:                                             ; preds = %.preheader60.preheader
  %i.j = zext i8 %i.i to i32
  %i.k = add nsw i32 %i.j, -48                    ; 2 uses
  %i.l = icmp ult i32 %i.k, 10
  br i1 %i.l, label %bb.f, label %.loopexit59

bb.e:                                             ; preds = %.preheader60.preheader
  %i.m = add i8 %i.i, -48
  %i.n = icmp ult i8 %i.m, 10
  %spec.select = select i1 %i.n, i64 513, i64 257
  br label %.loopexit59

bb.f:                                             ; preds = %bb.d
  %i.o = add i32 %i.k, %3                         ; 3 uses
  %i.p = icmp ult i32 %i.o, %3
  br i1 %i.p, label %.loopexit59, label %.preheader60, !prof !177

.lr.ph:                                           ; preds = %.preheader
  %i.q = load i8, ptr %.sroa.0.0, align 1, !noundef !5
  %i.r = zext i8 %i.q to i32
  %i.s = add nsw i32 %i.r, -48                    ; 3 uses
  %i.t = icmp ult i32 %i.s, 10
  br i1 %i.t, label %bb.g, label %.loopexit59

bb.g:                                             ; preds = %.lr.ph
  %.not56 = icmp eq i64 %.sroa.15.0, 1
  br i1 %.not56, label %.loopexit, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 1
  %i.v = load i8, ptr %i.u, align 1, !noundef !5
  %i.w = zext i8 %i.v to i32
  %i.x = add nsw i32 %i.w, -48                    ; 2 uses
  %i.y = icmp ult i32 %i.x, 10
  br i1 %i.y, label %bb.h, label %.loopexit59

bb.h:                                             ; preds = %.lr.ph.1
  %i.z = mul nuw nsw i32 %i.s, 10
  %i.aa = add nuw nsw i32 %i.x, %i.z              ; 2 uses
  %.not56.1 = icmp eq i64 %.sroa.15.0, 2
  br i1 %.not56.1, label %.loopexit, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !noundef !5
  %i.ad = zext i8 %i.ac to i32
  %i.ae = add nsw i32 %i.ad, -48                  ; 2 uses
  %i.af = icmp ult i32 %i.ae, 10
  br i1 %i.af, label %bb.i, label %.loopexit59

bb.i:                                             ; preds = %.lr.ph.2
  %i.ag = mul nuw nsw i32 %i.aa, 10
  %i.ah = add nuw nsw i32 %i.ae, %i.ag            ; 2 uses
  %.not56.2 = icmp eq i64 %.sroa.15.0, 3
  br i1 %.not56.2, label %.loopexit, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 3
  %i.aj = load i8, ptr %i.ai, align 1, !noundef !5
  %i.ak = zext i8 %i.aj to i32
  %i.al = add nsw i32 %i.ak, -48                  ; 2 uses
  %i.am = icmp ult i32 %i.al, 10
  br i1 %i.am, label %bb.j, label %.loopexit59

bb.j:                                             ; preds = %.lr.ph.3
  %i.an = mul nuw nsw i32 %i.ah, 10
  %i.ao = add nuw nsw i32 %i.al, %i.an            ; 2 uses
  %.not56.3 = icmp eq i64 %.sroa.15.0, 4
  br i1 %.not56.3, label %.loopexit, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 4
  %i.aq = load i8, ptr %i.ap, align 1, !noundef !5
  %i.ar = zext i8 %i.aq to i32
  %i.as = add nsw i32 %i.ar, -48                  ; 2 uses
  %i.at = icmp ult i32 %i.as, 10
  br i1 %i.at, label %bb.k, label %.loopexit59

bb.k:                                             ; preds = %.lr.ph.4
  %i.au = mul i32 %i.ao, 10
  %i.av = add i32 %i.as, %i.au                    ; 2 uses
  %.not56.4 = icmp eq i64 %.sroa.15.0, 5
  br i1 %.not56.4, label %.loopexit, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 5
  %i.ax = load i8, ptr %i.aw, align 1, !noundef !5
  %i.ay = zext i8 %i.ax to i32
  %i.az = add nsw i32 %i.ay, -48                  ; 2 uses
  %i.ba = icmp ult i32 %i.az, 10
  br i1 %i.ba, label %bb.l, label %.loopexit59

bb.l:                                             ; preds = %.lr.ph.5
  %i.bb = mul i32 %i.av, 10
  %i.bc = add i32 %i.az, %i.bb                    ; 2 uses
  %.not56.5 = icmp eq i64 %.sroa.15.0, 6
  br i1 %.not56.5, label %.loopexit, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 6
  %i.be = load i8, ptr %i.bd, align 1, !noundef !5
  %i.bf = zext i8 %i.be to i32
  %i.bg = add nsw i32 %i.bf, -48                  ; 2 uses
  %i.bh = icmp ult i32 %i.bg, 10
  br i1 %i.bh, label %bb.m, label %.loopexit59

bb.m:                                             ; preds = %.lr.ph.6
  %i.bi = mul i32 %i.bc, 10
  %i.bj = add i32 %i.bg, %i.bi                    ; 2 uses
  %.not56.6 = icmp eq i64 %.sroa.15.0, 7
  br i1 %.not56.6, label %.loopexit, label %.lr.ph.7

.lr.ph.7:                                         ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 7
  %i.bl = load i8, ptr %i.bk, align 1, !noundef !5
  %i.bm = zext i8 %i.bl to i32
  %i.bn = add nsw i32 %i.bm, -48                  ; 2 uses
  %i.bo = icmp ult i32 %i.bn, 10
  br i1 %i.bo, label %bb.n, label %.loopexit59

bb.n:                                             ; preds = %.lr.ph.7
  %i.bp = mul i32 %i.bj, 10
  %i.bq = add i32 %i.bn, %i.bp
  br label %.loopexit
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs_NtNtCsa5QsYiPB8Gl_5image6codecs3dxtINtB4_10DxtDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE3newB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 1), (8, 16), (32, 40)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i32 noundef %2, i32 noundef %3, i8 noundef range(i8 0, 3) %4) unnamed_addr #8 {
bb.a:
  %i.a = or i32 %3, %2
  %i.b = and i32 %i.a, 3
  %or.cond = icmp eq i32 %i.b, 0
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.4.sroa.0.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %.sroa.4.sroa.0.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = lshr i32 %2, 2
  %i.d = lshr i32 %3, 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.c, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.d, ptr %.sroa.58.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 %4, ptr %.sroa.7.0..sroa_idx, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i8 [ -1, %bb.c ], [ 6, %bb.b ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i32, i32 } @_RNvNtNtCsa5QsYiPB8Gl_5image4math5utils17resize_dimensions(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = uitofp i32 %2 to double
  %i.b = uitofp i32 %0 to double                  ; 4 uses
  %i.c = uitofp i32 %3 to double
  %i.d = uitofp i32 %1 to double                  ; 4 uses
  %i.e = insertelement <2 x double> poison, double %i.a, i64 0
  %i.f = insertelement <2 x double> %i.e, double %i.c, i64 1
  %i.g = insertelement <2 x double> poison, double %i.b, i64 0
  %i.h = insertelement <2 x double> %i.g, double %i.d, i64 1
  %i.i = fdiv <2 x double> %i.f, %i.h             ; 2 uses
  %i.j = extractelement <2 x double> %i.i, i64 0  ; 2 uses
  %i.k = extractelement <2 x double> %i.i, i64 1  ; 2 uses
  %i.l = tail call nsz double @llvm.maximumnum.f64(double %i.j, double %i.k)
  %i.m = tail call nsz double @llvm.minimumnum.f64(double %i.j, double %i.k)
  %.sroa.01.0 = select i1 %4, double %i.l, double %i.m ; 2 uses
  %i.n = fmul double %.sroa.01.0, %i.b
  %i.o = tail call double @llvm.round.f64(double %i.n)
  %i.p = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.o) ; 2 uses
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = fmul double %.sroa.01.0, %i.d
  %i.r = tail call double @llvm.round.f64(double %i.q)
  %i.s = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.r) ; 2 uses
  %..i4 = tail call noundef i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = icmp ugt i64 %i.p, 4294967295
  br i1 %i.t, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = icmp ugt i64 %i.s, 4294967295
  br i1 %i.u, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.v = fdiv nnan double f0x41EFFFFFFFE00000, %i.b
  %i.w = fmul double %i.v, %i.d
  %i.x = tail call double @llvm.round.f64(double %i.w)
  %i.y = tail call i32 @llvm.fptoui.sat.i32.f64(double %i.x)
  %..i5 = tail call noundef range(i32 1, 0) i32 @llvm.umax.i32(i32 %i.y, i32 1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.z = trunc nuw i64 %..i to i32
  %i.aa = trunc nuw i64 %..i4 to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.ab = fdiv nnan double f0x41EFFFFFFFE00000, %i.d
  %i.ac = fmul double %i.ab, %i.b
  %i.ad = tail call double @llvm.round.f64(double %i.ac)
  %i.ae = tail call i32 @llvm.fptoui.sat.i32.f64(double %i.ad)
  %..i6 = tail call noundef range(i32 1, 0) i32 @llvm.umax.i32(i32 %i.ae, i32 1)
  br label %bb.f

end_hunk_0
begin_hunk_1_@_RNvXNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoderNtB2_12DecoderErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.u, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2
  store ptr %i.v, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.p, ptr %i.n, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder8LineTypeNtB6_7Display3fmtBE_, ptr %.sroa.423.0..sroa_idx, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.o, ptr %i.w, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtB8_3num11float_parse15ParseFloatErrorNtB6_7Display3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.427.0..sroa_idx, align 8
  %i.x = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !5, !align !57, !noundef !5
  %i.aa = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.z, ptr noundef nonnull @90, ptr noundef nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.m

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2
  store ptr %i.ab, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.ac, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.m, ptr %i.k, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder8LineTypeNtB6_7Display3fmtBE_, ptr %.sroa.419.0..sroa_idx, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.l, ptr %i.ad, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtB8_3num5error13ParseIntErrorNtB6_7Display3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.442.0..sroa_idx, align 8
  %i.ae = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !5, !align !57, !noundef !5
  %i.ah = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ag, ptr noundef nonnull @91, ptr noundef nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.ai, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.j, ptr %i.i, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder8LineTypeNtB6_7Display3fmtBE_, ptr %.sroa.415.0..sroa_idx, align 8
  %i.aj = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !5, !align !57, !noundef !5
  %i.am = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.al, ptr noundef nonnull @92, ptr noundef nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  %i.an = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @93, i64 noundef 26)
  br label %bb.m

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ao, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ap, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.h, ptr %i.f, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRjNtB6_7Display3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.411.0..sroa_idx, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.g, ptr %i.aq, align 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRjNtB6_7Display3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.470.0..sroa_idx, align 8
  %i.ar = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !5, !align !57, !noundef !5
  %i.au = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.ar, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.at, ptr noundef nonnull @94, ptr noundef nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.m

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRjNtB6_7Display3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.47.0..sroa_idx, align 8
  %i.aw = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !5, !align !57, !noundef !5
  %i.az = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.aw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ay, ptr noundef nonnull @95, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.m

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ba, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bb, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRjNtB6_7Display3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.43.0..sroa_idx, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.bc, align 8
  %.sroa.498.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRjNtB6_7Display3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.498.0..sroa_idx, align 8
  %i.bd = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !5, !align !57, !noundef !5
  %i.bg = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.bd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bf, ptr noundef nonnull @96, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  %i.bh = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef 56)
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.g, %bb.f, %bb.e, %bb.l, %bb.h, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.r, %bb.b ], [ %i.s, %bb.c ], [ %i.t, %bb.d ], [ %i.aa, %bb.e ], [ %i.ah, %bb.f ], [ %i.am, %bb.g ], [ %i.an, %bb.h ], [ %i.au, %bb.i ], [ %i.az, %bb.j ], [ %i.bg, %bb.k ], [ %i.bh, %bb.l ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtCsa5QsYiPB8Gl_5image9animationNtB5_5FrameNtNtCsj6eKBz9Db1c_4core5clone5Clone10clone_from(ptr noalias nofree noundef align 8 dereferenceable(56) initializes((40, 56)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load <4 x i32>, ptr %i.a, align 8
  store <4 x i32> %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !5
  tail call void @_RNvXs6_NtCs4wP2HXfJTCR_5alloc5sliceShINtB5_16SpecCloneIntoVechNtNtB7_5alloc6GlobalE10clone_intoCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load <2 x i32>, ptr %i.h, align 8
  store <2 x i32> %i.j, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.l, ptr noundef nonnull align 8 dereferenceable(3) %i.k, i64 3, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtCsa5QsYiPB8Gl_5image9animationNtB5_5FrameNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load <4 x i32>, ptr %i.a, align 8
  tail call void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(3) %i.c, i64 3, i1 false)
  store <4 x i32> %i.e, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load <2 x i32>, ptr %i.b, align 8
  store <2 x i32> %i.f, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsa5QsYiPB8Gl_5image6codecs3dxtINtB5_10DxtDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB9_2io7decoder12ImageDecoder10read_imageB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1, ptr noalias nofree noundef nonnull writeonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 14 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %3, ptr %i.f, align 8
  store i8 0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.val.i = load i32, ptr %i.g, align 8, !alias.scope !1263, !noundef !5 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val2.i = load i32, ptr %i.h, align 4, !alias.scope !1263, !noundef !5
  %i.i = shl i32 %.val.i, 2
  %i.j = shl i32 %.val2.i, 2
  %i.k = zext i32 %i.i to i64
  %i.l = zext i32 %i.j to i64
  %i.m = mul nuw i64 %i.l, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 3 uses
  %.val3.i = load i8, ptr %i.n, align 4, !range !581, !alias.scope !1263, !noundef !5
  %i.o = icmp eq i8 %.val3.i, 0                   ; 2 uses
  %..i = select i1 %i.o, i64 3, i64 4
  %i.p = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.m, i64 %..i) ; 2 uses
  %i.q = extractvalue { i64, i1 } %i.p, 1
  br i1 %i.q, label %_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultyNtNtNtB7_3num5error15TryFromIntErrorENtNtB7_3cmp9PartialEq2eqCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultyNtNtNtB7_3num5error15TryFromIntErrorENtNtB7_3cmp9PartialEq2eqCsa5QsYiPB8Gl_5image.exit, !prof !177

_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultyNtNtNtB7_3num5error15TryFromIntErrorENtNtB7_3cmp9PartialEq2eqCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 -1, ptr %i.r, align 8
  store i8 0, ptr %i.d, align 8
  br label %bb.b

_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultyNtNtNtB7_3num5error15TryFromIntErrorENtNtB7_3cmp9PartialEq2eqCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a
  %4 = extractvalue { i64, i1 } %i.p, 0           ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %4, ptr %i.s, align 8
  store i8 0, ptr %i.d, align 8
  %i.t = icmp eq i64 %3, %4
  br i1 %i.t, label %bb.c, label %bb.b, !prof !1266

bb.b:                                             ; preds = %_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultyNtNtNtB7_3num5error15TryFromIntErrorENtNtB7_3cmp9PartialEq2eqCsa5QsYiPB8Gl_5image.exit.thread, %_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultyNtNtNtB7_3num5error15TryFromIntErrorENtNtB7_3cmp9PartialEq2eqCsa5QsYiPB8Gl_5image.exit
  call void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedINtNtB4_6result6ResultyNtNtNtB4_3num5error15TryFromIntErrorEBM_ECsa5QsYiPB8Gl_5image(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #28
  unreachable

bb.c:                                             ; preds = %_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultyNtNtNtB7_3num5error15TryFromIntErrorENtNtB7_3cmp9PartialEq2eqCsa5QsYiPB8Gl_5image.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %. = select i1 %i.o, i64 48, i64 64
  %i.u = zext i32 %.val.i to i64
  %i.v = mul nuw nsw i64 %., %i.u
  %..i15 = tail call noundef i64 @llvm.umax.i64(i64 %i.v, i64 1)
  %i.w = icmp eq i64 %3, 0
  br i1 %i.w, label %_RNvXs1f_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs1f_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph

_RNvXs1f_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph: ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  br label %_RNvXs1f_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

_RNvXs1f_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvXs1f_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph, %_RNvMs_NtNtCsa5QsYiPB8Gl_5image6codecs3dxtINtB4_10DxtDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE13read_scanlineB8_.exit
  %.sroa.0.032 = phi ptr [ %2, %_RNvXs1f_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph ], [ %i.ac, %_RNvMs_NtNtCsa5QsYiPB8Gl_5image6codecs3dxtINtB4_10DxtDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE13read_scanlineB8_.exit ] ; 4 uses
  %.sroa.6.031 = phi i64 [ %3, %_RNvXs1f_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph ], [ %i.ad, %_RNvMs_NtNtCsa5QsYiPB8Gl_5image6codecs3dxtINtB4_10DxtDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE13read_scanlineB8_.exit ] ; 2 uses
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %..i15, i64 %.sroa.6.031) ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.032, i64 %..i.i
  %i.ad = sub nuw nsw i64 %.sroa.6.031, %..i.i    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1267)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1270
  store i64 %..i.i, ptr %i.x, align 8, !noalias !1270
  store i8 0, ptr %i.c, align 8, !noalias !1270
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1270
  %i.ae = load i8, ptr %i.n, align 4, !range !581, !alias.scope !1267, !noalias !1272, !noundef !5
  %i.af = icmp eq i8 %i.ae, 0                     ; 2 uses
  %..i17 = select i1 %i.af, i64 48, i64 64
  %i.ag = load i32, ptr %i.g, align 8, !alias.scope !1267, !noalias !1272, !noundef !5
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = mul nuw nsw i64 %..i17, %i.ah           ; 2 uses
  store i64 %i.ai, ptr %i.y, align 8, !noalias !1270
  store i8 0, ptr %i.b, align 8, !noalias !1270
  %i.aj = icmp eq i64 %..i.i, %i.ai
  br i1 %i.aj, label %bb.e, label %bb.d, !prof !165

default.unreachable:                              ; preds = %bb.k
  unreachable

bb.d:                                             ; preds = %_RNvXs1f_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit
  call void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedINtNtB4_6result6ResultyNtNtNtB4_3num5error15TryFromIntErrorEBM_ECsa5QsYiPB8Gl_5image(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #28, !noalias !1270
  unreachable

bb.e:                                             ; preds = %_RNvXs1f_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1270
  %i.ak = select i1 %i.af, i64 3, i64 4
  %i.al = shl nuw nsw i64 %i.ah, %i.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1270
  store i64 0, ptr %i.a, align 8, !noalias !1270
  store ptr inttoptr (i64 1 to ptr), ptr %i.z, align 8, !noalias !1270
  store i64 0, ptr %i.aa, align 8, !noalias !1270
  %i.am = invoke noundef ptr @_RNvXNtCsa5QsYiPB8Gl_5image2ioINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtB2_7ReadExt14read_exact_vecB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.al)
          to label %bb.g unwind label %bb.f, !noalias !1272 ; 2 uses

bb.f:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.e
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #31
          to label %common.resume.i unwind label %bb.r, !noalias !1272

bb.g:                                             ; preds = %bb.e
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.t unwind label %bb.i, !noalias !1272

bb.i:                                             ; preds = %bb.h
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume.i unwind label %bb.j, !noalias !1272

bb.j:                                             ; preds = %bb.i
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1272
  unreachable

common.resume.i:                                  ; preds = %bb.p, %bb.i, %bb.f
  %common.resume.op.i = phi { ptr, i32 } [ %i.av, %bb.p ], [ %i.ao, %bb.i ], [ %i.an, %bb.f ]
  resume { ptr, i32 } %common.resume.op.i

bb.k:                                             ; preds = %bb.g
  %i.aq = load i8, ptr %i.n, align 4, !range !581, !alias.scope !1267, !noalias !1272, !noundef !5
  %i.ar = load ptr, ptr %i.z, align 8, !noalias !1270, !nonnull !5, !noundef !5 ; 3 uses
  %i.as = load i64, ptr %i.aa, align 8, !noalias !1270, !noundef !5 ; 3 uses
  switch i8 %i.aq, label %default.unreachable [
    i8 0, label %bb.l
    i8 1, label %bb.m
    i8 2, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt15decode_dxt1_row(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ar, i64 noundef %i.as, ptr noalias nofree noundef nonnull %.sroa.0.032, i64 noundef range(i64 0, -9223372036854775808) %..i.i)
          to label %bb.o unwind label %bb.f

bb.m:                                             ; preds = %bb.k
  invoke void @_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt15decode_dxt3_row(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ar, i64 noundef %i.as, ptr noalias nofree noundef nonnull %.sroa.0.032, i64 noundef range(i64 0, -9223372036854775808) %..i.i)
          to label %bb.o unwind label %bb.f

bb.n:                                             ; preds = %bb.k
  invoke void @_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt15decode_dxt5_row(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ar, i64 noundef %i.as, ptr noalias nofree noundef nonnull %.sroa.0.032, i64 noundef range(i64 0, -9223372036854775808) %..i.i)
          to label %bb.o unwind label %bb.f

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.at = load i32, ptr %i.ab, align 8, !alias.scope !1267, !noalias !1272, !noundef !5
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %i.ab, align 8, !alias.scope !1267, !noalias !1272
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNvMs_NtNtCsa5QsYiPB8Gl_5image6codecs3dxtINtB4_10DxtDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE13read_scanlineB8_.exit unwind label %bb.p, !noalias !1272

bb.p:                                             ; preds = %bb.o
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume.i unwind label %bb.q, !noalias !1272

bb.q:                                             ; preds = %bb.p
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1272
  unreachable

bb.r:                                             ; preds = %bb.f
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1272
  unreachable

_RNvMs_NtNtCsa5QsYiPB8Gl_5image6codecs3dxtINtB4_10DxtDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE13read_scanlineB8_.exit: ; preds = %bb.o
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !1272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1270
  %i.ay = icmp eq i64 %i.ad, 0
  br i1 %i.ay, label %_RNvXs1f_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs1f_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

_RNvXs1f_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %_RNvMs_NtNtCsa5QsYiPB8Gl_5image6codecs3dxtINtB4_10DxtDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE13read_scanlineB8_.exit, %bb.c
  store i8 -1, ptr %0, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %_RNvXs1f_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread
  ret void

bb.t:                                             ; preds = %bb.h
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !1272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1270
  store i8 9, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %.sroa.410.0..sroa_idx, align 8
  br label %bb.s
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoderNtB5_8LineTypeNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !1273, !noundef !5 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder8LineTypeNtB6_7Display3fmtBE_, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder8LineTypeNtB6_7Display3fmtBE_.165, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7encoderNtB5_11RunIteratorNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [1 x i8], align 1                 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 4 uses
  %i.g = icmp eq i64 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = icmp ult i64 %i.d, %i.f
  br i1 %i.h, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB4_4TakeINtNtB6_10take_while9TakeWhileINtNtNtBa_5slice4iter4IterhENCNvXs1_NtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7encoderNtB21_11RunIteratorNtNtNtB8_6traits8iterator8Iterator4next0EEB33_5countB27_.exit, label %bb.d

end_hunk_1
begin_hunk_2_@_RNvXs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7encoderNtB5_20NorunCombineIteratorNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next:bb.a
  %i.af = load i64, ptr %i.a, align 8, !alias.scope !1388, !noalias !1386
  %i.ag = sub i64 %i.af, %i.ae                    ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1386
  %i.ah = icmp ult i64 %i.ag, 3
  %i.ai = load i8, ptr %i.b, align 1, !noalias !1386
  %i.aj = add i64 %i.ag, %i.m                     ; 2 uses
  store i64 %i.aj, ptr %i.f, align 8, !alias.scope !1383, !noalias !1391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1386
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_RNvXs1_NtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7encoderNtB5_11RunIteratorNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit36
  %i.ak = add i64 %i.ag, %i.z                     ; 4 uses
  %i.al = call i8 @llvm.ucmp.i8.i64(i64 %i.ak, i64 128)
  switch i8 %i.al, label %bb.l [
    i8 -1, label %bb.m
    i8 0, label %bb.n
    i8 1, label %bb.o
  ]

bb.k:                                             ; preds = %_RNvXs1_NtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7encoderNtB5_11RunIteratorNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit36
  store i8 0, ptr %1, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.ai, ptr %.sroa.7.0..sroa_idx, align 1
  store i64 %i.ag, ptr %.sroa.519.0..sroa_idx, align 8
  store i64 %i.ag, ptr %.sroa.620.0..sroa_idx, align 8
  br label %_RNvXs1_NtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7encoderNtB5_11RunIteratorNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit36.thread

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.j
  store i8 1, ptr %1, align 8
  store i64 %i.y, ptr %.sroa.519.0..sroa_idx, align 8
  store i64 %i.ak, ptr %.sroa.620.0..sroa_idx, align 8
  br label %.backedge

.backedge:                                        ; preds = %bb.m, %bb.f
  %.be = phi i64 [ %i.aj, %bb.m ], [ %i.x, %bb.f ]
  br label %bb.b

bb.n:                                             ; preds = %bb.j
  store i8 1, ptr %0, align 8
  store i64 %i.ak, ptr %.sroa.64.0..sroa_idx.i, align 8
  br label %_RNvXs1_NtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7encoderNtB5_11RunIteratorNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit36.thread

bb.o:                                             ; preds = %bb.j
  %i.am = add i64 %i.y, 128
  %i.an = add i64 %i.ak, -128
  store i8 1, ptr %1, align 8
  store i64 %i.am, ptr %.sroa.519.0..sroa_idx, align 8
  store i64 %i.an, ptr %.sroa.620.0..sroa_idx, align 8
  store i8 1, ptr %0, align 8
  store i64 128, ptr %.sroa.64.0..sroa_idx.i, align 8
  br label %_RNvXs1_NtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7encoderNtB5_11RunIteratorNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit36.thread
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden { i64, ptr } @_RNvXs4_NtNtCsj6eKBz9Db1c_4core2io6cursorINtB5_6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_4seek4Seek4seekCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef range(i64 0, 3) %1, i64 noundef %2) unnamed_addr #8 {
bb.a:
  switch i64 %1, label %default.unreachable10 [
    i64 0, label %.sink.split
    i64 1, label %bb.d
    i64 2, label %bb.b
  ]

default.unreachable10:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  br label %bb.d

.sink.split:                                      ; preds = %bb.a, %bb.d
  %.sink = phi i64 [ %i.f, %bb.d ], [ %2, %bb.a ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sink, ptr %i.a, align 8
  %i.b = inttoptr i64 %.sink to ptr
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.d
  %.sroa.4.0 = phi ptr [ @114, %bb.d ], [ %i.b, %.sink.split ]
  %.sroa.04.0 = phi i64 [ 1, %bb.d ], [ 0, %.sink.split ]
  %i.c = insertvalue { i64, ptr } poison, i64 %.sroa.04.0, 0
  %i.d = insertvalue { i64, ptr } %i.c, ptr %.sroa.4.0, 1
  ret { i64, ptr } %i.d

bb.d:                                             ; preds = %bb.a, %bb.b
  %.sink12 = phi i64 [ 24, %bb.b ], [ 16, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.sink12
  %.sroa.07.0 = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.f = add i64 %.sroa.07.0, %2                  ; 2 uses
  %i.g = icmp ult i64 %i.f, %.sroa.07.0
  %i.h = icmp slt i64 %2, 0
  %i.i = xor i1 %i.h, %i.g
  br i1 %i.i, label %bb.c, label %.sink.split, !prof !177
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { i64, ptr } @_RNvXs4_NtNtCsj6eKBz9Db1c_4core2io6cursorINtB5_6CursorRShENtNtB7_4seek4Seek10stream_lenCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !5
  %i.b = inttoptr i64 %.val1 to ptr
  %i.c = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.b, 1
  ret { i64, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden { i64, ptr } @_RNvXs4_NtNtCsj6eKBz9Db1c_4core2io6cursorINtB5_6CursorRShENtNtB7_4seek4Seek4seekCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef range(i64 0, 3) %1, i64 noundef %2) unnamed_addr #8 {
bb.a:
  switch i64 %1, label %default.unreachable10 [
    i64 0, label %.sink.split
    i64 1, label %bb.d
    i64 2, label %bb.b
  ]

default.unreachable10:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  br label %bb.d

.sink.split:                                      ; preds = %bb.a, %bb.d
  %.sink = phi i64 [ %i.f, %bb.d ], [ %2, %bb.a ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.a, align 8
  %i.b = inttoptr i64 %.sink to ptr
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.d
  %.sroa.4.0 = phi ptr [ @114, %bb.d ], [ %i.b, %.sink.split ]
  %.sroa.04.0 = phi i64 [ 1, %bb.d ], [ 0, %.sink.split ]
  %i.c = insertvalue { i64, ptr } poison, i64 %.sroa.04.0, 0
  %i.d = insertvalue { i64, ptr } %i.c, ptr %.sroa.4.0, 1
  ret { i64, ptr } %i.d

bb.d:                                             ; preds = %bb.a, %bb.b
  %.sink12 = phi i64 [ 16, %bb.b ], [ 8, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.sink12
  %.sroa.07.0 = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.f = add i64 %.sroa.07.0, %2                  ; 2 uses
  %i.g = icmp ult i64 %i.f, %.sroa.07.0
  %i.h = icmp slt i64 %2, 0
  %i.i = xor i1 %i.h, %i.g
  br i1 %i.i, label %bb.c, label %.sink.split, !prof !177
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoderINtB5_10HdrDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder16read_image_boxedBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(address) %1, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [128 x i8], align 1               ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [128 x i8], align 1               ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [128 x i8], align 1               ; 9 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [128 x i8], align 1               ; 9 uses
  %i.t = alloca [64 x i8], align 8                ; 10 uses
  %i.u = alloca [64 x i8], align 8                ; 10 uses
  %i.v = alloca [64 x i8], align 8                ; 10 uses
  %i.w = alloca [64 x i8], align 8                ; 10 uses
  %i.x = alloca [64 x i8], align 8                ; 10 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.12.i = alloca [7 x i8], align 1          ; 8 uses
  %.sroa.13.i = alloca [48 x i8], align 8         ; 8 uses
  %i.aa = alloca [48 x i8], align 8               ; 7 uses
  %i.ab = alloca [24 x i8], align 8               ; 15 uses
  %i.ac = alloca [16 x i8], align 8               ; 7 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %i.ae = alloca [96 x i8], align 8               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ae, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1395)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1397
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %3, ptr %i.af, align 8, !noalias !1397
  store i8 0, ptr %i.ad, align 8, !noalias !1397
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !1397
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %.val.i.i = load i32, ptr %i.ag, align 8, !alias.scope !1399, !noalias !1402, !noundef !5 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 60
  %.val2.i.i = load i32, ptr %i.ah, align 4, !alias.scope !1399, !noalias !1402, !noundef !5 ; 2 uses
  %i.ai = zext i32 %.val.i.i to i64               ; 6 uses
  %i.aj = zext i32 %.val2.i.i to i64
  %i.ak = mul nuw i64 %i.aj, %i.ai
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ak, i64 12) ; 2 uses
  %5 = extractvalue { i64, i1 } %4, 1
  br i1 %5, label %.thread.i, label %bb.e, !prof !177

.thread.i:                                        ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 -1, ptr %i.al, align 8, !noalias !1397
  store i8 0, ptr %i.ac, align 8, !noalias !1397
  br label %bb.f

.body29.i:                                        ; preds = %bb.cw, %bb.w, %bb.t, %bb.p, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.bg, %bb.p ], [ %i.cu, %bb.w ], [ %lpad.phi.i, %bb.t ], [ %i.ao, %bb.d ], [ %i.kw, %bb.cw ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBG_EENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.ae)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder11HdrMetadataEBJ_.exit.i.i unwind label %bb.b, !noalias !1392

bb.b:                                             ; preds = %.body29.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBN_EENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.ae)
          to label %.body.i unwind label %bb.c, !noalias !1392

bb.c:                                             ; preds = %bb.b
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1392
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder11HdrMetadataEBJ_.exit.i.i: ; preds = %.body29.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBN_EENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.ae)
          to label %bb.dc unwind label %bb.cz, !noalias !1392

bb.d:                                             ; preds = %bb.cx, %bb.x, %bb.o, %bb.n, %bb.j, %bb.f
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body29.i

bb.e:                                             ; preds = %bb.a
  %6 = extractvalue { i64, i1 } %4, 0             ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %6, ptr %i.ap, align 8, !noalias !1397
  store i8 0, ptr %i.ac, align 8, !noalias !1397
  %i.aq = icmp eq i64 %3, %6
  br i1 %i.aq, label %bb.g, label %bb.f, !prof !1266

bb.f:                                             ; preds = %bb.e, %.thread.i
  invoke void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedINtNtB4_6result6ResultyNtNtNtB4_3num5error15TryFromIntErrorEBM_ECsa5QsYiPB8Gl_5image(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ac, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #32
          to label %bb.h unwind label %bb.d, !noalias !1403

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1397
  %i.ar = icmp eq i32 %.val.i.i, 0
  %i.as = icmp eq i32 %.val2.i.i, 0
  %or.cond.i = or i1 %i.ar, %i.as
  br i1 %or.cond.i, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.f
  unreachable

bb.i:                                             ; preds = %bb.g
  store i8 -1, ptr %0, align 8, !alias.scope !1392, !noalias !1404
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !1397
  %i.at = invoke i24 @_RNvXs12_NtCsj6eKBz9Db1c_4core5arrayAhj3_NtNtB8_7default7Default7defaultCsa5QsYiPB8Gl_5image()
          to label %bb.n unwind label %bb.d, !noalias !1403

bb.k:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10Rgbe8PixelEEB1g_.exit68.i, %bb.i
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBG_EENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.ae)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10HdrDecoderINtNtNtB4_2io6cursor6CursorRShEEEBK_.exit27.i unwind label %bb.l, !noalias !1392

bb.l:                                             ; preds = %bb.k
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBN_EENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.ae)
          to label %bb.dc unwind label %bb.m, !noalias !1392

bb.m:                                             ; preds = %bb.l
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1392
  unreachable

bb.n:                                             ; preds = %bb.j
  %.sroa.0.0.insert.ext.i = zext i24 %i.at to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1405
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1405
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, i64 noundef range(i64 0, 4294967296) %i.ai, i1 noundef zeroext false, i64 noundef 1, i64 noundef 4)
          to label %.noexc.i unwind label %bb.d, !noalias !1403

.noexc.i:                                         ; preds = %bb.n
  %i.aw = load i64, ptr %i.y, align 8, !range !166, !noalias !1405, !noundef !5
  %i.ax = trunc nuw i64 %i.aw to i1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !range !299, !noalias !1405, !noundef !5 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  br i1 %i.ax, label %bb.o, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa5QsYiPB8Gl_5image.exit.i.i, !prof !177

bb.o:                                             ; preds = %.noexc.i
  %i.bb = load i64, ptr %i.ba, align 8, !noalias !1405
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.az, i64 %i.bb) #32
          to label %.noexc28.i unwind label %bb.d, !noalias !1403

.noexc28.i:                                       ; preds = %bb.o
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %.noexc.i
  %i.bc = load ptr, ptr %i.ba, align 8, !noalias !1405, !nonnull !5, !noundef !5
  %i.bd = icmp samesign uge i64 %i.az, %i.ai
  tail call void @llvm.assume(i1 %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1405
  store i64 %i.az, ptr %i.z, align 8, !noalias !1405
  %i.be = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.bc, ptr %i.be, align 8, !noalias !1405
  %i.bf = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 0, ptr %i.bf, align 8, !noalias !1405
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10Rgbe8PixelE11extend_withBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z, i64 noundef range(i64 0, 4294967296) %i.ai, i32 noundef range(i32 0, 16777216) %.sroa.0.0.insert.ext.i)
          to label %bb.v unwind label %bb.p, !noalias !1408

bb.p:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa5QsYiPB8Gl_5image.exit.i.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10Rgbe8PixelEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.z) #31
          to label %.body29.i unwind label %bb.q, !noalias !1408

bb.q:                                             ; preds = %bb.p
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1408
  unreachable

.loopexit.i:                                      ; preds = %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder13read_scanlineINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEB8_.exit.thread.i, %bb.cp, %bb.cn, %bb.ci, %bb.cb, %bb.bz, %bb.bu, %bb.bn, %bb.bl, %bb.bg, %bb.ay, %bb.au, %bb.as, %bb.ao, %bb.am, %bb.ah
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp.i:                             ; preds = %bb.ba, %.invoke.i, %bb.aa
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10Rgbe8PixelENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %bb.t unwind label %bb.s, !noalias !1403

bb.s:                                             ; preds = %bb.r
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10Rgbe8PixelENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %.body.i unwind label %bb.u, !noalias !1403

bb.t:                                             ; preds = %bb.r
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10Rgbe8PixelENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %.body29.i unwind label %bb.cz, !noalias !1403

bb.u:                                             ; preds = %bb.s
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1403
  unreachable

bb.v:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa5QsYiPB8Gl_5image.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !1397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1405
  %i.bk = mul nuw nsw i64 %i.ai, 12               ; 5 uses
  %i.bl = urem i64 %3, %i.bk
  %i.bm = sub nuw nsw i64 %3, %i.bl               ; 2 uses
  %.not273.i = icmp samesign ugt i64 %i.bk, %i.bm
  br i1 %.not273.i, label %.thread154._crit_edge.i, label %.lr.ph276.i

.lr.ph276.i:                                      ; preds = %bb.v
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ae, i64 72 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ae, i64 80 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ae, i64 88 ; 26 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.440.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.12.0..sroa_idx87.i = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %.sroa.13.0..sroa_idx103.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.449.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.12.0..sroa_idx88.i = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %.sroa.13.0..sroa_idx104.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.449.0..sroa_idx.i33.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.12.0..sroa_idx89.i = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %.sroa.13.0..sroa_idx105.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.449.0..sroa_idx.i59.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.12.0..sroa_idx90.i = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %.sroa.13.0..sroa_idx106.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.4113.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.5115.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %.sroa.7116.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  br label %bb.z

.thread154.loopexit.i:                            ; preds = %scalar.ph, %middle.block, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMutAhjc_ENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_4IterNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10Rgbe8PixelEEB1U_.exit.i
  %.not.i = icmp ugt i64 %i.bk, %i.cx
  br i1 %.not.i, label %.thread154._crit_edge.i, label %bb.z

.thread154._crit_edge.i:                          ; preds = %.thread154.loopexit.i, %bb.v
  store i8 -1, ptr %0, align 8, !alias.scope !1392, !noalias !1404
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10Rgbe8PixelENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %bb.x unwind label %bb.w, !noalias !1403

bb.w:                                             ; preds = %.thread154._crit_edge.i
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10Rgbe8PixelENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %.body29.i unwind label %bb.y, !noalias !1403

bb.x:                                             ; preds = %.thread154._crit_edge.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10Rgbe8PixelENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10Rgbe8PixelEEB1g_.exit39.i unwind label %bb.d, !noalias !1403

end_hunk_2
begin_hunk_3_@_RNvYINtNtNtCsgidZRN39rux_6flate24zlib5write11ZlibEncoderINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_allCsa5QsYiPB8Gl_5image:bb.a
  %i.j = and i64 %i.i, 3
  switch i64 %i.j, label %default.unreachable [
    i64 2, label %bb.d
    i64 3, label %.split26
    i64 0, label %.split27
    i64 1, label %.split
  ], !prof !81

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
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.l, !inline_history !180

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
  %i.v = load i8, ptr %i.u, align 8, !range !181, !noundef !5
  %i.w = icmp eq i8 %i.v, 35
  br i1 %i.w, label %.thread.thread, label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge

.split:                                           ; preds = %bb.c
  %i.x = getelementptr i8, ptr %i.h, i64 31
  %i.y = load i8, ptr %i.x, align 8, !range !181, !noundef !5
  %i.z = icmp eq i8 %i.y, 35
  br i1 %i.z, label %bb.j, label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge

bb.e:                                             ; preds = %bb.b
  %i.aa = icmp eq ptr %i.h, null
  br i1 %i.aa, label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = icmp ult i64 %.sroa.6.039, %i.i
  br i1 %i.ab, label %bb.g, label %bb.h, !prof !177

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
  store ptr %i.ah, ptr %i.e, align 8, !alias.scope !1744
  store i8 3, ptr %i.a, align 8, !alias.scope !1744
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
  %.sroa.07.0.i = load i64, ptr %i.a, align 8, !alias.scope !1747, !noundef !5 ; 2 uses
  %i.b = add i64 %.sroa.07.0.i, %1                ; 2 uses
  %i.c = icmp ult i64 %i.b, %.sroa.07.0.i
  %i.d = icmp slt i64 %1, 0
  %i.e = xor i1 %i.d, %i.c
  br i1 %i.e, label %_RNvXs4_NtNtCsj6eKBz9Db1c_4core2io6cursorINtB5_6CursorRShENtNtB7_4seek4Seek4seekCsa5QsYiPB8Gl_5image.exit, label %.sink.split.i, !prof !177

.sink.split.i:                                    ; preds = %bb.a
  store i64 %i.b, ptr %i.a, align 8, !alias.scope !1747
  br label %_RNvXs4_NtNtCsj6eKBz9Db1c_4core2io6cursorINtB5_6CursorRShENtNtB7_4seek4Seek4seekCsa5QsYiPB8Gl_5image.exit

_RNvXs4_NtNtCsj6eKBz9Db1c_4core2io6cursorINtB5_6CursorRShENtNtB7_4seek4Seek4seekCsa5QsYiPB8Gl_5image.exit: ; preds = %.sink.split.i, %bb.a
  %.sroa.0.0 = phi ptr [ @114, %bb.a ], [ null, %.sink.split.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden noalias noundef ptr @_RNvYINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB7_4seek4Seek6rewindCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(24) initializes((16, 24)) %0) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.a, align 8, !alias.scope !1750
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
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 9 ; 2 uses
  store i8 1, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.p, ptr %i.f, align 16
  store ptr %i.o, ptr %i.q, align 8
  store ptr %i.n, ptr %i.r, align 16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val1.i.i.i.i.i.i30.i180 = load i64, ptr %i.s, align 8, !alias.scope !1753, !noalias !1758, !noundef !5
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !1753, !noalias !1758, !noundef !5 ; 2 uses
  %i.v = icmp ugt i64 %.val1.i.i.i.i.i.i30.i180, %i.u
  br i1 %i.v, label %.lr.ph.i.lr.ph, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.z

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
  call void @llvm.experimental.noalias.scope.decl(metadata !1772)
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %i.ad = phi i64 [ %i.aa, %.lr.ph.i ], [ %i.an, %bb.f ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1774)
  %.val.i.i.i.i.i.i.i = load ptr, ptr %.val94183, align 8, !alias.scope !1776, !noalias !1777, !nonnull !5, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !noalias !1778, !noundef !5 ; 8 uses
  %.sink2.i.i.i.i = add nuw i64 %i.ad, 1
  store i64 %.sink2.i.i.i.i, ptr %i.ab, align 8, !alias.scope !1774, !noalias !1782
  call void @llvm.experimental.noalias.scope.decl(metadata !1783)
  %i.ag = load ptr, ptr %i.q, align 8, !alias.scope !1786, !noalias !1787, !nonnull !5, !noundef !5 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !range !68, !alias.scope !1790, !noalias !1793, !noundef !5
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
  store i8 %.sroa.03.0.i.i.i, ptr %i.ag, align 1, !alias.scope !1790, !noalias !1793
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1796
  store i8 %.sroa.01.1.i.i.i, ptr %i.a, align 8, !noalias !1796
  store i8 0, ptr %.sroa.410.sroa.4.0..sroa.410.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1796
  store i8 %i.af, ptr %.sroa.410.sroa.5.0..sroa.410.0..sroa_idx.sroa_idx.i.i, align 1, !noalias !1796
  %i.am = call noundef zeroext i1 @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvYINtNtNtBb_2io6cursor6CursorRShENtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoder12HeaderReader13read_next_u32s_0INtB7_5FnMutTRTbINtNtBb_6result6ResulthNtNtBY_5error5ErrorEEEE8call_mutB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a), !noalias !1797
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1796
  br i1 %i.am, label %bb.g, label %bb.f

common.resume:                                    ; preds = %bb.l
  resume { ptr, i32 } %lpad.phi

bb.f:                                             ; preds = %bb.e
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.ac, align 8, !alias.scope !1800, !noalias !1777, !noundef !5
  %i.an = load i64, ptr %i.ab, align 8, !alias.scope !1800, !noalias !1777, !noundef !5 ; 3 uses
  %i.ao = icmp ugt i64 %.val1.i.i.i.i.i.i.i, %i.an
  br i1 %i.ao, label %bb.b, label %.loopexit

.thread136:                                       ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.aa

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

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit98: ; preds = %bb.v, %bb.i
  %.sroa.047.1 = phi i32 [ %i.az, %bb.v ], [ %.sroa.047.0181, %bb.i ] ; 2 uses
  %.sroa.0.1 = phi i8 [ 1, %bb.v ], [ 0, %bb.i ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store <2 x ptr> %i.z, ptr %i.f, align 16
  store ptr %i.n, ptr %i.r, align 16
  %.val94 = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.val94, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val94, i64 16 ; 3 uses
  %.val1.i.i.i.i.i.i30.i = load i64, ptr %i.ar, align 8, !alias.scope !1753, !noalias !1802, !noundef !5
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !1753, !noalias !1802, !noundef !5 ; 3 uses
  %i.au = icmp ugt i64 %.val1.i.i.i.i.i.i30.i, %i.at
  br i1 %i.au, label %.lr.ph.i, label %.loopexit

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.av = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.af, ptr %i.av, align 1
  store i8 2, ptr %i.k, align 8
  invoke void @_RNvXs_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderNtNtBa_5error10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB4_12DecoderErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.k)
          to label %bb.m unwind label %.loopexit.split-lp

bb.k:                                             ; preds = %bb.h
  %i.aw = add nsw i8 %i.af, -48                   ; 2 uses
  %or.cond = icmp ult i8 %i.aw, 10
  br i1 %or.cond, label %bb.o, label %bb.n

.loopexit138:                                     ; preds = %bb.q, %bb.t
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.j, %bb.n, %bb.r, %bb.u
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp, %.loopexit138
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit138 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i8 0, ptr undef) #31
          to label %common.resume unwind label %bb.y

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.l, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit101

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit101: ; preds = %bb.m, %bb.x, %bb.w, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ab

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 4, ptr %i.ax, align 1
  store i8 4, ptr %i.i, align 8
  invoke void @_RNvXs_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderNtNtBa_5error10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB4_12DecoderErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.i)
          to label %bb.p unwind label %.loopexit.split-lp

bb.o:                                             ; preds = %bb.k
  %i.ay = zext nneg i8 %i.aw to i32
  %2 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.047.0181, i32 10) ; 2 uses
  %3 = extractvalue { i32, i1 } %2, 0             ; 2 uses
  %4 = extractvalue { i32, i1 } %2, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 4, ptr %i.w, align 1
  store i8 18, ptr %i.h, align 8
  br i1 %4, label %bb.r, label %bb.q, !prof !177

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit101

bb.q:                                             ; preds = %bb.o
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoder12DecoderErrorEBJ_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.h)
          to label %bb.s unwind label %.loopexit138

bb.r:                                             ; preds = %bb.o
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.421.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %i.w, i64 3, i1 false)
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.sroa.559.0.copyload = load i32, ptr %.sroa.559.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i8 18, ptr %i.e, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %.sroa.559.0.copyload, ptr %.sroa.5.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvXs_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderNtNtBa_5error10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB4_12DecoderErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.e)
          to label %bb.x unwind label %.loopexit.split-lp

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.az = add i32 %3, %i.ay                       ; 2 uses
  %i.ba = icmp ult i32 %i.az, %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 4, ptr %i.x, align 1
  store i8 18, ptr %i.g, align 8
  br i1 %i.ba, label %bb.u, label %bb.t, !prof !177

bb.t:                                             ; preds = %bb.s
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoder12DecoderErrorEBJ_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.g)
          to label %bb.v unwind label %.loopexit138

bb.u:                                             ; preds = %bb.s
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.444.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %i.x, i64 3, i1 false)
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %.sroa.571.0.copyload = load i32, ptr %.sroa.571.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i8 18, ptr %i.c, align 8
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %.sroa.571.0.copyload, ptr %.sroa.545.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXs_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderNtNtBa_5error10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB4_12DecoderErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.w unwind label %.loopexit.split-lp

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit98

bb.w:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit101

bb.x:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit101

bb.y:                                             ; preds = %bb.l
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

.loopexit:                                        ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit98, %bb.f
  %.sroa.047.0178 = phi i32 [ %.sroa.047.0181, %bb.f ], [ %.sroa.047.1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit98 ]
  %.sroa.0.0169 = phi i8 [ %.sroa.0.0182, %bb.f ], [ %.sroa.0.1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit98 ]
  %i.bc = phi ptr [ %i.ab, %bb.f ], [ %i.as, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit98 ]
  %.lcssa.i = phi i64 [ %i.an, %bb.f ], [ %i.at, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit98 ]
  store i64 %.lcssa.i, ptr %i.bc, align 8, !alias.scope !1774, !noalias !1782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.bd = trunc nuw i8 %.sroa.0.0169 to i1
  br i1 %i.bd, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.loopexit.thread, %.loopexit
  store i8 9, ptr %0, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 158913789955 to ptr), ptr %.sroa.453.0..sroa_idx, align 8
  br label %bb.ab

bb.aa:                                            ; preds = %.thread136, %.loopexit
  %.sroa.047.0177 = phi i32 [ %.sroa.047.0181, %.thread136 ], [ %.sroa.047.0178, %.loopexit ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.047.0177, ptr %i.be, align 4
  store i8 -1, ptr %0, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit101, %bb.z, %bb.aa
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoder12HeaderReader18read_bitmap_headerBV_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 1), (4, 13)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 9 uses
  %i.b = alloca [64 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvYINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoder12HeaderReader13read_next_u32BV_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef align 8 dereferenceable(24) %1)
  %i.c = load i8, ptr %i.b, align 8, !range !537, !noundef !5 ; 2 uses
  %.not = icmp eq i8 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.435.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.431.0..sroa_idx, i64 3, i1 false)
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.532.0.copyload = load i32, ptr %.sroa.532.0..sroa_idx, align 4
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.637.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.633.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i8 %i.c, ptr %0, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.532.0.copyload, ptr %.sroa.536.0..sroa_idx, align 4
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.e = load i32, ptr %i.d, align 4, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvYINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoder12HeaderReader13read_next_u32BV_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef align 8 dereferenceable(24) %1)
  %i.f = load i8, ptr %i.a, align 8, !range !537, !noundef !5 ; 2 uses
  %.not50 = icmp eq i8 %i.f, -1
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not50, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.447.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.443.0..sroa_idx, i64 3, i1 false)
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.544.0.copyload = load i32, ptr %.sroa.544.0..sroa_idx, align 4
  %.sroa.645.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.423.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.645.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 %i.f, ptr %0, align 8
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.544.0.copyload, ptr %.sroa.548.0..sroa_idx, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = load i32, ptr %i.g, align 4, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = zext i1 %2 to i8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.h, ptr %i.j, align 4
  store i32 %i.e, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.i, ptr %.sroa.524.0..sroa_idx, align 4
  store i8 -1, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoder12HeaderReader18read_pixmap_headerBV_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 1), (4, 17)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 9 uses
  %i.b = alloca [64 x i8], align 8                ; 9 uses
  %i.c = alloca [64 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_RNvYINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoder12HeaderReader13read_next_u32BV_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %i.c, ptr noalias nofree noundef align 8 dereferenceable(24) %1)
  %i.d = load i8, ptr %i.c, align 8, !range !537, !noundef !5 ; 2 uses
  %.not = icmp eq i8 %i.d, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.448.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.444.0..sroa_idx, i64 3, i1 false)
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.545.0.copyload = load i32, ptr %.sroa.545.0..sroa_idx, align 4
  %.sroa.646.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.650.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.650.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.646.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i8 %i.d, ptr %0, align 8
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.545.0.copyload, ptr %.sroa.549.0..sroa_idx, align 4
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.f = load i32, ptr %i.e, align 4, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvYINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoder12HeaderReader13read_next_u32BV_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef align 8 dereferenceable(24) %1)
  %i.g = load i8, ptr %i.b, align 8, !range !537, !noundef !5 ; 2 uses
  %.not75 = icmp eq i8 %i.g, -1
  br i1 %.not75, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.460.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.456.0..sroa_idx, i64 3, i1 false)
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.557.0.copyload = load i32, ptr %.sroa.557.0..sroa_idx, align 4
  %.sroa.658.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.662.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.662.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.658.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i8 %i.g, ptr %0, align 8
  %.sroa.561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.557.0.copyload, ptr %.sroa.561.0..sroa_idx, align 4
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.i = load i32, ptr %i.h, align 4, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvYINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoder12HeaderReader13read_next_u32BV_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef align 8 dereferenceable(24) %1)
  %i.j = load i8, ptr %i.a, align 8, !range !537, !noundef !5 ; 2 uses
end_hunk_3
begin_hunk_4_@_RNvYINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoder12HeaderReader21read_arbitrary_headerBV_:bb.a
  %i.po = zext i1 %i.pn to i32
  %i.pp = icmp eq i32 %i.po, 0
  br i1 %i.pp, label %bb.dp, label %.thread249

bb.du:                                            ; preds = %bb.do
  %.pre = load ptr, ptr %.sroa.523.0..sroa_idx, align 8 ; 2 uses
  %i.pq = load i16, ptr %.pre, align 1
  %i.pr = xor i16 %i.pq, 18258
  %i.ps = getelementptr i8, ptr %.pre, i64 2
  %i.pt = load i8, ptr %i.ps, align 1
  %i.pu = zext i8 %i.pt to i16
  %i.pv = xor i16 %i.pu, 66
  %i.pw = or i16 %i.pr, %i.pv
  %i.px = icmp ne i16 %i.pw, 0
  %i.py = zext i1 %i.px to i32
  %i.pz = icmp eq i32 %i.py, 0
  br i1 %i.pz, label %bb.dp, label %.thread249

.thread249.thread:                                ; preds = %bb.ds
  %i.qa = load i64, ptr %i.ow, align 1
  %i.qb = xor i64 %i.qa, 5210748612522428242
  %i.qc = getelementptr i8, ptr %i.ow, i64 8
  %i.qd = load i8, ptr %i.qc, align 1
  %i.qe = zext i8 %i.qd to i64
  %i.qf = xor i64 %i.qe, 65
  %i.qg = or i64 %i.qb, %i.qf
  %i.qh = icmp ne i64 %i.qg, 0
  %i.qi = zext i1 %i.qh to i32
  %i.qj = icmp eq i32 %i.qi, 0
  br i1 %i.qj, label %bb.dp, label %.thread249

.thread249:                                       ; preds = %bb.dr, %bb.dq, %bb.du, %bb.do, %bb.dt, %.thread249.thread
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.nz, ptr %i.qk, align 8
  %.sroa.871.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.871.0..sroa_idx72, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.523.0..sroa_idx, i64 16, i1 false)
  %.sroa.1073.0..sroa_idx74 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.js, ptr %.sroa.1073.0..sroa_idx74, align 8
  %.sroa.12.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.jt, ptr %.sroa.12.0..sroa_idx76, align 4
  %.sroa.14.0..sroa_idx78 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.jv, ptr %.sroa.14.0..sroa_idx78, align 8
  %.sroa.16.0..sroa_idx80 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.jx, ptr %.sroa.16.0..sroa_idx80, align 4
  store i8 -1, ptr %0, align 8
  br label %bb.dv

bb.dv:                                            ; preds = %.thread249, %bb.dw, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.dy

bb.dw:                                            ; preds = %bb.dp
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %bb.dv unwind label %bb.dx

.body166:                                         ; preds = %bb.r, %bb.dx, %.body
  %.sroa.082.3 = phi i8 [ %.sroa.082.1, %.body ], [ %.sroa.082.0, %bb.r ], [ %.sroa.082.4, %bb.dx ]
  %.pn161 = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bx, %bb.r ], [ %i.qm, %bb.dx ] ; 2 uses
  %i.ql = trunc nuw i8 %.sroa.082.3 to i1
  br i1 %i.ql, label %.body166.thread, label %common.resume

bb.dx:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit.i176, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit.i, %bb.dw
  %.sroa.082.4 = phi i8 [ %.sroa.082.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit.i ], [ 1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit.i176 ], [ 1, %bb.dw ]
  %i.qm = landingpad { ptr, i32 }
          cleanup
  br label %.body166

bb.dy:                                            ; preds = %bb.b, %bb.e, %bb.ee, %bb.dv
  ret void

bb.dz:                                            ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.k, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.aw

bb.ea:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.u, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.aw

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsa5QsYiPB8Gl_5image.exit181: ; preds = %bb.aw, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit.i176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.eb

bb.eb:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsa5QsYiPB8Gl_5image.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsa5QsYiPB8Gl_5image.exit181
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit209 unwind label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.qn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %common.resume unwind label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.qo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

common.resume:                                    ; preds = %.body166, %.body166.thread, %bb.ec
  %common.resume.op = phi { ptr, i32 } [ %i.qn, %bb.ec ], [ %.pn161254, %.body166.thread ], [ %.pn161, %.body166 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit209: ; preds = %bb.eb
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
  br label %bb.ee

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.p, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.qp = trunc nuw i8 %.sroa.082.0 to i1
  br i1 %i.qp, label %bb.eb, label %bb.ee

bb.ee:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsa5QsYiPB8Gl_5image.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.dy

bb.ef:                                            ; preds = %.body166.thread, %.body
  %i.qq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

.body166.thread:                                  ; preds = %bb.ay, %.body166
  %.pn161254 = phi { ptr, i32 } [ %.pn161, %.body166 ], [ %i.gp, %bb.ay ]
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa) #31
          to label %common.resume unwind label %bb.ef
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvYINtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10HdrDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder10set_limitsBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 1)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #8 {
bb.a:
  store i8 -1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val = load i32, ptr %i.a, align 8, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load i32, ptr %i.b, align 8, !range !63, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.e = trunc nuw i32 %i.c to i1
  %i.f = load i32, ptr %i.d, align 4
  %i.g = icmp ugt i32 %.val, %i.f
  %or.cond = select i1 %i.e, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.val49 = load i32, ptr %i.h, align 4, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = load i32, ptr %i.i, align 8, !range !63, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.l = trunc nuw i32 %i.j to i1
  %i.m = load i32, ptr %i.k, align 4
  %i.n = icmp ugt i32 %.val49, %i.m
  %or.cond7 = select i1 %i.l, i1 %i.n, i1 false
  br i1 %or.cond7, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  store i8 7, ptr %0, align 8
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %.sroa.546.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvYINtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10HdrDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder11orientationBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 2)) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(96) %1) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.a, align 1
  store i8 -1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RNvYINtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10HdrDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder11total_bytesBb_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val = load i32, ptr %i.a, align 8, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 60
  %.val2 = load i32, ptr %i.b, align 4, !noundef !5
  %i.c = zext i32 %.val to i64
  %i.d = zext i32 %.val2 to i64
  %i.e = mul nuw i64 %i.d, %i.c
  %1 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.e, i64 12) ; 2 uses
  %2 = extractvalue { i64, i1 } %1, 0
  %3 = extractvalue { i64, i1 } %1, 1
  br i1 %3, label %bb.b, label %bb.c, !prof !177

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ -1, %bb.b ], [ %2, %bb.a ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i8, i8 } @_RNvYINtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10HdrDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder19original_color_typeBb_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #9 {
bb.a:
  ret { i8, i8 } { i8 24, i8 undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtCs4wP2HXfJTCR_5alloc6string13FromUtf8ErrorNtNtCsj6eKBz9Db1c_4core5error5Error5causeCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
_RNvXs_NvNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtQNtNtCs4wP2HXfJTCR_5alloc6string6StringNtB4_12SpecWriteFmt14spec_write_fmtCsa5QsYiPB8Gl_5image.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @127, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !1959
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCsj6eKBz9Db1c_4core3num11float_parse15ParseFloatErrorNtNtB8_5error5Error11descriptionCsa5QsYiPB8Gl_5image(ptr noalias nofree readonly captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @140, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtNtCsj6eKBz9Db1c_4core3num11float_parse15ParseFloatErrorNtNtB8_5error5Error5causeCsa5QsYiPB8Gl_5image(ptr noalias nofree readonly captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsj6eKBz9Db1c_4core3num11float_parse15ParseFloatErrorNtNtB8_5error5Error6sourceCsa5QsYiPB8Gl_5image(ptr noalias nofree readonly captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsj6eKBz9Db1c_4core3num11float_parse15ParseFloatErrorNtNtB8_5error5Error7provideCsa5QsYiPB8Gl_5image(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #9 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsj6eKBz9Db1c_4core3num11float_parse15ParseFloatErrorNtNtB8_5error5Error7type_idCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @141, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCsj6eKBz9Db1c_4core3num5error13ParseIntErrorNtNtB8_5error5Error11descriptionCsa5QsYiPB8Gl_5image(ptr noalias nofree readonly captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @140, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsj6eKBz9Db1c_4core3num5error13ParseIntErrorNtNtB8_5error5Error6sourceCsa5QsYiPB8Gl_5image(ptr noalias nofree readonly captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsj6eKBz9Db1c_4core3num5error13ParseIntErrorNtNtB8_5error5Error7provideCsa5QsYiPB8Gl_5image(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #9 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsj6eKBz9Db1c_4core3num5error13ParseIntErrorNtNtB8_5error5Error7type_idCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @142, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, ptr } @_RNvYNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder12DecoderErrorNtNtCsj6eKBz9Db1c_4core5error5Error5causeBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !1262, !alias.scope !1960, !noundef !5
  switch i8 %i.a, label %_RNvXs0_NtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoderNtB5_12DecoderErrorNtNtCsj6eKBz9Db1c_4core5error5Error6source.exit [
    i8 3, label %bb.b
    i8 4, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  br label %_RNvXs0_NtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoderNtB5_12DecoderErrorNtNtCsj6eKBz9Db1c_4core5error5Error6source.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %_RNvXs0_NtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoderNtB5_12DecoderErrorNtNtCsj6eKBz9Db1c_4core5error5Error6source.exit

_RNvXs0_NtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoderNtB5_12DecoderErrorNtNtCsj6eKBz9Db1c_4core5error5Error6source.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.4.0.i = phi ptr [ @102, %bb.c ], [ @100, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi ptr [ %i.c, %bb.c ], [ %i.b, %bb.b ], [ null, %bb.a ]
  %i.d = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr %.sroa.4.0.i, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs4_NtCsPkZ9TkQnmq_10rayon_core8registryNtB6_8Registry3newNtB6_12DefaultSpawnECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #15

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvNtNtCs4wP2HXfJTCR_5alloc2io5error21custom_owner_from_box(i8 noundef range(i8 0, 44), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMs0_NtNtNtCsj6eKBz9Db1c_4core2io5error4reprNtB5_4Repr10new_custom(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare void @_RNvMCs8SLmhRwIZHN_9crc32fastNtB2_6Hasher3new(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMCs8SLmhRwIZHN_9crc32fastNtB2_6Hasher6update(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsaXAyoiiLu3Y_9zune_jpeg4misc25fill_default_mjpeg_tables(i1 noundef zeroext, ptr noalias nofree noundef nonnull align 4, i64 noundef range(i64 0, 2653444199325310), ptr noalias nofree noundef nonnull align 4, i64 noundef range(i64 0, 2653444199325310)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs5XDXJCpOCOR_3png13text_metadata9ITXtChunkENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs5XDXJCpOCOR_3png13text_metadata9TEXtChunkENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs5XDXJCpOCOR_3png13text_metadata9ZTXtChunkENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10Rgbe8PixelENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBG_EENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs5XDXJCpOCOR_3png13text_metadata9ITXtChunkENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs5XDXJCpOCOR_3png13text_metadata9TEXtChunkENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs5XDXJCpOCOR_3png13text_metadata9ZTXtChunkENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10Rgbe8PixelENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBN_EENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs4_NtCsgidZRN39rux_6flate23zioINtB5_6WriterINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB7_3mem8CompressENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtCsj6eKBz9Db1c_4core3mem10drop_guardINtB5_9DropGuardTjQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENCINvNtNtB16_2io4read16append_to_stringNCINvB1G_22default_read_to_stringINtNtNtB9_2io4util4TakeQINtNtB2Q_6cursor6CursorRShEEE0E0ENtNtNtB9_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtCsj6eKBz9Db1c_4core3mem10drop_guardINtB5_9DropGuardTjQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENCINvNtNtB16_2io4read16append_to_stringNCINvB1G_22default_read_to_stringINtNtNtB9_2io4util5ChainINtNtB2Q_6cursor6CursorRShEINtB2O_4TakeIB3B_QB39_EEEE0E0ENtNtNtB9_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
end_hunk_4
begin_hunk_5_@_RNvXs4_NtNtCs53gkmrwjETj_4tiff7decoder6streamINtB5_12Group4ReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image
declare hidden { i64, ptr } @_RNvXs4_NtNtCs53gkmrwjETj_4tiff7decoder6streamINtB5_12Group4ReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(168), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs2_NtNtCs53gkmrwjETj_4tiff7decoder6streamINtB5_14PackBitsReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs0_NtNtCs53gkmrwjETj_4tiff7decoder6streamINtB5_9LZWReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(80), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs_NtNtCsa5QsYiPB8Gl_5image6codecs8farbfeldINtB4_14FarbfeldReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readB8_(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs4_NtNtCsgidZRN39rux_6flate24zlib4readINtB5_11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(64), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs3_NtNtCs4wP2HXfJTCR_5alloc2io4utilINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtBG_6cursor6CursorRShEENtNtB7_4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs1_NtNtCs4wP2HXfJTCR_5alloc2io4utilINtNtNtCsj6eKBz9Db1c_4core2io4util5ChainINtNtBG_6cursor6CursorRShEINtBE_4TakeIB1G_QB1f_EEENtNtB7_4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(72), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12Group4ReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(168), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #20

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYINtNtNtCs53gkmrwjETj_4tiff7decoder6stream14PackBitsReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYINtNtNtCs53gkmrwjETj_4tiff7decoder6stream9LZWReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(80), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(64), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvXs3_NtNtCs4wP2HXfJTCR_5alloc2io4utilINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeIBC_QINtNtBG_6cursor6CursorRShEEENtNtB7_4read4Read8read_bufCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvXs3_NtNtCs4wP2HXfJTCR_5alloc2io4utilINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtBG_6cursor6CursorRShEENtNtB7_4read4Read8read_bufCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvXs1_NtNtCs4wP2HXfJTCR_5alloc2io4utilINtNtNtCsj6eKBz9Db1c_4core2io4util5ChainINtNtBG_6cursor6CursorRShEINtBE_4TakeIB1G_QB1f_EEENtNtB7_4read4Read8read_bufCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs4_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB1c_6cursor6CursorRShEEENtNtB9_4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(64), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoderNtNtBa_5error10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB4_12DecoderErrorE4from(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #22

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot11median3_recyNvYyNtNtBa_3cmp10PartialOrd2ltECsa5QsYiPB8Gl_5image(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noalias nofree noundef nonnull) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #23

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable8heapsort8heapsortyNvYyNtNtBa_3cmp10PartialOrd2ltECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef nonnull) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs3_NtNtCs4wP2HXfJTCR_5alloc2io4utilINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeIBC_QINtNtBG_6cursor6CursorRShEEENtNtB7_4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10Rgbe8PixelE11extend_withBN_(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs5XDXJCpOCOR_3png13text_metadata17encode_iso_8859_1(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvNtNtNtCs4wP2HXfJTCR_5alloc2io4copy7generic17stack_buffer_copyINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB16_6cursor6CursorRShEEIB1G_QB23_EECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsdZSetL9bOac_8fdeflate10decompress17decompress_to_vec(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort18small_sort_networkyNvYyNtNtBa_3cmp10PartialOrd2ltECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 -1, 3) i8 @_RNvNtCs5XDXJCpOCOR_3png13text_metadata22encode_iso_8859_1_into(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB6_8IntoIterhENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4folduQNCINvNvBZ_8for_each4callhNCINvMsk_B8_INtB8_3VechE14extend_trustedINtNtNtB15_8adapters5chain5ChainBI_INtNtNtB17_5array4iter8IntoIterhKj2_EEE0E0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutAhjc_EINtBZ_4IterNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10Rgbe8PixelEEINtB5_7ZipImplBW_B1v_E3newB1O_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvYINtNtNtBb_2io6cursor6CursorRShENtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoder12HeaderReader13read_next_u32s_0INtB7_5FnMutTRTbINtNtBb_6result6ResulthNtNtBY_5error5ErrorEEEE8call_mutB1w_(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs4_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtCsa5QsYiPB8Gl_5image5hooks8ReadSeekEL_EENtNtB9_4read4Read11read_to_endB1u_(ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvNtNtCs4wP2HXfJTCR_5alloc2io8buf_read18default_read_untilINtNtNtB4_8buffered9bufreader9BufReaderINtNtB6_5boxed3BoxDNtNtCsa5QsYiPB8Gl_5image5hooks8ReadSeekEL_EEEB1W_(ptr noalias nofree noundef align 8 dereferenceable(56), i8 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsj6eKBz9Db1c_4core4iter8adapters11try_processNtNtCsa5QsYiPB8Gl_5image9animation6FramesNtBS_5FrameINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtBU_5error10ImageErrorENCINvXso_B1J_IB1H_INtNtCs4wP2HXfJTCR_5alloc3vec3VecB1v_EB2t_EINtNtNtB4_6traits7collect12FromIteratorIB1H_B1v_B2t_EE9from_iterBQ_E0B3b_EBU_(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCsgidZRN39rux_6flate23memNtB4_8Compress3new(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i32 noundef, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs2_NtCsgidZRN39rux_6flate23zioINtB5_6WriterINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB7_3mem8CompressE3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvMs2_NtCsgidZRN39rux_6flate23zioINtB5_6WriterINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB7_3mem8CompressE6finishCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions() unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64, i64) #20

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String15from_utf8_lossy(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedmmECsaKJjC64KgbL_3std(i8 noundef range(i8 0, 3), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noundef, ptr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #18

; Function Attrs: noinline nonlazybind uwtable
declare i64 @_RNvXs1_NtNtCsj6eKBz9Db1c_4core3num11float_parsefNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvXs0_NvMs2_NtNtCsj6eKBz9Db1c_4core3mem12maybe_uninitSINtBb_11MaybeUninitpE13write_defaulthNtB5_11DefaultSpec13write_default(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #20

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs7_NtCs5XDXJCpOCOR_3png6commonNtB6_16AnimationControl6encodeQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i32 noundef, i32 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain5ChainINtNtB6_9into_iter8IntoIterhEINtNtNtB17_5array4iter8IntoIterhKj2_EEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvMs6_NtCs5XDXJCpOCOR_3png7encoderNtB5_11PartialInfo25raw_row_length_from_width(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(52), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 1, 9) i8 @_RNvMs6_NtCs5XDXJCpOCOR_3png7encoderNtB5_11PartialInfo17bpp_in_prediction(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(52)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsdZSetL9bOac_8fdeflate8compressINtB4_20StoredOnlyCompressorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsdZSetL9bOac_8fdeflate8compressINtB4_20StoredOnlyCompressorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE6finishCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvMs_NtCsdZSetL9bOac_8fdeflate8compressINtB4_20StoredOnlyCompressorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE10write_dataCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCsdZSetL9bOac_8fdeflate8compressINtB2_10CompressorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCsdZSetL9bOac_8fdeflate8compressINtB2_10CompressorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE6finishCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #20

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 0, 5) i8 @_RNvNtCs5XDXJCpOCOR_3png6filter6filter(i8 noundef range(i8 0, 7), i8 noundef range(i8 1, 9), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvMNtCsdZSetL9bOac_8fdeflate8compressINtB2_10CompressorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE10write_dataCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(64), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs6_NtCs5XDXJCpOCOR_3png6commonNtB6_12FrameControl6encodeQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(28), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBN_EE8grow_oneCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedINtNtB4_6result6ResultyNtNtNtB4_3num5error15TryFromIntErrorEBM_ECsa5QsYiPB8Gl_5image(i8 noundef range(i8 0, 3), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noundef, ptr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.minimumnum.f64(double, double) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.maximumnum.f64(double, double) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fptoui.sat.i64.f64(double) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fptoui.sat.i32.f64(double) #20

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maximumnum.f32(float, float) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log2.f32(float) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fptosi.sat.i32.f32(float) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.powi.f32.i32(float, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.trunc.f32(float) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fptoui.sat.i8.f32(float) #20

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE8truncateCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String11try_reserve(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtCsj6eKBz9Db1c_4core3str5count14do_count_chars(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtCsj6eKBz9Db1c_4core3str5count23char_count_general_case(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtB8_3num5error13ParseIntErrorNtB6_7Display3fmtCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRjNtB6_7Display3fmtCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs6_NtCs4wP2HXfJTCR_5alloc5sliceShINtB5_16SpecCloneIntoVechNtNtB7_5alloc6GlobalE10clone_intoCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtCsj6eKBz9Db1c_4core3num11float_parseNtB4_15ParseFloatErrorNtNtB8_3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs4_NtNtCsj6eKBz9Db1c_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtNtCsj6eKBz9Db1c_4core3num5error13ParseIntErrorNtNtB8_5error5Error5causeCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #24

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtB7_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromINtNtCsch97uQowpgv_3fax7decoder11DecodeErrorNtNtNtBW_2io5error5ErrorEE4fromCsa5QsYiPB8Gl_5image(i64 noundef range(i64 0, 3), ptr) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtB7_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtCshj339Ta6RuV_5weezl5error8LzwErrorE4fromCsa5QsYiPB8Gl_5image() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCsj6eKBz9Db1c_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtCsj6eKBz9Db1c_4core3mem9alignmentNtB4_9AlignmentNtNtB8_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden i24 @_RNvXs12_NtCsj6eKBz9Db1c_4core5arrayAhj3_NtNtB8_7default7Default7defaultCsa5QsYiPB8Gl_5image() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE17extend_from_sliceCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs2_NtCsgidZRN39rux_6flate23zioINtB5_6WriterINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB7_3mem8CompressE17write_with_statusCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(72), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCsj6eKBz9Db1c_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCsj6eKBz9Db1c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsu_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcher3new(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderNtNtBa_5error10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB4_12DecoderErrorE4from(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCsa5QsYiPB8Gl_5image5errorNtB5_13DecodingError3newNtNtCs4wP2HXfJTCR_5alloc6string13FromUtf8ErrorEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoder12HeaderReader21read_arbitrary_header23parse_single_value_line(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef align 4 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i8 noundef range(i8 0, 4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10take_while9TakeWhileINtNtNtBe_5slice4iter4IterhENCNvXs1_NtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7encoderNtB2s_11RunIteratorB6_4next0ENtB4_13SpecAdvanceBy15spec_advance_byB2y_(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctpop.i8(i8) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.cttz.i8(i8, i1 immarg) #25

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.umin.i128(i128, i128) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.trunc.v4f32(<4 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float>) #20

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #24 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { noinline noreturn }
end_hunk_5
