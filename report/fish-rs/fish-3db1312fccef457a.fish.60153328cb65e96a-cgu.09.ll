Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.09?download=true
inline.NumInlined: 2079
inline.NumDeleted: 649
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 36
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvNtNtCs8frGy5WneL6_4fish8builtins4jobs18builtin_jobs_print:bb.a
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa) #34
          to label %.body85 unwind label %bb.cr

bb.fp:                                            ; preds = %bb.fo
  %i.qo = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit260

bb.fq:                                            ; preds = %bb.fr
  %i.qp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ab) #34
          to label %.body85 unwind label %bb.cr

bb.fr:                                            ; preds = %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.qq = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.val = load ptr, ptr %i.qq, align 8, !nonnull !4, !noundef !4
  %i.qr = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.val69 = load i64, ptr %i.qr, align 8, !noundef !4 ; 4 uses
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap, i64 noundef range(i64 0, 4611686018427387904) %.val69)
          to label %.noexc265 unwind label %bb.fq

.noexc265:                                        ; preds = %bb.fr
  %i.qs = load i64, ptr %.sroa.640.0..sroa_idx, align 8, !alias.scope !3600, !noundef !4 ; 3 uses
  %i.qt = icmp ult i64 %i.qs, 2305843009213693952
  call void @llvm.assume(i1 %i.qt)
  %.not.i.i263 = icmp eq i64 %.val69, 0
  br i1 %.not.i.i263, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %.noexc265
  %i.qu = load ptr, ptr %.sroa.533.0..sroa_idx, align 8, !alias.scope !3600, !nonnull !4, !noundef !4
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.qu, i64 %i.qs
  %i.qw = shl nuw nsw i64 %.val69, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.qv, ptr nonnull readonly align 4 %.val, i64 %i.qw, i1 false)
  %.pre.i.i264 = load i64, ptr %.sroa.640.0..sroa_idx, align 8, !alias.scope !3600
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %.noexc265
  %i.qx = phi i64 [ %.pre.i.i264, %bb.fs ], [ %i.qs, %.noexc265 ]
  %i.qy = add i64 %i.qx, %.val69
  store i64 %i.qy, ptr %.sroa.640.0..sroa_idx, align 8, !alias.scope !3600
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i268 unwind label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.qz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %.body85 unwind label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.ra = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i268: ; preds = %bb.ft
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit272 unwind label %.loopexit.split-lp297.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit272: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %.invoke

.body:                                            ; preds = %bb.fw, %bb.q, %.body85
  %.pn59 = phi { ptr, i32 } [ %.pn57, %.body85 ], [ %i.rb, %bb.fw ], [ %i.bl, %bb.q ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq) #34
          to label %common.resume unwind label %bb.cr

bb.fw:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  %i.rb = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit unwind label %bb.fx

bb.fx:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  %i.rc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %common.resume unwind label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.rd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  ret void
}

; Function Attrs: nonlazybind uwtable
define range(i64 0, -4294967294) i64 @_RNvNtNtCs8frGy5WneL6_4fish8builtins4jobs4jobs(ptr noalias nofree noundef align 8 dereferenceable(432) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 9 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [1 x i8], align 1                 ; 3 uses
  %i.e = alloca [1 x i8], align 1                 ; 3 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [32 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %i.o = alloca [72 x i8], align 8                ; 9 uses
  %i.p = alloca [8 x i8], align 8                 ; 7 uses
  %i.q = alloca [32 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 8 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [72 x i8], align 8                ; 9 uses
  %i.v = alloca [136 x i8], align 8               ; 28 uses
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.cf, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %2, align 8, !nonnull !4, !align !24, !noundef !4 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !noundef !4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  store ptr %2, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 2 uses
  store i64 %3, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  store ptr null, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store ptr @548, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store i64 6, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  store ptr @556, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  store i64 7, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  store ptr inttoptr (i64 4 to ptr), ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  store i64 0, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 104 ; 5 uses
  store i64 0, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 128
  store i32 63, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 134
  store i8 1, ptr %i.ak, align 2
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 132
  store i8 0, ptr %i.am, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 133
  store i8 0, ptr %i.an, align 1
  store i64 0, ptr %i.v, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.454.0..sroa_idx, align 8
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 0, ptr %.sroa.555.0..sroa_idx, align 8
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.b
  %.sroa.05.0.ph = phi i1 [ false, %bb.b ], [ %.sroa.05.0526, %.outer.backedge ] ; 5 uses
  %.ph = phi i8 [ 0, %bb.b ], [ %.ph.be, %.outer.backedge ] ; 5 uses
  %i.ao = invoke noundef i32 @_RNvMCshMbxjpSxucW_12fish_wgetoptNtB2_9WGetopter8next_opt(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.v)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.c:                                             ; preds = %.outer
  switch i32 %i.ao, label %.loopexit [
    i32 -1, label %.loopexit543
    i32 112, label %.outer.backedge
    i32 113, label %.loopexit545
    i32 99, label %.loopexit546
    i32 103, label %.loopexit547
    i32 108, label %.outer.peel.newph
    i32 104, label %.loopexit548
    i32 58, label %.loopexit549
    i32 59, label %.loopexit550
    i32 63, label %.loopexit551
  ], !prof !3638

.outer.peel.newph:                                ; preds = %bb.c, %bb.d
  %i.ap = invoke noundef i32 @_RNvMCshMbxjpSxucW_12fish_wgetoptNtB2_9WGetopter8next_opt(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.v)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, %bb.bb, %bb.bc, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.au, %bb.cc, %bb.bz, %bb.bm, %bb.aj
  %.pn103 = phi { ptr, i32 } [ %.pn92, %bb.aj ], [ %i.hz, %bb.cc ], [ %.pn101, %bb.bz ], [ %lpad.loopexit.split-lp475, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn97, %bb.bm ], [ %i.fy, %bb.bb ], [ %lpad.loopexit.split-lp475, %bb.au ], [ %i.fy, %bb.bc ], [ %lpad.loopexit.split-lp541, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshMbxjpSxucW_12fish_wgetopt9WGetopterECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(136) %i.v) #34
          to label %common.resume unwind label %bb.an

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp: ; preds = %bb.t, %bb.s, %bb.ch, %.lr.ph246, %bb.y, %bb.aa, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_3num7nonzero7NonZeromENtNtBM_5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit, %bb.az, %bb.be, %.loopexit, %.loopexit548, %bb.g, %bb.i, %bb.k, %bb.v, %bb.z, %bb.al, %bb.bo, %bb.cd, %bb.ci, %bb.av, %.invoke, %.invoke388, %.invoke390, %.invoke392, %.outer.peel.newph, %.outer
  %lpad.loopexit.split-lp541 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %.outer.peel.newph
  switch i32 %i.ap, label %.loopexit [
    i32 -1, label %.critedge
    i32 112, label %.outer.backedge
    i32 113, label %.loopexit545
    i32 99, label %.loopexit546
    i32 103, label %.loopexit547
    i32 108, label %.outer.peel.newph
    i32 104, label %.loopexit548
    i32 58, label %.loopexit549
    i32 59, label %.loopexit550
    i32 63, label %.loopexit551
  ], !prof !3638, !llvm.loop !3601

.loopexit543:                                     ; preds = %bb.c
  br i1 %.sroa.05.0.ph, label %.critedge, label %bb.n

.loopexit:                                        ; preds = %bb.c, %bb.d
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @527, ptr noundef nonnull inttoptr (i64 65 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @563) #39
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.outer.backedge:                                  ; preds = %bb.c, %bb.d, %.loopexit545, %.loopexit546, %.loopexit547
  %.sroa.05.0526 = phi i1 [ %.sroa.05.0.lcssa521, %.loopexit547 ], [ %.sroa.05.0.lcssa520, %.loopexit546 ], [ %.sroa.05.0.lcssa519, %.loopexit545 ], [ %.sroa.05.0.ph, %bb.c ], [ true, %bb.d ]
  %.ph.be = phi i8 [ 3, %.loopexit547 ], [ 2, %.loopexit546 ], [ 4, %.loopexit545 ], [ 1, %bb.d ], [ 1, %bb.c ]
  br label %.outer

.loopexit545:                                     ; preds = %bb.d, %bb.c
  %.sroa.05.0.lcssa519 = phi i1 [ %.sroa.05.0.ph, %bb.c ], [ true, %bb.d ]
  br label %.outer.backedge

.loopexit546:                                     ; preds = %bb.d, %bb.c
  %.sroa.05.0.lcssa520 = phi i1 [ %.sroa.05.0.ph, %bb.c ], [ true, %bb.d ]
  br label %.outer.backedge

.loopexit547:                                     ; preds = %bb.d, %bb.c
  %.sroa.05.0.lcssa521 = phi i1 [ %.sroa.05.0.ph, %bb.c ], [ true, %bb.d ]
  br label %.outer.backedge

.loopexit548:                                     ; preds = %bb.c, %bb.d
  invoke void @_RNvNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc18builtin_print_help(ptr noalias nofree noundef nonnull align 8 dereferenceable(432) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.w, i64 noundef %i.y)
          to label %.loopexit163 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.loopexit549:                                     ; preds = %bb.c, %bb.d
  %i.aq = load i64, ptr %i.ai, align 8, !noundef !4 ; 2 uses
  %i.ar = add i64 %i.aq, -1                       ; 3 uses
  %i.as = icmp eq i64 %i.aq, 0
  br i1 %i.as, label %.invoke392, label %bb.e

.loopexit550:                                     ; preds = %bb.c, %bb.d
  %i.at = load i64, ptr %i.ai, align 8, !noundef !4 ; 2 uses
  %i.au = add i64 %i.at, -1                       ; 3 uses
  %i.av = icmp eq i64 %i.at, 0
  br i1 %i.av, label %.invoke392, label %bb.h

.loopexit551:                                     ; preds = %bb.c, %bb.d
  %i.aw = load i64, ptr %i.ai, align 8, !noundef !4 ; 2 uses
  %i.ax = add i64 %i.aw, -1                       ; 3 uses
  %i.ay = icmp eq i64 %i.aw, 0
  br i1 %i.ay, label %.invoke392, label %bb.j

bb.e:                                             ; preds = %.loopexit549
  %i.az = icmp ult i64 %i.ar, %3
  br i1 %i.az, label %bb.g, label %.invoke390

bb.f:                                             ; preds = %bb.z, %bb.v, %.loopexit
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.ar ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !4, !align !24, !noundef !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !4
  invoke void @_RNvNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc24builtin_missing_argument(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.w, i64 noundef %i.y, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) null, i64 undef, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.bb, i64 noundef %i.bd, i1 noundef zeroext true)
          to label %.loopexit163 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.h:                                             ; preds = %.loopexit550
  %i.be = icmp ult i64 %i.au, %3
  br i1 %i.be, label %bb.i, label %.invoke390

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.au ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !4, !align !24, !noundef !4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !4
  invoke void @_RNvNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc27builtin_unexpected_argument(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.w, i64 noundef %i.y, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.bg, i64 noundef %i.bi, i1 noundef zeroext true)
          to label %.loopexit163 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.j:                                             ; preds = %.loopexit551
  %i.bj = icmp ult i64 %i.ax, %3
  br i1 %i.bj, label %bb.k, label %.invoke390

.invoke392:                                       ; preds = %.loopexit551, %.loopexit550, %.loopexit549
  %i.bk = phi ptr [ @559, %.loopexit550 ], [ @557, %.loopexit549 ], [ @561, %.loopexit551 ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bk) #39
          to label %.cont393 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.cont393:                                         ; preds = %.invoke392
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.ax ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !nonnull !4, !align !24, !noundef !4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !4
  invoke void @_RNvNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc22builtin_unknown_option(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.w, i64 noundef %i.y, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.bm, i64 noundef %i.bo, i1 noundef zeroext true)
          to label %.loopexit163 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.invoke390:                                       ; preds = %bb.j, %bb.h, %bb.e
  %i.bp = phi i64 [ %i.au, %bb.h ], [ %i.ar, %bb.e ], [ %i.ax, %bb.j ]
  %i.bq = phi ptr [ @560, %bb.h ], [ @558, %bb.e ], [ @562, %bb.j ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.bp, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bq) #39
          to label %.cont391 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.cont391:                                         ; preds = %.invoke390
  unreachable

.loopexit163:                                     ; preds = %.backedge, %.critedge, %bb.ci, %.loopexit167.thread, %bb.ce, %bb.ay, %bb.am, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6filterNCNvNtNtB1h_8builtins4jobs4jobss_0EB1h_.exit.thread, %bb.bp, %bb.k, %bb.i, %bb.g, %.loopexit548
  %.sroa.161.1 = phi i64 [ 8589934593, %bb.k ], [ 4294967297, %.loopexit167.thread ], [ 4294967297, %bb.ce ], [ 4294967297, %bb.bp ], [ 8589934592, %.loopexit548 ], [ 8589934593, %bb.i ], [ 8589934593, %bb.g ], [ %i.fv, %bb.ay ], [ 8589934593, %bb.am ], [ 4294967297, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6filterNCNvNtNtB1h_8builtins4jobs4jobss_0EB1h_.exit.thread ], [ 0, %bb.ci ], [ 4294967297, %.critedge ], [ 4294967297, %.backedge ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.v)
          to label %.sink.split unwind label %bb.l

bb.l:                                             ; preds = %.loopexit163
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.v)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

common.resume:                                    ; preds = %.body, %bb.bq, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.hb, %bb.bq ], [ %i.br, %bb.l ], [ %.pn103, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %.loopexit543
  %i.bt = load i64, ptr %i.ai, align 8, !noundef !4 ; 5 uses
  %i.bu = icmp ult i64 %i.bt, %3
  br i1 %i.bu, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bv = load i64, ptr %i.aa, align 8, !noundef !4 ; 5 uses
  %i.bw = icmp ugt i64 %i.bt, %i.bv
  br i1 %i.bw, label %bb.v, label %bb.u, !prof !15

bb.p:                                             ; preds = %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.ca, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx
  %i.cc = icmp eq i64 %i.ca, 0
  br i1 %i.cc, label %.loopexit167.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 39
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job10is_visible.exit.thread
  %.sroa.03.0244 = phi i8 [ 0, %.lr.ph ], [ %.sroa.03.1, %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job10is_visible.exit.thread ] ; 4 uses
  %.sroa.045.0243 = phi ptr [ %i.by, %.lr.ph ], [ %i.ce, %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job10is_visible.exit.thread ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.045.0243, i64 8 ; 2 uses
  %i.cf = load ptr, ptr %.sroa.045.0243, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  %i.ch = load i64, ptr %i.cg, align 8, !noundef !4 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %.invoke388, label %.lr.ph460, !prof !15

.lr.ph460:                                        ; preds = %bb.q
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %i.ck = load ptr, ptr %i.cj, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.idx467 = mul nuw nsw i64 %i.ch, 224
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.idx467
  br label %bb.s

bb.r:                                             ; preds = %.noexc114
  %i.cm = getelementptr inbounds nuw i8, ptr %i.co, i64 224 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.cl
  br i1 %i.cn, label %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job10is_visible.exit.thread, label %bb.s

bb.s:                                             ; preds = %.lr.ph460, %bb.r
  %i.co = phi ptr [ %i.ck, %.lr.ph460 ], [ %i.cm, %bb.r ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 215
  %i.cq = invoke noundef zeroext i1 @_RNvMNtCs8frGy5WneL6_4fish13global_safetyNtB2_17RelaxedAtomicBool4load(ptr noundef nonnull %i.cp)
          to label %.noexc114 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc114:                                        ; preds = %bb.s
  br i1 %i.cq, label %bb.r, label %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job12is_completed.exit.i

_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job12is_completed.exit.i: ; preds = %.noexc114
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cf, i64 72
  %i.cs = load i64, ptr %i.cr, align 8, !noundef !4
  %i.ct = icmp ult i64 %i.cs, 9223372036854775807
  br i1 %i.ct, label %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job14is_constructed.exit.i, label %.invoke, !prof !14

_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job14is_constructed.exit.i: ; preds = %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job12is_completed.exit.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cf, i64 80
  %i.cv = load i8, ptr %i.cu, align 8, !range !7, !noundef !4
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job10is_visible.exit, label %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job10is_visible.exit.thread

_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job10is_visible.exit: ; preds = %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job14is_constructed.exit.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cf, i64 83
  %i.cy = load i8, ptr %i.cx, align 1, !range !7, !noundef !4
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job10is_visible.exit.thread, label %bb.t

bb.t:                                             ; preds = %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job10is_visible.exit
  %i.da = load ptr, ptr %.sroa.045.0243, align 8, !nonnull !4, !noundef !4
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = trunc nuw i8 %.sroa.03.0244 to i1
  %4 = load i8, ptr %i.cd, align 1, !range !7
  %5 = trunc nuw i8 %4 to i1
  %6 = select i1 %i.dc, i1 true, i1 %5
  %.sroa.048.0 = xor i1 %6, true
  invoke fastcc void @_RNvNtNtCs8frGy5WneL6_4fish8builtins4jobs18builtin_jobs_print(ptr noundef nonnull align 8 %i.db, i8 noundef %.ph, i1 noundef zeroext %.sroa.048.0, ptr noalias nofree noundef align 8 dereferenceable(48) %1)
          to label %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job10is_visible.exit.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job10is_visible.exit.thread: ; preds = %bb.r, %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job14is_constructed.exit.i, %bb.t, %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job10is_visible.exit
  %.sroa.03.1 = phi i8 [ %.sroa.03.0244, %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job10is_visible.exit ], [ 1, %bb.t ], [ %.sroa.03.0244, %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job14is_constructed.exit.i ], [ %.sroa.03.0244, %bb.r ] ; 2 uses
  %i.dd = icmp eq ptr %i.ce, %i.cb
  br i1 %i.dd, label %.loopexit167, label %bb.q

.loopexit167:                                     ; preds = %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job10is_visible.exit.thread
  %i.de = trunc nuw i8 %.sroa.03.1 to i1
  br i1 %i.de, label %.loopexit167.thread336, label %.loopexit167.thread

bb.u:                                             ; preds = %bb.o
  %i.df = load ptr, ptr %i.z, align 8, !nonnull !4, !align !13, !noundef !4 ; 2 uses
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %i.df, i64 %i.bv
  %i.dh = icmp samesign eq i64 %i.bt, %i.bv
  br i1 %i.dh, label %.loopexit167.thread, label %.lr.ph246.preheader

.lr.ph246.preheader:                              ; preds = %bb.u
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.df, i64 %i.bt
  br label %.lr.ph246

bb.v:                                             ; preds = %bb.o
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %i.bt, i64 noundef %i.bv, i64 noundef %i.bv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @571) #39
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.lr.ph246:                                        ; preds = %.lr.ph246.preheader, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit124
  %.sroa.010.0245 = phi ptr [ %i.dj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit124 ], [ %i.di, %.lr.ph246.preheader ] ; 7 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.010.0245, i64 16 ; 2 uses
  %i.dk = load ptr, ptr %.sroa.010.0245, align 8, !nonnull !4, !align !24, !noundef !4
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.010.0245, i64 8 ; 5 uses
  %i.dm = load i64, ptr %i.dl, align 8, !noundef !4
  %i.dn = invoke noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.dk, i64 noundef %i.dm, i64 noundef 0)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.w:                                             ; preds = %.lr.ph246
  %i.do = icmp eq i32 %i.dn, 37
  br i1 %i.do, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dp = load i64, ptr %i.dl, align 8, !noundef !4 ; 2 uses
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %bb.z, label %bb.aa, !prof !15

bb.y:                                             ; preds = %bb.w
  %i.dr = load ptr, ptr %.sroa.010.0245, align 8, !nonnull !4, !align !24, !noundef !4
  %i.ds = load i64, ptr %i.dl, align 8, !noundef !4
  %i.dt = invoke { i32, i32 } @_RNvNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc9parse_pid(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.w, i64 noundef %i.y, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.dr, i64 noundef %i.ds)
          to label %bb.ax unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 2 uses

bb.z:                                             ; preds = %bb.x
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @186, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @566) #39
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.aa:                                            ; preds = %bb.x
  %i.du = load ptr, ptr %.sroa.010.0245, align 8, !nonnull !4, !align !24, !noundef !4
  %i.dv = add i64 %i.dp, -1
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  %i.dx = invoke i64 @_RNvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi11fish_wcstoi(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.dw, i64 noundef %i.dv)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %i.dy = trunc i64 %i.dx to i1                   ; 2 uses
  %.sroa.572.0.extract.shift = lshr i64 %i.dx, 32
  %.sroa.572.0.extract.trunc = trunc nuw i64 %.sroa.572.0.extract.shift to i32
  %.sroa.516.0 = select i1 %i.dy, i32 undef, i32 %.sroa.572.0.extract.trunc ; 2 uses
  %i.dz = icmp slt i32 %.sroa.516.0, 0
  %narrow.i.not = select i1 %i.dy, i1 true, i1 %i.dz
  br i1 %narrow.i.not, label %bb.ac, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_3num7nonzero7NonZeromENtNtBM_5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_3num7nonzero7NonZeromENtNtBM_5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit: ; preds = %bb.ab
  %i.ea = invoke noundef ptr @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser11job_with_id(ptr noundef nonnull align 8 %0, i32 noundef %.sroa.516.0)
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 0, ptr %i.t, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.459.0..sroa_idx, align 8
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 0, ptr %.sroa.560.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @564, ptr %i.eb, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 26, ptr %i.ec, align 8
  store i64 -1, ptr %i.r, align 8
  %i.ed = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r)
          to label %bb.ae unwind label %bb.ad     ; 2 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit: ; preds = %bb.af, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.ee, %bb.ad ], [ %i.ej, %bb.af ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #34
          to label %bb.aj unwind label %bb.an

bb.ad:                                            ; preds = %bb.ai, %bb.ac
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit

bb.ae:                                            ; preds = %bb.ac
  %i.ef = extractvalue { ptr, i64 } %i.ed, 0
  %i.eg = extractvalue { ptr, i64 } %i.ed, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.eh = load ptr, ptr %.sroa.010.0245, align 8, !nonnull !4, !align !24, !noundef !4
  %i.ei = load i64, ptr %i.dl, align 8, !noundef !4
  store i64 1, ptr %i.q, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.eh, ptr %.sroa.420.0..sroa_idx, align 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.ei, ptr %.sroa.521.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ef, i64 noundef %i.eg, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @39, ptr noalias nofree noundef nonnull align 8 %i.q, i64 noundef 1)
          to label %bb.ag unwind label %bb.af

bb.af:                                            ; preds = %bb.ah, %bb.ae
  %i.ej = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit unwind label %bb.an

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !3639)
  %i.ek = load i8, ptr %i.s, align 8, !range !7, !alias.scope !3639, !noundef !4
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.ah, label %bb.ai, !prof !15

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3640
  %i.em = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.en = load i8, ptr %i.em, align 1, !range !19, !alias.scope !3639, !noundef !4
  store i8 %i.en, ptr %i.c, align 1, !noalias !3640
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @84, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @565) #37
          to label %.noexc108 unwind label %bb.af

.noexc108:                                        ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit119 unwind label %bb.ad

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit119: ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r)
          to label %bb.al unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ak, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit
  %.pn92 = phi { ptr, i32 } [ %i.eo, %bb.ak ], [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #34
          to label %.body unwind label %bb.an

bb.ak:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit119
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.al:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr %i.w, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !3641
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store i64 %i.y, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !3641
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !3641
  %.sroa.8146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store ptr null, ptr %.sroa.8146.0..sroa_idx, align 8, !alias.scope !3641
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !3641
  invoke void @_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error6finish(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %.loopexit163

bb.an:                                            ; preds = %bb.bv, %bb.bi, %bb.bc, %bb.af, %bb.cc, %bb.bz, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit132, %bb.bm, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit126, %bb.aj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit, %.body
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.ao:                                            ; preds = %bb.az, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_3num7nonzero7NonZeromENtNtBM_5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit
  %.sroa.038.0 = phi ptr [ %i.ea, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_3num7nonzero7NonZeromENtNtBM_5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit ], [ %i.fw, %bb.az ] ; 6 uses
  %.not.i = icmp eq ptr %.sroa.038.0, null
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6filterNCNvNtNtB1h_8builtins4jobs4jobss_0EB1h_.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.038.0, ptr %i.b, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.038.0, i64 48
  %i.er = load i64, ptr %i.eq, align 8, !noundef !4 ; 2 uses
  %i.es = icmp eq i64 %i.er, 0
  br i1 %i.es, label %bb.as, label %.lr.ph461, !prof !15

.lr.ph461:                                        ; preds = %bb.ap
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.038.0, i64 40
  %i.eu = load ptr, ptr %i.et, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.idx468 = mul nuw nsw i64 %i.er, 224
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.idx468
  br label %bb.ar

bb.aq:                                            ; preds = %.noexc.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ey, i64 224 ; 2 uses
end_hunk_0
