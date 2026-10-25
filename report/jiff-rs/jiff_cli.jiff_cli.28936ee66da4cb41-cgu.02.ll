Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff_cli.jiff_cli.28936ee66da4cb41-cgu.02?download=true
inline.NumInlined: 88
inline.NumDeleted: 46
begin_hunk_0_@_RNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure:bb.a
_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.i: ; preds = %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern13into_searcher.exit.i, %.noexc31.i
  %.sroa.04.0.i = phi i64 [ %i.db, %.noexc31.i ], [ 0, %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern13into_searcher.exit.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !101
  invoke fastcc void @_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef align 8 dereferenceable(104) %i.e)
          to label %bb.x unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !103

.loopexit.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.us.i, %bb.u, %bb.w, %bb.ab, %bb.z, %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.i, %.split.us.i, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3tZ2SXJA1qv_8jiff_cli.exit.i
  %lpad.loopexit.split-lp237 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #17
          to label %.body unwind label %bb.ac, !noalias !103

bb.x:                                             ; preds = %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.i
  %i.ct = load i64, ptr %i.c, align 8, !range !9, !noalias !101, !noundef !6
  %i.cu = trunc nuw i64 %i.ct to i1
  br i1 %i.cu, label %bb.z, label %.split.us.i

.split.us.i:                                      ; preds = %bb.x, %bb.t
  %.us-phi49.i = phi i64 [ %.sroa.04.0.us.i, %bb.t ], [ %.sroa.04.0.i, %bb.x ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !101
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 %.us-phi49.i
  %gepdiff.i = sub nuw nsw i64 %2, %.us-phi49.i   ; 3 uses
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %gepdiff.i)
          to label %.noexc.i unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !103

.noexc.i:                                         ; preds = %.split.us.i
  %i.cw = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !105, !noalias !101, !noundef !6 ; 3 uses
  %i.cx = icmp sgt i64 %i.cw, -1
  call void @llvm.assume(i1 %i.cx)
  %.not.i.i = icmp eq i64 %2, %.us-phi49.i
  br i1 %.not.i.i, label %bb.ae, label %bb.y

bb.y:                                             ; preds = %.noexc.i
  %i.cy = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !105, !noalias !101, !nonnull !6, !noundef !6
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cw
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cz, ptr nonnull readonly align 1 %i.cv, i64 %gepdiff.i, i1 false), !noalias !103
  %.pre.i.i = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !105, !noalias !101
  br label %bb.ae

bb.z:                                             ; preds = %bb.x
  %i.da = load i64, ptr %i.cg, align 8, !noalias !101, !noundef !6 ; 2 uses
  %i.db = load i64, ptr %i.ch, align 8, !noalias !101, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !101
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.0.i
  %gepdiff47.i = sub nuw nsw i64 %i.da, %.sroa.04.0.i ; 3 uses
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %gepdiff47.i)
          to label %.noexc27.i unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !103

.noexc27.i:                                       ; preds = %bb.z
  %i.dd = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !104, !noalias !101, !noundef !6 ; 3 uses
  %i.de = icmp sgt i64 %i.dd, -1
  call void @llvm.assume(i1 %i.de)
  %.not.i25.i = icmp eq i64 %i.da, %.sroa.04.0.i
  br i1 %.not.i25.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.noexc27.i
  %i.df = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !104, !noalias !101, !nonnull !6, !noundef !6
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dd
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dg, ptr nonnull readonly align 1 %i.dc, i64 %gepdiff47.i, i1 false), !noalias !103
  %.pre.i26.i = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !104, !noalias !101
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.noexc27.i
  %i.dh = phi i64 [ %.pre.i26.i, %bb.aa ], [ %i.dd, %.noexc27.i ]
  %i.di = add i64 %i.dh, %gepdiff47.i
  store i64 %i.di, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !104, !noalias !101
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.bx)
          to label %.noexc31.i unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !103

.noexc31.i:                                       ; preds = %bb.ab
  %i.dj = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !106, !noalias !101, !noundef !6 ; 2 uses
  %i.dk = icmp sgt i64 %i.dj, -1
  call void @llvm.assume(i1 %i.dk)
  %i.dl = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !106, !noalias !101, !nonnull !6, !noundef !6
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dm, ptr nonnull readonly align 1 %i.bv, i64 %i.bx, i1 false), !noalias !107
  %.pre.i30.i = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !106, !noalias !101
  %i.dn = add i64 %.pre.i30.i, %i.bx
  store i64 %i.dn, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !106, !noalias !101
  br label %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.i

bb.ac:                                            ; preds = %.loopexit.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #14, !noalias !103
  unreachable

.body:                                            ; preds = %bb.ai, %.loopexit.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ad, %bb.af
  %.pn58 = phi { ptr, i32 } [ %i.dx, %bb.af ], [ %lpad.loopexit.split-lp237, %.loopexit.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.dp, %bb.ad ], [ %i.ec, %bb.ai ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s) #17
          to label %.body78 unwind label %bb.aq

bb.ad:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs3tZ2SXJA1qv_8jiff_cli.exit.i, %bb.s, %bb.r
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %bb.y, %.noexc.i
  %i.dq = phi i64 [ %.pre.i.i, %bb.y ], [ %i.cw, %.noexc.i ]
  %i.dr = add i64 %i.dq, %gepdiff.i
  store i64 %i.dr, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !105, !noalias !101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !nonnull !6, !noundef !6
  %i.du = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.dv = load i64, ptr %i.du, align 8, !noundef !6
  %i.dw = invoke { ptr, i64 } @_RINvMNtCs3oUPovFnLWP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dt, i64 noundef %i.dv)
          to label %bb.ag unwind label %bb.af     ; 2 uses

bb.af:                                            ; preds = %bb.ag, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3tZ2SXJA1qv_8jiff_cli.exit, %bb.ae
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r) #17
          to label %.body unwind label %bb.aq

bb.ag:                                            ; preds = %bb.ae
  %i.dy = extractvalue { ptr, i64 } %i.dw, 0
  %i.dz = extractvalue { ptr, i64 } %i.dw, 1
  store ptr %i.dy, ptr %i.p, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.dz, ptr %i.ea, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.p, ptr %i.o, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs3tZ2SXJA1qv_8jiff_cli, ptr %.sroa.442.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noundef nonnull @13, ptr noundef nonnull %i.o)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3tZ2SXJA1qv_8jiff_cli.exit unwind label %bb.af

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.eb = invoke noundef nonnull ptr @_RINvMNtCs8WPnInWCYsb_6anyhow5errorNtB5_5Error3msgNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.q)
          to label %bb.ah unwind label %bb.af

bb.ah:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3tZ2SXJA1qv_8jiff_cli.exit
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs3tZ2SXJA1qv_8jiff_cli.exit.i unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ec = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs3tZ2SXJA1qv_8jiff_cli.exit.i: ; preds = %bb.ah
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit unwind label %bb.ad

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs3tZ2SXJA1qv_8jiff_cli.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs3tZ2SXJA1qv_8jiff_cli.exit.i77 unwind label %bb.ak

bb.ak:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body78 unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs3tZ2SXJA1qv_8jiff_cli.exit.i77: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit81 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit81: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs3tZ2SXJA1qv_8jiff_cli.exit.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.an unwind label %bb.am

bb.am:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit81
  %i.eg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.body83 unwind label %bb.ao

bb.an:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit81
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageEEB1c_.exit unwind label %.loopexit.split-lp121

bb.ao:                                            ; preds = %bb.am
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #14
  unreachable

.body83:                                          ; preds = %.loopexit120, %.loopexit.split-lp121, %bb.bz, %bb.bp, %bb.am, %.body85, %.body78
  %.sroa.024.0 = phi i8 [ %.sroa.024.4, %.body85 ], [ 1, %.body78 ], [ 1, %bb.am ], [ %.sroa.024.3, %bb.bp ], [ %.sroa.024.3, %bb.bz ], [ %.sroa.024.1.ph, %.loopexit120 ], [ %.sroa.024.1.ph122, %.loopexit.split-lp121 ]
  %.pn62 = phi { ptr, i32 } [ %.pn, %.body85 ], [ %.pn60, %.body78 ], [ %i.eg, %bb.am ], [ %i.fq, %bb.bp ], [ %i.fx, %bb.bz ], [ %lpad.loopexit123, %.loopexit120 ], [ %lpad.loopexit.split-lp124, %.loopexit.split-lp121 ] ; 2 uses
  %i.ei = load i64, ptr %i.u, align 8, !range !7, !noundef !6
  %i.ej = icmp sgt i64 %i.ei, -1
  %5 = trunc nuw i8 %.sroa.024.0 to i1
  %or.cond5 = select i1 %i.ej, i1 %5, i1 false
  br i1 %or.cond5, label %bb.cf, label %common.resume

.loopexit120:                                     ; preds = %bb.ar, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit.i102
  %.sroa.024.1.ph = phi i8 [ 1, %bb.ar ], [ %.sroa.024.3, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit.i102 ]
  %lpad.loopexit123 = landingpad { ptr, i32 }
          cleanup
  br label %.body83

.loopexit.split-lp121:                            ; preds = %bb.at, %bb.an, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit.i
  %.sroa.024.1.ph122 = phi i8 [ %.sroa.024.3, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit.i ], [ 1, %bb.at ], [ 1, %bb.an ]
  %lpad.loopexit.split-lp124 = landingpad { ptr, i32 }
          cleanup
  br label %.body83

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageEEB1c_.exit: ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.ap

bb.ap:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs3tZ2SXJA1qv_8jiff_cli.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageEEB1c_.exit
  %.sroa.024.2 = phi i1 [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageEEB1c_.exit ], [ %6, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs3tZ2SXJA1qv_8jiff_cli.exit ]
  %.sroa.0.0 = phi ptr [ %i.eb, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageEEB1c_.exit ], [ %.sroa.0.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs3tZ2SXJA1qv_8jiff_cli.exit ]
  %i.ek = load i64, ptr %i.u, align 8, !range !7, !noundef !6
  %i.el = icmp sgt i64 %i.ek, -1
  %or.cond = select i1 %i.el, i1 %.sroa.024.2, i1 false
  br i1 %or.cond, label %bb.bu, label %bb.bt

bb.aq:                                            ; preds = %bb.cf, %bb.bx, %.body85, %bb.af, %.body, %.body78
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.ar:                                            ; preds = %bb.g
  %i.en = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !nonnull !6, !noundef !6
  %i.eo = load i64, ptr %i.y, align 8, !noundef !6 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef %i.eo, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.as unwind label %.loopexit120

bb.as:                                            ; preds = %bb.ar
  %i.ep = load i64, ptr %i.h, align 8, !range !9, !noundef !6
  %i.eq = trunc nuw i64 %i.ep to i1
  %i.er = load i64, ptr %i.aa, align 8, !range !102, !noundef !6 ; 3 uses
  br i1 %i.eq, label %bb.at, label %bb.au, !prof !8

bb.at:                                            ; preds = %bb.as
  %i.es = load i64, ptr %i.ab, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.er, i64 %i.es) #19
          to label %bb.aw unwind label %.loopexit.split-lp121

bb.au:                                            ; preds = %bb.as
  %i.et = load ptr, ptr %i.ab, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.eu = icmp ule i64 %i.eo, %i.er
  call void @llvm.assume(i1 %i.eu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not54 = icmp eq i64 %i.eo, 0
  br i1 %.not54, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.et, ptr nonnull align 1 %i.en, i64 %i.eo, i1 false)
  br label %bb.ax

bb.aw:                                            ; preds = %bb.ba, %bb.at
  unreachable

bb.ax:                                            ; preds = %bb.av, %bb.au
  store i64 %i.er, ptr %i.n, align 8
  store ptr %i.et, ptr %.sroa.449.0..sroa_idx, align 8
  store i64 %i.eo, ptr %.sroa.550.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.et, ptr %i.z, align 8
  store i64 %i.eo, ptr %i.ac, align 8
  store i64 -9223372036854775807, ptr %i.m, align 8
  br label %bb.bc

bb.ay:                                            ; preds = %bb.g
  store i64 -1, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  switch i64 %i.ai, label %bb.d [
    i64 0, label %bb.az
    i64 1, label %bb.ba
    i64 2, label %bb.bb
  ], !prof !109

bb.az:                                            ; preds = %bb.ay
  %i.ev = load i32, ptr %.sroa.3.0..sroa_idx, align 8, !range !12, !noundef !6
  store i32 %i.ev, ptr %i.z, align 8
  store i64 -9223372036854775808, ptr %i.m, align 8
  br label %bb.bc

bb.ba:                                            ; preds = %bb.ay
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #19
          to label %bb.aw unwind label %.loopexit.split-lp127

bb.bb:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.az, %bb.ax
  %.sroa.024.3 = phi i8 [ 1, %bb.ax ], [ 1, %bb.az ], [ 0, %bb.bb ] ; 11 uses
  br i1 %.not56226, label %._crit_edge230, label %.lr.ph229

.body85:                                          ; preds = %.loopexit.split-lp127, %bb.bm, %bb.bh, %.thread112.loopexit.split-lp, %bb.bx
  %.sroa.024.4 = phi i8 [ %.sroa.024.3, %.thread112.loopexit.split-lp ], [ %.sroa.024.3, %bb.bx ], [ %.sroa.024.3, %bb.bh ], [ %.sroa.024.3, %bb.bm ], [ %.sroa.024.5.ph, %.loopexit.split-lp127 ]
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.thread112.loopexit.split-lp ], [ %lpad.thr_comm.split-lp, %bb.bx ], [ %i.fh, %bb.bh ], [ %i.fm, %bb.bm ], [ %lpad.loopexit.split-lp129, %.loopexit.split-lp127 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #17
          to label %.body83 unwind label %bb.aq

.loopexit.split-lp127:                            ; preds = %bb.ba, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3tZ2SXJA1qv_8jiff_cli.exit.i
  %.sroa.024.5.ph = phi i8 [ %.sroa.024.3, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3tZ2SXJA1qv_8jiff_cli.exit.i ], [ 1, %bb.ba ]
  %lpad.loopexit.split-lp129 = landingpad { ptr, i32 }
          cleanup
  br label %.body85

bb.bd:                                            ; preds = %bb.bj
  %.not56 = icmp eq ptr %i.ew, %i.ad
  br i1 %.not56, label %._crit_edge230, label %.lr.ph229

.lr.ph229:                                        ; preds = %bb.bc, %bb.bd
  %.sroa.019.0227 = phi ptr [ %i.ew, %bb.bd ], [ %3, %bb.bc ] ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.019.0227, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ex = load ptr, ptr %.sroa.019.0227, align 8, !nonnull !6, !noundef !6
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.019.0227, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !nonnull !6, !align !96, !noundef !6
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.fb = load ptr, ptr %i.fa, align 8, !invariant.load !6, !nonnull !6
  invoke void %i.fb(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.l, ptr noundef nonnull %i.ex, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.be unwind label %bb.bx

.thread112.loopexit.split-lp:                     ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3tZ2SXJA1qv_8jiff_cli.exit.i90, %._crit_edge230, %bb.br
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body85

bb.be:                                            ; preds = %.lr.ph229
  %i.fc = load i8, ptr %i.l, align 8, !range !10, !noundef !6
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %bb.bf, label %bb.bj

bb.bf:                                            ; preds = %bb.be
  %i.fe = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !nonnull !6, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.fg = load i64, ptr %i.m, align 8, !range !7, !alias.scope !110, !noundef !6
  %switch1.i = icmp slt i64 %i.fg, -9223372036854775806
  br i1 %switch1.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgWT32ugvpwR_6lexopt3ArgECs3tZ2SXJA1qv_8jiff_cli.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3tZ2SXJA1qv_8jiff_cli.exit.i unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body85 unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3tZ2SXJA1qv_8jiff_cli.exit.i: ; preds = %bb.bg
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgWT32ugvpwR_6lexopt3ArgECs3tZ2SXJA1qv_8jiff_cli.exit unwind label %.loopexit.split-lp127

bb.bj:                                            ; preds = %bb.be
  %i.fj = load i8, ptr %i.ae, align 1, !range !10, !noundef !6
  %i.fk = trunc nuw i8 %i.fj to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br i1 %i.fk, label %bb.bk, label %bb.bd

bb.bk:                                            ; preds = %bb.bj
  %i.fl = load i64, ptr %i.m, align 8, !range !7, !alias.scope !111, !noundef !6
  %switch1.i88 = icmp slt i64 %i.fl, -9223372036854775806
  br i1 %switch1.i88, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgWT32ugvpwR_6lexopt3ArgECs3tZ2SXJA1qv_8jiff_cli.exit95, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3tZ2SXJA1qv_8jiff_cli.exit.i90 unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body85 unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.fn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3tZ2SXJA1qv_8jiff_cli.exit.i90: ; preds = %bb.bl
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgWT32ugvpwR_6lexopt3ArgECs3tZ2SXJA1qv_8jiff_cli.exit95 unwind label %.thread112.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgWT32ugvpwR_6lexopt3ArgECs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.bf, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3tZ2SXJA1qv_8jiff_cli.exit.i, %bb.bs
  %.sroa.0.1 = phi ptr [ %i.fs, %bb.bs ], [ %i.ff, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3tZ2SXJA1qv_8jiff_cli.exit.i ], [ %i.ff, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.fo = load i64, ptr %i.n, align 8, !range !5, !alias.scope !112, !noundef !6
  %i.fp = icmp eq i64 %i.fo, -1
  br i1 %i.fp, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs3tZ2SXJA1qv_8jiff_cli.exit, label %bb.bo

bb.bo:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgWT32ugvpwR_6lexopt3ArgECs3tZ2SXJA1qv_8jiff_cli.exit
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit.i unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.fq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body83 unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit.i: ; preds = %bb.bo
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs3tZ2SXJA1qv_8jiff_cli.exit unwind label %.loopexit.split-lp121

._crit_edge230:                                   ; preds = %bb.bc, %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  invoke void @_RNvMs_CsgWT32ugvpwR_6lexoptNtB4_3Arg10unexpected(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j)
          to label %bb.br unwind label %.thread112.loopexit.split-lp

bb.br:                                            ; preds = %._crit_edge230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.fs = invoke noundef nonnull ptr @_RNvXs_NtCs8WPnInWCYsb_6anyhow5errorNtB6_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtCsgWT32ugvpwR_6lexopt5ErrorE4fromCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.k)
          to label %bb.bs unwind label %.thread112.loopexit.split-lp

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgWT32ugvpwR_6lexopt3ArgECs3tZ2SXJA1qv_8jiff_cli.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgWT32ugvpwR_6lexopt3ArgECs3tZ2SXJA1qv_8jiff_cli.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %6 = trunc nuw i8 %.sroa.024.3 to i1
  br label %bb.ap

bb.bt:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3tZ2SXJA1qv_8jiff_cli.exit, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %.loopexit

bb.bu:                                            ; preds = %bb.ap
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3tZ2SXJA1qv_8jiff_cli.exit unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ft = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %common.resume unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.fu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #14
  unreachable

common.resume:                                    ; preds = %.body83, %bb.cf, %bb.cd, %bb.bv
  %common.resume.op = phi { ptr, i32 } [ %i.gc, %bb.cd ], [ %i.ft, %bb.bv ], [ %.pn62, %bb.cf ], [ %.pn62, %.body83 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.bu
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
  br label %bb.bt

bb.bx:                                            ; preds = %.lr.ph229
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgWT32ugvpwR_6lexopt3ArgECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #17
          to label %.body85 unwind label %bb.aq

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgWT32ugvpwR_6lexopt3ArgECs3tZ2SXJA1qv_8jiff_cli.exit95: ; preds = %bb.bk, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3tZ2SXJA1qv_8jiff_cli.exit.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.fv = load i64, ptr %i.n, align 8, !range !5, !alias.scope !113, !noundef !6
  %i.fw = icmp eq i64 %i.fv, -1
  br i1 %i.fw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs3tZ2SXJA1qv_8jiff_cli.exit107, label %bb.by

bb.by:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgWT32ugvpwR_6lexopt3ArgECs3tZ2SXJA1qv_8jiff_cli.exit95
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit.i102 unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.fx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body83 unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.fy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit.i102: ; preds = %bb.by
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs3tZ2SXJA1qv_8jiff_cli.exit107 unwind label %.loopexit120

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs3tZ2SXJA1qv_8jiff_cli.exit107: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgWT32ugvpwR_6lexopt3ArgECs3tZ2SXJA1qv_8jiff_cli.exit95, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.fz = load i64, ptr %i.u, align 8, !range !7, !noundef !6
  %i.ga = icmp sgt i64 %i.fz, -1
  %7 = trunc nuw i8 %.sroa.024.3 to i1
  %or.cond3 = and i1 %i.ga, %7
  br i1 %or.cond3, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3tZ2SXJA1qv_8jiff_cli.exit109, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs3tZ2SXJA1qv_8jiff_cli.exit107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @_RNvMCsgWT32ugvpwR_6lexoptNtB2_6Parser4next(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %0)
  %i.gb = load i64, ptr %i.v, align 8, !range !11, !noundef !6 ; 2 uses
  %.not = icmp eq i64 %i.gb, -1
  br i1 %.not, label %bb.b, label %._crit_edge

bb.cc:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs3tZ2SXJA1qv_8jiff_cli.exit107
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3tZ2SXJA1qv_8jiff_cli.exit109 unwind label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.gc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %common.resume unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.gd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3tZ2SXJA1qv_8jiff_cli.exit109: ; preds = %bb.cc
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
  br label %bb.cb

bb.cf:                                            ; preds = %.body83
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u) #17
          to label %common.resume unwind label %bb.aq

.loopexit:                                        ; preds = %bb.b, %._crit_edge, %bb.bt
  %.sroa.0.3 = phi ptr [ %.sroa.0.0, %bb.bt ], [ %i.af, %._crit_edge ], [ null, %bb.b ]
  ret ptr %.sroa.0.3
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCs3oUPovFnLWP_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !116, !noundef !6 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !116, !nonnull !6, !noundef !6
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b ; 9 uses
  %i.j = trunc i32 %1 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 3 uses
  %i.m = lshr i32 %1, 6
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 2 uses
  %i.q = lshr i32 %1, 12
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = lshr i32 %1, 18
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !116, !nonnull !6, !noundef !6
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !116
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !122
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !123, !noundef !6 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !123, !nonnull !6, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !123
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !123
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !149, !noundef !6
  switch i64 %i.a, label %default.unreachable261 [
    i64 0, label %.preheader
    i64 1, label %bb.q
    i64 2, label %bb.r
  ]

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.d = load i8, ptr %i.c, align 2, !range !10
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !6 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.j = load i64, ptr %i.i, align 8              ; 16 uses
  br i1 %i.e, label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %.promoted206 = load i8, ptr %i.f, align 8      ; 4 uses
  %.promoted157 = load i64, ptr %i.b, align 8     ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  %i.k = trunc nuw i8 %.promoted206 to i1         ; 2 uses
  %i.l = icmp eq i64 %.promoted157, 0
  br i1 %i.l, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader
  %.not.i.i.us.peel = icmp ult i64 %.promoted157, %i.j
  br i1 %.not.i.i.us.peel, label %bb.c, label %.split.i.i.us.peel

.split.i.i.us.peel:                               ; preds = %bb.b
  %i.m = icmp eq i64 %.promoted157, %i.j
  br i1 %i.m, label %bb.d, label %.split.us161
end_hunk_0
