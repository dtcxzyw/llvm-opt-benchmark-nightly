Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/coreutils.coreutils.f62e4db4eae9fc3c-cgu.0?download=true
inline.NumInlined: 9927
inline.NumDeleted: 3951
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_RINvNvCsiibOIv6tv3q_7uu_date6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBJ_6cloned6ClonedINtNtNtBN_5slice4iter4IterB2k_EEEECsl8pJiQOn4hA_9coreutils:bb.a
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %i.asn, i64 %i.ath) #52
  unreachable

bb.po:                                            ; preds = %bb.oz
  %i.ati = load ptr, ptr %i.aso, align 8, !nonnull !12, !noundef !12 ; 5 uses
  %i.atj = icmp ule i64 %i.ajb, %i.asn
  call void @llvm.assume(i1 %i.atj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  %.not560 = icmp eq i64 %i.ajb, 0
  br i1 %.not560, label %bb.pp, label %bb.pq

bb.pp:                                            ; preds = %bb.pq, %bb.po
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eh)
  call fastcc void @_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.eh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ati, i64 noundef %i.ajb) #51
  %i.atk = load i8, ptr %i.eh, align 8, !range !21, !noundef !12
  %i.atl = trunc nuw i8 %i.atk to i1
  br i1 %i.atl, label %bb.pr, label %bb.ps

bb.pq:                                            ; preds = %bb.po
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ati, ptr nonnull align 1 %i.aja, i64 %i.ajb, i1 false)
  br label %bb.pp

bb.pr:                                            ; preds = %bb.pp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.eg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ati, i64 noundef %i.ajb) #53
  %i.atm = load i8, ptr %i.eg, align 8, !range !21, !noundef !12
  %i.atn = trunc nuw i8 %i.atm to i1
  br i1 %i.atn, label %bb.pu, label %bb.pv

bb.ps:                                            ; preds = %bb.pp
  %i.ato = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.atp = load i64, ptr %i.ato, align 8, !noundef !12
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ei, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @648, i64 noundef 6, i64 noundef %i.atp) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh)
  br label %bb.pt

bb.pt:                                            ; preds = %bb.pv, %bb.pu, %bb.ps
  %.sroa.0171.0.not = phi i1 [ true, %bb.pu ], [ false, %bb.pv ], [ false, %bb.ps ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41117.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw)
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.cw, i64 noundef %.sroa.61118.0.copyload, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1) #45
  %i.atq = load i64, ptr %i.cw, align 8, !range !16, !noundef !12
  %i.atr = trunc nuw i64 %i.atq to i1
  %i.ats = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.att = load i64, ptr %i.ats, align 8, !range !17, !noundef !12 ; 5 uses
  %i.atu = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 2 uses
  br i1 %i.atr, label %bb.pw, label %bb.px, !prof !18

bb.pu:                                            ; preds = %bb.pr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef)
  store i64 %i.asn, ptr %i.ef, align 8
  %.sroa.51121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store ptr %i.ati, ptr %.sroa.51121.0..sroa_idx, align 8
  %.sroa.81122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store i64 %i.ajb, ptr %.sroa.81122.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ei, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @648, i64 noundef 6, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ef) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef)
  br label %bb.pt

bb.pv:                                            ; preds = %bb.pr
  %i.atv = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.atw = load double, ptr %i.atv, align 8, !noundef !12
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ei, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @648, i64 noundef 6, double noundef %i.atw) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg)
  br label %bb.pt

bb.pw:                                            ; preds = %bb.pt
  %i.atx = load i64, ptr %i.atu, align 8
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %i.att, i64 %i.atx) #52
  unreachable

bb.px:                                            ; preds = %bb.pt
  %i.aty = load ptr, ptr %i.atu, align 8, !nonnull !12, !noundef !12 ; 5 uses
  %i.atz = icmp ule i64 %.sroa.61118.0.copyload, %i.att
  call void @llvm.assume(i1 %i.atz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  %.not561 = icmp eq i64 %.sroa.61118.0.copyload, 0
  br i1 %.not561, label %bb.py, label %bb.pz

bb.py:                                            ; preds = %bb.pz, %bb.px
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee)
  call fastcc void @_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.ee, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aty, i64 noundef %.sroa.61118.0.copyload) #51
  %i.aua = load i8, ptr %i.ee, align 8, !range !21, !noundef !12
  %i.aub = trunc nuw i8 %i.aua to i1
  br i1 %i.aub, label %bb.qa, label %bb.qb

bb.pz:                                            ; preds = %bb.px
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aty, ptr nonnull align 1 %.sroa.41117.0.copyload, i64 %.sroa.61118.0.copyload, i1 false)
  br label %bb.py

bb.qa:                                            ; preds = %bb.py
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ed, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aty, i64 noundef %.sroa.61118.0.copyload) #53
  %i.auc = load i8, ptr %i.ed, align 8, !range !21, !noundef !12
  %i.aud = trunc nuw i8 %i.auc to i1
  br i1 %i.aud, label %bb.qe, label %bb.qf

bb.qb:                                            ; preds = %bb.py
  %i.aue = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.auf = load i64, ptr %i.aue, align 8, !noundef !12
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ei, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @443, i64 noundef 5, i64 noundef %i.auf) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee)
  br label %bb.qc

bb.qc:                                            ; preds = %bb.qf, %bb.qb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eb, ptr noundef nonnull align 8 dereferenceable(24) %i.ei, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @673, i64 noundef 25, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.eb) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb)
  %i.aug = icmp eq i64 %i.att, 0
  br i1 %i.aug, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit883, label %bb.qd

bb.qd:                                            ; preds = %bb.qc
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aty, i64 noundef %i.att, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !30561
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit883

bb.qe:                                            ; preds = %bb.qa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec)
  store i64 %i.att, ptr %i.ec, align 8
  %.sroa.51124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store ptr %i.aty, ptr %.sroa.51124.0..sroa_idx, align 8
  %.sroa.81125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store i64 %.sroa.61118.0.copyload, ptr %.sroa.81125.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ei, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @443, i64 noundef 5, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ec) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eb, ptr noundef nonnull align 8 dereferenceable(24) %i.ei, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @673, i64 noundef 25, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.eb) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit883

bb.qf:                                            ; preds = %bb.qa
  %i.auh = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.aui = load double, ptr %i.auh, align 8, !noundef !12
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ei, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @443, i64 noundef 5, double noundef %i.aui) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed)
  br label %bb.qc

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit883: ; preds = %bb.qd, %bb.qc, %bb.qe
  %i.auj = icmp eq i64 %i.asn, 0
  %or.cond1459 = or i1 %i.auj, %.sroa.0171.0.not
  br i1 %or.cond1459, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit889, label %bb.qh

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit889: ; preds = %bb.qh, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei)
  %i.auk = call fastcc noundef nonnull align 8 ptr @_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 32) #51, !noalias !30562 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.auk, ptr noundef nonnull align 8 dereferenceable(24) %i.cv, i64 24, i1 false)
  %.sroa.41218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.auk, i64 24
  store i32 1, ptr %.sroa.41218.0..sroa_idx, align 8
  %i.aul = icmp eq i64 %.sroa.01116.0.copyload, 0
  br i1 %i.aul, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit886, label %bb.qg

bb.qg:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit889
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.41117.0.copyload, i64 noundef %.sroa.01116.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !30563
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit886

bb.qh:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit883
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ati, i64 noundef %i.asn, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !30564
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit889

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs3JjgEOiFeOI_4jiff5zoned5ZonedECsl8pJiQOn4hA_9coreutils.exit796: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz5posix8TimeZoneEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i794, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i795, %bb.li, %bb.li, %bb.li, %bb.li, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsiibOIv6tv3q_7uu_date10DateSourceECsl8pJiQOn4hA_9coreutils.exit850
  %.sroa.17.10 = phi ptr [ @56, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsiibOIv6tv3q_7uu_date10DateSourceECsl8pJiQOn4hA_9coreutils.exit850 ], [ %.sroa.17.6, %bb.li ], [ %.sroa.17.6, %bb.li ], [ %.sroa.17.6, %bb.li ], [ %.sroa.17.6, %bb.li ], [ %.sroa.17.6, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i795 ], [ %.sroa.17.6, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz5posix8TimeZoneEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i794 ]
  %.sroa.0.10 = phi ptr [ %.sroa.0.8, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsiibOIv6tv3q_7uu_date10DateSourceECsl8pJiQOn4hA_9coreutils.exit850 ], [ %.sroa.0.6, %bb.li ], [ %.sroa.0.6, %bb.li ], [ %.sroa.0.6, %bb.li ], [ %.sroa.0.6, %bb.li ], [ %.sroa.0.6, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i795 ], [ %.sroa.0.6, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz5posix8TimeZoneEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i794 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gs)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsiibOIv6tv3q_7uu_date10DateSourceECsl8pJiQOn4hA_9coreutils.exit

bb.qi:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit, %bb.ok
  %.sroa.41221.0.ph = phi i64 [ 1, %bb.ok ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.41221.0.ph, i64 %i.aqx) #52
  unreachable

bb.qj:                                            ; preds = %bb.ok
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.arj, ptr nonnull align 1 %i.aqw, i64 %i.aqx, i1 false)
  %cond = icmp eq ptr %.sroa.6147.sroa.9.0.copyload, inttoptr (i64 1 to ptr)
  %i.aum = load i8, ptr %i.arj, align 1, !alias.scope !30565, !noalias !30566 ; 2 uses
  br i1 %cond, label %bb.qk, label %thread-pre-split.i921

bb.qk:                                            ; preds = %bb.qj
  switch i8 %i.aum, label %bb.qr [
    i8 43, label %.thread1413
    i8 45, label %.thread1413
  ]

thread-pre-split.i921:                            ; preds = %bb.qj
  switch i8 %i.aum, label %bb.qr [
    i8 43, label %bb.ql
    i8 45, label %bb.qm
  ]

bb.ql:                                            ; preds = %thread-pre-split.i921
  %i.aun = getelementptr inbounds nuw i8, ptr %i.arj, i64 1
  %i.auo = add nsw i64 %i.aqx, -1
  br label %bb.qr

bb.qm:                                            ; preds = %thread-pre-split.i921
  %i.aup = getelementptr inbounds nuw i8, ptr %i.arj, i64 1 ; 2 uses
  %i.auq = add nsw i64 %i.aqx, -1                 ; 2 uses
  %i.aur = icmp ult ptr %.sroa.6147.sroa.9.0.copyload, inttoptr (i64 17 to ptr)
  br i1 %i.aur, label %.lr.ph141.i901, label %.lr.ph.i891

.lr.ph.i891:                                      ; preds = %bb.qm, %bb.qp
  %.sroa.0.1136.i892 = phi ptr [ %i.aus, %bb.qp ], [ %i.aup, %bb.qm ] ; 2 uses
  %.sroa.26.1135.i893 = phi i64 [ %i.aut, %bb.qp ], [ %i.auq, %bb.qm ]
  %.sroa.084.0134.i894 = phi i64 [ %i.ave, %bb.qp ], [ 0, %bb.qm ]
  %i.aus = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i892, i64 1
  %i.aut = add nsw i64 %.sroa.26.1135.i893, -1    ; 2 uses
  %i.auu = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i894, i64 10) ; 2 uses
  %i.auv = extractvalue { i64, i1 } %i.auu, 0
  %i.auw = extractvalue { i64, i1 } %i.auu, 1
  br i1 %i.auw, label %.thread1413, label %bb.qn, !prof !18

bb.qn:                                            ; preds = %.lr.ph.i891
  %i.aux = load i8, ptr %.sroa.0.1136.i892, align 1, !alias.scope !30565, !noalias !30566, !noundef !12
  %i.auy = zext i8 %i.aux to i32
  %i.auz = add nsw i32 %i.auy, -48                ; 2 uses
  %i.ava = icmp ult i32 %i.auz, 10
  br i1 %i.ava, label %bb.qo, label %.thread1413

bb.qo:                                            ; preds = %bb.qn
  %i.avb = zext nneg i32 %i.auz to i64
  %i.avc = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.auv, i64 %i.avb) ; 2 uses
  %i.avd = extractvalue { i64, i1 } %i.avc, 1
  br i1 %i.avd, label %.thread1413, label %bb.qp, !prof !18

bb.qp:                                            ; preds = %bb.qo
  %i.ave = extractvalue { i64, i1 } %i.avc, 0     ; 2 uses
  %.not102.i896 = icmp eq i64 %i.aut, 0
  br i1 %.not102.i896, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit923, label %.lr.ph.i891

.lr.ph141.i901:                                   ; preds = %bb.qm, %bb.qq
  %.sroa.0.2140.i902 = phi ptr [ %i.avl, %bb.qq ], [ %i.aup, %bb.qm ] ; 2 uses
  %.sroa.26.2139.i903 = phi i64 [ %i.avk, %bb.qq ], [ %i.auq, %bb.qm ]
  %.sroa.084.2138.i904 = phi i64 [ %i.avn, %bb.qq ], [ 0, %bb.qm ]
  %i.avf = load i8, ptr %.sroa.0.2140.i902, align 1, !alias.scope !30565, !noalias !30566, !noundef !12
  %i.avg = zext i8 %i.avf to i32
  %i.avh = add nsw i32 %i.avg, -48                ; 2 uses
  %i.avi = icmp ult i32 %i.avh, 10
  br i1 %i.avi, label %bb.qq, label %.thread1413

bb.qq:                                            ; preds = %.lr.ph141.i901
  %i.avj = mul i64 %.sroa.084.2138.i904, 10
  %i.avk = add nsw i64 %.sroa.26.2139.i903, -1    ; 2 uses
  %i.avl = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i902, i64 1
  %i.avm = zext nneg i32 %i.avh to i64
  %i.avn = sub i64 %i.avj, %i.avm                 ; 2 uses
  %.not103.i905 = icmp eq i64 %i.avk, 0
  br i1 %.not103.i905, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit923, label %.lr.ph141.i901

bb.qr:                                            ; preds = %bb.qk, %bb.ql, %thread-pre-split.i921
  %.sroa.26.0.i906 = phi i64 [ %i.auo, %bb.ql ], [ %i.aqx, %thread-pre-split.i921 ], [ %i.aqx, %bb.qk ] ; 4 uses
  %.sroa.0.0.i907 = phi ptr [ %i.aun, %bb.ql ], [ %i.arj, %thread-pre-split.i921 ], [ %i.arj, %bb.qk ] ; 2 uses
  %i.avo = icmp samesign ult i64 %.sroa.26.0.i906, 16
  br i1 %i.avo, label %.preheader.i914, label %.preheader111.i908

.preheader.i914:                                  ; preds = %bb.qr
  %.not105146.i915 = icmp eq i64 %.sroa.26.0.i906, 0
  br i1 %.not105146.i915, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit923, label %.lr.ph150.i916

.preheader111.i908:                               ; preds = %bb.qr, %bb.qu
  %.sroa.0.3145.i909 = phi ptr [ %i.avp, %bb.qu ], [ %.sroa.0.0.i907, %bb.qr ] ; 2 uses
  %.sroa.26.3144.i910 = phi i64 [ %i.avq, %bb.qu ], [ %.sroa.26.0.i906, %bb.qr ]
  %.sroa.084.3143.i911 = phi i64 [ %i.awb, %bb.qu ], [ 0, %bb.qr ]
  %i.avp = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i909, i64 1
  %i.avq = add nsw i64 %.sroa.26.3144.i910, -1    ; 2 uses
  %i.avr = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i911, i64 10) ; 2 uses
  %i.avs = extractvalue { i64, i1 } %i.avr, 0
  %i.avt = extractvalue { i64, i1 } %i.avr, 1
  br i1 %i.avt, label %.thread1413, label %bb.qs, !prof !18

bb.qs:                                            ; preds = %.preheader111.i908
  %i.avu = load i8, ptr %.sroa.0.3145.i909, align 1, !alias.scope !30565, !noalias !30566, !noundef !12
  %i.avv = zext i8 %i.avu to i32
  %i.avw = add nsw i32 %i.avv, -48                ; 2 uses
  %i.avx = icmp ult i32 %i.avw, 10
  br i1 %i.avx, label %bb.qt, label %.thread1413

bb.qt:                                            ; preds = %bb.qs
  %i.avy = zext nneg i32 %i.avw to i64
  %i.avz = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.avs, i64 %i.avy) ; 2 uses
  %i.awa = extractvalue { i64, i1 } %i.avz, 1
  br i1 %i.awa, label %.thread1413, label %bb.qu, !prof !18

bb.qu:                                            ; preds = %bb.qt
  %i.awb = extractvalue { i64, i1 } %i.avz, 0     ; 2 uses
  %.not104.i913 = icmp eq i64 %i.avq, 0
  br i1 %.not104.i913, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit923, label %.preheader111.i908

.lr.ph150.i916:                                   ; preds = %.preheader.i914, %bb.qv
  %.sroa.0.4149.i917 = phi ptr [ %i.awi, %bb.qv ], [ %.sroa.0.0.i907, %.preheader.i914 ] ; 2 uses
  %.sroa.26.4148.i918 = phi i64 [ %i.awh, %bb.qv ], [ %.sroa.26.0.i906, %.preheader.i914 ]
  %.sroa.084.4147.i919 = phi i64 [ %i.awk, %bb.qv ], [ 0, %.preheader.i914 ]
  %i.awc = load i8, ptr %.sroa.0.4149.i917, align 1, !alias.scope !30565, !noalias !30566, !noundef !12
  %i.awd = zext i8 %i.awc to i32
  %i.awe = add nsw i32 %i.awd, -48                ; 2 uses
  %i.awf = icmp ult i32 %i.awe, 10
  br i1 %i.awf, label %bb.qv, label %.thread1413

bb.qv:                                            ; preds = %.lr.ph150.i916
  %i.awg = mul i64 %.sroa.084.4147.i919, 10
  %i.awh = add nsw i64 %.sroa.26.4148.i918, -1    ; 2 uses
  %i.awi = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i917, i64 1
  %i.awj = zext nneg i32 %i.awe to i64
  %i.awk = add i64 %i.awg, %i.awj                 ; 2 uses
  %.not105.i920 = icmp eq i64 %i.awh, 0
  br i1 %.not105.i920, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit923, label %.lr.ph150.i916

.thread1413:                                      ; preds = %.lr.ph.i891, %bb.qo, %bb.qn, %.lr.ph141.i901, %.preheader111.i908, %bb.qs, %bb.qt, %.lr.ph150.i916, %bb.qk, %bb.qk, %bb.oj
  %.sroa.6480.01418.ph = phi i64 [ 0, %bb.oj ], [ %i.aqx, %.preheader111.i908 ], [ %i.aqx, %.lr.ph150.i916 ], [ 1, %bb.qk ], [ %i.aqx, %.lr.ph141.i901 ], [ 1, %bb.qk ], [ %i.aqx, %bb.qt ], [ %i.aqx, %bb.qs ], [ %i.aqx, %bb.qn ], [ %i.aqx, %bb.qo ], [ %i.aqx, %.lr.ph.i891 ] ; 4 uses
  %.ph1421 = phi ptr [ inttoptr (i64 1 to ptr), %bb.oj ], [ %i.arj, %.preheader111.i908 ], [ %i.arj, %.lr.ph150.i916 ], [ %i.arj, %bb.qk ], [ %i.arj, %.lr.ph141.i901 ], [ %i.arj, %bb.qk ], [ %i.arj, %bb.qt ], [ %i.arj, %bb.qs ], [ %i.arj, %bb.qn ], [ %i.arj, %bb.qo ], [ %i.arj, %.lr.ph.i891 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.dy, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph1421, i64 noundef %.sroa.6480.01418.ph) #53
  %i.awl = load i8, ptr %i.dy, align 8, !range !21, !noundef !12
  %i.awm = trunc nuw i8 %i.awl to i1
  br i1 %i.awm, label %bb.qy, label %bb.qz

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit923: ; preds = %bb.qp, %bb.qq, %bb.qu, %bb.qv, %.preheader.i914
  %.sroa.151136.0 = phi i64 [ %i.awb, %bb.qu ], [ %i.avn, %bb.qq ], [ %i.awk, %bb.qv ], [ 0, %.preheader.i914 ], [ %i.ave, %bb.qp ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @645, i64 noundef 4, i64 noundef %.sroa.151136.0) #45
  br label %bb.qw

bb.qw:                                            ; preds = %bb.qz, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit923
  %i.awn = phi ptr [ %.ph1421, %bb.qz ], [ %i.arj, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit923 ]
  %.sroa.41221.0141214161428 = phi i64 [ %.sroa.6480.01418.ph, %bb.qz ], [ %i.aqx, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit923 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dw, ptr noundef nonnull align 8 dereferenceable(24) %i.dz, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cu, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @650, i64 noundef 23, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.dw) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw)
  %i.awo = icmp eq i64 %.sroa.41221.0141214161428, 0
  br i1 %i.awo, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit926, label %bb.qx

bb.qx:                                            ; preds = %bb.qw
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.awn, i64 noundef %.sroa.41221.0141214161428, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !30567
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit926

bb.qy:                                            ; preds = %.thread1413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx)
  store i64 %.sroa.6480.01418.ph, ptr %i.dx, align 8
  store ptr %.ph1421, ptr %.sroa.51131.0..sroa_idx, align 8
  store i64 %.sroa.6480.01418.ph, ptr %.sroa.81132.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @645, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.dx) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dw, ptr noundef nonnull align 8 dereferenceable(24) %i.dz, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cu, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @650, i64 noundef 23, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.dw) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit926

bb.qz:                                            ; preds = %.thread1413
  %i.awp = load double, ptr %i.ajr, align 8, !noundef !12
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @645, i64 noundef 4, double noundef %i.awp) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy)
  br label %bb.qw

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit926: ; preds = %bb.qx, %bb.qw, %bb.qy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !30568
  %i.awq = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !30568 ; 4 uses
  %i.awr = icmp eq ptr %i.awq, null
  br i1 %i.awr, label %bb.ra, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit927, !prof !15

bb.ra:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit926
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #52, !noalias !30568
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit927: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit926
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.awq, ptr noundef nonnull align 8 dereferenceable(24) %i.cu, i64 24, i1 false)
  %.sroa.41225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.awq, i64 24
  store i32 1, ptr %.sroa.41225.0..sroa_idx, align 8
  store ptr %i.awq, ptr %i.ea, align 8
  store ptr @56, ptr %i.ajs, align 8
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods5error13set_exit_code(i32 noundef 1) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du)
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.du, align 8
  %i.aws = call noundef nonnull align 8 ptr @_RNvMsk_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stderr4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.du) #45
  store ptr %i.aws, ptr %i.dv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt)
  %i.awt = call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore9util_name() #45 ; 2 uses
  %i.awu = extractvalue { ptr, i64 } %i.awt, 0
  %i.awv = extractvalue { ptr, i64 } %i.awt, 1
  store ptr %i.awu, ptr %i.dt, align 8
  store i64 %i.awv, ptr %i.ajt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds)
  store ptr %i.dt, ptr %i.ds, align 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.4484.0..sroa_idx, align 8
  store ptr %i.ea, ptr %i.aju, align 8
  store ptr @_RNvXsm_NtCs7tKScEop1B6_5alloc5boxedINtB5_3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_ENtNtCs6JMX4GRUq9U_4core3fmt7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.4488.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !30569
  store ptr %i.dv, ptr %i.e, align 8, !noalias !30569
  store ptr null, ptr %i.ajv, align 8, !noalias !30569
  %i.aww = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @324, ptr noundef nonnull @86, ptr noundef nonnull %i.ds) #45
  %i.awx = load ptr, ptr %i.ajv, align 8, !noalias !30569, !noundef !12 ; 7 uses
  %.not.i5.i = icmp eq ptr %i.awx, null           ; 2 uses
  br i1 %i.aww, label %bb.rb, label %bb.rc

bb.rb:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit927
  br i1 %.not.i5.i, label %bb.rg, label %bb.rh, !prof !18

bb.rc:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit927
  br i1 %.not.i5.i, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit.i.thread, label %bb.rd

bb.rd:                                            ; preds = %bb.rc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !30570
  %i.awy = ptrtoint ptr %i.awx to i64             ; 2 uses
  %i.awz = and i64 %i.awy, 3
  switch i64 %i.awz, label %default.unreachable1715 [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i.i929
    i64 3, label %bb.re
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i.i929
    i64 1, label %bb.rf
  ], !prof !22

bb.re:                                            ; preds = %bb.rd
  %i.axa = icmp ult ptr %i.awx, inttoptr (i64 188978561024 to ptr)
  %i.axb = and i64 %i.awy, 1095216660480
  %i.axc = icmp ne i64 %i.axb, 1095216660480
  call void @llvm.assume(i1 %i.axa)
  call void @llvm.assume(i1 %i.axc)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i.i929

bb.rf:                                            ; preds = %bb.rd
  %i.axd = getelementptr i8, ptr %i.awx, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.axd) ]
  store ptr %i.axd, ptr %i.ajw, align 8, !alias.scope !30571, !noalias !30570
  store i8 3, ptr %i.d, align 8, !alias.scope !30571, !noalias !30570
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ajw) #45, !noalias !30572
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i.i929

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i.i929: ; preds = %bb.rf, %bb.re, %bb.rd, %bb.rd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !30570
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit.i.thread

bb.rg:                                            ; preds = %bb.rb
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @319, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @321) #50
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit.i.thread: ; preds = %bb.rc, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i.i929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !30569
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit934

bb.rh:                                            ; preds = %bb.rb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !30569
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !30573
  %i.axe = ptrtoint ptr %i.awx to i64             ; 2 uses
  %i.axf = and i64 %i.axe, 3
  switch i64 %i.axf, label %default.unreachable1715 [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i932
    i64 3, label %bb.ri
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i932
    i64 1, label %bb.rj
  ], !prof !22

bb.ri:                                            ; preds = %bb.rh
  %i.axg = icmp ult ptr %i.awx, inttoptr (i64 188978561024 to ptr)
  %i.axh = and i64 %i.axe, 1095216660480
  %i.axi = icmp ne i64 %i.axh, 1095216660480
  call void @llvm.assume(i1 %i.axg)
  call void @llvm.assume(i1 %i.axi)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i932

bb.rj:                                            ; preds = %bb.rh
  %i.axj = getelementptr i8, ptr %i.awx, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.axj) ]
  store ptr %i.axj, ptr %i.ajx, align 8, !alias.scope !30574, !noalias !30573
  store i8 3, ptr %i.c, align 8, !alias.scope !30574, !noalias !30573
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ajx) #45, !noalias !30573
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i932

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i932: ; preds = %bb.rj, %bb.ri, %bb.rh, %bb.rh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !30573
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit934

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit934: ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit.i.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i932
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  %.val583 = load ptr, ptr %i.dv, align 8, !nonnull !12, !align !23, !noundef !12 ; 3 uses
  %i.axk = getelementptr inbounds nuw i8, ptr %.val583, i64 12 ; 2 uses
  %i.axl = load i32, ptr %i.axk, align 4, !noundef !12
  %i.axm = add i32 %i.axl, -1                     ; 2 uses
  store i32 %i.axm, ptr %i.axk, align 4
  %i.axn = icmp eq i32 %i.axm, 0
  br i1 %i.axn, label %bb.rk, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit

bb.rk:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit934
  store atomic i64 0, ptr %.val583 monotonic, align 8
  %i.axo = getelementptr inbounds nuw i8, ptr %.val583, i64 8 ; 2 uses
  %i.axp = atomicrmw xchg ptr %i.axo, i32 0 release, align 4
  %i.axq = icmp eq i32 %i.axp, 2
  br i1 %i.axq, label %bb.rl, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit, !prof !18

bb.rl:                                            ; preds = %bb.rk
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.axo) #45
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit934, %bb.rk, %bb.rl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv)
  call void @llvm.experimental.noalias.scope.decl(metadata !30575)
  %i.axr = load ptr, ptr %i.ajs, align 8, !alias.scope !30575, !nonnull !12, !align !23, !noundef !12 ; 3 uses
  %i.axs = load ptr, ptr %i.axr, align 8, !invariant.load !12, !noalias !30575 ; 2 uses
  %.not.i935 = icmp eq ptr %i.axs, null
  br i1 %.not.i935, label %bb.rn, label %bb.rm

bb.rm:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit
  %i.axt = load ptr, ptr %i.ea, align 8, !alias.scope !30575, !nonnull !12, !noundef !12
  call void %i.axs(ptr noundef nonnull %i.axt) #51, !noalias !30575, !inline_history !24
  br label %bb.rn

bb.rn:                                            ; preds = %bb.rm, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit
  %i.axu = getelementptr inbounds nuw i8, ptr %i.axr, i64 8
  %i.axv = load i64, ptr %i.axu, align 8, !range !19, !invariant.load !12, !noalias !30575 ; 2 uses
  %i.axw = icmp eq i64 %i.axv, 0
  br i1 %i.axw, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECsl8pJiQOn4hA_9coreutils.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i936

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i936: ; preds = %bb.rn
  %.val.i = load ptr, ptr %i.ea, align 8, !alias.scope !30575, !nonnull !12, !noundef !12
end_hunk_0
