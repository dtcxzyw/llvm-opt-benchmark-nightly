Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff_cli.jiff_cli.28936ee66da4cb41-cgu.02?download=true
inline.NumInlined: 88
inline.NumDeleted: 46
begin_hunk_0_@_RNvMNtCs3tZ2SXJA1qv_8jiff_cli4argsNtB2_5Usage4long:bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body92 unwind label %bb.al

bb.ag:                                            ; preds = %bb.z, %.noexc75
  %i.dd = phi i64 [ %.pre.i74, %bb.z ], [ %i.cq, %.noexc75 ]
  %i.de = add i64 %i.dd, %i.cp                    ; 4 uses
  store i64 %i.de, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !60
  %i.df = icmp sgt i64 %i.de, -1
  call void @llvm.assume(i1 %i.df)
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef 1)
          to label %bb.ah unwind label %bb.ac

bb.ah:                                            ; preds = %bb.ag
  %i.dg = load ptr, ptr %.sroa.413.0..sroa_idx, align 8, !alias.scope !63, !nonnull !6, !noundef !6
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.de
  store i8 10, ptr %i.dh, align 1
  %i.di = add nuw i64 %i.de, 1
  store i64 %i.di, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !63
  %i.dj = load i64, ptr %i.g, align 8, !range !5, !alias.scope !64, !noundef !6
  %i.dk = icmp eq i64 %i.dj, -1
  br i1 %i.dk, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs3tZ2SXJA1qv_8jiff_cli.exit95, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit.i91 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body92 unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit.i91: ; preds = %bb.ai
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs3tZ2SXJA1qv_8jiff_cli.exit95 unwind label %bb.x

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs3tZ2SXJA1qv_8jiff_cli.exit95: ; preds = %bb.ah, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7100)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7100)
  %i.dn = load ptr, ptr %.sroa.69.0..sroa_idx, align 8, !alias.scope !65, !nonnull !6, !noundef !6
  %i.do = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !65, !nonnull !6, !noundef !6 ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.dn
  br i1 %i.dp, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_6borrow3CoweEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit.thread, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_6borrow3CoweEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit

bb.al:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit.i, %.body92, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs3tZ2SXJA1qv_8jiff_cli.exit.i68, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs3tZ2SXJA1qv_8jiff_cli.exit.i
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.t, %bb.ae, %bb.al, %bb.b
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs3tZ2SXJA1qv_8jiff_cli.exit.i
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCs3tZ2SXJA1qv_8jiff_cli4argsNtB2_5Usage5short(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 192153584101141163) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.56.0..sroa_idx, align 8
  %.idx = mul nuw nsw i64 %2, 48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = getelementptr i8, ptr %1, i64 8
  %.val.i.i = load i64, ptr %i.i, align 8, !noalias !68, !noundef !6
  %i.j = invoke noundef i64 @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageENCNvMB1p_B1n_5short0ENtNtNtBa_6traits8iterator8Iterator4foldjNvYjNtNtBc_3cmp3Ord3maxEB1r_(ptr noundef nonnull %i.h, ptr noundef nonnull %i.f, i64 noundef %.val.i.i)
          to label %.lr.ph unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph:                                           ; preds = %bb.b
  %i.k = add i64 %i.j, 2
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  br label %bb.c

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.g, %.loopexit.split-lp37.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp50, %.loopexit.split-lp37.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.t, %bb.g ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #17
          to label %bb.j unwind label %bb.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs3tZ2SXJA1qv_8jiff_cli.exit.i, %bb.c, %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.c:                                             ; preds = %.lr.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit
  %.sroa.02.041 = phi ptr [ %1, %.lr.ph ], [ %i.n, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.02.041, i64 48 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.02.041, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noundef !6
  %i.q = sub i64 %i.k, %i.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMNtCs1xwejQucwHj_5alloc5sliceSh6repeatCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 1, i64 noundef %i.q)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.02.041, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.sroa.02.041, ptr %i.c, align 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs3tZ2SXJA1qv_8jiff_cli, ptr %.sroa.410.0..sroa_idx, align 8
  store ptr %i.d, ptr %i.l, align 8
  store ptr @_RNvXsq_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.414.0..sroa_idx, align 8
  store ptr %i.r, ptr %i.m, align 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs3tZ2SXJA1qv_8jiff_cli, ptr %.sroa.418.0..sroa_idx, align 8
  %i.s = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @5, ptr noundef nonnull @11, ptr noundef nonnull %i.c)
          to label %bb.e unwind label %.loopexit.split-lp37.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp37.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.d, %bb.f
  %lpad.loopexit.split-lp50 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #17
          to label %.body unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  br i1 %i.s, label %bb.f, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs3tZ2SXJA1qv_8jiff_cli.exit, !prof !8

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #15
          to label %.noexc unwind label %.loopexit.split-lp37.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs3tZ2SXJA1qv_8jiff_cli.exit.i unwind label %bb.g

bb.g:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs3tZ2SXJA1qv_8jiff_cli.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs3tZ2SXJA1qv_8jiff_cli.exit.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs3tZ2SXJA1qv_8jiff_cli.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs3tZ2SXJA1qv_8jiff_cli.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.v = icmp eq ptr %i.n, %i.f
  br i1 %i.v, label %._crit_edge, label %bb.c

bb.i:                                             ; preds = %.loopexit.split-lp37.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.j:                                             ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCs3tZ2SXJA1qv_8jiff_cli4args15next_as_command(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef align 8 dereferenceable(120) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 2 uses
  %.sroa.6.sroa.7 = alloca [16 x i8], align 8     ; 3 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.l = tail call { ptr, i64 } @_RINvMNtCs3oUPovFnLWP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.l, 0
  %i.n = extractvalue { ptr, i64 } %i.l, 1
  store ptr %i.m, ptr %i.k, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.n, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvMCsgWT32ugvpwR_6lexoptNtB2_6Parser4next(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %3)
  %i.p = load i64, ptr %i.i, align 8, !range !11, !noundef !6 ; 2 uses
  %.not = icmp eq i64 %i.p, -1
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.023.0.copyload = load i64, ptr %i.q, align 8 ; 6 uses
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.424.0..sroa_idx, i64 16, i1 false)
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.632.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.7, i64 16, i1 false)
  store i64 %i.p, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.023.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %i.r = call noundef nonnull ptr @_RNvXs_NtCs8WPnInWCYsb_6anyhow5errorNtB6_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtCsgWT32ugvpwR_6lexopt5ErrorE4fromCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.b)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.s, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.not56 = icmp eq i64 %.sroa.023.0.copyload, -1
  br i1 %.not56, label %.split, label %bb.d, !prof !8

bb.d:                                             ; preds = %bb.c
  %.sroa.4.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx11, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.7, i64 16, i1 false)
  store i64 %.sroa.023.0.copyload, ptr %i.j, align 8
  %i.t = xor i64 %.sroa.023.0.copyload, -9223372036854775808
  %i.u = icmp slt i64 %.sroa.023.0.copyload, 0
  %i.v = select i1 %i.u, i64 %i.t, i64 2
  switch i64 %i.v, label %bb.e [
    i64 0, label %bb.f
    i64 1, label %bb.g
    i64 2, label %bb.h
  ]

.split:                                           ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.k, ptr %i.g, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs3tZ2SXJA1qv_8jiff_cli, ptr %.sroa.436.0..sroa_idx, align 8
  call void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @13, ptr noundef nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.w = call noundef nonnull ptr @_RINvMNtCs8WPnInWCYsb_6anyhow5errorNtB5_5Error3msgNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.o

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.y = load i32, ptr %.sroa.4.0..sroa_idx11, align 8, !range !12, !noundef !6
  %i.z = icmp eq i32 %i.y, 104
  br i1 %i.z, label %bb.i, label %bb.j

bb.g:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !6
  %i.ac = icmp eq i64 %i.ab, 4
  br i1 %i.ac, label %bb.k, label %bb.j

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvXs9_CsgWT32ugvpwR_6lexoptNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNtB5_8ValueExt6string(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j)
  %i.ad = load i64, ptr %i.f, align 8, !range !11, !noundef !6 ; 2 uses
  %.not57 = icmp eq i64 %i.ad, -1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  br i1 %.not57, label %bb.n, label %bb.m

bb.i:                                             ; preds = %bb.k, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.k, ptr %i.d, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs3tZ2SXJA1qv_8jiff_cli, ptr %.sroa.442.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @13, ptr noundef nonnull %i.d)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3tZ2SXJA1qv_8jiff_cli.exit unwind label %bb.q

bb.j:                                             ; preds = %bb.g, %bb.k, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs_CsgWT32ugvpwR_6lexoptNtB4_3Arg10unexpected(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j)
  %i.af = call noundef nonnull ptr @_RNvXs_NtCs8WPnInWCYsb_6anyhow5errorNtB6_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtCsgWT32ugvpwR_6lexopt5ErrorE4fromCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.ag, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.o

bb.k:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr %.sroa.4.0..sroa_idx11, align 8, !nonnull !6, !noundef !6
  %i.ai = load i32, ptr %i.ah, align 1
  %i.aj = icmp ne i32 %i.ai, 1886152040
  %i.ak = zext i1 %i.aj to i32
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.i, label %bb.j

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.am = invoke noundef nonnull ptr @_RINvMNtCs8WPnInWCYsb_6anyhow5errorNtB5_5Error3msgNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3tZ2SXJA1qv_8jiff_cli.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.o

bb.m:                                             ; preds = %bb.h
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.520.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.548.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.419.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store i64 %i.ad, ptr %i.a, align 8
  %i.ao = call noundef nonnull ptr @_RNvXs_NtCs8WPnInWCYsb_6anyhow5errorNtB6_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtCsgWT32ugvpwR_6lexopt5ErrorE4fromCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ao, ptr %i.ap, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.o

bb.n:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.o

bb.o:                                             ; preds = %bb.b, %.split, %bb.m, %bb.l, %bb.j, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.p:                                             ; preds = %bb.r, %bb.q
  resume { ptr, i32 } %lpad.thr_comm.split-lp73

bb.q:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3tZ2SXJA1qv_8jiff_cli.exit, %bb.i
  %lpad.thr_comm.split-lp73 = landingpad { ptr, i32 }
          cleanup
  %i.aq = icmp sgt i64 %.sroa.023.0.copyload, -1
  br i1 %i.aq, label %bb.r, label %bb.p

bb.r:                                             ; preds = %bb.q
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #17
          to label %bb.p unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #14
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure(ptr noalias nofree noundef align 8 dereferenceable(120) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %3, i64 noundef range(i64 0, 576460752303423488) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %i.d = alloca [104 x i8], align 8               ; 4 uses
  %i.e = alloca [104 x i8], align 8               ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 12 uses
  %i.g = alloca [8 x i8], align 8                 ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [48 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 20 uses
  %i.n = alloca [24 x i8], align 8                ; 16 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 2 uses
  %i.r = alloca [24 x i8], align 8                ; 9 uses
  %i.s = alloca [24 x i8], align 8                ; 10 uses
  %i.t = alloca [24 x i8], align 8                ; 10 uses
  %i.u = alloca [24 x i8], align 8                ; 18 uses
  %.sroa.7.sroa.8 = alloca [16 x i8], align 8     ; 4 uses
  %i.v = alloca [48 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @_RNvMCsgWT32ugvpwR_6lexoptNtB2_6Parser4next(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %0)
  %i.w = load i64, ptr %i.v, align 8, !range !11, !noundef !6 ; 2 uses
  %.not164 = icmp eq i64 %i.w, -1
  br i1 %.not164, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.4.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.idx233 = shl nuw nsw i64 %4, 4
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 %.idx233
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %.not56226 = icmp eq i64 %4, 0
  br label %bb.b

._crit_edge:                                      ; preds = %bb.cb, %bb.a
  %.lcssa = phi i64 [ %i.w, %bb.a ], [ %i.ge, %bb.cb ]
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.436.0.copyload = load i64, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.537.0..sroa_idx, i64 16, i1 false)
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.638.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.8, i64 16, i1 false)
  store i64 %.lcssa, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %.sroa.436.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %i.af = call noundef nonnull ptr @_RNvXs_NtCs8WPnInWCYsb_6anyhow5errorNtB6_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtCsgWT32ugvpwR_6lexopt5ErrorE4fromCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph, %bb.cb
  %.sroa.029.0.copyload = load i64, ptr %i.x, align 8 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx30, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %.not53 = icmp eq i64 %.sroa.029.0.copyload, -1
  br i1 %.not53, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i64 %.sroa.029.0.copyload, ptr %i.u, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.8, i64 16, i1 false)
  %i.ag = xor i64 %.sroa.029.0.copyload, -9223372036854775808
  %i.ah = icmp slt i64 %.sroa.029.0.copyload, 0
  %i.ai = select i1 %i.ah, i64 %i.ag, i64 2       ; 2 uses
  switch i64 %i.ai, label %bb.d [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
  ]

bb.d:                                             ; preds = %bb.ay, %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.aj = load i32, ptr %.sroa.3.0..sroa_idx, align 8, !range !12, !noundef !6
  %i.ak = icmp eq i32 %i.aj, 104
  br i1 %i.ak, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.al = load i64, ptr %i.y, align 8, !noundef !6
  %i.am = icmp eq i64 %i.al, 4
  br i1 %i.am, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.i, %bb.e, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.an = icmp eq i64 %.sroa.029.0.copyload, -9223372036854775807
  br i1 %i.an, label %bb.ar, label %bb.ay

bb.h:                                             ; preds = %bb.i, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 0, ptr %i.t, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 5 uses
  store i64 0, ptr %i.ap, align 8
  %.idx = shl nuw nsw i64 %4, 4
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 %.idx
  %i.ar = icmp eq i64 %4, 0
  br i1 %i.ar, label %._crit_edge168.thread, label %.lr.ph167

._crit_edge168.thread:                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !95
  br label %bb.o

bb.i:                                             ; preds = %bb.f
  %i.as = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !nonnull !6, !noundef !6
  %i.at = load i32, ptr %i.as, align 1
  %i.au = icmp ne i32 %i.at, 1886152040
  %i.av = zext i1 %i.au to i32
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.h, label %bb.g

.lr.ph167:                                        ; preds = %bb.h, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageE15append_elementsBI_.exit
  %.sroa.015.0165 = phi ptr [ %i.ax, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageE15append_elementsBI_.exit ], [ %3, %bb.h ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.015.0165, i64 16 ; 2 uses
  %i.ay = load ptr, ptr %.sroa.015.0165, align 8, !nonnull !6, !noundef !6
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.015.0165, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !6, !align !96, !noundef !6
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !invariant.load !6, !nonnull !6
  %i.bd = invoke { ptr, i64 } %i.bc(ptr noundef nonnull %i.ay)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

._crit_edge168:                                   ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageE15append_elementsBI_.exit
  %.pre = load ptr, ptr %i.ao, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !95
  store ptr %i.a, ptr %i.g, align 8, !noalias !97
  %i.be = icmp samesign ult i64 %i.bo, 2
  br i1 %i.be, label %bb.o, label %bb.j, !prof !98

bb.j:                                             ; preds = %._crit_edge168
  %i.bf = icmp samesign ult i64 %i.bo, 21
  br i1 %i.bf, label %bb.l, label %bb.k, !prof !99

bb.k:                                             ; preds = %bb.j
  invoke void @_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable14driftsort_mainNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_11sort_by_keyReNCNvB11_9configure0E0INtNtB1J_3vec3VecBZ_EEB13_(ptr noalias nofree noundef nonnull align 8 %.pre, i64 noundef range(i64 0, 192153584101141163) %i.bo, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #18
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.j
  invoke void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1m_11sort_by_keyReNCNvB1o_9configure0E0EB1q_(ptr noalias nofree noundef nonnull align 8 %.pre, i64 noundef range(i64 0, 192153584101141163) %i.bo, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.body78:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ak, %.body
  %.pn60 = phi { ptr, i32 } [ %.pn58, %.body ], [ %i.ee, %bb.ak ], [ %lpad.loopexit.split-lp242, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #17
          to label %.body83 unwind label %bb.aq

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.m, %.lr.ph167, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs3tZ2SXJA1qv_8jiff_cli.exit.i77, %bb.l, %bb.k, %bb.q, %bb.p
  %lpad.loopexit.split-lp242 = landingpad { ptr, i32 }
          cleanup
  br label %.body78

bb.m:                                             ; preds = %.lr.ph167
  %i.bg = extractvalue { ptr, i64 } %i.bd, 0      ; 2 uses
  %i.bh = extractvalue { ptr, i64 } %i.bd, 1      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bg) ]
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageE7reserveBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t, i64 noundef range(i64 0, 384307168202282326) %i.bh)
end_hunk_0
