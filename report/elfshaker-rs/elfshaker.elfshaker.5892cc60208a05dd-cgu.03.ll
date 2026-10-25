Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker.elfshaker.5892cc60208a05dd-cgu.03?download=true
inline.NumInlined: 416
inline.NumDeleted: 183
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvCs7BtpbLEd5q3_9elfshaker4main:bb.a
  br i1 %.not207.i.i, label %.invoke.i, label %bb.ni, !prof !19

bb.ni:                                            ; preds = %.noexc81.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !791
  invoke void @_RINvMs0_NtNtNtCskfBPnJUU6aB_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.wj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 14)
          to label %.noexc83.i unwind label %bb.vg, !noalias !783

.noexc83.i:                                       ; preds = %bb.ni
  %i.abf = invoke noundef align 8 ptr @_RINvMNtNtCskfBPnJUU6aB_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionRNtNtCs1xwejQucwHj_5alloc6string6StringEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 14, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.r)
          to label %.noexc84.i unwind label %bb.vg, !noalias !783 ; 3 uses

.noexc84.i:                                       ; preds = %.noexc83.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !791
  invoke void @_RINvMs0_NtNtNtCskfBPnJUU6aB_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.wj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 15)
          to label %.noexc85.i unwind label %bb.vg, !noalias !783

.noexc85.i:                                       ; preds = %.noexc84.i
  %i.abg = invoke noundef align 8 ptr @_RINvMNtNtCskfBPnJUU6aB_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionRNtNtCs1xwejQucwHj_5alloc6string6StringEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 15, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.q)
          to label %.noexc86.i unwind label %bb.vg, !noalias !783 ; 3 uses

.noexc86.i:                                       ; preds = %.noexc85.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !791
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i19)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !791
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abe, i64 8
  %i.abi = load ptr, ptr %i.abh, align 8, !noalias !783, !nonnull !6, !noundef !6
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abe, i64 16
  %i.abk = load i64, ptr %i.abj, align 8, !noalias !783, !noundef !6
  invoke void @_RNvXs1_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB5_6PackIdNtNtNtCs3oUPovFnLWP_4core3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.abi, i64 noundef %i.abk)
          to label %.noexc87.i unwind label %bb.vg, !noalias !783

.noexc87.i:                                       ; preds = %.noexc86.i
  %i.abl = load i64, ptr %i.bh, align 8, !range !786, !noalias !791, !noundef !6 ; 2 uses
  %.not208.i.i = icmp eq i64 %i.abl, -1
  %i.abm = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i19, ptr noundef nonnull align 8 dereferenceable(24) %i.abm, i64 24, i1 false), !noalias !791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !791
  br i1 %.not208.i.i, label %bb.nn, label %bb.nj

.invoke.i:                                        ; preds = %.noexc81.i, %.noexc79.i, %.noexc59.i27
  %i.abn = phi ptr [ @25, %.noexc79.i ], [ @75, %.noexc59.i27 ], [ @26, %.noexc81.i ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.abn) #29
          to label %.cont.i unwind label %bb.vg, !noalias !783

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.nj:                                            ; preds = %.noexc87.i
  %.sroa.4.0..sroa_idx.i67.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !791
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i67.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i19, i64 24, i1 false), !noalias !791
  store i64 %i.abl, ptr %i.o, align 8, !noalias !791
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !792
  %i.abo = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 57) 32, i64 noundef range(i64 1, 9) 8) #26, !noalias !792 ; 3 uses
  %i.abp = icmp eq ptr %i.abo, null
  br i1 %i.abp, label %bb.nk, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack7IdErrorE3newCs7BtpbLEd5q3_9elfshaker.exit246.i.i, !prof !19

bb.nk:                                            ; preds = %bb.nj
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #28
          to label %.noexc.i70.i unwind label %bb.nl, !noalias !783

.noexc.i70.i:                                     ; preds = %bb.nk
  unreachable

bb.nl:                                            ; preds = %bb.nk
  %i.abq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack7IdErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o) #24
          to label %.body.i21 unwind label %bb.nm, !noalias !783

bb.nm:                                            ; preds = %bb.nl
  %i.abr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !783
  unreachable

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack7IdErrorE3newCs7BtpbLEd5q3_9elfshaker.exit246.i.i: ; preds = %bb.nj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.abo, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false), !noalias !783
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !791
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i19)
  br label %bb.vu

bb.nn:                                            ; preds = %.noexc87.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i19, i64 24, i1 false), !noalias !791
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i19)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !791
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.611.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !791
  invoke void @_RINvMs0_NtNtNtCskfBPnJUU6aB_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches12try_get_manyNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.wj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 7)
          to label %bb.no unwind label %.body244.thread433.i.i, !noalias !783

.body244.i.i:                                     ; preds = %bb.ts, %bb.nx
  %.sroa.099.0.i.i = phi i8 [ %.sroa.099.3.ph.i.i, %bb.nx ], [ %.sroa.099.15.i.i, %bb.ts ]
  %.pn240.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i74.i, %bb.nx ], [ %.pn236.i.i, %bb.ts ] ; 2 uses
  %i.abs = trunc nuw i8 %.sroa.099.0.i.i to i1
  br i1 %i.abs, label %.body244.thread.i.i, label %.body.i21

.body244.thread433.i.i:                           ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i, %.thread341.i.i, %bb.nq, %bb.no, %bb.nn
  %i.abt = landingpad { ptr, i32 }
          cleanup
  br label %.body244.thread.i.i

bb.no:                                            ; preds = %bb.nn
  invoke void @_RINvMNtNtCskfBPnJUU6aB_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCs1xwejQucwHj_5alloc6string6StringEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 7, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %i.p)
          to label %bb.np unwind label %.body244.thread433.i.i, !noalias !783

bb.np:                                            ; preds = %bb.no
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !791
  %i.abu = load ptr, ptr %i.m, align 8, !noalias !791, !noundef !6
  %.not209.i.i = icmp eq ptr %i.abu, null
  br i1 %.not209.i.i, label %bb.nr, label %bb.nq

bb.nq:                                            ; preds = %bb.np
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !791
  invoke void @_RINvNtNtCs3oUPovFnLWP_4core4iter8adapters11try_processINtNtB2_3map3MapIBR_INtNtNtNtCskfBPnJUU6aB_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs1xwejQucwHj_5alloc6string6StringENCNCNvNtCs7BtpbLEd5q3_9elfshaker4pack3run00ENvYNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdNtNtNtB6_3str6traits7FromStr8from_strEB3L_INtNtB6_6result6ResultzNtB3N_7IdErrorENCINvXso_B5f_IB5d_INtNtB2r_3vec3VecB3L_EB5z_EINtNtNtB4_6traits7collect12FromIteratorIB5d_B3L_B5z_EE9from_iterBQ_E0B66_EB38_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.m)
          to label %bb.ns unwind label %.body244.thread433.i.i, !noalias !783

bb.nr:                                            ; preds = %bb.ns, %bb.np
  %.sroa.7.sroa.0.0.i.i = phi i64 [ -1, %bb.np ], [ %.sroa.618.sroa.0.0.copyload.i.i, %bb.ns ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.611.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.8.i.i, i64 16, i1 false), !noalias !791
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.8.i.i)
  %.sroa.4130.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4130.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.611.sroa.7.i.i, i64 16, i1 false), !noalias !791
  store i64 %.sroa.7.sroa.0.0.i.i, ptr %i.bg, align 8, !noalias !791
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.611.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !791
  invoke void @_RINvMs0_NtNtNtCskfBPnJUU6aB_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.wj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 17)
          to label %bb.ny unwind label %.thread307.i.i, !noalias !783

bb.ns:                                            ; preds = %bb.nq
  %.sroa.016.0.copyload.i.i = load i64, ptr %i.n, align 8, !noalias !791 ; 2 uses
  %.sroa.618.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.618.sroa.0.0.copyload.i.i = load i64, ptr %.sroa.618.0..sroa_idx.i.i, align 8, !noalias !791 ; 2 uses
  %.sroa.618.sroa.6.0..sroa.618.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.8.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.618.sroa.6.0..sroa.618.0..sroa_idx.sroa_idx.i.i, i64 16, i1 false), !noalias !791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !791
  %.not210.i.i = icmp eq i64 %.sroa.016.0.copyload.i.i, -1
  br i1 %.not210.i.i, label %bb.nr, label %bb.nt

bb.nt:                                            ; preds = %bb.ns
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.611.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.8.i.i, i64 16, i1 false), !noalias !791
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.8.i.i)
  %.sroa.421.sroa.4.0..sroa.421.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !791
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.421.sroa.4.0..sroa.421.0..sroa_idx.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.611.sroa.7.i.i, i64 16, i1 false), !noalias !791
  store i64 %.sroa.016.0.copyload.i.i, ptr %i.k, align 8, !noalias !791
  %.sroa.421.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %.sroa.618.sroa.0.0.copyload.i.i, ptr %.sroa.421.0..sroa_idx.i.i, align 8, !noalias !791
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !793
  %i.abv = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 57) 32, i64 noundef range(i64 1, 9) 8) #26, !noalias !793 ; 3 uses
  %i.abw = icmp eq ptr %i.abv, null
  br i1 %i.abw, label %bb.nu, label %bb.uw, !prof !19

bb.nu:                                            ; preds = %bb.nt
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #28
          to label %.noexc278.i.i unwind label %bb.nv, !noalias !783

.noexc278.i.i:                                    ; preds = %bb.nu
  unreachable

bb.nv:                                            ; preds = %bb.nu
  %i.abx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack7IdErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k) #24
          to label %.body244.thread.i.i unwind label %bb.nw, !noalias !783

bb.nw:                                            ; preds = %bb.nv
  %i.aby = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !783
  unreachable

.thread307.i.i:                                   ; preds = %bb.px, %bb.pu, %bb.ps, %.invoke461.i.i, %bb.pb, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7BtpbLEd5q3_9elfshaker.exit.i.i22, %bb.oy, %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECs7BtpbLEd5q3_9elfshaker.exit.thread.i.i, %bb.ov, %.invoke.i.i, %bb.ny, %bb.nr
  %lpad.thr_comm.i72.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread301.i.i

bb.nx:                                            ; preds = %bb.ue, %bb.tu
  %.sroa.099.3.ph.i.i = phi i8 [ %.sroa.099.19.i.i, %bb.ue ], [ %.sroa.099.11.i.i, %bb.tu ]
  %lpad.thr_comm.split-lp.i74.i = landingpad { ptr, i32 }
          cleanup
  br label %.body244.i.i

bb.ny:                                            ; preds = %bb.nr
  %i.abz = invoke noundef align 8 ptr @_RINvMNtNtCskfBPnJUU6aB_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionRNtNtCs1xwejQucwHj_5alloc6string6StringEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 17, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.l)
          to label %bb.nz unwind label %.thread307.i.i, !noalias !783 ; 3 uses

bb.nz:                                            ; preds = %bb.ny
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !791
  %.not211.i.i = icmp eq ptr %i.abz, null
  br i1 %.not211.i.i, label %.invoke461.i.i, label %bb.oa, !prof !19

bb.oa:                                            ; preds = %bb.nz
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 8
  %i.acb = load ptr, ptr %i.aca, align 8, !noalias !783, !nonnull !6, !noundef !6 ; 5 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abz, i64 16
  %i.acd = load i64, ptr %i.acc, align 8, !noalias !783, !noundef !6 ; 5 uses
  switch i64 %i.acd, label %thread-pre-split.i.i.i [
    i64 0, label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i
    i64 1, label %bb.ob
  ]

bb.ob:                                            ; preds = %bb.oa
  %i.ace = load i8, ptr %i.acb, align 1, !alias.scope !794, !noalias !783, !noundef !6 ; 2 uses
  switch i8 %i.ace, label %bb.oc [
    i8 43, label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i
    i8 45, label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i
  ]

thread-pre-split.i.i.i:                           ; preds = %bb.oa
  %.pr.i.i.i = load i8, ptr %i.acb, align 1, !alias.scope !794, !noalias !783
  br label %bb.oc

bb.oc:                                            ; preds = %thread-pre-split.i.i.i, %bb.ob
  %i.acf = phi i8 [ %.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.ace, %bb.ob ]
  switch i8 %i.acf, label %bb.oj [
    i8 43, label %bb.od
    i8 45, label %bb.oe
  ]

bb.od:                                            ; preds = %bb.oc
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acb, i64 1
  %i.ach = add nsw i64 %i.acd, -1
  br label %bb.oj

bb.oe:                                            ; preds = %bb.oc
  %i.aci = getelementptr inbounds nuw i8, ptr %i.acb, i64 1 ; 2 uses
  %i.acj = add nsw i64 %i.acd, -1                 ; 3 uses
  %i.ack = icmp samesign ult i64 %i.acd, 9
  br i1 %i.ack, label %.preheader118.i.i.i, label %.lr.ph.i.i.i

.preheader118.i.i.i:                              ; preds = %bb.oe
  %.not105139.i.i.i = icmp eq i64 %i.acj, 0
  br i1 %.not105139.i.i.i, label %.loopexit.i.i.i, label %.lr.ph143.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.oh, %bb.oi, %bb.om, %bb.on, %bb.oo, %bb.op, %bb.oq, %bb.or, %bb.os, %bb.ot, %.preheader.i.i.i, %.preheader118.i.i.i
  %.sroa.086.1.i.i.i = phi i32 [ %i.adk, %bb.oi ], [ %i.afr, %bb.ot ], [ %i.adx, %bb.om ], [ 0, %.preheader.i.i.i ], [ 0, %.preheader118.i.i.i ], [ %i.aea, %bb.on ], [ %i.aei, %bb.oo ], [ %i.aep, %bb.op ], [ %i.aew, %bb.oq ], [ %i.afd, %bb.or ], [ %i.afk, %bb.os ], [ %i.acy, %bb.oh ]
  %i.acl = zext i32 %.sroa.086.1.i.i.i to i64
  %i.acm = shl nuw i64 %i.acl, 32
  br label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_impl.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.oe, %bb.oh
  %.sroa.0.1138.i.i.i = phi ptr [ %i.acn, %bb.oh ], [ %i.aci, %bb.oe ] ; 3 uses
  %.sroa.26.1137.i.i.i = phi i64 [ %i.aco, %bb.oh ], [ %i.acj, %bb.oe ]
  %.sroa.086.0136.i.i.i = phi i32 [ %i.acy, %bb.oh ], [ 0, %bb.oe ]
  %i.acn = getelementptr inbounds nuw i8, ptr %.sroa.0.1138.i.i.i, i64 1
  %i.aco = add nsw i64 %.sroa.26.1137.i.i.i, -1   ; 2 uses
  %i.acp = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.086.0136.i.i.i, i32 10) ; 2 uses
  %i.acq = extractvalue { i32, i1 } %i.acp, 0
  %i.acr = extractvalue { i32, i1 } %i.acp, 1
  br i1 %i.acr, label %.loopexit114.sink.split.i.i.i, label %bb.of, !prof !19

bb.of:                                            ; preds = %.lr.ph.i.i.i
  %i.acs = load i8, ptr %.sroa.0.1138.i.i.i, align 1, !alias.scope !794, !noalias !783, !noundef !6
  %i.act = zext i8 %i.acs to i32
  %i.acu = add nsw i32 %i.act, -48                ; 2 uses
  %i.acv = icmp ult i32 %i.acu, 10
  br i1 %i.acv, label %bb.og, label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i

bb.og:                                            ; preds = %bb.of
  %i.acw = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.acq, i32 %i.acu) ; 2 uses
  %i.acx = extractvalue { i32, i1 } %i.acw, 1
  br i1 %i.acx, label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i, label %bb.oh, !prof !19

bb.oh:                                            ; preds = %bb.og
  %i.acy = extractvalue { i32, i1 } %i.acw, 0     ; 2 uses
  %.not104.i.i.i = icmp eq i64 %i.aco, 0
  br i1 %.not104.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i

.loopexit114.sink.split.i.i.i:                    ; preds = %.lr.ph.i.i.i, %.preheader115.i.i.i
  %.sroa.0.3147.lcssa.sink.i.i.i = phi ptr [ %.sroa.0.3147.i.i.i, %.preheader115.i.i.i ], [ %.sroa.0.1138.i.i.i, %.lr.ph.i.i.i ]
  %.sink190.i.i.i = phi i64 [ 513, %.preheader115.i.i.i ], [ 769, %.lr.ph.i.i.i ]
  %i.acz = load i8, ptr %.sroa.0.3147.lcssa.sink.i.i.i, align 1, !alias.scope !794, !noalias !783, !noundef !6
  %i.ada = add i8 %i.acz, -48
  %i.adb = icmp ult i8 %i.ada, 10
  %i.adc = select i1 %i.adb, i64 %.sink190.i.i.i, i64 257
  br label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_impl.exit.i.i

.lr.ph143.i.i.i:                                  ; preds = %.preheader118.i.i.i, %bb.oi
  %.sroa.0.2142.i.i.i = phi ptr [ %i.adj, %bb.oi ], [ %i.aci, %.preheader118.i.i.i ] ; 2 uses
  %.sroa.26.2141.i.i.i = phi i64 [ %i.adi, %bb.oi ], [ %i.acj, %.preheader118.i.i.i ]
  %.sroa.086.2140.i.i.i = phi i32 [ %i.adk, %bb.oi ], [ 0, %.preheader118.i.i.i ]
  %i.add = load i8, ptr %.sroa.0.2142.i.i.i, align 1, !alias.scope !794, !noalias !783, !noundef !6
  %i.ade = zext i8 %i.add to i32
  %i.adf = add nsw i32 %i.ade, -48                ; 2 uses
  %i.adg = icmp ult i32 %i.adf, 10
  br i1 %i.adg, label %bb.oi, label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i

bb.oi:                                            ; preds = %.lr.ph143.i.i.i
  %i.adh = mul i32 %.sroa.086.2140.i.i.i, 10
  %i.adi = add nsw i64 %.sroa.26.2141.i.i.i, -1   ; 2 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %.sroa.0.2142.i.i.i, i64 1
  %i.adk = sub i32 %i.adh, %i.adf                 ; 2 uses
  %.not105.i.i.i = icmp eq i64 %i.adi, 0
  br i1 %.not105.i.i.i, label %.loopexit.i.i.i, label %.lr.ph143.i.i.i

bb.oj:                                            ; preds = %bb.od, %bb.oc
  %.sroa.26.0.i.i.i = phi i64 [ %i.ach, %bb.od ], [ %i.acd, %bb.oc ] ; 9 uses
  %.sroa.0.0.i.i.i = phi ptr [ %i.acg, %bb.od ], [ %i.acb, %bb.oc ] ; 8 uses
  %i.adl = icmp samesign ult i64 %.sroa.26.0.i.i.i, 8
  br i1 %i.adl, label %.preheader.i.i.i, label %.preheader115.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.oj
  %.not107148.i.i.i = icmp eq i64 %.sroa.26.0.i.i.i, 0
  br i1 %.not107148.i.i.i, label %.loopexit.i.i.i, label %.lr.ph152.i.i.i

.preheader115.i.i.i:                              ; preds = %bb.oj, %bb.om
  %.sroa.0.3147.i.i.i = phi ptr [ %i.adm, %bb.om ], [ %.sroa.0.0.i.i.i, %bb.oj ] ; 3 uses
  %.sroa.26.3146.i.i.i = phi i64 [ %i.adn, %bb.om ], [ %.sroa.26.0.i.i.i, %bb.oj ]
  %.sroa.086.3145.i.i.i = phi i32 [ %i.adx, %bb.om ], [ 0, %bb.oj ]
  %i.adm = getelementptr inbounds nuw i8, ptr %.sroa.0.3147.i.i.i, i64 1
  %i.adn = add nsw i64 %.sroa.26.3146.i.i.i, -1   ; 2 uses
  %i.ado = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.086.3145.i.i.i, i32 10) ; 2 uses
  %i.adp = extractvalue { i32, i1 } %i.ado, 0
  %i.adq = extractvalue { i32, i1 } %i.ado, 1
  br i1 %i.adq, label %.loopexit114.sink.split.i.i.i, label %bb.ok, !prof !19

bb.ok:                                            ; preds = %.preheader115.i.i.i
  %i.adr = load i8, ptr %.sroa.0.3147.i.i.i, align 1, !alias.scope !794, !noalias !783, !noundef !6
  %i.ads = zext i8 %i.adr to i32
  %i.adt = add nsw i32 %i.ads, -48                ; 2 uses
  %i.adu = icmp ult i32 %i.adt, 10
  br i1 %i.adu, label %bb.ol, label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i

bb.ol:                                            ; preds = %bb.ok
  %i.adv = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.adp, i32 %i.adt) ; 2 uses
  %i.adw = extractvalue { i32, i1 } %i.adv, 1
  br i1 %i.adw, label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i, label %bb.om, !prof !19

bb.om:                                            ; preds = %bb.ol
  %i.adx = extractvalue { i32, i1 } %i.adv, 0     ; 2 uses
  %.not106.i.i.i = icmp eq i64 %i.adn, 0
  br i1 %.not106.i.i.i, label %.loopexit.i.i.i, label %.preheader115.i.i.i

.lr.ph152.i.i.i:                                  ; preds = %.preheader.i.i.i
  %i.ady = load i8, ptr %.sroa.0.0.i.i.i, align 1, !alias.scope !794, !noalias !783, !noundef !6
  %i.adz = zext i8 %i.ady to i32
  %i.aea = add nsw i32 %i.adz, -48                ; 3 uses
  %i.aeb = icmp ult i32 %i.aea, 10
  br i1 %i.aeb, label %bb.on, label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i

bb.on:                                            ; preds = %.lr.ph152.i.i.i
  %.not107.i.i.i = icmp eq i64 %.sroa.26.0.i.i.i, 1
  br i1 %.not107.i.i.i, label %.loopexit.i.i.i, label %.lr.ph152.i.i.i.1

.lr.ph152.i.i.i.1:                                ; preds = %bb.on
  %i.aec = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 1
  %i.aed = load i8, ptr %i.aec, align 1, !alias.scope !794, !noalias !783, !noundef !6
  %i.aee = zext i8 %i.aed to i32
  %i.aef = add nsw i32 %i.aee, -48                ; 2 uses
  %i.aeg = icmp ult i32 %i.aef, 10
  br i1 %i.aeg, label %bb.oo, label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i

bb.oo:                                            ; preds = %.lr.ph152.i.i.i.1
  %i.aeh = mul nuw nsw i32 %i.aea, 10
  %i.aei = add nuw nsw i32 %i.aef, %i.aeh         ; 2 uses
  %.not107.i.i.i.1 = icmp eq i64 %.sroa.26.0.i.i.i, 2
  br i1 %.not107.i.i.i.1, label %.loopexit.i.i.i, label %.lr.ph152.i.i.i.2

.lr.ph152.i.i.i.2:                                ; preds = %bb.oo
  %i.aej = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 2
  %i.aek = load i8, ptr %i.aej, align 1, !alias.scope !794, !noalias !783, !noundef !6
  %i.ael = zext i8 %i.aek to i32
  %i.aem = add nsw i32 %i.ael, -48                ; 2 uses
  %i.aen = icmp ult i32 %i.aem, 10
  br i1 %i.aen, label %bb.op, label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i

bb.op:                                            ; preds = %.lr.ph152.i.i.i.2
  %i.aeo = mul nuw nsw i32 %i.aei, 10
  %i.aep = add nuw nsw i32 %i.aem, %i.aeo         ; 2 uses
  %.not107.i.i.i.2 = icmp eq i64 %.sroa.26.0.i.i.i, 3
  br i1 %.not107.i.i.i.2, label %.loopexit.i.i.i, label %.lr.ph152.i.i.i.3

.lr.ph152.i.i.i.3:                                ; preds = %bb.op
  %i.aeq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 3
  %i.aer = load i8, ptr %i.aeq, align 1, !alias.scope !794, !noalias !783, !noundef !6
  %i.aes = zext i8 %i.aer to i32
  %i.aet = add nsw i32 %i.aes, -48                ; 2 uses
  %i.aeu = icmp ult i32 %i.aet, 10
  br i1 %i.aeu, label %bb.oq, label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i

bb.oq:                                            ; preds = %.lr.ph152.i.i.i.3
  %i.aev = mul nuw nsw i32 %i.aep, 10
  %i.aew = add nuw nsw i32 %i.aet, %i.aev         ; 2 uses
  %.not107.i.i.i.3 = icmp eq i64 %.sroa.26.0.i.i.i, 4
  br i1 %.not107.i.i.i.3, label %.loopexit.i.i.i, label %.lr.ph152.i.i.i.4

.lr.ph152.i.i.i.4:                                ; preds = %bb.oq
  %i.aex = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 4
  %i.aey = load i8, ptr %i.aex, align 1, !alias.scope !794, !noalias !783, !noundef !6
  %i.aez = zext i8 %i.aey to i32
  %i.afa = add nsw i32 %i.aez, -48                ; 2 uses
  %i.afb = icmp ult i32 %i.afa, 10
  br i1 %i.afb, label %bb.or, label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i

bb.or:                                            ; preds = %.lr.ph152.i.i.i.4
  %i.afc = mul i32 %i.aew, 10
  %i.afd = add i32 %i.afa, %i.afc                 ; 2 uses
  %.not107.i.i.i.4 = icmp eq i64 %.sroa.26.0.i.i.i, 5
  br i1 %.not107.i.i.i.4, label %.loopexit.i.i.i, label %.lr.ph152.i.i.i.5

.lr.ph152.i.i.i.5:                                ; preds = %bb.or
  %i.afe = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 5
  %i.aff = load i8, ptr %i.afe, align 1, !alias.scope !794, !noalias !783, !noundef !6
  %i.afg = zext i8 %i.aff to i32
  %i.afh = add nsw i32 %i.afg, -48                ; 2 uses
  %i.afi = icmp ult i32 %i.afh, 10
  br i1 %i.afi, label %bb.os, label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i

bb.os:                                            ; preds = %.lr.ph152.i.i.i.5
  %i.afj = mul i32 %i.afd, 10
  %i.afk = add i32 %i.afh, %i.afj                 ; 2 uses
  %.not107.i.i.i.5 = icmp eq i64 %.sroa.26.0.i.i.i, 6
  br i1 %.not107.i.i.i.5, label %.loopexit.i.i.i, label %.lr.ph152.i.i.i.6

.lr.ph152.i.i.i.6:                                ; preds = %bb.os
  %i.afl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 6
  %i.afm = load i8, ptr %i.afl, align 1, !alias.scope !794, !noalias !783, !noundef !6
  %i.afn = zext i8 %i.afm to i32
  %i.afo = add nsw i32 %i.afn, -48                ; 2 uses
  %i.afp = icmp ult i32 %i.afo, 10
  br i1 %i.afp, label %bb.ot, label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i

bb.ot:                                            ; preds = %.lr.ph152.i.i.i.6
  %i.afq = mul i32 %i.afk, 10
  %i.afr = add i32 %i.afo, %i.afq
  br label %.loopexit.i.i.i

bb.ou:                                            ; preds = %bb.rw, %bb.qz
  unreachable

_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_impl.exit.i.i: ; preds = %.loopexit114.sink.split.i.i.i, %.loopexit.i.i.i
  %.sroa.12.0.insert.insert.i.i.i = phi i64 [ %i.adc, %.loopexit114.sink.split.i.i.i ], [ %i.acm, %.loopexit.i.i.i ] ; 3 uses
  %.sroa.6198.0.extract.shift.i.i = lshr i64 %.sroa.12.0.insert.insert.i.i.i, 32
  %.sroa.6198.0.extract.trunc.i.i = trunc nuw i64 %.sroa.6198.0.extract.shift.i.i to i32 ; 5 uses
  %i.afs = trunc i64 %.sroa.12.0.insert.insert.i.i.i to i1
  br i1 %i.afs, label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i, label %bb.ov

_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i: ; preds = %bb.og, %bb.of, %.lr.ph143.i.i.i, %bb.ol, %bb.ok, %.lr.ph152.i.i.i, %.lr.ph152.i.i.i.1, %.lr.ph152.i.i.i.2, %.lr.ph152.i.i.i.3, %.lr.ph152.i.i.i.4, %.lr.ph152.i.i.i.5, %.lr.ph152.i.i.i.6, %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_impl.exit.i.i, %bb.ob, %bb.ob, %bb.oa
  %.sroa.12.0.insert.insert.i314.i.i = phi i64 [ %.sroa.12.0.insert.insert.i.i.i, %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_impl.exit.i.i ], [ 1, %bb.oa ], [ 257, %.lr.ph143.i.i.i ], [ 257, %.lr.ph152.i.i.i ], [ 257, %bb.ob ], [ 257, %bb.ob ], [ 257, %bb.ok ], [ 257, %.lr.ph152.i.i.i.6 ], [ 257, %.lr.ph152.i.i.i.5 ], [ 257, %.lr.ph152.i.i.i.4 ], [ 257, %.lr.ph152.i.i.i.3 ], [ 257, %.lr.ph152.i.i.i.2 ], [ 257, %.lr.ph152.i.i.i.1 ], [ 513, %bb.ol ], [ 257, %bb.of ], [ 769, %bb.og ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !783
  %i.aft = call noundef dereferenceable_or_null(1) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 57) 1, i64 noundef range(i64 1, 9) 1) #26, !noalias !783 ; 3 uses
  %i.afu = icmp eq ptr %i.aft, null
  br i1 %i.afu, label %.invoke.i.i, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCs3oUPovFnLWP_4core3num5error13ParseIntErrorE3newCs7BtpbLEd5q3_9elfshaker.exit243.i.i, !prof !19

.invoke.i.i:                                      ; preds = %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.i.i, %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #28
          to label %.cont.i.i unwind label %.thread307.i.i, !noalias !783

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCs3oUPovFnLWP_4core3num5error13ParseIntErrorE3newCs7BtpbLEd5q3_9elfshaker.exit243.i.i: ; preds = %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i
  %.sroa.4196.0.extract.shift.i.i = lshr i64 %.sroa.12.0.insert.insert.i314.i.i, 8
  %.sroa.4196.0.extract.trunc.i.i = trunc i64 %.sroa.4196.0.extract.shift.i.i to i8
  store i8 %.sroa.4196.0.extract.trunc.i.i, ptr %i.aft, align 1, !noalias !783
  br label %bb.us

bb.ov:                                            ; preds = %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_impl.exit.i.i
  store i32 %.sroa.6198.0.extract.trunc.i.i, ptr %i.bf, align 4, !noalias !791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !791
  invoke void @_RNvCsfwHX9XeyMnn_4zstd23compression_level_range(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.be)
          to label %bb.ow unwind label %.thread307.i.i, !noalias !783

bb.ow:                                            ; preds = %bb.ov
  %i.afv = load i32, ptr %i.be, align 4, !alias.scope !795, !noalias !791, !noundef !6
  %.not.i.i.i = icmp sgt i32 %i.afv, %.sroa.6198.0.extract.trunc.i.i
  br i1 %.not.i.i.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECs7BtpbLEd5q3_9elfshaker.exit.thread.i.i, label %bb.ox

bb.ox:                                            ; preds = %bb.ow
  %i.afw = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.afx = load i8, ptr %i.afw, align 4, !range !5, !alias.scope !796, !noalias !791, !noundef !6 ; 2 uses
  %i.afy = trunc nuw i8 %i.afx to i1
  %.sroa.3.0.idx.i.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.afy, i64 0, i64 4
  %.sroa.3.0.idx.i.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.be, i64 %.sroa.3.0.idx.i.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  %i.afz = icmp eq i8 %i.afx, 0
  %i.aga = load i32, ptr %.sroa.3.0.idx.i.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 4, !alias.scope !797, !noalias !791, !noundef !6 ; 2 uses
  br i1 %i.afz, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECs7BtpbLEd5q3_9elfshaker.exit.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %bb.ox
  %i.agb = icmp sgt i32 %i.aga, %.sroa.6198.0.extract.trunc.i.i
  br i1 %i.agb, label %bb.oy, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECs7BtpbLEd5q3_9elfshaker.exit.thread.i.i

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %bb.ox
  %.not355.i.i = icmp slt i32 %i.aga, %.sroa.6198.0.extract.trunc.i.i
  br i1 %.not355.i.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECs7BtpbLEd5q3_9elfshaker.exit.thread.i.i, label %bb.oy

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECs7BtpbLEd5q3_9elfshaker.exit.thread.i.i: ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECs7BtpbLEd5q3_9elfshaker.exit.i.i, %.split.i.i, %bb.ow
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !791
  store ptr %i.be, ptr %i.bc, align 8, !noalias !791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !791
  %i.agc = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store ptr %i.agc, ptr %i.bb, align 8, !noalias !791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !791
  store ptr %i.bf, ptr %i.ba, align 8, !noalias !791
  %.sroa.4140.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr @_RNvXs9_NtNtNtCs3oUPovFnLWP_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.4140.0..sroa_idx.i.i, align 8, !noalias !791
  %i.agd = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store ptr %i.bc, ptr %i.agd, align 8, !noalias !791
  %.sroa.4144.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRlNtB6_7Display3fmtCs7BtpbLEd5q3_9elfshaker, ptr %.sroa.4144.0..sroa_idx.i.i, align 8, !noalias !791
  %i.age = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  store ptr %i.bb, ptr %i.age, align 8, !noalias !791
  %.sroa.4148.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRlNtB6_7Display3fmtCs7BtpbLEd5q3_9elfshaker, ptr %.sroa.4148.0..sroa_idx.i.i, align 8, !noalias !791
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bd, ptr noundef nonnull @32, ptr noundef nonnull %i.ba)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7BtpbLEd5q3_9elfshaker.exit.i.i22 unwind label %.thread307.i.i, !noalias !783

bb.oy:                                            ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECs7BtpbLEd5q3_9elfshaker.exit.i.i, %.split.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !791
  invoke void @_RINvMs0_NtNtNtCskfBPnJUU6aB_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.wj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 7)
          to label %bb.pb unwind label %.thread307.i.i, !noalias !783

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7BtpbLEd5q3_9elfshaker.exit.i.i22: ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECs7BtpbLEd5q3_9elfshaker.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !791
  %i.agf = invoke { ptr, ptr } @_RNvXsg_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtB7_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorEL_EINtNtBW_7convert4FromNtNtB9_6string6StringE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bd)
          to label %bb.oz unwind label %.thread307.i.i, !noalias !783 ; 2 uses

bb.oz:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7BtpbLEd5q3_9elfshaker.exit.i.i22
  %i.agg = extractvalue { ptr, ptr } %i.agf, 0
  %i.agh = extractvalue { ptr, ptr } %i.agf, 1
  br label %bb.pa

bb.pa:                                            ; preds = %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCs3oUPovFnLWP_4core3num5error13ParseIntErrorE3newCs7BtpbLEd5q3_9elfshaker.exit242.i.i, %bb.oz
  %.sroa.17.0.i.i = phi ptr [ %i.agh, %bb.oz ], [ @55, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCs3oUPovFnLWP_4core3num5error13ParseIntErrorE3newCs7BtpbLEd5q3_9elfshaker.exit242.i.i ]
  %.sroa.0.0.i73.i = phi ptr [ %i.agg, %bb.oz ], [ %i.ajj, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCs3oUPovFnLWP_4core3num5error13ParseIntErrorE3newCs7BtpbLEd5q3_9elfshaker.exit242.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !791
  br label %bb.us

bb.pb:                                            ; preds = %bb.oy
  %i.agi = invoke noundef align 8 ptr @_RINvMNtNtCskfBPnJUU6aB_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionRNtNtCs1xwejQucwHj_5alloc6string6StringEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 7, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.j)
          to label %bb.pc unwind label %.thread307.i.i, !noalias !783 ; 3 uses

bb.pc:                                            ; preds = %bb.pb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !791
  %.not212.i.i = icmp eq ptr %i.agi, null
  br i1 %.not212.i.i, label %.invoke461.i.i, label %bb.pd, !prof !19

bb.pd:                                            ; preds = %bb.pc
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agi, i64 8
  %i.agk = load ptr, ptr %i.agj, align 8, !noalias !783, !nonnull !6, !noundef !6 ; 3 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agi, i64 16
  %i.agm = load i64, ptr %i.agl, align 8, !noalias !783, !noundef !6 ; 2 uses
  switch i64 %i.agm, label %thread-pre-split.i288.i.i [
    i64 0, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.i.i
    i64 1, label %bb.pe
  ]

bb.pe:                                            ; preds = %bb.pd
  %i.agn = load i8, ptr %i.agk, align 1, !alias.scope !798, !noalias !783, !noundef !6 ; 2 uses
  switch i8 %i.agn, label %bb.pf [
    i8 43, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.i.i
    i8 45, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.i.i
  ]

thread-pre-split.i288.i.i:                        ; preds = %bb.pd
  %.pr.i289.i.i = load i8, ptr %i.agk, align 1, !alias.scope !798, !noalias !783
  br label %bb.pf

bb.pf:                                            ; preds = %thread-pre-split.i288.i.i, %bb.pe
  %i.ago = phi i8 [ %.pr.i289.i.i, %thread-pre-split.i288.i.i ], [ %i.agn, %bb.pe ]
  %cond.i.i.i = icmp eq i8 %i.ago, 43             ; 2 uses
  %i.agp = sext i1 %cond.i.i.i to i64
  %.sroa.15.0.i.i.i = add nsw i64 %i.agm, %i.agp  ; 10 uses
  %.sroa.0.0.idx.i.i.i = zext i1 %cond.i.i.i to i64
  %.sroa.0.0.i284.i.i = getelementptr inbounds nuw i8, ptr %i.agk, i64 %.sroa.0.0.idx.i.i.i ; 9 uses
  %i.agq = icmp samesign ult i64 %.sroa.15.0.i.i.i, 9
  br i1 %i.agq, label %.preheader.i286.i.i, label %.preheader60.i.i.i.preheader

.preheader.i286.i.i:                              ; preds = %bb.pf
  %.not5668.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i, 0
  br i1 %.not5668.i.i.i, label %.loopexit.i285.i.i, label %.lr.ph.i287.i.i

.preheader60.i.i.i:                               ; preds = %bb.pi
  %.not55.i.i.i = icmp eq i64 %i.agu, 0
  br i1 %.not55.i.i.i, label %.loopexit.i285.i.i, label %.preheader60.i.i.i.preheader

.loopexit.i285.i.i:                               ; preds = %.preheader60.i.i.i, %bb.pj, %bb.pk, %bb.pl, %bb.pm, %bb.pn, %bb.po, %bb.pp, %bb.pq, %.preheader.i286.i.i
  %.sroa.045.1.i.i.i = phi i32 [ %i.ajg, %bb.pq ], [ 0, %.preheader.i286.i.i ], [ %i.ahi, %bb.pj ], [ %i.ahq, %bb.pk ], [ %i.ahx, %bb.pl ], [ %i.aie, %bb.pm ], [ %i.ail, %bb.pn ], [ %i.ais, %bb.po ], [ %i.aiz, %bb.pp ], [ %i.ahe, %.preheader60.i.i.i ]
  %i.agr = zext i32 %.sroa.045.1.i.i.i to i64
  %i.ags = shl nuw i64 %i.agr, 32
  br label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.i.i

.preheader60.i.i.i.preheader:                     ; preds = %bb.pf, %.preheader60.i.i.i
  %.sroa.0.1.i.i.i188 = phi ptr [ %i.agt, %.preheader60.i.i.i ], [ %.sroa.0.0.i284.i.i, %bb.pf ] ; 2 uses
  %.sroa.15.1.i.i.i187 = phi i64 [ %i.agu, %.preheader60.i.i.i ], [ %.sroa.15.0.i.i.i, %bb.pf ]
  %.sroa.045.0.i.i.i186 = phi i32 [ %i.ahe, %.preheader60.i.i.i ], [ 0, %bb.pf ]
  %i.agt = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i188, i64 1
  %i.agu = add nsw i64 %.sroa.15.1.i.i.i187, -1   ; 2 uses
  %i.agv = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.045.0.i.i.i186, i32 10) ; 2 uses
  %i.agw = extractvalue { i32, i1 } %i.agv, 0     ; 2 uses
  %i.agx = extractvalue { i32, i1 } %i.agv, 1
  %i.agy = load i8, ptr %.sroa.0.1.i.i.i188, align 1, !alias.scope !798, !noalias !783, !noundef !6 ; 2 uses
  br i1 %i.agx, label %bb.ph, label %bb.pg, !prof !19

bb.pg:                                            ; preds = %.preheader60.i.i.i.preheader
  %i.agz = zext i8 %i.agy to i32
  %i.aha = add nsw i32 %i.agz, -48                ; 2 uses
  %i.ahb = icmp ult i32 %i.aha, 10
  br i1 %i.ahb, label %bb.pi, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.i.i

bb.ph:                                            ; preds = %.preheader60.i.i.i.preheader
  %i.ahc = add i8 %i.agy, -48
  %i.ahd = icmp ult i8 %i.ahc, 10
  %spec.select.i.i.i = select i1 %i.ahd, i64 513, i64 257
  br label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.i.i

bb.pi:                                            ; preds = %bb.pg
  %i.ahe = add i32 %i.aha, %i.agw                 ; 3 uses
  %i.ahf = icmp ult i32 %i.ahe, %i.agw
  br i1 %i.ahf, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.i.i, label %.preheader60.i.i.i, !prof !19

.lr.ph.i287.i.i:                                  ; preds = %.preheader.i286.i.i
  %i.ahg = load i8, ptr %.sroa.0.0.i284.i.i, align 1, !alias.scope !798, !noalias !783, !noundef !6
  %i.ahh = zext i8 %i.ahg to i32
  %i.ahi = add nsw i32 %i.ahh, -48                ; 3 uses
  %i.ahj = icmp ult i32 %i.ahi, 10
  br i1 %i.ahj, label %bb.pj, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.i.i

bb.pj:                                            ; preds = %.lr.ph.i287.i.i
  %.not56.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i, 1
  br i1 %.not56.i.i.i, label %.loopexit.i285.i.i, label %.lr.ph.i287.i.i.1

.lr.ph.i287.i.i.1:                                ; preds = %bb.pj
  %i.ahk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i284.i.i, i64 1
  %i.ahl = load i8, ptr %i.ahk, align 1, !alias.scope !798, !noalias !783, !noundef !6
  %i.ahm = zext i8 %i.ahl to i32
  %i.ahn = add nsw i32 %i.ahm, -48                ; 2 uses
  %i.aho = icmp ult i32 %i.ahn, 10
  br i1 %i.aho, label %bb.pk, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.i.i

bb.pk:                                            ; preds = %.lr.ph.i287.i.i.1
  %i.ahp = mul nuw nsw i32 %i.ahi, 10
  %i.ahq = add nuw nsw i32 %i.ahn, %i.ahp         ; 2 uses
  %.not56.i.i.i.1 = icmp eq i64 %.sroa.15.0.i.i.i, 2
  br i1 %.not56.i.i.i.1, label %.loopexit.i285.i.i, label %.lr.ph.i287.i.i.2

.lr.ph.i287.i.i.2:                                ; preds = %bb.pk
  %i.ahr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i284.i.i, i64 2
  %i.ahs = load i8, ptr %i.ahr, align 1, !alias.scope !798, !noalias !783, !noundef !6
  %i.aht = zext i8 %i.ahs to i32
  %i.ahu = add nsw i32 %i.aht, -48                ; 2 uses
  %i.ahv = icmp ult i32 %i.ahu, 10
  br i1 %i.ahv, label %bb.pl, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.i.i

bb.pl:                                            ; preds = %.lr.ph.i287.i.i.2
  %i.ahw = mul nuw nsw i32 %i.ahq, 10
  %i.ahx = add nuw nsw i32 %i.ahu, %i.ahw         ; 2 uses
  %.not56.i.i.i.2 = icmp eq i64 %.sroa.15.0.i.i.i, 3
  br i1 %.not56.i.i.i.2, label %.loopexit.i285.i.i, label %.lr.ph.i287.i.i.3

.lr.ph.i287.i.i.3:                                ; preds = %bb.pl
  %i.ahy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i284.i.i, i64 3
  %i.ahz = load i8, ptr %i.ahy, align 1, !alias.scope !798, !noalias !783, !noundef !6
  %i.aia = zext i8 %i.ahz to i32
  %i.aib = add nsw i32 %i.aia, -48                ; 2 uses
  %i.aic = icmp ult i32 %i.aib, 10
  br i1 %i.aic, label %bb.pm, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.i.i

bb.pm:                                            ; preds = %.lr.ph.i287.i.i.3
  %i.aid = mul nuw nsw i32 %i.ahx, 10
  %i.aie = add nuw nsw i32 %i.aib, %i.aid         ; 2 uses
  %.not56.i.i.i.3 = icmp eq i64 %.sroa.15.0.i.i.i, 4
  br i1 %.not56.i.i.i.3, label %.loopexit.i285.i.i, label %.lr.ph.i287.i.i.4

.lr.ph.i287.i.i.4:                                ; preds = %bb.pm
  %i.aif = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i284.i.i, i64 4
  %i.aig = load i8, ptr %i.aif, align 1, !alias.scope !798, !noalias !783, !noundef !6
  %i.aih = zext i8 %i.aig to i32
  %i.aii = add nsw i32 %i.aih, -48                ; 2 uses
  %i.aij = icmp ult i32 %i.aii, 10
  br i1 %i.aij, label %bb.pn, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.i.i

bb.pn:                                            ; preds = %.lr.ph.i287.i.i.4
  %i.aik = mul i32 %i.aie, 10
  %i.ail = add i32 %i.aii, %i.aik                 ; 2 uses
  %.not56.i.i.i.4 = icmp eq i64 %.sroa.15.0.i.i.i, 5
  br i1 %.not56.i.i.i.4, label %.loopexit.i285.i.i, label %.lr.ph.i287.i.i.5

.lr.ph.i287.i.i.5:                                ; preds = %bb.pn
  %i.aim = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i284.i.i, i64 5
  %i.ain = load i8, ptr %i.aim, align 1, !alias.scope !798, !noalias !783, !noundef !6
  %i.aio = zext i8 %i.ain to i32
  %i.aip = add nsw i32 %i.aio, -48                ; 2 uses
  %i.aiq = icmp ult i32 %i.aip, 10
  br i1 %i.aiq, label %bb.po, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.i.i

bb.po:                                            ; preds = %.lr.ph.i287.i.i.5
  %i.air = mul i32 %i.ail, 10
  %i.ais = add i32 %i.aip, %i.air                 ; 2 uses
  %.not56.i.i.i.5 = icmp eq i64 %.sroa.15.0.i.i.i, 6
  br i1 %.not56.i.i.i.5, label %.loopexit.i285.i.i, label %.lr.ph.i287.i.i.6

.lr.ph.i287.i.i.6:                                ; preds = %bb.po
  %i.ait = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i284.i.i, i64 6
  %i.aiu = load i8, ptr %i.ait, align 1, !alias.scope !798, !noalias !783, !noundef !6
  %i.aiv = zext i8 %i.aiu to i32
  %i.aiw = add nsw i32 %i.aiv, -48                ; 2 uses
  %i.aix = icmp ult i32 %i.aiw, 10
  br i1 %i.aix, label %bb.pp, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.i.i

bb.pp:                                            ; preds = %.lr.ph.i287.i.i.6
  %i.aiy = mul i32 %i.ais, 10
  %i.aiz = add i32 %i.aiw, %i.aiy                 ; 2 uses
  %.not56.i.i.i.6 = icmp eq i64 %.sroa.15.0.i.i.i, 7
  br i1 %.not56.i.i.i.6, label %.loopexit.i285.i.i, label %.lr.ph.i287.i.i.7

.lr.ph.i287.i.i.7:                                ; preds = %bb.pp
  %i.aja = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i284.i.i, i64 7
  %i.ajb = load i8, ptr %i.aja, align 1, !alias.scope !798, !noalias !783, !noundef !6
  %i.ajc = zext i8 %i.ajb to i32
  %i.ajd = add nsw i32 %i.ajc, -48                ; 2 uses
  %i.aje = icmp ult i32 %i.ajd, 10
  br i1 %i.aje, label %bb.pq, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.i.i

bb.pq:                                            ; preds = %.lr.ph.i287.i.i.7
  %i.ajf = mul i32 %i.aiz, 10
  %i.ajg = add i32 %i.ajd, %i.ajf
  br label %.loopexit.i285.i.i

.invoke461.i.i:                                   ; preds = %bb.pc, %bb.nz
  %i.ajh = phi ptr [ @31, %bb.nz ], [ @34, %bb.pc ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ajh) #28
          to label %.cont462.i.i unwind label %.thread307.i.i, !noalias !783

.cont462.i.i:                                     ; preds = %.invoke461.i.i
  unreachable

_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.i.i: ; preds = %bb.ph, %.loopexit.i285.i.i
  %.sroa.8.0.insert.insert.i.i.i = phi i64 [ %spec.select.i.i.i, %bb.ph ], [ %i.ags, %.loopexit.i285.i.i ] ; 3 uses
  %i.aji = trunc i64 %.sroa.8.0.insert.insert.i.i.i to i1
  br i1 %i.aji, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.i.i, label %bb.pr

_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.i.i: ; preds = %bb.pi, %bb.pg, %.lr.ph.i287.i.i, %.lr.ph.i287.i.i.1, %.lr.ph.i287.i.i.2, %.lr.ph.i287.i.i.3, %.lr.ph.i287.i.i.4, %.lr.ph.i287.i.i.5, %.lr.ph.i287.i.i.6, %.lr.ph.i287.i.i.7, %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.i.i, %bb.pe, %bb.pe, %bb.pd
  %.sroa.8.0.insert.insert.i317.i.i = phi i64 [ %.sroa.8.0.insert.insert.i.i.i, %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.i.i ], [ 257, %bb.pe ], [ 257, %.lr.ph.i287.i.i ], [ 257, %bb.pe ], [ 1, %bb.pd ], [ 257, %.lr.ph.i287.i.i.7 ], [ 257, %.lr.ph.i287.i.i.6 ], [ 257, %.lr.ph.i287.i.i.5 ], [ 257, %.lr.ph.i287.i.i.4 ], [ 257, %.lr.ph.i287.i.i.3 ], [ 257, %.lr.ph.i287.i.i.2 ], [ 257, %.lr.ph.i287.i.i.1 ], [ 257, %bb.pg ], [ 513, %bb.pi ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !783
  %i.ajj = call noundef dereferenceable_or_null(1) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 57) 1, i64 noundef range(i64 1, 9) 1) #26, !noalias !783 ; 3 uses
  %i.ajk = icmp eq ptr %i.ajj, null
  br i1 %i.ajk, label %.invoke.i.i, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCs3oUPovFnLWP_4core3num5error13ParseIntErrorE3newCs7BtpbLEd5q3_9elfshaker.exit242.i.i, !prof !19

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCs3oUPovFnLWP_4core3num5error13ParseIntErrorE3newCs7BtpbLEd5q3_9elfshaker.exit242.i.i: ; preds = %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.i.i
  %.sroa.4200.0.extract.shift.i.i = lshr i64 %.sroa.8.0.insert.insert.i317.i.i, 8
  %.sroa.4200.0.extract.trunc.i.i = trunc i64 %.sroa.4200.0.extract.shift.i.i to i8
  store i8 %.sroa.4200.0.extract.trunc.i.i, ptr %i.ajj, align 1, !noalias !783
  br label %bb.pa

bb.pr:                                            ; preds = %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.i.i
  %.sroa.6202.0.extract.shift.i.i = lshr i64 %.sroa.8.0.insert.insert.i.i.i, 32 ; 2 uses
  %i.ajl = icmp eq i64 %.sroa.6202.0.extract.shift.i.i, 0
  br i1 %i.ajl, label %bb.ps, label %bb.px

bb.ps:                                            ; preds = %bb.pr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !791
  %i.ajm = invoke noundef i64 @_RNvNtCs2iUYy9yOIgw_8num_cpus5linux21get_num_physical_cpus()
          to label %bb.pt unwind label %.thread307.i.i, !noalias !783 ; 2 uses

bb.pt:                                            ; preds = %bb.ps
  store i64 %i.ajm, ptr %i.az, align 8, !noalias !791
  %i.ajn = load atomic i64, ptr @_RNvCse7cAXHj51Pq_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !791 ; 2 uses
  %i.ajo = icmp ult i64 %i.ajn, 6
  call void @llvm.assume(i1 %i.ajo)
  %i.ajp = icmp samesign ugt i64 %i.ajn, 2
  br i1 %i.ajp, label %bb.pu, label %bb.pv

bb.pu:                                            ; preds = %bb.pt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !791
  store ptr %i.az, ptr %i.ay, align 8, !noalias !791
  %.sroa.4154.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4154.0..sroa_idx.i.i, align 8, !noalias !791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !791
  store ptr @37, ptr %i.ax, align 8, !noalias !791
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 15, ptr %i.ajq, align 8, !noalias !791
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store ptr @37, ptr %i.ajr, align 8, !noalias !791
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store i64 15, ptr %i.ajs, align 8, !noalias !791
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store ptr @36, ptr %i.ajt, align 8, !noalias !791
  invoke void @_RINvNtCse7cAXHj51Pq_3log13___private_api3loguNtB2_12GlobalLoggerECs7BtpbLEd5q3_9elfshaker(ptr noundef nonnull @35, ptr noundef nonnull %i.ay, i64 noundef 3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ax)
          to label %bb.pw unwind label %.thread307.i.i, !noalias !783

bb.pv:                                            ; preds = %bb.pw, %bb.pt
  %i.aju = phi i64 [ %i.ajm, %bb.pt ], [ %.pre.i.i, %bb.pw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !791
  br label %bb.px

bb.pw:                                            ; preds = %bb.pu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !791
  %.pre.i.i = load i64, ptr %i.az, align 8, !noalias !791
  br label %bb.pv

bb.px:                                            ; preds = %bb.pv, %bb.pr
  %.sroa.041.0.in.i.i = phi i64 [ %i.aju, %bb.pv ], [ %.sroa.6202.0.extract.shift.i.i, %bb.pr ]
  %.sroa.041.0.i.i = trunc i64 %.sroa.041.0.in.i.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !791
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.645.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !791
  invoke void @_RNvNtCs7BtpbLEd5q3_9elfshaker5utils18open_repo_from_cwd(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.av, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.abb, i64 noundef %i.abd)
          to label %bb.py unwind label %.thread307.i.i, !noalias !783

bb.py:                                            ; preds = %bb.px
  %i.ajv = load i64, ptr %i.av, align 8, !range !7, !noalias !791, !noundef !6 ; 2 uses
  %i.ajw = icmp eq i64 %i.ajv, -1
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.645.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.ajx, i64 56, i1 false), !noalias !791
  br i1 %i.ajw, label %bb.pz, label %bb.qc

bb.pz:                                            ; preds = %bb.py
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !791
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.645.i.i, i64 56, i1 false), !noalias !791
  %i.ajy = invoke fastcc noundef ptr @_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 56)
          to label %.thread341.i.i unwind label %bb.qa, !noalias !799 ; 2 uses

bb.qa:                                            ; preds = %bb.pz
  %i.ajz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.i) #24
          to label %.thread301.i.i unwind label %bb.qb, !noalias !783

bb.qb:                                            ; preds = %bb.qa
  %i.aka = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !783
  unreachable

bb.qc:                                            ; preds = %bb.py
  %.sroa.5157.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  %.sroa.550.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.550.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5157.0..sroa_idx.i.i, i64 16, i1 false), !noalias !791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !791
  %.sroa.449.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.449.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.645.i.i, i64 56, i1 false), !noalias !791
  store i64 %i.ajv, ptr %i.aw, align 8, !noalias !791
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.645.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !791
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.653.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !791
  %i.akb = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.akb, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false), !noalias !791
  store ptr %i.abf, ptr %i.as, align 8, !noalias !791
  %i.akc = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.abg, ptr %i.akc, align 8, !noalias !791
  %.not213.i.i = icmp eq ptr %i.abf, null
  %.not214.i.i = icmp eq ptr %i.abg, null         ; 2 uses
  %i.akd = load i64, ptr %i.akb, align 8, !range !7, !noalias !791
  %.not215.i.i = icmp eq i64 %i.akd, -1           ; 3 uses
  br i1 %.not213.i.i, label %bb.qe, label %bb.qd

bb.qd:                                            ; preds = %bb.qc
  %or.cond.i.i = select i1 %.not214.i.i, i1 %.not215.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.qn, label %bb.ui

bb.qe:                                            ; preds = %bb.qc
  br i1 %.not214.i.i, label %bb.qg, label %bb.qf

bb.qf:                                            ; preds = %bb.qe
  br i1 %.not215.i.i, label %bb.qm, label %bb.ui

bb.qg:                                            ; preds = %bb.qe
  br i1 %.not215.i.i, label %bb.qi, label %bb.qh

bb.qh:                                            ; preds = %bb.qg
  %i.ake = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ake, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false), !noalias !791
  br label %bb.ql

bb.qi:                                            ; preds = %bb.qg
  invoke void @_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository11loose_packs(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.at, ptr noundef nonnull align 8 %i.aw)
          to label %bb.qk unwind label %bb.qj, !noalias !783

bb.qj:                                            ; preds = %bb.uk, %bb.uj, %.invoke463.i.i, %bb.qn, %bb.qm, %bb.qi
  %i.akf = landingpad { ptr, i32 }
          cleanup
  br label %.body260.i.i

.body260.i.i:                                     ; preds = %bb.qp, %bb.qj
  %eh.lpad-body261.i.i = phi { ptr, i32 } [ %i.akf, %bb.qj ], [ %i.akt, %bb.qp ] ; 2 uses
  %i.akg = load i64, ptr %i.akb, align 8, !range !7, !noalias !791, !noundef !6
  %.not234.i.i = icmp eq i64 %i.akg, -1
  br i1 %.not234.i.i, label %bb.ts, label %bb.un

bb.qk:                                            ; preds = %.invoke463.i.i, %bb.qi
  %i.akh = load i64, ptr %i.at, align 8, !range !789, !noalias !791, !noundef !6 ; 2 uses
  %.not219.i.i = icmp eq i64 %i.akh, -2
  br i1 %.not219.i.i, label %bb.ql, label %bb.qo

bb.ql:                                            ; preds = %bb.qk, %bb.qh
  %i.aki = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.653.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.aki, i64 24, i1 false), !noalias !791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !791
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.653.i.i, i64 24, i1 false), !noalias !791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !791
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.653.i.i)
  %i.akj = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 3 uses
  %i.akk = load i64, ptr %i.akj, align 8, !noalias !791, !noundef !6 ; 2 uses
  %i.akl = icmp ult i64 %i.akk, 384307168202282326
  call void @llvm.assume(i1 %i.akl)
  %i.akm = icmp eq i64 %i.akk, 0
  br i1 %i.akm, label %bb.qs, label %bb.qr

bb.qm:                                            ; preds = %bb.qf
  %i.akn = invoke fastcc { ptr, ptr } @_RNCNvNtCs7BtpbLEd5q3_9elfshaker4pack3runs_0B5_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.abg)
          to label %.invoke463.i.i unwind label %bb.qj, !noalias !783

bb.qn:                                            ; preds = %bb.qd
  %i.ako = invoke fastcc { ptr, ptr } @_RNCNvNtCs7BtpbLEd5q3_9elfshaker4pack3runs_0B5_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.abf)
          to label %.invoke463.i.i unwind label %bb.qj, !noalias !783

.invoke463.i.i:                                   ; preds = %bb.qn, %bb.qm
  %.sink464.i.i = phi { ptr, ptr } [ %i.akn, %bb.qm ], [ %i.ako, %bb.qn ] ; 2 uses
  %i.akp = phi i8 [ 0, %bb.qm ], [ 10, %bb.qn ]
  %i.akq = extractvalue { ptr, ptr } %.sink464.i.i, 0
  %i.akr = extractvalue { ptr, ptr } %.sink464.i.i, 1
  invoke fastcc void @_RINvNtCs7BtpbLEd5q3_9elfshaker4pack15packs_from_listINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtBT_2io4read4ReadEL_EEB4_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.at, ptr noundef nonnull align 8 %i.aw, ptr noundef nonnull %i.akq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.akr, i8 noundef %i.akp)
          to label %bb.qk unwind label %bb.qj, !noalias !783

bb.qo:                                            ; preds = %bb.qk
  %.sroa.4162.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.653.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4162.0..sroa_idx.i.i, i64 24, i1 false), !noalias !791
  %.sroa.5163.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %.sroa.559.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !791
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.559.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5163.0..sroa_idx.i.i, i64 24, i1 false), !noalias !791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !791
  %.sroa.458.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.458.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.653.i.i, i64 24, i1 false), !noalias !791
  store i64 %i.akh, ptr %i.h, align 8, !noalias !791
  %i.aks = invoke fastcc noundef ptr @_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 56)
          to label %bb.uf unwind label %bb.qp, !noalias !800 ; 3 uses

bb.qp:                                            ; preds = %bb.qo
end_hunk_0
