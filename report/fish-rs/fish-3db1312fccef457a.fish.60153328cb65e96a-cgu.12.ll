Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.12?download=true
inline.NumInlined: 2412
inline.NumDeleted: 784
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext9eval_node:bb.a
  %.pn21.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp124.i, %.loopexit.split-lp122.i ], [ %lpad.loopexit123.i, %.loopexit121.i ], [ %i.cj, %bb.z ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #36
          to label %.thread.i unwind label %.loopexit.split-lp118.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1704

.loopexit121.i:                                   ; preds = %.noexc44.i.preheader
  %lpad.loopexit123.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i

.loopexit.split-lp122.i:                          ; preds = %bb.x
  %lpad.loopexit.split-lp124.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i

bb.y:                                             ; preds = %bb.x
  %i.cf = extractvalue { ptr, i64 } %i.ce, 0
  %i.cg = extractvalue { ptr, i64 } %i.ce, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1706
  %i.ch = load ptr, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !1706, !nonnull !9, !noundef !9
  %i.ci = load i64, ptr %.sroa.514.0..sroa_idx.i, align 8, !noalias !1706, !noundef !9
  store i64 1, ptr %i.i, align 8, !noalias !1706
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.ch, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1706
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.ci, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1706
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.cf, i64 noundef %i.cg, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @17, ptr noalias nofree noundef nonnull align 8 %i.i, i64 noundef 1)
          to label %bb.aa unwind label %bb.z, !noalias !1704

bb.z:                                             ; preds = %bb.ab, %bb.y
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i unwind label %.loopexit.split-lp118.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1704

bb.aa:                                            ; preds = %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !1711)
  %i.ck = load i8, ptr %i.j, align 8, !range !31, !alias.scope !1711, !noalias !1712, !noundef !9
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.ab, label %.noexc44.i.preheader, !prof !13

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1713
  %i.cm = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.cn = load i8, ptr %i.cm, align 1, !range !36, !alias.scope !1711, !noalias !1712, !noundef !9
  store i8 %i.cn, ptr %i.a, align 1, !noalias !1713
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @60, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #34
          to label %.noexc26.i unwind label %bb.z, !noalias !1704

.noexc26.i:                                       ; preds = %bb.ab
  unreachable

.noexc44.i.preheader:                             ; preds = %bb.aa
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit45.i unwind label %.loopexit121.i, !noalias !1704

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit45.i: ; preds = %.noexc44.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1706
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1706
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !1706
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1706
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.ac, !noalias !1704

bb.ac:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit45.i
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body.i unwind label %bb.ad, !noalias !1704

bb.ad:                                            ; preds = %bb.ac
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33, !noalias !1704
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit45.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.ae, !noalias !1704

bb.ae:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ae, %bb.ac
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cq, %bb.ae ], [ %i.co, %bb.ac ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !1706
  br label %.thread.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !1706
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1706
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !1704
  %i.cr = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 121) 48, i64 noundef 8) #32, !noalias !1704 ; 3 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %bb.af, label %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit.i, !prof !13

bb.af:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #35
          to label %.noexc47.i unwind label %.thread93.i.a, !noalias !1704

.noexc47.i:                                       ; preds = %bb.af
  unreachable

_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cr, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false), !noalias !1704
  store i64 1, ptr %i.h, align 8, !noalias !1706
  %i.ct = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.cr, ptr %i.ct, align 8, !noalias !1706
  %i.cu = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 1, ptr %i.cu, align 8, !noalias !1706
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val28.i = load ptr, ptr %i.cv, align 8, !alias.scope !1704, !noalias !1714
  invoke fastcc void @_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext13report_errors(ptr %.val28.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.ah unwind label %bb.ag

bb.ag:                                            ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #36
          to label %.thread86.i unwind label %.loopexit.split-lp118.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1704

bb.ah:                                            ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.aj unwind label %bb.ai, !noalias !1704

bb.ai:                                            ; preds = %bb.ah
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.thread86.i unwind label %bb.ak, !noalias !1704

bb.aj:                                            ; preds = %bb.ah
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEEB1c_.exit.i unwind label %bb.v, !noalias !1704

bb.ak:                                            ; preds = %bb.ai
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33, !noalias !1704
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEEB1c_.exit.i: ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1706
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1706
  br label %bb.al

bb.al:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEEB1c_.exit79.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEEB1c_.exit.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext13eval_job_list.exit unwind label %bb.am, !noalias !1704

bb.am:                                            ; preds = %bb.al
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %common.resume.i unwind label %bb.an, !noalias !1704

bb.an:                                            ; preds = %bb.am
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33, !noalias !1704
  unreachable

common.resume.i:                                  ; preds = %bb.aw, %bb.am, %.thread86.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.du, %bb.aw ], [ %i.cz, %bb.am ], [ %.pn23.pn.i, %.thread86.i ]
  resume { ptr, i32 } %common.resume.op.i

.loopexit.split-lp118.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.z, %.thread86.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i, %bb.ag, %.thread.i, %bb.bd, %bb.bm, %.thread100.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33
  unreachable

.thread.i:                                        ; preds = %.body.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i, %.thread93.i.a
  %.pn2385.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.thread93.i.a ], [ %.pn21.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i ], [ %eh.lpad-body.i, %.body.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #36
          to label %.thread86.i unwind label %.loopexit.split-lp118.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1704

bb.ao:                                            ; preds = %.loopexit126.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.dc = load i64, ptr %i.db, align 8, !noalias !1704, !noundef !9 ; 2 uses
  %i.dd = icmp ult i64 %5, %i.dc
  br i1 %i.dd, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %5, i64 noundef %i.dc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #34
          to label %.noexc54.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !1704

.noexc54.i:                                       ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.de = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.df = load ptr, ptr %i.de, align 8, !noalias !1704, !nonnull !9, !noundef !9
  %i.dg = getelementptr inbounds nuw [40 x i8], ptr %i.df, i64 %5
  %i.dh = getelementptr i8, ptr %i.dg, i64 32
  %.val33.i = load i8, ptr %i.dh, align 8, !range !33, !noalias !1704, !noundef !9 ; 3 uses
  %i.di = icmp ne i8 %.val33.i, 5
  call void @llvm.assume(i1 %i.di)
  %6 = add nsw i8 %.val33.i, -2
  %7 = icmp samesign ugt i8 %.val33.i, 1
  %narrow.i.i = select i1 %7, i8 %6, i8 3
  switch i8 %narrow.i.i, label %_RNvXsE_NtCs8frGy5WneL6_4fish6parserNtB5_9BlockTypeNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit60.thread.i [
    i8 6, label %bb.ar
    i8 5, label %bb.au
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.dj = invoke noundef nonnull align 8 ptr @_RNvMNtCs8frGy5WneL6_4fish17operation_contextNtB2_16OperationContext6parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !1704

bb.as:                                            ; preds = %bb.ar
  %i.dk = invoke noundef zeroext i1 @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser29function_stack_is_overflowing(ptr noundef nonnull align 8 %i.dj)
          to label %bb.at unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !1704

bb.at:                                            ; preds = %bb.as
  br i1 %i.dk, label %bb.ay, label %_RNvXsE_NtCs8frGy5WneL6_4fish6parserNtB5_9BlockTypeNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit60.thread.i

bb.au:                                            ; preds = %bb.aq
  %i.dl = invoke noundef nonnull align 8 ptr @_RNvMNtCs8frGy5WneL6_4fish17operation_contextNtB2_16OperationContext6parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.av unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !1704

_RNvXsE_NtCs8frGy5WneL6_4fish6parserNtB5_9BlockTypeNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit60.thread.i: ; preds = %bb.av, %bb.at, %bb.aq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val31.i) ]
  %.idx.i.i = mul nuw nsw i64 %.val32.i, 160
  %i.dm = getelementptr inbounds nuw i8, ptr %.val31.i, i64 %.idx.i.i
  br i1 %.not.i.i, label %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext12run_job_list.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvXsE_NtCs8frGy5WneL6_4fish6parserNtB5_9BlockTypeNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit60.thread.i, %.noexc61.i
  %.sroa.01.01.i.i = phi ptr [ %i.do, %.noexc61.i ], [ %.val31.i, %_RNvXsE_NtCs8frGy5WneL6_4fish6parserNtB5_9BlockTypeNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit60.thread.i ] ; 2 uses
  %i.dn = invoke fastcc noundef i8 @_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext30test_and_run_1_job_conjunction(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %.sroa.01.01.i.i)
          to label %.noexc61.i unwind label %.loopexit.i

.noexc61.i:                                       ; preds = %.lr.ph.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.01.01.i.i, i64 160 ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.dm
  br i1 %i.dp, label %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext12run_job_list.exit.i, label %.lr.ph.i.i

bb.av:                                            ; preds = %bb.au
  %i.dq = getelementptr i8, ptr %i.dl, i64 408
  %.val38.i = load ptr, ptr %i.dq, align 8, !noalias !1704, !nonnull !9, !noundef !9
  %i.dr = getelementptr inbounds nuw i8, ptr %.val38.i, i64 16
  %i.ds = load i64, ptr %i.dr, align 8, !noalias !1704, !noundef !9
  %i.dt = icmp sgt i64 %i.ds, 499
  br i1 %i.dt, label %bb.ay, label %_RNvXsE_NtCs8frGy5WneL6_4fish6parserNtB5_9BlockTypeNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit60.thread.i

_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext12run_job_list.exit.i: ; preds = %.noexc61.i, %_RNvXsE_NtCs8frGy5WneL6_4fish6parserNtB5_9BlockTypeNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit60.thread.i
  %.sroa.0.0.lcssa.i.i = phi i8 [ 0, %_RNvXsE_NtCs8frGy5WneL6_4fish6parserNtB5_9BlockTypeNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit60.thread.i ], [ %i.dn, %.noexc61.i ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext13eval_job_list.exit unwind label %bb.aw

bb.aw:                                            ; preds = %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext12run_job_list.exit.i
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %common.resume.i unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.ay:                                            ; preds = %bb.av, %bb.at
  %i.dw = invoke { i32, i32 } @_RNvYNtNtCs8frGy5WneL6_4fish3ast7JobListNtB4_4Node12source_rangeB6_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ag)
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !1704 ; 2 uses

bb.az:                                            ; preds = %bb.ay
  %i.dx = extractvalue { i32, i32 } %i.dw, 0      ; 2 uses
  %i.dy = extractvalue { i32, i32 } %i.dw, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1706
  store i64 0, ptr %i.g, align 8, !alias.scope !1715, !noalias !1706
  %.sroa.42.0..sroa_idx.i65.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.42.0..sroa_idx.i65.i, align 8, !alias.scope !1715, !noalias !1706
  %.sroa.53.0..sroa_idx.i66.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.53.0..sroa_idx.i66.i, i8 0, i64 25, i1 false), !alias.scope !1715, !noalias !1706
  %i.dz = invoke noundef i64 @_RNvMs0_NtCs8frGy5WneL6_4fish15parse_constantsNtB5_11SourceRange5start(i32 noundef %i.dx, i32 noundef %i.dy)
          to label %bb.bb unwind label %.thread114.i, !noalias !1704

.thread114.i:                                     ; preds = %bb.bl, %bb.bb, %bb.az
  %lpad.thr_comm112.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread100.i

bb.ba:                                            ; preds = %bb.bp
  %lpad.thr_comm.split-lp113.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread86.i

bb.bb:                                            ; preds = %bb.az
  %i.ea = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %i.dz, ptr %i.ea, align 8, !noalias !1706
  %i.eb = invoke noundef i64 @_RNvMs0_NtCs8frGy5WneL6_4fish15parse_constantsNtB5_11SourceRange6length(i32 noundef %i.dx, i32 noundef %i.dy)
          to label %bb.bc unwind label %.thread114.i, !noalias !1704

bb.bc:                                            ; preds = %bb.bb
  %i.ec = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 %i.eb, ptr %i.ec, align 8, !noalias !1706
  %i.ed = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i8 1, ptr %i.ed, align 8, !noalias !1706
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1706
  store i64 0, ptr %i.e, align 8, !noalias !1706
  %.sroa.49.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.49.0..sroa_idx12.i, align 8, !noalias !1706
  %.sroa.514.0..sroa_idx17.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.514.0..sroa_idx17.i, align 8, !noalias !1706
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1706
  %i.ee = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69)
          to label %bb.be unwind label %bb.bd, !noalias !1704 ; 2 uses

bb.bd:                                            ; preds = %bb.bg, %bb.be, %bb.bc
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #36
          to label %.thread100.i unwind label %.loopexit.split-lp118.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1704

bb.be:                                            ; preds = %bb.bc
  %i.eg = extractvalue { ptr, i64 } %i.ee, 0
  %i.eh = extractvalue { ptr, i64 } %i.ee, 1
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.eg, i64 noundef %i.eh, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @17, ptr noalias nofree noundef nonnull align 8 inttoptr (i64 8 to ptr), i64 noundef 0)
          to label %bb.bf unwind label %bb.bd, !noalias !1704

bb.bf:                                            ; preds = %bb.be
  call void @llvm.experimental.noalias.scope.decl(metadata !1716)
  %i.ei = load i8, ptr %i.d, align 8, !range !31, !alias.scope !1716, !noalias !1717, !noundef !9
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.bg, label %bb.bh, !prof !13

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1718
  %i.ek = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.el = load i8, ptr %i.ek, align 1, !range !36, !alias.scope !1716, !noalias !1717, !noundef !9
  store i8 %i.el, ptr %i.b, align 1, !noalias !1718
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @60, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #34
          to label %.noexc.i unwind label %bb.bd, !noalias !1704

.noexc.i:                                         ; preds = %bb.bg
  unreachable

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1706
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !1706
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1706
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i68.i unwind label %bb.bi, !noalias !1704

bb.bi:                                            ; preds = %bb.bh
  %i.em = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body69.i unwind label %bb.bj, !noalias !1704

bb.bj:                                            ; preds = %bb.bi
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33, !noalias !1704
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i68.i: ; preds = %bb.bh
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit72.i unwind label %bb.bk, !noalias !1704

bb.bk:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i68.i
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %.body69.i

.body69.i:                                        ; preds = %bb.bk, %bb.bi
  %eh.lpad-body70.i = phi { ptr, i32 } [ %i.eo, %bb.bk ], [ %i.em, %bb.bi ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !1706
  br label %.thread100.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit72.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i68.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !1706
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1706
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !1704
  %i.ep = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 121) 48, i64 noundef 8) #32, !noalias !1704 ; 3 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %bb.bl, label %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit74.i, !prof !13

bb.bl:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit72.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #35
          to label %.noexc73.i unwind label %.thread114.i, !noalias !1704

.noexc73.i:                                       ; preds = %bb.bl
  unreachable

_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit74.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit72.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ep, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !1704
  store i64 1, ptr %i.c, align 8, !noalias !1706
  %i.er = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ep, ptr %i.er, align 8, !noalias !1706
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1, ptr %i.es, align 8, !noalias !1706
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.et, align 8, !alias.scope !1704, !noalias !1714
  invoke fastcc void @_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext13report_errors(ptr %.val.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
          to label %bb.bn unwind label %bb.bm

bb.bm:                                            ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit74.i
  %i.eu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #36
          to label %.thread86.i unwind label %.loopexit.split-lp118.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1704

bb.bn:                                            ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit74.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.bp unwind label %bb.bo, !noalias !1704

bb.bo:                                            ; preds = %bb.bn
  %i.ev = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.thread86.i unwind label %bb.bq, !noalias !1704

bb.bp:                                            ; preds = %bb.bn
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEEB1c_.exit79.i unwind label %bb.ba, !noalias !1704

bb.bq:                                            ; preds = %bb.bo
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33, !noalias !1704
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEEB1c_.exit79.i: ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1706
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1706
  br label %bb.al

.thread100.i:                                     ; preds = %.body69.i, %bb.bd, %.thread114.i
  %.pn103.i = phi { ptr, i32 } [ %lpad.thr_comm112.i, %.thread114.i ], [ %i.ef, %bb.bd ], [ %eh.lpad-body70.i, %.body69.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #36
          to label %.thread86.i unwind label %.loopexit.split-lp118.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1704

_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext13eval_job_list.exit: ; preds = %bb.al, %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext12run_job_list.exit.i
  %.sroa.0.1.i = phi i8 [ 3, %bb.al ], [ %.sroa.0.0.lcssa.i.i, %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext12run_job_list.exit.i ]
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1706
  br label %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext14eval_statement.exit

bb.br:                                            ; preds = %bb.j
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @170) #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 0, 4) i8 @_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext9run_1_job(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [12 x i8], align 4                ; 6 uses
  %i.d = alloca [12 x i8], align 4                ; 6 uses
  %i.e = alloca [12 x i8], align 4                ; 6 uses
  %i.f = alloca [12 x i8], align 4                ; 6 uses
  %i.g = alloca [12 x i8], align 4                ; 6 uses
  %i.h = alloca [12 x i8], align 4                ; 6 uses
  %i.i = alloca [12 x i8], align 4                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [12 x i8], align 4                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
end_hunk_0
