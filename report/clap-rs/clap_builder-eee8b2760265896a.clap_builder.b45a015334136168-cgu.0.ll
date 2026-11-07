Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clap-rs/original/clap_builder-eee8b2760265896a.clap_builder.b45a015334136168-cgu.0?download=true
inline.NumInlined: 5218
inline.NumDeleted: 2692
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16get_matches_with:bb.a
  br i1 %.not89.i, label %bb.fy, label %.split84.i

._crit_edge.i:                                    ; preds = %bb.gi, %_RINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB6_7MKeyMap3getjEB8_.exit148.thread.i
  %.sroa.0686.6 = phi i8 [ %.sroa.0686.01812, %_RINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB6_7MKeyMap3getjEB8_.exit148.thread.i ], [ 1, %bb.gi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !10313
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fm, ptr noundef nonnull align 8 dereferenceable(72) %i.bc, i64 72, i1 false), !noalias !10318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !10313
  %.pr820.pre = load i64, ptr %i.fm, align 8, !noalias !10009
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15parse_short_arg.exit

.split84.i:                                       ; preds = %.lr.ph.i393
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !10313
  call void @_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ay, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.015.0.copyload.i, i64 noundef %.sroa.6.0.copyload.i) #43, !noalias !10297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !10313
  store ptr %i.ay, ptr %i.ax, align 8, !noalias !10313
  store ptr @_RNvXsb_NtCs4wP2HXfJTCR_5alloc6borrowINtB5_3CoweENtNtCsj6eKBz9Db1c_4core3fmt7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.457.0..sroa_idx.i395, align 8, !noalias !10313
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.az, ptr noundef nonnull @69, ptr noundef nonnull %i.ax) #43, !noalias !10297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !10313
  %.val102.i = load i64, ptr %i.ay, align 8, !range !12, !noalias !10313, !noundef !10 ; 2 uses
  %i.ati = icmp sgt i64 %.val102.i, 0
  br i1 %i.ati, label %bb.fx, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit.i

bb.fx:                                            ; preds = %.split84.i
  %.val103.i = load ptr, ptr %i.jg, align 8, !noalias !10313, !nonnull !10, !noundef !10
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val103.i, i64 noundef %.val102.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !10319
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit.i: ; preds = %bb.fx, %.split84.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !10313
  store i64 -9223372036854775801, ptr %i.fm, align 8, !alias.scope !10293
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false), !noalias !10318
  br label %.loopexit194.i

bb.fy:                                            ; preds = %.lr.ph.i393
  %.sroa.6.8.extract.trunc.i = trunc i64 %.sroa.6.0.copyload.i to i32 ; 4 uses
  store i32 %.sroa.6.8.extract.trunc.i, ptr %i.ba, align 4, !noalias !10313
  %i.atj = load ptr, ptr %i.gc, align 8, !alias.scope !10294, !nonnull !10, !align !16, !noundef !10 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10320)
  %i.atk = getelementptr inbounds nuw i8, ptr %i.atj, i64 160
  %i.atl = load ptr, ptr %i.atk, align 8, !alias.scope !10320, !noalias !10297, !nonnull !10, !noundef !10 ; 2 uses
  %i.atm = getelementptr inbounds nuw i8, ptr %i.atj, i64 168
  %i.atn = load i64, ptr %i.atm, align 8, !alias.scope !10320, !noalias !10297, !noundef !10 ; 2 uses
  %.idx4603 = shl nuw nsw i64 %i.atn, 5
  %i.ato = getelementptr inbounds nuw i8, ptr %i.atl, i64 %.idx4603
  %i.atp = icmp eq i64 %i.atn, 0
  br i1 %i.atp, label %._crit_edge4533, label %.lr.ph4532

bb.fz:                                            ; preds = %.lr.ph4532
  %i.atq = getelementptr inbounds nuw i8, ptr %i.ats, i64 32 ; 2 uses
  %i.atr = icmp eq ptr %i.atq, %i.ato
  br i1 %i.atr, label %._crit_edge4533, label %.lr.ph4532

.lr.ph4532:                                       ; preds = %bb.fy, %bb.fz
  %i.ats = phi ptr [ %i.atq, %bb.fz ], [ %i.atl, %bb.fy ] ; 4 uses
  %.val.i.i.i153.i = load i32, ptr %i.ats, align 8, !range !30, !noalias !10321, !noundef !10
  %i.att = getelementptr i8, ptr %i.ats, i64 4
  %.val1.i.i.i154.i = load i32, ptr %i.att, align 4, !noalias !10321
  %i.atu = icmp eq i32 %.val.i.i.i153.i, 0
  %i.atv = icmp eq i32 %.val1.i.i.i154.i, %.sroa.6.8.extract.trunc.i
  %.sroa.0.0.i.i.i.i155.i = select i1 %i.atu, i1 %i.atv, i1 false
  br i1 %.sroa.0.0.i.i.i.i155.i, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BS_NtBS_7MKeyMap3getcE0EBU_.exit.i.i, label %bb.fz

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BS_NtBS_7MKeyMap3getcE0EBU_.exit.i.i: ; preds = %.lr.ph4532
  %i.atw = getelementptr inbounds nuw i8, ptr %i.ats, i64 24
  %i.atx = load i64, ptr %i.atw, align 8, !noalias !10322, !noundef !10 ; 3 uses
  %i.aty = getelementptr inbounds nuw i8, ptr %i.atj, i64 144
  %i.atz = load i64, ptr %i.aty, align 8, !alias.scope !10320, !noalias !10297, !noundef !10 ; 2 uses
  %i.aua = icmp ult i64 %i.atx, %i.atz
  br i1 %i.aua, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BS_NtBS_7MKeyMap3getcE0EBU_.exit.i.i
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.atx, i64 noundef %i.atz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #44, !noalias !10322
  unreachable

bb.gb:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BS_NtBS_7MKeyMap3getcE0EBU_.exit.i.i
  %i.aub = getelementptr inbounds nuw i8, ptr %i.atj, i64 136
  %i.auc = load ptr, ptr %i.aub, align 8, !alias.scope !10320, !noalias !10297, !nonnull !10, !noundef !10
  %i.aud = getelementptr inbounds nuw [600 x i8], ptr %i.auc, i64 %i.atx ; 4 uses
  %i.aue = getelementptr i8, ptr %i.aud, i64 16
  %.val107.i = load i64, ptr %i.aue, align 8, !noalias !10297
  %i.auf = getelementptr i8, ptr %i.aud, i64 32
  %.val108.i = load i64, ptr %i.auf, align 8, !noalias !10297
  %i.aug = trunc nuw i64 %.val107.i to i1
  %i.auh = icmp eq i64 %.val108.i, 0
  %.sroa.02.0.i.not.i = select i1 %i.aug, i1 %i.auh, i1 false
  br i1 %.sroa.02.0.i.not.i, label %bb.ge, label %bb.gf

._crit_edge4533:                                  ; preds = %bb.fy, %bb.fz
  %i.aui = getelementptr i8, ptr %i.atj, i64 184
  %.val113.i = load ptr, ptr %i.aui, align 8, !noalias !10297, !nonnull !10, !noundef !10 ; 2 uses
  %i.auj = getelementptr i8, ptr %i.atj, i64 192
  %.val114.i = load i64, ptr %i.auj, align 8, !noalias !10297, !noundef !10 ; 2 uses
  %.idx.i.i397 = mul nuw nsw i64 %.val114.i, 712
  %i.auk = getelementptr inbounds nuw i8, ptr %.val113.i, i64 %.idx.i.i397
  %i.aul = icmp eq i64 %.val114.i, 0
  br i1 %i.aul, label %.split.i401, label %.lr.ph.i.i.i398

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command17find_short_subcmd0Bb_.exit.loopexit.i.i.i: ; preds = %bb.gd, %bb.gc
  %i.aum = icmp eq ptr %i.auo, %i.auk
  br i1 %i.aum, label %.split.i401, label %.lr.ph.i.i.i398

.lr.ph.i.i.i398:                                  ; preds = %._crit_edge4533, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command17find_short_subcmd0Bb_.exit.loopexit.i.i.i
  %i.aun = phi ptr [ %i.auo, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command17find_short_subcmd0Bb_.exit.loopexit.i.i.i ], [ %.val113.i, %._crit_edge4533 ] ; 6 uses
  %i.auo = getelementptr inbounds nuw i8, ptr %i.aun, i64 712 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10323)
  %i.aup = getelementptr inbounds nuw i8, ptr %i.aun, i64 696
  %i.auq = load i32, ptr %i.aup, align 8, !range !44, !alias.scope !10323, !noalias !10324, !noundef !10
  %i.aur = icmp eq i32 %i.auq, %.sroa.6.8.extract.trunc.i
  br i1 %i.aur, label %.loopexit.i399, label %bb.gc

bb.gc:                                            ; preds = %.lr.ph.i.i.i398
  %i.aus = getelementptr inbounds nuw i8, ptr %i.aun, i64 88
  %i.aut = load ptr, ptr %i.aus, align 8, !alias.scope !10323, !noalias !10324, !nonnull !10, !noundef !10 ; 2 uses
  %i.auu = getelementptr inbounds nuw i8, ptr %i.aun, i64 96
  %i.auv = load i64, ptr %i.auu, align 8, !alias.scope !10323, !noalias !10324, !noundef !10 ; 2 uses
  %.idx4604 = shl nuw nsw i64 %i.auv, 3
  %i.auw = getelementptr inbounds nuw i8, ptr %i.aut, i64 %.idx4604
  %.not.not.not.i.not.not.i.not.i.i.i.i4541 = icmp eq i64 %i.auv, 0
  br i1 %.not.not.not.i.not.not.i.not.i.i.i.i4541, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command17find_short_subcmd0Bb_.exit.loopexit.i.i.i, label %.lr.ph4543

bb.gd:                                            ; preds = %.lr.ph4543
  %i.aux = getelementptr inbounds nuw i8, ptr %i.auy, i64 8 ; 2 uses
  %.not.not.not.i.not.not.i.not.i.i.i.i = icmp eq ptr %i.aux, %i.auw
  br i1 %.not.not.not.i.not.not.i.not.i.i.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command17find_short_subcmd0Bb_.exit.loopexit.i.i.i, label %.lr.ph4543

.lr.ph4543:                                       ; preds = %bb.gc, %bb.gd
  %i.auy = phi ptr [ %i.aux, %bb.gd ], [ %i.aut, %bb.gc ] ; 2 uses
  %.val5.i.i.i.i.i.i = load i32, ptr %i.auy, align 4, !range !51, !noalias !10325, !noundef !10
  %i.auz = icmp eq i32 %.val5.i.i.i.i.i.i, %.sroa.6.8.extract.trunc.i
  br i1 %i.auz, label %.loopexit.i399, label %bb.gd

bb.ge:                                            ; preds = %bb.gb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !10313
  store i64 0, ptr %i.aw, align 8, !noalias !10313
  store ptr inttoptr (i64 8 to ptr), ptr %i.je, align 8, !noalias !10313
  store i64 0, ptr %i.jf, align 8, !noalias !10313
  call fastcc void @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser5react(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %i.fm, ptr noundef nonnull align 8 dereferenceable(40) %0, i8 noundef 0, i8 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(600) %i.aud, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.aw, i64 noundef 0, i64 undef, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1) #43, !noalias !10326
  %i.ava = load i64, ptr %i.fm, align 8, !range !56, !alias.scope !10293, !noundef !10
  %i.avb = icmp eq i64 %i.ava, -1
  br i1 %i.avb, label %bb.gg, label %bb.gh

bb.gf:                                            ; preds = %bb.gb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !10313
  %i.avc = load ptr, ptr %i.fn, align 8, !alias.scope !10295, !nonnull !10, !noundef !10
  %i.avd = load i64, ptr %i.in, align 8, !alias.scope !10295, !noundef !10
  %i.ave = load i64, ptr %i.ip, align 8, !alias.scope !10295, !noundef !10
  %i.avf = load ptr, ptr %i.ir, align 8, !alias.scope !10295, !noundef !10 ; 2 uses
  %.not95.i = icmp eq ptr %i.avf, null
  %i.avg = load i64, ptr %i.is, align 8, !alias.scope !10295
  %.sroa.564.0.i = select i1 %.not95.i, i64 undef, i64 %i.avg
  store ptr %i.avc, ptr %i.av, align 8, !noalias !10313
  store i64 %i.avd, ptr %i.ja, align 8, !noalias !10313
  %i.avh = load <2 x ptr>, ptr %i.io, align 8, !alias.scope !10295
  store <2 x ptr> %i.avh, ptr %i.jb, align 8, !noalias !10313
  store i64 %i.ave, ptr %.sroa.562.0..sroa_idx.i, align 8, !noalias !10313
  store ptr %i.avf, ptr %i.jc, align 8, !noalias !10313
  store i64 %.sroa.564.0.i, ptr %i.jd, align 8, !noalias !10313
  %i.avi = call { ptr, i64 } @_RNvMs2_Cs3RZUOUhPFQ6_8clap_lexNtB5_10ShortFlags13next_value_os(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.av) #43, !noalias !10297 ; 2 uses
  %i.avj = extractvalue { ptr, i64 } %i.avi, 0    ; 3 uses
  %.not96.i = icmp eq ptr %i.avj, null
  %i.avk = extractvalue { ptr, i64 } %i.avi, 1    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !10313
  %.not5.i192.i = icmp eq i64 %i.avk, 0
  %.not5.i.i396 = select i1 %.not96.i, i1 true, i1 %.not5.i192.i
  br i1 %.not5.i.i396, label %bb.gl, label %bb.gj

bb.gg:                                            ; preds = %bb.ge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !10313
  br label %.loopexit194.i

bb.gh:                                            ; preds = %bb.ge
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder6parser6parser11ParseResultEBH_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.bc) #43, !noalias !10297
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bc, ptr noundef nonnull align 8 dereferenceable(72) %i.fm, i64 72, i1 false), !noalias !10318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !10313
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gm, %bb.gh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !10313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !10313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !10313
  call void @_RNvMs2_Cs3RZUOUhPFQ6_8clap_lexNtB5_10ShortFlags9next_flag(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bb, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.fn) #43, !noalias !10297
  %i.avl = load i64, ptr %i.bb, align 8, !range !13, !noalias !10313, !noundef !10
  %i.avm = trunc nuw i64 %i.avl to i1
  br i1 %i.avm, label %.lr.ph.i393, label %._crit_edge.i

bb.gj:                                            ; preds = %bb.gf
  %i.avn = call { ptr, i64 } @_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt12strip_prefix(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.avj, i64 noundef %i.avk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 1) #43, !noalias !10297 ; 2 uses
  %i.avo = extractvalue { ptr, i64 } %i.avn, 0    ; 2 uses
  %.not98.i = icmp eq ptr %i.avo, null
  br i1 %.not98.i, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.avp = extractvalue { ptr, i64 } %i.avn, 1
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.gj, %bb.gf
  %.sroa.530.0.i = phi i64 [ %i.avp, %bb.gk ], [ 0, %bb.gf ], [ %i.avk, %bb.gj ]
  %.sroa.027.0.i = phi ptr [ %i.avo, %bb.gk ], [ null, %bb.gf ], [ %i.avj, %bb.gj ]
  %.sroa.077.0.i = phi i1 [ true, %bb.gk ], [ false, %bb.gf ], [ false, %bb.gj ]
  call fastcc void @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15parse_opt_value(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.fm, ptr noundef nonnull align 8 dereferenceable(40) %0, i8 noundef 0, ptr noalias nofree noundef readonly captures(address, read_provenance) %.sroa.027.0.i, i64 %.sroa.530.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(600) %i.aud, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1, i1 noundef zeroext %.sroa.077.0.i) #43, !noalias !10326
  %i.avq = load i64, ptr %i.fm, align 8, !range !56, !alias.scope !10293, !noundef !10 ; 4 uses
  %i.avr = icmp eq i64 %i.avq, -1
  br i1 %i.avr, label %.loopexit194.i, label %4

4:                                                ; preds = %bb.gl
  %5 = icmp ne i64 %i.avq, -9223372036854775804
  call void @llvm.assume(i1 %5)
  %6 = icmp eq i64 %i.avq, -9223372036854775805
  br i1 %6, label %bb.gm, label %.loopexit194.i

bb.gm:                                            ; preds = %4
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder6parser6parser11ParseResultEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.fm) #43, !noalias !10327
  br label %bb.gi

.loopexit194.i:                                   ; preds = %bb.gl, %4, %bb.gu, %bb.gn, %.split.i401, %bb.gg, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit.i
  %.pr8202605 = phi i64 [ -9223372036854775801, %.split.i401 ], [ -9223372036854775808, %bb.gu ], [ -1, %bb.gn ], [ -1, %bb.gg ], [ -9223372036854775801, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit.i ], [ -1, %bb.gl ], [ %i.avq, %4 ]
  %.sroa.0686.8 = phi i8 [ %.sroa.0686.7, %.split.i401 ], [ %.sroa.0686.7, %bb.gu ], [ %.sroa.0686.7, %bb.gn ], [ 1, %bb.gg ], [ %.sroa.0686.7, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit.i ], [ 1, %4 ], [ 1, %bb.gl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !10313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !10313
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder6parser6parser11ParseResultEBH_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.bc) #43, !noalias !10297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !10313
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15parse_short_arg.exit

.loopexit.i399:                                   ; preds = %.lr.ph.i.i.i398, %.lr.ph4543
  %i.avs = getelementptr inbounds nuw i8, ptr %i.aun, i64 560
  %i.avt = load ptr, ptr %i.avs, align 8, !noalias !10297, !nonnull !10, !noundef !10
  %i.avu = getelementptr inbounds nuw i8, ptr %i.aun, i64 568
  %i.avv = load i64, ptr %i.avu, align 8, !noalias !10297, !noundef !10 ; 7 uses
  %i.avw = call fastcc noundef align 8 ptr @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15resolve_pending(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1) #43, !noalias !10328 ; 2 uses
  %.not92.i = icmp eq ptr %i.avw, null
  br i1 %.not92.i, label %bb.go, label %bb.gn

.split.i401:                                      ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command17find_short_subcmd0Bb_.exit.loopexit.i.i.i, %._crit_edge4533
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !10313
  store ptr %i.ba, ptr %i.au, align 8, !noalias !10313
  store ptr @_RNvXsk_NtCsj6eKBz9Db1c_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.474.0..sroa_idx.i, align 8, !noalias !10313
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noundef nonnull @69, ptr noundef nonnull %i.au) #43, !noalias !10327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !10313
  store i64 -9223372036854775801, ptr %i.fm, align 8, !alias.scope !10293
  br label %.loopexit194.i

bb.gn:                                            ; preds = %.loopexit.i399
  store ptr %i.avw, ptr %.sroa.419.0..sroa_idx.i, align 8, !alias.scope !10293
  store i64 -1, ptr %i.fm, align 8, !alias.scope !10293
  br label %.loopexit194.i

bb.go:                                            ; preds = %.loopexit.i399
  %i.avx = load i64, ptr %i.jh, align 8, !alias.scope !10294, !noundef !10
  %i.avy = add i64 %i.avx, 1                      ; 2 uses
  store i64 %i.avy, ptr %i.jh, align 8, !alias.scope !10294
  %.not.i159.i = icmp slt i64 %i.avv, 0
  br i1 %.not.i159.i, label %bb.gq, label %bb.gp, !prof !20

bb.gp:                                            ; preds = %bb.go
  %i.avz = icmp eq i64 %i.avv, 0
  br i1 %i.avz, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread181.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i400

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i400: ; preds = %bb.gp
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !10329
  %i.awa = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.avv, i64 noundef range(i64 1, 9) 1) #43, !noalias !10329 ; 3 uses
  %i.awb = icmp eq ptr %i.awa, null
  br i1 %i.awb, label %bb.gq, label %bb.gs

bb.gq:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i400, %bb.go
  %.sroa.4.0.ph.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i400 ], [ 0, %bb.go ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.avv) #46, !noalias !10297
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread181.i: ; preds = %bb.gs, %bb.gp
  %i.awc = phi ptr [ %i.awa, %bb.gs ], [ inttoptr (i64 1 to ptr), %bb.gp ]
  %i.awd = load i64, ptr %0, align 8, !range !13, !alias.scope !10330, !noundef !10
  %i.awe = trunc nuw i64 %i.awd to i1
  br i1 %i.awe, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECsfu0rQaTkGUu_12clap_builder.exit.i, label %bb.gr

bb.gr:                                            ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread181.i
  store i64 1, ptr %0, align 8, !alias.scope !10330
  store i64 %i.avy, ptr %i.ji, align 8, !alias.scope !10330
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECsfu0rQaTkGUu_12clap_builder.exit.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECsfu0rQaTkGUu_12clap_builder.exit.i: ; preds = %bb.gr, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread181.i
  %i.awf = load ptr, ptr %i.ir, align 8, !alias.scope !10295, !noundef !10
  %.not94.i = icmp eq ptr %i.awf, null
  br i1 %.not94.i, label %bb.gt, label %bb.gu

bb.gs:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i400
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.awa, ptr nonnull align 1 %i.avt, i64 %i.avv, i1 false), !noalias !10297
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread181.i

bb.gt:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECsfu0rQaTkGUu_12clap_builder.exit.i
  %i.awg = load ptr, ptr %i.io, align 8, !alias.scope !10295, !nonnull !10, !noundef !10
  %i.awh = load ptr, ptr %i.iq, align 8, !alias.scope !10295, !nonnull !10, !noundef !10
  %i.awi = icmp eq ptr %i.awh, %i.awg
  br i1 %i.awi, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %bb.gv, %bb.gt, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECsfu0rQaTkGUu_12clap_builder.exit.i
  store i64 -9223372036854775808, ptr %i.fm, align 8, !alias.scope !10293
  store i64 %i.avv, ptr %.sroa.419.0..sroa_idx.i, align 8, !alias.scope !10293
  store ptr %i.awc, ptr %.sroa.444.sroa.4.0..sroa.444.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !10293
  store i64 %i.avv, ptr %.sroa.444.sroa.5.0..sroa.444.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !10293
  br label %.loopexit194.i

bb.gv:                                            ; preds = %bb.gt
  store i64 0, ptr %0, align 8, !alias.scope !10294
  br label %bb.gu

_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15parse_short_arg.exit.thread: ; preds = %bb.fr, %_RNvXs7_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7CommandINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexRNtNtNtB9_4util2id2IdE5index.exit.i414, %_RNvXs7_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7CommandINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexRNtNtNtB9_4util2id2IdE5index.exit123.i, %bb.fo, %bb.fp, %.loopexit195.i
  store i64 -9223372036854775803, ptr %i.fm, align 8, !alias.scope !10293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %bb.gy

_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15parse_short_arg.exit: ; preds = %._crit_edge.i, %.loopexit194.i
  %.pr820 = phi i64 [ %.pr820.pre, %._crit_edge.i ], [ %.pr8202605, %.loopexit194.i ]
  %.sroa.0686.9.ph = phi i8 [ %.sroa.0686.6, %._crit_edge.i ], [ %.sroa.0686.8, %.loopexit194.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  %i.awj = icmp eq i64 %.pr820, -1
  br i1 %i.awj, label %bb.gx, label %bb.gy

bb.gw:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fo), !noalias !10009
  br label %bb.fi

bb.gx:                                            ; preds = %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15parse_short_arg.exit
  %i.awk = load ptr, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !10009, !nonnull !10, !align !16, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm), !noalias !10009
  br label %bb.hx

bb.gy:                                            ; preds = %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15parse_short_arg.exit.thread, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15parse_short_arg.exit
  %.sroa.0686.9822 = phi i8 [ %.sroa.0686.01812, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15parse_short_arg.exit.thread ], [ %.sroa.0686.9.ph, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15parse_short_arg.exit ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fl, ptr noundef nonnull align 8 dereferenceable(72) %i.fm, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm), !noalias !10009
  %i.awl = load i64, ptr %i.fl, align 8, !range !28, !noundef !10 ; 3 uses
  %i.awm = icmp ne i64 %i.awl, -9223372036854775804
  call void @llvm.assume(i1 %i.awm)
  %i.awn = xor i64 %i.awl, -9223372036854775808
  %i.awo = icmp slt i64 %i.awl, 0
  %i.awp = select i1 %i.awo, i64 %i.awn, i64 4
  switch i64 %i.awp, label %bb.e [
    i64 0, label %bb.gz
    i64 1, label %bb.hu
    i64 2, label %bb.hv
    i64 3, label %bb.ha
    i64 4, label %bb.ha
    i64 7, label %bb.hi
    i64 6, label %bb.hb
    i64 5, label %bb.hy
    i64 8, label %bb.hy
  ], !prof !10331

bb.gz:                                            ; preds = %bb.gy
  %i.awq = load i64, ptr %0, align 8, !range !13, !alias.scope !10006, !noundef !10
  %i.awr = trunc nuw i64 %i.awq to i1             ; 2 uses
  br i1 %i.awr, label %bb.hp, label %bb.hq

bb.ha:                                            ; preds = %bb.gy, %bb.gy
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @251) #44, !noalias !10006, !inline_history !8350
  unreachable

bb.hb:                                            ; preds = %bb.gy
  %i.aws = call fastcc noundef align 8 ptr @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15resolve_pending(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1) #43, !inline_history !8350 ; 2 uses
  %i.awt = icmp eq ptr %i.aws, null
  br i1 %i.awt, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit389, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEBF_(ptr nonnull %i.aws) #43, !noalias !10006
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit389

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit389: ; preds = %bb.hb, %bb.hc
  %i.awu = load ptr, ptr %i.gc, align 8, !alias.scope !10006, !nonnull !10, !align !16, !noundef !10 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fk), !noalias !10009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fj), !noalias !10009
  call void @llvm.experimental.noalias.scope.decl(metadata !10332)
  call void @llvm.experimental.noalias.scope.decl(metadata !10333)
  call void @llvm.experimental.noalias.scope.decl(metadata !10334), !noalias !10006
  call void @llvm.experimental.noalias.scope.decl(metadata !10335), !noalias !10006
  %i.awv = getelementptr inbounds nuw i8, ptr %i.awu, i64 232
  %i.aww = load ptr, ptr %i.awv, align 8, !alias.scope !10336, !noalias !10006, !nonnull !10, !noundef !10 ; 2 uses
  %i.awx = getelementptr inbounds nuw i8, ptr %i.awu, i64 240
  %i.awy = load i64, ptr %i.awx, align 8, !alias.scope !10336, !noalias !10006, !noundef !10 ; 2 uses
  %.idx4605 = shl nuw nsw i64 %i.awy, 4
  %i.awz = getelementptr inbounds nuw i8, ptr %i.aww, i64 %.idx4605
  %i.axa = icmp eq i64 %i.awy, 0
  br i1 %i.axa, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit388, label %.lr.ph4572

bb.hd:                                            ; preds = %.lr.ph4572
  %i.axb = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i3804571, i64 16 ; 2 uses
  %i.axc = add i64 %.sroa.8.0.i.i.i3794570, 1
  %i.axd = icmp eq ptr %i.axb, %i.awz
  br i1 %i.axd, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit388, label %.lr.ph4572

.lr.ph4572:                                       ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit389, %bb.hd
  %.sroa.0.01.i.i.i3804571 = phi ptr [ %i.axb, %bb.hd ], [ %i.aww, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit389 ] ; 2 uses
  %.sroa.8.0.i.i.i3794570 = phi i64 [ %i.axc, %bb.hd ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit389 ] ; 4 uses
  %.val.i.i.i381 = load i128, ptr %.sroa.0.01.i.i.i3804571, align 8, !noalias !10337
  %i.axe = icmp eq i128 %.val.i.i.i381, -100310019091698447603793328749864812255
  br i1 %i.axe, label %bb.he, label %bb.hd

bb.he:                                            ; preds = %.lr.ph4572
  %i.axf = getelementptr inbounds nuw i8, ptr %i.awu, i64 264
  %i.axg = load i64, ptr %i.axf, align 8, !alias.scope !10336, !noalias !10006, !noundef !10 ; 2 uses
  %i.axh = icmp ult i64 %.sroa.8.0.i.i.i3794570, %i.axg
  br i1 %i.axh, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.0.i.i.i3794570, i64 noundef %i.axg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #44, !noalias !10337
  unreachable

bb.hg:                                            ; preds = %bb.he
  %i.axi = getelementptr inbounds nuw i8, ptr %i.awu, i64 256
  %i.axj = load ptr, ptr %i.axi, align 8, !alias.scope !10336, !noalias !10006, !nonnull !10, !noundef !10
  %i.axk = getelementptr inbounds nuw [32 x i8], ptr %i.axj, i64 %.sroa.8.0.i.i.i3794570 ; 2 uses
  %.val5.i.i382 = load ptr, ptr %i.axk, align 8, !noalias !10338, !nonnull !10, !noundef !10
  %i.axl = getelementptr i8, ptr %i.axk, i64 8
  %.val6.i.i383 = load ptr, ptr %i.axl, align 8, !noalias !10338, !nonnull !10, !align !16, !noundef !10 ; 2 uses
  %i.axm = getelementptr inbounds nuw i8, ptr %.val6.i.i383, i64 16
  %i.axn = load i64, ptr %i.axm, align 8, !range !17, !invariant.load !10, !noalias !10338
  %i.axo = add nsw i64 %i.axn, -1
  %i.axp = and i64 %i.axo, -16
end_hunk_0
