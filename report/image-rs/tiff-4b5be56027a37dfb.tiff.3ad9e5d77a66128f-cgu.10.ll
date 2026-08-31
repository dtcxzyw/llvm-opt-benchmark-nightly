Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/tiff-4b5be56027a37dfb.tiff.3ad9e5d77a66128f-cgu.10?download=true
inline.NumInlined: 55
inline.NumDeleted: 37
begin_hunk_0_@_RNvMs2_NtCs53gkmrwjETj_4tiff7decoderNtNtB5_5image13ReadoutLayout24result_extent_for_planes:bb.a
  %i.n = icmp ugt i64 %i.h, %i.m
  br i1 %i.n, label %bb.j, label %bb.i

bb.f:                                             ; preds = %bb.ae, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, %bb.d
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecjENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs53gkmrwjETj_4tiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs53gkmrwjETj_4tiff7decoder5image11PlaneLayoutEBH_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs53gkmrwjETj_4tiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.b)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #11
  unreachable

common.resume:                                    ; preds = %bb.l, %bb.z, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.az, %bb.z ], [ %i.o, %bb.g ], [ %i.ab, %bb.l ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs53gkmrwjETj_4tiff7decoder5image11PlaneLayoutEBH_.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs53gkmrwjETj_4tiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.b)
  br label %bb.ab

bb.i:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.r = load i64, ptr %i.q, align 8, !noundef !5
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.m
  %i.t = load i64, ptr %i.s, align 8, !noundef !5
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.012.0 = phi i64 [ %i.t, %bb.j ], [ %i.r, %bb.i ]
  %i.u = sub i64 %.sroa.012.0, %i.l               ; 20 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.014.0.in = getelementptr inbounds nuw i8, ptr %1, i64 65
  %.sroa.014.0 = load i8, ptr %.sroa.014.0.in, align 1, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.x = load i16, ptr %i.w, align 4, !range !35, !noundef !5 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 70
  %i.z = load i16, ptr %i.y, align 2              ; 2 uses
  %.sroa.030.0.copyload = load i32, ptr %i.v, align 8
  %i.aa = invoke noundef i8 @_RNvMs1_NtCs53gkmrwjETj_4tiff7decoderNtB5_22BufferLayoutPreference11sample_type(i16 noundef %i.x, i16 %i.z, i32 %.sroa.030.0.copyload)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.ad, %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs53gkmrwjETj_4tiff7decoder5image11PlaneLayoutEBH_(ptr noalias nofree noundef align 8 dereferenceable(112) %i.b) #13
          to label %common.resume unwind label %bb.af

bb.m:                                             ; preds = %bb.k
  switch i8 %i.aa, label %default.unreachable [
    i8 -1, label %bb.x
    i8 0, label %bb.y
    i8 1, label %bb.n
    i8 2, label %bb.o
    i8 3, label %bb.p
    i8 4, label %bb.q
    i8 5, label %bb.r
    i8 6, label %bb.s
    i8 7, label %bb.t
    i8 8, label %bb.u
    i8 9, label %bb.v
    i8 10, label %bb.w
  ]

default.unreachable:                              ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.ac = lshr i64 %i.u, 1
  %.sroa.01.0.i = sub nuw i64 %i.u, %i.ac
  br label %bb.y

bb.o:                                             ; preds = %bb.m
  %i.ad = lshr i64 %i.u, 2
  %i.ae = and i64 %i.u, 3
  %.not16.i = icmp ne i64 %i.ae, 0
  %i.af = zext i1 %.not16.i to i64
  %.sroa.02.0.i = add nuw nsw i64 %i.ad, %i.af
  br label %bb.y

bb.p:                                             ; preds = %bb.m
  %i.ag = lshr i64 %i.u, 3
  %i.ah = and i64 %i.u, 7
  %.not15.i = icmp ne i64 %i.ah, 0
  %i.ai = zext i1 %.not15.i to i64
  %.sroa.03.0.i = add nuw nsw i64 %i.ag, %i.ai
  br label %bb.y

bb.q:                                             ; preds = %bb.m
  %i.aj = lshr i64 %i.u, 1
  %.sroa.07.0.i = sub nuw i64 %i.u, %i.aj
  br label %bb.y

bb.r:                                             ; preds = %bb.m
  %i.ak = lshr i64 %i.u, 2
  %i.al = and i64 %i.u, 3
  %.not13.i = icmp ne i64 %i.al, 0
  %i.am = zext i1 %.not13.i to i64
  %.sroa.08.0.i = add nuw nsw i64 %i.ak, %i.am
  br label %bb.y

bb.s:                                             ; preds = %bb.m
  %i.an = lshr i64 %i.u, 3
  %i.ao = and i64 %i.u, 7
  %.not12.i = icmp ne i64 %i.ao, 0
  %i.ap = zext i1 %.not12.i to i64
  %.sroa.09.0.i = add nuw nsw i64 %i.an, %i.ap
  br label %bb.y

bb.t:                                             ; preds = %bb.m
  br label %bb.y

bb.u:                                             ; preds = %bb.m
  %i.aq = lshr i64 %i.u, 1
  %.sroa.04.0.i = sub nuw i64 %i.u, %i.aq
  br label %bb.y

bb.v:                                             ; preds = %bb.m
  %i.ar = lshr i64 %i.u, 2
  %i.as = and i64 %i.u, 3
  %.not10.i = icmp ne i64 %i.as, 0
  %i.at = zext i1 %.not10.i to i64
  %.sroa.05.0.i = add nuw nsw i64 %i.ar, %i.at
  br label %bb.y

bb.w:                                             ; preds = %bb.m
  %i.au = lshr i64 %i.u, 3
  %i.av = and i64 %i.u, 7
  %.not.i = icmp ne i64 %i.av, 0
  %i.aw = zext i1 %.not.i to i64
  %.sroa.06.0.i = add nuw nsw i64 %i.au, %i.aw
  br label %bb.y

bb.x:                                             ; preds = %bb.m
  %switch = icmp samesign ult i16 %i.x, 4
  br i1 %switch, label %bb.ae, label %bb.ac

bb.y:                                             ; preds = %bb.m, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %.sroa.12.0.i = phi i64 [ %.sroa.06.0.i, %bb.w ], [ %.sroa.01.0.i, %bb.n ], [ %.sroa.02.0.i, %bb.o ], [ %.sroa.03.0.i, %bb.p ], [ %.sroa.07.0.i, %bb.q ], [ %.sroa.08.0.i, %bb.r ], [ %.sroa.09.0.i, %bb.s ], [ %i.u, %bb.t ], [ %.sroa.04.0.i, %bb.u ], [ %.sroa.05.0.i, %bb.v ], [ %i.u, %bb.m ]
  %.sroa.0.0.i = phi i64 [ 10, %bb.w ], [ 1, %bb.n ], [ 2, %bb.o ], [ 3, %bb.p ], [ 4, %bb.q ], [ 5, %bb.r ], [ 6, %bb.s ], [ 7, %bb.t ], [ 8, %bb.u ], [ 9, %bb.v ], [ 0, %bb.m ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.i, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.12.0.i, ptr %i.ay, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecjENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs53gkmrwjETj_4tiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs53gkmrwjETj_4tiff7decoder5image11PlaneLayoutEBH_.exit42 unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs53gkmrwjETj_4tiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.b)
          to label %common.resume unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs53gkmrwjETj_4tiff7decoder5image11PlaneLayoutEBH_.exit42: ; preds = %bb.y
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs53gkmrwjETj_4tiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.b)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.b, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs53gkmrwjETj_4tiff7decoder5image11PlaneLayoutEBH_.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs53gkmrwjETj_4tiff7decoder5image11PlaneLayoutEBH_.exit42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.ac:                                            ; preds = %bb.x
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14
  %i.bb = tail call noundef align 2 dereferenceable_or_null(4) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef 2) #14 ; 4 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.ad, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !prof !14

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 2, i64 noundef 4) #15
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.x
  store i64 -9223372036854775801, ptr %0, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.014.0, ptr %.sroa.419.0..sroa_idx, align 8
  br label %bb.f

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.ac
  store i16 %i.x, ptr %i.bb, align 2
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  store i16 %i.z, ptr %i.bd, align 2
  %4 = ptrtoint ptr %i.bb to i64
  store i64 -9223372036854775800, ptr %0, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %.sroa.424.0..sroa_idx, align 8
  %.sroa.424.sroa.4.0..sroa.424.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %4, ptr %.sroa.424.sroa.4.0..sroa.424.0..sroa_idx.sroa_idx, align 8
  %.sroa.424.sroa.5.0..sroa.424.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.424.sroa.5.0..sroa.424.0..sroa_idx.sroa_idx, align 8
  br label %bb.f

bb.af:                                            ; preds = %bb.l
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #11
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB4_5Image16chunk_dimensions(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(200) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 198
  %i.b = load i8, ptr %i.a, align 2, !range !23, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i64, ptr %i.d, align 8, !range !36, !noundef !5
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.g, label %bb.h, !prof !37

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.h = load i32, ptr %i.g, align 8, !range !38, !noundef !5
  %i.i = trunc nuw i32 %i.h to i1
  br i1 %i.i, label %bb.d, label %bb.e, !prof !37

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.l = load i32, ptr %i.k, align 8, !noundef !5
  %i.m = load i32, ptr %i.j, align 4, !noundef !5
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #12
  unreachable

.sink.split:                                      ; preds = %bb.d, %bb.j
  %.sink23 = phi i32 [ %i.v, %bb.j ], [ %i.l, %bb.d ]
  %.sink21 = phi i32 [ %i.w, %bb.j ], [ %i.m, %bb.d ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink23, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sink21, ptr %i.o, align 4
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.g, %bb.i
  %.sink = phi i64 [ -9223372036854775788, %bb.i ], [ -9223372036854775788, %bb.g ], [ -1, %.sink.split ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.q = load i64, ptr %i.p, align 8, !noundef !5 ; 2 uses
  %i.r = icmp ugt i64 %i.q, 4294967295
  br i1 %i.r, label %bb.f, label %bb.i

bb.h:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #12
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.t = load i64, ptr %i.s, align 8, !noundef !5 ; 2 uses
  %i.u = icmp ugt i64 %i.t, 4294967295
  br i1 %i.u, label %bb.f, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = trunc nuw i64 %i.q to i32
  %i.w = trunc nuw i64 %i.t to i32
  br label %.sink.split
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB4_5Image16chunk_file_range(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(200) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = zext i32 %2 to i64                       ; 4 uses
  %i.f = icmp ugt i64 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775792, ptr %0, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775805, ptr %.sroa.450.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 -9223372036854775805, ptr %i.i, align 8
  store i64 -9223372036854775792, ptr %i.b, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs53gkmrwjETj_4tiff5error9TiffErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.k = load i64, ptr %i.j, align 8, !noundef !5
  %i.l = icmp ugt i64 %i.k, %i.e
  br i1 %i.l, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.f, %bb.e, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  store i64 -9223372036854775792, ptr %0, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775805, ptr %.sroa.462.0..sroa_idx, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.e
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 -9223372036854775805, ptr %i.q, align 8
  store i64 -9223372036854775792, ptr %i.a, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs53gkmrwjETj_4tiff5error9TiffErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = load i64, ptr %i.o, align 8, !noundef !5
  %i.s = load i64, ptr %i.p, align 8, !noundef !5
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.s, ptr %i.u, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB4_5Image16readout_for_size(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(200) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB4_5Image9colortype(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %1)
  %i.g = load i64, ptr %i.f, align 8, !range !39, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.g, -1
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.0163.0.copyload = load i32, ptr %i.h, align 8 ; 5 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.5169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %.sroa.5172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5172.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5169.0..sroa_idx, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.g, ptr %0, align 8
  %.sroa.4171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0163.0.copyload, ptr %.sroa.4171.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 74
  store i16 0, ptr %i.i, align 2
  br label %bb.ah

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.414.0.extract.shift = lshr i32 %.sroa.0163.0.copyload, 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 188
  %i.k = load i16, ptr %i.j, align 4, !range !15, !noundef !5 ; 2 uses
  %i.l = icmp eq i16 %i.k, 1                      ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 194
  %i.n = load i16, ptr %i.m, align 2              ; 2 uses
  %.sroa.015.0 = select i1 %i.l, i16 %i.n, i16 1  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 199
  %i.p = load i8, ptr %i.o, align 1, !noundef !5  ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.k

bb.d:                                             ; preds = %bb.e
  unreachable

bb.e:                                             ; preds = %bb.c
  %.sroa.011.0.extract.trunc = trunc i32 %.sroa.0163.0.copyload to i8
  switch i8 %.sroa.011.0.extract.trunc, label %bb.d [
    i8 0, label %bb.k
    i8 1, label %bb.f
    i8 2, label %bb.k
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.h
    i8 6, label %bb.i
    i8 7, label %bb.f
    i8 8, label %bb.f
    i8 9, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  br label %bb.k

bb.h:                                             ; preds = %bb.e, %bb.e
  br label %bb.k

bb.i:                                             ; preds = %bb.e
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.q = zext nneg i32 %.sroa.414.0.extract.shift to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.e, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.sroa.017.0 = phi i64 [ 1, %bb.c ], [ 3, %bb.f ], [ 1, %bb.e ], [ 2, %bb.g ], [ 4, %bb.h ], [ 1, %bb.e ], [ 5, %bb.i ], [ %i.q, %bb.j ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 198
  %i.s = load i8, ptr %i.r, align 2, !range !23, !alias.scope !40, !noalias !43, !noundef !5
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = load i64, ptr %i.u, align 8, !range !36, !alias.scope !40, !noalias !43, !noundef !5
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.p, label %bb.q, !prof !37

bb.m:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.y = load i32, ptr %i.x, align 8, !range !38, !alias.scope !40, !noalias !43, !noundef !5
  %i.z = trunc nuw i32 %i.y to i1
  br i1 %i.z, label %bb.n, label %bb.o, !prof !37

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ac = load i32, ptr %i.ab, align 8, !alias.scope !40, !noalias !43, !noundef !5
  %i.ad = load i32, ptr %i.aa, align 4, !alias.scope !40, !noalias !43, !noundef !5
  br label %bb.t

bb.o:                                             ; preds = %bb.m
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #12, !noalias !45
  unreachable

bb.p:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !40, !noalias !43, !noundef !5 ; 2 uses
  %i.ag = icmp ugt i64 %i.af, 4294967295
  br i1 %i.ag, label %_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB4_5Image16chunk_dimensions.exit, label %bb.r

bb.q:                                             ; preds = %bb.l
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #12, !noalias !45
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !40, !noalias !43, !noundef !5 ; 2 uses
  %i.aj = icmp ugt i64 %i.ai, 4294967295
  br i1 %i.aj, label %_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB4_5Image16chunk_dimensions.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ak = trunc nuw i64 %i.af to i32
  %i.al = trunc nuw i64 %i.ai to i32
  br label %bb.t

_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB4_5Image16chunk_dimensions.exit: ; preds = %bb.r, %bb.p
  store i64 -9223372036854775788, ptr %0, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 74
  store i16 0, ptr %i.am, align 2
  br label %bb.ah

bb.t:                                             ; preds = %bb.s, %bb.n
  %.sroa.9.0.ph = phi i32 [ %i.ad, %bb.n ], [ %i.al, %bb.s ] ; 2 uses
  %.sroa.6.0.ph = phi i32 [ %i.ac, %bb.n ], [ %i.ak, %bb.s ] ; 5 uses
  %narrow = select i1 %i.l, i16 1, i16 %i.n       ; 2 uses
  %.sroa.032.0 = zext i16 %narrow to i32
  %i.an = zext i32 %.sroa.6.0.ph to i64
  %i.ao = zext i8 %i.p to i64                     ; 2 uses
  %i.ap = mul nuw nsw i64 %i.an, %i.ao            ; 2 uses
  %i.aq = zext i16 %.sroa.015.0 to i64
  %i.ar = mul nuw nsw i64 %i.ap, %i.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 -9223372036854775789, ptr %i.e, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs53gkmrwjETj_4tiff5error9TiffErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.as = add nuw nsw i64 %i.ar, 7
  %.sroa.054.0 = lshr i64 %i.as, 3
  %i.at = mul nuw nsw i64 %i.ap, %.sroa.017.0     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 -9223372036854775789, ptr %i.d, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs53gkmrwjETj_4tiff5error9TiffErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.au = lshr i64 %i.at, 3
  %i.av = and i64 %i.at, 7
  %.not248 = icmp eq i64 %i.av, 0                 ; 2 uses
  %not..not248 = xor i1 %.not248, true
  %i.aw = zext i1 %not..not248 to i64
  %.sroa.077.0 = add nuw nsw i64 %i.au, %i.aw
  %i.ax = zext i32 %2 to i64
  %i.ay = mul nuw nsw i64 %i.ao, %i.ax
  %i.az = mul nuw nsw i64 %i.ay, %.sroa.017.0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 -9223372036854775789, ptr %i.c, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs53gkmrwjETj_4tiff5error9TiffErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ba = add nuw nsw i64 %i.az, 7
  %.sroa.0100.0 = lshr i64 %i.ba, 3               ; 4 uses
  %i.bb = zext i32 %.sroa.9.0.ph to i64
  %i.bc = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.0100.0, i64 %i.bb) ; 2 uses
  %i.bd = extractvalue { i64, i1 } %i.bc, 0
  %i.be = extractvalue { i64, i1 } %i.bc, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br i1 %i.be, label %bb.v, label %bb.u, !prof !14

end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB4_5Image21chunk_data_dimensions:bb.a
  %i.z = zext i1 %.not89 to i32
  %.sroa.09.0 = add i32 %i.x, %i.z                ; 2 uses
  %i.aa = icmp eq i32 %.sroa.09.0, 0
  br i1 %i.aa, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #12
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ab = urem i32 %2, %.sroa.09.0
  %i.ac = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.ab, i32 %i.t) ; 2 uses
  %i.ad = extractvalue { i32, i1 } %i.ac, 0       ; 2 uses
  %i.ae = extractvalue { i32, i1 } %i.ac, 1
  %i.af = icmp ult i32 %i.w, %i.ad
  %or.cond104 = or i1 %i.ae, %i.af
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %or.cond104, label %bb.m, label %bb.l, !prof !53

bb.k:                                             ; preds = %bb.h
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #12
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ag = sub nuw i32 %i.w, %i.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 1, ptr %i.ah, align 8
  %.sroa.833.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %2, ptr %.sroa.833.0..sroa_idx, align 4
  store i64 -9223372036854775787, ptr %i.a, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs53gkmrwjETj_4tiff5error9TiffErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %..i = call noundef i32 @llvm.umin.i32(i32 %i.ag, i32 range(i32 1, 0) %i.t)
  store i32 %i.s, ptr %.sroa.479.0..sroa_idx, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %..i, ptr %i.ai, align 4
  store i64 -1, ptr %0, align 8
  br label %bb.ad

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i8 1, ptr %i.aj, align 8
  %.sroa.833.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  store i32 %2, ptr %.sroa.833.0..sroa_idx34, align 4
  %.sroa.470.0.copyload = load i32, ptr %i.aj, align 8
  %.sroa.580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.580.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.833.0..sroa_idx34, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -9223372036854775787, ptr %0, align 8
  store i32 %.sroa.470.0.copyload, ptr %.sroa.479.0..sroa_idx, align 8
  br label %bb.ad

bb.n:                                             ; preds = %bb.e
  %i.ak = zext i32 %2 to i64                      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %i.al = icmp eq i64 %i.l, 0
  br i1 %i.al, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !54, !noundef !5 ; 3 uses
  %i.ao = udiv i64 %i.an, %i.l                    ; 3 uses
  %i.ap = urem i64 %i.an, %i.l                    ; 2 uses
  %.not.i = icmp eq i64 %i.ap, 0                  ; 2 uses
  %i.aq = add i64 %i.ao, 1                        ; 3 uses
  %.sroa.0.0.i = select i1 %.not.i, i64 %i.ao, i64 %i.aq ; 2 uses
  %i.ar = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %i.ar, label %bb.r, label %bb.q

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #12, !noalias !54
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.as = udiv i64 %i.ak, %.sroa.0.0.i
  br i1 %.not.i, label %bb.s, label %bb.t

bb.r:                                             ; preds = %bb.o
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #12, !noalias !54
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.at = icmp ugt i64 %i.l, %i.an
  br i1 %i.at, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.q
  %i.au = icmp eq i64 %i.aq, 0
  br i1 %i.au, label %bb.w, label %bb.v

bb.u:                                             ; preds = %bb.s
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #12, !noalias !54
  unreachable

bb.v:                                             ; preds = %bb.t, %bb.s
  %.sroa.010.0.i = phi i64 [ %i.ao, %bb.s ], [ %i.aq, %bb.t ] ; 2 uses
  %.sroa.02.0.i = urem i64 %i.ak, %.sroa.010.0.i
  %i.av = add i64 %.sroa.010.0.i, -1
  %i.aw = icmp eq i64 %.sroa.02.0.i, %i.av
  br i1 %i.aw, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #12, !noalias !54
  unreachable

bb.x:                                             ; preds = %bb.y, %bb.v
  %.sroa.09.0.i = phi i64 [ %.zext, %bb.y ], [ 0, %bb.v ]
  %i.ax = icmp eq i64 %i.o, 0
  br i1 %i.ax, label %bb.aa, label %bb.z

bb.y:                                             ; preds = %bb.v
  %i.ay = sub nuw nsw i64 %i.l, %i.ap
  %.lhs.trunc = trunc nuw i64 %i.ay to i32
  %.rhs.trunc = trunc nuw i64 %i.l to i32
  %i.az = urem i32 %.lhs.trunc, %.rhs.trunc
  %.zext = zext i32 %i.az to i64
  br label %bb.x

bb.z:                                             ; preds = %bb.x
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !54, !noundef !5 ; 2 uses
  %i.bc = udiv i64 %i.bb, %i.o
  %i.bd = urem i64 %i.bb, %i.o                    ; 2 uses
  %.not16.i = icmp eq i64 %i.bd, 0
  %i.be = sext i1 %.not16.i to i64
  %.sroa.012.0.i = add i64 %i.bc, %i.be
  %i.bf = icmp eq i64 %i.as, %.sroa.012.0.i
  br i1 %i.bf, label %bb.ab, label %_RNvMNtNtCs53gkmrwjETj_4tiff7decoder5imageNtB2_14TileAttributes11get_padding.exit

bb.aa:                                            ; preds = %bb.x
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #12, !noalias !54
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.bg = sub nuw nsw i64 %i.o, %i.bd
  %.lhs.trunc112 = trunc nuw i64 %i.bg to i32
  %.rhs.trunc113 = trunc nuw i64 %i.o to i32
  %i.bh = urem i32 %.lhs.trunc112, %.rhs.trunc113
  %.zext114 = zext i32 %i.bh to i64
  br label %_RNvMNtNtCs53gkmrwjETj_4tiff7decoder5imageNtB2_14TileAttributes11get_padding.exit

_RNvMNtNtCs53gkmrwjETj_4tiff7decoder5imageNtB2_14TileAttributes11get_padding.exit: ; preds = %bb.z, %bb.ab
  %.sroa.011.0.i = phi i64 [ %.zext114, %bb.ab ], [ 0, %bb.z ]
  %i.bi = sub nsw i64 %i.l, %.sroa.09.0.i         ; 2 uses
  %i.bj = sub nsw i64 %i.o, %.sroa.011.0.i        ; 2 uses
  %i.bk = icmp ugt i64 %i.bi, 4294967295
  %i.bl = icmp ugt i64 %i.bj, 4294967295
  %or.cond = select i1 %i.bk, i1 true, i1 %i.bl
  br i1 %or.cond, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %_RNvMNtNtCs53gkmrwjETj_4tiff7decoder5imageNtB2_14TileAttributes11get_padding.exit
  %i.bm = trunc nuw i64 %i.bi to i32
  %i.bn = trunc nuw i64 %i.bj to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.bm, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.bn, ptr %i.bp, align 4
  store i64 -1, ptr %0, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB4_5Image16chunk_dimensions.exit, %bb.m, %bb.ae, %bb.l, %bb.ac
  ret void

bb.ae:                                            ; preds = %_RNvMNtNtCs53gkmrwjETj_4tiff7decoder5imageNtB2_14TileAttributes11get_padding.exit
  store i64 -9223372036854775788, ptr %0, align 8
  br label %bb.ad
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB4_5Image25compact_photometric_bytes(ptr noalias nofree noundef nonnull %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [96 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.e = load i32, ptr %i.d, align 4, !noundef !5 ; 2 uses
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = icmp eq i32 %i.e, 0
  br i1 %i.g, label %bb.b, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCs53gkmrwjETj_4tiff.exit, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #12, !noalias !57
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCs53gkmrwjETj_4tiff.exit: ; preds = %bb.a
  %i.h = load i32, ptr %4, align 4, !noundef !5   ; 2 uses
  %i.i = zext i32 %i.h to i64                     ; 5 uses
  %i.j = icmp eq i32 %i.h, 0
  br i1 %i.j, label %bb.c, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCs53gkmrwjETj_4tiff.exit1, !prof !14

bb.c:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCs53gkmrwjETj_4tiff.exit
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #12, !noalias !61
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCs53gkmrwjETj_4tiff.exit1: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCs53gkmrwjETj_4tiff.exit
  %i.k = urem i64 %1, %i.f                        ; 2 uses
  %i.l = sub nuw nsw i64 %1, %i.k                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.l
  %5 = ptrtoint ptr %i.m to i64
  %6 = ptrtoint ptr %0 to i64
  %i.n = urem i64 %3, %i.i                        ; 2 uses
  %i.o = sub nuw nsw i64 %3, %i.n                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %i.o
  %7 = ptrtoint ptr %2 to i64
  %8 = ptrtoint ptr %i.p to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !65
  store i64 %5, ptr %i.b, align 8, !noalias !70
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.k, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !70
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %6, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !70
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.l, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !70
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.f, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !65
  store i64 %8, ptr %i.a, align 8, !alias.scope !71, !noalias !75
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.n, ptr %.sroa.43.0..sroa_idx, align 8, !alias.scope !71, !noalias !75
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %7, ptr %.sroa.54.0..sroa_idx, align 8, !alias.scope !71, !noalias !75
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.o, ptr %.sroa.65.0..sroa_idx, align 8, !alias.scope !71, !noalias !75
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.i, ptr %.sroa.76.0..sroa_idx, align 8, !alias.scope !71, !noalias !75
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEBW_EINtB5_7ZipImplBW_BW_E3newCs53gkmrwjETj_4tiff(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a), !noalias !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !65
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  %.val.i = load i64, ptr %i.q, align 8, !alias.scope !77, !noalias !80, !noundef !5 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %.val6.i = load i64, ptr %i.r, align 8, !alias.scope !77, !noalias !80, !noundef !5 ; 2 uses
  %i.s = sub i64 %.val6.i, %.val.i
  %.not.i = icmp eq i64 %.val6.i, %.val.i
  br i1 %.not.i, label %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter14ChunksExactMuthEBX_EINtB6_7ZipImplBX_BX_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShB2Z_ENCNvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB3e_5Image25compact_photometric_bytes0E0EB3i_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCs53gkmrwjETj_4tiff.exit1
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  br label %bb.d

bb.d:                                             ; preds = %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8for_each4callTQShB1g_ENCNvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB1v_5Image25compact_photometric_bytes0E0B1z_.exit.i, %.lr.ph.i
  %.sroa.0.016.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ac, %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8for_each4callTQShB1g_ENCNvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB1v_5Image25compact_photometric_bytes0E0B1z_.exit.i ] ; 2 uses
  %i.u = load i64, ptr %i.q, align 8, !alias.scope !82, !noalias !85, !noundef !5
  %i.v = add i64 %i.u, %.sroa.0.016.i             ; 2 uses
  %i.w = call { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs53gkmrwjETj_4tiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, i64 noundef %i.v), !noalias !85 ; 2 uses
  %i.x = extractvalue { ptr, i64 } %i.w, 1        ; 2 uses
  %i.y = call { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs53gkmrwjETj_4tiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.t, i64 noundef %i.v), !noalias !85 ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.x, %i.i
  br i1 %.not.i.i.i, label %bb.e, label %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8for_each4callTQShB1g_ENCNvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB1v_5Image25compact_photometric_bytes0E0B1z_.exit.i, !prof !87

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.i, i64 noundef %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #12, !noalias !88
  unreachable

_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8for_each4callTQShB1g_ENCNvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB1v_5Image25compact_photometric_bytes0E0B1z_.exit.i: ; preds = %bb.d
  %i.z = extractvalue { ptr, i64 } %i.y, 1
  %i.aa = extractvalue { ptr, i64 } %i.y, 0       ; 2 uses
  %i.ab = extractvalue { ptr, i64 } %i.w, 0       ; 2 uses
  %i.ac = add nuw i64 %.sroa.0.016.i, 1           ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECs53gkmrwjETj_4tiff(ptr noalias nofree noundef nonnull %i.aa, i64 noundef %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1), !noalias !88
  %exitcond.not.i = icmp eq i64 %i.ac, %i.s
  br i1 %exitcond.not.i, label %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter14ChunksExactMuthEBX_EINtB6_7ZipImplBX_BX_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShB2Z_ENCNvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB3e_5Image25compact_photometric_bytes0E0EB3i_.exit, label %bb.d

_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter14ChunksExactMuthEBX_EINtB6_7ZipImplBX_BX_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShB2Z_ENCNvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB3e_5Image25compact_photometric_bytes0E0EB3i_.exit: ; preds = %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8for_each4callTQShB1g_ENCNvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB1v_5Image25compact_photometric_bytes0E0B1z_.exit.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCs53gkmrwjETj_4tiff.exit1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB4_5Image9colortype(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(200) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.p = load i64, ptr %i.o, align 8, !noundef !5
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.r = load i16, ptr %i.q, align 8, !range !93, !noundef !5 ; 3 uses
  switch i16 %i.r, label %bb.d [
    i16 0, label %bb.f
    i16 1, label %bb.f
    i16 2, label %bb.as
    i16 3, label %bb.h
    i16 4, label %bb.h
    i16 5, label %bb.at
    i16 6, label %bb.o
    i16 8, label %bb.p
    i16 9, label %bb.v
    i16 10, label %bb.w
  ]

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !5, !noundef !5
  %i.u = load i16, ptr %i.t, align 2, !range !94, !noundef !5
  %i.v = icmp eq i16 %i.u, 0
  br i1 %i.v, label %bb.b, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.x = load i16, ptr %i.w, align 8, !range !93, !noundef !5 ; 3 uses
  switch i16 %i.x, label %bb.d [
    i16 0, label %bb.f
    i16 1, label %bb.f
    i16 2, label %bb.g
    i16 3, label %bb.h
    i16 4, label %bb.h
    i16 5, label %bb.n
    i16 6, label %bb.o
    i16 8, label %bb.p
    i16 9, label %bb.v
    i16 10, label %bb.w
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.b, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 194
  %i.z = load i16, ptr %i.y, align 2, !noundef !5 ; 2 uses
  %i.aa = icmp eq i16 %i.z, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 199
  %i.ac = load i8, ptr %i.ab, align 1, !noundef !5 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  br i1 %i.aa, label %bb.au, label %bb.av

bb.g:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 196
  %i.af = load i16, ptr %i.ae, align 4, !noundef !5
  switch i16 %i.af, label %bb.ac [
    i16 3, label %bb.aj
    i16 4, label %bb.ai
  ]

bb.h:                                             ; preds = %bb.e, %bb.e, %bb.b, %bb.b
  %i.ag = phi i16 [ %i.x, %bb.e ], [ %i.x, %bb.e ], [ %i.r, %bb.b ], [ %i.r, %bb.b ]
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 199
  %i.ai = load i8, ptr %i.ah, align 1, !noundef !5 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 194
  %i.ak = load i16, ptr %i.aj, align 2, !noundef !5
  %i.al = zext i16 %i.ak to i64                   ; 5 uses
  %i.am = icmp eq i8 %i.ai, 0
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !95
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs53gkmrwjETj_4tiff(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, i64 noundef range(i64 0, 65536) %i.al, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !95
  %i.an = load i64, ptr %i.n, align 8, !range !36, !noalias !95, !noundef !5
  %i.ao = trunc nuw i64 %i.an to i1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !range !98, !noalias !95, !noundef !5 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  br i1 %i.ao, label %bb.l, label %bb.m, !prof !14

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !95
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs53gkmrwjETj_4tiff(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, i64 noundef range(i64 0, 65536) %i.al, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !95
  %i.as = load i64, ptr %i.m, align 8, !range !36, !noalias !95, !noundef !5
  %i.at = trunc nuw i64 %i.as to i1
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.av = load i64, ptr %i.au, align 8, !range !98, !noalias !95, !noundef !5 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  br i1 %i.at, label %bb.k, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs53gkmrwjETj_4tiff.exit.i, !prof !14

bb.k:                                             ; preds = %bb.j
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !95
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.av, i64 %i.ax) #15, !noalias !95
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs53gkmrwjETj_4tiff.exit.i: ; preds = %bb.j
  %i.ay = load ptr, ptr %i.aw, align 8, !noalias !95, !nonnull !5, !noundef !5 ; 2 uses
  %i.az = icmp samesign uge i64 %i.av, %i.al
  tail call void @llvm.assume(i1 %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !95
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ay, i8 %i.ai, i64 range(i64 0, 65536) %i.al, i1 false), !noalias !95
  br label %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs53gkmrwjETj_4tiff.exit

bb.l:                                             ; preds = %bb.i
  %i.ba = load i64, ptr %i.ar, align 8, !noalias !95
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.aq, i64 %i.ba) #15, !noalias !95
  unreachable

bb.m:                                             ; preds = %bb.i
  %i.bb = load ptr, ptr %i.ar, align 8, !noalias !95, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !95
  br label %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs53gkmrwjETj_4tiff.exit

_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs53gkmrwjETj_4tiff.exit: ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs53gkmrwjETj_4tiff.exit.i, %bb.m
  %.sroa.595.0.a = phi ptr [ %i.bb, %bb.m ], [ %i.ay, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs53gkmrwjETj_4tiff.exit.i ]
  %.sroa.094.0 = phi i64 [ %i.aq, %bb.m ], [ %i.av, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs53gkmrwjETj_4tiff.exit.i ]
  %.sroa.595.0 = ptrtoint ptr %.sroa.595.0.a to i64
  store i64 %.sroa.094.0, ptr %0, align 8
  %.sroa.062.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.595.0, ptr %.sroa.062.sroa.4.0..sroa_idx, align 8
  %.sroa.062.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.al, ptr %.sroa.062.sroa.5.0..sroa_idx, align 8
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 %i.ag, ptr %.sroa.463.0..sroa_idx, align 8
  br label %bb.aw

bb.n:                                             ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 196
  %i.bd = load i16, ptr %i.bc, align 4, !noundef !5
  switch i16 %i.bd, label %bb.ak [
    i16 4, label %bb.ar
    i16 5, label %bb.aq
  ]

bb.o:                                             ; preds = %bb.e, %bb.b
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 196
  %i.bf = load i16, ptr %i.be, align 4, !noundef !5
  %i.bg = icmp eq i16 %i.bf, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 199
  %i.bi = load i8, ptr %i.bh, align 1, !noundef !5 ; 3 uses
  br i1 %i.bg, label %bb.ax, label %bb.ay

bb.p:                                             ; preds = %bb.e, %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 199
  %i.bk = load i8, ptr %i.bj, align 1, !noundef !5 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 194
  %i.bm = load i16, ptr %i.bl, align 2, !noundef !5
  %i.bn = zext i16 %i.bm to i64                   ; 5 uses
  %i.bo = icmp eq i8 %i.bk, 0
  br i1 %i.bo, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !99
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs53gkmrwjETj_4tiff(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i64 noundef range(i64 0, 65536) %i.bn, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !99
  %i.bp = load i64, ptr %i.l, align 8, !range !36, !noalias !99, !noundef !5
  %i.bq = trunc nuw i64 %i.bp to i1
  %i.br = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !range !98, !noalias !99, !noundef !5 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  br i1 %i.bq, label %bb.t, label %bb.u, !prof !14

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !99
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs53gkmrwjETj_4tiff(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, i64 noundef range(i64 0, 65536) %i.bn, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !99
  %i.bu = load i64, ptr %i.k, align 8, !range !36, !noalias !99, !noundef !5
  %i.bv = trunc nuw i64 %i.bu to i1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !range !98, !noalias !99, !noundef !5 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  br i1 %i.bv, label %bb.s, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs53gkmrwjETj_4tiff.exit.i67, !prof !14

bb.s:                                             ; preds = %bb.r
  %i.bz = load i64, ptr %i.by, align 8, !noalias !99
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.bx, i64 %i.bz) #15, !noalias !99
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs53gkmrwjETj_4tiff.exit.i67: ; preds = %bb.r
  %i.ca = load ptr, ptr %i.by, align 8, !noalias !99, !nonnull !5, !noundef !5 ; 2 uses
  %i.cb = icmp samesign uge i64 %i.bx, %i.bn
  tail call void @llvm.assume(i1 %i.cb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !99
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ca, i8 %i.bk, i64 range(i64 0, 65536) %i.bn, i1 false), !noalias !99
  br label %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs53gkmrwjETj_4tiff.exit68

bb.t:                                             ; preds = %bb.q
  %i.cc = load i64, ptr %i.bt, align 8, !noalias !99
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.bs, i64 %i.cc) #15, !noalias !99
  unreachable

bb.u:                                             ; preds = %bb.q
  %i.cd = load ptr, ptr %i.bt, align 8, !noalias !99, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !99
  br label %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs53gkmrwjETj_4tiff.exit68

_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs53gkmrwjETj_4tiff.exit68: ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs53gkmrwjETj_4tiff.exit.i67, %bb.u
  %.sroa.589.0.a = phi ptr [ %i.cd, %bb.u ], [ %i.ca, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs53gkmrwjETj_4tiff.exit.i67 ]
  %.sroa.088.0 = phi i64 [ %i.bs, %bb.u ], [ %i.bx, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs53gkmrwjETj_4tiff.exit.i67 ]
  %.sroa.589.0 = ptrtoint ptr %.sroa.589.0.a to i64
  store i64 %.sroa.088.0, ptr %0, align 8
  %.sroa.050.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.589.0, ptr %.sroa.050.sroa.4.0..sroa_idx, align 8
  %.sroa.050.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bn, ptr %.sroa.050.sroa.5.0..sroa_idx, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 8, ptr %.sroa.451.0..sroa_idx, align 8
  br label %bb.aw

bb.v:                                             ; preds = %bb.e, %bb.b
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 196
  %i.cf = load i16, ptr %i.ce, align 4, !noundef !5
  %i.cg = icmp eq i16 %i.cf, 3
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ci = load i16, ptr %i.ch, align 8, !range !35
  %i.cj = icmp eq i16 %i.ci, 1
  %or.cond = select i1 %i.cg, i1 %i.cj, i1 false
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 199
  %i.cl = load i8, ptr %i.ck, align 1, !noundef !5 ; 3 uses
  br i1 %or.cond, label %bb.bk, label %bb.be

bb.w:                                             ; preds = %bb.e, %bb.b
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 199
  %i.cn = load i8, ptr %i.cm, align 1, !noundef !5 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 194
  %i.cp = load i16, ptr %i.co, align 2, !noundef !5
  %i.cq = zext i16 %i.cp to i64                   ; 5 uses
  %i.cr = icmp eq i8 %i.cn, 0
  br i1 %i.cr, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !102
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs53gkmrwjETj_4tiff(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef range(i64 0, 65536) %i.cq, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !102
  %i.cs = load i64, ptr %i.j, align 8, !range !36, !noalias !102, !noundef !5
  %i.ct = trunc nuw i64 %i.cs to i1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !range !98, !noalias !102, !noundef !5 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br i1 %i.ct, label %bb.aa, label %bb.ab, !prof !14

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !102
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs53gkmrwjETj_4tiff(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i64 noundef range(i64 0, 65536) %i.cq, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !102
  %i.cx = load i64, ptr %i.i, align 8, !range !36, !noalias !102, !noundef !5
  %i.cy = trunc nuw i64 %i.cx to i1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !range !98, !noalias !102, !noundef !5 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  br i1 %i.cy, label %bb.z, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs53gkmrwjETj_4tiff.exit.i69, !prof !14

bb.z:                                             ; preds = %bb.y
  %i.dc = load i64, ptr %i.db, align 8, !noalias !102
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.da, i64 %i.dc) #15, !noalias !102
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs53gkmrwjETj_4tiff.exit.i69: ; preds = %bb.y
  %i.dd = load ptr, ptr %i.db, align 8, !noalias !102, !nonnull !5, !noundef !5 ; 2 uses
  %i.de = icmp samesign uge i64 %i.da, %i.cq
  tail call void @llvm.assume(i1 %i.de)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !102
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dd, i8 %i.cn, i64 range(i64 0, 65536) %i.cq, i1 false), !noalias !102
  br label %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs53gkmrwjETj_4tiff.exit70

bb.aa:                                            ; preds = %bb.x
  %i.df = load i64, ptr %i.cw, align 8, !noalias !102
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.cv, i64 %i.df) #15, !noalias !102
  unreachable

bb.ab:                                            ; preds = %bb.x
  %i.dg = load ptr, ptr %i.cw, align 8, !noalias !102, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !102
  br label %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs53gkmrwjETj_4tiff.exit70

_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs53gkmrwjETj_4tiff.exit70: ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs53gkmrwjETj_4tiff.exit.i69, %bb.ab
  %.sroa.592.0.a = phi ptr [ %i.dg, %bb.ab ], [ %i.dd, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs53gkmrwjETj_4tiff.exit.i69 ]
  %.sroa.091.0 = phi i64 [ %i.cv, %bb.ab ], [ %i.da, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs53gkmrwjETj_4tiff.exit.i69 ]
  %.sroa.592.0 = ptrtoint ptr %.sroa.592.0.a to i64
  store i64 %.sroa.091.0, ptr %0, align 8
  %.sroa.056.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.592.0, ptr %.sroa.056.sroa.4.0..sroa_idx, align 8
  %.sroa.056.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cq, ptr %.sroa.056.sroa.5.0..sroa_idx, align 8
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 8, ptr %.sroa.457.0..sroa_idx, align 8
  br label %bb.aw

bb.ac:                                            ; preds = %bb.as, %bb.g
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 199
  %i.di = load i8, ptr %i.dh, align 1, !noundef !5 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 194
  %i.dk = load i16, ptr %i.dj, align 2, !noundef !5
  %i.dl = zext i16 %i.dk to i64                   ; 5 uses
  %i.dm = icmp eq i8 %i.di, 0
  br i1 %i.dm, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !105
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs53gkmrwjETj_4tiff(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef range(i64 0, 65536) %i.dl, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !105
  %i.dn = load i64, ptr %i.h, align 8, !range !36, !noalias !105, !noundef !5
  %i.do = trunc nuw i64 %i.dn to i1
  %i.dp = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !range !98, !noalias !105, !noundef !5 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  br i1 %i.do, label %bb.ag, label %bb.ah, !prof !14

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !105
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs53gkmrwjETj_4tiff(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef range(i64 0, 65536) %i.dl, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !105
  %i.ds = load i64, ptr %i.g, align 8, !range !36, !noalias !105, !noundef !5
  %i.dt = trunc nuw i64 %i.ds to i1
  %i.du = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.dv = load i64, ptr %i.du, align 8, !range !98, !noalias !105, !noundef !5 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.dt, label %bb.af, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs53gkmrwjETj_4tiff.exit.i71, !prof !14

bb.af:                                            ; preds = %bb.ae
  %i.dx = load i64, ptr %i.dw, align 8, !noalias !105
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.dv, i64 %i.dx) #15, !noalias !105
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs53gkmrwjETj_4tiff.exit.i71: ; preds = %bb.ae
  %i.dy = load ptr, ptr %i.dw, align 8, !noalias !105, !nonnull !5, !noundef !5 ; 2 uses
  %i.dz = icmp samesign uge i64 %i.dv, %i.dl
  tail call void @llvm.assume(i1 %i.dz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !105
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dy, i8 %i.di, i64 range(i64 0, 65536) %i.dl, i1 false), !noalias !105
  br label %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs53gkmrwjETj_4tiff.exit72

bb.ag:                                            ; preds = %bb.ad
  %i.ea = load i64, ptr %i.dr, align 8, !noalias !105
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.dq, i64 %i.ea) #15, !noalias !105
  unreachable

bb.ah:                                            ; preds = %bb.ad
  %i.eb = load ptr, ptr %i.dr, align 8, !noalias !105, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !105
  br label %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs53gkmrwjETj_4tiff.exit72

_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs53gkmrwjETj_4tiff.exit72: ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs53gkmrwjETj_4tiff.exit.i71, %bb.ah
  %.sroa.5.0.a = phi ptr [ %i.eb, %bb.ah ], [ %i.dy, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs53gkmrwjETj_4tiff.exit.i71 ]
  %.sroa.0.0 = phi i64 [ %i.dq, %bb.ah ], [ %i.dv, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs53gkmrwjETj_4tiff.exit.i71 ]
  %.sroa.5.0 = ptrtoint ptr %.sroa.5.0.a to i64
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.08.sroa.4.0..sroa_idx, align 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dl, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 2, ptr %.sroa.49.0..sroa_idx, align 8
  br label %bb.aw

bb.ai:                                            ; preds = %bb.as, %bb.g
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 199
  %i.ed = load i8, ptr %i.ec, align 1, !noundef !5
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 4, ptr %i.ee, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.ed, ptr %.sroa.4.0..sroa_idx, align 1
  store i64 -1, ptr %0, align 8
  br label %bb.aw

bb.aj:                                            ; preds = %bb.as, %bb.g
  %.sroa.03.0 = phi i8 [ 4, %bb.g ], [ 1, %bb.as ]
  %.sroa.6.0.in = getelementptr inbounds nuw i8, ptr %1, i64 199
  %.sroa.6.0 = load i8, ptr %.sroa.6.0.in, align 1, !noundef !5
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.03.0, ptr %i.ef, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 1
  store i64 -1, ptr %0, align 8
  br label %bb.aw

bb.ak:                                            ; preds = %bb.at, %bb.n
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 199
  %i.eh = load i8, ptr %i.eg, align 1, !noundef !5 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 194
  %i.ej = load i16, ptr %i.ei, align 2, !noundef !5
  %i.ek = zext i16 %i.ej to i64                   ; 5 uses
  %i.el = icmp eq i8 %i.eh, 0
  br i1 %i.el, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !108
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs53gkmrwjETj_4tiff(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef range(i64 0, 65536) %i.ek, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !108
  %i.em = load i64, ptr %i.f, align 8, !range !36, !noalias !108, !noundef !5
  %i.en = trunc nuw i64 %i.em to i1
  %i.eo = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !range !98, !noalias !108, !noundef !5 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.en, label %bb.ao, label %bb.ap, !prof !14

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !108
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs53gkmrwjETj_4tiff(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef range(i64 0, 65536) %i.ek, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !108
  %i.er = load i64, ptr %i.e, align 8, !range !36, !noalias !108, !noundef !5
  %i.es = trunc nuw i64 %i.er to i1
  %i.et = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.eu = load i64, ptr %i.et, align 8, !range !98, !noalias !108, !noundef !5 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.es, label %bb.an, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs53gkmrwjETj_4tiff.exit.i73, !prof !14

bb.an:                                            ; preds = %bb.am
  %i.ew = load i64, ptr %i.ev, align 8, !noalias !108
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.eu, i64 %i.ew) #15, !noalias !108
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs53gkmrwjETj_4tiff.exit.i73: ; preds = %bb.am
  %i.ex = load ptr, ptr %i.ev, align 8, !noalias !108, !nonnull !5, !noundef !5 ; 2 uses
  %i.ey = icmp samesign uge i64 %i.eu, %i.ek
  tail call void @llvm.assume(i1 %i.ey)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !108
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ex, i8 %i.eh, i64 range(i64 0, 65536) %i.ek, i1 false), !noalias !108
  br label %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs53gkmrwjETj_4tiff.exit74

bb.ao:                                            ; preds = %bb.al
  %i.ez = load i64, ptr %i.eq, align 8, !noalias !108
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ep, i64 %i.ez) #15, !noalias !108
  unreachable

bb.ap:                                            ; preds = %bb.al
  %i.fa = load ptr, ptr %i.eq, align 8, !noalias !108, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !108
  br label %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs53gkmrwjETj_4tiff.exit74

_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs53gkmrwjETj_4tiff.exit74: ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs53gkmrwjETj_4tiff.exit.i73, %bb.ap
  %.sroa.580.0.a = phi ptr [ %i.fa, %bb.ap ], [ %i.ex, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs53gkmrwjETj_4tiff.exit.i73 ]
  %.sroa.079.0 = phi i64 [ %i.ep, %bb.ap ], [ %i.eu, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs53gkmrwjETj_4tiff.exit.i73 ]
  %.sroa.580.0 = ptrtoint ptr %.sroa.580.0.a to i64
  store i64 %.sroa.079.0, ptr %0, align 8
  %.sroa.020.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.580.0, ptr %.sroa.020.sroa.4.0..sroa_idx, align 8
  %.sroa.020.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ek, ptr %.sroa.020.sroa.5.0..sroa_idx, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 5, ptr %.sroa.421.0..sroa_idx, align 8
  br label %bb.aw

bb.aq:                                            ; preds = %bb.at, %bb.n
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 199
  %i.fc = load i8, ptr %i.fb, align 1, !noundef !5
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 6, ptr %i.fd, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.fc, ptr %.sroa.415.0..sroa_idx, align 1
  store i64 -1, ptr %0, align 8
  br label %bb.aw

bb.ar:                                            ; preds = %bb.at, %bb.n
  %.sroa.011.0 = phi i8 [ 6, %bb.n ], [ 5, %bb.at ]
  %.sroa.612.0.in = getelementptr inbounds nuw i8, ptr %1, i64 199
  %.sroa.612.0 = load i8, ptr %.sroa.612.0.in, align 1, !noundef !5
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.011.0, ptr %i.fe, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.612.0, ptr %.sroa.612.0..sroa_idx, align 1
  store i64 -1, ptr %0, align 8
  br label %bb.aw

bb.as:                                            ; preds = %bb.b
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 196
  %i.fg = load i16, ptr %i.ff, align 4, !noundef !5
  switch i16 %i.fg, label %bb.ac [
    i16 3, label %bb.aj
    i16 4, label %bb.ai
  ]

bb.at:                                            ; preds = %bb.b
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 196
  %i.fi = load i16, ptr %i.fh, align 4, !noundef !5
  switch i16 %i.fi, label %bb.ak [
    i16 4, label %bb.ar
    i16 5, label %bb.aq
  ]

bb.au:                                            ; preds = %bb.f
  store i8 0, ptr %i.ad, align 8
  store i8 %i.ac, ptr %.sroa.433.0..sroa_idx, align 1
  store i64 -1, ptr %0, align 8
  br label %bb.aw

bb.av:                                            ; preds = %bb.f
  store i8 9, ptr %i.ad, align 8
  store i8 %i.ac, ptr %.sroa.433.0..sroa_idx, align 1
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %i.z, ptr %.sroa.537.0..sroa_idx, align 2
  store i64 -1, ptr %0, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.bk, %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs53gkmrwjETj_4tiff.exit78, %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs53gkmrwjETj_4tiff.exit76, %bb.ax, %bb.av, %bb.au, %bb.ar, %bb.aq, %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs53gkmrwjETj_4tiff.exit74, %bb.aj, %bb.ai, %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs53gkmrwjETj_4tiff.exit72, %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs53gkmrwjETj_4tiff.exit70, %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs53gkmrwjETj_4tiff.exit68, %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs53gkmrwjETj_4tiff.exit
  ret void

bb.ax:                                            ; preds = %bb.o
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 7, ptr %i.fj, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.bi, ptr %.sroa.424.0..sroa_idx, align 1
  store i64 -1, ptr %0, align 8
  br label %bb.aw

bb.ay:                                            ; preds = %bb.o
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 194
  %i.fl = load i16, ptr %i.fk, align 2, !noundef !5
  %i.fm = zext i16 %i.fl to i64                   ; 5 uses
  %i.fn = icmp eq i8 %i.bi, 0
  br i1 %i.fn, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !111
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs53gkmrwjETj_4tiff(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef range(i64 0, 65536) %i.fm, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !111
  %i.fo = load i64, ptr %i.d, align 8, !range !36, !noalias !111, !noundef !5
  %i.fp = trunc nuw i64 %i.fo to i1
  %i.fq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fr = load i64, ptr %i.fq, align 8, !range !98, !noalias !111, !noundef !5 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.fp, label %bb.bc, label %bb.bd, !prof !14

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !111
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs53gkmrwjETj_4tiff(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef range(i64 0, 65536) %i.fm, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !111
  %i.ft = load i64, ptr %i.c, align 8, !range !36, !noalias !111, !noundef !5
  %i.fu = trunc nuw i64 %i.ft to i1
  %i.fv = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.fw = load i64, ptr %i.fv, align 8, !range !98, !noalias !111, !noundef !5 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.fu, label %bb.bb, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs53gkmrwjETj_4tiff.exit.i75, !prof !14

bb.bb:                                            ; preds = %bb.ba
  %i.fy = load i64, ptr %i.fx, align 8, !noalias !111
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.fw, i64 %i.fy) #15, !noalias !111
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs53gkmrwjETj_4tiff.exit.i75: ; preds = %bb.ba
  %i.fz = load ptr, ptr %i.fx, align 8, !noalias !111, !nonnull !5, !noundef !5 ; 2 uses
  %i.ga = icmp samesign uge i64 %i.fw, %i.fm
  tail call void @llvm.assume(i1 %i.ga)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !111
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.fz, i8 %i.bi, i64 range(i64 0, 65536) %i.fm, i1 false), !noalias !111
  br label %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs53gkmrwjETj_4tiff.exit76

bb.bc:                                            ; preds = %bb.az
  %i.gb = load i64, ptr %i.fs, align 8, !noalias !111
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.fr, i64 %i.gb) #15, !noalias !111
  unreachable

bb.bd:                                            ; preds = %bb.az
  %i.gc = load ptr, ptr %i.fs, align 8, !noalias !111, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !111
  br label %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs53gkmrwjETj_4tiff.exit76

_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs53gkmrwjETj_4tiff.exit76: ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs53gkmrwjETj_4tiff.exit.i75, %bb.bd
  %.sroa.583.0.a = phi ptr [ %i.gc, %bb.bd ], [ %i.fz, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs53gkmrwjETj_4tiff.exit.i75 ]
  %.sroa.082.0 = phi i64 [ %i.fr, %bb.bd ], [ %i.fw, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs53gkmrwjETj_4tiff.exit.i75 ]
  %.sroa.583.0 = ptrtoint ptr %.sroa.583.0.a to i64
  store i64 %.sroa.082.0, ptr %0, align 8
  %.sroa.029.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.583.0, ptr %.sroa.029.sroa.4.0..sroa_idx, align 8
  %.sroa.029.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fm, ptr %.sroa.029.sroa.5.0..sroa_idx, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 6, ptr %.sroa.430.0..sroa_idx, align 8
  br label %bb.aw

bb.be:                                            ; preds = %bb.v
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 194
  %i.ge = load i16, ptr %i.gd, align 2, !noundef !5
  %i.gf = zext i16 %i.ge to i64                   ; 5 uses
  %i.gg = icmp eq i8 %i.cl, 0
  br i1 %i.gg, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !114
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs53gkmrwjETj_4tiff(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, 65536) %i.gf, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !114
  %i.gh = load i64, ptr %i.b, align 8, !range !36, !noalias !114, !noundef !5
  %i.gi = trunc nuw i64 %i.gh to i1
  %i.gj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.gk = load i64, ptr %i.gj, align 8, !range !98, !noalias !114, !noundef !5 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.gi, label %bb.bi, label %bb.bj, !prof !14

bb.bg:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !114
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs53gkmrwjETj_4tiff(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 65536) %i.gf, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !114
  %i.gm = load i64, ptr %i.a, align 8, !range !36, !noalias !114, !noundef !5
  %i.gn = trunc nuw i64 %i.gm to i1
  %i.go = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.gp = load i64, ptr %i.go, align 8, !range !98, !noalias !114, !noundef !5 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.gn, label %bb.bh, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs53gkmrwjETj_4tiff.exit.i77, !prof !14

bb.bh:                                            ; preds = %bb.bg
  %i.gr = load i64, ptr %i.gq, align 8, !noalias !114
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.gp, i64 %i.gr) #15, !noalias !114
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs53gkmrwjETj_4tiff.exit.i77: ; preds = %bb.bg
  %i.gs = load ptr, ptr %i.gq, align 8, !noalias !114, !nonnull !5, !noundef !5 ; 2 uses
  %i.gt = icmp samesign uge i64 %i.gp, %i.gf
  tail call void @llvm.assume(i1 %i.gt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !114
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.gs, i8 %i.cl, i64 range(i64 0, 65536) %i.gf, i1 false), !noalias !114
  br label %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs53gkmrwjETj_4tiff.exit78

bb.bi:                                            ; preds = %bb.bf
  %i.gu = load i64, ptr %i.gl, align 8, !noalias !114
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.gk, i64 %i.gu) #15, !noalias !114
  unreachable

bb.bj:                                            ; preds = %bb.bf
  %i.gv = load ptr, ptr %i.gl, align 8, !noalias !114, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !114
  br label %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs53gkmrwjETj_4tiff.exit78

_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs53gkmrwjETj_4tiff.exit78: ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs53gkmrwjETj_4tiff.exit.i77, %bb.bj
  %.sroa.586.0.a = phi ptr [ %i.gv, %bb.bj ], [ %i.gs, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs53gkmrwjETj_4tiff.exit.i77 ]
  %.sroa.085.0 = phi i64 [ %i.gk, %bb.bj ], [ %i.gp, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs53gkmrwjETj_4tiff.exit.i77 ]
  %.sroa.586.0 = ptrtoint ptr %.sroa.586.0.a to i64
  store i64 %.sroa.085.0, ptr %0, align 8
  %.sroa.044.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.586.0, ptr %.sroa.044.sroa.4.0..sroa_idx, align 8
  %.sroa.044.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.gf, ptr %.sroa.044.sroa.5.0..sroa_idx, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 9, ptr %.sroa.445.0..sroa_idx, align 8
  br label %bb.aw

bb.bk:                                            ; preds = %bb.v
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 8, ptr %i.gw, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.cl, ptr %.sroa.439.0..sroa_idx, align 1
  store i64 -1, ptr %0, align 8
  br label %bb.aw
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs53gkmrwjETj_4tiff4tags12SampleFormatENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs53gkmrwjETj_4tiff(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecjENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs53gkmrwjETj_4tiff(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs53gkmrwjETj_4tiff4tags12SampleFormatENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs53gkmrwjETj_4tiff(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs53gkmrwjETj_4tiff(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs53gkmrwjETj_4tiff(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEBW_EINtB5_7ZipImplBW_BW_E3newCs53gkmrwjETj_4tiff(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECs53gkmrwjETj_4tiff(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters4take4TakeQINtNtB1z_7step_by6StepByINtNtNtB1D_3ops5range14RangeInclusivejEEEE9from_iterCs53gkmrwjETj_4tiff(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(40), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 11) i8 @_RNvMs1_NtCs53gkmrwjETj_4tiff7decoderNtB5_22BufferLayoutPreference11sample_type(i16 noundef range(i16 1, 6), i16, i32) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs53gkmrwjETj_4tiff(ptr noalias nofree noundef align 8 dereferenceable(40), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { cold noreturn nounwind }
attributes #12 = { noinline noreturn }
attributes #13 = { cold }
attributes #14 = { nounwind }
attributes #15 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (67854e511 2026-08-15)"}
!4 = !{i64 0, i64 -9223372036854775786}
!5 = !{}
!6 = !{i64 0, i64 -9223372036854775793}
!7 = !{!8}
!8 = distinct !{!8, !9, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs53gkmrwjETj_4tiff5error15TiffFormatErrorEBF_: argument 0"}
!9 = distinct !{!9, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs53gkmrwjETj_4tiff5error15TiffFormatErrorEBF_"}
!10 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_RINvNtNtNtCsj6eKBz9Db1c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs53gkmrwjETj_4tiff: argument 0"}
!13 = distinct !{!13, !"_RINvNtNtNtCsj6eKBz9Db1c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs53gkmrwjETj_4tiff"}
!14 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!15 = !{i16 1, i16 3}
!16 = !{i8 0, i8 10}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_RNvMNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB2_6StepByINtNtNtB8_3ops5range14RangeInclusivejEE3newCs53gkmrwjETj_4tiff: argument 0"}
!19 = distinct !{!19, !"_RNvMNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB2_6StepByINtNtNtB8_3ops5range14RangeInclusivejEE3newCs53gkmrwjETj_4tiff"}
!20 = !{!21}
!21 = distinct !{!21, !19, !"_RNvMNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB2_6StepByINtNtNtB8_3ops5range14RangeInclusivejEE3newCs53gkmrwjETj_4tiff: argument 1"}
!22 = !{!18, !21}
!23 = !{i8 0, i8 2}
!24 = !{!25}
!25 = distinct !{!25, !26, !"_RNvXsd_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator3nthCs53gkmrwjETj_4tiff: argument 0"}
!26 = distinct !{!26, !"_RNvXsd_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator3nthCs53gkmrwjETj_4tiff"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_RNvXsU_NtNtCsj6eKBz9Db1c_4core3cmp5implsjNtB7_10PartialOrd2le: argument 0"}
!29 = distinct !{!29, !"_RNvXsU_NtNtCsj6eKBz9Db1c_4core3cmp5implsjNtB7_10PartialOrd2le"}
!30 = !{!31}
!31 = distinct !{!31, !29, !"_RNvXsU_NtNtCsj6eKBz9Db1c_4core3cmp5implsjNtB7_10PartialOrd2le: argument 1"}
!32 = !{!28, !25}
!33 = !{!31, !25}
!34 = !{i64 -1, i64 -9223372036854775808}
!35 = !{i16 1, i16 6}
!36 = !{i64 0, i64 2}
!37 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!38 = !{i32 0, i32 2}
!39 = !{i64 -1, i64 -9223372036854775786}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB4_5Image16chunk_dimensions: argument 1"}
!42 = distinct !{!42, !"_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB4_5Image16chunk_dimensions"}
!43 = !{!44}
!44 = distinct !{!44, !42, !"_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB4_5Image16chunk_dimensions: argument 0"}
!45 = !{!44, !41}
!46 = !{i16 -32763, i16 9}
!47 = !{!48}
!48 = distinct !{!48, !49, !"_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB4_5Image16chunk_dimensions: argument 1"}
!49 = distinct !{!49, !"_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB4_5Image16chunk_dimensions"}
!50 = !{!51}
!51 = distinct !{!51, !49, !"_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB4_5Image16chunk_dimensions: argument 0"}
!52 = !{!51, !48}
!53 = !{!"branch_weights", i32 2002, i32 2000}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_RNvMNtNtCs53gkmrwjETj_4tiff7decoder5imageNtB2_14TileAttributes11get_padding: argument 0"}
!56 = distinct !{!56, !"_RNvMNtNtCs53gkmrwjETj_4tiff7decoder5imageNtB2_14TileAttributes11get_padding"}
!57 = !{!58, !60}
!58 = distinct !{!58, !59, !"_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCs53gkmrwjETj_4tiff: argument 0"}
!59 = distinct !{!59, !"_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCs53gkmrwjETj_4tiff"}
!60 = distinct !{!60, !59, !"_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCs53gkmrwjETj_4tiff: argument 1"}
!61 = !{!62, !64}
!62 = distinct !{!62, !63, !"_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCs53gkmrwjETj_4tiff: argument 0"}
end_hunk_1
