Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.07?download=true
inline.NumInlined: 1670
inline.NumDeleted: 581
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_RNvNtNtCs8frGy5WneL6_4fish8builtins6printf6printf:bb.a
  %.not.i = icmp eq i64 %.sroa.0116.0.i, 0
  br i1 %.not.i, label %.loopexit385.i, label %bb.ai

.invoke2654:                                      ; preds = %.noexc67, %bb.ax, %bb.av, %bb.ag, %bb.jg, %.lr.ph, %.lr.ph3150
  %i.ig = phi ptr [ @1565, %.lr.ph ], [ @1567, %bb.jg ], [ @1556, %.lr.ph3150 ], [ @1545, %bb.ag ], [ @1550, %bb.av ], [ @1551, %bb.ax ], [ @1562, %.noexc67 ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ig) #31
          to label %.cont2655 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont2655:                                        ; preds = %.invoke2654
  unreachable

bb.ai:                                            ; preds = %bb.ah
  %.not197.i = icmp eq i64 %.sroa.26.0.i, 0
  br i1 %.not197.i, label %.invoke2652, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ih = load ptr, ptr %.sroa.074.0.i, align 8, !alias.scope !2254, !noalias !2263, !nonnull !10, !align !12, !noundef !10
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.074.0.i, i64 8 ; 2 uses
  %i.ij = load i64, ptr %i.ii, align 8, !alias.scope !2254, !noalias !2263, !noundef !10
  %i.ik = invoke fastcc noundef i64 @_RINvNtNtCs8frGy5WneL6_4fish8builtins6printf21string_to_scalar_typexEB6_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ih, i64 noundef %i.ij, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bn)
          to label %.noexc48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc48:                                         ; preds = %bb.aj
  %i.il = add i64 %i.ik, 2147483648
  %or.cond.i = icmp ult i64 %i.il, 4294967296     ; 2 uses
  br i1 %or.cond.i, label %bb.at, label %bb.ak

bb.ak:                                            ; preds = %.noexc48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !2255
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !2255
  store i64 0, ptr %i.bi, align 8, !noalias !2255
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4161.0..sroa_idx.i, align 8, !noalias !2255
  store i64 0, ptr %.sroa.5162.0..sroa_idx.i, align 8, !noalias !2255
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !2255
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !2255
  store ptr @1547, ptr %i.cb, align 8, !noalias !2255
  store i64 23, ptr %i.cc, align 8, !noalias !2255
  store i64 -1, ptr %i.bg, align 8, !noalias !2255
  %i.im = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bg)
          to label %bb.al unwind label %.loopexit.split-lp380.i, !noalias !2254 ; 2 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.am, %.loopexit.split-lp380.i, %.loopexit379.i
  %.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp382.i, %.loopexit.split-lp380.i ], [ %lpad.loopexit381.i, %.loopexit379.i ], [ %lpad.phi390.i, %bb.am ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bg) #28
          to label %.body.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2254

.loopexit379.i:                                   ; preds = %.noexc225.i.preheader
  %lpad.loopexit381.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i

.loopexit.split-lp380.i:                          ; preds = %bb.ak
  %lpad.loopexit.split-lp382.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !2255
  %i.in = extractvalue { ptr, i64 } %i.im, 1
  %i.io = extractvalue { ptr, i64 } %i.im, 0
  %i.ip = load ptr, ptr %.sroa.074.0.i, align 8, !alias.scope !2254, !noalias !2263, !nonnull !10, !align !12, !noundef !10
  %i.iq = load i64, ptr %i.ii, align 8, !alias.scope !2254, !noalias !2263, !noundef !10
  store i64 1, ptr %i.bf, align 8, !noalias !2255
  store ptr %i.ip, ptr %.sroa.4140.0..sroa_idx.i, align 8, !noalias !2255
  store i64 %i.iq, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2255
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.bh, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.io, i64 noundef %i.in, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @67, ptr noalias nofree noundef nonnull align 8 %i.bf, i64 noundef 1)
          to label %bb.an unwind label %.loopexit386.i, !noalias !2254

.loopexit386.i:                                   ; preds = %bb.al
  %lpad.loopexit388.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.loopexit.split-lp387.i:                          ; preds = %bb.ao
  %lpad.loopexit.split-lp389.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.am:                                            ; preds = %.loopexit386.i, %.loopexit.split-lp387.i
  %lpad.phi390.i = phi { ptr, i32 } [ %lpad.loopexit388.i, %.loopexit386.i ], [ %lpad.loopexit.split-lp389.i, %.loopexit.split-lp387.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bf)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2254

bb.an:                                            ; preds = %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !2269)
  %i.ir = load i8, ptr %i.bh, align 8, !range !13, !alias.scope !2269, !noalias !2270, !noundef !10
  %i.is = trunc nuw i8 %i.ir to i1
  br i1 %i.is, label %bb.ao, label %.noexc225.i.preheader, !prof !17

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !2271
  %i.it = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.iu = load i8, ptr %i.it, align 1, !range !27, !alias.scope !2269, !noalias !2270, !noundef !10
  store i8 %i.iu, ptr %i.as, align 1, !noalias !2271
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1480, i64 noundef 43, ptr noundef nonnull %i.as, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1482, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1548) #31
          to label %.noexc220.i unwind label %.loopexit.split-lp387.i, !noalias !2254

.noexc220.i:                                      ; preds = %bb.ao
  unreachable

.noexc225.i.preheader:                            ; preds = %bb.an
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bf)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit226.i unwind label %.loopexit379.i, !noalias !2254

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit226.i: ; preds = %.noexc225.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !2255
  %i.iv = load i64, ptr %i.bg, align 8, !range !20, !alias.scope !2272, !noalias !2255, !noundef !10
  %i.iw = icmp eq i64 %i.iv, -1
  br i1 %i.iw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i, label %bb.ap

bb.ap:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit226.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.aq, !noalias !2254

bb.aq:                                            ; preds = %bb.ap
  %i.ix = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %.body.i unwind label %bb.ar, !noalias !2254

bb.ar:                                            ; preds = %bb.aq
  %i.iy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29, !noalias !2254
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.ap
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i unwind label %bb.as, !noalias !2254

.body.i:                                          ; preds = %bb.as, %bb.aq, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i
  %.pn199.i = phi { ptr, i32 } [ %.pn.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i ], [ %i.iz, %bb.as ], [ %i.ix, %bb.aq ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bi) #28
          to label %.body unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2254

bb.as:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit226.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !2255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !2255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i64 24, i1 false), !noalias !2255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !2255
  store ptr null, ptr %i.cd, align 8, !alias.scope !2273, !noalias !2274
  store ptr null, ptr %i.ce, align 8, !alias.scope !2273, !noalias !2274
  store ptr null, ptr %i.cf, align 8, !alias.scope !2273, !noalias !2274
  store i8 0, ptr %i.cg, align 8, !alias.scope !2273, !noalias !2274
  invoke fastcc void @_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins6printfNtB5_5State14nonfatal_error(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bn, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.bj)
          to label %.noexc50 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc50:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i
  store i8 1, ptr %i.bu, align 8, !alias.scope !2275, !noalias !2276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !2255
  br label %bb.at

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.be, %bb.iy, %bb.am, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i, %.body.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit239.i, %.body244.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit251.i, %.body256.i
  %lpad.loopexit.split-lp2675 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29, !noalias !2254
  unreachable

bb.at:                                            ; preds = %.noexc50, %.noexc48
  %i.ja = add nsw i64 %.sroa.0116.0.i, -1
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.074.0.i, i64 16
  %i.jc = add nsw i64 %.sroa.26.0.i, -1
  br label %.loopexit385.i

.loopexit385.i:                                   ; preds = %.noexc77, %bb.at, %bb.ah, %.noexc44
  %.sroa.4.1.i = phi i64 [ %i.ik, %bb.at ], [ 0, %bb.ah ], [ undef, %.noexc44 ], [ undef, %.noexc77 ] ; 9 uses
  %.sroa.0138.1.i = phi i1 [ %or.cond.i, %bb.at ], [ true, %bb.ah ], [ false, %.noexc44 ], [ false, %.noexc77 ] ; 5 uses
  %.sroa.0126.1.i = phi i64 [ %i.ie, %bb.at ], [ %i.ie, %bb.ah ], [ %.sroa.0126.0847.i, %.noexc44 ], [ %i.ta, %.noexc77 ] ; 4 uses
  %.sroa.0116.2.i = phi i64 [ %i.ja, %bb.at ], [ 0, %bb.ah ], [ %.sroa.0116.0.i, %.noexc44 ], [ %.sroa.0116.0.i, %.noexc77 ] ; 5 uses
  %.sroa.26.2.i = phi i64 [ %i.jc, %bb.at ], [ %.sroa.26.0.i, %bb.ah ], [ %.sroa.26.0.i, %.noexc44 ], [ %.sroa.26.0.i, %.noexc77 ] ; 6 uses
  %.sroa.074.2.i = phi ptr [ %i.jb, %bb.at ], [ %.sroa.074.0.i, %bb.ah ], [ %.sroa.074.0.i, %.noexc44 ], [ %.sroa.074.0.i, %.noexc77 ] ; 8 uses
  %.sroa.47.3.i = phi i64 [ %i.ic, %bb.at ], [ %i.ic, %bb.ah ], [ %.sroa.47.2848.i, %.noexc44 ], [ %i.sx, %.noexc77 ] ; 5 uses
  %.sroa.0.3.i = phi ptr [ %i.id, %bb.at ], [ %i.id, %bb.ah ], [ %.sroa.0.2849.i, %.noexc44 ], [ %i.sy, %.noexc77 ] ; 4 uses
  %i.jd = invoke noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.0.3.i, i64 noundef %.sroa.47.3.i, i64 noundef 0)
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc51:                                         ; preds = %.loopexit385.i
  %i.je = icmp eq i32 %i.jd, 46
  br i1 %i.je, label %bb.au, label %.loopexit378.i

.lr.ph.i:                                         ; preds = %.noexc77
  %i.jf = icmp eq i64 %i.sx, 0
  br i1 %i.jf, label %.invoke, label %.lr.ph, !prof !2277

bb.au:                                            ; preds = %.noexc51
  %i.jg = icmp eq i64 %.sroa.47.3.i, 0
  br i1 %i.jg, label %.invoke, label %bb.av, !prof !17

bb.av:                                            ; preds = %bb.au
  %i.jh = add i64 %.sroa.47.3.i, -1               ; 6 uses
  %i.ji = add i64 %.sroa.0126.1.i, 1              ; 3 uses
  %i.jj = icmp eq i64 %.sroa.0126.1.i, -1
  br i1 %i.jj, label %.invoke2654, label %_RNvNtNtCs8frGy5WneL6_4fish8builtins6printf32modify_allowed_format_specifiers.exit237.i

_RNvNtNtCs8frGy5WneL6_4fish8builtins6printf32modify_allowed_format_specifiers.exit237.i: ; preds = %bb.av
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i, i64 4 ; 4 uses
  store i8 0, ptr %i.ch, align 1, !alias.scope !2278, !noalias !2279
  %i.jk = invoke noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef %i.jh, i64 noundef 0)
          to label %.noexc53 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc53:                                         ; preds = %_RNvNtNtCs8frGy5WneL6_4fish8builtins6printf32modify_allowed_format_specifiers.exit237.i
  %i.jl = icmp eq i32 %i.jk, 42
  br i1 %i.jl, label %bb.aw, label %.preheader.i

.preheader.i:                                     ; preds = %.noexc53
  %i.jm = invoke noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef %i.jh, i64 noundef 0)
          to label %.noexc54 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc54:                                         ; preds = %.preheader.i
  %i.jn = add nsw i32 %i.jm, -48
  %.sroa.0.0.i248856.i = icmp ult i32 %i.jn, 10
  br i1 %.sroa.0.0.i248856.i, label %.lr.ph860.i.preheader, label %.loopexit378.i

.lr.ph860.i.preheader:                            ; preds = %.noexc54
  %i.jo = icmp eq i64 %i.jh, 0
  br i1 %i.jo, label %.invoke, label %.lr.ph3150, !prof !2268

bb.aw:                                            ; preds = %.noexc53
  %i.jp = icmp eq i64 %i.jh, 0
  br i1 %i.jp, label %.invoke, label %bb.ax, !prof !17

bb.ax:                                            ; preds = %bb.aw
  %i.jq = add i64 %.sroa.47.3.i, -2               ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i, i64 8 ; 2 uses
  %i.js = add i64 %.sroa.0126.1.i, 2              ; 3 uses
  %i.jt = icmp ult i64 %i.js, %i.ji
  br i1 %i.jt, label %.invoke2654, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.not201.i = icmp eq i64 %.sroa.0116.2.i, 0
  br i1 %.not201.i, label %.loopexit378.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.not202.i = icmp eq i64 %.sroa.26.2.i, 0
  br i1 %.not202.i, label %.invoke2652, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ju = load ptr, ptr %.sroa.074.2.i, align 8, !alias.scope !2254, !noalias !2263, !nonnull !10, !align !12, !noundef !10
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.074.2.i, i64 8 ; 2 uses
  %i.jw = load i64, ptr %i.jv, align 8, !alias.scope !2254, !noalias !2263, !noundef !10
  %i.jx = invoke fastcc noundef i64 @_RINvNtNtCs8frGy5WneL6_4fish8builtins6printf21string_to_scalar_typexEB6_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ju, i64 noundef %i.jw, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bn)
          to label %.noexc58 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

.noexc58:                                         ; preds = %bb.ba
  %i.jy = icmp slt i64 %i.jx, 0
  br i1 %i.jy, label %bb.bl, label %bb.bb

bb.bb:                                            ; preds = %.noexc58
  %i.jz = icmp samesign ugt i64 %i.jx, 2147483647
  br i1 %i.jz, label %bb.bc, label %bb.bl

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !2255
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !2255
  store i64 0, ptr %i.bd, align 8, !noalias !2255
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4170.0..sroa_idx.i, align 8, !noalias !2255
  store i64 0, ptr %.sroa.5171.0..sroa_idx.i, align 8, !noalias !2255
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !2255
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !2255
  store ptr @1553, ptr %i.ci, align 8, !noalias !2255
  store i64 21, ptr %i.cj, align 8, !noalias !2255
  store i64 -1, ptr %i.bb, align 8, !noalias !2255
  %i.ka = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bb)
          to label %bb.bd unwind label %.loopexit.split-lp374.i, !noalias !2254 ; 2 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit239.i: ; preds = %bb.be, %.loopexit.split-lp374.i, %.loopexit373.i
  %.pn203.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp376.i, %.loopexit.split-lp374.i ], [ %lpad.loopexit375.i, %.loopexit373.i ], [ %lpad.phi395.i, %bb.be ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bb) #28
          to label %.body244.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2254

.loopexit373.i:                                   ; preds = %.noexc240.i.preheader
  %lpad.loopexit375.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit239.i

.loopexit.split-lp374.i:                          ; preds = %bb.bc
  %lpad.loopexit.split-lp376.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit239.i

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !2255
  %i.kb = extractvalue { ptr, i64 } %i.ka, 1
  %i.kc = extractvalue { ptr, i64 } %i.ka, 0
  %i.kd = load ptr, ptr %.sroa.074.2.i, align 8, !alias.scope !2254, !noalias !2263, !nonnull !10, !align !12, !noundef !10
  %i.ke = load i64, ptr %i.jv, align 8, !alias.scope !2254, !noalias !2263, !noundef !10
  store i64 1, ptr %i.ba, align 8, !noalias !2255
  store ptr %i.kd, ptr %.sroa.4142.0..sroa_idx.i, align 8, !noalias !2255
  store i64 %i.ke, ptr %.sroa.5143.0..sroa_idx.i, align 8, !noalias !2255
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.bc, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.kc, i64 noundef %i.kb, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @67, ptr noalias nofree noundef nonnull align 8 %i.ba, i64 noundef 1)
          to label %bb.bf unwind label %.loopexit391.i, !noalias !2254

.loopexit391.i:                                   ; preds = %bb.bd
  %lpad.loopexit393.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

.loopexit.split-lp392.i:                          ; preds = %bb.bg
  %lpad.loopexit.split-lp394.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.be:                                            ; preds = %.loopexit391.i, %.loopexit.split-lp392.i
  %lpad.phi395.i = phi { ptr, i32 } [ %lpad.loopexit393.i, %.loopexit391.i ], [ %lpad.loopexit.split-lp394.i, %.loopexit.split-lp392.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ba)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit239.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2254

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.experimental.noalias.scope.decl(metadata !2280)
  %i.kf = load i8, ptr %i.bc, align 8, !range !13, !alias.scope !2280, !noalias !2281, !noundef !10
  %i.kg = trunc nuw i8 %i.kf to i1
  br i1 %i.kg, label %bb.bg, label %.noexc240.i.preheader, !prof !17

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !2282
  %i.kh = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.ki = load i8, ptr %i.kh, align 1, !range !27, !alias.scope !2280, !noalias !2281, !noundef !10
  store i8 %i.ki, ptr %i.at, align 1, !noalias !2282
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1480, i64 noundef 43, ptr noundef nonnull %i.at, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1482, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1554) #31
          to label %.noexc218.i unwind label %.loopexit.split-lp392.i, !noalias !2254

.noexc218.i:                                      ; preds = %bb.bg
  unreachable

.noexc240.i.preheader:                            ; preds = %bb.bf
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ba)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit241.i unwind label %.loopexit373.i, !noalias !2254

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit241.i: ; preds = %.noexc240.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !2255
  %i.kj = load i64, ptr %i.bb, align 8, !range !20, !alias.scope !2283, !noalias !2255, !noundef !10
  %i.kk = icmp eq i64 %i.kj, -1
  br i1 %i.kk, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit247.i, label %bb.bh

bb.bh:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit241.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i243.i unwind label %bb.bi, !noalias !2254

bb.bi:                                            ; preds = %bb.bh
  %i.kl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %.body244.i unwind label %bb.bj, !noalias !2254

bb.bj:                                            ; preds = %bb.bi
  %i.km = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29, !noalias !2254
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i243.i: ; preds = %bb.bh
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit247.i unwind label %bb.bk, !noalias !2254

.body244.i:                                       ; preds = %bb.bk, %bb.bi, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit239.i
  %.pn205.i = phi { ptr, i32 } [ %.pn203.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit239.i ], [ %i.kn, %bb.bk ], [ %i.kl, %bb.bi ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bd) #28
          to label %.body unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2254

bb.bk:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i243.i
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %.body244.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit247.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i243.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit241.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !2255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !2255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 24, i1 false), !noalias !2255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !2255
  store ptr null, ptr %i.ck, align 8, !alias.scope !2284, !noalias !2285
  store ptr null, ptr %i.cl, align 8, !alias.scope !2284, !noalias !2285
  store ptr null, ptr %i.cm, align 8, !alias.scope !2284, !noalias !2285
  store i8 0, ptr %i.cn, align 8, !alias.scope !2284, !noalias !2285
  invoke fastcc void @_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins6printfNtB5_5State14nonfatal_error(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bn, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.be)
          to label %.noexc60 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc60:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit247.i
  store i8 1, ptr %i.bu, align 8, !alias.scope !2286, !noalias !2287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !2255
  br label %bb.bl

bb.bl:                                            ; preds = %.noexc60, %bb.bb, %.noexc58
  %.sroa.5146.0.i = phi i64 [ -1, %.noexc58 ], [ undef, %.noexc60 ], [ %i.jx, %bb.bb ]
  %.sroa.0145.0.i = phi i1 [ true, %.noexc58 ], [ false, %.noexc60 ], [ true, %bb.bb ]
  %i.ko = add nsw i64 %.sroa.0116.2.i, -1
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.074.2.i, i64 16
  %i.kq = add nsw i64 %.sroa.26.2.i, -1
  br label %.loopexit378.i

.lr.ph860.i:                                      ; preds = %.noexc62
  %i.kr = icmp eq i64 %i.kt, 0
  br i1 %i.kr, label %.invoke, label %.lr.ph3150, !prof !2277

.loopexit378.i:                                   ; preds = %.noexc62, %bb.bl, %bb.ay, %.noexc54, %.noexc51
  %.sroa.5146.1.i = phi i64 [ %.sroa.5146.0.i, %bb.bl ], [ undef, %.noexc51 ], [ 0, %bb.ay ], [ undef, %.noexc54 ], [ undef, %.noexc62 ] ; 8 uses
  %.sroa.0145.1.i = phi i1 [ %.sroa.0145.0.i, %bb.bl ], [ false, %.noexc51 ], [ true, %bb.ay ], [ false, %.noexc54 ], [ false, %.noexc62 ] ; 8 uses
  %.sroa.0126.4.i = phi i64 [ %i.js, %bb.bl ], [ %.sroa.0126.1.i, %.noexc51 ], [ %i.js, %bb.ay ], [ %i.ji, %.noexc54 ], [ %i.kw, %.noexc62 ] ; 9 uses
end_hunk_0
