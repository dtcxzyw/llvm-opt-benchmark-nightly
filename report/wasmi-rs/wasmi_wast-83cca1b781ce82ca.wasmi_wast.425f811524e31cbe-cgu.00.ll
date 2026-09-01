Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi_wast-83cca1b781ce82ca.wasmi_wast.425f811524e31cbe-cgu.00?download=true
inline.NumInlined: 472
inline.NumDeleted: 277
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvCs5HiJSMzJl2A_10wasmi_wast18f64_matches_or_err:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMCs5HiJSMzJl2A_10wasmi_wastNtB2_10WastRunner10get_export(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 16)) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1888) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [12 x i8], align 4                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  store ptr %3, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %4, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = load ptr, ptr %2, align 8, !noundef !4   ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1688
  %i.k = tail call noundef align 8 ptr @_RINvMs7_NtCsefoF4u9kbII_5wasmi6linkerINtB6_6LinkeruE14get_definitionRINtNtB8_5store5StoreuEECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1688) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) ; 3 uses
  %.not18 = icmp eq ptr %i.k, null
  br i1 %.not18, label %bb.g, label %bb.i, !prof !388

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1872
  %i.m = load i32, ptr %i.l, align 8, !range !389, !noundef !4
  %i.n = trunc nuw i32 %i.m to i1
  br i1 %i.n, label %bb.d, label %bb.e, !prof !386

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1876
  %i.p = load <2 x i32>, ptr %i.o, align 4
  store <2 x i32> %i.p, ptr %i.b, align 8
  call void @_RINvMNtCsefoF4u9kbII_5wasmi8instanceNtB3_8Instance10get_exportRINtNtB5_5store5StoreuEECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1688) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.q = load i32, ptr %i.d, align 4, !range !390, !noundef !4
  %.not17 = icmp eq i32 %i.q, -1
  br i1 %.not17, label %bb.g, label %bb.f, !prof !388

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %2, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCs8VXqOAwmH9S_4wast5token2IdENtNtB7_3fmt5Debug3fmtCs5HiJSMzJl2A_10wasmi_wast, ptr %.sroa.44.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.e, ptr %i.r, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs5HiJSMzJl2A_10wasmi_wast, ptr %.sroa.48.0..sroa_idx, align 8
  %i.s = call fastcc noundef nonnull ptr @_RNvNtCscK5W4trzgIe_6anyhow9___private10format_err(ptr noundef nonnull @14, ptr noundef nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.h

bb.f:                                             ; preds = %bb.j, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.t, ptr noundef nonnull align 4 dereferenceable(12) %i.d, i64 12, i1 false)
  br label %bb.k

bb.g:                                             ; preds = %bb.b, %bb.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCs8VXqOAwmH9S_4wast5token2IdENtNtB7_3fmt5Debug3fmtCs5HiJSMzJl2A_10wasmi_wast, ptr %.sroa.412.0..sroa_idx, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.u, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs5HiJSMzJl2A_10wasmi_wast, ptr %.sroa.416.0..sroa_idx, align 8
  %i.v = call fastcc noundef nonnull ptr @_RNvNtCscK5W4trzgIe_6anyhow9___private10format_err(ptr noundef nonnull @15, ptr noundef nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.sink = phi ptr [ %i.v, %bb.g ], [ %i.s, %bb.e ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.w, align 8
  br label %bb.k

bb.i:                                             ; preds = %bb.b
  %i.x = load i8, ptr %i.k, align 8, !range !391, !noundef !4
  %.not19 = icmp eq i8 %i.x, 2
  br i1 %.not19, label %bb.j, label %bb.g, !prof !386

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %i.y, i64 12, i1 false)
  br label %bb.f

bb.k:                                             ; preds = %bb.h, %bb.f
  %storemerge = phi i32 [ 0, %bb.f ], [ 1, %bb.h ]
  store i32 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMCs5HiJSMzJl2A_10wasmi_wastNtB2_10WastRunner11assert_trap(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 12 uses
  %i.c = alloca [104 x i8], align 8               ; 24 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 13 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  store ptr %0, ptr %i.k, align 8
  store ptr %1, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store i64 %2, ptr %i.l, align 8
  %i.m = invoke noundef align 8 ptr @_RINvMNtCscK5W4trzgIe_6anyhow5errorNtB5_5Error12downcast_refNtNtCsefoF4u9kbII_5wasmi5error5ErrorECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k)
          to label %bb.c unwind label %bb.b       ; 3 uses

.body:                                            ; preds = %bb.bo, %bb.bm, %bb.e, %bb.b, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %i.lz, %bb.bm ], [ %i.r, %bb.e ], [ %i.n, %bb.b ], [ %i.mb, %bb.bo ]
  invoke void @_RNvXs4_NtCscK5W4trzgIe_6anyhow5errorNtB7_5ErrorNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCscK5W4trzgIe_6anyhow5ErrorECs5HiJSMzJl2A_10wasmi_wast.exit unwind label %bb.bs

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs5HiJSMzJl2A_10wasmi_wast.exit.i36, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs5HiJSMzJl2A_10wasmi_wast.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5HiJSMzJl2A_10wasmi_wast.exit, %bb.i, %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.i, label %bb.d, !prof !388

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.m, ptr %i.h, align 8, !captures !392
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !393
  store i64 0, ptr %i.e, align 8, !noalias !393
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !393
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !393
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !393
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 1610612768, ptr %i.o, align 8, !noalias !393
  store ptr %i.e, ptr %i.d, align 8, !noalias !393
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @75, ptr %i.p, align 8, !noalias !393
  %i.q = invoke noundef zeroext i1 @_RNvXs0_NtCsefoF4u9kbII_5wasmi5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.f unwind label %bb.e, !noalias !397

bb.e:                                             ; preds = %bb.g, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #22
          to label %.body unwind label %bb.h, !noalias !397

bb.f:                                             ; preds = %bb.d
  br i1 %i.q, label %bb.g, label %bb.j, !prof !388

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @76, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @68, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #25
          to label %.noexc.i unwind label %bb.e, !noalias !397

.noexc.i:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !397
  unreachable

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.k, ptr %i.i, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs2_NtCscK5W4trzgIe_6anyhow5errorNtB7_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.j, ptr %i.t, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs5HiJSMzJl2A_10wasmi_wast, ptr %.sroa.45.0..sroa_idx, align 8
  %i.u = invoke fastcc noundef nonnull ptr @_RNvNtCscK5W4trzgIe_6anyhow9___private10format_err(ptr noundef nonnull @18, ptr noundef nonnull %i.i)
          to label %bb.bt unwind label %bb.b

bb.j:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !393
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !4, !noundef !4 ; 10 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noundef !4 ; 17 uses
  %i.z = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4 ; 9 uses
  %i.aa = load i64, ptr %i.l, align 8, !noundef !4 ; 18 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !399)
  call void @llvm.experimental.noalias.scope.decl(metadata !402)
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = icmp ult i64 %i.aa, %i.y
  br i1 %i.ac, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ad = icmp eq i64 %i.aa, 1
  br i1 %i.ad, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ae = icmp eq i64 %i.aa, %i.y
  br i1 %i.ae, label %bb.bk, label %.thread3

bb.n:                                             ; preds = %bb.l
  %i.af = icmp ult i64 %i.aa, 33
  br i1 %i.af, label %bb.av, label %_RNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_contains.exit.i

bb.o:                                             ; preds = %bb.l
  %.val.i = load i8, ptr %i.z, align 1, !alias.scope !399, !noalias !402, !noundef !4 ; 2 uses
  %i.ag = icmp samesign ult i64 %i.y, 16
  br i1 %i.ag, label %.lr.ph.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = invoke { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef range(i64 0, -9223372036854775808) %i.y)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %bb.p
  %i.ai = extractvalue { i64, i64 } %i.ah, 0
  %i.aj = extractvalue { i64, i64 } %i.ah, 1
  %i.ak = trunc nuw i64 %i.ai to i1
  br i1 %i.ak, label %.loopexit9.i.i.i, label %.thread3

.loopexit9.i.i.i:                                 ; preds = %.lr.ph.i.i.i, %.noexc
  %.sroa.5.0.i.i.i = phi i64 [ %i.aj, %.noexc ], [ %.sroa.04.011.i.i.i, %.lr.ph.i.i.i ]
  %i.al = icmp ult i64 %.sroa.5.0.i.i.i, %i.y
  call void @llvm.assume(i1 %i.al)
  br label %.thread

.lr.ph.i.i.i:                                     ; preds = %bb.o, %bb.q
  %.sroa.04.011.i.i.i = phi i64 [ %i.ap, %bb.q ], [ 0, %bb.o ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.04.011.i.i.i
  %i.an = load i8, ptr %i.am, align 1, !alias.scope !404, !noalias !399, !noundef !4
  %i.ao = icmp eq i8 %i.an, %.val.i
  br i1 %i.ao, label %.loopexit9.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.ap = add nuw nsw i64 %.sroa.04.011.i.i.i, 1  ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ap, %i.y
  br i1 %exitcond.not.i.i.i, label %.thread3, label %.lr.ph.i.i.i

_RNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_contains.exit.i: ; preds = %bb.ax, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !409
  invoke void @_RNvMsu_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef %i.aa)
          to label %.noexc20 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc20:                                         ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_contains.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !410)
  %i.aq = load i64, ptr %i.c, align 8, !range !81, !alias.scope !410, !noalias !413, !noundef !4
  switch i64 %i.aq, label %default.unreachable [
    i64 0, label %.preheader.i.i
    i64 1, label %bb.ae
    i64 2, label %bb.af
  ]

.preheader.i.i:                                   ; preds = %.noexc20
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 26
  %i.as = load i8, ptr %i.ar, align 2, !range !176, !alias.scope !410, !noalias !413
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !410, !noalias !413, !nonnull !4 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !410, !noalias !413 ; 14 uses
  br i1 %i.at, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.promoted205.i.i = load i8, ptr %i.ay, align 8, !alias.scope !410, !noalias !413 ; 2 uses
  %.promoted156.i.i = load i64, ptr %i.az, align 8, !alias.scope !410, !noalias !413 ; 12 uses
  %i.ba = trunc nuw i8 %.promoted205.i.i to i1
  %i.bb = icmp eq i64 %.promoted156.i.i, 0
  br i1 %i.bb, label %bb.t, label %bb.r

bb.r:                                             ; preds = %.lr.ph.preheader.i.i
  %.not.i.i.us.i.peel.i = icmp ult i64 %.promoted156.i.i, %i.ax
  br i1 %.not.i.i.us.i.peel.i, label %bb.s, label %.split.i.i.us.i.peel.i

.split.i.i.us.i.peel.i:                           ; preds = %bb.r
  %i.bc = icmp eq i64 %.promoted156.i.i, %i.ax
  br i1 %i.bc, label %bb.t, label %.split.us160.i.i

bb.s:                                             ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 %.promoted156.i.i
  %i.be = load i8, ptr %i.bd, align 1, !alias.scope !415, !noalias !418, !noundef !4
  %i.bf = icmp sgt i8 %i.be, -65
  br i1 %i.bf, label %bb.t, label %.split.us160.i.i

bb.t:                                             ; preds = %bb.s, %.split.i.i.us.i.peel.i, %.lr.ph.preheader.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 %.promoted156.i.i ; 4 uses
  %i.bh = icmp samesign eq i64 %.promoted156.i.i, %i.ax
  br i1 %i.bh, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bi = load i8, ptr %i.bg, align 1, !noalias !422, !noundef !4 ; 5 uses
  %i.bj = icmp sgt i8 %i.bi, -1
  br i1 %i.bj, label %bb.v, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5HiJSMzJl2A_10wasmi_wast.exit12.i.i.us.i.peel.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5HiJSMzJl2A_10wasmi_wast.exit12.i.i.us.i.peel.i: ; preds = %bb.u
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.bl = and i8 %i.bi, 31
  %i.bm = zext nneg i8 %i.bl to i32               ; 3 uses
  %i.bn = add nuw nsw i64 %.promoted156.i.i, 1
  %i.bo = icmp samesign ne i64 %i.bn, %i.ax
  call void @llvm.assume(i1 %i.bo)
  %i.bp = load i8, ptr %i.bk, align 1, !noalias !422, !noundef !4
  %i.bq = shl nuw nsw i32 %i.bm, 6
  %i.br = and i8 %i.bp, 63
  %i.bs = zext nneg i8 %i.br to i32               ; 2 uses
  %i.bt = or disjoint i32 %i.bq, %i.bs
  %i.bu = icmp samesign ugt i8 %i.bi, -33
  br i1 %i.bu, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5HiJSMzJl2A_10wasmi_wast.exit14.i.i.us.i.peel.i, label %bb.w

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5HiJSMzJl2A_10wasmi_wast.exit14.i.i.us.i.peel.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5HiJSMzJl2A_10wasmi_wast.exit12.i.i.us.i.peel.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.bw = add nuw nsw i64 %.promoted156.i.i, 2
  %i.bx = icmp samesign ne i64 %i.bw, %i.ax
  call void @llvm.assume(i1 %i.bx)
  %i.by = load i8, ptr %i.bv, align 1, !noalias !422, !noundef !4
  %i.bz = shl nuw nsw i32 %i.bs, 6
  %i.ca = and i8 %i.by, 63
  %i.cb = zext nneg i8 %i.ca to i32
  %i.cc = or disjoint i32 %i.bz, %i.cb            ; 2 uses
  %i.cd = shl nuw nsw i32 %i.bm, 12
  %i.ce = or disjoint i32 %i.cc, %i.cd
  %i.cf = icmp samesign ugt i8 %i.bi, -17
  br i1 %i.cf, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5HiJSMzJl2A_10wasmi_wast.exit16.i.i.us.i.peel.i, label %bb.w

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5HiJSMzJl2A_10wasmi_wast.exit16.i.i.us.i.peel.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5HiJSMzJl2A_10wasmi_wast.exit14.i.i.us.i.peel.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bg, i64 3
  %i.ch = add nuw nsw i64 %.promoted156.i.i, 3
  %i.ci = icmp samesign ne i64 %i.ch, %i.ax
  call void @llvm.assume(i1 %i.ci)
  %i.cj = load i8, ptr %i.cg, align 1, !noalias !422, !noundef !4
  %i.ck = shl nuw nsw i32 %i.bm, 18
  %i.cl = and i32 %i.ck, 1835008
  %i.cm = shl nuw nsw i32 %i.cc, 6
  %i.cn = and i8 %i.cj, 63
  %i.co = zext nneg i8 %i.cn to i32
  %i.cp = or disjoint i32 %i.cm, %i.co
  %i.cq = or disjoint i32 %i.cp, %i.cl
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cr = zext nneg i8 %i.bi to i32
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5HiJSMzJl2A_10wasmi_wast.exit16.i.i.us.i.peel.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5HiJSMzJl2A_10wasmi_wast.exit14.i.i.us.i.peel.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5HiJSMzJl2A_10wasmi_wast.exit12.i.i.us.i.peel.i
  %.sroa.4.0.i.ph.i.us.i.peel.i = phi i32 [ %i.ce, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5HiJSMzJl2A_10wasmi_wast.exit14.i.i.us.i.peel.i ], [ %i.cq, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5HiJSMzJl2A_10wasmi_wast.exit16.i.i.us.i.peel.i ], [ %i.bt, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5HiJSMzJl2A_10wasmi_wast.exit12.i.i.us.i.peel.i ], [ %i.cr, %bb.v ] ; 4 uses
  %i.cs = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i, 1114112
  call void @llvm.assume(i1 %i.cs)
  br i1 %i.ba, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ct = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i, 128
  br i1 %i.ct, label %.lr.ph.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cu = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i, 2048
  br i1 %i.cu, label %.lr.ph.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cv = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i, 65536
  %..i.us.i.peel.i = select i1 %i.cv, i64 3, i64 4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.z, %bb.y, %bb.x
  %.sroa.01.0.i.us.i.peel.i = phi i64 [ 2, %bb.y ], [ %..i.us.i.peel.i, %bb.z ], [ 1, %bb.x ]
  %i.cw = add i64 %.sroa.01.0.i.us.i.peel.i, %.promoted156.i.i ; 11 uses
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i
  %.not.i.i.us.i.i = icmp ult i64 %i.cw, %i.ax
  br i1 %.not.i.i.us.i.i, label %bb.ab, label %.split.i.i.us.i.i

.split.i.i.us.i.i:                                ; preds = %bb.aa
  %i.cy = icmp eq i64 %i.cw, %i.ax
  br i1 %i.cy, label %bb.ac, label %.split.us160.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.cz = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.cw
  %i.da = load i8, ptr %i.cz, align 1, !alias.scope !415, !noalias !425, !noundef !4
  %i.db = icmp sgt i8 %i.da, -65
  br i1 %i.db, label %bb.ac, label %.split.us160.i.i

bb.ac:                                            ; preds = %bb.ab, %.split.i.i.us.i.i, %.lr.ph.i.i
  %i.dc = icmp samesign eq i64 %i.cw, %i.ax
  br i1 %i.dc, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dd = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.cw
  %i.de = load i8, ptr %i.dd, align 1, !noalias !427, !noundef !4 ; 3 uses
  %i.df = icmp sgt i8 %i.de, -1
  br i1 %i.df, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5HiJSMzJl2A_10wasmi_wast.exit12.i.i.us.i.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5HiJSMzJl2A_10wasmi_wast.exit12.i.i.us.i.i: ; preds = %bb.ad
  %i.dg = add nuw nsw i64 %i.cw, 1
  %i.dh = icmp samesign ne i64 %i.dg, %i.ax
  call void @llvm.assume(i1 %i.dh)
  %i.di = icmp samesign ugt i8 %i.de, -33
  br i1 %i.di, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5HiJSMzJl2A_10wasmi_wast.exit14.i.i.us.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5HiJSMzJl2A_10wasmi_wast.exit14.i.i.us.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5HiJSMzJl2A_10wasmi_wast.exit12.i.i.us.i.i
  %i.dj = add nuw nsw i64 %i.cw, 2
  %i.dk = icmp samesign ne i64 %i.dj, %i.ax
  call void @llvm.assume(i1 %i.dk)
  %i.dl = icmp samesign ugt i8 %i.de, -17
  br i1 %i.dl, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5HiJSMzJl2A_10wasmi_wast.exit16.i.i.us.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5HiJSMzJl2A_10wasmi_wast.exit16.i.i.us.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5HiJSMzJl2A_10wasmi_wast.exit14.i.i.us.i.i
  %i.dm = add nuw nsw i64 %i.cw, 3
  %i.dn = icmp samesign ne i64 %i.dm, %i.ax
  call void @llvm.assume(i1 %i.dn)
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i

.split.us160.i.i:                                 ; preds = %bb.ab, %.split.i.i.us.i.i, %bb.s, %.split.i.i.us.i.peel.i
  %.lcssa61.i = phi i64 [ %.promoted156.i.i, %.split.i.i.us.i.peel.i ], [ %.promoted156.i.i, %bb.s ], [ %i.cw, %.split.i.i.us.i.i ], [ %i.cw, %bb.ab ]
  invoke void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.av, i64 noundef %i.ax, i64 noundef %.lcssa61.i, i64 noundef %i.ax, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #25
          to label %.noexc21 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc21:                                         ; preds = %.split.us160.i.i
  unreachable

default.unreachable:                              ; preds = %.noexc20
  unreachable

bb.ae:                                            ; preds = %.noexc20
  %i.do = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.dp = load i64, ptr %i.do, align 8, !alias.scope !410, !noalias !413, !noundef !4 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !alias.scope !410, !noalias !413, !noundef !4 ; 3 uses
  %.not.i.i = icmp ult i64 %i.dr, %i.dp
  br i1 %.not.i.i, label %bb.ag, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

bb.af:                                            ; preds = %.noexc20
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.du = load i64, ptr %i.dt, align 8, !alias.scope !410, !noalias !413, !noundef !4 ; 2 uses
  %i.dv = icmp eq i64 %i.du, -1
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.dx = load ptr, ptr %i.dw, align 8, !alias.scope !410, !noalias !413, !nonnull !4, !noundef !4 ; 6 uses
end_hunk_0
begin_hunk_1_@_RNvMCs5HiJSMzJl2A_10wasmi_wastNtB2_10WastRunner11assert_trap:bb.a
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %bb.am, %.lr.ph.i7.i.i
  %.sink70.i.i42.i = phi i64 [ %.sink70.i.i.i, %bb.am ], [ %i.du, %.lr.ph.i7.i.i ] ; 3 uses
  %.sink71.i.i39.i = phi i64 [ %.sink71.i.i.i, %bb.am ], [ %.promoted.i.i.i, %.lr.ph.i7.i.i ] ; 5 uses
  %i.fc = phi i64 [ %i.fl, %bb.am ], [ %i.eu, %.lr.ph.i7.i.i ]
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !alias.scope !435, !noalias !442, !noundef !4
  %i.ff = and i8 %i.fe, 63
  %i.fg = zext nneg i8 %i.ff to i64
  %i.fh = shl nuw i64 1, %i.fg
  %i.fi = and i64 %i.fh, %i.ex
  %.not.i8.i.i = icmp eq i64 %i.fi, 0
  br i1 %.not.i8.i.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph.split.i.i.i
  %i.fj = add i64 %.sink71.i.i39.i, %i.ed
  br label %bb.am

bb.al:                                            ; preds = %.lr.ph.split.i.i.i
  %..i.i9.i.i = call noundef i64 @llvm.umax.i64(i64 %.sink70.i.i42.i, i64 %i.ey) ; 2 uses
  %i.fk = icmp ult i64 %..i.i9.i.i, %i.ed
  br i1 %i.fk, label %.lr.ph112, label %.preheader36.i.i.i.preheader

bb.am:                                            ; preds = %bb.aq, %bb.ap, %bb.ak
  %.sink71.i.i.i = phi i64 [ %i.gg, %bb.aq ], [ %i.gf, %bb.ap ], [ %i.fj, %bb.ak ] ; 2 uses
  %.sink70.i.i.i = phi i64 [ 0, %bb.aq ], [ %i.fb, %bb.ap ], [ 0, %bb.ak ]
  %i.fl = add i64 %.sink71.i.i.i, %i.ef           ; 2 uses
  %i.fm = icmp ult i64 %i.fl, %i.dz
  br i1 %i.fm, label %.lr.ph.split.i.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

bb.an:                                            ; preds = %.lr.ph112
  %i.fn = add nuw nsw i64 %.sroa.04.0.i.i.i111, 1 ; 2 uses
  %i.fo = icmp ult i64 %i.fn, %i.ed
  br i1 %i.fo, label %.lr.ph112, label %.preheader36.i.i.i.preheader

.preheader36.i.i.i.preheader:                     ; preds = %bb.an, %bb.al
  %i.fp = icmp ult i64 %.sink70.i.i42.i, %i.ey
  br i1 %i.fp, label %.lr.ph114, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

.lr.ph112:                                        ; preds = %bb.al, %bb.an
  %.sroa.04.0.i.i.i111 = phi i64 [ %i.fn, %bb.an ], [ %..i.i9.i.i, %bb.al ] ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.sroa.04.0.i.i.i111
  %i.fr = load i8, ptr %i.fq, align 1, !alias.scope !437, !noalias !443, !noundef !4
  %i.fs = add i64 %.sroa.04.0.i.i.i111, %.sink71.i.i39.i ; 2 uses
  %i.ft = icmp ult i64 %i.fs, %i.dz
  call void @llvm.assume(i1 %i.ft)
  %i.fu = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.fs
  %i.fv = load i8, ptr %i.fu, align 1, !alias.scope !435, !noalias !442, !noundef !4
  %.not21.i.i.i = icmp eq i8 %i.fr, %i.fv
  br i1 %.not21.i.i.i, label %bb.an, label %bb.aq

.preheader36.i.i.i:                               ; preds = %bb.ao
  %i.fw = icmp ult i64 %.sink70.i.i42.i, %i.fx
  br i1 %i.fw, label %.lr.ph114, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

.lr.ph114:                                        ; preds = %.preheader36.i.i.i.preheader, %.preheader36.i.i.i
  %.sroa.2.0.i.i.i113 = phi i64 [ %i.fx, %.preheader36.i.i.i ], [ %i.ey, %.preheader36.i.i.i.preheader ]
  %i.fx = add i64 %.sroa.2.0.i.i.i113, -1         ; 6 uses
  %i.fy = icmp ult i64 %i.fx, %i.ed
  br i1 %i.fy, label %bb.ao, label %.invoke

bb.ao:                                            ; preds = %.lr.ph114
  %i.fz = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.fx
  %i.ga = load i8, ptr %i.fz, align 1, !alias.scope !437, !noalias !443, !noundef !4
  %i.gb = add i64 %i.fx, %.sink71.i.i39.i         ; 2 uses
  %i.gc = icmp ult i64 %i.gb, %i.dz
  call void @llvm.assume(i1 %i.gc)
  %i.gd = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.gb
  %i.ge = load i8, ptr %i.gd, align 1, !alias.scope !435, !noalias !442, !noundef !4
  %.not20.i.i.i = icmp eq i8 %i.ga, %i.ge
  br i1 %.not20.i.i.i, label %.preheader36.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gf = add i64 %.sink71.i.i39.i, %i.fa
  br label %bb.am

bb.aq:                                            ; preds = %.lr.ph112
  %.reass.i.reass.i.reass.reass = add i64 %.sink71.i.i39.i, %invariant.op
  %i.gg = add i64 %.reass.i.reass.i.reass.reass, %.sroa.04.0.i.i.i111
  br label %bb.am

bb.ar:                                            ; preds = %bb.af
  call void @llvm.experimental.noalias.scope.decl(metadata !444)
  call void @llvm.experimental.noalias.scope.decl(metadata !447)
  call void @llvm.experimental.noalias.scope.decl(metadata !449)
  %.promoted.i11.i.i = load i64, ptr %i.ee, align 8, !alias.scope !451, !noalias !452 ; 2 uses
  %i.gh = add i64 %.promoted.i11.i.i, %i.ef       ; 2 uses
  %i.gi = icmp ult i64 %i.gh, %i.dz
  br i1 %i.gi, label %.lr.ph.i14.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

.lr.ph.i14.i.i:                                   ; preds = %bb.ar
  %i.gj = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.gk = load i64, ptr %i.gj, align 8, !alias.scope !451, !noalias !452, !noundef !4
  %i.gl = load i64, ptr %i.ds, align 8, !alias.scope !451, !noalias !452
  %.fr214.i.i = freeze i64 %i.gl                  ; 7 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.gn = load i64, ptr %i.gm, align 8, !alias.scope !451, !noalias !452
  %umax.i.i.i = call i64 @llvm.umax.i64(i64 %.fr214.i.i, i64 range(i64 0, -9223372036854775808) %i.ed)
  %i.go = add i64 %.fr214.i.i, -1                 ; 2 uses
  %.first_iter.i15.i.i = icmp ult i64 %i.go, %i.ed
  %exitcond.not.i16.i.i115.not = icmp ult i64 %.fr214.i.i, %i.ed
  %invariant.op154 = sub i64 1, %.fr214.i.i
  %.not34.i.us.i.i118 = icmp eq i64 %.fr214.i.i, 0 ; 2 uses
  br label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %bb.au, %.lr.ph.i14.i.i
  %.sink.i17.i45.i = phi i64 [ %.sink.i17.i.i, %bb.au ], [ %.promoted.i11.i.i, %.lr.ph.i14.i.i ] ; 5 uses
  %i.gp = phi i64 [ %i.hn, %bb.au ], [ %i.gh, %.lr.ph.i14.i.i ]
  %i.gq = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.gp
  %i.gr = load i8, ptr %i.gq, align 1, !alias.scope !447, !noalias !454, !noundef !4
  %i.gs = and i8 %i.gr, 63
  %i.gt = zext nneg i8 %i.gs to i64
  %i.gu = shl nuw i64 1, %i.gt
  %i.gv = and i64 %i.gu, %i.gk
  %.not.us.i.i.i = icmp eq i64 %i.gv, 0
  br i1 %.not.us.i.i.i, label %bb.at, label %.preheader35.i.i.i.preheader

.preheader35.i.i.i.preheader:                     ; preds = %.lr.ph.split.us.i.i.i
  br i1 %exitcond.not.i16.i.i115.not, label %.lr.ph117, label %.preheader.i18.preheader.i.i

.preheader35.i.i.i:                               ; preds = %.lr.ph117
  %i.gw = add i64 %.sroa.04.0.us.i.i.i116, 1      ; 2 uses
  %exitcond.not.i16.i.i = icmp eq i64 %i.gw, %umax.i.i.i
  br i1 %exitcond.not.i16.i.i, label %.preheader.i18.preheader.i.i, label %.lr.ph117

.preheader.i18.preheader.i.i:                     ; preds = %.preheader35.i.i.i, %.preheader35.i.i.i.preheader
  br i1 %.first_iter.i15.i.i, label %.preheader.i18.us.i.i.preheader, label %.preheader.i18.i.i

.preheader.i18.us.i.i.preheader:                  ; preds = %.preheader.i18.preheader.i.i
  br i1 %.not34.i.us.i.i118, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %.lr.ph120

.preheader.i18.us.i.i:                            ; preds = %.lr.ph120
  %.not34.i.us.i.i = icmp eq i64 %i.gx, 0
  br i1 %.not34.i.us.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %.lr.ph120

.lr.ph120:                                        ; preds = %.preheader.i18.us.i.i.preheader, %.preheader.i18.us.i.i
  %.sroa.2.0.us.i.us.i.i119 = phi i64 [ %i.gx, %.preheader.i18.us.i.i ], [ %.fr214.i.i, %.preheader.i18.us.i.i.preheader ]
  %i.gx = add i64 %.sroa.2.0.us.i.us.i.i119, -1   ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 1, !alias.scope !449, !noalias !455, !noundef !4
  %i.ha = add i64 %i.gx, %.sink.i17.i45.i         ; 2 uses
  %i.hb = icmp ult i64 %i.ha, %i.dz
  call void @llvm.assume(i1 %i.hb)
  %i.hc = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.ha
  %i.hd = load i8, ptr %i.hc, align 1, !alias.scope !447, !noalias !454, !noundef !4
  %.not20.us.i.us.i.i = icmp eq i8 %i.gz, %i.hd
  br i1 %.not20.us.i.us.i.i, label %.preheader.i18.us.i.i, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %.lr.ph120
  %i.he = add i64 %.sink.i17.i45.i, %i.gn
  br label %bb.au

.lr.ph117:                                        ; preds = %.preheader35.i.i.i.preheader, %.preheader35.i.i.i
  %.sroa.04.0.us.i.i.i116 = phi i64 [ %i.gw, %.preheader35.i.i.i ], [ %.fr214.i.i, %.preheader35.i.i.i.preheader ] ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.sroa.04.0.us.i.i.i116
  %i.hg = load i8, ptr %i.hf, align 1, !alias.scope !449, !noalias !455, !noundef !4
  %i.hh = add i64 %.sroa.04.0.us.i.i.i116, %.sink.i17.i45.i ; 2 uses
  %i.hi = icmp ult i64 %i.hh, %i.dz
  call void @llvm.assume(i1 %i.hi)
  %i.hj = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.hh
  %i.hk = load i8, ptr %i.hj, align 1, !alias.scope !447, !noalias !454, !noundef !4
  %.not21.us.i.i.i = icmp eq i8 %i.hg, %i.hk
  br i1 %.not21.us.i.i.i, label %.preheader35.i.i.i, label %bb.as

.preheader.i18.i.i:                               ; preds = %.preheader.i18.preheader.i.i
  br i1 %.not34.i.us.i.i118, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %.invoke

bb.as:                                            ; preds = %.lr.ph117
  %.reass281.i.reass.i.reass.reass = add i64 %.sink.i17.i45.i, %invariant.op154
  %i.hl = add i64 %.reass281.i.reass.i.reass.reass, %.sroa.04.0.us.i.i.i116
  br label %bb.au

bb.at:                                            ; preds = %.lr.ph.split.us.i.i.i
  %i.hm = add i64 %.sink.i17.i45.i, %i.ed
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %.split.us.i.i
  %.sink.i17.i.i = phi i64 [ %i.hm, %bb.at ], [ %i.hl, %bb.as ], [ %i.he, %.split.us.i.i ] ; 2 uses
  %i.hn = add i64 %.sink.i17.i.i, %i.ef           ; 2 uses
  %i.ho = icmp ult i64 %i.hn, %i.dz
  br i1 %i.ho, label %.lr.ph.split.us.i.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i: ; preds = %.lr.ph.i.i4.i, %.noexc22, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5HiJSMzJl2A_10wasmi_wast.exit12.i.i.us.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5HiJSMzJl2A_10wasmi_wast.exit14.i.i.us.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5HiJSMzJl2A_10wasmi_wast.exit16.i.i.us.i.i, %bb.ad
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i: ; preds = %bb.am, %.preheader36.i.i.i.preheader, %.preheader36.i.i.i, %bb.au, %.preheader.i18.us.i.i.preheader, %.preheader.i18.us.i.i, %bb.ai, %bb.t, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i, %.preheader.i18.i.i, %bb.ar, %bb.aj, %.noexc22, %bb.ae, %bb.ac, %bb.w, %.preheader.i.i
  %storemerge.i.sink.i.i = phi i8 [ 1, %.preheader.i18.us.i.i ], [ 0, %bb.aj ], [ 0, %bb.ae ], [ 0, %bb.ar ], [ 1, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i ], [ 0, %.noexc22 ], [ 1, %.preheader36.i.i.i ], [ 0, %.preheader.i.i ], [ 1, %bb.w ], [ 1, %bb.ac ], [ 0, %bb.ai ], [ 1, %.preheader.i18.i.i ], [ %.promoted205.i.i, %bb.t ], [ 1, %.preheader.i18.us.i.i.preheader ], [ 0, %bb.au ], [ 0, %bb.am ], [ 1, %.preheader36.i.i.i.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !409
  br label %bb.bl

bb.av:                                            ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !456)
  call void @llvm.experimental.noalias.scope.decl(metadata !459)
  %i.hp = load i8, ptr %i.z, align 1, !alias.scope !461, !noalias !462, !noundef !4 ; 3 uses
  %i.hq = add nsw i64 %i.aa, -1                   ; 2 uses
  %i.hr = icmp eq i64 %i.aa, 2
  br i1 %i.hr, label %.thread.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hs = call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %i.aa, i64 4)
  br label %.lr.ph

bb.ax:                                            ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i
  %i.ht = icmp ult i64 %i.hs, %i.hv
  br i1 %i.ht, label %.lr.ph, label %_RNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_contains.exit.i

.lr.ph:                                           ; preds = %bb.aw, %bb.ax
  %i.hu = phi i64 [ %i.aa, %bb.aw ], [ %i.hv, %bb.ax ]
  %i.hv = add nsw i64 %i.hu, -1                   ; 6 uses
  %i.hw = icmp ult i64 %i.hv, %i.aa
  br i1 %i.hw, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i, label %.invoke

.invoke:                                          ; preds = %.lr.ph, %.lr.ph114, %.preheader.i18.i.i
  %i.hx = phi i64 [ %i.go, %.preheader.i18.i.i ], [ %i.fx, %.lr.ph114 ], [ %i.hv, %.lr.ph ]
  %i.hy = phi i64 [ %i.ed, %.preheader.i18.i.i ], [ %i.ed, %.lr.ph114 ], [ %i.aa, %.lr.ph ]
  %i.hz = phi ptr [ @1, %.preheader.i18.i.i ], [ @1, %.lr.ph114 ], [ @3, %.lr.ph ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.hx, i64 noundef range(i64 0, -9223372036854775808) %i.hy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hz) #25
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i: ; preds = %.lr.ph
  %i.ia = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.hv
  %i.ib = load i8, ptr %i.ia, align 1, !alias.scope !461, !noalias !463, !noundef !4 ; 2 uses
  %.not.i.not.i.i.i = icmp eq i8 %i.ib, %i.hp
  br i1 %.not.i.not.i.i.i, label %bb.ax, label %bb.ay

bb.ay:                                            ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i
  %i.ic = add nuw nsw i64 %i.aa, 15
  %i.id = icmp ult i64 %i.y, %i.ic
  br i1 %i.id, label %.lr.ph.split.us.i.i10.i, label %bb.az

.thread.i.i:                                      ; preds = %bb.av
  %i.ie = icmp ult i64 %i.y, 17
  br i1 %i.ie, label %.lr.ph.split.us.i.i10.i, label %.thread92.i.i

.thread92.i.i:                                    ; preds = %.thread.i.i
  %i.if = insertelement <16 x i8> poison, i8 %i.hp, i64 0
  %i.ig = shufflevector <16 x i8> %i.if, <16 x i8> poison, <16 x i32> zeroinitializer
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !alias.scope !461, !noalias !462
  br label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ih = insertelement <16 x i8> poison, i8 %i.hp, i64 0
  %i.ii = shufflevector <16 x i8> %i.ih, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ba

.lr.ph.split.us.i.i10.i:                          ; preds = %.thread.i.i, %bb.ay
  %bcmp.i.i.us22.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.w, ptr noundef nonnull readonly dereferenceable(1) %i.z, i64 range(i64 2, 33) %i.aa), !alias.scope !471, !noalias !472
  %i.ij = icmp eq i32 %bcmp.i.i.us22.i.i.i, 0
  br i1 %i.ij, label %.thread, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs5HiJSMzJl2A_10wasmi_wast.exit.backedge.us.i.i.i

.split.us.i.i.i:                                  ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs5HiJSMzJl2A_10wasmi_wast.exit.backedge.us.i.i.i
  %i.ik = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ik, ptr noundef nonnull readonly dereferenceable(1) %i.z, i64 range(i64 2, 33) %i.aa), !alias.scope !471, !noalias !472
  %i.il = icmp eq i32 %bcmp.i.i.us.i.i.i, 0
  br i1 %i.il, label %.thread, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs5HiJSMzJl2A_10wasmi_wast.exit.backedge.us.i.i.i

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs5HiJSMzJl2A_10wasmi_wast.exit.backedge.us.i.i.i: ; preds = %.lr.ph.split.us.i.i10.i, %.split.us.i.i.i
  %.pn.i.i = phi ptr [ %i.ik, %.split.us.i.i.i ], [ %i.w, %.lr.ph.split.us.i.i10.i ]
  %.in.i.i = phi i64 [ %i.im, %.split.us.i.i.i ], [ %i.y, %.lr.ph.split.us.i.i10.i ]
  %i.im = add i64 %.in.i.i, -1                    ; 2 uses
  %.not27.i.i.i = icmp ugt i64 %i.aa, %i.im
  br i1 %.not27.i.i.i, label %.thread3, label %.split.us.i.i.i

bb.ba:                                            ; preds = %bb.az, %.thread92.i.i
  %i.in = phi i8 [ %.pre.i.i, %.thread92.i.i ], [ %i.ib, %bb.az ]
  %i.io = phi <16 x i8> [ %i.ig, %.thread92.i.i ], [ %i.ii, %bb.az ] ; 6 uses
  %storemerge9194.i.i = phi i64 [ 1, %.thread92.i.i ], [ %i.hv, %bb.az ] ; 6 uses
  %i.ip = insertelement <16 x i8> poison, i8 %i.in, i64 0
  %i.iq = shufflevector <16 x i8> %i.ip, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !471
  store ptr %i.w, ptr %i.b, align 8, !noalias !471
  %i.is = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.y, ptr %i.is, align 8, !noalias !471
  %i.it = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.ir, ptr %i.it, align 8, !noalias !471
  %i.iu = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.hq, ptr %i.iu, align 8, !noalias !471
  %i.iv = add nuw nsw i64 %i.aa, 63               ; 2 uses
  %.not.i6.i = icmp ult i64 %i.iv, %i.y
  br i1 %.not.i6.i, label %.lr.ph.i8.i, label %.preheader.i7.i

.preheader.i7.i:                                  ; preds = %bb.be, %bb.ba
  %.sroa.014.0.lcssa.i.i = phi i8 [ 0, %bb.ba ], [ %.sroa.014.2.3.i.i, %bb.be ] ; 2 uses
  %.sroa.06.0.lcssa.i.i = phi i64 [ 0, %bb.ba ], [ %i.kr, %bb.be ] ; 2 uses
  %i.iw = add nuw nsw i64 %i.aa, 15               ; 2 uses
  %i.ix = add i64 %.sroa.06.0.lcssa.i.i, %i.iw
  %i.iy = icmp uge i64 %i.ix, %i.y
  %i.iz = trunc nuw i8 %.sroa.014.0.lcssa.i.i to i1 ; 2 uses
  %or.cond3104.i.i = select i1 %i.iy, i1 true, i1 %i.iz
  br i1 %or.cond3104.i.i, label %._crit_edge.i.i, label %.lr.ph106.i.i

.lr.ph.i8.i:                                      ; preds = %bb.ba, %bb.be
  %.sroa.06.0102.i.i = phi i64 [ %i.kr, %bb.be ], [ 0, %bb.ba ] ; 6 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.06.0102.i.i ; 5 uses
  %.sroa.0.0.copyload.i.i.i = load <16 x i8>, ptr %i.ja, align 1, !alias.scope !462, !noalias !476
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 %storemerge9194.i.i
  %.sroa.01.0.copyload.i.i.i = load <16 x i8>, ptr %i.jb, align 1, !alias.scope !462, !noalias !476
  %i.jc = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i.i, %i.io
  %i.jd = icmp eq <16 x i8> %.sroa.01.0.copyload.i.i.i, %i.iq
  %i.je = and <16 x i1> %i.jc, %i.jd
  %i.jf = bitcast <16 x i1> %i.je to i16          ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ja, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i.i = load <16 x i8>, ptr %i.jg, align 1, !alias.scope !462, !noalias !476
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 %storemerge9194.i.i
  %.sroa.01.0.copyload.i.1.i.i = load <16 x i8>, ptr %i.jh, align 1, !alias.scope !462, !noalias !476
  %i.ji = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i.i, %i.io
  %i.jj = icmp eq <16 x i8> %.sroa.01.0.copyload.i.1.i.i, %i.iq
  %i.jk = and <16 x i1> %i.ji, %i.jj
  %i.jl = bitcast <16 x i1> %i.jk to i16          ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ja, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i.i = load <16 x i8>, ptr %i.jm, align 1, !alias.scope !462, !noalias !476
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 %storemerge9194.i.i
  %.sroa.01.0.copyload.i.2.i.i = load <16 x i8>, ptr %i.jn, align 1, !alias.scope !462, !noalias !476
  %i.jo = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i.i, %i.io
  %i.jp = icmp eq <16 x i8> %.sroa.01.0.copyload.i.2.i.i, %i.iq
  %i.jq = and <16 x i1> %i.jo, %i.jp
  %i.jr = bitcast <16 x i1> %i.jq to i16          ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.ja, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i.i = load <16 x i8>, ptr %i.js, align 1, !alias.scope !462, !noalias !476
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 %storemerge9194.i.i
  %.sroa.01.0.copyload.i.3.i.i = load <16 x i8>, ptr %i.jt, align 1, !alias.scope !462, !noalias !476
  %i.ju = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i.i, %i.io
  %i.jv = icmp eq <16 x i8> %.sroa.01.0.copyload.i.3.i.i, %i.iq
  %i.jw = and <16 x i1> %i.ju, %i.jv
  %i.jx = bitcast <16 x i1> %i.jw to i16          ; 2 uses
  %i.jy = icmp eq i16 %i.jf, 0
  br i1 %i.jy, label %.preheader95.1.i.i, label %bb.bf

.preheader95.1.i.i:                               ; preds = %.noexc29, %.lr.ph.i8.i
  %.sroa.014.2.i.i = phi i8 [ 0, %.lr.ph.i8.i ], [ %i.kw, %.noexc29 ] ; 3 uses
  %i.jz = icmp eq i16 %i.jl, 0
  br i1 %i.jz, label %.preheader95.2.i.i, label %bb.bb

bb.bb:                                            ; preds = %.preheader95.1.i.i
  %i.ka = or disjoint i64 %.sroa.06.0102.i.i, 16
  %i.kb = trunc nuw i8 %.sroa.014.2.i.i to i1
  %i.kc = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_containss0_0Cs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, i64 noundef %i.ka, i16 noundef %i.jl, i1 noundef zeroext %i.kb) #24
          to label %.noexc26 unwind label %.loopexit.split-lp.loopexit

.noexc26:                                         ; preds = %bb.bb
  %i.kd = zext i1 %i.kc to i8
  %i.ke = or i8 %.sroa.014.2.i.i, %i.kd
  br label %.preheader95.2.i.i

.preheader95.2.i.i:                               ; preds = %.noexc26, %.preheader95.1.i.i
  %.sroa.014.2.1.i.i = phi i8 [ %.sroa.014.2.i.i, %.preheader95.1.i.i ], [ %i.ke, %.noexc26 ] ; 3 uses
  %i.kf = icmp eq i16 %i.jr, 0
  br i1 %i.kf, label %.preheader95.3.i.i, label %bb.bc

bb.bc:                                            ; preds = %.preheader95.2.i.i
  %i.kg = or disjoint i64 %.sroa.06.0102.i.i, 32
  %i.kh = trunc nuw i8 %.sroa.014.2.1.i.i to i1
  %i.ki = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_containss0_0Cs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, i64 noundef %i.kg, i16 noundef %i.jr, i1 noundef zeroext %i.kh) #24
          to label %.noexc27 unwind label %.loopexit.split-lp.loopexit

.noexc27:                                         ; preds = %bb.bc
  %i.kj = zext i1 %i.ki to i8
  %i.kk = or i8 %.sroa.014.2.1.i.i, %i.kj
  br label %.preheader95.3.i.i

.preheader95.3.i.i:                               ; preds = %.noexc27, %.preheader95.2.i.i
  %.sroa.014.2.2.i.i = phi i8 [ %.sroa.014.2.1.i.i, %.preheader95.2.i.i ], [ %i.kk, %.noexc27 ] ; 3 uses
  %i.kl = icmp eq i16 %i.jx, 0
  br i1 %i.kl, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.preheader95.3.i.i
  %i.km = or disjoint i64 %.sroa.06.0102.i.i, 48
  %i.kn = trunc nuw i8 %.sroa.014.2.2.i.i to i1
  %i.ko = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_containss0_0Cs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, i64 noundef %i.km, i16 noundef %i.jx, i1 noundef zeroext %i.kn) #24
          to label %.noexc28 unwind label %.loopexit.split-lp.loopexit

.noexc28:                                         ; preds = %bb.bd
  %i.kp = zext i1 %i.ko to i8
  %i.kq = or i8 %.sroa.014.2.2.i.i, %i.kp
  br label %bb.be

bb.be:                                            ; preds = %.noexc28, %.preheader95.3.i.i
  %.sroa.014.2.3.i.i = phi i8 [ %.sroa.014.2.2.i.i, %.preheader95.3.i.i ], [ %i.kq, %.noexc28 ] ; 2 uses
  %i.kr = add i64 %.sroa.06.0102.i.i, 64          ; 3 uses
  %i.ks = add i64 %i.kr, %i.iv
  %i.kt = icmp uge i64 %i.ks, %i.y
  %i.ku = trunc nuw i8 %.sroa.014.2.3.i.i to i1
  %or.cond.i.i = select i1 %i.kt, i1 true, i1 %i.ku
  br i1 %or.cond.i.i, label %.preheader.i7.i, label %.lr.ph.i8.i

bb.bf:                                            ; preds = %.lr.ph.i8.i
  %i.kv = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_containss0_0Cs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, i64 noundef %.sroa.06.0102.i.i, i16 noundef %i.jf, i1 noundef zeroext false) #24
          to label %.noexc29 unwind label %.loopexit.split-lp.loopexit

.noexc29:                                         ; preds = %bb.bf
  %i.kw = zext i1 %i.kv to i8
  br label %.preheader95.1.i.i

._crit_edge.i.i:                                  ; preds = %bb.bg, %.preheader.i7.i
  %.sroa.014.3.lcssa.i.i = phi i8 [ %.sroa.014.0.lcssa.i.i, %.preheader.i7.i ], [ %.sroa.014.4.i.i, %bb.bg ] ; 2 uses
  %.lcssa.i.i = phi i1 [ %i.iz, %.preheader.i7.i ], [ %i.lq, %bb.bg ]
  %i.kx = sub nuw i64 %i.y, %i.hq
  %i.ky = add i64 %i.kx, -16                      ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ky ; 2 uses
  %.sroa.0.0.copyload.i57.i.i = load <16 x i8>, ptr %i.kz, align 1, !alias.scope !462, !noalias !479
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 %storemerge9194.i.i
  %.sroa.01.0.copyload.i58.i.i = load <16 x i8>, ptr %i.la, align 1, !alias.scope !462, !noalias !479
  %i.lb = icmp eq <16 x i8> %.sroa.0.0.copyload.i57.i.i, %i.io
end_hunk_1
