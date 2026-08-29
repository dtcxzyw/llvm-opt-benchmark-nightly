Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/netlog-0413cb358f6d608a.netlog.c940049af7b502f1-cgu.3?download=true
inline.NumInlined: 206
inline.NumDeleted: 93
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs_NtCshhfsHpF03Qr_6netlog2h2NtB4_13Http2SettingsINtNtCskKLDkoKarTP_4core7convert7TryFromRSNtNtCsexYYUdYSQU6_5alloc6string6StringE8try_from:bb.a
  br i1 %.not105, label %.loopexit243, label %bb.aq, !dbg !11930

.loopexit243:                                     ; preds = %bb.ao, %bb.an, %.thread218.thread, %bb.al, %bb.ak, %bb.ap, %bb.aj
    #dbg_value(ptr %i.m, !10019, !DIExpression(), !11931)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !11932
  store ptr %i.m, ptr %i.h, align 8, !dbg !11932
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !11932
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB6_7Display3fmtCshhfsHpF03Qr_6netlog, ptr %.sroa.427.0..sroa_idx, align 8, !dbg !11932
    #dbg_value(ptr @187, !11698, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11933)
    #dbg_value(ptr %i.h, !11698, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11933)
    #dbg_value(ptr null, !11718, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11936)
    #dbg_value(i64 undef, !11718, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11936)
    #dbg_value(ptr poison, !11748, !DIExpression(), !11936)
    #dbg_declare(ptr poison, !11749, !DIExpression(), !11938)
    #dbg_value(ptr poison, !11755, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !11939)
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull @187, ptr noundef nonnull %i.h)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshhfsHpF03Qr_6netlog.exit124 unwind label %bb.ai, !dbg !11941

bb.aq:                                            ; preds = %bb.ap
    #dbg_value(ptr %.sroa.02.0217635, !9997, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11942)
    #dbg_value(i64 %.sroa.5.sroa.0.1211641, !9997, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11942)
    #dbg_value(i64 %.sroa.5.sroa.2.1213639, !9997, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11942)
    #dbg_value(i64 %.sroa.5.sroa.3.1215637, !9997, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !11942)
    #dbg_value(ptr %i.al, !10004, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11942)
    #dbg_value(i64 %i.an, !10004, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11942)
    #dbg_value(i64 %i.fs, !10004, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11942)
    #dbg_value(i64 %i.ft, !10004, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !11942)
    #dbg_value(ptr undef, !10155, !DIExpression(), !10164)
    #dbg_value(ptr %.sroa.02.0217635, !11943, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11952)
    #dbg_value(ptr %.sroa.02.0217635, !11954, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11961)
    #dbg_value(ptr %.sroa.02.0217635, !11963, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11980)
    #dbg_value(ptr %.sroa.02.0217635, !11982, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11988)
    #dbg_value(ptr %.sroa.02.0217635, !11990, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12004)
    #dbg_value(i64 %.sroa.5.sroa.0.1211641, !11943, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11952)
    #dbg_value(i64 %.sroa.5.sroa.0.1211641, !11954, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11961)
    #dbg_value(i64 %.sroa.5.sroa.0.1211641, !11963, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11980)
    #dbg_value(i64 %.sroa.5.sroa.0.1211641, !11982, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11988)
    #dbg_value(i64 %.sroa.5.sroa.0.1211641, !11990, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12004)
    #dbg_value(i64 %.sroa.5.sroa.2.1213639, !11949, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11952)
    #dbg_value(i64 %.sroa.5.sroa.2.1213639, !11960, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11961)
    #dbg_value(i64 %.sroa.5.sroa.2.1213639, !11975, !DIExpression(), !12006)
    #dbg_value(i64 %.sroa.5.sroa.2.1213639, !11995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12004)
    #dbg_value(i64 %.sroa.5.sroa.2.1213639, !12007, !DIExpression(), !12016)
    #dbg_value(i64 %.sroa.5.sroa.3.1215637, !11949, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11952)
    #dbg_value(i64 %.sroa.5.sroa.3.1215637, !11960, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11961)
    #dbg_value(i64 %.sroa.5.sroa.3.1215637, !11977, !DIExpression(), !12006)
    #dbg_value(i64 %.sroa.5.sroa.3.1215637, !11995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12004)
    #dbg_value(i64 %.sroa.5.sroa.2.1213639, !11974, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11980)
    #dbg_value(i64 %.sroa.5.sroa.2.1213639, !11987, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11988)
    #dbg_value(i64 %.sroa.5.sroa.3.1215637, !11974, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11980)
    #dbg_value(i64 %.sroa.5.sroa.3.1215637, !11987, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11988)
    #dbg_value(ptr %.sroa.02.0217635, !12018, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12029)
    #dbg_value(i64 %.sroa.5.sroa.0.1211641, !12018, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12029)
    #dbg_value(i64 %.sroa.5.sroa.2.1213639, !12023, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12029)
    #dbg_value(i64 %.sroa.5.sroa.3.1215637, !12023, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12029)
    #dbg_value(i64 %.sroa.5.sroa.2.1213639, !12024, !DIExpression(), !12031)
    #dbg_value(i64 %.sroa.5.sroa.2.1213639, !12032, !DIExpression(), !12036)
    #dbg_value(i64 %.sroa.5.sroa.3.1215637, !12026, !DIExpression(), !12031)
    #dbg_value(i64 %.sroa.5.sroa.3.1215637, !12032, !DIExpression(), !12038)
    #dbg_value(ptr %.sroa.02.0217635, !12027, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12040)
    #dbg_value(i64 %.sroa.5.sroa.0.1211641, !12027, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12040)
  %i.fu = icmp ugt i64 %.sroa.5.sroa.2.1213639, %.sroa.5.sroa.3.1215637, !dbg !12041
  %i.fv = icmp ugt i64 %.sroa.5.sroa.3.1215637, %.sroa.5.sroa.0.1211641
  %or.cond.i.i = or i1 %i.fu, %i.fv, !dbg !12041
  br i1 %or.cond.i.i, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread16.i128.invoke, label %bb.ar, !dbg !12041, !prof !12042

bb.ar:                                            ; preds = %bb.aq
  %i.fw = icmp eq i64 %.sroa.5.sroa.2.1213639, %.sroa.5.sroa.0.1211641, !dbg !12043
  br i1 %i.fw, label %bb.av, label %bb.as, !dbg !12043

bb.as:                                            ; preds = %bb.ar
  %i.fx = icmp eq i64 %.sroa.5.sroa.2.1213639, 0, !dbg !12044
  br i1 %i.fx, label %bb.at, label %bb.au, !dbg !12044

bb.at:                                            ; preds = %bb.au, %bb.as
  %i.fy = icmp eq i64 %.sroa.5.sroa.3.1215637, %.sroa.5.sroa.0.1211641, !dbg !12045
  br i1 %i.fy, label %bb.av, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.i, !dbg !12045

bb.au:                                            ; preds = %bb.as
    #dbg_value(ptr %.sroa.02.0217635, !12035, !DIExpression(), !12036)
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.02.0217635, i64 %.sroa.5.sroa.2.1213639, !dbg !12046
    #dbg_value(ptr %i.fz, !12047, !DIExpression(), !12052)
    #dbg_value(ptr %i.fz, !12054, !DIExpression(), !12057)
  %i.ga = load i8, ptr %i.fz, align 1, !dbg !12059, !alias.scope !12060, !noalias !12063, !noundef !35
    #dbg_value(i8 %i.ga, !12066, !DIExpression(), !12072)
  %i.gb = icmp sgt i8 %i.ga, -65, !dbg !12074
  br i1 %i.gb, label %bb.at, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread16.i128.invoke, !dbg !12075, !prof !12076

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.i: ; preds = %bb.at
    #dbg_value(ptr %.sroa.02.0217635, !12035, !DIExpression(), !12038)
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.02.0217635, i64 %.sroa.5.sroa.3.1215637, !dbg !12077
    #dbg_value(ptr %i.gc, !12047, !DIExpression(), !12078)
    #dbg_value(ptr %i.gc, !12054, !DIExpression(), !12080)
  %i.gd = load i8, ptr %i.gc, align 1, !dbg !12083, !alias.scope !12060, !noalias !12063, !noundef !35
    #dbg_value(i8 %i.gd, !12066, !DIExpression(), !12084)
  %i.ge = icmp sgt i8 %i.gd, -65, !dbg !12086
  br i1 %i.ge, label %bb.av, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread16.i128.invoke, !dbg !12087, !prof !12088

bb.av:                                            ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.i, %bb.at, %bb.ar
    #dbg_value(ptr %.sroa.02.0217635, !11996, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12089)
    #dbg_value(i64 %.sroa.5.sroa.0.1211641, !11996, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12089)
  %i.gf = sub nuw i64 %.sroa.5.sroa.3.1215637, %.sroa.5.sroa.2.1213639, !dbg !12090 ; 2 uses
    #dbg_value(i64 %i.gf, !12002, !DIExpression(), !12091)
    #dbg_value(ptr %.sroa.02.0217635, !12015, !DIExpression(), !12016)
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.02.0217635, i64 %.sroa.5.sroa.2.1213639, !dbg !12092 ; 3 uses
    #dbg_value(ptr %i.gg, !10311, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12093)
    #dbg_value(ptr %i.gg, !10305, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12094)
    #dbg_value(ptr %i.gg, !10297, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10298)
    #dbg_value(i64 %i.gf, !10311, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12093)
    #dbg_value(i64 %i.gf, !10305, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12094)
    #dbg_value(i64 %i.gf, !10297, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10298)
    #dbg_value(ptr %i.gg, !12095, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12166)
    #dbg_value(ptr %i.gg, !12105, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12168)
    #dbg_value(i64 %i.gf, !12095, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12166)
    #dbg_value(i64 %i.gf, !12105, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12168)
    #dbg_value(i32 10, !12100, !DIExpression(), !12166)
    #dbg_value(i32 10, !12169, !DIExpression(), !12176)
    #dbg_value(i8 0, !12101, !DIExpression(), !12178)
    #dbg_value(i8 0, !12174, !DIExpression(), !12176)
  switch i64 %i.gf, label %thread-pre-split.i [
    i64 0, label %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit
    i64 1, label %bb.aw
  ], !dbg !12179

bb.aw:                                            ; preds = %bb.av
  %i.gh = load i8, ptr %i.gg, align 1, !dbg !12180, !alias.scope !12181, !noundef !35 ; 2 uses
  switch i8 %i.gh, label %bb.ax [
    i8 43, label %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit
    i8 45, label %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit
  ], !dbg !12180

thread-pre-split.i:                               ; preds = %bb.av
  %.pr.i = load i8, ptr %i.gg, align 1, !dbg !12180, !alias.scope !12181
  br label %bb.ax, !dbg !12180

bb.ax:                                            ; preds = %thread-pre-split.i, %bb.aw
  %i.gi = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.gh, %bb.aw ], !dbg !12180
  %cond.i = icmp eq i8 %i.gi, 43, !dbg !12180     ; 2 uses
  %i.gj = sext i1 %cond.i to i64, !dbg !12180
  %.sroa.15.0.i = add nsw i64 %i.gf, %i.gj, !dbg !12180 ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64, !dbg !12180
  %.sroa.0.0.i126 = getelementptr inbounds nuw i8, ptr %i.gg, i64 %.sroa.0.0.idx.i, !dbg !12180 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.i126, !12105, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12168)
    #dbg_value(ptr %.sroa.0.0.i126, !12095, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12166)
    #dbg_value(i64 %.sroa.15.0.i, !12105, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12168)
    #dbg_value(i64 %.sroa.15.0.i, !12095, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12166)
    #dbg_value(i16 0, !12111, !DIExpression(), !12184)
    #dbg_value(i16 0, !12185, !DIExpression(), !12198)
    #dbg_value(i16 0, !12200, !DIExpression(), !12210)
    #dbg_value(i16 0, !12212, !DIExpression(), !12216)
    #dbg_value(ptr %.sroa.0.0.i126, !12175, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12176)
    #dbg_value(i64 %.sroa.15.0.i, !12175, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12176)
  %i.gk = icmp samesign ult i64 %.sroa.15.0.i, 5
    #dbg_value(ptr %.sroa.0.0.i126, !12105, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12168)
    #dbg_value(ptr %.sroa.0.0.i126, !12105, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12168)
    #dbg_value(ptr %.sroa.0.0.i126, !12095, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12166)
    #dbg_value(ptr %.sroa.0.0.i126, !12095, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12166)
    #dbg_value(i64 %.sroa.15.0.i, !12105, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12168)
    #dbg_value(i64 %.sroa.15.0.i, !12105, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12168)
    #dbg_value(i64 %.sroa.15.0.i, !12095, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12166)
    #dbg_value(i64 %.sroa.15.0.i, !12095, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12166)
    #dbg_value(i16 0, !12212, !DIExpression(), !12216)
    #dbg_value(i16 0, !12212, !DIExpression(), !12216)
    #dbg_value(i16 0, !12200, !DIExpression(), !12210)
    #dbg_value(i16 0, !12200, !DIExpression(), !12210)
    #dbg_value(i16 0, !12185, !DIExpression(), !12198)
    #dbg_value(i16 0, !12185, !DIExpression(), !12198)
    #dbg_value(i16 0, !12111, !DIExpression(), !12184)
    #dbg_value(i16 0, !12111, !DIExpression(), !12184)
  br i1 %i.gk, label %.preheader.i, label %.preheader76.i.preheader, !dbg !12218

.preheader.i:                                     ; preds = %bb.ax
  %.not7284.i = icmp eq i64 %.sroa.15.0.i, 0, !dbg !12219
  br i1 %.not7284.i, label %.loopexit.i, label %.lr.ph.i, !dbg !12219

.preheader76.i:                                   ; preds = %bb.ba
    #dbg_value(ptr %i.gn, !12105, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12168)
    #dbg_value(ptr %i.gn, !12095, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12166)
    #dbg_value(i64 %i.go, !12105, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12168)
    #dbg_value(i64 %i.go, !12095, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12166)
    #dbg_value(i16 %i.gw, !12212, !DIExpression(), !12216)
    #dbg_value(i16 %i.gw, !12200, !DIExpression(), !12210)
    #dbg_value(i16 %i.gw, !12185, !DIExpression(), !12198)
    #dbg_value(i16 %i.gw, !12111, !DIExpression(), !12184)
  %.not71.i = icmp eq i64 %i.go, 0, !dbg !12220
  br i1 %.not71.i, label %.loopexit.i, label %.preheader76.i.preheader, !dbg !12220

.loopexit.i:                                      ; preds = %.preheader76.i, %bb.bb, %.preheader.i
  %.sroa.043.1.i = phi i16 [ %i.hg, %bb.bb ], [ 0, %.preheader.i ], [ %i.gw, %.preheader76.i ], !dbg !12221
    #dbg_value(i16 %.sroa.043.1.i, !12212, !DIExpression(), !12216)
    #dbg_value(i16 %.sroa.043.1.i, !12200, !DIExpression(), !12210)
    #dbg_value(i16 %.sroa.043.1.i, !12185, !DIExpression(), !12198)
    #dbg_value(i16 %.sroa.043.1.i, !12111, !DIExpression(), !12184)
  %i.gl = zext i16 %.sroa.043.1.i to i32, !dbg !12222
  %i.gm = shl nuw i32 %i.gl, 16, !dbg !12222
  br label %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit, !dbg !12222

.preheader76.i.preheader:                         ; preds = %bb.ax, %.preheader76.i
  %.sroa.0.1.i754 = phi ptr [ %i.gn, %.preheader76.i ], [ %.sroa.0.0.i126, %bb.ax ] ; 2 uses
  %.sroa.15.1.i753 = phi i64 [ %i.go, %.preheader76.i ], [ %.sroa.15.0.i, %bb.ax ]
  %.sroa.043.0.i752 = phi i16 [ %i.gw, %.preheader76.i ], [ 0, %bb.ax ] ; 2 uses
    #dbg_value(ptr %.sroa.0.1.i754, !12105, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12168)
    #dbg_value(i64 %.sroa.15.1.i753, !12105, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12168)
    #dbg_value(i16 %.sroa.043.0.i752, !12212, !DIExpression(), !12216)
    #dbg_value(ptr %.sroa.0.1.i754, !12128, !DIExpression(), !12223)
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i754, i64 1, !dbg !12224
  %i.go = add nsw i64 %.sroa.15.1.i753, -1, !dbg !12224 ; 2 uses
    #dbg_value(ptr %i.gn, !12130, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12223)
    #dbg_value(i64 %i.go, !12130, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12223)
    #dbg_value(i16 10, !12191, !DIExpression(), !12198)
    #dbg_value(i16 10, !12209, !DIExpression(), !12210)
  %3 = mul nuw i16 %.sroa.043.0.i752, 10, !dbg !12225 ; 2 uses
  %4 = icmp ugt i16 %.sroa.043.0.i752, 6553, !dbg !12225
    #dbg_value(i16 %3, !12192, !DIExpression(), !12226)
    #dbg_value(i1 %4, !12194, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12226)
    #dbg_value(i1 %4, !12227, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12234)
  %i.gp = load i8, ptr %.sroa.0.1.i754, align 1, !dbg !12236, !alias.scope !12181, !noundef !35 ; 2 uses
  br i1 %4, label %bb.az, label %bb.ay, !dbg !12237, !prof !1803

bb.ay:                                            ; preds = %.preheader76.i.preheader
    #dbg_value(i16 %3, !12131, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !12238)
    #dbg_value(i16 1, !12131, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !12238)
  %i.gq = zext i8 %i.gp to i32, !dbg !12239
    #dbg_value(i32 %i.gq, !12240, !DIExpression(), !12253)
    #dbg_value(i32 10, !12250, !DIExpression(), !12253)
    #dbg_value(i32 65, !12255, !DIExpression(), !12262)
    #dbg_value(i32 48, !12255, !DIExpression(), !12264)
    #dbg_value(i32 %i.gq, !12261, !DIExpression(), !12264)
  %i.gr = add nsw i32 %i.gq, -48, !dbg !12266     ; 2 uses
    #dbg_value(i32 %i.gr, !12251, !DIExpression(), !12267)
  %i.gs = icmp ult i32 %i.gr, 10, !dbg !12268
  br i1 %i.gs, label %bb.ba, label %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit, !dbg !12269

bb.az:                                            ; preds = %.preheader76.i.preheader
    #dbg_value(i16 poison, !12131, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !12238)
    #dbg_value(i16 poison, !12131, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !12238)
    #dbg_value(i8 %i.gp, !12240, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !12270)
    #dbg_value(i32 10, !12250, !DIExpression(), !12270)
    #dbg_value(i32 65, !12255, !DIExpression(), !12272)
    #dbg_value(i32 48, !12255, !DIExpression(), !12274)
    #dbg_value(i8 %i.gp, !12261, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !12274)
    #dbg_value(i8 %i.gp, !12251, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 48, DW_OP_minus, DW_OP_stack_value), !12276)
  %i.gt = add i8 %i.gp, -48, !dbg !12277
  %i.gu = icmp ult i8 %i.gt, 10, !dbg !12277
  %spec.select.i = select i1 %i.gu, i32 513, i32 257, !dbg !12269
  br label %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit, !dbg !12269

bb.ba:                                            ; preds = %bb.ay
  %i.gv = trunc nuw nsw i32 %i.gr to i16, !dbg !12278
    #dbg_value(i16 %i.gv, !12145, !DIExpression(), !12279)
    #dbg_value(i16 %3, !12111, !DIExpression(), !12184)
    #dbg_value(i16 %3, !12185, !DIExpression(), !12198)
    #dbg_value(i16 %3, !12200, !DIExpression(), !12210)
    #dbg_value(i16 %3, !12212, !DIExpression(), !12216)
    #dbg_value(i16 %i.gv, !12215, !DIExpression(), !12216)
  %i.gw = add i16 %3, %i.gv, !dbg !12280          ; 3 uses
  %i.gx = icmp ult i16 %i.gw, %3, !dbg !12280
    #dbg_value(i1 %i.gx, !12227, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12281)
  br i1 %i.gx, label %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit, label %.preheader76.i, !dbg !12283, !prof !1803

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.bb
  %.sroa.0.287.i = phi ptr [ %i.he, %bb.bb ], [ %.sroa.0.0.i126, %.preheader.i ] ; 2 uses
  %.sroa.15.286.i = phi i64 [ %i.hd, %bb.bb ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.043.285.i = phi i16 [ %i.hg, %bb.bb ], [ 0, %.preheader.i ]
    #dbg_value(ptr %.sroa.0.287.i, !12113, !DIExpression(), !12284)
    #dbg_value(ptr %.sroa.0.287.i, !12116, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12284)
    #dbg_value(i64 %.sroa.15.286.i, !12116, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12284)
    #dbg_value(i16 %.sroa.043.285.i, !12111, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !12184)
    #dbg_value(i16 %.sroa.043.285.i, !12185, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !12198)
    #dbg_value(i16 %.sroa.043.285.i, !12200, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !12210)
    #dbg_value(i16 %.sroa.043.285.i, !12212, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !12216)
  %i.gy = load i8, ptr %.sroa.0.287.i, align 1, !dbg !12285, !alias.scope !12181, !noundef !35
  %i.gz = zext i8 %i.gy to i32, !dbg !12286
    #dbg_value(i32 %i.gz, !12240, !DIExpression(), !12287)
    #dbg_value(i32 10, !12250, !DIExpression(), !12287)
    #dbg_value(i32 65, !12255, !DIExpression(), !12289)
    #dbg_value(i32 48, !12255, !DIExpression(), !12291)
    #dbg_value(i32 %i.gz, !12261, !DIExpression(), !12291)
  %i.ha = add nsw i32 %i.gz, -48, !dbg !12293     ; 2 uses
    #dbg_value(i32 %i.ha, !12251, !DIExpression(), !12294)
  %i.hb = icmp ult i32 %i.ha, 10, !dbg !12295
  br i1 %i.hb, label %bb.bb, label %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit, !dbg !12296

bb.bb:                                            ; preds = %.lr.ph.i
  %i.hc = mul i16 %.sroa.043.285.i, 10, !dbg !12297
    #dbg_value(i16 %i.hc, !12111, !DIExpression(), !12184)
    #dbg_value(i16 %i.hc, !12185, !DIExpression(), !12198)
    #dbg_value(i16 %i.hc, !12200, !DIExpression(), !12210)
    #dbg_value(i16 %i.hc, !12212, !DIExpression(), !12216)
  %i.hd = add nsw i64 %.sroa.15.286.i, -1, !dbg !12298 ; 2 uses
    #dbg_value(i64 %i.hd, !12116, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12284)
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.0.287.i, i64 1, !dbg !12298
    #dbg_value(ptr %i.he, !12116, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12284)
    #dbg_value(i32 %i.ha, !12117, !DIExpression(), !12299)
  %i.hf = trunc nuw nsw i32 %i.ha to i16, !dbg !12300
  %i.hg = add i16 %i.hc, %i.hf, !dbg !12301       ; 2 uses
    #dbg_value(ptr %i.he, !12105, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12168)
    #dbg_value(ptr %i.he, !12095, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12166)
    #dbg_value(i64 %i.hd, !12105, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12168)
    #dbg_value(i64 %i.hd, !12095, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12166)
    #dbg_value(i16 %i.hg, !12212, !DIExpression(), !12216)
    #dbg_value(i16 %i.hg, !12200, !DIExpression(), !12210)
    #dbg_value(i16 %i.hg, !12185, !DIExpression(), !12198)
    #dbg_value(i16 %i.hg, !12111, !DIExpression(), !12184)
  %.not72.i = icmp eq i64 %i.hd, 0, !dbg !12219
  br i1 %.not72.i, label %.loopexit.i, label %.lr.ph.i, !dbg !12219

_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit: ; preds = %bb.ba, %bb.ay, %.lr.ph.i, %bb.az, %.loopexit.i, %bb.aw, %bb.aw, %bb.av
  %.sroa.8.0.insert.insert.i = phi i32 [ 257, %.lr.ph.i ], [ %i.gm, %.loopexit.i ], [ 257, %bb.aw ], [ 1, %bb.av ], [ 257, %bb.aw ], [ %spec.select.i, %bb.az ], [ 257, %bb.ay ], [ 513, %bb.ba ], !dbg !12222 ; 2 uses
  %.sroa.581.0.extract.shift = lshr i32 %.sroa.8.0.insert.insert.i, 16, !dbg !12302
  %.sroa.581.0.extract.trunc = trunc nuw i32 %.sroa.581.0.extract.shift to i16, !dbg !12302
    #dbg_value(ptr undef, !10155, !DIExpression(), !10162)
    #dbg_value(ptr %i.al, !11943, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12303)
    #dbg_value(ptr %i.al, !11954, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12305)
    #dbg_value(ptr %i.al, !11963, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12307)
    #dbg_value(ptr %i.al, !11982, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12309)
    #dbg_value(ptr %i.al, !11990, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12311)
    #dbg_value(i64 %i.an, !11943, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12303)
    #dbg_value(i64 %i.an, !11954, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12305)
    #dbg_value(i64 %i.an, !11963, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12307)
    #dbg_value(i64 %i.an, !11982, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12309)
    #dbg_value(i64 %i.an, !11990, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12311)
    #dbg_value(i64 %i.fs, !11949, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12303)
    #dbg_value(i64 %i.fs, !11960, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12305)
    #dbg_value(i64 %i.fs, !11975, !DIExpression(), !12313)
    #dbg_value(i64 %i.fs, !11995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12311)
    #dbg_value(i64 %i.fs, !12007, !DIExpression(), !12314)
    #dbg_value(i64 %i.ft, !11949, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12303)
    #dbg_value(i64 %i.ft, !11960, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12305)
    #dbg_value(i64 %i.ft, !11977, !DIExpression(), !12313)
    #dbg_value(i64 %i.ft, !11995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12311)
    #dbg_value(i64 %i.fs, !11974, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12307)
    #dbg_value(i64 %i.fs, !11987, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12309)
    #dbg_value(i64 %i.ft, !11974, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12307)
    #dbg_value(i64 %i.ft, !11987, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12309)
    #dbg_value(ptr %i.al, !12018, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12316)
    #dbg_value(i64 %i.an, !12018, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12316)
    #dbg_value(i64 %i.fs, !12023, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12316)
    #dbg_value(i64 %i.ft, !12023, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12316)
    #dbg_value(i64 %i.fs, !12024, !DIExpression(), !12318)
    #dbg_value(i64 %i.fs, !12032, !DIExpression(), !12319)
    #dbg_value(i64 %i.ft, !12026, !DIExpression(), !12318)
    #dbg_value(i64 %i.ft, !12032, !DIExpression(), !12321)
    #dbg_value(ptr %i.al, !12027, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12323)
    #dbg_value(i64 %i.an, !12027, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12323)
  %i.hh = icmp ugt i64 %i.fs, %i.ft, !dbg !12324
  %i.hi = icmp ugt i64 %i.ft, %i.an
  %or.cond.i.i127 = or i1 %i.hh, %i.hi, !dbg !12324
  br i1 %or.cond.i.i127, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread16.i128.invoke, label %bb.bc, !dbg !12324, !prof !12042

bb.bc:                                            ; preds = %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit
  %i.hj = icmp eq i64 %i.fs, %i.an, !dbg !12325
  br i1 %i.hj, label %bb.bg, label %bb.bd, !dbg !12325

bb.bd:                                            ; preds = %bb.bc
  %i.hk = icmp eq i64 %i.fs, 0, !dbg !12326
  br i1 %i.hk, label %bb.be, label %bb.bf, !dbg !12326

bb.be:                                            ; preds = %bb.bf, %bb.bd
  %i.hl = icmp eq i64 %i.ft, %i.an, !dbg !12327
  br i1 %i.hl, label %bb.bg, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.i129, !dbg !12327

bb.bf:                                            ; preds = %bb.bd
    #dbg_value(ptr %i.al, !12035, !DIExpression(), !12319)
  %i.hm = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.fs, !dbg !12328
    #dbg_value(ptr %i.hm, !12047, !DIExpression(), !12329)
    #dbg_value(ptr %i.hm, !12054, !DIExpression(), !12331)
  %i.hn = load i8, ptr %i.hm, align 1, !dbg !12333, !alias.scope !12334, !noalias !12337, !noundef !35
    #dbg_value(i8 %i.hn, !12066, !DIExpression(), !12340)
  %i.ho = icmp sgt i8 %i.hn, -65, !dbg !12342
  br i1 %i.ho, label %bb.be, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread16.i128.invoke, !dbg !12343, !prof !12076

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.i129: ; preds = %bb.be
    #dbg_value(ptr %i.al, !12035, !DIExpression(), !12321)
  %i.hp = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ft, !dbg !12344
    #dbg_value(ptr %i.hp, !12047, !DIExpression(), !12345)
    #dbg_value(ptr %i.hp, !12054, !DIExpression(), !12347)
  %i.hq = load i8, ptr %i.hp, align 1, !dbg !12349, !alias.scope !12334, !noalias !12337, !noundef !35
    #dbg_value(i8 %i.hq, !12066, !DIExpression(), !12350)
  %i.hr = icmp sgt i8 %i.hq, -65, !dbg !12352
  br i1 %i.hr, label %bb.bg, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread16.i128.invoke, !dbg !12353, !prof !12088

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread16.i128.invoke: ; preds = %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit, %bb.bf, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.i129, %bb.aq, %bb.au, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.i
  %i.hs = phi ptr [ %.sroa.02.0217635, %bb.aq ], [ %.sroa.02.0217635, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.i ], [ %.sroa.02.0217635, %bb.au ], [ %i.al, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.i129 ], [ %i.al, %bb.bf ], [ %i.al, %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit ]
  %i.ht = phi i64 [ %.sroa.5.sroa.0.1211641, %bb.aq ], [ %.sroa.5.sroa.0.1211641, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.i ], [ %.sroa.5.sroa.0.1211641, %bb.au ], [ %i.an, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.i129 ], [ %i.an, %bb.bf ], [ %i.an, %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit ]
  %i.hu = phi i64 [ %.sroa.5.sroa.2.1213639, %bb.aq ], [ %.sroa.5.sroa.2.1213639, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.i ], [ %.sroa.5.sroa.2.1213639, %bb.au ], [ %i.fs, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.i129 ], [ %i.fs, %bb.bf ], [ %i.fs, %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit ]
  %i.hv = phi i64 [ %.sroa.5.sroa.3.1215637, %bb.aq ], [ %.sroa.5.sroa.3.1215637, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.i ], [ %.sroa.5.sroa.3.1215637, %bb.au ], [ %i.ft, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.i129 ], [ %i.ft, %bb.bf ], [ %i.ft, %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit ]
  invoke void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hs, i64 noundef %i.ht, i64 noundef %i.hu, i64 noundef %i.hv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #21
          to label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread16.i128.cont unwind label %bb.ai, !dbg !12354

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread16.i128.cont: ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread16.i128.invoke
  unreachable

bb.bg:                                            ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.i129, %bb.be, %bb.bc
    #dbg_value(ptr %i.al, !11996, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12358)
    #dbg_value(i64 %i.an, !11996, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12358)
  %i.hw = sub nuw i64 %i.fr, %i.fo, !dbg !12359   ; 2 uses
    #dbg_value(i64 %i.hw, !12002, !DIExpression(), !12360)
    #dbg_value(ptr %i.al, !12015, !DIExpression(), !12314)
  %i.hx = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.fs, !dbg !12361 ; 3 uses
    #dbg_value(ptr %i.hx, !10349, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12362)
    #dbg_value(ptr %i.hx, !10344, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12363)
    #dbg_value(ptr %i.hx, !10335, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10336)
    #dbg_value(i64 %i.hw, !10349, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12362)
    #dbg_value(i64 %i.hw, !10344, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12363)
    #dbg_value(i64 %i.hw, !10335, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10336)
    #dbg_value(ptr %i.hx, !12364, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12422)
    #dbg_value(ptr %i.hx, !12374, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12424)
    #dbg_value(i64 %i.hw, !12364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12422)
    #dbg_value(i64 %i.hw, !12374, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12424)
    #dbg_value(i32 10, !12369, !DIExpression(), !12422)
    #dbg_value(i32 10, !12425, !DIExpression(), !12430)
    #dbg_value(i32 10, !12432, !DIExpression(), !12444)
    #dbg_value(i32 10, !12446, !DIExpression(), !12456)
    #dbg_value(i8 0, !12370, !DIExpression(), !12458)
    #dbg_value(i8 0, !12428, !DIExpression(), !12430)
  switch i64 %i.hw, label %thread-pre-split.i144 [
    i64 0, label %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.thread
    i64 1, label %bb.bh
  ], !dbg !12459

bb.bh:                                            ; preds = %bb.bg
  %i.hy = load i8, ptr %i.hx, align 1, !dbg !12460, !alias.scope !12461, !noundef !35 ; 2 uses
  switch i8 %i.hy, label %bb.bi [
    i8 43, label %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.thread
    i8 45, label %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.thread
  ], !dbg !12460

thread-pre-split.i144:                            ; preds = %bb.bg
  %.pr.i145 = load i8, ptr %i.hx, align 1, !dbg !12460, !alias.scope !12461
  br label %bb.bi, !dbg !12460

bb.bi:                                            ; preds = %thread-pre-split.i144, %bb.bh
  %i.hz = phi i8 [ %.pr.i145, %thread-pre-split.i144 ], [ %i.hy, %bb.bh ], !dbg !12460
  %cond.i133 = icmp eq i8 %i.hz, 43, !dbg !12460  ; 2 uses
  %i.ia = sext i1 %cond.i133 to i64, !dbg !12460
  %.sroa.15.0.i134 = add nsw i64 %i.hw, %i.ia, !dbg !12460 ; 4 uses
  %.sroa.0.0.idx.i135 = zext i1 %cond.i133 to i64, !dbg !12460
  %.sroa.0.0.i136 = getelementptr inbounds nuw i8, ptr %i.hx, i64 %.sroa.0.0.idx.i135, !dbg !12460 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.i136, !12374, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12424)
    #dbg_value(ptr %.sroa.0.0.i136, !12364, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12422)
    #dbg_value(i64 %.sroa.15.0.i134, !12374, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12424)
    #dbg_value(i64 %.sroa.15.0.i134, !12364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12422)
    #dbg_value(i32 0, !12380, !DIExpression(), !12464)
    #dbg_value(i32 0, !12437, !DIExpression(), !12444)
    #dbg_value(i32 0, !12455, !DIExpression(), !12456)
    #dbg_value(ptr %.sroa.0.0.i136, !12429, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12430)
    #dbg_value(i64 %.sroa.15.0.i134, !12429, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12430)
  %i.ib = icmp samesign ult i64 %.sroa.15.0.i134, 9
    #dbg_value(ptr %.sroa.0.0.i136, !12374, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12424)
    #dbg_value(ptr %.sroa.0.0.i136, !12374, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12424)
    #dbg_value(ptr %.sroa.0.0.i136, !12364, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12422)
    #dbg_value(ptr %.sroa.0.0.i136, !12364, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12422)
    #dbg_value(i64 %.sroa.15.0.i134, !12374, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12424)
    #dbg_value(i64 %.sroa.15.0.i134, !12374, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12424)
    #dbg_value(i64 %.sroa.15.0.i134, !12364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12422)
    #dbg_value(i64 %.sroa.15.0.i134, !12364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12422)
    #dbg_value(i32 0, !12455, !DIExpression(), !12456)
    #dbg_value(i32 0, !12455, !DIExpression(), !12456)
    #dbg_value(i32 0, !12437, !DIExpression(), !12444)
    #dbg_value(i32 0, !12437, !DIExpression(), !12444)
    #dbg_value(i32 0, !12380, !DIExpression(), !12464)
    #dbg_value(i32 0, !12380, !DIExpression(), !12464)
  br i1 %i.ib, label %.preheader.i142, label %.preheader77.i.preheader, !dbg !12465

.preheader.i142:                                  ; preds = %bb.bi
  %.not7385.i = icmp eq i64 %.sroa.15.0.i134, 0, !dbg !12466
  br i1 %.not7385.i, label %.loopexit.i141, label %.lr.ph.i143, !dbg !12466

.preheader77.i:                                   ; preds = %bb.bj
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i138757, i64 1, !dbg !12467
    #dbg_value(ptr %i.ic, !12398, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12468)
  %i.id = add nsw i64 %.sroa.15.1.i137756, -1, !dbg !12467 ; 2 uses
    #dbg_value(i64 %i.id, !12398, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12468)
    #dbg_value(ptr %i.ic, !12374, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12424)
    #dbg_value(ptr %i.ic, !12364, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12422)
    #dbg_value(i64 %i.id, !12374, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12424)
    #dbg_value(i64 %i.id, !12364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12422)
    #dbg_value(i32 %i.ik, !12455, !DIExpression(), !12456)
    #dbg_value(i32 %i.ik, !12437, !DIExpression(), !12444)
    #dbg_value(i32 %i.ik, !12380, !DIExpression(), !12464)
  %.not72.i139 = icmp eq i64 %i.id, 0, !dbg !12469
  br i1 %.not72.i139, label %.loopexit.i141, label %.preheader77.i.preheader, !dbg !12469

.loopexit.i141:                                   ; preds = %.preheader77.i, %bb.bl, %.preheader.i142
  %.sroa.045.1.i = phi i32 [ %i.iw, %bb.bl ], [ 0, %.preheader.i142 ], [ %i.ik, %.preheader77.i ], !dbg !12470
    #dbg_value(i32 %.sroa.045.1.i, !12455, !DIExpression(), !12456)
    #dbg_value(i32 %.sroa.045.1.i, !12437, !DIExpression(), !12444)
    #dbg_value(i32 %.sroa.045.1.i, !12380, !DIExpression(), !12464)
  %i.ie = zext i32 %.sroa.045.1.i to i64, !dbg !12471
  %i.if = shl nuw i64 %i.ie, 32, !dbg !12471
  br label %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit, !dbg !12471

.preheader77.i.preheader:                         ; preds = %bb.bi, %.preheader77.i
  %.sroa.0.1.i138757 = phi ptr [ %i.ic, %.preheader77.i ], [ %.sroa.0.0.i136, %bb.bi ] ; 3 uses
  %.sroa.15.1.i137756 = phi i64 [ %i.id, %.preheader77.i ], [ %.sroa.15.0.i134, %bb.bi ]
  %.sroa.045.0.i755 = phi i32 [ %i.ik, %.preheader77.i ], [ 0, %bb.bi ] ; 2 uses
    #dbg_value(ptr %.sroa.0.1.i138757, !12374, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12424)
    #dbg_value(i64 %.sroa.15.1.i137756, !12374, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12424)
    #dbg_value(i32 %.sroa.045.0.i755, !12455, !DIExpression(), !12456)
    #dbg_value(ptr %.sroa.0.1.i138757, !12396, !DIExpression(), !12468)
    #dbg_value(ptr %.sroa.0.1.i138757, !12398, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12468)
    #dbg_value(i64 %.sroa.15.1.i137756, !12398, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12468)
  %5 = icmp ugt i32 %.sroa.045.0.i755, 429496729, !dbg !12472
    #dbg_value(i32 %.sroa.045.0.i755, !12438, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !12473)
    #dbg_value(i1 %5, !12440, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12473)
    #dbg_value(i1 %5, !12474, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12477)
  br i1 %5, label %bb.bk, label %bb.bj, !dbg !12479, !prof !1803

bb.bj:                                            ; preds = %.preheader77.i.preheader
  %6 = mul nuw i32 %.sroa.045.0.i755, 10, !dbg !12472 ; 2 uses
    #dbg_value(i32 %6, !12438, !DIExpression(), !12473)
    #dbg_value(i64 %.sroa.15.1.i137756, !12398, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12468)
    #dbg_value(ptr %.sroa.0.1.i138757, !12398, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12468)
    #dbg_value(i32 %6, !12399, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !12480)
    #dbg_value(i32 1, !12399, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !12480)
  %i.ig = load i8, ptr %.sroa.0.1.i138757, align 1, !dbg !12481, !alias.scope !12461, !noundef !35
  %i.ih = zext i8 %i.ig to i32, !dbg !12482
    #dbg_value(i32 %i.ih, !12240, !DIExpression(), !12483)
    #dbg_value(i32 10, !12250, !DIExpression(), !12483)
    #dbg_value(i32 65, !12255, !DIExpression(), !12485)
    #dbg_value(i32 48, !12255, !DIExpression(), !12487)
    #dbg_value(i32 %i.ih, !12261, !DIExpression(), !12487)
  %i.ii = add nsw i32 %i.ih, -48, !dbg !12489     ; 2 uses
    #dbg_value(i32 %i.ii, !12251, !DIExpression(), !12490)
  %i.ij = icmp ugt i32 %i.ii, 9, !dbg !12491
    #dbg_value(i32 %6, !12380, !DIExpression(), !12464)
    #dbg_value(i32 %6, !12437, !DIExpression(), !12444)
    #dbg_value(i32 %6, !12455, !DIExpression(), !12456)
  %i.ik = add i32 %i.ii, %6                       ; 3 uses
  %i.il = icmp ult i32 %i.ik, %6
    #dbg_value(i1 %i.il, !12474, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12492)
  %or.cond232 = select i1 %i.ij, i1 true, i1 %i.il, !dbg !12499, !prof !12500
  br i1 %or.cond232, label %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.thread, label %.preheader77.i, !dbg !12499, !prof !12500

bb.bk:                                            ; preds = %.preheader77.i.preheader
    #dbg_value(i32 poison, !12399, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !12480)
    #dbg_value(i32 poison, !12399, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !12480)
  %i.im = load i8, ptr %.sroa.0.1.i138757, align 1, !dbg !12481, !alias.scope !12461, !noundef !35
    #dbg_value(i8 %i.im, !12240, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !12501)
    #dbg_value(i32 10, !12250, !DIExpression(), !12501)
    #dbg_value(i32 65, !12255, !DIExpression(), !12503)
    #dbg_value(i32 48, !12255, !DIExpression(), !12505)
    #dbg_value(i8 %i.im, !12261, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !12505)
    #dbg_value(i8 %i.im, !12251, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 48, DW_OP_minus, DW_OP_stack_value), !12507)
  %i.in = add i8 %i.im, -48, !dbg !12508
  %i.io = icmp ult i8 %i.in, 10, !dbg !12508
  %spec.select.i140 = select i1 %i.io, i64 513, i64 257, !dbg !12499
  br label %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit, !dbg !12499

.lr.ph.i143:                                      ; preds = %.preheader.i142, %bb.bl
  %.sroa.0.288.i = phi ptr [ %i.iv, %bb.bl ], [ %.sroa.0.0.i136, %.preheader.i142 ] ; 2 uses
  %.sroa.15.287.i = phi i64 [ %i.iu, %bb.bl ], [ %.sroa.15.0.i134, %.preheader.i142 ]
  %.sroa.045.286.i = phi i32 [ %i.iw, %bb.bl ], [ 0, %.preheader.i142 ]
    #dbg_value(ptr %.sroa.0.288.i, !12382, !DIExpression(), !12509)
    #dbg_value(ptr %.sroa.0.288.i, !12384, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12509)
    #dbg_value(i64 %.sroa.15.287.i, !12384, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12509)
    #dbg_value(i32 %.sroa.045.286.i, !12380, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !12464)
    #dbg_value(i32 %.sroa.045.286.i, !12437, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !12444)
    #dbg_value(i32 %.sroa.045.286.i, !12455, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !12456)
  %i.ip = load i8, ptr %.sroa.0.288.i, align 1, !dbg !12510, !alias.scope !12461, !noundef !35
  %i.iq = zext i8 %i.ip to i32, !dbg !12511
    #dbg_value(i32 %i.iq, !12240, !DIExpression(), !12512)
    #dbg_value(i32 10, !12250, !DIExpression(), !12512)
    #dbg_value(i32 65, !12255, !DIExpression(), !12514)
    #dbg_value(i32 48, !12255, !DIExpression(), !12516)
    #dbg_value(i32 %i.iq, !12261, !DIExpression(), !12516)
  %i.ir = add nsw i32 %i.iq, -48, !dbg !12518     ; 2 uses
    #dbg_value(i32 %i.ir, !12251, !DIExpression(), !12519)
  %i.is = icmp ult i32 %i.ir, 10, !dbg !12520
  br i1 %i.is, label %bb.bl, label %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.thread, !dbg !12521

bb.bl:                                            ; preds = %.lr.ph.i143
  %i.it = mul i32 %.sroa.045.286.i, 10, !dbg !12522
    #dbg_value(i32 %i.it, !12380, !DIExpression(), !12464)
    #dbg_value(i32 %i.it, !12437, !DIExpression(), !12444)
    #dbg_value(i32 %i.it, !12455, !DIExpression(), !12456)
  %i.iu = add nsw i64 %.sroa.15.287.i, -1, !dbg !12523 ; 2 uses
    #dbg_value(i64 %i.iu, !12384, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12509)
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.0.288.i, i64 1, !dbg !12523
    #dbg_value(ptr %i.iv, !12384, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12509)
    #dbg_value(i32 %i.ir, !12385, !DIExpression(), !12524)
  %i.iw = add i32 %i.ir, %i.it, !dbg !12525       ; 2 uses
    #dbg_value(ptr %i.iv, !12374, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12424)
    #dbg_value(ptr %i.iv, !12364, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12422)
    #dbg_value(i64 %i.iu, !12374, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12424)
    #dbg_value(i64 %i.iu, !12364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12422)
    #dbg_value(i32 %i.iw, !12455, !DIExpression(), !12456)
    #dbg_value(i32 %i.iw, !12437, !DIExpression(), !12444)
    #dbg_value(i32 %i.iw, !12380, !DIExpression(), !12464)
  %.not73.i = icmp eq i64 %i.iu, 0, !dbg !12466
  br i1 %.not73.i, label %.loopexit.i141, label %.lr.ph.i143, !dbg !12466

_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit: ; preds = %bb.bk, %.loopexit.i141
  %.sroa.8.0.insert.insert.i132 = phi i64 [ %spec.select.i140, %bb.bk ], [ %i.if, %.loopexit.i141 ], !dbg !12471 ; 2 uses
  %.sroa.586.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i132, 32, !dbg !12526
  %.sroa.586.0.extract.trunc = trunc nuw i64 %.sroa.586.0.extract.shift to i32, !dbg !12526
  %i.ix = trunc i32 %.sroa.8.0.insert.insert.i to i1, !dbg !12527
  %i.iy = trunc i64 %.sroa.8.0.insert.insert.i132 to i1
  %or.cond = select i1 %i.ix, i1 true, i1 %i.iy, !dbg !12528
  br i1 %or.cond, label %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.thread, label %bb.bm, !dbg !12528

_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.thread: ; preds = %bb.bg, %bb.bh, %bb.bh, %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit, %bb.bj, %.lr.ph.i143
    #dbg_value(ptr %i.m, !10008, !DIExpression(), !12529)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !12530
  store ptr %i.m, ptr %i.j, align 8, !dbg !12530
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !12530
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB6_7Display3fmtCshhfsHpF03Qr_6netlog, ptr %.sroa.431.0..sroa_idx, align 8, !dbg !12530
    #dbg_value(ptr @187, !11698, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12531)
    #dbg_value(ptr %i.j, !11698, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12531)
    #dbg_value(ptr null, !11718, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12534)
    #dbg_value(i64 undef, !11718, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12534)
    #dbg_value(ptr poison, !11748, !DIExpression(), !12534)
    #dbg_declare(ptr poison, !11749, !DIExpression(), !12536)
    #dbg_value(ptr poison, !11755, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !12537)
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noundef nonnull @187, ptr noundef nonnull %i.j)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshhfsHpF03Qr_6netlog.exit147 unwind label %bb.ai, !dbg !12539

bb.bm:                                            ; preds = %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit
    #dbg_value(i16 %.sroa.581.0.extract.trunc, !10005, !DIExpression(), !12540)
    #dbg_value(i32 %.sroa.586.0.extract.trunc, !10007, !DIExpression(), !12540)
    #dbg_value(ptr undef, !10195, !DIExpression(), !10204)
    #dbg_value(i16 %.sroa.581.0.extract.trunc, !10202, !DIExpression(), !10204)
    #dbg_value(i32 %.sroa.586.0.extract.trunc, !10203, !DIExpression(), !10204)
  switch i16 %.sroa.581.0.extract.trunc, label %_RNvMNtCshhfsHpF03Qr_6netlog2h2NtB2_13Http2Settings13set_from_wire.exit [
    i16 1, label %.sink.split.i
    i16 2, label %bb.bn
    i16 3, label %bb.bo
    i16 4, label %bb.bp
    i16 5, label %bb.bq
    i16 6, label %bb.br
    i16 8, label %bb.bs
    i16 9, label %bb.bt
    i16 16, label %bb.bu
    i16 19780, label %bb.bv
  ], !dbg !12541

.sink.split.i:                                    ; preds = %bb.bm, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn
  %.sroa.31.1 = phi i32 [ 1, %bb.bv ], [ %.sroa.31.0484, %bb.bn ], [ %.sroa.31.0484, %bb.bo ], [ %.sroa.31.0484, %bb.bp ], [ %.sroa.31.0484, %bb.bq ], [ %.sroa.31.0484, %bb.br ], [ %.sroa.31.0484, %bb.bs ], [ %.sroa.31.0484, %bb.bt ], [ %.sroa.31.0484, %bb.bu ], [ %.sroa.31.0484, %bb.bm ], !dbg !12542
  %.sroa.28.1 = phi i32 [ %.sroa.28.0485, %bb.bv ], [ %.sroa.28.0485, %bb.bn ], [ %.sroa.28.0485, %bb.bo ], [ %.sroa.28.0485, %bb.bp ], [ %.sroa.28.0485, %bb.bq ], [ %.sroa.28.0485, %bb.br ], [ %.sroa.28.0485, %bb.bs ], [ %.sroa.28.0485, %bb.bt ], [ 1, %bb.bu ], [ %.sroa.28.0485, %bb.bm ], !dbg !12542
  %.sroa.25.1 = phi i32 [ %.sroa.25.0486, %bb.bv ], [ %.sroa.25.0486, %bb.bn ], [ %.sroa.25.0486, %bb.bo ], [ %.sroa.25.0486, %bb.bp ], [ %.sroa.25.0486, %bb.bq ], [ %.sroa.25.0486, %bb.br ], [ %.sroa.25.0486, %bb.bs ], [ 1, %bb.bt ], [ %.sroa.25.0486, %bb.bu ], [ %.sroa.25.0486, %bb.bm ], !dbg !12542
  %.sroa.22.1 = phi i32 [ %.sroa.22.0487, %bb.bv ], [ %.sroa.22.0487, %bb.bn ], [ %.sroa.22.0487, %bb.bo ], [ %.sroa.22.0487, %bb.bp ], [ %.sroa.22.0487, %bb.bq ], [ %.sroa.22.0487, %bb.br ], [ 1, %bb.bs ], [ %.sroa.22.0487, %bb.bt ], [ %.sroa.22.0487, %bb.bu ], [ %.sroa.22.0487, %bb.bm ], !dbg !12542
  %.sroa.19.1 = phi i32 [ %.sroa.19.0488, %bb.bv ], [ %.sroa.19.0488, %bb.bn ], [ %.sroa.19.0488, %bb.bo ], [ %.sroa.19.0488, %bb.bp ], [ %.sroa.19.0488, %bb.bq ], [ 1, %bb.br ], [ %.sroa.19.0488, %bb.bs ], [ %.sroa.19.0488, %bb.bt ], [ %.sroa.19.0488, %bb.bu ], [ %.sroa.19.0488, %bb.bm ], !dbg !12542
  %.sroa.16.1 = phi i32 [ %.sroa.16.0489, %bb.bv ], [ %.sroa.16.0489, %bb.bn ], [ %.sroa.16.0489, %bb.bo ], [ %.sroa.16.0489, %bb.bp ], [ 1, %bb.bq ], [ %.sroa.16.0489, %bb.br ], [ %.sroa.16.0489, %bb.bs ], [ %.sroa.16.0489, %bb.bt ], [ %.sroa.16.0489, %bb.bu ], [ %.sroa.16.0489, %bb.bm ], !dbg !12542
  %.sroa.13.1 = phi i32 [ %.sroa.13.0490, %bb.bv ], [ %.sroa.13.0490, %bb.bn ], [ %.sroa.13.0490, %bb.bo ], [ 1, %bb.bp ], [ %.sroa.13.0490, %bb.bq ], [ %.sroa.13.0490, %bb.br ], [ %.sroa.13.0490, %bb.bs ], [ %.sroa.13.0490, %bb.bt ], [ %.sroa.13.0490, %bb.bu ], [ %.sroa.13.0490, %bb.bm ], !dbg !12542
  %.sroa.10.1 = phi i32 [ %.sroa.10.0491, %bb.bv ], [ %.sroa.10.0491, %bb.bn ], [ 1, %bb.bo ], [ %.sroa.10.0491, %bb.bp ], [ %.sroa.10.0491, %bb.bq ], [ %.sroa.10.0491, %bb.br ], [ %.sroa.10.0491, %bb.bs ], [ %.sroa.10.0491, %bb.bt ], [ %.sroa.10.0491, %bb.bu ], [ %.sroa.10.0491, %bb.bm ], !dbg !12542
  %.sroa.7.1 = phi i32 [ %.sroa.7.0492, %bb.bv ], [ 1, %bb.bn ], [ %.sroa.7.0492, %bb.bo ], [ %.sroa.7.0492, %bb.bp ], [ %.sroa.7.0492, %bb.bq ], [ %.sroa.7.0492, %bb.br ], [ %.sroa.7.0492, %bb.bs ], [ %.sroa.7.0492, %bb.bt ], [ %.sroa.7.0492, %bb.bu ], [ %.sroa.7.0492, %bb.bm ], !dbg !12542
  %.sroa.0.1 = phi i32 [ %.sroa.0.0198493, %bb.bv ], [ %.sroa.0.0198493, %bb.bn ], [ %.sroa.0.0198493, %bb.bo ], [ %.sroa.0.0198493, %bb.bp ], [ %.sroa.0.0198493, %bb.bq ], [ %.sroa.0.0198493, %bb.br ], [ %.sroa.0.0198493, %bb.bs ], [ %.sroa.0.0198493, %bb.bt ], [ %.sroa.0.0198493, %bb.bu ], [ 1, %bb.bm ], !dbg !12542
  %.sink3.i.sroa.phi = phi ptr [ %.sroa.33, %bb.bv ], [ %.sroa.9, %bb.bn ], [ %.sroa.12, %bb.bo ], [ %.sroa.15, %bb.bp ], [ %.sroa.18, %bb.bq ], [ %.sroa.21, %bb.br ], [ %.sroa.24, %bb.bs ], [ %.sroa.27, %bb.bt ], [ %.sroa.30, %bb.bu ], [ %.sroa.6, %bb.bm ]
    #dbg_value(i32 %.sroa.0.1, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !10399)
    #dbg_value(i32 %.sroa.7.1, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !10399)
    #dbg_value(i32 %.sroa.10.1, !9971, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !10399)
    #dbg_value(i32 %.sroa.13.1, !9971, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !10399)
    #dbg_value(i32 %.sroa.16.1, !9971, !DIExpression(DW_OP_LLVM_fragment, 256, 32), !10399)
    #dbg_value(i32 %.sroa.19.1, !9971, !DIExpression(DW_OP_LLVM_fragment, 320, 32), !10399)
    #dbg_value(i32 %.sroa.22.1, !9971, !DIExpression(DW_OP_LLVM_fragment, 384, 32), !10399)
    #dbg_value(i32 %.sroa.25.1, !9971, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !10399)
    #dbg_value(i32 %.sroa.28.1, !9971, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !10399)
    #dbg_value(i32 %.sroa.31.1, !9971, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !10399)
  store i32 %.sroa.586.0.extract.trunc, ptr %.sink3.i.sroa.phi, align 4, !dbg !10204, !alias.scope !12543
  br label %_RNvMNtCshhfsHpF03Qr_6netlog2h2NtB2_13Http2Settings13set_from_wire.exit, !dbg !12546

bb.bn:                                            ; preds = %bb.bm
    #dbg_value(i32 1, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !10399)
  br label %.sink.split.i, !dbg !12547

bb.bo:                                            ; preds = %bb.bm
    #dbg_value(i32 1, !9971, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !10399)
  br label %.sink.split.i, !dbg !12548

bb.bp:                                            ; preds = %bb.bm
    #dbg_value(i32 1, !9971, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !10399)
  br label %.sink.split.i, !dbg !12549

bb.bq:                                            ; preds = %bb.bm
    #dbg_value(i32 1, !9971, !DIExpression(DW_OP_LLVM_fragment, 256, 32), !10399)
  br label %.sink.split.i, !dbg !12550

bb.br:                                            ; preds = %bb.bm
    #dbg_value(i32 1, !9971, !DIExpression(DW_OP_LLVM_fragment, 320, 32), !10399)
  br label %.sink.split.i, !dbg !12551

bb.bs:                                            ; preds = %bb.bm
    #dbg_value(i32 1, !9971, !DIExpression(DW_OP_LLVM_fragment, 384, 32), !10399)
  br label %.sink.split.i, !dbg !12552

bb.bt:                                            ; preds = %bb.bm
    #dbg_value(i32 1, !9971, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !10399)
  br label %.sink.split.i, !dbg !12553

bb.bu:                                            ; preds = %bb.bm
    #dbg_value(i32 1, !9971, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !10399)
  br label %.sink.split.i, !dbg !12554

bb.bv:                                            ; preds = %bb.bm
    #dbg_value(i32 1, !9971, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !10399)
  br label %.sink.split.i, !dbg !12555

_RNvMNtCshhfsHpF03Qr_6netlog2h2NtB2_13Http2Settings13set_from_wire.exit: ; preds = %.sink.split.i, %bb.bm
  %.sroa.31.2 = phi i32 [ %.sroa.31.0484, %bb.bm ], [ %.sroa.31.1, %.sink.split.i ], !dbg !11107 ; 2 uses
  %.sroa.28.2 = phi i32 [ %.sroa.28.0485, %bb.bm ], [ %.sroa.28.1, %.sink.split.i ], !dbg !11107 ; 2 uses
  %.sroa.25.2 = phi i32 [ %.sroa.25.0486, %bb.bm ], [ %.sroa.25.1, %.sink.split.i ], !dbg !11107 ; 2 uses
  %.sroa.22.2 = phi i32 [ %.sroa.22.0487, %bb.bm ], [ %.sroa.22.1, %.sink.split.i ], !dbg !11107 ; 2 uses
  %.sroa.19.2 = phi i32 [ %.sroa.19.0488, %bb.bm ], [ %.sroa.19.1, %.sink.split.i ], !dbg !11107 ; 2 uses
  %.sroa.16.2 = phi i32 [ %.sroa.16.0489, %bb.bm ], [ %.sroa.16.1, %.sink.split.i ], !dbg !11107 ; 2 uses
  %.sroa.13.2 = phi i32 [ %.sroa.13.0490, %bb.bm ], [ %.sroa.13.1, %.sink.split.i ], !dbg !11107 ; 2 uses
  %.sroa.10.2 = phi i32 [ %.sroa.10.0491, %bb.bm ], [ %.sroa.10.1, %.sink.split.i ], !dbg !11107 ; 2 uses
  %.sroa.7.2 = phi i32 [ %.sroa.7.0492, %bb.bm ], [ %.sroa.7.1, %.sink.split.i ], !dbg !11107 ; 2 uses
  %.sroa.0.2 = phi i32 [ %.sroa.0.0198493, %bb.bm ], [ %.sroa.0.1, %.sink.split.i ], !dbg !12542 ; 2 uses
    #dbg_value(i32 %.sroa.0.2, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !10399)
    #dbg_value(i32 %.sroa.7.2, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !10399)
    #dbg_value(i32 %.sroa.10.2, !9971, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !10399)
    #dbg_value(i32 %.sroa.13.2, !9971, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !10399)
    #dbg_value(i32 %.sroa.16.2, !9971, !DIExpression(DW_OP_LLVM_fragment, 256, 32), !10399)
    #dbg_value(i32 %.sroa.19.2, !9971, !DIExpression(DW_OP_LLVM_fragment, 320, 32), !10399)
    #dbg_value(i32 %.sroa.22.2, !9971, !DIExpression(DW_OP_LLVM_fragment, 384, 32), !10399)
    #dbg_value(i32 %.sroa.25.2, !9971, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !10399)
    #dbg_value(i32 %.sroa.28.2, !9971, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !10399)
    #dbg_value(i32 %.sroa.31.2, !9971, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !10399)
    #dbg_value(ptr %i.l, !11766, !DIExpression(), !12556)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCseN4S6VTYCs1_14regex_automata4util8captures8CapturesECshhfsHpF03Qr_6netlog(ptr noalias nofree noundef align 8 dereferenceable(40) %.sroa.8.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg4siF5yTrPh_5regex5regex6string8CapturesECshhfsHpF03Qr_6netlog.exit149 unwind label %.loopexit, !dbg !12558

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg4siF5yTrPh_5regex5regex6string8CapturesECshhfsHpF03Qr_6netlog.exit149: ; preds = %_RNvMNtCshhfsHpF03Qr_6netlog2h2NtB2_13Http2Settings13set_from_wire.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !12559
    #dbg_value(i32 %.sroa.0.2, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !10399)
    #dbg_value(i32 %.sroa.7.2, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !10399)
    #dbg_value(i32 %.sroa.10.2, !9971, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !10399)
    #dbg_value(i32 %.sroa.13.2, !9971, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !10399)
    #dbg_value(i32 %.sroa.16.2, !9971, !DIExpression(DW_OP_LLVM_fragment, 256, 32), !10399)
    #dbg_value(i32 %.sroa.19.2, !9971, !DIExpression(DW_OP_LLVM_fragment, 320, 32), !10399)
end_hunk_0
begin_hunk_1_@_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCseN4S6VTYCs1_14regex_automata6hybrid2id11LazyStateIDENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhfsHpF03Qr_6netlog
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCseN4S6VTYCs1_14regex_automata6hybrid2id11LazyStateIDENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCseN4S6VTYCs1_14regex_automata3nfa8thompson6pikevm13FollowEpsilonENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCseN4S6VTYCs1_14regex_automata3nfa8thompson9backtrack5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCseN4S6VTYCs1_14regex_automata4util11determinize5state5StateENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtNtCseN4S6VTYCs1_14regex_automata4util11determinize5state5StateNtNtNtBX_6hybrid2id11LazyStateIDEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog2h21__NtB2v_18Http2SessionParamsNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog2h2s0_1__NtB2v_29Http2SessionInitializedParamsNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog2h2s1_1__NtB2v_28Http2SessionInitializedEventNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog2h2s2_1__NtB2v_30Http2SessionSendSettingsParamsNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog2h2s3_1__NtB2v_29Http2SessionSendSettingsEventNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog2h2s4_1__NtB2v_29Http2SessionRecvSettingParamsNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog2h2s5_1__NtB2v_28Http2SessionRecvSettingEventNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog2h2s6_1__NtB2v_29Http2SessionSendHeadersParamsNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog2h2s7_1__NtB2v_28Http2SessionSendHeadersEventNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog2h2s8_1__NtB2v_26Http2SessionSendDataParamsNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog2h2s9_1__NtB2v_25Http2SessionSendDataEventNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog2h2sA_1__NtB2v_28Http2SessionRecvGoawayParamsNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog2h2sB_1__NtB2v_27Http2SessionRecvGoawayEventNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog2h2sC_1__NtB2v_23Http2SessionCloseParamsNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog2h2sD_1__NtB2v_22Http2SessionCloseEventNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog2h2sE_1__NtB2v_34Htt2SessionStalledMaxStreamsParamsNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog2h2sF_1__NtB2v_33Htt2SessionStalledMaxStreamsEventNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog2h2s_1__NtB2v_17Http2SessionEventNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog2h2sa_1__NtB2v_29Http2SessionRecvHeadersParamsNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog2h2sb_1__NtB2v_28Http2SessionRecvHeadersEventNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog2h2sd_1__NtB2v_25Http2SessionRecvDataEventNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog2h2se_1__NtB2v_34Http2SessionUpdateRecvWindowParamsNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog2h2sf_1__NtB2v_33Http2SessionUpdateRecvWindowEventNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog2h2sg_1__NtB2v_34Http2SessionUpdateSendWindowParamsNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog2h2sh_1__NtB2v_33Http2SessionUpdateSendWindowEventNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog2h2si_1__NtB2v_45Http2SessionUpdateStreamsSendWindowSizeParamsNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog2h2sj_1__NtB2v_44Http2SessionUpdateStreamsSendWindowSizeEventNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog2h2sk_1__NtB2v_34Http2SessionSendWindowUpdateParamsNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog2h2sl_1__NtB2v_33Http2SessionSendWindowUpdateEventNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog2h2sm_1__NtB2v_34Http2SessionRecvWindowUpdateParamsNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog2h2sn_1__NtB2v_33Http2SessionRecvWindowUpdateEventNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog2h2so_1__NtB2v_33Http2StreamUpdateSendWindowParamsNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog2h2sp_1__NtB2v_32Http2StreamUpdateSendWindowEventNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog2h2sq_1__NtB2v_33Http2StreamUpdateRecvWindowParamsNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog2h2sr_1__NtB2v_32Http2StreamUpdateRecvWindowEventNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog2h2ss_1__NtB2v_42Http2StreamStalledByStreamSendWindowParamsNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog2h2st_1__NtB2v_41Http2StreamStalledByStreamSendWindowEventNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog2h2su_1__NtB2v_22Http2SessionPingParamsNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog2h2sv_1__NtB2v_21Http2SessionPingEventNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog2h2sw_1__NtB2v_31Http2SessionSendRstStreamParamsNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog2h2sx_1__NtB2v_30Http2SessionSendRstStreamEventNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog2h2sy_1__NtB2v_31Http2SessionRecvRstStreamParamsNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog2h2sz_1__NtB2v_30Http2SessionRecvRstStreamEventNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #8

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs5_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtCsg4siF5yTrPh_5regex5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCseN4S6VTYCs1_14regex_automata4util4pool5innerINtB18_4PoolNtNtNtB1e_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB2a_NtNtNtB3i_5panic11unwind_safe13RefUnwindSafeNtNtB3i_6marker4SendNtB4P_4SyncNtB47_10UnwindSafeEL_EE3get0jECshhfsHpF03Qr_6netlog(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden void @_RNvMs2_NtNtNtCseN4S6VTYCs1_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE8get_slowCshhfsHpF03Qr_6netlog(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull align 8, i64 noundef, i64 noundef) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCseN4S6VTYCs1_14regex_automata4util4pool5innerINtB18_4PoolNtNtNtB1e_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB2a_NtNtNtB3i_5panic11unwind_safe13RefUnwindSafeNtNtB3i_6marker4SendNtB4P_4SyncNtB47_10UnwindSafeEL_EE9put_value0jECshhfsHpF03Qr_6netlog(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB11_5boxed3BoxNtNtNtCseN4S6VTYCs1_14regex_automata4meta5regex5CacheEEE8try_lockCshhfsHpF03Qr_6netlog(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtNtCseN4S6VTYCs1_14regex_automata4meta5regexNtB5_5Regex15create_captures(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #12

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedjjEB4_(i8 noundef range(i8 0, 3), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef, ptr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxNtNtNtCseN4S6VTYCs1_14regex_automata4meta5regex5CacheEE8grow_oneCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECshhfsHpF03Qr_6netlog(ptr noundef nonnull, ptr noundef nonnull, i64 noundef range(i64 1, 6), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsb_NtCsexYYUdYSQU6_5alloc6borrowINtB5_3CoweENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsenfyI6F4F2A_10serde_json2de10from_traitNtNtB4_4read9SliceReadNtNtCshhfsHpF03Qr_6netlog2h233Htt2SessionStalledMaxStreamsEventEB19_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsenfyI6F4F2A_10serde_json2de10from_traitNtNtB4_4read9SliceReadNtNtCshhfsHpF03Qr_6netlog2h222Http2SessionCloseEventEB19_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsenfyI6F4F2A_10serde_json2de10from_traitNtNtB4_4read9SliceReadNtNtCshhfsHpF03Qr_6netlog2h227Http2SessionRecvGoawayEventEB19_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsenfyI6F4F2A_10serde_json2de10from_traitNtNtB4_4read9SliceReadNtNtCshhfsHpF03Qr_6netlog2h230Http2SessionRecvRstStreamEventEB19_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsenfyI6F4F2A_10serde_json2de10from_traitNtNtB4_4read9SliceReadNtNtCshhfsHpF03Qr_6netlog2h230Http2SessionSendRstStreamEventEB19_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsenfyI6F4F2A_10serde_json2de10from_traitNtNtB4_4read9SliceReadNtNtCshhfsHpF03Qr_6netlog2h221Http2SessionPingEventEB19_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsenfyI6F4F2A_10serde_json2de10from_traitNtNtB4_4read9SliceReadNtNtCshhfsHpF03Qr_6netlog2h225Http2SessionRecvDataEventEB19_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsenfyI6F4F2A_10serde_json2de10from_traitNtNtB4_4read9SliceReadNtNtCshhfsHpF03Qr_6netlog2h228Http2SessionRecvHeadersEventEB19_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsenfyI6F4F2A_10serde_json2de10from_traitNtNtB4_4read9SliceReadNtNtCshhfsHpF03Qr_6netlog2h225Http2SessionSendDataEventEB19_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsenfyI6F4F2A_10serde_json2de10from_traitNtNtB4_4read9SliceReadNtNtCshhfsHpF03Qr_6netlog2h228Http2SessionSendHeadersEventEB19_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsenfyI6F4F2A_10serde_json2de10from_traitNtNtB4_4read9SliceReadNtNtCshhfsHpF03Qr_6netlog2h241Http2StreamStalledByStreamSendWindowEventEB19_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsenfyI6F4F2A_10serde_json2de10from_traitNtNtB4_4read9SliceReadNtNtCshhfsHpF03Qr_6netlog2h232Http2StreamUpdateRecvWindowEventEB19_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsenfyI6F4F2A_10serde_json2de10from_traitNtNtB4_4read9SliceReadNtNtCshhfsHpF03Qr_6netlog2h232Http2StreamUpdateSendWindowEventEB19_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsenfyI6F4F2A_10serde_json2de10from_traitNtNtB4_4read9SliceReadNtNtCshhfsHpF03Qr_6netlog2h233Http2SessionRecvWindowUpdateEventEB19_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsenfyI6F4F2A_10serde_json2de10from_traitNtNtB4_4read9SliceReadNtNtCshhfsHpF03Qr_6netlog2h233Http2SessionSendWindowUpdateEventEB19_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsenfyI6F4F2A_10serde_json2de10from_traitNtNtB4_4read9SliceReadNtNtCshhfsHpF03Qr_6netlog2h244Http2SessionUpdateStreamsSendWindowSizeEventEB19_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsenfyI6F4F2A_10serde_json2de10from_traitNtNtB4_4read9SliceReadNtNtCshhfsHpF03Qr_6netlog2h233Http2SessionUpdateSendWindowEventEB19_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsenfyI6F4F2A_10serde_json2de10from_traitNtNtB4_4read9SliceReadNtNtCshhfsHpF03Qr_6netlog2h233Http2SessionUpdateRecvWindowEventEB19_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsenfyI6F4F2A_10serde_json2de10from_traitNtNtB4_4read9SliceReadNtNtCshhfsHpF03Qr_6netlog2h228Http2SessionRecvSettingEventEB19_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsenfyI6F4F2A_10serde_json2de10from_traitNtNtB4_4read9SliceReadNtNtCshhfsHpF03Qr_6netlog2h229Http2SessionSendSettingsEventEB19_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsenfyI6F4F2A_10serde_json2de10from_traitNtNtB4_4read9SliceReadNtNtCshhfsHpF03Qr_6netlog2h228Http2SessionInitializedEventEB19_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsenfyI6F4F2A_10serde_json2de10from_traitNtNtB4_4read9SliceReadNtNtCshhfsHpF03Qr_6netlog2h217Http2SessionEventEB19_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #14

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCseN4S6VTYCs1_14regex_automata4meta5regex6RegexIE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCseN4S6VTYCs1_14regex_automata4util8captures14GroupInfoInnerE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCseN4S6VTYCs1_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceE9drop_slowCseN4S6VTYCs1_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtNtCsg4siF5yTrPh_5regex5regex6stringNtB5_5Regex3new(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB6_7Display3fmtCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { cold noreturn nounwind }
attributes #18 = { nounwind }
attributes #19 = { cold }
attributes #20 = { inlinehint }
attributes #21 = { noinline noreturn }
attributes #22 = { noinline }
attributes #23 = { noreturn }

!llvm.module.flags = !{!292, !293, !294, !295, !296}
!llvm.ident = !{!297}
!llvm.dbg.cu = !{!298}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "<serde_json::error::Error as core::fmt::Debug>::{vtable}", scope: null, file: !2, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "<unknown>", directory: "")
!3 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<serde_json::error::Error as core::fmt::Debug>::{vtable_type}", file: !2, size: 256, align: 64, flags: DIFlagArtificial, elements: !4, vtableHolder: !12, templateParams: !35, identifier: "d038851585cbabd7990866b143204f0f")
!4 = !{!5, !8, !10, !11}
!5 = !DIDerivedType(tag: DW_TAG_member, name: "drop_in_place", scope: !3, file: !2, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const ()", baseType: !7, size: 64, align: 64, dwarfAddressSpace: 0)
!7 = !DIBasicType(name: "()", encoding: DW_ATE_unsigned)
!8 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3, file: !2, baseType: !9, size: 64, align: 64, offset: 64)
!9 = !DIBasicType(name: "usize", size: 64, encoding: DW_ATE_unsigned)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3, file: !2, baseType: !9, size: 64, align: 64, offset: 128)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "__method3", scope: !3, file: !2, baseType: !6, size: 64, align: 64, offset: 192)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Error", scope: !13, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !15, templateParams: !35, identifier: "ff6cfbd1ca1b9cd5616dbe5abf306333")
!13 = !DINamespace(name: "error", scope: !14)
!14 = !DINamespace(name: "serde_json", scope: null)
!15 = !{!16}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !12, file: !2, baseType: !17, size: 64, align: 64, flags: DIFlagPrivate)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "alloc::boxed::Box<serde_json::error::ErrorImpl, alloc::alloc::Global>", baseType: !18, size: 64, align: 64, dwarfAddressSpace: 0)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ErrorImpl", scope: !13, file: !2, size: 320, align: 64, flags: DIFlagPrivate, elements: !19, templateParams: !35, identifier: "cc64a0357ca2dd18e50e271afc4558ed")
!19 = !{!20, !225, !226}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !18, file: !2, baseType: !21, size: 192, align: 64, flags: DIFlagPrivate)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ErrorCode", scope: !13, file: !2, size: 192, align: 64, flags: DIFlagProtected, elements: !22, templateParams: !35, identifier: "72f07a5612d6be131c5941f7a0c77661")
!22 = !{!23}
!23 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !21, file: !2, size: 192, align: 64, elements: !24, templateParams: !35, identifier: "6126c005af606b7e4c7fd729f5a09054", discriminator: !223)
!24 = !{!25, !36, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "Message", scope: !23, file: !2, baseType: !26, size: 192, align: 64, extraData: i64 0)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Message", scope: !21, file: !2, size: 192, align: 64, flags: DIFlagProtected, elements: !27, templateParams: !35, identifier: "d7bfbaa96ef7d46128f09ecc614d4b1e")
!27 = !{!28}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !26, file: !2, baseType: !29, size: 128, align: 64, offset: 64, flags: DIFlagProtected)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "alloc::boxed::Box<str, alloc::alloc::Global>", file: !2, size: 128, align: 64, elements: !30, templateParams: !35, identifier: "a32ebfb40a38c0199bd8b645966d7acb")
!30 = !{!31, !34}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !29, file: !2, baseType: !32, size: 64, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64, dwarfAddressSpace: 0)
!33 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !29, file: !2, baseType: !9, size: 64, align: 64, offset: 64)
!35 = !{}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "Io", scope: !23, file: !2, baseType: !37, size: 192, align: 64, extraData: i64 1)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Io", scope: !21, file: !2, size: 192, align: 64, flags: DIFlagProtected, elements: !38, templateParams: !35, identifier: "32f06e824ce20f571046f741d1958838")
!38 = !{!39}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !37, file: !2, baseType: !40, size: 64, align: 64, offset: 64, flags: DIFlagProtected)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Error", scope: !41, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !44, templateParams: !35, identifier: "9565b48bcb26782f8114d55e06025d16")
!41 = !DINamespace(name: "error", scope: !42)
!42 = !DINamespace(name: "io", scope: !43)
!43 = !DINamespace(name: "core", scope: null)
!44 = !{!45}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "repr", scope: !40, file: !2, baseType: !46, size: 64, align: 64, flags: DIFlagPrivate)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Repr", scope: !47, file: !2, size: 64, align: 64, flags: DIFlagProtected, elements: !48, templateParams: !35, identifier: "73650e4ac1062fbd7c81c5cb9e8f8444")
!47 = !DINamespace(name: "repr", scope: !41)
!48 = !{!49, !57}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !46, file: !2, baseType: !50, size: 64, align: 64, flags: DIFlagPrivate)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<()>", scope: !51, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !53, templateParams: !55, identifier: "7f90ab556e2e59aaa6b037409fc2ccd2")
!51 = !DINamespace(name: "non_null", scope: !52)
!52 = !DINamespace(name: "ptr", scope: !43)
!53 = !{!54}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !50, file: !2, baseType: !6, size: 64, align: 64, flags: DIFlagPrivate)
!55 = !{!56}
!56 = !DITemplateTypeParameter(name: "T", type: !7)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !46, file: !2, baseType: !58, align: 8, offset: 64, flags: DIFlagPrivate)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<core::io::error::ErrorData<core::io::error::CustomOwner>>", scope: !59, file: !2, align: 8, flags: DIFlagPublic, elements: !35, templateParams: !60, identifier: "715902abb6266e997d852ca40fe3a062")
!59 = !DINamespace(name: "marker", scope: !43)
end_hunk_1
