Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal_core-ba0671c8f10fcf8e.opendal_core.455f99aaf940afe2-cgu.14?download=true
inline.NumInlined: 513
inline.NumDeleted: 231
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs4_NtNtCs5XgW7KoffLW_12opendal_core6layers19capability_overrideNtB5_19CapabilityOverrides9try_apply:bb.a
  unreachable

bb.p:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false)
  call void @_RINvXs2_NtNtCsdMEyVxnODSb_10serde_json5value2deNtB8_5ValueNtNtCskkYVyhWgx5W_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs5XgW7KoffLW_12opendal_core5types10capabilitys_1__NtB26_10CapabilityNtBW_11Deserialize11deserialize9___VisitorEB2a_(ptr noalias nofree noundef nonnull sret([184 x i8]) align 8 captures(address) dereferenceable(184) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 10, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @126, i64 noundef 90)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.an = load i64, ptr %i.p, align 8, !range !5, !noundef !6
  %i.ao = icmp eq i64 %i.an, 2
  br i1 %i.ao, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !6, !align !14, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.aq, ptr %i.c, align 8, !noalias !1555
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1555
  store ptr %i.c, ptr %i.a, align 8, !noalias !1555
  %.sroa.42.0..sroa_idx.i91 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs3_NtCsdMEyVxnODSb_10serde_json5errorNtB5_5ErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i91, align 8, !noalias !1555
  invoke void @_RNvNvNtCs6i54tJFfzR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @8, ptr noundef nonnull %i.a)
          to label %bb.s unwind label %bb.r, !noalias !1556

bb.r:                                             ; preds = %bb.q
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %.val8.i92 = load ptr, ptr %i.c, align 8, !noalias !1555, !nonnull !6, !noundef !6
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsdMEyVxnODSb_10serde_json5error5ErrorECs5XgW7KoffLW_12opendal_core(ptr nonnull %.val8.i92) #24
          to label %common.resume unwind label %bb.t, !noalias !1556

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1555
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx, i8 0, i64 16, i1 false)
  %.val7.i93 = load ptr, ptr %i.c, align 8, !noalias !1555, !nonnull !6, !noundef !6
  call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsdMEyVxnODSb_10serde_json5error5ErrorECs5XgW7KoffLW_12opendal_core(ptr nonnull %.val7.i93)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.497.0..sroa_idx, align 8
  %.sroa.598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.598.0..sroa_idx, align 8
  %.sroa.699.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %.sroa.699.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %.sroa.8100.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 89
  store i8 2, ptr %.sroa.11.0..sroa_idx, align 1
  store i64 2, ptr %0, align 8
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22, !noalias !1556
  unreachable

bb.u:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(184) %i.p, i64 184, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.w

bb.w:                                             ; preds = %_RNCNvMs4_NtNtCs5XgW7KoffLW_12opendal_core6layers19capability_overrideNtB7_19CapabilityOverrides9try_apply0Bb_.exit, %bb.x, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  ret void

bb.x:                                             ; preds = %bb.g
  %.sroa.018.0.copyload = load i64, ptr %i.m, align 8
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.620.0.copyload = load ptr, ptr %.sroa.620.0..sroa_idx, align 8
  %.sroa.823.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.547.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.823.0..sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.018.0.copyload, ptr %i.au, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.620.0.copyload, ptr %.sroa.446.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsdMEyVxnODSb_10serde_json5value5ValueECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.r)
  br label %bb.w

.body.thread:                                     ; preds = %bb.j, %.body.thread108
  %eh.lpad-body104 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread108 ], [ %i.ai, %bb.j ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsdMEyVxnODSb_10serde_json5value5ValueECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.r) #24
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %.body.thread
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core6layers19capability_overrideNtB4_23CapabilityOverrideLayer14from_overrides(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1628 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 9 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [88 x i8], align 8                ; 14 uses
  %i.s = alloca [88 x i8], align 8                ; 7 uses
  %i.t = alloca [88 x i8], align 8                ; 7 uses
  %i.u = alloca [88 x i8], align 8                ; 6 uses
  %i.v = alloca [88 x i8], align 8                ; 12 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [184 x i8], align 8               ; 10 uses
  %i.y = alloca [184 x i8], align 8               ; 14 uses
  %i.z = alloca [32 x i8], align 8                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %i.ab = alloca [32 x i8], align 8               ; 5 uses
  %i.ac = alloca [32 x i8], align 16              ; 8 uses
  %i.ad = alloca [24 x i8], align 8               ; 13 uses
  %i.ae = alloca [40 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1629
  store ptr null, ptr %i.ad, align 8, !noalias !1629
  %.sroa.555.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.555.0..sroa_idx.i, align 8, !noalias !1629
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.42.0..sroa_idx.i19.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.29.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 82
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %.sroa.1064.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %.sroa.459.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.5.0..sroa_idx60.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.661.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.862.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.sroa.963.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 81
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 22
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.42.0..sroa_idx.i2.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.9.0..sroa_idx25.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.18.0..sroa_idx29.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.28.0..sroa_idx45.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 82
  %.sroa.3.0..sroa_idx276.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.4277.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %.sroa.496.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.697.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.ax = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  br label %.split.i.i

.body.i:                                          ; preds = %.body255.thread299.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp318.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body.i.i, %.body.i.i.i
  %.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp331, %.loopexit.split-lp318.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn.i.i.i, %.body.i.i.i ], [ %.pn.i251.i, %.body.i.i ], [ %lpad.loopexit.split-lp, %.body255.thread299.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXNtNtNtCs6i54tJFfzR_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %common.resume unwind label %bb.bg, !noalias !1630

.split.i.i:                                       ; preds = %.split.i.i.backedge, %bb.a
  %3 = phi i8 [ 0, %bb.a ], [ %6, %.split.i.i.backedge ]
  %.lcssa322394.i = phi i64 [ 0, %bb.a ], [ %.lcssa322393.i, %.split.i.i.backedge ] ; 3 uses
  %.lcssa383387.i = phi i64 [ 0, %bb.a ], [ %.lcssa383385.i, %.split.i.i.backedge ]
  %i.az = phi i64 [ 0, %bb.a ], [ %.be, %.split.i.i.backedge ] ; 3 uses
  %.lcssa1519.i.i = phi i64 [ 0, %bb.a ], [ %.lcssa1519.i.i.be, %.split.i.i.backedge ] ; 5 uses
  %4 = phi i8 [ 0, %bb.a ], [ %.be334, %.split.i.i.backedge ]
  %5 = trunc nuw i8 %4 to i1
  br i1 %5, label %_RNvMs4_NtNtCs5XgW7KoffLW_12opendal_core6layers19capability_overrideNtB5_19CapabilityOverrides5parse.exit.thread, label %bb.b

bb.b:                                             ; preds = %.split.i.i
  %i.ba = icmp ult i64 %2, %i.az
  br i1 %i.ba, label %select.unfold.i.i, label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.i.i.i.i.i:                           ; preds = %bb.b, %bb.f
  %i.bb = phi i64 [ %i.bq, %bb.f ], [ %i.az, %bb.b ] ; 4 uses
  %i.bc = sub nuw i64 %2, %i.bb                   ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 %i.bb ; 2 uses
  %i.be = icmp samesign ult i64 %i.bc, 16
  br i1 %i.be, label %.preheader.i.i.i.i.i.i, label %bb.c

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph.split.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.split.i.i.i.i.i
  %i.bf = invoke { i64, i64 } @_RNvNtNtCsgxBkk5gSRhY_4core5slice6memchr14memchr_aligned(i8 noundef 44, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bd, i64 noundef range(i64 0, -9223372036854775808) %i.bc)
          to label %_RNvNtNtCsgxBkk5gSRhY_4core5slice6memchr6memchr.exit.i.i.i.i.i unwind label %.body255.thread299.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1630

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i ], [ %.sroa.01.05.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.bc, %bb.d ]
  %.sroa.0.1.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.d ]
  %i.bg = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i.i, 0
  %i.bh = insertvalue { i64, i64 } %i.bg, i64 %.sroa.01.0.lcssa.i.i.i.i.i.i, 1
  br label %_RNvNtNtCsgxBkk5gSRhY_4core5slice6memchr6memchr.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.d
  %.sroa.01.05.i.i.i.i.i.i = phi i64 [ %i.bl, %bb.d ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.sroa.01.05.i.i.i.i.i.i
  %i.bj = load i8, ptr %i.bi, align 1, !alias.scope !1631, !noalias !1632, !noundef !6
  %i.bk = icmp eq i8 %i.bj, 44
  br i1 %i.bk, label %._crit_edge.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bl = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.bl, %i.bc
  br i1 %exitcond.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvNtNtCsgxBkk5gSRhY_4core5slice6memchr6memchr.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.c
  %.merged.i.i.i.i.i.i = phi { i64, i64 } [ %i.bh, %._crit_edge.i.i.i.i.i.i ], [ %i.bf, %bb.c ] ; 2 uses
  %i.bm = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i, 0
  %i.bn = trunc nuw i64 %i.bm to i1
  br i1 %i.bn, label %bb.e, label %select.unfold.i.i

bb.e:                                             ; preds = %_RNvNtNtCsgxBkk5gSRhY_4core5slice6memchr6memchr.exit.i.i.i.i.i
  %i.bo = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i, 1 ; 2 uses
  %i.bp = add i64 %i.bb, 1
  %i.bq = add i64 %i.bp, %i.bo                    ; 8 uses
  %.not12.i.i.i.i.i = icmp ugt i64 %i.bq, %2
  %i.br = add i64 %i.bo, %i.bb                    ; 3 uses
  %or.cond.i.i.i.i.i.not = icmp ult i64 %i.br, %2
  br i1 %or.cond.i.i.i.i.i.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  br i1 %.not12.i.i.i.i.i, label %select.unfold.i.i, label %.lr.ph.split.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 %i.br
  %lhsc = load i8, ptr %i.bs, align 1
  %i.bt = icmp eq i8 %lhsc, 44
  br i1 %i.bt, label %select.unfold.i.i, label %bb.f

select.unfold.i.i:                                ; preds = %bb.g, %_RNvNtNtCsgxBkk5gSRhY_4core5slice6memchr6memchr.exit.i.i.i.i.i, %bb.f, %bb.b
  %6 = phi i8 [ 1, %bb.b ], [ 1, %bb.f ], [ 1, %_RNvNtNtCsgxBkk5gSRhY_4core5slice6memchr6memchr.exit.i.i.i.i.i ], [ %3, %bb.g ] ; 2 uses
  %.lcssa322393.i = phi i64 [ %.lcssa322394.i, %bb.b ], [ %.lcssa322394.i, %bb.f ], [ %.lcssa322394.i, %_RNvNtNtCsgxBkk5gSRhY_4core5slice6memchr6memchr.exit.i.i.i.i.i ], [ %i.bq, %bb.g ] ; 2 uses
  %.lcssa383385.i = phi i64 [ %.lcssa383387.i, %bb.b ], [ %i.bq, %bb.f ], [ %2, %_RNvNtNtCsgxBkk5gSRhY_4core5slice6memchr6memchr.exit.i.i.i.i.i ], [ %i.bq, %bb.g ] ; 2 uses
  %i.bu = phi i64 [ %i.az, %bb.b ], [ %i.bq, %bb.f ], [ %2, %_RNvNtNtCsgxBkk5gSRhY_4core5slice6memchr6memchr.exit.i.i.i.i.i ], [ %i.bq, %bb.g ]
  %.lcssa1518.i.i = phi i64 [ %.lcssa1519.i.i, %bb.b ], [ %.lcssa1519.i.i, %bb.f ], [ %.lcssa1519.i.i, %_RNvNtNtCsgxBkk5gSRhY_4core5slice6memchr6memchr.exit.i.i.i.i.i ], [ %i.bq, %bb.g ]
  %7 = phi i8 [ 1, %bb.b ], [ 1, %bb.f ], [ 1, %_RNvNtNtCsgxBkk5gSRhY_4core5slice6memchr6memchr.exit.i.i.i.i.i ], [ 0, %bb.g ]
  %.pn.i.i = phi i64 [ %2, %bb.b ], [ %2, %bb.f ], [ %2, %_RNvNtNtCsgxBkk5gSRhY_4core5slice6memchr6memchr.exit.i.i.i.i.i ], [ %i.br, %bb.g ]
  %.sroa.4.1.i.i.i.i = sub nuw i64 %.pn.i.i, %.lcssa1519.i.i
  %.sroa.0.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.lcssa1519.i.i
  %i.bv = invoke { ptr, i64 } @_RINvMNtCsgxBkk5gSRhY_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i, i64 noundef %.sroa.4.1.i.i.i.i)
          to label %.noexc240.i unwind label %.body255.thread299.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1630 ; 2 uses

.noexc240.i:                                      ; preds = %select.unfold.i.i
  %i.bw = extractvalue { ptr, i64 } %i.bv, 0      ; 8 uses
  %i.bx = extractvalue { ptr, i64 } %i.bv, 1      ; 8 uses
  %.not.i.i.i.i = icmp eq i64 %i.bx, 0
  %.not.i14.i.i = icmp eq ptr %i.bw, null
  %.not.i.i.i = select i1 %.not.i.i.i.i, i1 true, i1 %.not.i14.i.i
  br i1 %.not.i.i.i, label %.split.i.i.backedge, label %bb.h

.split.i.i.backedge:                              ; preds = %.noexc240.i, %bb.be
  %.be = phi i64 [ %i.bu, %.noexc240.i ], [ %.lcssa383385.i, %bb.be ]
  %.lcssa1519.i.i.be = phi i64 [ %.lcssa1518.i.i, %.noexc240.i ], [ %.lcssa322393.i, %bb.be ]
  %.be334 = phi i8 [ %7, %.noexc240.i ], [ %6, %bb.be ]
  br label %.split.i.i

bb.h:                                             ; preds = %.noexc240.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1633)
  br label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %bb.l, %bb.h
  %i.by = phi i64 [ %i.cn, %bb.l ], [ 0, %bb.h ]  ; 4 uses
  %i.bz = sub nuw i64 %i.bx, %i.by                ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.by ; 2 uses
  %i.cb = icmp samesign ult i64 %i.bz, 16
  br i1 %i.cb, label %.preheader.i.i.i.i.i, label %bb.i

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph.split.i.i.i.i
  %.not.i.i.i.i242.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i.i.i.i242.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.split.i.i.i.i
  %i.cc = invoke { i64, i64 } @_RNvNtNtCsgxBkk5gSRhY_4core5slice6memchr14memchr_aligned(i8 noundef 61, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ca, i64 noundef range(i64 0, -9223372036854775808) %i.bz)
          to label %_RNvNtNtCsgxBkk5gSRhY_4core5slice6memchr6memchr.exit.i.i.i.i unwind label %.body255.thread299.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1630

._crit_edge.i.i.i.i.i:                            ; preds = %bb.j, %.lr.ph.i.i.i.i.i, %.preheader.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i ], [ %i.bz, %bb.j ], [ %.sroa.01.05.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i ], [ 0, %bb.j ], [ 1, %.lr.ph.i.i.i.i.i ]
  %i.cd = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i, 0
  %i.ce = insertvalue { i64, i64 } %i.cd, i64 %.sroa.01.0.lcssa.i.i.i.i.i, 1
  br label %_RNvNtNtCsgxBkk5gSRhY_4core5slice6memchr6memchr.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %bb.j
  %.sroa.01.05.i.i.i.i.i = phi i64 [ %i.ci, %bb.j ], [ 0, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.sroa.01.05.i.i.i.i.i
  %i.cg = load i8, ptr %i.cf, align 1, !alias.scope !1634, !noalias !1635, !noundef !6
  %i.ch = icmp eq i8 %i.cg, 61
  br i1 %i.ch, label %._crit_edge.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ci = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.ci, %i.bz
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvNtNtCsgxBkk5gSRhY_4core5slice6memchr6memchr.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i, %bb.i
  %.merged.i.i.i.i.i = phi { i64, i64 } [ %i.ce, %._crit_edge.i.i.i.i.i ], [ %i.cc, %bb.i ] ; 2 uses
  %i.cj = extractvalue { i64, i64 } %.merged.i.i.i.i.i, 0
  %i.ck = trunc nuw i64 %i.cj to i1
  br i1 %i.ck, label %bb.k, label %bb.ac

bb.k:                                             ; preds = %_RNvNtNtCsgxBkk5gSRhY_4core5slice6memchr6memchr.exit.i.i.i.i
  %i.cl = extractvalue { i64, i64 } %.merged.i.i.i.i.i, 1 ; 2 uses
  %i.cm = add i64 %i.by, 1
  %i.cn = add i64 %i.cm, %i.cl                    ; 4 uses
  %.not12.i.i.i.i = icmp ugt i64 %i.cn, %i.bx
  %i.co = add i64 %i.cl, %i.by                    ; 3 uses
  %or.cond.i.not.i.i.i = icmp ult i64 %i.co, %i.bx
  br i1 %or.cond.i.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  br i1 %.not12.i.i.i.i, label %bb.ac, label %.lr.ph.split.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.co
  %lhsc.i.i.i = load i8, ptr %i.cp, align 1, !alias.scope !1636, !noalias !1630
  %i.cq = icmp eq i8 %lhsc.i.i.i, 61
  br i1 %i.cq, label %bb.n, label %bb.l

bb.n:                                             ; preds = %bb.m
  %i.cr = invoke { ptr, i64 } @_RINvMNtCsgxBkk5gSRhY_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bw, i64 noundef %i.co)
          to label %.noexc244.i unwind label %.body255.thread299.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1630 ; 2 uses

.noexc244.i:                                      ; preds = %bb.n
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cn
  %i.ct = sub nuw i64 %i.bx, %i.cn
  %i.cu = extractvalue { ptr, i64 } %i.cr, 0      ; 12 uses
  %i.cv = extractvalue { ptr, i64 } %i.cr, 1      ; 12 uses
  %i.cw = invoke { ptr, i64 } @_RINvMNtCsgxBkk5gSRhY_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cs, i64 noundef %i.ct)
          to label %.noexc245.i unwind label %.body255.thread299.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1630 ; 2 uses

.noexc245.i:                                      ; preds = %.noexc244.i
  %i.cx = extractvalue { ptr, i64 } %i.cw, 0      ; 16 uses
  %i.cy = extractvalue { ptr, i64 } %i.cw, 1      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1637)
  switch i64 %i.cy, label %thread-pre-split.i.i.i.i [
    i64 4, label %bb.o
    i64 2, label %bb.p
    i64 3, label %bb.q
    i64 5, label %bb.r
    i64 0, label %.loopexit.i.i.i
    i64 1, label %bb.x
  ]

bb.o:                                             ; preds = %.noexc245.i
  %i.cz = load i32, ptr %i.cx, align 1
  %i.da = icmp ne i32 %i.cz, 1702195828
  %i.db = zext i1 %i.da to i32
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %.thread281.i, label %bb.u

bb.p:                                             ; preds = %.noexc245.i
  %i.dd = load i16, ptr %i.cx, align 1
  %i.de = icmp ne i16 %i.dd, 28271
  %i.df = zext i1 %i.de to i32
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %.thread281.i, label %bb.t

bb.q:                                             ; preds = %.noexc245.i
  %i.dh = load i16, ptr %i.cx, align 1
  %i.di = xor i16 %i.dh, 25977
  %i.dj = getelementptr i8, ptr %i.cx, i64 2
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = zext i8 %i.dk to i16
  %i.dm = xor i16 %i.dl, 115
  %i.dn = or i16 %i.di, %i.dm
  %i.do = icmp ne i16 %i.dn, 0
  %i.dp = zext i1 %i.do to i32
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %.thread281.i, label %bb.s

bb.r:                                             ; preds = %.noexc245.i
  %i.dr = load i32, ptr %i.cx, align 1
  %i.ds = xor i32 %i.dr, 1936482662
  %i.dt = getelementptr i8, ptr %i.cx, i64 4
  %i.du = load i8, ptr %i.dt, align 1
  %i.dv = zext i8 %i.du to i32
  %i.dw = xor i32 %i.dv, 101
  %i.dx = or i32 %i.ds, %i.dw
  %i.dy = icmp ne i32 %i.dx, 0
  %i.dz = zext i1 %i.dy to i32
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %.thread281.i, label %bb.w

bb.s:                                             ; preds = %bb.q
  %i.eb = load i16, ptr %i.cx, align 1
  %i.ec = xor i16 %i.eb, 26223
  %i.ed = getelementptr i8, ptr %i.cx, i64 2
  %i.ee = load i8, ptr %i.ed, align 1
  %i.ef = zext i8 %i.ee to i16
  %i.eg = xor i16 %i.ef, 102
  %i.eh = or i16 %i.ec, %i.eg
  %i.ei = icmp ne i16 %i.eh, 0
  %i.ej = zext i1 %i.ei to i32
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %.thread281.i, label %thread-pre-split.i.i.i.i

bb.t:                                             ; preds = %bb.p
  %i.el = load i16, ptr %i.cx, align 1
  %i.em = icmp ne i16 %i.el, 28526
  %i.en = zext i1 %i.em to i32
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %.thread281.i, label %thread-pre-split.i.i.i.i

bb.u:                                             ; preds = %bb.o
  %i.ep = load i32, ptr %i.cx, align 1
  %i.eq = icmp ne i32 %i.ep, 1701736302
  %i.er = zext i1 %i.eq to i32
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %.thread281.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.et = load i32, ptr %i.cx, align 1
  %i.eu = icmp ne i32 %i.et, 1819047278
  %i.ev = zext i1 %i.eu to i32
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %.thread281.i, label %thread-pre-split.i.i.i.i

bb.w:                                             ; preds = %bb.r
  %i.ex = load i32, ptr %i.cx, align 1
  %i.ey = xor i32 %i.ex, 1702063733
  %i.ez = getelementptr i8, ptr %i.cx, i64 4
  %i.fa = load i8, ptr %i.ez, align 1
  %i.fb = zext i8 %i.fa to i32
  %i.fc = xor i32 %i.fb, 116
  %i.fd = or i32 %i.ey, %i.fc
  %i.fe = icmp ne i32 %i.fd, 0
  %i.ff = zext i1 %i.fe to i32
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %.thread281.i, label %thread-pre-split.i.i.i.i

bb.x:                                             ; preds = %.noexc245.i
  %i.fh = load i8, ptr %i.cx, align 1, !alias.scope !1638, !noalias !1639, !noundef !6 ; 2 uses
  switch i8 %i.fh, label %bb.y [
    i8 43, label %.loopexit.i.i.i
    i8 45, label %.loopexit.i.i.i
  ]

thread-pre-split.i.i.i.i:                         ; preds = %bb.w, %bb.v, %bb.t, %bb.s, %.noexc245.i
  %.pr.i.i.i.i = load i8, ptr %i.cx, align 1, !alias.scope !1638, !noalias !1639
  br label %bb.y

bb.y:                                             ; preds = %thread-pre-split.i.i.i.i, %bb.x
  %i.fi = phi i8 [ %.pr.i.i.i.i, %thread-pre-split.i.i.i.i ], [ %i.fh, %bb.x ]
  %cond.i.i.i.i = icmp eq i8 %i.fi, 43            ; 2 uses
  %i.fj = sext i1 %cond.i.i.i.i to i64
  %.sroa.15.0.i.i.i.i = add nsw i64 %i.cy, %i.fj  ; 4 uses
  %.sroa.0.0.idx.i.i.i.i = zext i1 %cond.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.sroa.0.0.idx.i.i.i.i ; 2 uses
  %i.fk = icmp samesign ult i64 %.sroa.15.0.i.i.i.i, 17
  br i1 %i.fk, label %.preheader.i.i.i.i, label %.preheader56.i.i.i.i.preheader

.preheader.i.i.i.i:                               ; preds = %bb.y
  %.not5366.i.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i.i, 0
  br i1 %.not5366.i.i.i.i, label %.thread281.i, label %.lr.ph.i.i.i.i
end_hunk_0
