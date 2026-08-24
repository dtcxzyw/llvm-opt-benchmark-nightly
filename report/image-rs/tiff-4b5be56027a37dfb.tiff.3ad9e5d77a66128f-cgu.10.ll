Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/tiff-4b5be56027a37dfb.tiff.3ad9e5d77a66128f-cgu.10?download=true
inline.NumInlined: 55
inline.NumDeleted: 37
begin_hunk_0_@_RNvMs0_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB5_13ReadoutLayout15to_plane_layout:bb.a
  %i.aq = load i8, ptr %.sroa.5.0..sroa_idx, align 8, !range !23, !alias.scope !24, !noundef !5
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %.thread33, label %bb.l

bb.l:                                             ; preds = %_RNvMNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB2_6StepByINtNtNtB8_3ops5range14RangeInclusivejEE3newCs53gkmrwjETj_4tiff.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !27)
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  %i.as = load i64, ptr %i.ak, align 8, !alias.scope !32, !noalias !30, !noundef !5 ; 3 uses
  %i.at = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !33, !noalias !27, !noundef !5 ; 2 uses
  %.not.i = icmp ugt i64 %i.as, %i.at
  br i1 %.not.i, label %.thread33, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = add i64 %i.as, %.sroa.018.0             ; 5 uses
  %i.av = icmp ult i64 %i.au, %i.as               ; 2 uses
  %i.aw = add i64 %i.au, 1
  %i.ax = icmp eq i64 %i.au, -1
  store i64 %i.aw, ptr %i.ak, align 8, !alias.scope !24
  %i.ay = or i1 %i.av, %i.ax
  %i.az = zext i1 %i.ay to i8
  store i8 %i.az, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24
  %.not3.i.not = icmp ugt i64 %i.au, %i.at
  %or.cond = or i1 %i.av, %.not3.i.not
  br i1 %or.cond, label %.thread33, label %bb.o

bb.n:                                             ; preds = %bb.j
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #12
  unreachable

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %.sroa.06.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.06.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.06, i64 104, i1 false)
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.au, ptr %.sroa.57.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06)
  br label %bb.r

.thread33:                                        ; preds = %bb.m, %_RNvMNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB2_6StepByINtNtNtB8_3ops5range14RangeInclusivejEE3newCs53gkmrwjETj_4tiff.exit, %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775789, ptr %i.ba, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecjENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs53gkmrwjETj_4tiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECs53gkmrwjETj_4tiff.exit unwind label %bb.p

bb.p:                                             ; preds = %.thread33
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs53gkmrwjETj_4tiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecjEECs53gkmrwjETj_4tiff.exit.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecjEECs53gkmrwjETj_4tiff.exit.i: ; preds = %bb.p
  resume { ptr, i32 } %i.bb

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECs53gkmrwjETj_4tiff.exit: ; preds = %.thread33
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs53gkmrwjETj_4tiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %bb.r

bb.r:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECs53gkmrwjETj_4tiff.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtCs53gkmrwjETj_4tiff7decoderNtNtB5_5image13ReadoutLayout24result_extent_for_planes(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %1, i16 noundef %2, i16 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [32 x i8], align 8            ; 6 uses
  %i.b = alloca [112 x i8], align 8               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB5_13ReadoutLayout15to_plane_layout(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1)
  %i.c = load i64, ptr %i.a, align 8, !range !34, !noundef !5 ; 2 uses
  %i.d = icmp eq i64 %i.c, -1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.ab

bb.c:                                             ; preds = %bb.a
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.534.0..sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  store i64 %i.c, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.f = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !5 ; 2 uses
  %i.i = zext i16 %2 to i64                       ; 2 uses
  %i.j = icmp ugt i64 %i.h, %i.i
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 -9223372036854775787, ptr %0, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.47.sroa.5.0..sroa.47.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %2, ptr %.sroa.47.sroa.5.0..sroa.47.0..sroa_idx.sroa_idx, align 2
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.i
  %i.l = load i64, ptr %i.k, align 8, !noundef !5
  %i.m = zext i16 %3 to i64                       ; 2 uses
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
  %.sroa.01.0.i = sub i64 %i.u, %i.ac
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
  %.sroa.07.0.i = sub i64 %i.u, %i.aj
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
  %.sroa.04.0.i = sub i64 %i.u, %i.aq
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
  store i64 -9223372036854775800, ptr %0, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %.sroa.424.0..sroa_idx, align 8
  %.sroa.424.sroa.4.0..sroa.424.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bb, ptr %.sroa.424.sroa.4.0..sroa.424.0..sroa_idx.sroa_idx, align 8
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
  store ptr inttoptr (i64 -9223372036854775805 to ptr), ptr %.sroa.450.0..sroa_idx, align 8
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
  store ptr inttoptr (i64 -9223372036854775805 to ptr), ptr %.sroa.462.0..sroa_idx, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB4_5Image16readout_for_size:bb.a
bb.af:                                            ; preds = %bb.ac
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.cb = load i16, ptr %i.ca, align 8, !noundef !5
  %i.cc = icmp eq i16 %i.cb, 1
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 186
  %i.ce = load i16, ptr %i.cd, align 2
  %i.cf = icmp eq i16 %i.ce, 1
  %or.cond4.not265 = select i1 %i.cc, i1 %i.cf, i1 false
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 172
  %i.ch = load i16, ptr %i.cg, align 4, !range !46
  %i.ci = icmp eq i16 %i.ch, 7
  %or.cond253 = select i1 %or.cond4.not265, i1 true, i1 %i.ci
  br i1 %or.cond253, label %bb.ae, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i64 -9223372036854775794, ptr %0, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 74
  store i16 0, ptr %i.cj, align 2
  br label %bb.ah

bb.ah:                                            ; preds = %bb.b, %bb.x, %bb.ag, %bb.ad, %bb.v, %_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB4_5Image16chunk_dimensions.exit, %bb.ae
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB4_5Image17readout_for_image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(200) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.b = load i32, ptr %i.a, align 8, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.d = load i32, ptr %i.c, align 4, !noundef !5
  tail call void @_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB4_5Image16readout_for_size(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %1, i32 noundef %i.b, i32 noundef %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB4_5Image21chunk_data_dimensions(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(200) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 198
  %i.c = load i8, ptr %i.b, align 2, !range !23, !alias.scope !47, !noalias !50, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load i64, ptr %i.e, align 8, !range !36, !alias.scope !47, !noalias !50, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.e, label %bb.f, !prof !37

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.i = load i32, ptr %i.h, align 8, !range !38, !alias.scope !47, !noalias !50, !noundef !5
  %i.j = trunc nuw i32 %i.i to i1
  br i1 %i.j, label %bb.g, label %bb.d, !prof !37

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #12, !noalias !52
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !47, !noalias !50, !noundef !5 ; 8 uses
  %i.m = icmp ugt i64 %i.l, 4294967295
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.o = load i64, ptr %i.n, align 8              ; 7 uses
  %i.p = icmp ugt i64 %i.o, 4294967295
  %or.cond103 = select i1 %i.m, i1 true, i1 %i.p
  br i1 %or.cond103, label %_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB4_5Image16chunk_dimensions.exit, label %bb.n

bb.f:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #12, !noalias !52
  unreachable

_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB4_5Image16chunk_dimensions.exit: ; preds = %bb.e
  store i64 -9223372036854775788, ptr %0, align 8
  br label %bb.ad

bb.g:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.s = load i32, ptr %i.r, align 8, !alias.scope !47, !noalias !50, !noundef !5
  %i.t = load i32, ptr %i.q, align 4, !alias.scope !47, !noalias !50, !noundef !5 ; 5 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.w = load i32, ptr %i.v, align 4, !noundef !5 ; 4 uses
  %i.x = udiv i32 %i.w, %i.t
  %i.y = urem i32 %i.w, %i.t
  %.not89 = icmp ne i32 %i.y, 0
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
  %.sroa.09.0.i = phi i64 [ %3, %bb.y ], [ 0, %bb.v ]
  %i.ax = icmp eq i64 %i.o, 0
  br i1 %i.ax, label %bb.aa, label %bb.z

bb.y:                                             ; preds = %bb.v
  %i.ay = sub nsw i64 %i.l, %i.ap
  %3 = urem i64 %i.ay, %i.l
  br label %bb.x

bb.z:                                             ; preds = %bb.x
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !54, !noundef !5 ; 2 uses
  %i.bb = udiv i64 %i.ba, %i.o
  %i.bc = urem i64 %i.ba, %i.o                    ; 2 uses
  %.not16.i = icmp eq i64 %i.bc, 0
  %i.bd = sext i1 %.not16.i to i64
  %.sroa.012.0.i = add i64 %i.bb, %i.bd
  %i.be = icmp eq i64 %i.as, %.sroa.012.0.i
  br i1 %i.be, label %bb.ab, label %_RNvMNtNtCs53gkmrwjETj_4tiff7decoder5imageNtB2_14TileAttributes11get_padding.exit

bb.aa:                                            ; preds = %bb.x
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #12, !noalias !54
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.bf = sub nsw i64 %i.o, %i.bc
  %4 = urem i64 %i.bf, %i.o
  br label %_RNvMNtNtCs53gkmrwjETj_4tiff7decoder5imageNtB2_14TileAttributes11get_padding.exit

_RNvMNtNtCs53gkmrwjETj_4tiff7decoder5imageNtB2_14TileAttributes11get_padding.exit: ; preds = %bb.z, %bb.ab
  %.sroa.011.0.i = phi i64 [ %4, %bb.ab ], [ 0, %bb.z ]
  %i.bg = sub nsw i64 %i.l, %.sroa.09.0.i         ; 2 uses
  %i.bh = sub nsw i64 %i.o, %.sroa.011.0.i        ; 2 uses
  %5 = or i64 %i.bh, %i.bg
  %or.cond.not = icmp ult i64 %5, 4294967296
  br i1 %or.cond.not, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %_RNvMNtNtCs53gkmrwjETj_4tiff7decoder5imageNtB2_14TileAttributes11get_padding.exit
  %i.bi = trunc nuw i64 %i.bg to i32
  %i.bj = trunc nuw i64 %i.bh to i32
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.bi, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.bj, ptr %i.bl, align 4
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
  %i.n = urem i64 %3, %i.i                        ; 2 uses
  %i.o = sub nuw nsw i64 %3, %i.n                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %i.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !65
  store ptr %i.m, ptr %i.b, align 8, !noalias !70
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.k, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !70
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %0, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !70
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.l, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !70
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.f, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !65
  store ptr %i.p, ptr %i.a, align 8, !alias.scope !71, !noalias !75
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.n, ptr %.sroa.43.0..sroa_idx, align 8, !alias.scope !71, !noalias !75
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %2, ptr %.sroa.54.0..sroa_idx, align 8, !alias.scope !71, !noalias !75
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

end_hunk_1
