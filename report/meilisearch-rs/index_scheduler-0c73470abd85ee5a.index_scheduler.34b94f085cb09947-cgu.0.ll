Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/index_scheduler-0c73470abd85ee5a.index_scheduler.34b94f085cb09947-cgu.0?download=true
inline.NumInlined: 57300
inline.NumDeleted: 23973
loop-unroll.NumCompletelyUnrolled: 215
loop-unroll.NumRuntimeUnrolled: 564
loop-unroll.NumUnrolled: 782
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0_@_ZN10serde_core3ser12SerializeMap15serialize_entry17h66f5206f1699289eE:bb.a
  store i8 123, ptr %i.ep, align 1, !noalias !17211
  %i.eq = add nuw i64 %i.el, 1
  store i64 %i.eq, ptr %i.eh, align 8, !alias.scope !17210, !noalias !17209
  store i8 0, ptr %i.a, align 8, !noalias !17199
  store i8 1, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !17199
  store ptr %i.dk, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !17199
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h92535ac3d79c558bE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1848, i64 noundef 8, i8 %.val22.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17212)
  %i.er = load i8, ptr %i.a, align 8, !range !74, !alias.scope !17212, !noalias !17213, !noundef !57
  %i.es = trunc nuw i8 %i.er to i1
  br i1 %i.es, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h2cedadbc36594175E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h92535ac3d79c558bE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1849, i64 noundef 10, i8 %.val23.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.a, align 8, !noalias !17199
  %i.et = trunc nuw i8 %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i1
  %.sroa.43.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !17199
  %i.eu = icmp eq i8 %.sroa.43.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.et, i1 true, i1 %i.eu
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.sroa.55.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !17199, !nonnull !57, !noundef !57
  %.val.i.i25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.55.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !17214, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17218)
  %i.ev = getelementptr inbounds nuw i8, ptr %.val.i.i25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.ew = load i64, ptr %i.ev, align 8, !alias.scope !17219, !noalias !17220, !noundef !57 ; 3 uses
  %i.ex = load i64, ptr %.val.i.i25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !56, !alias.scope !17219, !noalias !17220, !noundef !57
  %i.ey = icmp eq i64 %i.ex, %i.ew
  br i1 %i.ey, label %bb.ag, label %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !60

bb.ag:                                            ; preds = %bb.af
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.ew, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !17220
  %.pre.i.i.i.i.i.i.i.i26.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ev, align 8, !alias.scope !17221, !noalias !17220
  br label %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ag, %bb.af
  %i.ez = phi i64 [ %i.ew, %bb.af ], [ %.pre.i.i.i.i.i.i.i.i26.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ag ] ; 3 uses
  %i.fa = icmp sgt i64 %i.ez, -1
  tail call void @llvm.assume(i1 %i.fa)
  %i.fb = getelementptr inbounds nuw i8, ptr %.val.i.i25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !alias.scope !17221, !noalias !17220, !nonnull !57, !noundef !57
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.ez
  store i8 125, ptr %i.fd, align 1, !noalias !17222
  %i.fe = add nuw i64 %i.ez, 1
  store i64 %i.fe, ptr %i.ev, align 8, !alias.scope !17221, !noalias !17220
  br label %bb.ah

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h2cedadbc36594175E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.w
  %i.ff = tail call noundef nonnull align 8 ptr @_ZN10serde_json3ser17invalid_raw_value17h7b86ac75f635f2e0E(), !noalias !17223
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h37ddbf3cc1980791E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h2cedadbc36594175E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ad
  %i.fg = tail call noundef nonnull align 8 ptr @_ZN10serde_json3ser17invalid_raw_value17h7b86ac75f635f2e0E(), !noalias !17224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17199
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h37ddbf3cc1980791E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.ah:                                            ; preds = %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17199
  %.val.i.i25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.dk, align 8, !noalias !17225, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17229)
  %i.fh = getelementptr inbounds nuw i8, ptr %.val.i.i25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.fi = load i64, ptr %i.fh, align 8, !alias.scope !17230, !noalias !17231, !noundef !57 ; 3 uses
  %i.fj = load i64, ptr %.val.i.i25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !56, !alias.scope !17230, !noalias !17231, !noundef !57
  %i.fk = icmp eq i64 %i.fj, %i.fi
  br i1 %i.fk, label %bb.ai, label %bb.aj, !prof !60

bb.ai:                                            ; preds = %bb.ah
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.fi, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !17231
  %.pre.i.i.i.i.i.i.i.i26.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.fh, align 8, !alias.scope !17232, !noalias !17231
  br label %bb.aj

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h37ddbf3cc1980791E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h2cedadbc36594175E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h2cedadbc36594175E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.0.1.i.i.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ff, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h2cedadbc36594175E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.fg, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h2cedadbc36594175E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17164
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h80c86f1155f7c377E.exit"

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.fl = phi i64 [ %i.fi, %bb.ah ], [ %.pre.i.i.i.i.i.i.i.i26.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ai ] ; 3 uses
  %i.fm = icmp sgt i64 %i.fl, -1
  tail call void @llvm.assume(i1 %i.fm)
  %i.fn = getelementptr inbounds nuw i8, ptr %.val.i.i25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !alias.scope !17232, !noalias !17231, !nonnull !57, !noundef !57
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fl
  store i8 125, ptr %i.fp, align 1, !noalias !17233
  %i.fq = add nuw i64 %i.fl, 1
  store i64 %i.fq, ptr %i.fh, align 8, !alias.scope !17232, !noalias !17231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17164
  %.val.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !17234, !noalias !17235, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17239)
  %i.fr = getelementptr inbounds nuw i8, ptr %.val.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.fs = load i64, ptr %i.fr, align 8, !alias.scope !17240, !noalias !17241, !noundef !57 ; 3 uses
  %i.ft = load i64, ptr %.val.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !56, !alias.scope !17240, !noalias !17241, !noundef !57
  %i.fu = icmp eq i64 %i.ft, %i.fs
  br i1 %i.fu, label %bb.ak, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$3end17h9efebf22f020f0b7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !60

bb.ak:                                            ; preds = %bb.aj
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.fs, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !17241
  %.pre.i.i.i.i.i.i.i.i30.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.fr, align 8, !alias.scope !17242, !noalias !17241
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$3end17h9efebf22f020f0b7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$3end17h9efebf22f020f0b7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ak, %bb.aj
  %i.fv = phi i64 [ %i.fs, %bb.aj ], [ %.pre.i.i.i.i.i.i.i.i30.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ak ] ; 3 uses
  %i.fw = icmp sgt i64 %i.fv, -1
  tail call void @llvm.assume(i1 %i.fw)
  %i.fx = getelementptr inbounds nuw i8, ptr %.val.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !alias.scope !17242, !noalias !17241, !nonnull !57, !noundef !57
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fv
  store i8 125, ptr %i.fz, align 1, !noalias !17243
  %i.ga = add nuw i64 %i.fv, 1
  store i64 %i.ga, ptr %i.fr, align 8, !alias.scope !17242, !noalias !17241
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h51a22ef250f94068E.exit.i.i.i.i.i.i.i.i"

bb.al:                                            ; preds = %_ZN10serde_json3ser9Formatter17begin_array_value17he9a3bb811dad8781E.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8, !alias.scope !17117, !noalias !17118, !nonnull !57, !noundef !57
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.ge = load i64, ptr %i.gd, align 8, !alias.scope !17117, !noalias !17118, !noundef !57
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !17244, !noalias !17245, !nonnull !57, !align !61, !noundef !57
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gc, i64 noundef %i.ge)
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h51a22ef250f94068E.exit.i.i.i.i.i.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h51a22ef250f94068E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.al, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$3end17h9efebf22f020f0b7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.gf = icmp eq ptr %i.bb, %i.ah
  br i1 %i.gf, label %.thread.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h51a22ef250f94068E.exit.i.i.i.i.i.i.i.i"
  %.val.i13.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !17104, !noalias !17246, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17250)
  %i.gg = getelementptr inbounds nuw i8, ptr %.val.i13.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.gh = load i64, ptr %i.gg, align 8, !alias.scope !17251, !noalias !17252, !noundef !57 ; 3 uses
  %i.gi = load i64, ptr %.val.i13.i.i.i.i.i.i, align 8, !range !56, !alias.scope !17251, !noalias !17252, !noundef !57
  %i.gj = icmp eq i64 %i.gi, %i.gh
  br i1 %i.gj, label %bb.am, label %_ZN10serde_json3ser9Formatter9end_array17hf1b0b89c114d8d5aE.exit.i14.i.i.i.i.i.i, !prof !60

bb.am:                                            ; preds = %.thread.i.i.i.i.i.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i13.i.i.i.i.i.i, i64 noundef %i.gh, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !17252
  %.pre.i.i.i.i.i.i.i15.i.i.i.i.i.i = load i64, ptr %i.gg, align 8, !alias.scope !17253, !noalias !17252
  br label %_ZN10serde_json3ser9Formatter9end_array17hf1b0b89c114d8d5aE.exit.i14.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter9end_array17hf1b0b89c114d8d5aE.exit.i14.i.i.i.i.i.i: ; preds = %bb.am, %.thread.i.i.i.i.i.i
  %i.gk = phi i64 [ %i.gh, %.thread.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i15.i.i.i.i.i.i, %bb.am ] ; 3 uses
  %i.gl = icmp sgt i64 %i.gk, -1
  tail call void @llvm.assume(i1 %i.gl)
  %i.gm = getelementptr inbounds nuw i8, ptr %.val.i13.i.i.i.i.i.i, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !alias.scope !17253, !noalias !17252, !nonnull !57, !noundef !57
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gk
  store i8 93, ptr %i.go, align 1, !noalias !17254
  %i.gp = add nuw i64 %i.gk, 1
  store i64 %i.gp, ptr %i.gg, align 8, !alias.scope !17253, !noalias !17252
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h80c86f1155f7c377E.exit"

bb.an:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i
  %.val.i.i = load ptr, ptr %i.f, align 8, !alias.scope !17075, !noalias !17076, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17258)
  %i.gq = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16 ; 3 uses
  %i.gr = load i64, ptr %i.gq, align 8, !alias.scope !17259, !noalias !17260, !noundef !57 ; 3 uses
  %i.gs = load i64, ptr %.val.i.i, align 8, !range !56, !alias.scope !17259, !noalias !17260, !noundef !57
  %i.gt = sub i64 %i.gs, %i.gr
  %i.gu = icmp ult i64 %i.gt, 4
  br i1 %i.gu, label %bb.ao, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h252051f7955c6753E.exit.i.i", !prof !60

bb.ao:                                            ; preds = %bb.an
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, i64 noundef %i.gr, i64 noundef 4, i64 noundef 1, i64 noundef 1), !noalias !17260
  %.pre.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.gq, align 8, !alias.scope !17261, !noalias !17260
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h252051f7955c6753E.exit.i.i"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h252051f7955c6753E.exit.i.i": ; preds = %bb.ao, %bb.an
  %i.gv = phi i64 [ %i.gr, %bb.an ], [ %.pre.i.i.i.i.i.i.i.i.i.i, %bb.ao ] ; 3 uses
  %i.gw = icmp sgt i64 %i.gv, -1
  tail call void @llvm.assume(i1 %i.gw)
  %i.gx = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !alias.scope !17261, !noalias !17260, !nonnull !57, !noundef !57
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.gv
  store i32 1819047278, ptr %i.gz, align 1, !noalias !17262
  %i.ha = add nuw i64 %i.gv, 4
  store i64 %i.ha, ptr %i.gq, align 8, !alias.scope !17261, !noalias !17260
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h80c86f1155f7c377E.exit"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h80c86f1155f7c377E.exit": ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hb2a281333cd7a726E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %_ZN10serde_json3ser9Formatter9end_array17hf1b0b89c114d8d5aE.exit.i.i.i.i.i.i.i, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h37ddbf3cc1980791E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %_ZN10serde_json3ser9Formatter9end_array17hf1b0b89c114d8d5aE.exit.i14.i.i.i.i.i.i, %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h252051f7955c6753E.exit.i.i"
  %.sroa.0.1.i = phi ptr [ %.sroa.0.1.i.i.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h37ddbf3cc1980791E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ null, %_ZN10serde_json3ser9Formatter9end_array17hf1b0b89c114d8d5aE.exit.i.i.i.i.i.i.i ], [ null, %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h252051f7955c6753E.exit.i.i" ], [ null, %_ZN10serde_json3ser9Formatter9end_array17hf1b0b89c114d8d5aE.exit.i14.i.i.i.i.i.i ], [ %i.ch, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hb2a281333cd7a726E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  ret ptr %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noalias noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h6986db78f813f878E(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17564)
  %i.a = load i8, ptr %0, align 8, !range !74, !alias.scope !17564, !noalias !17565, !noundef !57
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !60

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @252, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4932) #80, !noalias !17566
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !17564, !noalias !17565, !nonnull !57, !align !61, !noundef !57 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !range !65, !alias.scope !17564, !noalias !17565, !noundef !57
  %i.g = icmp eq i8 %i.f, 1
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !17566 ; 6 uses
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17568)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17569)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17570)
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !17571, !noalias !17572, !noundef !57 ; 3 uses
  %i.j = load i64, ptr %.val.i, align 8, !range !56, !alias.scope !17571, !noalias !17572, !noundef !57
  %i.k = icmp eq i64 %i.j, %i.i
  br i1 %i.k, label %bb.e, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i", !prof !60

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, i64 noundef %i.i, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !17572
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !17573, !noalias !17572
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i": ; preds = %bb.e, %bb.d
  %i.l = phi i64 [ %i.i, %bb.d ], [ %.pre.i.i.i.i.i.i.i, %bb.e ] ; 3 uses
  %i.m = icmp sgt i64 %i.l, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !17573, !noalias !17572, !nonnull !57, !noundef !57
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l
  store i8 44, ptr %i.p, align 1, !noalias !17574
  %i.q = add nuw i64 %i.l, 1
  store i64 %i.q, ptr %i.h, align 8, !alias.scope !17573, !noalias !17572
  %.val9.pre.i = load ptr, ptr %i.d, align 8, !noalias !17566
  br label %bb.f

bb.f:                                             ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i", %bb.c
  %.val9.i = phi ptr [ %.val.i, %bb.c ], [ %.val9.pre.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i" ]
  store i8 2, ptr %i.e, align 1, !alias.scope !17564, !noalias !17565
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val9.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1665, i64 noundef 19)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17575)
  %.val.i5 = load ptr, ptr %i.d, align 8, !noalias !17575, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17576)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17577)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17578)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17579)
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i5, i64 16 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !17580, !noalias !17581, !noundef !57 ; 3 uses
  %i.t = load i64, ptr %.val.i5, align 8, !range !56, !alias.scope !17580, !noalias !17581, !noundef !57
  %i.u = icmp eq i64 %i.t, %i.s
  br i1 %i.u, label %bb.g, label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i, !prof !60

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i5, i64 noundef %i.s, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !17581
  %.pre.i.i.i.i.i.i.i6 = load i64, ptr %i.r, align 8, !alias.scope !17582, !noalias !17581
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i

_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i: ; preds = %bb.g, %bb.f
  %i.v = phi i64 [ %i.s, %bb.f ], [ %.pre.i.i.i.i.i.i.i6, %bb.g ] ; 3 uses
  %i.w = icmp sgt i64 %i.v, -1
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i5, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !17582, !noalias !17581, !nonnull !57, !noundef !57
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v
  store i8 58, ptr %i.z, align 1, !noalias !17583
  %i.aa = add nuw i64 %i.v, 1
  store i64 %i.aa, ptr %i.r, align 8, !alias.scope !17582, !noalias !17581
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17584)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17585)
  %i.ab = load i64, ptr %1, align 8, !range !84, !alias.scope !17586, !noalias !17585, !noundef !57
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %bb.fi, label %bb.h

bb.h:                                             ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17587)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17588)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !17586, !noalias !17589, !nonnull !57, !noundef !57 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i.i.i = load i64, ptr %i.ae, align 8, !alias.scope !17586, !noalias !17589, !noundef !57 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17590)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17591)
  %.idx.i.i.i.i.i.i = mul nuw nsw i64 %.val1.i.i.i.i, 48
  %i.af = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.idx.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17592)
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !17593, !noalias !17594, !nonnull !57, !align !61, !noundef !57 ; 167 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17595)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17596)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17597)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17598)
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 16 ; 28 uses
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !17599, !noalias !17600, !noundef !57 ; 3 uses
  %i.ai = load i64, ptr %.val.i.i.i.i.i.i.i, align 8, !range !56, !alias.scope !17599, !noalias !17600, !noundef !57
  %i.aj = icmp eq i64 %i.ai, %i.ah
  br i1 %i.aj, label %bb.i, label %_ZN10serde_json3ser9Formatter11begin_array17h47ac5a3329cd6549E.exit.i.i.i.i.i.i.i, !prof !60

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i, i64 noundef %i.ah, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !17600
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ag, align 8, !alias.scope !17601, !noalias !17600
  br label %_ZN10serde_json3ser9Formatter11begin_array17h47ac5a3329cd6549E.exit.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter11begin_array17h47ac5a3329cd6549E.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.ak = phi i64 [ %i.ah, %bb.h ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.i ] ; 3 uses
  %i.al = icmp sgt i64 %i.ak, -1
  tail call void @llvm.assume(i1 %i.al)
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 8 ; 11 uses
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !17601, !noalias !17600, !nonnull !57, !noundef !57
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ak
  store i8 91, ptr %i.ao, align 1, !noalias !17602
  %i.ap = add nuw i64 %i.ak, 1                    ; 5 uses
  store i64 %i.ap, ptr %i.ag, align 8, !alias.scope !17601, !noalias !17600
  %.not.i.i.i.i.i.i = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %.lr.ph.i.split.i.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZN10serde_json3ser9Formatter11begin_array17h47ac5a3329cd6549E.exit.i.i.i.i.i.i.i
  %i.aq = load i64, ptr %.val.i.i.i.i.i.i.i, align 8, !range !56, !alias.scope !17603, !noalias !17604, !noundef !57
  %i.ar = icmp eq i64 %i.aq, %i.ap
  br i1 %i.ar, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h48392e12b52e9039E.exit.sink.split.sink.split.i.i.i.i.i.i", label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h48392e12b52e9039E.exit.sink.split.i.i.i.i.i.i", !prof !60

.lr.ph.i.split.i.i.i.i.i.i.i:                     ; preds = %_ZN10serde_json3ser9Formatter11begin_array17h47ac5a3329cd6549E.exit.i.i.i.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1f99664c5eca8dd0E.exit.i.i.i.i.i.i.i.i"
  %i.as = phi i64 [ %i.dx, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1f99664c5eca8dd0E.exit.i.i.i.i.i.i.i.i" ], [ %i.ap, %_ZN10serde_json3ser9Formatter11begin_array17h47ac5a3329cd6549E.exit.i.i.i.i.i.i.i ] ; 4 uses
  %i.at = phi i1 [ false, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1f99664c5eca8dd0E.exit.i.i.i.i.i.i.i.i" ], [ true, %_ZN10serde_json3ser9Formatter11begin_array17h47ac5a3329cd6549E.exit.i.i.i.i.i.i.i ]
  %i.au = phi ptr [ %i.av, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1f99664c5eca8dd0E.exit.i.i.i.i.i.i.i.i" ], [ %.val.i.i.i.i, %_ZN10serde_json3ser9Formatter11begin_array17h47ac5a3329cd6549E.exit.i.i.i.i.i.i.i ] ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17606)
  br i1 %i.at, label %_ZN10serde_json3ser9Formatter17begin_array_value17he9a3bb811dad8781E.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.split.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17607)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17609)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17610)
  %i.aw = load i64, ptr %.val.i.i.i.i.i.i.i, align 8, !range !56, !alias.scope !17611, !noalias !17612, !noundef !57
  %i.ax = icmp eq i64 %i.aw, %i.as
  br i1 %i.ax, label %bb.l, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i.i.i.i.i.i.i.i.i", !prof !60

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i, i64 noundef %i.as, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !17612
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ag, align 8, !alias.scope !17613, !noalias !17612
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.l, %bb.k
  %i.ay = phi i64 [ %i.as, %bb.k ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.l ] ; 3 uses
  %i.az = icmp sgt i64 %i.ay, -1
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = load ptr, ptr %i.am, align 8, !alias.scope !17613, !noalias !17612, !nonnull !57, !noundef !57
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ay
  store i8 44, ptr %i.bb, align 1, !noalias !17614
  %i.bc = add nuw i64 %i.ay, 1                    ; 2 uses
  store i64 %i.bc, ptr %i.ag, align 8, !alias.scope !17613, !noalias !17612
  br label %_ZN10serde_json3ser9Formatter17begin_array_value17he9a3bb811dad8781E.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter17begin_array_value17he9a3bb811dad8781E.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i.i.i.i.i.i.i.i.i", %.lr.ph.i.split.i.i.i.i.i.i.i
  %i.bd = phi i64 [ %i.bc, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.as, %.lr.ph.i.split.i.i.i.i.i.i.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17615)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17616)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17617)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17618)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17619)
  %i.be = load i64, ptr %.val.i.i.i.i.i.i.i, align 8, !range !56, !alias.scope !17620, !noalias !17621, !noundef !57
  %i.bf = icmp eq i64 %i.be, %i.bd
  br i1 %i.bf, label %bb.m, label %bb.n, !prof !60

bb.m:                                             ; preds = %_ZN10serde_json3ser9Formatter17begin_array_value17he9a3bb811dad8781E.exit.i.i.i.i.i.i.i.i.i.i.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i, i64 noundef %i.bd, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !17621
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ag, align 8, !alias.scope !17622, !noalias !17621
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN10serde_json3ser9Formatter17begin_array_value17he9a3bb811dad8781E.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.bg = phi i64 [ %i.bd, %_ZN10serde_json3ser9Formatter17begin_array_value17he9a3bb811dad8781E.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.m ] ; 3 uses
  %i.bh = icmp sgt i64 %i.bg, -1
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = load ptr, ptr %i.am, align 8, !alias.scope !17622, !noalias !17621, !nonnull !57, !noundef !57
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bg
  store i8 123, ptr %i.bj, align 1, !noalias !17623
  %i.bk = add nuw i64 %i.bg, 1
  store i64 %i.bk, ptr %i.ag, align 8, !alias.scope !17622, !noalias !17621
  %i.bl = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bl, align 8, !alias.scope !17624, !noalias !17625 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.val22.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bm, align 8, !alias.scope !17624, !noalias !17625
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1469, i64 noundef 17)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17626)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17627)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17628)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17629)
end_hunk_0
begin_hunk_1_@_ZN10serde_core3ser12SerializeMap15serialize_entry17h82e78d2aa1e0a64cE:bb.a
_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.cb, %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17h7de74eea24fd0f1bE.exit.i.i.i.i.i.thread.i.thread.i.i.i.i.i.i"
  %i.lh = phi i64 [ %i.le, %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17h7de74eea24fd0f1bE.exit.i.i.i.i.i.thread.i.thread.i.i.i.i.i.i" ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cb ] ; 3 uses
  %i.li = icmp sgt i64 %i.lh, -1
  tail call void @llvm.assume(i1 %i.li), !noalias !18713
  %i.lj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 8
  %i.lk = load ptr, ptr %i.lj, align 8, !alias.scope !18721, !noalias !18720, !nonnull !57, !noundef !57
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.lh
  store i8 125, ptr %i.ll, align 1, !noalias !18722
  %i.lm = add nuw i64 %i.lh, 1
  store i64 %i.lm, ptr %i.ld, align 8, !alias.scope !18721, !noalias !18720
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$3end17h9efebf22f020f0b7E.exit.i.i.i.i.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$3end17h9efebf22f020f0b7E.exit.i.i.i.i.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i.i.i.i.i.i.i.i.i, %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17h7de74eea24fd0f1bE.exit.i.i.i.i.i.thread.i.i.i.i.i.i.i", %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17h7de74eea24fd0f1bE.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18603
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h146f11d2b35c721bE.exit.i.i.i.i.i.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h146f11d2b35c721bE.exit.i.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$3end17h9efebf22f020f0b7E.exit.i.i.i.i.i.i.i", %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17h7de74eea24fd0f1bE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.ln = icmp eq i64 %.sroa.35.0.i.i.i.i.i.i, 0
  br i1 %i.ln, label %.thread117.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h99136d830873aed5E.exit.i.i.i.i.i.i.i"

.thread117.i.i.i.i.i.i:                           ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h146f11d2b35c721bE.exit.i.i.i.i.i.i.i.i"
  %.val.i11.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !18543, !noalias !18723, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18724)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18725)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18726)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18727)
  %i.lo = getelementptr inbounds nuw i8, ptr %.val.i11.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.lp = load i64, ptr %i.lo, align 8, !alias.scope !18728, !noalias !18729, !noundef !57 ; 3 uses
  %i.lq = load i64, ptr %.val.i11.i.i.i.i.i.i, align 8, !range !56, !alias.scope !18728, !noalias !18729, !noundef !57
  %i.lr = icmp eq i64 %i.lq, %i.lp
  br i1 %i.lr, label %bb.ch, label %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i12.i.i.i.i.i.i, !prof !60

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h99136d830873aed5E.exit.i.i.i.i.i.i.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h146f11d2b35c721bE.exit.i.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.1.i.i.i.i.i.i) ]
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.8.1.i.i.i.i.i.i, i64 16906
  %i.lt = load i16, ptr %i.ls, align 2, !noalias !18730, !noundef !57
  %i.lu = zext i16 %i.lt to i64
  %i.lv = icmp ult i64 %.sroa.24.1.i.i.i.i.i.i, %i.lu
  br i1 %i.lv, label %.thread121.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.thread121.i.i.i.i.i.i:                           ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h99136d830873aed5E.exit.i.i.i.i.i.i.i"
  %i.lw = add nuw nsw i64 %.sroa.24.1.i.i.i.i.i.i, 1
  br label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h54b5df7038e3a4fcE.exit.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h99136d830873aed5E.exit.i.i.i.i.i.i.i", %bb.cc
  %.sroa.0.038.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.lx, %bb.cc ], [ %.sroa.8.1.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h99136d830873aed5E.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ly, %bb.cc ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h99136d830873aed5E.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %i.lx = load ptr, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !18731, !noundef !57 ; 8 uses
  %.not.i.i.i.i.i15.i.i.i.i.i.i = icmp eq ptr %i.lx, null
  br i1 %.not.i.i.i.i.i15.i.i.i.i.i.i, label %bb.cf, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ly = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i, i64 16904
  %i.ma = load i16, ptr %i.lz, align 8, !noalias !18731 ; 3 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lx, i64 16906
  %i.mc = load i16, ptr %i.mb, align 2, !noalias !18730, !noundef !57
  %i.md = icmp ult i16 %i.ma, %i.mc
  br i1 %i.md, label %bb.cd, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.cd:                                            ; preds = %bb.cc
  %i.me = zext i16 %i.ma to i64                   ; 4 uses
  %i.mf = icmp eq i64 %i.ly, 0
  %i.mg = add nuw nsw i64 %i.me, 1                ; 2 uses
  br i1 %i.mf, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h54b5df7038e3a4fcE.exit.i.i.i.i.i.i", label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lx, i64 16912
  %i.mi = icmp ult i16 %i.ma, 11
  tail call void @llvm.assume(i1 %i.mi), !noalias !18567
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %i.mg ; 2 uses
  %xtraiter21 = and i64 %i.ly, 7                  ; 2 uses
  %lcmp.mod22.not = icmp eq i64 %xtraiter21, 0
  br i1 %lcmp.mod22.not, label %.prol.loopexit18, label %.prol.preheader17

.prol.preheader17:                                ; preds = %bb.ce, %.prol.preheader17
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.mk, %.prol.preheader17 ], [ %i.mj, %bb.ce ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader17 ], [ %i.ly, %bb.ce ]
  %prol.iter23 = phi i64 [ %prol.iter23.next, %.prol.preheader17 ], [ 0, %bb.ce ]
  %.pn28.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !18732, !nonnull !57, !noundef !57 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.prol, i64 16912 ; 2 uses
  %prol.iter23.next = add i64 %prol.iter23, 1     ; 2 uses
  %prol.iter23.cmp.not = icmp eq i64 %prol.iter23.next, %xtraiter21
  br i1 %prol.iter23.cmp.not, label %.prol.loopexit18, label %.prol.preheader17, !llvm.loop !18496

.prol.loopexit18:                                 ; preds = %.prol.preheader17, %bb.ce
  %.pn30.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.ce ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader17 ]
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.mj, %bb.ce ], [ %i.mk, %.prol.preheader17 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.ly, %bb.ce ], [ %.pn28.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader17 ]
  %i.ml = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i, 7
  br i1 %i.ml, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h54b5df7038e3a4fcE.exit.i.i.i.i.i.i", label %.new19

.new19:                                           ; preds = %.prol.loopexit18, %.new19
  %.pn30.in.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.mu, %.new19 ], [ %.pn30.in.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit18 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.7, %.new19 ], [ %.pn28.in.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit18 ]
  %.pn30.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !18732, !nonnull !57, !noundef !57
  %i.mm = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i, i64 16912
  %.pn30.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.mm, align 8, !noalias !18732, !nonnull !57, !noundef !57
  %i.mn = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.1, i64 16912
  %.pn30.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.mn, align 8, !noalias !18732, !nonnull !57, !noundef !57
  %i.mo = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.2, i64 16912
  %.pn30.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.mo, align 8, !noalias !18732, !nonnull !57, !noundef !57
  %i.mp = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.3, i64 16912
  %.pn30.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.mp, align 8, !noalias !18732, !nonnull !57, !noundef !57
  %i.mq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.4, i64 16912
  %.pn30.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.mq, align 8, !noalias !18732, !nonnull !57, !noundef !57
  %i.mr = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.5, i64 16912
  %.pn30.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.mr, align 8, !noalias !18732, !nonnull !57, !noundef !57
  %i.ms = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.6, i64 16912
  %.pn28.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.ms, align 8, !noalias !18732, !nonnull !57, !noundef !57 ; 2 uses
  %i.mt = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.mu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.7, i64 16912
  br i1 %i.mt, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h54b5df7038e3a4fcE.exit.i.i.i.i.i.i", label %.new19

bb.cf:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2537) #80
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.cg, !noalias !18733

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.cf
  unreachable

bb.cg:                                            ; preds = %bb.cf
  %i.mv = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !18567
  unreachable

"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h54b5df7038e3a4fcE.exit.i.i.i.i.i.i": ; preds = %.prol.loopexit18, %.new19, %bb.cd, %.thread121.i.i.i.i.i.i
  %.sroa.0.0.ph.i.i.i126.i.i.i.i.i.i = phi ptr [ %i.lx, %bb.cd ], [ %.sroa.8.1.i.i.i.i.i.i, %.thread121.i.i.i.i.i.i ], [ %i.lx, %.new19 ], [ %i.lx, %.prol.loopexit18 ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i125.i.i.i.i.i.i = phi i64 [ %i.me, %bb.cd ], [ %.sroa.24.1.i.i.i.i.i.i, %.thread121.i.i.i.i.i.i ], [ %i.me, %.new19 ], [ %i.me, %.prol.loopexit18 ] ; 3 uses
  %.sroa.7.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.mg, %bb.cd ], [ %i.lw, %.thread121.i.i.i.i.i.i ], [ 0, %.new19 ], [ 0, %.prol.loopexit18 ]
  %.sroa.07.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.lx, %bb.cd ], [ %.sroa.8.1.i.i.i.i.i.i, %.thread121.i.i.i.i.i.i ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit18 ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.7, %.new19 ]
  %i.mw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i126.i.i.i.i.i.i, i64 8
  %i.mx = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i125.i.i.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.mx), !noalias !18567
  %i.my = getelementptr inbounds nuw [24 x i8], ptr %i.mw, i64 %.sroa.6.sroa.4.0.ph.i.i.i125.i.i.i.i.i.i
  %i.mz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i126.i.i.i.i.i.i, i64 272
  %i.na = getelementptr inbounds nuw [1512 x i8], ptr %i.mz, i64 %.sroa.6.sroa.4.0.ph.i.i.i125.i.i.i.i.i.i
  br label %bb.r

bb.ch:                                            ; preds = %.thread117.i.i.i.i.i.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i11.i.i.i.i.i.i, i64 noundef %i.lp, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !18729
  %.pre.i.i.i.i.i.i.i13.i.i.i.i.i.i = load i64, ptr %i.lo, align 8, !alias.scope !18734, !noalias !18729
  br label %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i12.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i12.i.i.i.i.i.i: ; preds = %bb.ch, %.thread117.i.i.i.i.i.i
  %i.nb = phi i64 [ %i.lp, %.thread117.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i13.i.i.i.i.i.i, %bb.ch ] ; 3 uses
  %i.nc = icmp sgt i64 %i.nb, -1
  tail call void @llvm.assume(i1 %i.nc)
  %i.nd = getelementptr inbounds nuw i8, ptr %.val.i11.i.i.i.i.i.i, i64 8
  %i.ne = load ptr, ptr %i.nd, align 8, !alias.scope !18734, !noalias !18729, !nonnull !57, !noundef !57
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 %i.nb
  store i8 125, ptr %i.nf, align 1, !noalias !18735
  %i.ng = add nuw i64 %i.nb, 1
  store i64 %i.ng, ptr %i.lo, align 8, !alias.scope !18734, !noalias !18729
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h683b4b4fbc37d318E.exit"

bb.ci:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i
  %.val.i.i = load ptr, ptr %i.f, align 8, !alias.scope !18532, !noalias !18533, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18736)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18737)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18738)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18739)
  %i.nh = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16 ; 3 uses
  %i.ni = load i64, ptr %i.nh, align 8, !alias.scope !18740, !noalias !18741, !noundef !57 ; 3 uses
  %i.nj = load i64, ptr %.val.i.i, align 8, !range !56, !alias.scope !18740, !noalias !18741, !noundef !57
  %i.nk = sub i64 %i.nj, %i.ni
  %i.nl = icmp ult i64 %i.nk, 4
  br i1 %i.nl, label %bb.cj, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h252051f7955c6753E.exit.i.i", !prof !60

bb.cj:                                            ; preds = %bb.ci
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, i64 noundef %i.ni, i64 noundef 4, i64 noundef 1, i64 noundef 1), !noalias !18741
  %.pre.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.nh, align 8, !alias.scope !18742, !noalias !18741
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h252051f7955c6753E.exit.i.i"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h252051f7955c6753E.exit.i.i": ; preds = %bb.cj, %bb.ci
  %i.nm = phi i64 [ %i.ni, %bb.ci ], [ %.pre.i.i.i.i.i.i.i.i.i.i, %bb.cj ] ; 3 uses
  %i.nn = icmp sgt i64 %i.nm, -1
  tail call void @llvm.assume(i1 %i.nn)
  %i.no = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.np = load ptr, ptr %i.no, align 8, !alias.scope !18742, !noalias !18741, !nonnull !57, !noundef !57
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 %i.nm
  store i32 1819047278, ptr %i.nq, align 1, !noalias !18743
  %i.nr = add nuw i64 %i.nm, 4
  store i64 %i.nr, ptr %i.nh, align 8, !alias.scope !18742, !noalias !18741
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h683b4b4fbc37d318E.exit"

"_ZN88_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17h9b5f3b74a144a01bE.exit.i": ; preds = %bb.bh, %bb.bf, %bb.bd, %bb.bb, %bb.az, %bb.ax, %bb.av, %bb.ar, %bb.al, %bb.ah, %bb.ab, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.by, %"_ZN88_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17h675f90dc1af0b966E.exit.i.i.i.i.i.i.i.i.i.i"
  %.sroa.0.0.i.i.i.i.i.i.ph.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.kp, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN88_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17h675f90dc1af0b966E.exit.i.i.i.i.i.i.i.i.i.i" ], [ %i.ko, %bb.by ], [ %i.ic, %bb.bf ], [ %i.id, %bb.bh ], [ %i.hf, %bb.ab ], [ %i.hx, %bb.av ], [ %i.hy, %bb.ax ], [ %i.hk, %bb.ah ], [ %i.hz, %bb.az ], [ %i.ho, %bb.al ], [ %i.ia, %bb.bb ], [ %i.ib, %bb.bd ], [ %i.hu, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18603
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h683b4b4fbc37d318E.exit"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h683b4b4fbc37d318E.exit": ; preds = %.thread119.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i12.i.i.i.i.i.i, %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h252051f7955c6753E.exit.i.i", %"_ZN88_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17h9b5f3b74a144a01bE.exit.i"
  %.sroa.0.1.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i.ph.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN88_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17h9b5f3b74a144a01bE.exit.i" ], [ null, %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h252051f7955c6753E.exit.i.i" ], [ null, %.thread119.i.i.i.i.i.i ], [ null, %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i12.i.i.i.i.i.i ]
  ret ptr %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noalias noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h8b4af813dc369729E(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18936)
  %i.a = load i8, ptr %0, align 8, !range !74, !alias.scope !18936, !noalias !18937, !noundef !57
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !60

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @252, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4932) #80, !noalias !18938
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !18936, !noalias !18937, !nonnull !57, !align !61, !noundef !57 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !range !65, !alias.scope !18936, !noalias !18937, !noundef !57
  %i.g = icmp eq i8 %i.f, 1
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !18938 ; 6 uses
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18939)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18940)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18941)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18942)
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !18943, !noalias !18944, !noundef !57 ; 3 uses
  %i.j = load i64, ptr %.val.i, align 8, !range !56, !alias.scope !18943, !noalias !18944, !noundef !57
  %i.k = icmp eq i64 %i.j, %i.i
  br i1 %i.k, label %bb.e, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i", !prof !60

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, i64 noundef %i.i, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !18944
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !18945, !noalias !18944
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i": ; preds = %bb.e, %bb.d
  %i.l = phi i64 [ %i.i, %bb.d ], [ %.pre.i.i.i.i.i.i.i, %bb.e ] ; 3 uses
  %i.m = icmp sgt i64 %i.l, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !18945, !noalias !18944, !nonnull !57, !noundef !57
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l
  store i8 44, ptr %i.p, align 1, !noalias !18946
  %i.q = add nuw i64 %i.l, 1
  store i64 %i.q, ptr %i.h, align 8, !alias.scope !18945, !noalias !18944
  %.val9.pre.i = load ptr, ptr %i.d, align 8, !noalias !18938
  br label %bb.f

bb.f:                                             ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i", %bb.c
  %.val9.i = phi ptr [ %.val.i, %bb.c ], [ %.val9.pre.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i" ]
  store i8 2, ptr %i.e, align 1, !alias.scope !18936, !noalias !18937
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val9.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1657, i64 noundef 8)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18947)
  %.val.i5 = load ptr, ptr %i.d, align 8, !noalias !18947, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18948)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18949)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18950)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18951)
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i5, i64 16 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !18952, !noalias !18953, !noundef !57 ; 3 uses
  %i.t = load i64, ptr %.val.i5, align 8, !range !56, !alias.scope !18952, !noalias !18953, !noundef !57
  %i.u = icmp eq i64 %i.t, %i.s
  br i1 %i.u, label %bb.g, label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i, !prof !60

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i5, i64 noundef %i.s, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !18953
  %.pre.i.i.i.i.i.i.i6 = load i64, ptr %i.r, align 8, !alias.scope !18954, !noalias !18953
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i

_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i: ; preds = %bb.g, %bb.f
  %i.v = phi i64 [ %i.s, %bb.f ], [ %.pre.i.i.i.i.i.i.i6, %bb.g ] ; 3 uses
  %i.w = icmp sgt i64 %i.v, -1
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i5, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !18954, !noalias !18953, !nonnull !57, !noundef !57
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v
  store i8 58, ptr %i.z, align 1, !noalias !18955
  %i.aa = add nuw i64 %i.v, 1
  store i64 %i.aa, ptr %i.r, align 8, !alias.scope !18954, !noalias !18953
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18956)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18957)
  %i.ab = load i64, ptr %1, align 8, !range !72, !alias.scope !18958, !noalias !18957, !noundef !57
  %.not.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i, label %bb.h, label %bb.z

bb.h:                                             ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18959)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18960)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18961)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18962)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18963)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18964)
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !18965, !noalias !18966, !noundef !57 ; 4 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq ptr %i.ad, null ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !18967, !noalias !18968 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !18967, !noalias !18968
  %.sink.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i, i64 0, i64 %i.ah ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18969)
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !18970, !noalias !18971, !nonnull !57, !align !61, !noundef !57 ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18972)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18973)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18974)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18975)
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 16 ; 15 uses
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !18976, !noalias !18977, !noundef !57 ; 3 uses
  %i.ak = load i64, ptr %.val.i.i.i.i.i.i.i, align 8, !range !56, !alias.scope !18976, !noalias !18977, !noundef !57
  %i.al = icmp eq i64 %i.ak, %i.aj
  br i1 %i.al, label %bb.i, label %_ZN10serde_json3ser9Formatter12begin_object17h3f45ddf82171ae94E.exit.i.i.i.i.i.i.i, !prof !60

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i, i64 noundef %i.aj, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !18977
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ai, align 8, !alias.scope !18978, !noalias !18977
  br label %_ZN10serde_json3ser9Formatter12begin_object17h3f45ddf82171ae94E.exit.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter12begin_object17h3f45ddf82171ae94E.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.am = phi i64 [ %i.aj, %bb.h ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.i ] ; 3 uses
  %i.an = icmp sgt i64 %i.am, -1
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 8 ; 5 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !18978, !noalias !18977, !nonnull !57, !noundef !57
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.am
  store i8 123, ptr %i.aq, align 1, !noalias !18979
  %i.ar = add nuw i64 %i.am, 1                    ; 4 uses
  store i64 %i.ar, ptr %i.ai, align 8, !alias.scope !18978, !noalias !18977
  %i.as = icmp eq i64 %.sink.i.i.i.i.i.i.i, 0
  br i1 %i.as, label %bb.j, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17hff98dc517a76c0ecE.exit.i.i.i.i.i.i"

bb.j:                                             ; preds = %_ZN10serde_json3ser9Formatter12begin_object17h3f45ddf82171ae94E.exit.i.i.i.i.i.i.i
  %i.at = load i64, ptr %.val.i.i.i.i.i.i.i, align 8, !range !56, !alias.scope !18980, !noalias !18981, !noundef !57
  %i.au = icmp eq i64 %i.at, %i.ar
  br i1 %i.au, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h6d92c326ceaf6029E.exit.sink.split.i.i.i.i.i.i", label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h6d92c326ceaf6029E.exit.i.i.i.i.i.i", !prof !60

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17hff98dc517a76c0ecE.exit.i.i.i.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter12begin_object17h3f45ddf82171ae94E.exit.i.i.i.i.i.i.i
  br i1 %.not.i.not.i.i.i.i.i.i, label %.critedge.i15.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17hff98dc517a76c0ecE.exit.i.i.i.i.i.i"
  %i.av = icmp eq i64 %i.af, 0
  br i1 %i.av, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h25a44e4ae2def7c2E.exit.i21.i.i.i.i.i.i", label %.lr.ph.i.i46.i.i.i.i.i.i.preheader

.lr.ph.i.i46.i.i.i.i.i.i.preheader:               ; preds = %bb.k
  %xtraiter = and i64 %i.af, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i46.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i46.i.i.i.i.i.i.prol

.lr.ph.i.i46.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i46.i.i.i.i.i.i.preheader, %.lr.ph.i.i46.i.i.i.i.i.i.prol
  %.sroa.012.015.i.i47.i.i.i.i.i.i.prol = phi ptr [ %.sroa.012.0.i.i49.i.i.i.i.i.i.prol, %.lr.ph.i.i46.i.i.i.i.i.i.prol ], [ %i.ad, %.lr.ph.i.i46.i.i.i.i.i.i.preheader ]
  %.sroa.011.014.i.i48.i.i.i.i.i.i.prol = phi i64 [ %i.ax, %.lr.ph.i.i46.i.i.i.i.i.i.prol ], [ %i.af, %.lr.ph.i.i46.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i46.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i46.i.i.i.i.i.i.preheader ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i47.i.i.i.i.i.i.prol, i64 544
  %i.ax = add i64 %.sroa.011.014.i.i48.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.012.0.i.i49.i.i.i.i.i.i.prol = load ptr, ptr %i.aw, align 8, !noalias !18982, !nonnull !57, !noundef !57 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i46.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i46.i.i.i.i.i.i.prol, !llvm.loop !18832

.lr.ph.i.i46.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i46.i.i.i.i.i.i.prol, %.lr.ph.i.i46.i.i.i.i.i.i.preheader
  %.sroa.012.0.i.i49.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i46.i.i.i.i.i.i.preheader ], [ %.sroa.012.0.i.i49.i.i.i.i.i.i.prol, %.lr.ph.i.i46.i.i.i.i.i.i.prol ]
  %.sroa.012.015.i.i47.i.i.i.i.i.i.unr = phi ptr [ %i.ad, %.lr.ph.i.i46.i.i.i.i.i.i.preheader ], [ %.sroa.012.0.i.i49.i.i.i.i.i.i.prol, %.lr.ph.i.i46.i.i.i.i.i.i.prol ]
  %.sroa.011.014.i.i48.i.i.i.i.i.i.unr = phi i64 [ %i.af, %.lr.ph.i.i46.i.i.i.i.i.i.preheader ], [ %i.ax, %.lr.ph.i.i46.i.i.i.i.i.i.prol ]
  %i.ay = icmp ult i64 %i.af, 8
  br i1 %i.ay, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h25a44e4ae2def7c2E.exit.i21.i.i.i.i.i.i", label %.lr.ph.i.i46.i.i.i.i.i.i

.lr.ph.i.i46.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i46.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i46.i.i.i.i.i.i
  %.sroa.012.015.i.i47.i.i.i.i.i.i = phi ptr [ %.sroa.012.0.i.i49.i.i.i.i.i.i.7, %.lr.ph.i.i46.i.i.i.i.i.i ], [ %.sroa.012.015.i.i47.i.i.i.i.i.i.unr, %.lr.ph.i.i46.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.011.014.i.i48.i.i.i.i.i.i = phi i64 [ %i.bh, %.lr.ph.i.i46.i.i.i.i.i.i ], [ %.sroa.011.014.i.i48.i.i.i.i.i.i.unr, %.lr.ph.i.i46.i.i.i.i.i.i.prol.loopexit ]
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i47.i.i.i.i.i.i, i64 544
  %.sroa.012.0.i.i49.i.i.i.i.i.i = load ptr, ptr %i.az, align 8, !noalias !18982, !nonnull !57, !noundef !57
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i49.i.i.i.i.i.i, i64 544
  %.sroa.012.0.i.i49.i.i.i.i.i.i.1 = load ptr, ptr %i.ba, align 8, !noalias !18982, !nonnull !57, !noundef !57
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i49.i.i.i.i.i.i.1, i64 544
  %.sroa.012.0.i.i49.i.i.i.i.i.i.2 = load ptr, ptr %i.bb, align 8, !noalias !18982, !nonnull !57, !noundef !57
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i49.i.i.i.i.i.i.2, i64 544
  %.sroa.012.0.i.i49.i.i.i.i.i.i.3 = load ptr, ptr %i.bc, align 8, !noalias !18982, !nonnull !57, !noundef !57
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i49.i.i.i.i.i.i.3, i64 544
  %.sroa.012.0.i.i49.i.i.i.i.i.i.4 = load ptr, ptr %i.bd, align 8, !noalias !18982, !nonnull !57, !noundef !57
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i49.i.i.i.i.i.i.4, i64 544
  %.sroa.012.0.i.i49.i.i.i.i.i.i.5 = load ptr, ptr %i.be, align 8, !noalias !18982, !nonnull !57, !noundef !57
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i49.i.i.i.i.i.i.5, i64 544
  %.sroa.012.0.i.i49.i.i.i.i.i.i.6 = load ptr, ptr %i.bf, align 8, !noalias !18982, !nonnull !57, !noundef !57
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i49.i.i.i.i.i.i.6, i64 544
  %i.bh = add i64 %.sroa.011.014.i.i48.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.012.0.i.i49.i.i.i.i.i.i.7 = load ptr, ptr %i.bg, align 8, !noalias !18982, !nonnull !57, !noundef !57 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h25a44e4ae2def7c2E.exit.i21.i.i.i.i.i.i", label %.lr.ph.i.i46.i.i.i.i.i.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h25a44e4ae2def7c2E.exit.i21.i.i.i.i.i.i": ; preds = %.lr.ph.i.i46.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i46.i.i.i.i.i.i, %bb.k
  %.sroa.012.0.lcssa.i.i51.i.i.i.i.i.i = phi ptr [ %i.ad, %bb.k ], [ %.sroa.012.0.i.i49.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i46.i.i.i.i.i.i.prol.loopexit ], [ %.sroa.012.0.i.i49.i.i.i.i.i.i.7, %.lr.ph.i.i46.i.i.i.i.i.i ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i51.i.i.i.i.i.i, i64 538
  %i.bk = load i16, ptr %i.bj, align 2, !noalias !18983, !noundef !57
  %.not.i.i.i.i.i.i = icmp eq i16 %i.bk, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i27.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i

.lr.ph.i.i.i.i27.i.i.i.i.i.i:                     ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h25a44e4ae2def7c2E.exit.i21.i.i.i.i.i.i", %bb.l
  %.sroa.0.038.i.i.i.i28.i.i.i.i.i.i = phi ptr [ %i.bl, %bb.l ], [ %.sroa.012.0.lcssa.i.i51.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h25a44e4ae2def7c2E.exit.i21.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i29.i.i.i.i.i.i = phi i64 [ %i.bm, %bb.l ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h25a44e4ae2def7c2E.exit.i21.i.i.i.i.i.i" ] ; 2 uses
  %i.bl = load ptr, ptr %.sroa.0.038.i.i.i.i28.i.i.i.i.i.i, align 8, !noalias !18984, !noundef !57 ; 8 uses
end_hunk_1
begin_hunk_2_@_ZN10serde_core3ser12SerializeMap15serialize_entry17h909ddecc7f31286bE:bb.a
  br i1 %i.eq, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_seq17h851e8b72db62ff8aE.exit.thread.sink.split.i.i.i.i.i.i", label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17h05a5c1f90d671da0E.exit.i.i", !prof !60

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_seq17h851e8b72db62ff8aE.exit.thread.sink.split.i.i.i.i.i.i": ; preds = %.loopexit.i.i.i.i.i.i, %bb.j
  %.sink.i.i.i.i.i.i = phi i64 [ %i.ap, %bb.j ], [ %i.eo, %.loopexit.i.i.i.i.i.i ]
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6, i64 noundef %.sink.i.i.i.i.i.i, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !19411
  %.pre.i.i.i.i.i.i.i15.i.i.i.i.i.i = load i64, ptr %i.ag, align 8, !noalias !19411
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17h05a5c1f90d671da0E.exit.i.i"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17h05a5c1f90d671da0E.exit.i.i": ; preds = %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_seq17h851e8b72db62ff8aE.exit.thread.sink.split.i.i.i.i.i.i", %.loopexit.i.i.i.i.i.i, %bb.j
  %.sink53.i.i.i.i.i.i = phi i64 [ %i.eo, %.loopexit.i.i.i.i.i.i ], [ %i.ap, %bb.j ], [ %.pre.i.i.i.i.i.i.i15.i.i.i.i.i.i, %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_seq17h851e8b72db62ff8aE.exit.thread.sink.split.i.i.i.i.i.i" ] ; 3 uses
  %i.er = icmp sgt i64 %.sink53.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.er)
  %i.es = load ptr, ptr %i.am, align 8, !noalias !19411, !nonnull !57, !noundef !57
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %.sink53.i.i.i.i.i.i
  store i8 93, ptr %i.et, align 1, !noalias !19411
  %storemerge.i.i.i.i.i.i = add nuw i64 %.sink53.i.i.i.i.i.i, 1
  store i64 %storemerge.i.i.i.i.i.i, ptr %i.ag, align 8, !noalias !19411
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h3f32a7e9dc081200E.exit"

bb.ad:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i6) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19415)
  %i.eu = getelementptr inbounds nuw i8, ptr %.val9.i6, i64 16 ; 3 uses
  %i.ev = load i64, ptr %i.eu, align 8, !alias.scope !19416, !noalias !19417, !noundef !57 ; 3 uses
  %i.ew = load i64, ptr %.val9.i6, align 8, !range !56, !alias.scope !19416, !noalias !19417, !noundef !57
  %i.ex = sub i64 %i.ew, %i.ev
  %i.ey = icmp ult i64 %i.ex, 4
  br i1 %i.ey, label %bb.ae, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h252051f7955c6753E.exit.i.i", !prof !60

bb.ae:                                            ; preds = %bb.ad
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6, i64 noundef %i.ev, i64 noundef 4, i64 noundef 1, i64 noundef 1), !noalias !19417
  %.pre.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.eu, align 8, !alias.scope !19418, !noalias !19417
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h252051f7955c6753E.exit.i.i"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h252051f7955c6753E.exit.i.i": ; preds = %bb.ae, %bb.ad
  %i.ez = phi i64 [ %i.ev, %bb.ad ], [ %.pre.i.i.i.i.i.i.i.i.i.i, %bb.ae ] ; 3 uses
  %i.fa = icmp sgt i64 %i.ez, -1
  tail call void @llvm.assume(i1 %i.fa)
  %i.fb = getelementptr inbounds nuw i8, ptr %.val9.i6, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !alias.scope !19418, !noalias !19417, !nonnull !57, !noundef !57
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.ez
  store i32 1819047278, ptr %i.fd, align 1, !noalias !19419
  %i.fe = add nuw i64 %i.ez, 4
  store i64 %i.fe, ptr %i.eu, align 8, !alias.scope !19418, !noalias !19417
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h3f32a7e9dc081200E.exit"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h3f32a7e9dc081200E.exit": ; preds = %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17h05a5c1f90d671da0E.exit.i.i", %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h252051f7955c6753E.exit.i.i"
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h92535ac3d79c558bE(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef range(i64 6, 27) %2, i8 %.0.val) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19479)
  %i.a = load i8, ptr %0, align 8, !range !74, !alias.scope !19479, !noalias !19480, !noundef !57
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !60

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @252, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4932) #80, !noalias !19481
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !19479, !noalias !19480, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !range !65, !alias.scope !19479, !noalias !19480, !noundef !57
  %i.g = icmp eq i8 %i.f, 1
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !19481 ; 6 uses
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19482)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19484)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19485)
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !19486, !noalias !19487, !noundef !57 ; 3 uses
  %i.j = load i64, ptr %.val.i, align 8, !range !56, !alias.scope !19486, !noalias !19487, !noundef !57
  %i.k = icmp eq i64 %i.j, %i.i
  br i1 %i.k, label %bb.e, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i", !prof !60

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, i64 noundef %i.i, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !19487
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !19488, !noalias !19487
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i": ; preds = %bb.e, %bb.d
  %i.l = phi i64 [ %i.i, %bb.d ], [ %.pre.i.i.i.i.i.i.i, %bb.e ] ; 3 uses
  %i.m = icmp sgt i64 %i.l, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !19488, !noalias !19487, !nonnull !57, !noundef !57
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l
  store i8 44, ptr %i.p, align 1, !noalias !19489
  %i.q = add nuw i64 %i.l, 1
  store i64 %i.q, ptr %i.h, align 8, !alias.scope !19488, !noalias !19487
  %.val9.pre.i = load ptr, ptr %i.d, align 8, !noalias !19481
  br label %bb.f

bb.f:                                             ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i", %bb.c
  %.val9.i = phi ptr [ %.val.i, %bb.c ], [ %.val9.pre.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i" ]
  store i8 2, ptr %i.e, align 1, !alias.scope !19479, !noalias !19480
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val9.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef range(i64 2, 29) %2)
  %.val.i6 = load ptr, ptr %i.d, align 8, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19490)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19491)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19492)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19493)
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i6, i64 16 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !19494, !noalias !19495, !noundef !57 ; 3 uses
  %i.t = load i64, ptr %.val.i6, align 8, !range !56, !alias.scope !19494, !noalias !19495, !noundef !57
  %i.u = icmp eq i64 %i.t, %i.s
  br i1 %i.u, label %bb.g, label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i, !prof !60

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i6, i64 noundef %i.s, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !19495
  %.pre.i.i.i.i.i.i.i7 = load i64, ptr %i.r, align 8, !alias.scope !19496, !noalias !19495
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i

_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i: ; preds = %bb.g, %bb.f
  %i.v = phi i64 [ %i.s, %bb.f ], [ %.pre.i.i.i.i.i.i.i7, %bb.g ] ; 3 uses
  %i.w = icmp sgt i64 %i.v, -1
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i6, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !19496, !noalias !19495, !nonnull !57, !noundef !57
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v
  store i8 58, ptr %i.z, align 1, !noalias !19496
  %i.aa = add nuw i64 %i.v, 1
  store i64 %i.aa, ptr %i.r, align 8, !alias.scope !19496, !noalias !19495
  %.val10.i = load ptr, ptr %i.d, align 8, !nonnull !57, !noundef !57 ; 7 uses
  %i.ab = trunc nuw i8 %.0.val to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16 ; 5 uses
  br i1 %i.ab, label %.split.i.i.i.i, label %.split2.i.i.i.i

.split2.i.i.i.i:                                  ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19500)
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !19501, !noalias !19502, !noundef !57 ; 3 uses
  %i.ae = load i64, ptr %.val10.i, align 8, !range !56, !alias.scope !19501, !noalias !19502, !noundef !57
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = icmp ult i64 %i.af, 5
  br i1 %i.ag, label %bb.h, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i", !prof !60

bb.h:                                             ; preds = %.split2.i.i.i.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val10.i, i64 noundef %i.ad, i64 noundef 5, i64 noundef 1, i64 noundef 1), !noalias !19502
  %.pre.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ac, align 8, !alias.scope !19503, !noalias !19502
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i": ; preds = %bb.h, %.split2.i.i.i.i
  %i.ah = phi i64 [ %i.ad, %.split2.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i, %bb.h ] ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, -1
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !19503, !noalias !19502, !nonnull !57, !noundef !57
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ah
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.al, ptr noundef nonnull readonly align 1 dereferenceable(5) @316, i64 5, i1 false), !noalias !19503
  %i.am = add nuw i64 %i.ah, 5
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17hb989c3e619dd4d28E.exit"

.split.i.i.i.i:                                   ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19504)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19505)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19506)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19507)
  %i.an = load i64, ptr %i.ac, align 8, !alias.scope !19508, !noalias !19509, !noundef !57 ; 3 uses
  %i.ao = load i64, ptr %.val10.i, align 8, !range !56, !alias.scope !19508, !noalias !19509, !noundef !57
  %i.ap = sub i64 %i.ao, %i.an
  %i.aq = icmp ult i64 %i.ap, 4
  br i1 %i.aq, label %bb.i, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit5.i.i.i.i", !prof !60

bb.i:                                             ; preds = %.split.i.i.i.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val10.i, i64 noundef %i.an, i64 noundef 4, i64 noundef 1, i64 noundef 1), !noalias !19509
  %.pre.i.i.i.i.i4.i.i.i.i = load i64, ptr %i.ac, align 8, !alias.scope !19510, !noalias !19509
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit5.i.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit5.i.i.i.i": ; preds = %bb.i, %.split.i.i.i.i
  %i.ar = phi i64 [ %i.an, %.split.i.i.i.i ], [ %.pre.i.i.i.i.i4.i.i.i.i, %bb.i ] ; 3 uses
  %i.as = icmp sgt i64 %i.ar, -1
  tail call void @llvm.assume(i1 %i.as)
  %i.at = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !19510, !noalias !19509, !nonnull !57, !noundef !57
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ar
  store i32 1702195828, ptr %i.av, align 1, !noalias !19510
  %i.aw = add nuw i64 %i.ar, 4
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17hb989c3e619dd4d28E.exit"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17hb989c3e619dd4d28E.exit": ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i", %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit5.i.i.i.i"
  %.sink.i.i.i.i = phi i64 [ %i.aw, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit5.i.i.i.i" ], [ %i.am, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i" ]
  store i64 %.sink.i.i.i.i, ptr %i.ac, align 8, !noalias !57
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noalias noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h94eeba50d8764d6dE(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef range(i64 9, 20) %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19560)
  %i.a = load i8, ptr %0, align 8, !range !74, !alias.scope !19560, !noalias !19561, !noundef !57
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !60

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @252, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4932) #80, !noalias !19562
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !19560, !noalias !19561, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !range !65, !alias.scope !19560, !noalias !19561, !noundef !57
  %i.g = icmp eq i8 %i.f, 1
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !19562 ; 6 uses
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19563)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19565)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19566)
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !19567, !noalias !19568, !noundef !57 ; 3 uses
  %i.j = load i64, ptr %.val.i, align 8, !range !56, !alias.scope !19567, !noalias !19568, !noundef !57
  %i.k = icmp eq i64 %i.j, %i.i
  br i1 %i.k, label %bb.e, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i", !prof !60

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, i64 noundef %i.i, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !19568
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !19569, !noalias !19568
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i": ; preds = %bb.e, %bb.d
  %i.l = phi i64 [ %i.i, %bb.d ], [ %.pre.i.i.i.i.i.i.i, %bb.e ] ; 3 uses
  %i.m = icmp sgt i64 %i.l, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !19569, !noalias !19568, !nonnull !57, !noundef !57
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l
  store i8 44, ptr %i.p, align 1, !noalias !19570
  %i.q = add nuw i64 %i.l, 1
  store i64 %i.q, ptr %i.h, align 8, !alias.scope !19569, !noalias !19568
  %.val9.pre.i = load ptr, ptr %i.d, align 8, !noalias !19562
  br label %bb.f

bb.f:                                             ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i", %bb.c
  %.val9.i = phi ptr [ %.val.i, %bb.c ], [ %.val9.pre.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i" ]
  store i8 2, ptr %i.e, align 1, !alias.scope !19560, !noalias !19561
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val9.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef range(i64 2, 29) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19571)
  %.val.i5 = load ptr, ptr %i.d, align 8, !noalias !19571, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19573)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19575)
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i5, i64 16 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !19576, !noalias !19577, !noundef !57 ; 3 uses
  %i.t = load i64, ptr %.val.i5, align 8, !range !56, !alias.scope !19576, !noalias !19577, !noundef !57
  %i.u = icmp eq i64 %i.t, %i.s
  br i1 %i.u, label %bb.g, label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i, !prof !60

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i5, i64 noundef %i.s, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !19577
  %.pre.i.i.i.i.i.i.i7 = load i64, ptr %i.r, align 8, !alias.scope !19578, !noalias !19577
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i

_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i: ; preds = %bb.g, %bb.f
  %i.v = phi i64 [ %i.s, %bb.f ], [ %.pre.i.i.i.i.i.i.i7, %bb.g ] ; 3 uses
  %i.w = icmp sgt i64 %i.v, -1
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i5, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !19578, !noalias !19577, !nonnull !57, !noundef !57
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v
  store i8 58, ptr %i.z, align 1, !noalias !19579
  %i.aa = add nuw i64 %i.v, 1
  store i64 %i.aa, ptr %i.r, align 8, !alias.scope !19578, !noalias !19577
  %.val9.i6 = load ptr, ptr %i.d, align 8, !noalias !19571 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19580)
  %i.ab = load i64, ptr %3, align 8, !range !72, !alias.scope !19581, !noundef !57
  %.not.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i, label %"_ZN88_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17he318bce61d4ae14eE.exit.i", label %bb.h

bb.h:                                             ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i6) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19582)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19583)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19584)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19585)
  %i.ac = getelementptr inbounds nuw i8, ptr %.val9.i6, i64 16 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !19586, !noalias !19587, !noundef !57 ; 3 uses
  %i.ae = load i64, ptr %.val9.i6, align 8, !range !56, !alias.scope !19586, !noalias !19587, !noundef !57
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = icmp ult i64 %i.af, 4
  br i1 %i.ag, label %bb.i, label %"_ZN88_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17he318bce61d4ae14eE.exit.thread.i", !prof !60

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6, i64 noundef %i.ad, i64 noundef 4, i64 noundef 1, i64 noundef 1), !noalias !19587
  %.pre.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ac, align 8, !alias.scope !19588, !noalias !19587
  br label %"_ZN88_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17he318bce61d4ae14eE.exit.thread.i"

"_ZN88_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17he318bce61d4ae14eE.exit.thread.i": ; preds = %bb.i, %bb.h
  %i.ah = phi i64 [ %i.ad, %bb.h ], [ %.pre.i.i.i.i.i.i.i.i.i.i, %bb.i ] ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, -1
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %.val9.i6, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !19588, !noalias !19587, !nonnull !57, !noundef !57
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ah
  store i32 1819047278, ptr %i.al, align 1, !noalias !19589
  %i.am = add nuw i64 %i.ah, 4
  store i64 %i.am, ptr %i.ac, align 8, !alias.scope !19588, !noalias !19587
  br label %bb.j

"_ZN88_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17he318bce61d4ae14eE.exit.i": ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i6) ]
  %i.ao = tail call fastcc noalias noundef align 8 ptr @"_ZN10serde_core3ser5impls106_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$alloc..collections..btree..set..BTreeSet$LT$T$GT$$GT$9serialize17h28827bdaf121734eE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.an, ptr nonnull %.val9.i6) ; 2 uses
  %.not.i = icmp eq ptr %i.ao, null
  br i1 %.not.i, label %bb.j, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h06f47eee5db95382E.exit"

bb.j:                                             ; preds = %"_ZN88_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17he318bce61d4ae14eE.exit.i", %"_ZN88_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17he318bce61d4ae14eE.exit.thread.i"
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h06f47eee5db95382E.exit"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h06f47eee5db95382E.exit": ; preds = %"_ZN88_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17he318bce61d4ae14eE.exit.i", %bb.j
  %.sroa.0.1.i = phi ptr [ null, %bb.j ], [ %i.ao, %"_ZN88_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17he318bce61d4ae14eE.exit.i" ]
  ret ptr %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h9ea6ec64b5f2ba46E(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef range(i64 12, 29) %2, i64 %.0.val, i64 %.8.val) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19649)
  %i.b = load i8, ptr %0, align 8, !range !74, !alias.scope !19649, !noalias !19650, !noundef !57
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !60

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @252, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4932) #80, !noalias !19651
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !19649, !noalias !19650, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !range !65, !alias.scope !19649, !noalias !19650, !noundef !57
  %i.h = icmp eq i8 %i.g, 1
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !19651 ; 6 uses
  br i1 %i.h, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19652)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19653)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19654)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19655)
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !19656, !noalias !19657, !noundef !57 ; 3 uses
  %i.k = load i64, ptr %.val.i, align 8, !range !56, !alias.scope !19656, !noalias !19657, !noundef !57
  %i.l = icmp eq i64 %i.k, %i.j
  br i1 %i.l, label %bb.e, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i", !prof !60

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, i64 noundef %i.j, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !19657
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !19658, !noalias !19657
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i": ; preds = %bb.e, %bb.d
  %i.m = phi i64 [ %i.j, %bb.d ], [ %.pre.i.i.i.i.i.i.i, %bb.e ] ; 3 uses
  %i.n = icmp sgt i64 %i.m, -1
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !19658, !noalias !19657, !nonnull !57, !noundef !57
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m
  store i8 44, ptr %i.q, align 1, !noalias !19659
  %i.r = add nuw i64 %i.m, 1
  store i64 %i.r, ptr %i.i, align 8, !alias.scope !19658, !noalias !19657
  %.val9.pre.i = load ptr, ptr %i.e, align 8, !noalias !19651
  br label %bb.f

bb.f:                                             ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i", %bb.c
  %.val9.i = phi ptr [ %.val.i, %bb.c ], [ %.val9.pre.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i" ]
  store i8 2, ptr %i.f, align 1, !alias.scope !19649, !noalias !19650
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val9.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef range(i64 2, 29) %2)
  %.val.i7 = load ptr, ptr %i.e, align 8, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19661)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19662)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19663)
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i7, i64 16 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !19664, !noalias !19665, !noundef !57 ; 3 uses
  %i.u = load i64, ptr %.val.i7, align 8, !range !56, !alias.scope !19664, !noalias !19665, !noundef !57
  %i.v = icmp eq i64 %i.u, %i.t
  br i1 %i.v, label %bb.g, label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i, !prof !60

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i7, i64 noundef %i.t, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !19665
end_hunk_2
begin_hunk_3_@_ZN10serde_core3ser12SerializeMap15serialize_entry17ha67bb40ff7931dc3E:bb.a
  br i1 %i.bp, label %bb.q, label %_ZN10serde_json3ser9Formatter17begin_array_value17he9a3bb811dad8781E.exit.i.i.i.i.i.i.i.i.i.i.i, !prof !60

bb.q:                                             ; preds = %.lr.ph.split.peel.next.i.i.i.i.i.i.i.i
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6, i64 noundef %i.bn, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !20014
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.al, align 8, !alias.scope !20015, !noalias !20014
  br label %_ZN10serde_json3ser9Formatter17begin_array_value17he9a3bb811dad8781E.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter17begin_array_value17he9a3bb811dad8781E.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.q, %.lr.ph.split.peel.next.i.i.i.i.i.i.i.i
  %i.bq = phi i64 [ %i.bn, %.lr.ph.split.peel.next.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.q ] ; 3 uses
  %i.br = icmp sgt i64 %i.bq, -1
  call void @llvm.assume(i1 %i.br)
  %i.bs = load ptr, ptr %i.ar, align 8, !alias.scope !20015, !noalias !20014, !nonnull !57, !noundef !57
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bq
  store i8 44, ptr %i.bt, align 1, !noalias !20016
  %i.bu = add nuw i64 %i.bq, 1
  store i64 %i.bu, ptr %i.al, align 8, !alias.scope !20015, !noalias !20014
  call void @llvm.experimental.noalias.scope.decl(metadata !20017)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !20018
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !20018
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20018
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20018
  %i.bv = load i64, ptr %i.bl, align 8, !range !132, !alias.scope !20019, !noalias !20020, !noundef !57 ; 2 uses
  %switch.i.i.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i64 %i.bv, 8
  br i1 %switch.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.r, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %_ZN10serde_json3ser9Formatter17begin_array_value17he9a3bb811dad8781E.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ba, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4760), !noalias !20021
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false), !noalias !20018
  br label %bb.r

bb.r:                                             ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter17begin_array_value17he9a3bb811dad8781E.exit.i.i.i.i.i.i.i.i.i.i.i
  store i64 %i.bv, ptr %i.c, align 8, !noalias !20018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20018
  store ptr %i.c, ptr %i.d, align 8, !noalias !20018
  store ptr @"_ZN66_$LT$milli..criterion..Criterion$u20$as$u20$core..fmt..Display$GT$3fmt17h9e32f299f4b2ac6dE", ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !20018
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20022
  store ptr @649, ptr %i.a, align 8, !noalias !20023
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !20023
  store ptr %i.d, ptr %.sroa.52.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !20023
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !20023
  store ptr null, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !20023
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.t unwind label %.loopexit.i.i.i.i.i.i.i.i, !noalias !20021

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %bb.r
  %lpad.loopexit.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp.i.i.i.i.i.i.i.i:               ; preds = %bb.l
  %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i
  %lpad.phi.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i ]
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$milli..criterion..Criterion$GT$17h28e539ce97d9fa2dE"(ptr noalias noundef align 8 dereferenceable(32) %i.c) #81, !noalias !20021
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20022
  call void @llvm.experimental.noalias.scope.decl(metadata !20024)
  %i.bx = load i64, ptr %i.c, align 8, !range !132, !alias.scope !20024, !noalias !20018, !noundef !57
  switch i64 %i.bx, label %bb.u [
    i64 0, label %"_ZN4core3ptr48drop_in_place$LT$milli..criterion..Criterion$GT$17h28e539ce97d9fa2dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
    i64 1, label %"_ZN4core3ptr48drop_in_place$LT$milli..criterion..Criterion$GT$17h28e539ce97d9fa2dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
    i64 2, label %"_ZN4core3ptr48drop_in_place$LT$milli..criterion..Criterion$GT$17h28e539ce97d9fa2dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
    i64 3, label %"_ZN4core3ptr48drop_in_place$LT$milli..criterion..Criterion$GT$17h28e539ce97d9fa2dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
    i64 4, label %"_ZN4core3ptr48drop_in_place$LT$milli..criterion..Criterion$GT$17h28e539ce97d9fa2dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
    i64 5, label %"_ZN4core3ptr48drop_in_place$LT$milli..criterion..Criterion$GT$17h28e539ce97d9fa2dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
    i64 6, label %"_ZN4core3ptr48drop_in_place$LT$milli..criterion..Criterion$GT$17h28e539ce97d9fa2dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
    i64 7, label %"_ZN4core3ptr48drop_in_place$LT$milli..criterion..Criterion$GT$17h28e539ce97d9fa2dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
    i64 8, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bb, align 8, !range !56, !alias.scope !20025, !noalias !20018, !noundef !57 ; 2 uses
  %i.by = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.by, label %"_ZN4core3ptr48drop_in_place$LT$milli..criterion..Criterion$GT$17h28e539ce97d9fa2dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.v, %bb.u
  %.val.i.i1.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.val.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.v ], [ %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.u ]
  %.val1.i.i2.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !20024, !noalias !20018, !nonnull !57, !noundef !57
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i2.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i1.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !20026
  br label %"_ZN4core3ptr48drop_in_place$LT$milli..criterion..Criterion$GT$17h28e539ce97d9fa2dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.v:                                             ; preds = %bb.t
  %.val.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bb, align 8, !range !56, !alias.scope !20027, !noalias !20018, !noundef !57 ; 2 uses
  %i.bz = icmp eq i64 %.val.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bz, label %"_ZN4core3ptr48drop_in_place$LT$milli..criterion..Criterion$GT$17h28e539ce97d9fa2dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr48drop_in_place$LT$milli..criterion..Criterion$GT$17h28e539ce97d9fa2dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.v, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.u, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20018
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !noalias !20018 ; 3 uses
  %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !20018, !nonnull !57, !noundef !57 ; 3 uses
  %.sroa.8.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !20018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20018
  invoke fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val9.i6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.8.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17h32f5ffed740deed8E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" unwind label %.loopexit14.i.i.i.i.i.i.i.i

.loopexit14.i.i.i.i.i.i.i.i:                      ; preds = %"_ZN4core3ptr48drop_in_place$LT$milli..criterion..Criterion$GT$17h28e539ce97d9fa2dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %lpad.loopexit16.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.loopexit.split-lp15.i.i.i.i.i.i.i.i:             ; preds = %"_ZN4core3ptr48drop_in_place$LT$milli..criterion..Criterion$GT$17h28e539ce97d9fa2dE.exit.i.i.i.i.i.peel.i.i.i.i.i.i.i.i"
  %lpad.loopexit.split-lp17.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %.loopexit.split-lp15.i.i.i.i.i.i.i.i, %.loopexit14.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i.i.i.i.i.lcssa.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit14.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i.peel.i.i.i.i.i.i.i.i, %.loopexit.split-lp15.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.5.0.copyload.i.i.i.i.i.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit14.i.i.i.i.i.i.i.i ], [ %.sroa.5.0.copyload.i.i.i.i.i.peel.i.i.i.i.i.i.i.i, %.loopexit.split-lp15.i.i.i.i.i.i.i.i ]
  %lpad.phi18.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit16.i.i.i.i.i.i.i.i, %.loopexit14.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp17.i.i.i.i.i.i.i.i, %.loopexit.split-lp15.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ca = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.lcssa.i.i.i.i.i.i.i.i, 0
  br i1 %i.ca, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i.i.lcssa.i.i.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i.i.i.lcssa.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !20028
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17h32f5ffed740deed8E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr48drop_in_place$LT$milli..criterion..Criterion$GT$17h28e539ce97d9fa2dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.cb = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cb, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hda135223333ed5a9E.exit.i.i.i.i.i.i.i.i", label %bb.y

bb.y:                                             ; preds = %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17h32f5ffed740deed8E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !20029
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hda135223333ed5a9E.exit.i.i.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.x, %bb.w, %bb.s
  %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i.i.i.i.i.i, %bb.s ], [ %lpad.phi18.i.i.i.i.i.i.i.i, %bb.w ], [ %lpad.phi18.i.i.i.i.i.i.i.i, %bb.x ]
  resume { ptr, i32 } %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hda135223333ed5a9E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.y, %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17h32f5ffed740deed8E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.cc = icmp eq ptr %i.bm, %i.ak
  br i1 %i.cc, label %.loopexit.i.i.i.i.i.i, label %.lr.ph.split.peel.next.i.i.i.i.i.i.i.i, !llvm.loop !19929

.loopexit.i.i.i.i.i.i:                            ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hda135223333ed5a9E.exit.i.i.i.i.i.i.i.i", %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hda135223333ed5a9E.exit.peel.i.i.i.i.i.i.i.i"
  %i.cd = load i64, ptr %i.al, align 8, !alias.scope !20030, !noalias !20031, !noundef !57 ; 3 uses
  %i.ce = load i64, ptr %.val9.i6, align 8, !range !56, !alias.scope !20030, !noalias !20031, !noundef !57
  %i.cf = icmp eq i64 %i.ce, %i.cd
  br i1 %i.cf, label %bb.z, label %_ZN10serde_json3ser9Formatter9end_array17hf1b0b89c114d8d5aE.exit.i14.i.i.i.i.i.i, !prof !60

bb.z:                                             ; preds = %.loopexit.i.i.i.i.i.i
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6, i64 noundef %i.cd, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !20031
  %.pre.i.i.i.i.i.i.i15.i.i.i.i.i.i = load i64, ptr %i.al, align 8, !alias.scope !20032, !noalias !20031
  br label %_ZN10serde_json3ser9Formatter9end_array17hf1b0b89c114d8d5aE.exit.i14.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter9end_array17hf1b0b89c114d8d5aE.exit.i14.i.i.i.i.i.i: ; preds = %bb.z, %.loopexit.i.i.i.i.i.i
  %i.cg = phi i64 [ %i.cd, %.loopexit.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i15.i.i.i.i.i.i, %bb.z ] ; 2 uses
  %i.ch = icmp sgt i64 %i.cg, -1
  call void @llvm.assume(i1 %i.ch)
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17hf82f55779137cfefE.exit.i.i"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17hf82f55779137cfefE.exit.i.i": ; preds = %_ZN10serde_json3ser9Formatter9end_array17hf1b0b89c114d8d5aE.exit.i14.i.i.i.i.i.i, %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_seq17h851e8b72db62ff8aE.exit.thread.i.i.i.i.i.i"
  %.sink61.i.i.i.i.i.i = phi i64 [ %i.cg, %_ZN10serde_json3ser9Formatter9end_array17hf1b0b89c114d8d5aE.exit.i14.i.i.i.i.i.i ], [ %i.ay, %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_seq17h851e8b72db62ff8aE.exit.thread.i.i.i.i.i.i" ] ; 2 uses
  %i.ci = load ptr, ptr %i.ar, align 8, !noalias !20033, !nonnull !57, !noundef !57
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.sink61.i.i.i.i.i.i
  store i8 93, ptr %i.cj, align 1, !noalias !20033
  %storemerge.i.i.i.i.i.i = add nuw i64 %.sink61.i.i.i.i.i.i, 1
  store i64 %storemerge.i.i.i.i.i.i, ptr %i.al, align 8, !noalias !20033
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h370291d90b157b85E.exit"

bb.aa:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i6) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20035)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20036)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20037)
  %i.ck = getelementptr inbounds nuw i8, ptr %.val9.i6, i64 16 ; 3 uses
  %i.cl = load i64, ptr %i.ck, align 8, !alias.scope !20038, !noalias !20039, !noundef !57 ; 3 uses
  %i.cm = load i64, ptr %.val9.i6, align 8, !range !56, !alias.scope !20038, !noalias !20039, !noundef !57
  %i.cn = sub i64 %i.cm, %i.cl
  %i.co = icmp ult i64 %i.cn, 4
  br i1 %i.co, label %bb.ab, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h252051f7955c6753E.exit.i.i", !prof !60

bb.ab:                                            ; preds = %bb.aa
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6, i64 noundef %i.cl, i64 noundef 4, i64 noundef 1, i64 noundef 1), !noalias !20039
  %.pre.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ck, align 8, !alias.scope !20040, !noalias !20039
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h252051f7955c6753E.exit.i.i"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h252051f7955c6753E.exit.i.i": ; preds = %bb.ab, %bb.aa
  %i.cp = phi i64 [ %i.cl, %bb.aa ], [ %.pre.i.i.i.i.i.i.i.i.i.i, %bb.ab ] ; 3 uses
  %i.cq = icmp sgt i64 %i.cp, -1
  tail call void @llvm.assume(i1 %i.cq)
  %i.cr = getelementptr inbounds nuw i8, ptr %.val9.i6, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !alias.scope !20040, !noalias !20039, !nonnull !57, !noundef !57
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cp
  store i32 1819047278, ptr %i.ct, align 1, !noalias !20041
  %i.cu = add nuw i64 %i.cp, 4
  store i64 %i.cu, ptr %i.ck, align 8, !alias.scope !20040, !noalias !20039
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h370291d90b157b85E.exit"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h370291d90b157b85E.exit": ; preds = %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17hf82f55779137cfefE.exit.i.i", %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h252051f7955c6753E.exit.i.i"
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noalias noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17habe4c3a5e0d95b05E(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef range(i64 6, 12) %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20092)
  %i.a = load i8, ptr %0, align 8, !range !74, !alias.scope !20092, !noalias !20093, !noundef !57
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !60

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @252, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4932) #80, !noalias !20094
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !20092, !noalias !20093, !nonnull !57, !align !61, !noundef !57 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !range !65, !alias.scope !20092, !noalias !20093, !noundef !57
  %i.g = icmp eq i8 %i.f, 1
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !20094 ; 6 uses
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20095)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20096)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20097)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20098)
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !20099, !noalias !20100, !noundef !57 ; 3 uses
  %i.j = load i64, ptr %.val.i, align 8, !range !56, !alias.scope !20099, !noalias !20100, !noundef !57
  %i.k = icmp eq i64 %i.j, %i.i
  br i1 %i.k, label %bb.e, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i", !prof !60

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, i64 noundef %i.i, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !20100
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !20101, !noalias !20100
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i": ; preds = %bb.e, %bb.d
  %i.l = phi i64 [ %i.i, %bb.d ], [ %.pre.i.i.i.i.i.i.i, %bb.e ] ; 3 uses
  %i.m = icmp sgt i64 %i.l, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !20101, !noalias !20100, !nonnull !57, !noundef !57
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l
  store i8 44, ptr %i.p, align 1, !noalias !20102
  %i.q = add nuw i64 %i.l, 1
  store i64 %i.q, ptr %i.h, align 8, !alias.scope !20101, !noalias !20100
  %.val9.pre.i = load ptr, ptr %i.d, align 8, !noalias !20094
  br label %bb.f

bb.f:                                             ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i", %bb.c
  %.val9.i = phi ptr [ %.val.i, %bb.c ], [ %.val9.pre.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i" ]
  store i8 2, ptr %i.e, align 1, !alias.scope !20092, !noalias !20093
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val9.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef range(i64 2, 29) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20103)
  %.val.i5 = load ptr, ptr %i.d, align 8, !noalias !20103, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20107)
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i5, i64 16 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !20108, !noalias !20109, !noundef !57 ; 3 uses
  %i.t = load i64, ptr %.val.i5, align 8, !range !56, !alias.scope !20108, !noalias !20109, !noundef !57
  %i.u = icmp eq i64 %i.t, %i.s
  br i1 %i.u, label %bb.g, label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i, !prof !60

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i5, i64 noundef %i.s, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !20109
  %.pre.i.i.i.i.i.i.i6 = load i64, ptr %i.r, align 8, !alias.scope !20110, !noalias !20109
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i

_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i: ; preds = %bb.g, %bb.f
  %i.v = phi i64 [ %i.s, %bb.f ], [ %.pre.i.i.i.i.i.i.i6, %bb.g ] ; 3 uses
  %i.w = icmp sgt i64 %i.v, -1
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i5, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !20110, !noalias !20109, !nonnull !57, !noundef !57
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v
  store i8 58, ptr %i.z, align 1, !noalias !20111
  %i.aa = add nuw i64 %i.v, 1
  store i64 %i.aa, ptr %i.r, align 8, !alias.scope !20110, !noalias !20109
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20113)
  %i.ab = load i64, ptr %3, align 8, !range !91, !alias.scope !20114, !noalias !20113, !noundef !57
  %.not.i.i = icmp eq i64 %i.ab, -9223372036854775803
  br i1 %.not.i.i, label %bb.h, label %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17hf1a2e1129bf93200E.exit.i"

bb.h:                                             ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i
  %.val.i.i = load ptr, ptr %i.d, align 8, !alias.scope !20113, !noalias !20114, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20118)
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !20119, !noalias !20120, !noundef !57 ; 3 uses
  %i.ae = load i64, ptr %.val.i.i, align 8, !range !56, !alias.scope !20119, !noalias !20120, !noundef !57
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = icmp ult i64 %i.af, 4
  br i1 %i.ag, label %bb.i, label %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17hf1a2e1129bf93200E.exit.thread.i", !prof !60

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, i64 noundef %i.ad, i64 noundef 4, i64 noundef 1, i64 noundef 1), !noalias !20120
  %.pre.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ac, align 8, !alias.scope !20121, !noalias !20120
  br label %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17hf1a2e1129bf93200E.exit.thread.i"

"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17hf1a2e1129bf93200E.exit.thread.i": ; preds = %bb.i, %bb.h
  %i.ah = phi i64 [ %i.ad, %bb.h ], [ %.pre.i.i.i.i.i.i.i.i.i.i, %bb.i ] ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, -1
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !20121, !noalias !20120, !nonnull !57, !noundef !57
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ah
  store i32 1819047278, ptr %i.al, align 1, !noalias !20122
  %i.am = add nuw i64 %i.ah, 4
  store i64 %i.am, ptr %i.ac, align 8, !alias.scope !20121, !noalias !20120
  br label %bb.j

"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17hf1a2e1129bf93200E.exit.i": ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i
  %i.an = tail call fastcc noalias noundef align 8 ptr @"_ZN10serde_json5value3ser81_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$serde_json..value..Value$GT$9serialize17h7f3ccc18e7f28084E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %3, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) ; 2 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %bb.j, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h12cdfc2634d375d6E.exit"

bb.j:                                             ; preds = %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17hf1a2e1129bf93200E.exit.i", %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17hf1a2e1129bf93200E.exit.thread.i"
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h12cdfc2634d375d6E.exit"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h12cdfc2634d375d6E.exit": ; preds = %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17hf1a2e1129bf93200E.exit.i", %bb.j
  %.sroa.0.1.i = phi ptr [ null, %bb.j ], [ %i.an, %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17hf1a2e1129bf93200E.exit.i" ]
  ret ptr %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17hb8fdabf0c68418baE(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef range(i64 10, 15) %2, i64 %.0.val, i64 %.8.val) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20184)
  %i.b = load i8, ptr %0, align 8, !range !74, !alias.scope !20184, !noalias !20185, !noundef !57
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !60

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @252, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4932) #80, !noalias !20186
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !20184, !noalias !20185, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !range !65, !alias.scope !20184, !noalias !20185, !noundef !57
  %i.h = icmp eq i8 %i.g, 1
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !20186 ; 6 uses
  br i1 %i.h, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20190)
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !20191, !noalias !20192, !noundef !57 ; 3 uses
  %i.k = load i64, ptr %.val.i, align 8, !range !56, !alias.scope !20191, !noalias !20192, !noundef !57
  %i.l = icmp eq i64 %i.k, %i.j
  br i1 %i.l, label %bb.e, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i", !prof !60

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, i64 noundef %i.j, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !20192
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !20193, !noalias !20192
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i": ; preds = %bb.e, %bb.d
  %i.m = phi i64 [ %i.j, %bb.d ], [ %.pre.i.i.i.i.i.i.i, %bb.e ] ; 3 uses
  %i.n = icmp sgt i64 %i.m, -1
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !20193, !noalias !20192, !nonnull !57, !noundef !57
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m
  store i8 44, ptr %i.q, align 1, !noalias !20194
  %i.r = add nuw i64 %i.m, 1
  store i64 %i.r, ptr %i.i, align 8, !alias.scope !20193, !noalias !20192
  %.val9.pre.i = load ptr, ptr %i.e, align 8, !noalias !20186
  br label %bb.f

bb.f:                                             ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i", %bb.c
  %.val9.i = phi ptr [ %.val.i, %bb.c ], [ %.val9.pre.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i" ]
  store i8 2, ptr %i.f, align 1, !alias.scope !20184, !noalias !20185
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val9.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef range(i64 2, 29) %2)
  %.val.i7 = load ptr, ptr %i.e, align 8, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20198)
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i7, i64 16 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !20199, !noalias !20200, !noundef !57 ; 3 uses
  %i.u = load i64, ptr %.val.i7, align 8, !range !56, !alias.scope !20199, !noalias !20200, !noundef !57
  %i.v = icmp eq i64 %i.u, %i.t
  br i1 %i.v, label %bb.g, label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i, !prof !60

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i7, i64 noundef %i.t, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !20200
  %.pre.i.i.i.i.i.i.i9 = load i64, ptr %i.s, align 8, !alias.scope !20201, !noalias !20200
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i
end_hunk_3
begin_hunk_4_@_ZN10serde_json3ser6to_vec17h166666fc65ab772bE:bb.a
bb.v:                                             ; preds = %.noexc20
  %.sroa.032.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.a, align 8, !noalias !26502
  %i.dk = trunc nuw i8 %.sroa.032.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i1
  %.sroa.433.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !26502
  %i.dl = icmp eq i8 %.sroa.433.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.dk, i1 true, i1 %i.dl
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5fb5fa62dee4ea37E.exit.i.i.i.i.i.i.i.i.i.i.i", label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.535.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !26502, !nonnull !57, !noundef !57
  %.val.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.535.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !26529, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26530)
  call void @llvm.experimental.noalias.scope.decl(metadata !26531)
  call void @llvm.experimental.noalias.scope.decl(metadata !26532)
  call void @llvm.experimental.noalias.scope.decl(metadata !26533)
  %i.dm = getelementptr inbounds nuw i8, ptr %.val.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !26534, !noalias !26535, !noundef !57 ; 3 uses
  %i.do = load i64, ptr %.val.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !56, !alias.scope !26534, !noalias !26535, !noundef !57
  %i.dp = icmp eq i64 %i.do, %i.dn
  br i1 %i.dp, label %bb.x, label %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !60

bb.x:                                             ; preds = %bb.w
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.dn, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc21 unwind label %.loopexit

.noexc21:                                         ; preds = %bb.x
  %.pre.i.i.i.i.i.i.i.i30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dm, align 8, !alias.scope !26536, !noalias !26535
  br label %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc21, %bb.w
  %i.dq = phi i64 [ %i.dn, %bb.w ], [ %.pre.i.i.i.i.i.i.i.i30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc21 ] ; 3 uses
  %i.dr = icmp sgt i64 %i.dq, -1
  call void @llvm.assume(i1 %i.dr)
  %i.ds = getelementptr inbounds nuw i8, ptr %.val.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !alias.scope !26536, !noalias !26535, !nonnull !57, !noundef !57
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dq
  store i8 125, ptr %i.du, align 1, !noalias !26537
  %i.dv = add nuw i64 %i.dq, 1
  store i64 %i.dv, ptr %i.dm, align 8, !alias.scope !26536, !noalias !26535
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5fb5fa62dee4ea37E.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5fb5fa62dee4ea37E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26502
  %i.dw = icmp eq ptr %i.bz, %i.v
  br i1 %i.dw, label %.thread.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.peel.next.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !26338

.thread.i.i.i.i.i.i.i.i.i:                        ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5fb5fa62dee4ea37E.exit.i.i.i.i.i.i.i.i.i.i.i", %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5fb5fa62dee4ea37E.exit.peel.i.i.i.i.i.i.i.i.i.i.i"
  %.val.i13.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !26487, !noalias !26538, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26539)
  call void @llvm.experimental.noalias.scope.decl(metadata !26540)
  call void @llvm.experimental.noalias.scope.decl(metadata !26541)
  call void @llvm.experimental.noalias.scope.decl(metadata !26542)
  %i.dx = getelementptr inbounds nuw i8, ptr %.val.i13.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.dy = load i64, ptr %i.dx, align 8, !alias.scope !26543, !noalias !26544, !noundef !57 ; 3 uses
  %i.dz = load i64, ptr %.val.i13.i.i.i.i.i.i.i.i.i, align 8, !range !56, !alias.scope !26543, !noalias !26544, !noundef !57
  %i.ea = icmp eq i64 %i.dz, %i.dy
  br i1 %i.ea, label %bb.y, label %_ZN10serde_json3ser9Formatter9end_array17hf1b0b89c114d8d5aE.exit.i14.i.i.i.i.i.i.i.i.i, !prof !60

bb.y:                                             ; preds = %.thread.i.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i13.i.i.i.i.i.i.i.i.i, i64 noundef %i.dy, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc22 unwind label %.loopexit.split-lp

.noexc22:                                         ; preds = %bb.y
  %.pre.i.i.i.i.i.i.i15.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dx, align 8, !alias.scope !26545, !noalias !26544
  br label %_ZN10serde_json3ser9Formatter9end_array17hf1b0b89c114d8d5aE.exit.i14.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter9end_array17hf1b0b89c114d8d5aE.exit.i14.i.i.i.i.i.i.i.i.i: ; preds = %.noexc22, %.thread.i.i.i.i.i.i.i.i.i
  %i.eb = phi i64 [ %i.dy, %.thread.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i15.i.i.i.i.i.i.i.i.i, %.noexc22 ] ; 3 uses
  %i.ec = icmp sgt i64 %i.eb, -1
  call void @llvm.assume(i1 %i.ec)
  %i.ed = getelementptr inbounds nuw i8, ptr %.val.i13.i.i.i.i.i.i.i.i.i, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !alias.scope !26545, !noalias !26544, !nonnull !57, !noundef !57
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.eb
  store i8 93, ptr %i.ef, align 1, !noalias !26546
  %i.eg = add nuw i64 %i.eb, 1
  store i64 %i.eg, ptr %i.dx, align 8, !alias.scope !26545, !noalias !26544
  br label %bb.z

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h05fa5aacbca8d247E.exit.i.i.i.i": ; preds = %.noexc20, %.noexc19, %.noexc12, %.noexc11
  %.sroa.0.1.i.i.i.ph.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bi, %.noexc11 ], [ %i.bk, %.noexc12 ], [ %i.dj, %.noexc20 ], [ %i.dh, %.noexc19 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26502
  br label %bb.af

bb.z:                                             ; preds = %_ZN10serde_json3ser9Formatter9end_array17hf1b0b89c114d8d5aE.exit.i14.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter9end_array17hf1b0b89c114d8d5aE.exit.i.i.i.i.i.i.i.i.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i.i.i.i = load float, ptr %i.eh, align 8, !alias.scope !26409, !noalias !26410
  %i.ei = invoke fastcc noundef align 8 ptr @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hcb86703a2eca5736E"(ptr noalias noundef align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2672, i64 noundef 10, float %.val.i.i.i.i)
          to label %.noexc23 unwind label %.loopexit.split-lp ; 2 uses

.noexc23:                                         ; preds = %bb.z
  %.not21.i.i.i.i = icmp eq ptr %i.ei, null
  br i1 %.not21.i.i.i.i, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %.noexc23
  %.sroa.027.0.copyload.i.i.i.i = load i8, ptr %i.b, align 8, !noalias !26401
  %i.ej = trunc nuw i8 %.sroa.027.0.copyload.i.i.i.i to i1
  %.sroa.428.0.copyload.i.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 1, !noalias !26401
  %i.ek = icmp eq i8 %.sroa.428.0.copyload.i.i.i.i, 0
  %or.cond.i.i.i.i = select i1 %i.ej, i1 true, i1 %i.ek
  br i1 %or.cond.i.i.i.i, label %.thread31, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.sroa.530.0.copyload.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !26401, !nonnull !57, !noundef !57
  %.val.i.i24.i.i.i.i = load ptr, ptr %.sroa.530.0.copyload.i.i.i.i, align 8, !noalias !26547, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26548)
  call void @llvm.experimental.noalias.scope.decl(metadata !26549)
  call void @llvm.experimental.noalias.scope.decl(metadata !26550)
  call void @llvm.experimental.noalias.scope.decl(metadata !26551)
  %i.el = getelementptr inbounds nuw i8, ptr %.val.i.i24.i.i.i.i, i64 16 ; 3 uses
  %i.em = load i64, ptr %i.el, align 8, !alias.scope !26552, !noalias !26553, !noundef !57 ; 3 uses
  %i.en = load i64, ptr %.val.i.i24.i.i.i.i, align 8, !range !56, !alias.scope !26552, !noalias !26553, !noundef !57
  %i.eo = icmp eq i64 %i.en, %i.em
  br i1 %i.eo, label %bb.ac, label %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i.i.i.i.i.i, !prof !60

bb.ac:                                            ; preds = %bb.ab
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i24.i.i.i.i, i64 noundef %i.em, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc24 unwind label %.loopexit.split-lp

.noexc24:                                         ; preds = %bb.ac
  %.pre.i.i.i.i.i.i.i.i25.i.i.i.i = load i64, ptr %i.el, align 8, !alias.scope !26554, !noalias !26553
  br label %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i.i.i.i.i.i: ; preds = %.noexc24, %bb.ab
  %i.ep = phi i64 [ %i.em, %bb.ab ], [ %.pre.i.i.i.i.i.i.i.i25.i.i.i.i, %.noexc24 ] ; 3 uses
  %i.eq = icmp sgt i64 %i.ep, -1
  call void @llvm.assume(i1 %i.eq)
  %i.er = getelementptr inbounds nuw i8, ptr %.val.i.i24.i.i.i.i, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !alias.scope !26554, !noalias !26553, !nonnull !57, !noundef !57
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.ep
  store i8 125, ptr %i.et, align 1, !noalias !26555
  %i.eu = add nuw i64 %i.ep, 1
  store i64 %i.eu, ptr %i.el, align 8, !alias.scope !26554, !noalias !26553
  br label %.thread31

.thread:                                          ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1b8af89e63a58f7cE.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !26556)
  call void @llvm.experimental.noalias.scope.decl(metadata !26557)
  call void @llvm.experimental.noalias.scope.decl(metadata !26558)
  call void @llvm.experimental.noalias.scope.decl(metadata !26559)
  store i32 1819047278, ptr %i.e, align 1, !noalias !26560
  store i64 4, ptr %i.h, align 8, !alias.scope !26561, !noalias !26562
  br label %bb.ah

.loopexit:                                        ; preds = %bb.r, %bb.t, %bb.p, %bb.q, %bb.s, %.noexc18, %bb.u, %bb.x
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit.split-lp:                               ; preds = %bb.c, %bb.i, %bb.k, %bb.d, %bb.e, %bb.g, %bb.h, %bb.j, %.noexc10, %bb.l, %bb.o, %bb.y, %bb.z, %bb.ac
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.experimental.noalias.scope.decl(metadata !26563)
  %.val.i = load i64, ptr %i.d, align 8, !range !56, !alias.scope !26563, !noundef !57 ; 2 uses
  %i.ev = icmp eq i64 %.val.i, 0
  br i1 %i.ev, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit", label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.val1.i = load ptr, ptr %i.g, align 8, !alias.scope !26563, !nonnull !57, !noundef !57
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !26563
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit"

.thread31:                                        ; preds = %bb.aa, %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26401
  br label %bb.ah

bb.af:                                            ; preds = %.noexc23, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h05fa5aacbca8d247E.exit.i.i.i.i"
  %.sroa.0.0.i.i.i.i = phi ptr [ %.sroa.0.1.i.i.i.ph.i.i.i.i.i.i.i.i.i.i.i, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h05fa5aacbca8d247E.exit.i.i.i.i" ], [ %i.ei, %.noexc23 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !26392
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.i.i.i, ptr %i.ew, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !26564)
  %.val.i26 = load i64, ptr %i.d, align 8, !range !56, !alias.scope !26564, !noundef !57 ; 2 uses
  %i.ex = icmp eq i64 %.val.i26, 0
  br i1 %i.ex, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit28", label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.val1.i27 = load ptr, ptr %i.g, align 8, !alias.scope !26564, !nonnull !57, !noundef !57
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i27, i64 noundef %.val.i26, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !26564
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit28"

bb.ah:                                            ; preds = %.thread31, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !26392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit28"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit28": ; preds = %bb.ag, %bb.af, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit": ; preds = %bb.ae, %bb.ad
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef align 8 ptr @_ZN10serde_json3ser9to_writer17h72bfca73145f4818E(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26657)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26659)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26660)
  %i.b = load ptr, ptr %1, align 8, !alias.scope !26661, !noalias !26662, !noundef !57 ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.b, null            ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !26663, !noalias !26664
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !26663, !noalias !26664 ; 2 uses
  %i.g = ptrtoint ptr %i.b to i64
  %.sroa.18.0.i.i = select i1 %.not.i.i.i, i64 %i.d, i64 undef
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !26665, !noalias !26666, !noundef !57 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !26665, !noalias !26666, !noundef !57
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.k, %i.i
  br i1 %.not.i.i.i.i.i.i.i, label %bb.b, label %_ZN10serde_json3ser9Formatter12begin_object17h2ac8872325b097a1E.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$25reserve_internal_or_panic17hf03e4d35305f31f9E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.i, i64 noundef 1, i1 noundef zeroext true), !noalias !26666
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !26665, !noalias !26666
  br label %_ZN10serde_json3ser9Formatter12begin_object17h2ac8872325b097a1E.exit.i.i.i

_ZN10serde_json3ser9Formatter12begin_object17h2ac8872325b097a1E.exit.i.i.i: ; preds = %bb.b, %bb.a
  %i.l = phi i64 [ %i.i, %bb.a ], [ %.pre.i.i.i.i.i.i.i, %bb.b ] ; 2 uses
  %i.m = load ptr, ptr %0, align 8, !alias.scope !26665, !noalias !26666, !nonnull !57, !noundef !57
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.l
  store i8 123, ptr %i.n, align 1, !noalias !26667
  %i.o = add i64 %i.l, 1                          ; 4 uses
  store i64 %i.o, ptr %i.h, align 8, !alias.scope !26665, !noalias !26666
  %.not73.i.i = icmp ne i64 %i.f, 0
  %.not.not.i.i = select i1 %.not.i.i.i, i1 %.not73.i.i, i1 false
  br i1 %.not.not.i.i, label %.lr.ph.i.preheader.i, label %bb.c

bb.c:                                             ; preds = %_ZN10serde_json3ser9Formatter12begin_object17h2ac8872325b097a1E.exit.i.i.i
  %i.p = load i64, ptr %i.j, align 8, !alias.scope !26668, !noalias !26669, !noundef !57
  %.not.i.i.i.i17.i.i.i = icmp eq i64 %i.p, %i.o
  br i1 %.not.i.i.i.i17.i.i.i, label %bb.d, label %.split.i._crit_edge.thread.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$25reserve_internal_or_panic17hf03e4d35305f31f9E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.o, i64 noundef 1, i1 noundef zeroext true), !noalias !26669
  %.pre.i.i.i.i18.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !26668, !noalias !26669
  br label %.split.i._crit_edge.thread.i.i

.split.i._crit_edge.thread.i.i:                   ; preds = %bb.d, %bb.c
  %i.q = phi i64 [ %i.o, %bb.c ], [ %.pre.i.i.i.i18.i.i.i, %bb.d ] ; 2 uses
  %i.r = load ptr, ptr %0, align 8, !alias.scope !26668, !noalias !26669, !nonnull !57, !noundef !57
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q
  store i8 125, ptr %i.s, align 1, !noalias !26667
  %i.t = add i64 %i.q, 1
  store i64 %i.t, ptr %i.h, align 8, !alias.scope !26668, !noalias !26669
  br label %"_ZN10serde_core3ser5impls110_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$9serialize17hd5529c0f12872698E.exit"

.split.i.i.i:                                     ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hb318c4426001dfa4E.exit.i.i.i.i"
  %i.u = icmp eq i64 %i.x, 0
  br i1 %i.u, label %.split.i._crit_edge.i.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN10serde_json3ser9Formatter12begin_object17h2ac8872325b097a1E.exit.i.i.i, %.split.i.i.i
  %i.v = phi i64 [ %i.x, %.split.i.i.i ], [ %i.f, %_ZN10serde_json3ser9Formatter12begin_object17h2ac8872325b097a1E.exit.i.i.i ]
  %.sroa.012.0.lcssa.i.i17.i.i51.i.i = phi ptr [ %.sroa.07.0.i.i.i.i.i.i.i, %.split.i.i.i ], [ null, %_ZN10serde_json3ser9Formatter12begin_object17h2ac8872325b097a1E.exit.i.i.i ] ; 2 uses
  %i.w = phi i1 [ false, %.split.i.i.i ], [ true, %_ZN10serde_json3ser9Formatter12begin_object17h2ac8872325b097a1E.exit.i.i.i ]
  %.sroa.7.0.i.i.i32.i.i50.i.i = phi i64 [ %.sroa.7.0.i.i.i.i.i.i.i, %.split.i.i.i ], [ %.sroa.18.0.i.i, %_ZN10serde_json3ser9Formatter12begin_object17h2ac8872325b097a1E.exit.i.i.i ] ; 6 uses
  %.sroa.11.149.i.i = phi i64 [ 0, %.split.i.i.i ], [ %i.g, %_ZN10serde_json3ser9Formatter12begin_object17h2ac8872325b097a1E.exit.i.i.i ] ; 2 uses
  %i.x = add i64 %i.v, -1                         ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.012.0.lcssa.i.i17.i.i51.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h56f24be8b1456303E.exit.i.i.i.i.i"

bb.e:                                             ; preds = %.lr.ph.i.preheader.i
  %i.y = inttoptr i64 %.sroa.11.149.i.i to ptr    ; 3 uses
  %i.z = icmp eq i64 %.sroa.7.0.i.i.i32.i.i50.i.i, 0
  br i1 %i.z, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h56f24be8b1456303E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.e
  %xtraiter = and i64 %.sroa.7.0.i.i.i32.i.i50.i.i, 7 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.sroa.012.015.i.i.i.i.i.i.prol = phi ptr [ %.sroa.012.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.y, %.lr.ph.i.i.i.i.i.i.preheader ]
  %.sroa.011.014.i.i.i.i.i.i.prol = phi i64 [ %i.ab, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.7.0.i.i.i32.i.i50.i.i, %.lr.ph.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i.i.i.i.prol, i64 456
  %i.ab = add i64 %.sroa.011.014.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.012.0.i.i.i.i.i.i.prol = load ptr, ptr %i.aa, align 8, !noalias !26670, !nonnull !57, !noundef !57 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !26603

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.sroa.012.0.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.sroa.012.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.012.015.i.i.i.i.i.i.unr = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.sroa.012.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.011.014.i.i.i.i.i.i.unr = phi i64 [ %.sroa.7.0.i.i.i32.i.i50.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ab, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ac = icmp ult i64 %.sroa.7.0.i.i.i32.i.i50.i.i, 8
  br i1 %i.ac, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h56f24be8b1456303E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.sroa.012.015.i.i.i.i.i.i = phi ptr [ %.sroa.012.0.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.012.015.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.011.014.i.i.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.011.014.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i.i.i.i, i64 456
  %.sroa.012.0.i.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !noalias !26670, !nonnull !57, !noundef !57
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i, i64 456
  %.sroa.012.0.i.i.i.i.i.i.1 = load ptr, ptr %i.ae, align 8, !noalias !26670, !nonnull !57, !noundef !57
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.1, i64 456
  %.sroa.012.0.i.i.i.i.i.i.2 = load ptr, ptr %i.af, align 8, !noalias !26670, !nonnull !57, !noundef !57
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.2, i64 456
  %.sroa.012.0.i.i.i.i.i.i.3 = load ptr, ptr %i.ag, align 8, !noalias !26670, !nonnull !57, !noundef !57
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.3, i64 456
  %.sroa.012.0.i.i.i.i.i.i.4 = load ptr, ptr %i.ah, align 8, !noalias !26670, !nonnull !57, !noundef !57
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.4, i64 456
  %.sroa.012.0.i.i.i.i.i.i.5 = load ptr, ptr %i.ai, align 8, !noalias !26670, !nonnull !57, !noundef !57
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.5, i64 456
  %.sroa.012.0.i.i.i.i.i.i.6 = load ptr, ptr %i.aj, align 8, !noalias !26670, !nonnull !57, !noundef !57
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.6, i64 456
  %i.al = add i64 %.sroa.011.014.i.i.i.i.i.i, -8  ; 2 uses
  %.sroa.012.0.i.i.i.i.i.i.7 = load ptr, ptr %i.ak, align 8, !noalias !26670, !nonnull !57, !noundef !57 ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h56f24be8b1456303E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h56f24be8b1456303E.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.e, %.lr.ph.i.preheader.i
  %.sroa.37.0.copyload.i.i.i.i.i.i = phi i64 [ %.sroa.7.0.i.i.i32.i.i50.i.i, %.lr.ph.i.preheader.i ], [ 0, %bb.e ], [ 0, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.26.0.copyload.i.i.i.i.i.i = phi i64 [ %.sroa.11.149.i.i, %.lr.ph.i.preheader.i ], [ 0, %bb.e ], [ 0, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.05.0.copyload.i.i.i.i.i.i = phi ptr [ %.sroa.012.0.lcssa.i.i17.i.i51.i.i, %.lr.ph.i.preheader.i ], [ %i.y, %bb.e ], [ %.sroa.012.0.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %.sroa.012.0.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i.i.i.i.i, i64 450
  %i.ao = load i16, ptr %i.an, align 2, !noalias !26671, !noundef !57
  %i.ap = zext i16 %i.ao to i64
  %i.aq = icmp ult i64 %.sroa.37.0.copyload.i.i.i.i.i.i, %i.ap
  br i1 %i.aq, label %bb.g, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h56f24be8b1456303E.exit.i.i.i.i.i", %bb.f
  %.sroa.0.038.i.i.i.i.i.i.i.i = phi ptr [ %i.as, %bb.f ], [ %.sroa.05.0.copyload.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h56f24be8b1456303E.exit.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i = phi i64 [ %i.au, %bb.f ], [ %.sroa.26.0.copyload.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h56f24be8b1456303E.exit.i.i.i.i.i" ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i, i64 176
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !26672, !noundef !57 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.split5.us.i.i.i, label %bb.f

._crit_edge.loopexit.i.i.i.i.i.i.i.i:             ; preds = %bb.f
  %i.at = zext i16 %i.aw to i64
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.au = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i, i64 448
  %i.aw = load i16, ptr %i.av, align 8, !noalias !26672 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 450
  %i.ay = load i16, ptr %i.ax, align 2, !noalias !26671, !noundef !57
  %i.az = icmp ult i16 %i.aw, %i.ay
  br i1 %i.az, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h56f24be8b1456303E.exit.i.i.i.i.i"
  %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ %.sroa.37.0.copyload.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h56f24be8b1456303E.exit.i.i.i.i.i" ], [ %i.at, %._crit_edge.loopexit.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i = phi i64 [ %.sroa.26.0.copyload.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h56f24be8b1456303E.exit.i.i.i.i.i" ], [ %i.au, %._crit_edge.loopexit.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.0.0.ph.i.i.i.i.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h56f24be8b1456303E.exit.i.i.i.i.i" ], [ %i.as, %._crit_edge.loopexit.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.ba = icmp eq i64 %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i, 0
  %i.bb = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i, 1 ; 2 uses
  br i1 %i.ba, label %.loopexit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.i.i.i, i64 456
  %i.bd = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.bd)
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bb ; 2 uses
  %xtraiter34 = and i64 %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod35.not = icmp eq i64 %xtraiter34, 0
  br i1 %lcmp.mod35.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.h, %.prol.preheader
  %.pn30.in.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.bf, %.prol.preheader ], [ %i.be, %bb.h ]
  %.pn28.in.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i, %bb.h ]
  %prol.iter36 = phi i64 [ %prol.iter36.next, %.prol.preheader ], [ 0, %bb.h ]
  %.pn28.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.prol, align 8, !noalias !26673, !nonnull !57, !noundef !57 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.prol, i64 456 ; 2 uses
  %prol.iter36.next = add i64 %prol.iter36, 1     ; 2 uses
  %prol.iter36.cmp.not = icmp eq i64 %prol.iter36.next, %xtraiter34
  br i1 %prol.iter36.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !26617

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.h
  %.pn30.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.h ], [ %.pn30.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.be, %bb.h ], [ %i.bf, %.prol.preheader ]
  %.pn28.in.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i, %bb.h ], [ %.pn28.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %i.bg = icmp ult i64 %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i, 8
  br i1 %i.bg, label %.loopexit.i.i.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i.i.i.i.i = phi ptr [ %i.bp, %.new ], [ %.pn30.in.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i, align 8, !noalias !26673, !nonnull !57, !noundef !57
  %i.bh = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i, i64 456
  %.pn30.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.bh, align 8, !noalias !26673, !nonnull !57, !noundef !57
  %i.bi = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.1, i64 456
  %.pn30.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.bi, align 8, !noalias !26673, !nonnull !57, !noundef !57
  %i.bj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.2, i64 456
  %.pn30.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.bj, align 8, !noalias !26673, !nonnull !57, !noundef !57
  %i.bk = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.3, i64 456
end_hunk_4
begin_hunk_5_@"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$26unix_timestamp_nanoseconds17h69dbc1d2695dba51E":bb.a
  %.neg7.i.i = sext i8 %narrow14.i.i to i64
  %narrow15.i.i = sub nsw i8 0, %.sroa.01.1.extract.trunc.i.i.i
  %neg.i.i = sext i8 %narrow15.i.i to i64
  %reass.add.i.i = add nsw i64 %neg.i.i, %i.d
  %reass.mul.i.i = mul nsw i64 %reass.add.i.i, 60
  %reass.add12.i.i = add nsw i64 %neg11.i.i, %i.e
  %reass.mul13.i.i = mul nsw i64 %reass.add12.i.i, 3600
  %i.z = or disjoint i64 %i.s, -31619087683200
  %i.aa = add nsw i64 %i.z, %.neg7.i.i
  %i.ab = add nsw i64 %i.aa, %reass.mul.i.i
  %i.ac = add nsw i64 %i.ab, %reass.mul13.i.i
  %i.ad = add nsw i64 %i.ac, %i.r
  %i.ae = icmp ult i32 %.sroa.0.0.copyload, 1000000000
  %i.af = sext i64 %i.ad to i128
  %i.ag = mul nsw i128 %i.af, 1000000000
  tail call void @llvm.assume(i1 %i.ae)
  %i.ah = zext nneg i32 %.sroa.0.0.copyload to i128
  %i.ai = add nsw i128 %i.ag, %i.ah
  ret i128 %i.ai
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef range(i128 -66245516071199000000, 66121194247199000000) i128 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$27unix_timestamp_microseconds17h2028fbd112cadd72E"(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #15 {
bb.a:
  %.sroa.0.0.copyload = load i32, ptr %0, align 4 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.5.sroa.0.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 4 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  %.sroa.5.sroa.4.0.copyload = load i8, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 1 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.sroa.5.sroa.5.0.copyload = load i8, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 2 ; 2 uses
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.7.0.copyload = load i32, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 4 ; 2 uses
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.5.sroa.8.0.copyload = load i24, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx, align 4 ; 3 uses
  %i.a = icmp ult i8 %.sroa.5.sroa.5.0.copyload, 24
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp ult i8 %.sroa.5.sroa.4.0.copyload, 60
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp ult i8 %.sroa.5.sroa.0.0.copyload, 60
  %i.d = zext nneg i8 %.sroa.5.sroa.4.0.copyload to i64
  %i.e = zext nneg i8 %.sroa.5.sroa.5.0.copyload to i64
  %i.f = ashr i32 %.sroa.5.sroa.7.0.copyload, 10
  %i.g = add nsw i32 %i.f, 999999                 ; 3 uses
  %.neg.i = sdiv i32 %i.g, -100
  %i.h = sext i32 %i.g to i64
  %i.i = mul nsw i64 %i.h, 1461
  %i.j = sdiv i64 %i.i, 4
  %i.k = trunc nsw i64 %i.j to i32
  %i.l = sdiv i32 %i.g, 400
  %i.m = and i32 %.sroa.5.sroa.7.0.copyload, 511
  %i.n = add nsw i32 %.neg.i, %i.m
  %i.o = add nsw i32 %i.n, %i.l
  %i.p = add nsw i32 %i.o, %i.k
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %i.q, 86400
  tail call void @llvm.assume(i1 %i.c)
  %i.s = zext nneg i8 %.sroa.5.sroa.0.0.copyload to i64
  %.sroa.01.0.extract.trunc.i.i = trunc i24 %.sroa.5.sroa.8.0.copyload to i8 ; 3 uses
  %.sroa.01.1.extract.shift.i.i = lshr i24 %.sroa.5.sroa.8.0.copyload, 8
  %.sroa.01.1.extract.trunc.i.i = trunc i24 %.sroa.01.1.extract.shift.i.i to i8 ; 3 uses
  %.sroa.01.2.extract.shift.i.i = lshr i24 %.sroa.5.sroa.8.0.copyload, 16
  %.sroa.01.2.extract.trunc.i.i = trunc nuw i24 %.sroa.01.2.extract.shift.i.i to i8 ; 3 uses
  %i.t = icmp sgt i8 %.sroa.01.2.extract.trunc.i.i, -26
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp slt i8 %.sroa.01.2.extract.trunc.i.i, 26
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp sgt i8 %.sroa.01.1.extract.trunc.i.i, -60
  tail call void @llvm.assume(i1 %i.v)
  %i.w = icmp slt i8 %.sroa.01.1.extract.trunc.i.i, 60
  tail call void @llvm.assume(i1 %i.w)
  %i.x = icmp sgt i8 %.sroa.01.0.extract.trunc.i.i, -60
  tail call void @llvm.assume(i1 %i.x)
  %i.y = icmp slt i8 %.sroa.01.0.extract.trunc.i.i, 60
  tail call void @llvm.assume(i1 %i.y)
  %narrow.i = sub nsw i8 0, %.sroa.01.2.extract.trunc.i.i
  %neg11.i = sext i8 %narrow.i to i64
  %narrow14.i = sub nsw i8 0, %.sroa.01.0.extract.trunc.i.i
  %.neg7.i = sext i8 %narrow14.i to i64
  %narrow15.i = sub nsw i8 0, %.sroa.01.1.extract.trunc.i.i
  %neg.i = sext i8 %narrow15.i to i64
  %reass.add.i = add nsw i64 %neg.i, %i.d
  %reass.mul.i = mul nsw i64 %reass.add.i, 60
  %reass.add12.i = add nsw i64 %neg11.i, %i.e
  %reass.mul13.i = mul nsw i64 %reass.add12.i, 3600
  %i.z = or disjoint i64 %i.s, -31619087683200
  %i.aa = add nsw i64 %i.z, %.neg7.i
  %i.ab = add nsw i64 %i.aa, %reass.mul.i
  %i.ac = add nsw i64 %i.ab, %reass.mul13.i
  %i.ad = add nsw i64 %i.ac, %i.r
  %i.ae = icmp ult i32 %.sroa.0.0.copyload, 1000000000
  %i.af = sext i64 %i.ad to i128
  %i.ag = mul nsw i128 %i.af, 1000000000
  tail call void @llvm.assume(i1 %i.ae)
  %i.ah = zext nneg i32 %.sroa.0.0.copyload to i128
  %i.ai = add nsw i128 %i.ag, %i.ah
  %i.aj = sdiv i128 %i.ai, 1000
  ret i128 %i.aj
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef range(i64 -66245516071199000, 66121194247199000) i64 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$27unix_timestamp_milliseconds17h4fac17dc882169cdE"(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #15 {
bb.a:
  %.sroa.0.0.copyload = load i32, ptr %0, align 4 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.5.sroa.0.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 4 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  %.sroa.5.sroa.4.0.copyload = load i8, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 1 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.sroa.5.sroa.5.0.copyload = load i8, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 2 ; 2 uses
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.7.0.copyload = load i32, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 4 ; 2 uses
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.5.sroa.8.0.copyload = load i24, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx, align 4 ; 3 uses
  %i.a = icmp ult i8 %.sroa.5.sroa.5.0.copyload, 24
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp ult i8 %.sroa.5.sroa.4.0.copyload, 60
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp ult i8 %.sroa.5.sroa.0.0.copyload, 60
  %i.d = zext nneg i8 %.sroa.5.sroa.4.0.copyload to i64
  %i.e = zext nneg i8 %.sroa.5.sroa.5.0.copyload to i64
  %i.f = ashr i32 %.sroa.5.sroa.7.0.copyload, 10
  %i.g = add nsw i32 %i.f, 999999                 ; 3 uses
  %.neg.i = sdiv i32 %i.g, -100
  %i.h = sext i32 %i.g to i64
  %i.i = mul nsw i64 %i.h, 1461
  %i.j = sdiv i64 %i.i, 4
  %i.k = trunc nsw i64 %i.j to i32
  %i.l = sdiv i32 %i.g, 400
  %i.m = and i32 %.sroa.5.sroa.7.0.copyload, 511
  %i.n = add nsw i32 %.neg.i, %i.m
  %i.o = add nsw i32 %i.n, %i.l
  %i.p = add nsw i32 %i.o, %i.k
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %i.q, 86400
  tail call void @llvm.assume(i1 %i.c)
  %i.s = zext nneg i8 %.sroa.5.sroa.0.0.copyload to i64
  %.sroa.01.0.extract.trunc.i.i = trunc i24 %.sroa.5.sroa.8.0.copyload to i8 ; 3 uses
  %.sroa.01.1.extract.shift.i.i = lshr i24 %.sroa.5.sroa.8.0.copyload, 8
  %.sroa.01.1.extract.trunc.i.i = trunc i24 %.sroa.01.1.extract.shift.i.i to i8 ; 3 uses
  %.sroa.01.2.extract.shift.i.i = lshr i24 %.sroa.5.sroa.8.0.copyload, 16
  %.sroa.01.2.extract.trunc.i.i = trunc nuw i24 %.sroa.01.2.extract.shift.i.i to i8 ; 3 uses
  %i.t = icmp sgt i8 %.sroa.01.2.extract.trunc.i.i, -26
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp slt i8 %.sroa.01.2.extract.trunc.i.i, 26
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp sgt i8 %.sroa.01.1.extract.trunc.i.i, -60
  tail call void @llvm.assume(i1 %i.v)
  %i.w = icmp slt i8 %.sroa.01.1.extract.trunc.i.i, 60
  tail call void @llvm.assume(i1 %i.w)
  %i.x = icmp sgt i8 %.sroa.01.0.extract.trunc.i.i, -60
  tail call void @llvm.assume(i1 %i.x)
  %i.y = icmp slt i8 %.sroa.01.0.extract.trunc.i.i, 60
  tail call void @llvm.assume(i1 %i.y)
  %narrow.i = sub nsw i8 0, %.sroa.01.2.extract.trunc.i.i
  %neg11.i = sext i8 %narrow.i to i64
  %narrow14.i = sub nsw i8 0, %.sroa.01.0.extract.trunc.i.i
  %.neg7.i = sext i8 %narrow14.i to i64
  %narrow15.i = sub nsw i8 0, %.sroa.01.1.extract.trunc.i.i
  %neg.i = sext i8 %narrow15.i to i64
  %reass.add.i = add nsw i64 %neg.i, %i.d
  %reass.mul.i = mul nsw i64 %reass.add.i, 60
  %reass.add12.i = add nsw i64 %neg11.i, %i.e
  %reass.mul13.i = mul nsw i64 %reass.add12.i, 3600
  %i.z = or disjoint i64 %i.s, -31619087683200
  %i.aa = add nsw i64 %i.z, %.neg7.i
  %i.ab = add nsw i64 %i.aa, %reass.mul.i
  %i.ac = add nsw i64 %i.ab, %reass.mul13.i
  %i.ad = add nsw i64 %i.ac, %i.r
  %i.ae = icmp ult i32 %.sroa.0.0.copyload, 1000000000
  %i.af = sext i64 %i.ad to i128
  %i.ag = mul nsw i128 %i.af, 1000000000
  tail call void @llvm.assume(i1 %i.ae)
  %i.ah = zext nneg i32 %.sroa.0.0.copyload to i128
  %i.ai = add nsw i128 %i.ag, %i.ah
  %i.aj = sdiv i128 %i.ai, 1000000
  %i.ak = trunc nsw i128 %i.aj to i64
  ret i64 %i.ak
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @"_ZN115_$LT$index_scheduler..upgrade..v1_30..MigrateNetwork$u20$as$u20$index_scheduler..upgrade..UpgradeIndexScheduler$GT$11description17h2ca5501a3c05760cE"(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @373, i64 27 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @"_ZN115_$LT$index_scheduler..upgrade..v1_30..MigrateNetwork$u20$as$u20$index_scheduler..upgrade..UpgradeIndexScheduler$GT$12must_upgrade17h18defd37a25c90faE"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %1) unnamed_addr #2 {
"_ZN4core5tuple69_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$$LP$V$C$U$C$T$RP$$GT$2lt17he23ea79208eb1b10E.exit":
  %.val7.i = load i32, ptr %1, align 4, !alias.scope !29884, !noalias !29885, !noundef !57 ; 2 uses
  %i.a = icmp eq i32 %.val7.i, 1
  %i.b = icmp eq i32 %.val7.i, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val.i = load i32, ptr %i.c, align 4
  %i.d = icmp ult i32 %.val.i, 30
  %.sroa.0.1.in.i = select i1 %i.a, i1 %i.d, i1 %i.b
  ret i1 %.sroa.0.1.in.i
}

; Function Attrs: nonlazybind uwtable
define noalias noundef ptr @"_ZN115_$LT$index_scheduler..upgrade..v1_30..MigrateNetwork$u20$as$u20$index_scheduler..upgrade..UpgradeIndexScheduler$GT$7upgrade17hacdca22dc7cc7323E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 24 uses
  %i.e = alloca [16 x i8], align 8                ; 10 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [48 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [48 x i8], align 8                ; 7 uses
  %i.o = alloca [96 x i8], align 8                ; 5 uses
  %i.p = alloca [72 x i8], align 8                ; 4 uses
  %i.q = alloca [72 x i8], align 8                ; 13 uses
  %i.r = alloca [72 x i8], align 8                ; 4 uses
  %i.s = alloca [128 x i8], align 8               ; 19 uses
  %i.t = alloca [8 x i8], align 8                 ; 3 uses
  %i.u = alloca [72 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [96 x i8], align 8                ; 7 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [72 x i8], align 8                ; 7 uses
  %i.z = alloca [24 x i8], align 8                ; 10 uses
  %i.aa = alloca [72 x i8], align 8               ; 16 uses
  %i.ab = alloca [24 x i8], align 8               ; 10 uses
  %i.ac = alloca [72 x i8], align 8               ; 12 uses
  %i.ad = alloca [24 x i8], align 8               ; 4 uses
  %i.ae = alloca [72 x i8], align 8               ; 12 uses
  %i.af = alloca [72 x i8], align 8               ; 12 uses
  %i.ag = alloca [24 x i8], align 8               ; 4 uses
  %i.ah = alloca [24 x i8], align 8               ; 4 uses
  %i.ai = alloca [24 x i8], align 8               ; 4 uses
  %i.aj = alloca [24 x i8], align 8               ; 4 uses
  %i.ak = alloca [24 x i8], align 8               ; 4 uses
  %i.al = alloca [24 x i8], align 8               ; 4 uses
  %i.am = alloca [24 x i8], align 8               ; 4 uses
  %i.an = alloca [24 x i8], align 8               ; 4 uses
  %i.ao = alloca [24 x i8], align 8               ; 10 uses
  %i.ap = alloca [16 x i8], align 8               ; 7 uses
  %i.aq = alloca [16 x i8], align 8               ; 7 uses
  %i.ar = alloca [32 x i8], align 8               ; 7 uses
  %i.as = alloca [24 x i8], align 8               ; 7 uses
  %i.at = alloca [32 x i8], align 8               ; 19 uses
  %i.au = alloca [16 x i8], align 8               ; 6 uses
  %i.av = alloca [72 x i8], align 8               ; 12 uses
  %i.aw = alloca [72 x i8], align 8               ; 12 uses
  %i.ax = alloca [16 x i8], align 8               ; 7 uses
  %i.ay = alloca [16 x i8], align 8               ; 7 uses
  %i.az = alloca [32 x i8], align 8               ; 7 uses
  %i.ba = alloca [16 x i8], align 8               ; 7 uses
  %i.bb = alloca [24 x i8], align 8               ; 7 uses
  %i.bc = alloca [16 x i8], align 8               ; 7 uses
  %i.bd = alloca [24 x i8], align 8               ; 11 uses
  %i.be = alloca [16 x i8], align 8               ; 10 uses
  %i.bf = alloca [56 x i8], align 8               ; 10 uses
  %i.bg = alloca [56 x i8], align 8               ; 10 uses
  %.sroa.14.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 5 uses
  %i.bh = alloca [24 x i8], align 8               ; 4 uses
  %i.bi = alloca [56 x i8], align 8               ; 11 uses
  %i.bj = alloca [64 x i8], align 8               ; 22 uses
  %i.bk = alloca [8 x i8], align 8                ; 4 uses
  %.sroa.10.i.sroa.5.i.i = alloca [24 x i8], align 8 ; 6 uses
  %i.bl = alloca [16 x i8], align 8               ; 7 uses
  %i.bm = alloca [16 x i8], align 8               ; 7 uses
  %i.bn = alloca [48 x i8], align 8               ; 7 uses
  %i.bo = alloca [24 x i8], align 8               ; 13 uses
  %i.bp = alloca [48 x i8], align 8               ; 7 uses
  %i.bq = alloca [56 x i8], align 8               ; 18 uses
  %i.br = alloca [344 x i8], align 8              ; 8 uses
  %i.bs = alloca [24 x i8], align 8               ; 6 uses
  %i.bt = alloca [344 x i8], align 8              ; 8 uses
  %i.bu = alloca [88 x i8], align 8               ; 17 uses
  %.sroa.7.sroa.8.sroa.9.sroa.9 = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.20.sroa.7 = alloca [16 x i8], align 8    ; 6 uses
  %i.bv = alloca [24 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20.sroa.7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30796)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30797)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30798)
  %i.bw = load ptr, ptr %1, align 8, !alias.scope !30796, !noalias !30799, !nonnull !57, !noundef !57
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40 ; 4 uses
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !30800, !nonnull !57, !noundef !57
  %i.bz = load i64, ptr %2, align 8, !range !71, !alias.scope !30801, !noalias !30802, !noundef !57
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cb = trunc nuw i64 %i.bz to i1
  %i.cc = load ptr, ptr %i.ca, align 8, !alias.scope !30801, !noalias !30802, !nonnull !57, !align !61
  %.sroa.05.0.i.i = select i1 %i.cb, ptr %i.ca, ptr %i.cc ; 4 uses
  %i.cd = load ptr, ptr %.sroa.05.0.i.i, align 8, !noalias !30802, !nonnull !57, !noundef !57
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !30800, !nonnull !57, !noundef !57
  %i.cg = icmp eq ptr %i.by, %i.cf
  %.sink1421.sroa.gep = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sink1421.sroa.gep2196 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sink1421.sroa.gep2198 = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sink1421.sroa.gep2199 = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sink1421.sroa.gep2201 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sink1421.sroa.gep2202 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sink1421.sroa.gep2204 = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sink1421.sroa.gep2205 = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  br i1 %i.cg, label %bb.c, label %bb.b, !prof !58

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !30800
  store ptr @2223, ptr %i.bp, align 8, !noalias !30800
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i64 1, ptr %i.ch, align 8, !noalias !30800
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  store ptr null, ptr %i.ci, align 8, !noalias !30800
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.cj, align 8, !noalias !30800
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store i64 0, ptr %i.ck, align 8, !noalias !30800
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.bp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2224) #80, !noalias !30800
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !30800
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !alias.scope !30801, !noalias !30802, !noundef !57 ; 5 uses
  %.not.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i, label %bb.e, label %bb.d, !prof !60

bb.d:                                             ; preds = %bb.c
  %i.cn = tail call fastcc i64 @"_ZN4heed4envs3env12Env$LT$T$GT$12raw_open_dbi17h22b14340deb78d57E"(ptr noundef nonnull %i.cm, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @802, i64 21, i32 noundef 0), !noalias !30803 ; 2 uses
  %.sroa.020.0.extract.trunc.i.i.i = trunc i64 %i.cn to i32 ; 2 uses
  %.sroa.4.0.extract.shift.i.i.i = lshr i64 %i.cn, 32
  %.sroa.4.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.4.0.extract.shift.i.i.i to i32 ; 2 uses
  %.not.i.i.i = icmp eq i32 %.sroa.020.0.extract.trunc.i.i.i, 22
  br i1 %.not.i.i.i, label %bb.h, label %"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit.i.i"

"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit.i.i": ; preds = %bb.d
  call void @"_ZN87_$LT$heed..Error$u20$as$u20$core..convert..From$LT$heed..mdb..lmdb_error..Error$GT$$GT$4from17hea4d5b0dd9c7836fE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bo, i32 noundef %.sroa.020.0.extract.trunc.i.i.i, i32 %.sroa.4.0.extract.trunc.i.i.i), !noalias !30800
  %.pr.i.i = load i32, ptr %i.bo, align 8, !noalias !30800
  switch i32 %.pr.i.i, label %bb.g [
    i32 5, label %"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit._crit_edge.i.i"
    i32 1, label %bb.f
  ]

"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit._crit_edge.i.i": ; preds = %"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit.i.i"
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !noalias !30800
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2201) #80, !noalias !30800
  unreachable

bb.f:                                             ; preds = %"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit.i.i"
  %i.co = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !range !143, !noalias !30800, !noundef !57
  %i.cq = icmp eq i32 %i.cp, 1
  br i1 %i.cq, label %bb.ec, label %bb.g

bb.g:                                             ; preds = %bb.f, %"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit.i.i"
  %.sroa.758.8.copyload.i = load i64, ptr %i.bo, align 8, !noalias !30804
  %.sroa.11.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.sroa.11.8.copyload.i = load i64, ptr %.sroa.11.8..sroa_idx.i, align 8, !noalias !30804
  %.sroa.14.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %.sroa.14.8.copyload.i = load i32, ptr %.sroa.14.8..sroa_idx.i, align 8, !noalias !30804
  %.sroa.17.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 20
  %.sroa.17.8.copyload.i = load i32, ptr %.sroa.17.8..sroa_idx.i, align 4, !noalias !30804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !30800
  br label %bb.ef

bb.h:                                             ; preds = %"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit._crit_edge.i.i", %bb.d
  %i.cr = phi i32 [ %.pre.i.i, %"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit._crit_edge.i.i" ], [ %.sroa.4.0.extract.trunc.i.i.i, %bb.d ]
  %i.cs = load ptr, ptr %i.bx, align 8, !noalias !30800, !nonnull !57, !noundef !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !30800
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !30805
  call void @llvm.experimental.noalias.scope.decl(metadata !30806)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.sroa.5.i.i)
  %i.ct = load ptr, ptr %.sroa.05.0.i.i, align 8, !noalias !30807, !nonnull !57, !noundef !57
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !30808, !nonnull !57, !noundef !57
  %i.cw = icmp eq ptr %i.cs, %i.cv
  br i1 %i.cw, label %bb.j, label %bb.i, !prof !58

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !30808
  store ptr @2206, ptr %i.bn, align 8, !noalias !30808
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i64 1, ptr %i.cx, align 8, !noalias !30808
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  store ptr null, ptr %i.cy, align 8, !noalias !30808
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.cz, align 8, !noalias !30808
  %i.da = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store i64 0, ptr %i.da, align 8, !noalias !30808
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2211) #80, !noalias !30808
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !30808
  store i64 7, ptr %i.bm, align 8, !noalias !30808
  %i.db = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr @763, ptr %i.db, align 8, !noalias !30808
end_hunk_5
begin_hunk_6_@"_ZN115_$LT$index_scheduler..upgrade..v1_30..MigrateNetwork$u20$as$u20$index_scheduler..upgrade..UpgradeIndexScheduler$GT$7upgrade17hacdca22dc7cc7323E":bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !31053
  store i64 7, ptr %i.k, align 8, !noalias !31053
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @763, ptr %i.aoq, align 8, !noalias !31053
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !31053
  %i.aor = icmp sgt i64 %.sroa.9.0.copyload.i.i.i, -1
  br i1 %i.aor, label %bb.js, label %bb.jr, !prof !144

bb.jr:                                            ; preds = %bb.jq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !31053
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !31053
  store ptr @2127, ptr %i.b, align 8, !noalias !31053
  %i.aos = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 279, ptr %i.aos, align 8, !noalias !31053
  store ptr %i.b, ptr %i.c, align 8, !noalias !31053
  %i.aot = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.aot, align 8, !noalias !31053
  %i.aou = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.aou, align 8, !noalias !31053
  %i.aov = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.aov, align 8, !noalias !31053
  %i.aow = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.aow, align 8, !noalias !31053
  call void @_ZN4core9panicking18panic_nounwind_fmt17h622822847ebd61beE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, i1 noundef zeroext false, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206) #83, !noalias !31053
  unreachable

bb.js:                                            ; preds = %bb.jq
  store i64 %.sroa.9.0.copyload.i.i.i, ptr %i.j, align 8, !noalias !31053
  %i.aox = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %.sroa.6.0.copyload.i.i.i, ptr %i.aox, align 8, !noalias !31053
  %i.aoy = call noundef i32 @mdb_put(ptr noundef nonnull %i.cm, i32 noundef %i.zd, ptr noundef nonnull %i.k, ptr noundef nonnull %i.j, i32 noundef 0) #79, !noalias !31053
  %i.aoz = invoke { i32, i32 } @_ZN4heed3mdb10lmdb_error10mdb_result17h91f495da5828afd4E(i32 noundef %i.aoy)
          to label %bb.jv unwind label %bb.jt, !noalias !31053 ; 2 uses

bb.jt:                                            ; preds = %bb.jw, %bb.js
  %i.apa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %cond.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %cond.i.i, label %.body126, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !31347
  br label %.body126

bb.jv:                                            ; preds = %bb.js
  %i.apb = extractvalue { i32, i32 } %i.aoz, 0    ; 2 uses
  %.not137.i.i = icmp eq i32 %i.apb, 22
  br i1 %.not137.i.i, label %bb.jx, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.apc = extractvalue { i32, i32 } %i.aoz, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !31053
  invoke void @"_ZN87_$LT$heed..Error$u20$as$u20$core..convert..From$LT$heed..mdb..lmdb_error..Error$GT$$GT$4from17hea4d5b0dd9c7836fE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, i32 noundef %i.apb, i32 %i.apc)
          to label %bb.jz unwind label %bb.jt, !noalias !31053

bb.jx:                                            ; preds = %bb.jv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !31053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !31053
  %cond88.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %cond88.i.i, label %bb.ke, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !31348
  br label %bb.ke

bb.jz:                                            ; preds = %bb.jw
  %.sroa.039.0.copyload40.i = load i32, ptr %i.i, align 8, !noalias !31349 ; 2 uses
  %.sroa.8.0..sroa_idx41.i = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.sroa.8.0.copyload42.i = load i32, ptr %.sroa.8.0..sroa_idx41.i, align 4, !noalias !31349
  %.sroa.843.0..sroa_idx44.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.843.0.copyload45.i = load ptr, ptr %.sroa.843.0..sroa_idx44.i, align 8, !noalias !31349
  %.sroa.9.0..sroa_idx46.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.9.0.copyload47.i = load ptr, ptr %.sroa.9.0..sroa_idx46.i, align 8, !noalias !31349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !31053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !31053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !31053
  %cond89.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %cond89.i.i, label %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h3f23241c74e91d84E.exit.i", label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !31350
  br label %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h3f23241c74e91d84E.exit.i"

"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h3f23241c74e91d84E.exit.i": ; preds = %bb.ka, %bb.jz
  %.not35.i = icmp eq i32 %.sroa.039.0.copyload40.i, 5
  br i1 %.not35.i, label %bb.ke, label %bb.kb

bb.kb:                                            ; preds = %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h3f23241c74e91d84E.exit.i", %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h3f23241c74e91d84E.exit.thread82.i"
  %.sroa.039.091.i = phi i32 [ 2, %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h3f23241c74e91d84E.exit.thread82.i" ], [ %.sroa.039.0.copyload40.i, %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h3f23241c74e91d84E.exit.i" ]
  %.sroa.8.090.i = phi i32 [ undef, %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h3f23241c74e91d84E.exit.thread82.i" ], [ %.sroa.8.0.copyload42.i, %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h3f23241c74e91d84E.exit.i" ]
  %.sroa.843.089.i = phi ptr [ %.sroa.8.022.i.i, %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h3f23241c74e91d84E.exit.thread82.i" ], [ %.sroa.843.0.copyload45.i, %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h3f23241c74e91d84E.exit.i" ]
  %.sroa.9.088.i = phi ptr [ %i.aop, %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h3f23241c74e91d84E.exit.thread82.i" ], [ %.sroa.9.0.copyload47.i, %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h3f23241c74e91d84E.exit.i" ]
  %i.apd = ptrtoint ptr %.sroa.843.089.i to i64
  br label %bb.kd

bb.kc:                                            ; preds = %.invoke, %.noexc.i.i119, %"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit.i.i104", %bb.gw, %bb.kd
  %i.ape = landingpad { ptr, i32 }
          cleanup
  br label %.body126

.body126:                                         ; preds = %.loopexit.i.i.i.i112, %bb.jj, %bb.jo, %bb.jt, %bb.ju, %bb.kc
  %eh.lpad-body127 = phi { ptr, i32 } [ %i.ape, %bb.kc ], [ %i.aon, %bb.jo ], [ %i.apa, %bb.ju ], [ %lpad.phi.i.i.i.i, %.loopexit.i.i.i.i112 ], [ %lpad.phi.i.i.i.i, %bb.jj ], [ %i.apa, %bb.jt ]
  invoke fastcc void @"_ZN4core3ptr61drop_in_place$LT$index_scheduler..upgrade..v1_30..Network$GT$17h9b45ddbfdd712122E"(ptr noalias noundef align 8 dereferenceable(88) %i.bu) #81
          to label %common.resume unwind label %bb.kh

bb.kd:                                            ; preds = %bb.gx, %bb.kb
  %.sroa.14192.0 = phi ptr [ %.sroa.9.088.i, %bb.kb ], [ %i.zc, %bb.gx ]
  %.sroa.12.0 = phi i64 [ %i.apd, %bb.kb ], [ %.sroa.738.0.copyload.i, %bb.gx ]
  %.sroa.10191.0 = phi i32 [ %.sroa.8.090.i, %bb.kb ], [ %.pre.i.i107, %bb.gx ]
  %.sroa.8190.0 = phi i32 [ %.sroa.039.091.i, %bb.kb ], [ %.pr.i.i105, %bb.gx ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  store i64 127, ptr %i.br, align 8
  %.sroa.2.0..sroa_idx212 = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i32 %.sroa.8190.0, ptr %.sroa.2.0..sroa_idx212, align 8
  %.sroa.3213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  store i32 %.sroa.10191.0, ptr %.sroa.3213.0..sroa_idx, align 4
  %.sroa.4214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store i64 %.sroa.12.0, ptr %.sroa.4214.0..sroa_idx, align 8
  %.sroa.5215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store ptr %.sroa.14192.0, ptr %.sroa.5215.0..sroa_idx, align 8
  %i.apf = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17ha6b155e913d27dcbE"(ptr noalias noundef align 8 captures(address) dereferenceable(344) %i.br)
          to label %bb.kg unwind label %bb.kc

bb.ke:                                            ; preds = %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h3f23241c74e91d84E.exit.i", %bb.jy, %bb.jx
  call fastcc void @"_ZN4core3ptr61drop_in_place$LT$index_scheduler..upgrade..v1_30..Network$GT$17h9b45ddbfdd712122E"(ptr noalias noundef align 8 dereferenceable(88) %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  br label %bb.kf

bb.kf:                                            ; preds = %bb.eg, %bb.kg, %bb.ke, %bb.ef
  %.sroa.0.0 = phi ptr [ %i.mz, %bb.ef ], [ %i.apf, %bb.kg ], [ null, %bb.ke ], [ null, %bb.eg ]
  ret ptr %.sroa.0.0

bb.kg:                                            ; preds = %bb.kd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  call fastcc void @"_ZN4core3ptr61drop_in_place$LT$index_scheduler..upgrade..v1_30..Network$GT$17h9b45ddbfdd712122E"(ptr noalias noundef align 8 dereferenceable(88) %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  br label %bb.kf

bb.kh:                                            ; preds = %bb.kj, %.body126
  %i.apg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82
  unreachable

.thread276:                                       ; preds = %bb.gt, %bb.gs, %.critedge.i.i.i.i, %"_ZN4core3ptr92drop_in_place$LT$$LP$alloc..string..String$C$index_scheduler..upgrade..v1_30..Remote$RP$$GT$17h4b4ed9695d491ef6E.exit.i.i.i.i.i", %.body.i.i.i.i.i.i, %.thread284
  %eh.lpad-body282 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread284 ], [ %.pn.ph.i.i.i.i.i.i, %"_ZN4core3ptr92drop_in_place$LT$$LP$alloc..string..String$C$index_scheduler..upgrade..v1_30..Remote$RP$$GT$17h4b4ed9695d491ef6E.exit.i.i.i.i.i" ], [ %eh.lpad-body.i.i.i.i.i.i, %.body.i.i.i.i.i.i ], [ %.pn.i.i.i.i91, %.critedge.i.i.i.i ], [ %lpad.thr_comm.split-lp.i.i, %bb.gt ], [ %i.ys, %bb.gs ] ; 3 uses
  switch i64 %.sroa.0145.0, label %bb.ki [
    i64 -9223372036854775808, label %.thread293
    i64 0, label %.thread293
  ]

bb.ki:                                            ; preds = %.thread276
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8147.0) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8147.0, i64 noundef %.sroa.0145.0, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !31351
  br label %.thread293

bb.kj:                                            ; preds = %.thread
  %i.aph = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$index_scheduler..upgrade..v1_29..Remote$GT$$GT$17h0006b0039bc1aa83E"(ptr noalias noundef align 8 dereferenceable(24) %i.bv) #81
          to label %.thread293 unwind label %bb.kh

.thread293:                                       ; preds = %.thread276, %.thread276, %bb.ki, %bb.kj
  %.pn.pn264298 = phi { ptr, i32 } [ %i.aph, %bb.kj ], [ %eh.lpad-body282, %.thread276 ], [ %eh.lpad-body282, %.thread276 ], [ %eh.lpad-body282, %bb.ki ] ; 3 uses
  switch i64 %.sroa.8134.0.ph, label %bb.kk [
    i64 -9223372036854775808, label %common.resume
    i64 0, label %common.resume
  ]

bb.kk:                                            ; preds = %.thread293
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0.ph) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.14.0.ph, i64 noundef %.sroa.8134.0.ph, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !31352
  br label %common.resume
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @"_ZN115_$LT$index_scheduler..upgrade..v1_37..MigrateNetwork$u20$as$u20$index_scheduler..upgrade..UpgradeIndexScheduler$GT$11description17hf1746ae02b84fba2E"(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @373, i64 27 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @"_ZN115_$LT$index_scheduler..upgrade..v1_37..MigrateNetwork$u20$as$u20$index_scheduler..upgrade..UpgradeIndexScheduler$GT$12must_upgrade17h8c0716bc9d485611E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %1) unnamed_addr #2 {
"_ZN4core5tuple69_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$$LP$V$C$U$C$T$RP$$GT$2lt17he23ea79208eb1b10E.exit":
  %.val7.i = load i32, ptr %1, align 4, !alias.scope !31356, !noalias !31357, !noundef !57 ; 2 uses
  %i.a = icmp eq i32 %.val7.i, 1
  %i.b = icmp eq i32 %.val7.i, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val.i = load i32, ptr %i.c, align 4
  %i.d = icmp ult i32 %.val.i, 37
  %.sroa.0.1.in.i = select i1 %i.a, i1 %i.d, i1 %i.b
  ret i1 %.sroa.0.1.in.i
}

; Function Attrs: nonlazybind uwtable
define noalias noundef ptr @"_ZN115_$LT$index_scheduler..upgrade..v1_37..MigrateNetwork$u20$as$u20$index_scheduler..upgrade..UpgradeIndexScheduler$GT$7upgrade17h72b9cc5dd6638de6E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 10 uses
  %i.e = alloca [16 x i8], align 8                ; 10 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [48 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [48 x i8], align 8                ; 7 uses
  %i.o = alloca [96 x i8], align 8                ; 5 uses
  %i.p = alloca [72 x i8], align 8                ; 4 uses
  %i.q = alloca [72 x i8], align 8                ; 13 uses
  %i.r = alloca [72 x i8], align 8                ; 4 uses
  %i.s = alloca [128 x i8], align 8               ; 19 uses
  %i.t = alloca [8 x i8], align 8                 ; 3 uses
  %i.u = alloca [72 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [96 x i8], align 8                ; 7 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [72 x i8], align 8                ; 7 uses
  %i.z = alloca [24 x i8], align 8                ; 10 uses
  %i.aa = alloca [72 x i8], align 8               ; 16 uses
  %i.ab = alloca [24 x i8], align 8               ; 10 uses
  %i.ac = alloca [48 x i8], align 8               ; 5 uses
  %i.ad = alloca [24 x i8], align 8               ; 4 uses
  %i.ae = alloca [24 x i8], align 8               ; 9 uses
  %i.af = alloca [24 x i8], align 8               ; 4 uses
  %i.ag = alloca [80 x i8], align 8               ; 14 uses
  %i.ah = alloca [8 x i8], align 8                ; 3 uses
  %i.ai = alloca [48 x i8], align 8               ; 8 uses
  %i.aj = alloca [72 x i8], align 8               ; 6 uses
  %i.ak = alloca [48 x i8], align 8               ; 7 uses
  %i.al = alloca [24 x i8], align 8               ; 10 uses
  %i.am = alloca [72 x i8], align 8               ; 14 uses
  %i.an = alloca [24 x i8], align 8               ; 10 uses
  %i.ao = alloca [24 x i8], align 8               ; 4 uses
  %i.ap = alloca [72 x i8], align 8               ; 12 uses
  %i.aq = alloca [24 x i8], align 8               ; 4 uses
  %i.ar = alloca [24 x i8], align 8               ; 4 uses
  %i.as = alloca [24 x i8], align 8               ; 4 uses
  %i.at = alloca [24 x i8], align 8               ; 4 uses
  %i.au = alloca [24 x i8], align 8               ; 4 uses
  %i.av = alloca [24 x i8], align 8               ; 4 uses
  %i.aw = alloca [24 x i8], align 8               ; 4 uses
  %i.ax = alloca [24 x i8], align 8               ; 4 uses
  %i.ay = alloca [24 x i8], align 8               ; 4 uses
  %i.az = alloca [24 x i8], align 8               ; 4 uses
  %i.ba = alloca [24 x i8], align 8               ; 11 uses
  %i.bb = alloca [16 x i8], align 8               ; 7 uses
  %.sroa.097.i.i.i.i.i.i.i = alloca [7 x i8], align 8 ; 6 uses
  %i.bc = alloca [24 x i8], align 8               ; 8 uses
  %i.bd = alloca [24 x i8], align 8               ; 7 uses
  %i.be = alloca [32 x i8], align 8               ; 7 uses
  %i.bf = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.7.sroa.0.i.i.i.i.i.i.i = alloca [7 x i8], align 1 ; 7 uses
  %i.bg = alloca [32 x i8], align 8               ; 25 uses
  %i.bh = alloca [16 x i8], align 8               ; 6 uses
  %i.bi = alloca [72 x i8], align 8               ; 12 uses
  %i.bj = alloca [24 x i8], align 8               ; 9 uses
  %i.bk = alloca [16 x i8], align 8               ; 7 uses
  %i.bl = alloca [24 x i8], align 8               ; 7 uses
  %i.bm = alloca [16 x i8], align 8               ; 7 uses
  %i.bn = alloca [32 x i8], align 8               ; 7 uses
  %i.bo = alloca [16 x i8], align 8               ; 7 uses
  %i.bp = alloca [24 x i8], align 8               ; 7 uses
  %i.bq = alloca [16 x i8], align 8               ; 7 uses
  %.sroa.046.i.i.i.i.i.i.i = alloca [6 x i8], align 8 ; 6 uses
  %i.br = alloca [24 x i8], align 8               ; 11 uses
  %i.bs = alloca [16 x i8], align 8               ; 12 uses
  %i.bt = alloca [88 x i8], align 8               ; 16 uses
  %i.bu = alloca [96 x i8], align 8               ; 11 uses
  %i.bv = alloca [88 x i8], align 8               ; 14 uses
  %i.bw = alloca [96 x i8], align 8               ; 11 uses
  %.sroa.19.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 6 uses
  %.sroa.18.i.i.i.i.sroa.7.i.i = alloca [56 x i8], align 8 ; 6 uses
  %i.bx = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.11.i.i.sroa.9.i.i = alloca [56 x i8], align 8 ; 7 uses
  %i.by = alloca [88 x i8], align 8               ; 10 uses
  %i.bz = alloca [64 x i8], align 8               ; 22 uses
  %i.ca = alloca [8 x i8], align 8                ; 4 uses
  %.sroa.10.i.sroa.6.i.i = alloca [56 x i8], align 8 ; 6 uses
  %i.cb = alloca [16 x i8], align 8               ; 6 uses
  %i.cc = alloca [16 x i8], align 8               ; 6 uses
  %i.cd = alloca [48 x i8], align 8               ; 7 uses
  %i.ce = alloca [24 x i8], align 8               ; 13 uses
  %i.cf = alloca [48 x i8], align 8               ; 7 uses
  %i.cg = alloca [88 x i8], align 8               ; 17 uses
  %i.ch = alloca [344 x i8], align 8              ; 8 uses
  %i.ci = alloca [344 x i8], align 8              ; 9 uses
  %i.cj = alloca [112 x i8], align 8              ; 20 uses
  %i.ck = alloca [24 x i8], align 8               ; 12 uses
  %.sroa.7.sroa.9 = alloca [24 x i8], align 8     ; 4 uses
  %.sroa.7.sroa.10 = alloca [16 x i8], align 8    ; 4 uses
  %.sroa.20.sroa.9 = alloca [24 x i8], align 8    ; 6 uses
  %.sroa.20.sroa.11 = alloca [16 x i8], align 8   ; 6 uses
  %i.cl = alloca [16 x i8], align 1               ; 2 uses
  %i.cm = alloca [24 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20.sroa.11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32606)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32607)
  %i.cn = load ptr, ptr %1, align 8, !alias.scope !32605, !noalias !32608, !nonnull !57, !noundef !57
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 40 ; 4 uses
  %i.cp = load ptr, ptr %i.co, align 8, !noalias !32609, !nonnull !57, !noundef !57
  %i.cq = load i64, ptr %2, align 8, !range !71, !alias.scope !32610, !noalias !32611, !noundef !57
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cs = trunc nuw i64 %i.cq to i1
  %i.ct = load ptr, ptr %i.cr, align 8, !alias.scope !32610, !noalias !32611, !nonnull !57, !align !61
  %.sroa.05.0.i.i = select i1 %i.cs, ptr %i.cr, ptr %i.ct ; 4 uses
  %i.cu = load ptr, ptr %.sroa.05.0.i.i, align 8, !noalias !32611, !nonnull !57, !noundef !57
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !32609, !nonnull !57, !noundef !57
  %i.cx = icmp eq ptr %i.cp, %i.cw
  %.sink2419.sroa.gep = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sink2419.sroa.gep3808 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sink2419.sroa.gep3810 = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sink2419.sroa.gep3811 = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sink2419.sroa.gep3813 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sink2419.sroa.gep3814 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sink2419.sroa.gep3816 = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sink2419.sroa.gep3817 = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  br i1 %i.cx, label %bb.c, label %bb.b, !prof !58

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !32609
  store ptr @2223, ptr %i.cf, align 8, !noalias !32609
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i64 1, ptr %i.cy, align 8, !noalias !32609
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  store ptr null, ptr %i.cz, align 8, !noalias !32609
  %i.da = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.da, align 8, !noalias !32609
  %i.db = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  store i64 0, ptr %i.db, align 8, !noalias !32609
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.cf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2224) #80, !noalias !32609
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !32609
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !alias.scope !32610, !noalias !32611, !noundef !57 ; 5 uses
  %.not.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i, label %bb.e, label %bb.d, !prof !60

bb.d:                                             ; preds = %bb.c
  %i.de = tail call fastcc i64 @"_ZN4heed4envs3env12Env$LT$T$GT$12raw_open_dbi17h22b14340deb78d57E"(ptr noundef nonnull %i.dd, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @802, i64 21, i32 noundef 0), !noalias !32612 ; 2 uses
  %.sroa.020.0.extract.trunc.i.i.i = trunc i64 %i.de to i32 ; 2 uses
  %.sroa.4.0.extract.shift.i.i.i = lshr i64 %i.de, 32
  %.sroa.4.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.4.0.extract.shift.i.i.i to i32 ; 2 uses
  %.not.i.i.i = icmp eq i32 %.sroa.020.0.extract.trunc.i.i.i, 22
  br i1 %.not.i.i.i, label %bb.h, label %"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit.i.i"

"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit.i.i": ; preds = %bb.d
  call void @"_ZN87_$LT$heed..Error$u20$as$u20$core..convert..From$LT$heed..mdb..lmdb_error..Error$GT$$GT$4from17hea4d5b0dd9c7836fE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ce, i32 noundef %.sroa.020.0.extract.trunc.i.i.i, i32 %.sroa.4.0.extract.trunc.i.i.i), !noalias !32609
  %.pr.i.i = load i32, ptr %i.ce, align 8, !noalias !32609
  switch i32 %.pr.i.i, label %bb.g [
    i32 5, label %"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit._crit_edge.i.i"
    i32 1, label %bb.f
  ]

"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit._crit_edge.i.i": ; preds = %"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit.i.i"
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !noalias !32609
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2201) #80, !noalias !32609
  unreachable

bb.f:                                             ; preds = %"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit.i.i"
  %i.df = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.dg = load i32, ptr %i.df, align 4, !range !143, !noalias !32609, !noundef !57
  %i.dh = icmp eq i32 %i.dg, 1
  br i1 %i.dh, label %bb.ff, label %bb.g

bb.g:                                             ; preds = %bb.f, %"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit.i.i"
  %.sroa.758.8.copyload.i = load i64, ptr %i.ce, align 8, !noalias !32613
  %.sroa.11.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.sroa.11.8.copyload.i = load i64, ptr %.sroa.11.8..sroa_idx.i, align 8, !noalias !32613
  %.sroa.14.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %.sroa.14.8.copyload.i = load i32, ptr %.sroa.14.8..sroa_idx.i, align 8, !noalias !32613
  %.sroa.17.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 20
  %.sroa.17.8.copyload.i = load i32, ptr %.sroa.17.8..sroa_idx.i, align 4, !noalias !32613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !32609
  %i.di = zext i32 %.sroa.17.8.copyload.i to i64
  br label %bb.fh

bb.h:                                             ; preds = %"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit._crit_edge.i.i", %bb.d
  %i.dj = phi i32 [ %.pre.i.i, %"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit._crit_edge.i.i" ], [ %.sroa.4.0.extract.trunc.i.i.i, %bb.d ]
  %i.dk = load ptr, ptr %i.co, align 8, !noalias !32609, !nonnull !57, !noundef !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !32609
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !noalias !32614
  call void @llvm.experimental.noalias.scope.decl(metadata !32615)
end_hunk_6
begin_hunk_7_@"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h801d4cfa44385f5eE":bb.a
          to label %bb.o unwind label %bb.n, !noalias !33400

bb.m:                                             ; preds = %bb.n, %bb.j
  %.pn4.i.i = phi { ptr, i32 } [ %i.bb, %bb.n ], [ %.pn2.i.i, %bb.j ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aj, i64 488
  invoke fastcc void @"_ZN4core3ptr71drop_in_place$LT$milli..update..new..extract..cache..BalancedCaches$GT$17h023338ac4058e0c7E"(ptr noalias noundef readonly align 8 dereferenceable(120) %i.ba) #81
          to label %.body2 unwind label %bb.s, !noalias !33400

bb.n:                                             ; preds = %bb.l
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.o:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 488
  invoke fastcc void @"_ZN4core3ptr71drop_in_place$LT$milli..update..new..extract..cache..BalancedCaches$GT$17h023338ac4058e0c7E"(ptr noalias noundef readonly align 8 dereferenceable(120) %i.bc)
          to label %bb.q unwind label %bb.p, !noalias !33400

.body2:                                           ; preds = %bb.p, %bb.m
  %.pn6.i.i = phi { ptr, i32 } [ %i.bg, %bb.p ], [ %.pn4.i.i, %bb.m ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aj, i64 616
  %.val9.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !33404, !noalias !33400
  %i.be = getelementptr inbounds nuw i8, ptr %i.aj, i64 624
  %.val10.i.i = load i64, ptr %i.be, align 8, !alias.scope !33404, !noalias !33400, !noundef !57
  tail call fastcc void @"_ZN4core3ptr148drop_in_place$LT$std..collections..hash..map..HashMap$LT$u16$C$$LP$core..option..Option$LT$usize$GT$$C$core..option..Option$LT$usize$GT$$RP$$GT$$GT$17hf266dba4aa888f7aE"(ptr %.val9.i.i, i64 %.val10.i.i) #81, !noalias !33405
  %i.bf = icmp eq i64 %i.ak, %i.ai
  br i1 %i.bf, label %.loopexit.i, label %.lr.ph12.i.i

bb.p:                                             ; preds = %bb.o
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body2

bb.q:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aj, i64 616
  %.val.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !33404, !noalias !33400 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aj, i64 624
  %.val8.i.i = load i64, ptr %i.bi, align 8, !alias.scope !33404, !noalias !33400, !noundef !57 ; 4 uses
  %i.bj = icmp eq i64 %.val8.i.i, 0
  br i1 %i.bj, label %"_ZN4core3ptr248drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$GT$$GT$17hcc89bda5399b3cdaE.exit.i.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i: ; preds = %bb.q
  %i.bk = mul i64 %.val8.i.i, 40
  %i.bl = icmp slt i64 %.val8.i.i, 461168601842738790
  tail call void @llvm.assume(i1 %i.bl), !noalias !33400
  %i.bm = and i64 %i.bk, -16                      ; 2 uses
  %i.bn = add i64 %i.bm, 48                       ; 2 uses
  %i.bo = add nsw i64 %.val8.i.i, 17
  %i.bp = add i64 %i.bo, %i.bn                    ; 4 uses
  %i.bq = icmp uge i64 %i.bp, %i.bn
  %i.br = icmp ult i64 %i.bp, 9223372036854775793
  tail call void @llvm.assume(i1 %i.bq), !noalias !33400
  tail call void @llvm.assume(i1 %i.br), !noalias !33400
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !33400
  %i.bs = icmp eq i64 %i.bp, 0
  br i1 %i.bs, label %"_ZN4core3ptr248drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$GT$$GT$17hcc89bda5399b3cdaE.exit.i.i", label %bb.r

bb.r:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i
  %i.bt = sub i64 -48, %i.bm
  %i.bu = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.bt
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bu, i64 noundef %i.bp, i64 noundef range(i64 1, -9223372036854775807) 16) #79, !noalias !33405
  br label %"_ZN4core3ptr248drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$GT$$GT$17hcc89bda5399b3cdaE.exit.i.i"

bb.s:                                             ; preds = %bb.m, %bb.j, %bb.g, %bb.e
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !33405
  unreachable

"_ZN4core3ptr248drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$GT$$GT$17hcc89bda5399b3cdaE.exit.i.i": ; preds = %bb.r, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i, %bb.q, %bb.c, %.lr.ph.i.i
  %i.bw = icmp eq i64 %i.ak, %i.ai
  br i1 %i.bw, label %"_ZN4core3ptr283drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$GT$$u5d$$GT$$GT$17h399148690ccc9e5cE.exit", label %.lr.ph.i.i

.lr.ph12.i.i:                                     ; preds = %.body2, %"_ZN4core3ptr248drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$GT$$GT$17hcc89bda5399b3cdaE.exit8.i.i"
  %.sroa.0.110.i.i = phi i64 [ %i.by, %"_ZN4core3ptr248drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$GT$$GT$17hcc89bda5399b3cdaE.exit8.i.i" ], [ %i.ak, %.body2 ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [672 x i8], ptr %i.ag, i64 %.sroa.0.110.i.i ; 2 uses
  %i.by = add i64 %.sroa.0.110.i.i, 1             ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 664
  %i.ca = load i8, ptr %i.bz, align 1, !range !74, !alias.scope !33406, !noalias !33400, !noundef !57
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.t, label %"_ZN4core3ptr248drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$GT$$GT$17hcc89bda5399b3cdaE.exit8.i.i"

bb.t:                                             ; preds = %.lr.ph12.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  invoke fastcc void @"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$17h64bfcae30fe78c52E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(656) %i.cc)
          to label %"_ZN4core3ptr248drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$GT$$GT$17hcc89bda5399b3cdaE.exit8.i.i" unwind label %bb.u, !noalias !33400

"_ZN4core3ptr248drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$GT$$GT$17hcc89bda5399b3cdaE.exit8.i.i": ; preds = %bb.t, %.lr.ph12.i.i
  %i.cd = icmp eq i64 %i.by, %i.ai
  br i1 %i.cd, label %.loopexit.i, label %.lr.ph12.i.i

bb.u:                                             ; preds = %bb.t
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !33407
  unreachable

.loopexit.i:                                      ; preds = %"_ZN4core3ptr248drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$GT$$GT$17hcc89bda5399b3cdaE.exit8.i.i", %.body2
  %i.cf = shl nuw i64 672, %.sroa.7.011.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ag, i64 noundef %i.cf, i64 noundef 8) #79, !noalias !33400
  store i64 0, ptr %1, align 8, !alias.scope !33381, !noalias !33382
  br label %common.resume

"_ZN4core3ptr283drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$GT$$u5d$$GT$$GT$17h399148690ccc9e5cE.exit": ; preds = %"_ZN4core3ptr248drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$GT$$GT$17hcc89bda5399b3cdaE.exit.i.i"
  %i.cg = shl nuw i64 672, %.sroa.7.011.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ag, i64 noundef %i.cg, i64 noundef 8) #79, !noalias !33400
  br label %.backedge.i.i.i.i.i.i.i.i

.backedge.i.i.i.i.i.i.i.i:                        ; preds = %"_ZN4core3ptr283drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$GT$$u5d$$GT$$GT$17h399148690ccc9e5cE.exit", %.thread.i.i
  %i.ch = icmp eq i64 %.sroa.0.0.add.i.i.i.i.i.i.i.i, 504
  br i1 %i.ch, label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hc620af8bb005a44cE.exit.thread7", label %.thread.i.i

"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hc620af8bb005a44cE.exit.thread7": ; preds = %.backedge.i.i.i.i.i.i.i.i
  store i64 0, ptr %1, align 8, !alias.scope !33381, !noalias !33382
  br label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hc620af8bb005a44cE.exit.thread"

common.resume:                                    ; preds = %bb.v, %.loopexit.i
  %common.resume.op = phi { ptr, i32 } [ %.pn6.i.i, %.loopexit.i ], [ %i.ci, %bb.v ]
  resume { ptr, i32 } %common.resume.op

"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hc620af8bb005a44cE.exit.thread": ; preds = %bb.a, %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hc620af8bb005a44cE.exit.thread7"
  store i64 2, ptr %0, align 8
  br label %bb.z

bb.v:                                             ; preds = %bb.y
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$17h64bfcae30fe78c52E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(656) %i.a)
          to label %common.resume unwind label %bb.ab

bb.w:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17hcea77a1718135217E.exit.i.i
  %.sroa.7.0..sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(648) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(648) %.sroa.7.0..sroa_idx13.i.i, i64 648, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.sroa.0.0.copyload12.i.i, ptr %i.a, align 8, !alias.scope !33408
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33409)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(656) %i.b, ptr noundef nonnull align 8 dereferenceable(656) %i.a, i64 656, i1 false), !alias.scope !33410
  store i64 2, ptr %i.a, align 8, !alias.scope !33411, !noalias !33409
  %i.cj = load i64, ptr %i.b, align 8, !range !72, !noundef !57
  %.not1 = icmp eq i64 %i.cj, 2
  br i1 %.not1, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(656) %0, ptr noundef nonnull align 8 dereferenceable(656) %i.b, i64 656, i1 false)
  call fastcc void @"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$17h64bfcae30fe78c52E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(656) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  invoke fastcc void @"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$17h64bfcae30fe78c52E"(ptr noalias noundef align 8 dereferenceable(656) %i.b)
          to label %bb.aa unwind label %bb.v

bb.z:                                             ; preds = %bb.x, %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hc620af8bb005a44cE.exit.thread"
  ret void

bb.aa:                                            ; preds = %bb.y
  call fastcc void @"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$17h64bfcae30fe78c52E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(656) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ck = icmp eq i64 %i.h, %i.ad
  br i1 %i.ck, label %.thread.i.i.preheader, label %.preheader1.i.i.i.i.i.i.i.preheader

bb.ab:                                            ; preds = %bb.v
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @"_ZN116_$LT$index_scheduler..upgrade..v1_38..FixupIndexTasks$u20$as$u20$index_scheduler..upgrade..UpgradeIndexScheduler$GT$11description17h916887a8f1af1c09E"(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @377, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @"_ZN116_$LT$index_scheduler..upgrade..v1_38..FixupIndexTasks$u20$as$u20$index_scheduler..upgrade..UpgradeIndexScheduler$GT$12must_upgrade17he5de8775963b4822E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %1) unnamed_addr #2 {
bb.a:
  %.val8.i.i = load i32, ptr %1, align 4, !alias.scope !33423, !noalias !33424, !noundef !57
  %cond.i = icmp eq i32 %.val8.i.i, 1
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val6.i.i = load i32, ptr %i.a, align 4
  %i.b = icmp eq i32 %.val6.i.i, 38
  %or.cond = select i1 %cond.i, i1 %i.b, i1 false
  br i1 %or.cond, label %bb.b, label %_ZN4core3ops5range11RangeBounds8contains17h864dca6226b1438dE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !alias.scope !33425, !noalias !33426, !noundef !57
  %i.e = icmp ult i32 %i.d, 2
  br label %_ZN4core3ops5range11RangeBounds8contains17h864dca6226b1438dE.exit

_ZN4core3ops5range11RangeBounds8contains17h864dca6226b1438dE.exit: ; preds = %bb.a, %bb.b
  %.sroa.06.0.i = phi i1 [ false, %bb.a ], [ %i.e, %bb.b ]
  ret i1 %.sroa.06.0.i
}

; Function Attrs: nonlazybind uwtable
define noalias noundef ptr @"_ZN116_$LT$index_scheduler..upgrade..v1_38..FixupIndexTasks$u20$as$u20$index_scheduler..upgrade..UpgradeIndexScheduler$GT$7upgrade17h82a15c39c913f911E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 12 uses
  %i.b = alloca [72 x i8], align 8                ; 12 uses
  %i.c = alloca [72 x i8], align 8                ; 12 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [80 x i8], align 8                ; 16 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [80 x i8], align 8                ; 15 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  %i.k = alloca [80 x i8], align 8                ; 10 uses
  %.sroa.16.i.i.i = alloca [24 x i8], align 8     ; 13 uses
  %.sroa.842.sroa.7.i.i.i = alloca [24 x i8], align 8 ; 6 uses
  %.sroa.7.sroa.6.i.i.i = alloca [24 x i8], align 8 ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 14 uses
  %i.m = alloca [64 x i8], align 8                ; 15 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [64 x i8], align 8                ; 14 uses
  %i.r = alloca [24 x i8], align 8                ; 9 uses
  %i.s = alloca [64 x i8], align 8                ; 9 uses
  %i.t = alloca [24 x i8], align 8                ; 13 uses
  %.sroa.825.i.i.i322 = alloca [16 x i8], align 8 ; 6 uses
  %.sroa.7.i.i.i323 = alloca [16 x i8], align 8   ; 5 uses
  %.sroa.10.i.i.i324 = alloca [16 x i8], align 8  ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 14 uses
  %i.v = alloca [64 x i8], align 8                ; 15 uses
  %i.w = alloca [24 x i8], align 8                ; 9 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [64 x i8], align 8                ; 14 uses
  %i.aa = alloca [24 x i8], align 8               ; 9 uses
  %i.ab = alloca [64 x i8], align 8               ; 9 uses
  %i.ac = alloca [24 x i8], align 8               ; 13 uses
  %.sroa.825.i.i.i = alloca [16 x i8], align 8    ; 6 uses
  %.sroa.7.i.i.i = alloca [16 x i8], align 8      ; 5 uses
  %.sroa.10.i.i.i = alloca [16 x i8], align 8     ; 7 uses
  %i.ad = alloca [24 x i8], align 8               ; 14 uses
  %i.ae = alloca [24 x i8], align 8               ; 8 uses
  %i.af = alloca [32 x i8], align 8               ; 7 uses
  %i.ag = alloca [24 x i8], align 8               ; 11 uses
  %i.ah = alloca [24 x i8], align 8               ; 6 uses
  %i.ai = alloca [24 x i8], align 8               ; 8 uses
  %i.aj = alloca [32 x i8], align 8               ; 7 uses
  %i.ak = alloca [24 x i8], align 8               ; 11 uses
  %i.al = alloca [24 x i8], align 8               ; 6 uses
  %i.am = alloca [32 x i8], align 8               ; 7 uses
  %i.an = alloca [24 x i8], align 8               ; 8 uses
  %i.ao = alloca [24 x i8], align 8               ; 9 uses
  %i.ap = alloca [24 x i8], align 8               ; 11 uses
  %i.aq = alloca [24 x i8], align 8               ; 6 uses
  %i.ar = alloca [344 x i8], align 8              ; 7 uses
  %i.as = alloca [344 x i8], align 8              ; 7 uses
  %i.at = alloca [344 x i8], align 8              ; 7 uses
  %i.au = alloca [792 x i8], align 8              ; 5 uses
  %i.av = alloca [24 x i8], align 8               ; 8 uses
  %i.aw = alloca [344 x i8], align 8              ; 15 uses
  %i.ax = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.10670 = alloca [16 x i8], align 8        ; 6 uses
  %i.ay = alloca [72 x i8], align 8               ; 16 uses
  %i.az = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.10646 = alloca [16 x i8], align 8        ; 6 uses
  %i.ba = alloca [72 x i8], align 8               ; 16 uses
  %i.bb = alloca [24 x i8], align 8               ; 10 uses
  %.sroa.8612.sroa.7 = alloca [24 x i8], align 8  ; 6 uses
  %i.bc = alloca [72 x i8], align 8               ; 16 uses
  %i.bd = alloca [24 x i8], align 8               ; 7 uses
  %i.be = alloca [784 x i8], align 8              ; 11 uses
  %i.bf = alloca [16 x i8], align 8               ; 9 uses
  %i.bg = alloca [24 x i8], align 8               ; 11 uses
  %i.bh = alloca [24 x i8], align 8               ; 10 uses
  %i.bi = alloca [24 x i8], align 8               ; 10 uses
  %i.bj = alloca [24 x i8], align 8               ; 9 uses
  %i.bk = alloca [344 x i8], align 8              ; 22 uses
  %.sroa.6.sroa.17 = alloca [68 x i8], align 4    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.17)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call fastcc void @_ZN15index_scheduler5queue5tasks9TaskQueue3new17h9b33964fd73cd59bE(ptr noalias noundef align 8 captures(address) dereferenceable(344) %i.bk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(24) %2)
  %i.bl = load i64, ptr %i.bk, align 8, !range !80, !noundef !57 ; 2 uses
  %.not = icmp eq i64 %i.bl, 152
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.sroa.0679.0.copyload = load i64, ptr %i.bm, align 8 ; 2 uses
  %.sroa.5680.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %.sroa.5680.0.copyload = load i32, ptr %.sroa.5680.0..sroa_idx, align 8 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.563.sroa.6.0..sroa.563.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 20
  %.sroa.563.sroa.6.0.copyload = load i32, ptr %.sroa.563.sroa.6.0..sroa.563.0..sroa_idx.sroa_idx, align 4
  %.sroa.563.sroa.7.0..sroa.563.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %.sroa.563.sroa.7.0.copyload = load i64, ptr %.sroa.563.sroa.7.0..sroa.563.0..sroa_idx.sroa_idx, align 8
  %.sroa.563.sroa.8.0..sroa.563.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.sroa.563.sroa.10.0..sroa.563.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %.sroa.563.sroa.10.0.copyload = load i64, ptr %.sroa.563.sroa.10.0..sroa.563.0..sroa_idx.sroa_idx, align 8
  %.sroa.563.sroa.11.0..sroa.563.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %.sroa.563.sroa.13.0..sroa.563.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %.sroa.563.sroa.13.0.copyload = load i64, ptr %.sroa.563.sroa.13.0..sroa.563.0..sroa_idx.sroa_idx, align 8
  %.sroa.563.sroa.14.0..sroa.563.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  %.sroa.563.sroa.14.0.copyload = load i32, ptr %.sroa.563.sroa.14.0..sroa.563.0..sroa_idx.sroa_idx, align 8
  %.sroa.563.sroa.15.0..sroa.563.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %.sroa.6.sroa.17, ptr noundef nonnull align 4 dereferenceable(68) %.sroa.563.sroa.15.0..sroa.563.0..sroa_idx.sroa_idx, i64 68, i1 false)
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 136
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.664.0..sroa_idx, i64 208, i1 false)
  %.sroa.2.sroa.12.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 68
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 20
  %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.sroa.2.sroa.5.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.bn = load <2 x i32>, ptr %.sroa.563.sroa.8.0..sroa.563.0..sroa_idx.sroa_idx, align 8
  %.sroa.2.sroa.7.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %.sroa.2.sroa.8.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.bo = load <2 x i32>, ptr %.sroa.563.sroa.11.0..sroa.563.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %.sroa.2.sroa.12.0..sroa.2.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(68) %.sroa.6.sroa.17, i64 68, i1 false)
  store i64 %i.bl, ptr %i.aw, align 8
  store i64 %.sroa.0679.0.copyload, ptr %.sroa.2.0..sroa_idx, align 8
  store i32 %.sroa.5680.0.copyload, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  store i32 %.sroa.563.sroa.6.0.copyload, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx, align 4
  store i64 %.sroa.563.sroa.7.0.copyload, ptr %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  store <2 x i32> %i.bn, ptr %.sroa.2.sroa.5.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  store i64 %.sroa.563.sroa.10.0.copyload, ptr %.sroa.2.sroa.7.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  store <2 x i32> %i.bo, ptr %.sroa.2.sroa.8.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %.sroa.2.sroa.10.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  store i64 %.sroa.563.sroa.13.0.copyload, ptr %.sroa.2.sroa.10.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %.sroa.2.sroa.11.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  store i32 %.sroa.563.sroa.14.0.copyload, ptr %.sroa.2.sroa.11.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %i.bp = call fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17ha6b155e913d27dcbE"(ptr noalias noundef align 8 captures(address) dereferenceable(344) %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.17)
  br label %bb.bk

bb.c:                                             ; preds = %bb.a
  %.sroa.7682.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %.sroa.7682.0.copyload = load i64, ptr %.sroa.7682.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8683.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.sroa.8683.0.copyload = load i32, ptr %.sroa.8683.0..sroa_idx, align 8 ; 2 uses
  %.sroa.10685.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %.sroa.10685.0.copyload = load i64, ptr %.sroa.10685.0..sroa_idx, align 8 ; 2 uses
  %.sroa.11686.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %.sroa.11686.0.copyload = load i32, ptr %.sroa.11686.0..sroa_idx, align 8 ; 2 uses
  %.sroa.13688.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %.sroa.13688.0.copyload = load i64, ptr %.sroa.13688.0..sroa_idx, align 8 ; 3 uses
  %.sroa.14689.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  %.sroa.14689.0.copyload = load i32, ptr %.sroa.14689.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.17)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  store ptr null, ptr %i.bj, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  store i64 0, ptr %i.bq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  store ptr null, ptr %i.bi, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  store i64 0, ptr %i.br, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  store ptr null, ptr %i.bh, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  store i64 0, ptr %i.bs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$4iter17h6add7d9b9fef1befE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bg, i64 %.sroa.0679.0.copyload, i32 %.sroa.5680.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.d unwind label %.thread711

.thread711:                                       ; preds = %bb.e, %bb.jg, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit296", %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit268", %bb.c, %.loopexit902, %bb.i, %.loopexit909
  %.sroa.057.1.ph = phi i8 [ 0, %.loopexit909 ], [ 1, %bb.i ], [ 0, %.loopexit902 ], [ 1, %bb.c ], [ 0, %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit268" ], [ 0, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit296" ], [ 1, %bb.jg ], [ 1, %bb.e ]
  %.sroa.055.1.ph = phi i8 [ 1, %.loopexit909 ], [ 1, %bb.i ], [ 0, %.loopexit902 ], [ 1, %bb.c ], [ 0, %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit268" ], [ 1, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit296" ], [ 1, %bb.jg ], [ 1, %bb.e ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.d:                                             ; preds = %bb.c
  %i.bt = load i32, ptr %i.bg, align 8, !range !145, !noundef !57 ; 2 uses
  %.not95 = icmp eq i32 %i.bt, 5
  br i1 %.not95, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %.sroa.571.0.copyload = load i32, ptr %.sroa.571.0..sroa_idx, align 4
  %.sroa.672.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.672.0.copyload = load ptr, ptr %.sroa.672.0..sroa_idx, align 8
  %.sroa.773.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %.sroa.773.0.copyload = load i8, ptr %.sroa.773.0..sroa_idx, align 8
  %.sroa.874.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 17
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.874.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  store i32 %i.bt, ptr %i.av, align 8
  %.sroa.219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store i32 %.sroa.571.0.copyload, ptr %.sroa.219.0..sroa_idx, align 4
  %.sroa.320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %.sroa.672.0.copyload, ptr %.sroa.320.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i8 %.sroa.773.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bu = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h76d8d0ae0c451a61E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.av)
          to label %bb.jh unwind label %.thread711
end_hunk_7
begin_hunk_8_@_ZN11liquid_core5model5value4view9ValueView9is_scalar17hf746a4529b75bf8aE:"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$liquid_core..model..scalar..ScalarCow$GT$$GT$17hb4dfc7b709b2276fE.exit"
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @"_ZN11liquid_core5model6object112_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$liquid_core..model..object..map..Object$GT$11query_state17haea7d4e90f8dc16dE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0, i8 noundef range(i8 0, 4) %1) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i8 %1, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp eq i64 %i.c, 0
  %.sroa.0.0 = select i1 %i.a, i1 true, i1 %i.d
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN11liquid_core5model6object112_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$liquid_core..model..object..map..Object$GT$8as_debug17h7755a98ab707ec08E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @389, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN11liquid_core5model6object112_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$liquid_core..model..object..map..Object$GT$9as_object17h733f59e16430dc4bE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @75, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @"_ZN11liquid_core5model6object112_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$liquid_core..model..object..map..Object$GT$9type_name17hcddfbd2d725846a6E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @16, i64 6 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @"_ZN11liquid_core5model6scalar77_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$bool$GT$11query_state17h3bdd13325a2e18e3E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, i8 noundef range(i8 0, 4) %1) unnamed_addr #2 {
bb.a:
  switch i8 %1, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.e
    i8 3, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !range !74, !noundef !57
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !range !74, !noundef !57
  %i.c = xor i8 %i.b, 1
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.d = load i8, ptr %0, align 1, !range !74, !noundef !57
  %i.e = xor i8 %i.d, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ %i.a, %bb.b ], [ %i.c, %bb.c ], [ %i.e, %bb.d ], [ 0, %bb.a ]
  %i.f = trunc nuw i8 %.sroa.0.0 to i1
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @"_ZN11liquid_core5model6scalar77_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$bool$GT$6render17hecaf00286af4cd89E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %1) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @390, ptr %i.b, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @"_ZN11liquid_core5model6scalar77_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$bool$GT$6source17hf6ebcb7bb807309dE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %1) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @390, ptr %i.b, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN11liquid_core5model6scalar77_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$bool$GT$8as_debug17h55767c0bcdc5e7ecE"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @34, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN11liquid_core5model6scalar77_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$bool$GT$8to_value17hed9b8ff0a878d22cE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 1), (8, 17)) %0, ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %1) unnamed_addr #18 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !range !74, !noundef !57
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.a, ptr %.sroa.42.0..sroa_idx, align 8
  store i8 0, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN11liquid_core5model6scalar77_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$bool$GT$9as_scalar17h60a3e74b29750454E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 9)) %0, ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %1) unnamed_addr #18 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !range !74, !noundef !57
  store i64 4, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.a, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @"_ZN11liquid_core5model6scalar77_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$bool$GT$9type_name17h134962caebe27026E"(ptr noalias readonly align 1 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @391, i64 7 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$6render17hbd874dbaf56393cbE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @392, ptr %i.b, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$7to_kstr17hbea6430406690d32E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #18 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !57, !align !64, !noundef !57
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !57
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.c, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$8as_debug17h28519b6c9e91a199E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @393, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$9as_scalar17h843cf6f76cd7161aE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #18 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !57, !align !64, !noundef !57
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !57
  store i64 0, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.c, ptr %.sroa.511.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$9type_name17ha1e0b1f7650b76fdE"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @394, i64 6 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @"_ZN120_$LT$index_scheduler..upgrade..v1_38..RemoveOrphanBatches$u20$as$u20$index_scheduler..upgrade..UpgradeIndexScheduler$GT$11description17h9466a80a340e3b51E"(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @397, i64 21 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @"_ZN120_$LT$index_scheduler..upgrade..v1_38..RemoveOrphanBatches$u20$as$u20$index_scheduler..upgrade..UpgradeIndexScheduler$GT$12must_upgrade17h81ad4d19e351bd1fE"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %1) unnamed_addr #2 {
"_ZN4core5tuple69_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$$LP$V$C$U$C$T$RP$$GT$2lt17he23ea79208eb1b10E.exit":
  %.val7.i = load i32, ptr %1, align 4, !alias.scope !36398, !noalias !36399, !noundef !57 ; 2 uses
  %i.a = icmp eq i32 %.val7.i, 1
  %i.b = icmp eq i32 %.val7.i, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val.i = load i32, ptr %i.c, align 4
  %i.d = icmp ult i32 %.val.i, 38
  %.sroa.0.1.in.i = select i1 %i.a, i1 %i.d, i1 %i.b
  ret i1 %.sroa.0.1.in.i
}

; Function Attrs: nonlazybind uwtable
define noalias noundef ptr @"_ZN120_$LT$index_scheduler..upgrade..v1_38..RemoveOrphanBatches$u20$as$u20$index_scheduler..upgrade..UpgradeIndexScheduler$GT$7upgrade17hda38b30c79dde64fE"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [80 x i8], align 8                ; 9 uses
  %i.d = alloca [80 x i8], align 8                ; 14 uses
  %i.e = alloca [48 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [80 x i8], align 8                ; 9 uses
  %i.i = alloca [80 x i8], align 8                ; 14 uses
  %i.j = alloca [48 x i8], align 8                ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [40 x i8], align 8                ; 10 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 10 uses
  %i.o = alloca [48 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 7 uses
  %i.v = alloca [344 x i8], align 8               ; 6 uses
  %i.w = alloca [32 x i8], align 8                ; 7 uses
  %i.x = alloca [344 x i8], align 8               ; 8 uses
  %i.y = alloca [8 x i8], align 8                 ; 6 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [48 x i8], align 8               ; 8 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [32 x i8], align 8               ; 7 uses
  %i.ad = alloca [24 x i8], align 8               ; 5 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [48 x i8], align 8               ; 8 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [32 x i8], align 8               ; 7 uses
  %i.ai = alloca [16 x i8], align 8               ; 10 uses
  %i.aj = alloca [24 x i8], align 8               ; 14 uses
  %i.ak = alloca [4 x i8], align 4                ; 8 uses
  %i.al = alloca [24 x i8], align 8               ; 10 uses
  %i.am = alloca [344 x i8], align 8              ; 7 uses
  %.sroa.7 = alloca [24 x i8], align 8            ; 6 uses
  %i.an = alloca [24 x i8], align 8               ; 11 uses
  %i.ao = alloca [344 x i8], align 8              ; 9 uses
  %.sroa.7.sroa.8 = alloca [100 x i8], align 4    ; 6 uses
  %i.ap = alloca [112 x i8], align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call fastcc void @_ZN15index_scheduler5queue7batches10BatchQueue3new17hf629dc8b3ce4add5E(ptr noalias noundef align 8 captures(address) dereferenceable(344) %i.ao, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(24) %2)
  %i.aq = load i64, ptr %i.ao, align 8, !range !80, !noundef !57 ; 2 uses
  %.not = icmp eq i64 %i.aq, 152
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.0134.0.copyload = load i64, ptr %i.ar, align 8 ; 5 uses
  %.sroa.4135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.4135.0.copyload = load i32, ptr %.sroa.4135.0..sroa_idx, align 8 ; 4 uses
  %.sroa.5136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(100) %.sroa.7.sroa.8, ptr noundef nonnull align 4 dereferenceable(100) %.sroa.5136.0..sroa_idx, i64 100, i1 false)
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sink.sroa.gep688 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sink.sroa.gep690 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sink.sroa.gep691 = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sink.sroa.gep693 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sink.sroa.gep694 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sink.sroa.gep696 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sink.sroa.gep697 = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.7146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 120
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(224) %.sroa.7146.0..sroa_idx, i64 224, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(100) %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(100) %.sroa.7.sroa.8, i64 100, i1 false)
  store i64 %i.aq, ptr %i.x, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %.sroa.0134.0.copyload, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i32 %.sroa.4135.0.copyload, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %i.as = call fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17ha6b155e913d27dcbE"(ptr noalias noundef align 8 captures(address) dereferenceable(344) %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.8)
  br label %bb.bl

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(100) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(100) %.sroa.7.sroa.8, i64 100, i1 false)
  store i64 %.sroa.0134.0.copyload, ptr %i.ap, align 8
  %.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i32 %.sroa.4135.0.copyload, ptr %.sroa.38.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call fastcc void @_ZN15index_scheduler5queue7batches10BatchQueue13all_batch_ids17h8c1f38a9e0411b88E(ptr noalias noundef align 8 captures(address) dereferenceable(344) %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
  %i.at = load i64, ptr %i.am, align 8, !range !80, !noundef !57 ; 2 uses
  %.not230 = icmp eq i64 %i.at, 152
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false)
  br i1 %.not230, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.5152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %.sroa.322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.322.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(312) %.sroa.5152.0..sroa_idx, i64 312, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  %.sroa.2.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx21, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, i64 24, i1 false)
  store i64 %i.at, ptr %i.v, align 8
  %i.av = call fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17ha6b155e913d27dcbE"(ptr noalias noundef align 8 captures(address) dereferenceable(344) %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit327"

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr %1, ptr %i.w, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i32 0, ptr %i.ay, align 8
  store ptr @404, ptr %i.aw, align 8
  store i64 22, ptr %i.ax, align 8
  invoke fastcc void @"_ZN4heed9databases8database49DatabaseOpenOptions$LT$T$C$KC$C$DC$C$C$C$CDUP$GT$6create17h02f55b3dda60d263E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.al, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.w, ptr noalias noundef align 8 dereferenceable(24) %2)
          to label %bb.g unwind label %bb.f

"_ZN4core3ptr229drop_in_place$LT$heed..iterator..iter..RoIter$LT$heed_types..integer..U32$LT$byteorder..BigEndian$GT$$C$heed_types..lazy_decode..LazyDecode$LT$heed_types..serde_json..SerdeJson$LT$meilisearch_types..batches..Batch$GT$$GT$$GT$$GT$17h392fb203f260f4b3E.exit": ; preds = %bb.cv, %bb.cu, %.body287, %bb.as, %bb.f
  %.pn244 = phi { ptr, i32 } [ %i.az, %bb.f ], [ %eh.lpad-body288, %.body287 ], [ %eh.lpad-body288, %bb.as ], [ %.pn.ph, %bb.cu ], [ %.pn.ph, %bb.cv ]
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E"(ptr noalias noundef align 8 dereferenceable(24) %i.an) #81
  resume { ptr, i32 } %.pn244

bb.f:                                             ; preds = %_ZN4heed6cursor8RoCursor3new17h4eb16cdd8c1fe9eeE.exit.i, %bb.m, %bb.l, %bb.j, %bb.n, %bb.h, %bb.e
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr229drop_in_place$LT$heed..iterator..iter..RoIter$LT$heed_types..integer..U32$LT$byteorder..BigEndian$GT$$C$heed_types..lazy_decode..LazyDecode$LT$heed_types..serde_json..SerdeJson$LT$meilisearch_types..batches..Batch$GT$$GT$$GT$$GT$17h392fb203f260f4b3E.exit"

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.ba = load i32, ptr %i.al, align 8, !range !145, !noundef !57 ; 2 uses
  %.not232 = icmp eq i32 %i.ba, 5
  br i1 %.not232, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.4159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %.sroa.4159.0.copyload = load i32, ptr %.sroa.4159.0..sroa_idx, align 4
  %.sroa.5160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.5160.0.copyload = load i64, ptr %.sroa.5160.0..sroa_idx, align 8
  %.sroa.6161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.sroa.237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %.sroa.338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.bb = load <2 x i32>, ptr %.sroa.6161.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i32 %i.ba, ptr %i.u, align 8
  store i32 %.sroa.4159.0.copyload, ptr %.sroa.237.0..sroa_idx, align 4
  store i64 %.sroa.5160.0.copyload, ptr %.sroa.338.0..sroa_idx, align 8
  store <2 x i32> %i.bb, ptr %.sroa.439.0..sroa_idx, align 8
  %i.bc = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h76d8d0ae0c451a61E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.u)
          to label %bb.db unwind label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !noundef !57 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.bg = load i32, ptr %i.bf, align 8, !noundef !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.experimental.noalias.scope.decl(metadata !36458)
  %i.bh = load i64, ptr %2, align 8, !range !71, !alias.scope !36458, !noalias !36459, !noundef !57
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bj = trunc nuw i64 %i.bh to i1
  %i.bk = load ptr, ptr %i.bi, align 8, !alias.scope !36458, !noalias !36459, !nonnull !57, !align !61
  %.sroa.0.0.i = select i1 %i.bj, ptr %i.bi, ptr %i.bk ; 3 uses
  %i.bl = load ptr, ptr %.sroa.0.0.i, align 8, !noalias !36459, !nonnull !57, !noundef !57
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !36460, !nonnull !57, !noundef !57
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = icmp eq i64 %.sroa.0134.0.copyload, %i.bo
  br i1 %i.bp, label %bb.k, label %bb.j, !prof !58

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !36460
  store ptr @2206, ptr %i.o, align 8, !noalias !36460
  %i.bq = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 1, ptr %i.bq, align 8, !noalias !36460
  %i.br = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr null, ptr %i.br, align 8, !noalias !36460
  %i.bs = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.bs, align 8, !noalias !36460
  %i.bt = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 0, ptr %i.bt, align 8, !noalias !36460
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2213) #80
          to label %.noexc unwind label %bb.f
end_hunk_8
begin_hunk_9_@"_ZN122_$LT$$RF$rayon..iter..par_bridge..IterParallelProducer$LT$Iter$GT$$u20$as$u20$rayon..iter..plumbing..UnindexedProducer$GT$9fold_with17hfa3d07dd6b574636E":bb.a
  %i.ae = and i64 %i.ad, 9223372036854775807
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.thread93, label %bb.j, !prof !58

bb.j:                                             ; preds = %.noexc
  %i.ag = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %bb.k unwind label %.split.thread.loopexit ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.ah = xor i1 %i.ag, true
  %i.ai = load atomic i8, ptr %i.j monotonic, align 4, !noalias !36988
  %.not = icmp eq i8 %i.ai, 0
  br i1 %.not, label %bb.l, label %bb.x

.thread93:                                        ; preds = %.noexc
  %i.aj = load atomic i8, ptr %i.j monotonic, align 4, !noalias !36988
  %.not95 = icmp eq i8 %i.aj, 0
  br i1 %.not95, label %bb.l, label %.thread98

.thread98:                                        ; preds = %.thread93
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %2, i64 112, i1 false)
  br label %bb.y

bb.l:                                             ; preds = %.thread93, %bb.k
  %.sroa.01.0.i.i96 = phi i1 [ false, %.thread93 ], [ %i.ah, %bb.k ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36989)
  %i.ak = load i64, ptr %i.k, align 8, !range !71, !alias.scope !36989, !noalias !36990, !noundef !57
  %i.al = trunc nuw i64 %i.ak to i1
  br i1 %i.al, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36991)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36992)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36993)
  %i.am = load i64, ptr %i.n, align 8, !alias.scope !36994, !noalias !36995, !noundef !57
  %i.an = load i64, ptr %i.m, align 8, !alias.scope !36996, !noalias !36997, !noundef !57 ; 2 uses
  %i.ao = icmp eq i64 %i.am, %i.an
  br i1 %i.ao, label %bb.t, label %.preheader1.i.i.i

.preheader1.i.i.i:                                ; preds = %bb.m
  %.promoted2.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !36996, !noalias !36997
  %.promoted3.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !36996, !noalias !36997
  %.promoted.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !36996, !noalias !36997
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.i.i.i, %.preheader1.i.i.i
  %i.ap = phi i64 [ %.promoted.i.i.i, %.preheader1.i.i.i ], [ %i.au, %.loopexit.i.i.i ] ; 3 uses
  %.promoted4.i.i.i = phi i64 [ %.promoted3.i.i.i, %.preheader1.i.i.i ], [ 0, %.loopexit.i.i.i ] ; 3 uses
  %i.aq = phi i64 [ %.promoted2.i.i.i, %.preheader1.i.i.i ], [ %i.av, %.loopexit.i.i.i ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !36994, !noalias !36995, !noundef !57 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %.loopexit.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %bb.n
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ap, i64 %.promoted4.i.i.i)
  %exitcond.not.i.i.i109.not = icmp ult i64 %.promoted4.i.i.i, %i.ap
  br i1 %exitcond.not.i.i.i109.not, label %.lr.ph, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.preheader.i.i.i, %.preheader.preheader.i.i.i, %bb.n
  %i.au = shl i64 %i.ap, 1                        ; 2 uses
  store i64 %i.au, ptr %i.q, align 8, !alias.scope !36996, !noalias !36997
  %i.av = add i64 %i.aq, 1                        ; 2 uses
  store i64 %i.av, ptr %i.o, align 8, !alias.scope !36996, !noalias !36997
  br label %bb.n

.preheader.i.i.i:                                 ; preds = %.lr.ph
  %exitcond.not.i.i.i = icmp eq i64 %i.ay, %umax.i.i.i
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.preheader.i.i.i, %.preheader.i.i.i
  %i.aw = phi i64 [ %i.ay, %.preheader.i.i.i ], [ %.promoted4.i.i.i, %.preheader.preheader.i.i.i ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [112 x i8], ptr %i.as, i64 %i.aw ; 3 uses
  %i.ay = add i64 %i.aw, 1                        ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 104
  %i.ba = load i8, ptr %i.az, align 1, !range !74, !noalias !36998, !noundef !57
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.o, label %.preheader.i.i.i

bb.o:                                             ; preds = %.lr.ph
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 104
  store i64 %i.ay, ptr %i.p, align 8, !alias.scope !36996, !noalias !36997
  %i.bd = add i64 %i.an, 1
  store i64 %i.bd, ptr %i.m, align 8, !alias.scope !36996, !noalias !36997
  store i8 0, ptr %i.bc, align 1, !noalias !36999
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %i.ax, i64 104, i1 false)
  br i1 %.sroa.01.0.i.i96, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.bf = and i64 %i.be, 9223372036854775807
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.q, !prof !58

bb.q:                                             ; preds = %bb.p
  %i.bh = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc16 unwind label %.thread.thread

.noexc16:                                         ; preds = %bb.q
  br i1 %i.bh, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.r

bb.r:                                             ; preds = %.noexc16
  store atomic i8 1, ptr %i.j monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i: ; preds = %bb.r, %.noexc16, %bb.p, %bb.o
  %i.bi = atomicrmw xchg ptr %i.i, i32 0 release, align 4
  %i.bj = icmp eq i32 %i.bi, 2
  br i1 %i.bj, label %bb.s, label %"_ZN4core3ptr381drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$core..iter..adapters..fuse..Fuse$LT$thread_local..IntoIter$LT$core..cell..RefCell$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$$GT$$GT$$GT$$GT$17ha7fa65e0a6ece5acE.exit", !prof !60

bb.s:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.i)
          to label %"_ZN4core3ptr381drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$core..iter..adapters..fuse..Fuse$LT$thread_local..IntoIter$LT$core..cell..RefCell$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$$GT$$GT$$GT$$GT$17ha7fa65e0a6ece5acE.exit" unwind label %.thread.thread

bb.t:                                             ; preds = %bb.m, %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %2, i64 112, i1 false)
  br i1 %.sroa.01.0.i.i96, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i18, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bk = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.bl = and i64 %i.bk, 9223372036854775807
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i18, label %.noexc19, !prof !58

.noexc19:                                         ; preds = %bb.u
  %i.bn = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.bn, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i18, label %bb.v

bb.v:                                             ; preds = %.noexc19
  store atomic i8 1, ptr %i.j monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i18

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i18: ; preds = %bb.v, %.noexc19, %bb.u, %bb.t
  %i.bo = atomicrmw xchg ptr %i.i, i32 0 release, align 4
  %i.bp = icmp eq i32 %i.bo, 2
  br i1 %i.bp, label %bb.w, label %"_ZN4core3ptr810drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$core..iter..adapters..fuse..Fuse$LT$thread_local..IntoIter$LT$core..cell..RefCell$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$$GT$$GT$$GT$$C$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$core..iter..adapters..fuse..Fuse$LT$thread_local..IntoIter$LT$core..cell..RefCell$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$$GT$$GT$$GT$$GT$$GT$$GT$17h261f3262924e967dE.exit34", !prof !60

bb.w:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i18
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.i)
  br label %"_ZN4core3ptr810drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$core..iter..adapters..fuse..Fuse$LT$thread_local..IntoIter$LT$core..cell..RefCell$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$$GT$$GT$$GT$$C$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$core..iter..adapters..fuse..Fuse$LT$thread_local..IntoIter$LT$core..cell..RefCell$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$$GT$$GT$$GT$$GT$$GT$$GT$17h261f3262924e967dE.exit34"

"_ZN4core3ptr381drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$core..iter..adapters..fuse..Fuse$LT$thread_local..IntoIter$LT$core..cell..RefCell$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$$GT$$GT$$GT$$GT$17ha7fa65e0a6ece5acE.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, %bb.s
  %.sroa.041.0.copyload = load ptr, ptr %2, align 8, !nonnull !57, !noundef !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !37000
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.442.0..sroa_idx, i64 96, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.r, ptr noundef nonnull align 8 dereferenceable(96) %i.t, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !37001
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37002)
  call fastcc void @"_ZN9cellulite7builder38_$LT$impl$u20$cellulite..Cellulite$GT$26insert_items_at_level_zero28_$u7b$$u7b$closure$u7d$$u7d$17hac6708055c9b9999E"(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.s, ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.a, ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !37000
  store ptr %.sroa.041.0.copyload, ptr %i.b, align 8, !alias.scope !37002, !noalias !37003
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(104) %i.b, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !37001
  br label %bb.h

.thread.thread:                                   ; preds = %bb.s, %bb.q
  %lpad.thr_comm53 = landingpad { ptr, i32 }
          cleanup
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call fastcc void @"_ZN4core3ptr240drop_in_place$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$17hc0aff3977e932696E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.bq)
  br label %.split.thread

bb.x:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %2, i64 112, i1 false)
  br i1 %i.ag, label %bb.y, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i28

bb.y:                                             ; preds = %.thread98, %bb.x
  %i.br = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !37004
  %i.bs = and i64 %i.br, 9223372036854775807
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i28, label %.noexc32, !prof !58

.noexc32:                                         ; preds = %bb.y
  %i.bu = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.bu, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i28, label %bb.z

bb.z:                                             ; preds = %.noexc32
  store atomic i8 1, ptr %i.j monotonic, align 4, !noalias !37004
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i28

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i28: ; preds = %bb.z, %.noexc32, %bb.y, %bb.x
  %i.bv = atomicrmw xchg ptr %i.i, i32 0 release, align 4, !noalias !37004
  %i.bw = icmp eq i32 %i.bv, 2
  br i1 %i.bw, label %"_ZN4core3ptr381drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$core..iter..adapters..fuse..Fuse$LT$thread_local..IntoIter$LT$core..cell..RefCell$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$$GT$$GT$$GT$$GT$17ha7fa65e0a6ece5acE.exit.sink.split.i29", label %"_ZN4core3ptr810drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$core..iter..adapters..fuse..Fuse$LT$thread_local..IntoIter$LT$core..cell..RefCell$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$$GT$$GT$$GT$$C$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$core..iter..adapters..fuse..Fuse$LT$thread_local..IntoIter$LT$core..cell..RefCell$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$$GT$$GT$$GT$$GT$$GT$$GT$17h261f3262924e967dE.exit34", !prof !60

"_ZN4core3ptr381drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$core..iter..adapters..fuse..Fuse$LT$thread_local..IntoIter$LT$core..cell..RefCell$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$$GT$$GT$$GT$$GT$17ha7fa65e0a6ece5acE.exit.sink.split.i29": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i28
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.i)
  br label %"_ZN4core3ptr810drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$core..iter..adapters..fuse..Fuse$LT$thread_local..IntoIter$LT$core..cell..RefCell$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$$GT$$GT$$GT$$C$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$core..iter..adapters..fuse..Fuse$LT$thread_local..IntoIter$LT$core..cell..RefCell$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$$GT$$GT$$GT$$GT$$GT$$GT$17h261f3262924e967dE.exit34"

"_ZN4core3ptr810drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$core..iter..adapters..fuse..Fuse$LT$thread_local..IntoIter$LT$core..cell..RefCell$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$$GT$$GT$$GT$$C$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$core..iter..adapters..fuse..Fuse$LT$thread_local..IntoIter$LT$core..cell..RefCell$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$$GT$$GT$$GT$$GT$$GT$$GT$17h261f3262924e967dE.exit34": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i28, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i18, %"_ZN4core3ptr381drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$core..iter..adapters..fuse..Fuse$LT$thread_local..IntoIter$LT$core..cell..RefCell$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$$GT$$GT$$GT$$GT$17ha7fa65e0a6ece5acE.exit.sink.split.i29", %bb.w, %bb.g
  ret void

.split.thread:                                    ; preds = %.thread.thread, %.split.thread.loopexit, %.split.thread.loopexit.split-lp
  %.pn845 = phi { ptr, i32 } [ %lpad.thr_comm53, %.thread.thread ], [ %lpad.loopexit, %.split.thread.loopexit ], [ %lpad.loopexit.split-lp, %.split.thread.loopexit.split-lp ]
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call fastcc void @"_ZN4core3ptr240drop_in_place$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$17hc0aff3977e932696E"(ptr noalias noundef readonly align 8 dereferenceable(96) %i.bx)
  resume { ptr, i32 } %.pn845
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef align 8 ptr @"_ZN123_$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17h7402f2c4161a18e2E"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !noundef !57
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37098)
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !37098, !noalias !37099, !nonnull !57, !align !61, !noundef !57 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37103)
  %i.c = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 10 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !37104, !noalias !37105, !noundef !57 ; 3 uses
  %i.e = load i64, ptr %.val.i, align 8, !range !56, !alias.scope !37104, !noalias !37105, !noundef !57
  %i.f = icmp eq i64 %i.e, %i.d
  br i1 %i.f, label %bb.b, label %_ZN10serde_json3ser9Formatter12begin_object17h3f45ddf82171ae94E.exit.i, !prof !60

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, i64 noundef %i.d, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !37105
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !37106, !noalias !37105
  br label %_ZN10serde_json3ser9Formatter12begin_object17h3f45ddf82171ae94E.exit.i

_ZN10serde_json3ser9Formatter12begin_object17h3f45ddf82171ae94E.exit.i: ; preds = %bb.b, %bb.a
  %i.g = phi i64 [ %i.d, %bb.a ], [ %.pre.i.i.i.i.i.i.i, %bb.b ] ; 3 uses
  %i.h = icmp sgt i64 %i.g, -1
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !37106, !noalias !37105, !nonnull !57, !noundef !57
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  store i8 123, ptr %i.k, align 1, !noalias !37107
  %i.l = add nuw i64 %i.g, 1                      ; 4 uses
  store i64 %i.l, ptr %i.c, align 8, !alias.scope !37106, !noalias !37105
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17hff98dc517a76c0ecE.exit.thread"

bb.c:                                             ; preds = %_ZN10serde_json3ser9Formatter12begin_object17h3f45ddf82171ae94E.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37111)
  %i.m = load i64, ptr %.val.i, align 8, !range !56, !alias.scope !37112, !noalias !37113, !noundef !57
  %i.n = icmp eq i64 %i.m, %i.l
  br i1 %i.n, label %bb.d, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17hff98dc517a76c0ecE.exit", !prof !60

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, i64 noundef %i.l, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !37113
  %.pre.i.i.i.i.i.i17.i = load i64, ptr %i.c, align 8, !alias.scope !37114, !noalias !37113
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17hff98dc517a76c0ecE.exit"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17hff98dc517a76c0ecE.exit": ; preds = %bb.c, %bb.d
  %i.o = phi i64 [ %i.l, %bb.c ], [ %.pre.i.i.i.i.i.i17.i, %bb.d ] ; 3 uses
  %i.p = icmp sgt i64 %i.o, -1
  tail call void @llvm.assume(i1 %i.p)
  %i.q = load ptr, ptr %i.i, align 8, !alias.scope !37114, !noalias !37113, !nonnull !57, !noundef !57
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 125, ptr %i.r, align 1, !noalias !37115
  %i.s = add nuw i64 %i.o, 1                      ; 4 uses
  store i64 %i.s, ptr %i.c, align 8, !alias.scope !37114, !noalias !37113
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !57, !noundef !57 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i64, ptr %i.v, align 8, !noundef !57 ; 2 uses
  %.idx = mul nuw nsw i64 %i.w, 104
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx
  %i.y = icmp eq i64 %i.w, 0
  br i1 %i.y, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h6d92c326ceaf6029E.exit", label %bb.e

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17hff98dc517a76c0ecE.exit.thread": ; preds = %_ZN10serde_json3ser9Formatter12begin_object17h3f45ddf82171ae94E.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noundef !57 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.loopexit, label %.thread

.thread:                                          ; preds = %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17hff98dc517a76c0ecE.exit.thread"
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !57, !noundef !57 ; 4 uses
  %.idx56 = mul nuw nsw i64 %i.aa, 104
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx56
  %i.af = getelementptr i8, ptr %i.ad, i64 8
  %.val.peel57 = load ptr, ptr %i.af, align 8
  %i.ag = getelementptr i8, ptr %i.ad, i64 16
  %.val9.peel58 = load i64, ptr %i.ag, align 8
  br label %bb.g

bb.e:                                             ; preds = %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17hff98dc517a76c0ecE.exit"
  %i.ah = getelementptr i8, ptr %i.u, i64 8
  %.val.peel = load ptr, ptr %i.ah, align 8
  %i.ai = getelementptr i8, ptr %i.u, i64 16
  %.val9.peel = load i64, ptr %i.ai, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37119)
  %i.aj = load i64, ptr %.val.i, align 8, !range !56, !alias.scope !37120, !noalias !37121, !noundef !57
  %i.ak = icmp eq i64 %i.aj, %i.s
  br i1 %i.ak, label %bb.f, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.peel", !prof !60

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, i64 noundef %i.s, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !37121, !inline_history !37055
  %.pre.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.c, align 8, !alias.scope !37122, !noalias !37121
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.peel"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.peel": ; preds = %bb.f, %bb.e
  %i.al = phi i64 [ %i.s, %bb.e ], [ %.pre.i.i.i.i.i.i.i.i.peel, %bb.f ] ; 3 uses
  %i.am = icmp sgt i64 %i.al, -1
  tail call void @llvm.assume(i1 %i.am)
  %i.an = load ptr, ptr %i.i, align 8, !alias.scope !37122, !noalias !37121, !nonnull !57, !noundef !57
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 44, ptr %i.ao, align 1, !noalias !37123
  %i.ap = add nuw i64 %i.al, 1
  store i64 %i.ap, ptr %i.c, align 8, !alias.scope !37122, !noalias !37121
  br label %bb.g

bb.g:                                             ; preds = %.thread, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.peel"
  %.val9.peel60 = phi i64 [ %.val9.peel58, %.thread ], [ %.val9.peel, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.peel" ]
  %.val.peel59 = phi ptr [ %.val.peel57, %.thread ], [ %.val.peel, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.peel" ] ; 2 uses
  %i.aq = phi ptr [ %i.ad, %.thread ], [ %i.u, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.peel" ] ; 2 uses
  %i.ar = phi ptr [ %i.ae, %.thread ], [ %i.x, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.peel" ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.peel59) ]
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.peel59, i64 noundef %.val9.peel60)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37127)
  %i.at = load i64, ptr %i.c, align 8, !alias.scope !37128, !noalias !37129, !noundef !57 ; 3 uses
  %i.au = load i64, ptr %.val.i, align 8, !range !56, !alias.scope !37128, !noalias !37129, !noundef !57
  %i.av = icmp eq i64 %i.au, %i.at
  br i1 %i.av, label %bb.h, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17hfae286a944c26dd8E.exit.peel, !prof !60

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, i64 noundef %i.at, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !37129, !inline_history !37072
  %.pre.i.i.i.i.i.i.i8.i.peel = load i64, ptr %i.c, align 8, !alias.scope !37130, !noalias !37129
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17hfae286a944c26dd8E.exit.peel

_ZN10serde_core3ser12SerializeMap15serialize_entry17hfae286a944c26dd8E.exit.peel: ; preds = %bb.h, %bb.g
  %i.aw = phi i64 [ %i.at, %bb.g ], [ %.pre.i.i.i.i.i.i.i8.i.peel, %bb.h ] ; 3 uses
  %i.ax = icmp sgt i64 %i.aw, -1
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = load ptr, ptr %i.i, align 8, !alias.scope !37130, !noalias !37129, !nonnull !57, !noundef !57
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw
  store i8 58, ptr %i.az, align 1, !noalias !37131
  %i.ba = add nuw i64 %i.aw, 1
  store i64 %i.ba, ptr %i.c, align 8, !alias.scope !37130, !noalias !37129
  %i.bb = tail call fastcc noalias noundef align 8 ptr @"_ZN10serde_json5value3ser81_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$serde_json..value..Value$GT$9serialize17h7f3ccc18e7f28084E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.as, ptr noalias noundef align 8 dereferenceable(8) %1), !noalias !37132, !inline_history !37072 ; 2 uses
  %.not8.peel = icmp eq ptr %i.bb, null
  br i1 %.not8.peel, label %.peel.next, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h6d92c326ceaf6029E.exit"

.peel.next:                                       ; preds = %_ZN10serde_core3ser12SerializeMap15serialize_entry17hfae286a944c26dd8E.exit.peel, %_ZN10serde_core3ser12SerializeMap15serialize_entry17hfae286a944c26dd8E.exit
  %.pn = phi ptr [ %.sroa.026.0, %_ZN10serde_core3ser12SerializeMap15serialize_entry17hfae286a944c26dd8E.exit ], [ %i.aq, %_ZN10serde_core3ser12SerializeMap15serialize_entry17hfae286a944c26dd8E.exit.peel ] ; 4 uses
  %.sroa.026.0 = getelementptr inbounds nuw i8, ptr %.pn, i64 104 ; 2 uses
  %i.bc = icmp eq ptr %.sroa.026.0, %i.ar
  br i1 %i.bc, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %.peel.next
  %i.bd = getelementptr inbounds nuw i8, ptr %.pn, i64 128
  %i.be = getelementptr i8, ptr %.pn, i64 112
  %.val = load ptr, ptr %i.be, align 8            ; 2 uses
  %i.bf = getelementptr i8, ptr %.pn, i64 120
  %.val9 = load i64, ptr %i.bf, align 8
  %.val.i.i = load ptr, ptr %1, align 8, !noalias !37133, !nonnull !57, !noundef !57 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37137)
  %i.bg = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16 ; 3 uses
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !37138, !noalias !37121, !noundef !57 ; 3 uses
  %i.bi = load i64, ptr %.val.i.i, align 8, !range !56, !alias.scope !37138, !noalias !37121, !noundef !57
  %i.bj = icmp eq i64 %i.bi, %i.bh
  br i1 %i.bj, label %bb.j, label %bb.k, !prof !60

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, i64 noundef %i.bh, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !37121, !inline_history !37055
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.bg, align 8, !alias.scope !37139, !noalias !37121
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.bk = phi i64 [ %i.bh, %bb.i ], [ %.pre.i.i.i.i.i.i.i.i, %bb.j ] ; 3 uses
  %i.bl = icmp sgt i64 %i.bk, -1
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !37139, !noalias !37121, !nonnull !57, !noundef !57
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bk
  store i8 44, ptr %i.bo, align 1, !noalias !37140
  %i.bp = add nuw i64 %i.bk, 1
  store i64 %i.bp, ptr %i.bg, align 8, !alias.scope !37139, !noalias !37121
  %.val11.pre.i.i = load ptr, ptr %1, align 8, !noalias !37133
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val11.pre.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val, i64 noundef %.val9)
  %.val.i7.i = load ptr, ptr %1, align 8, !noalias !37141, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37145)
  %i.bq = getelementptr inbounds nuw i8, ptr %.val.i7.i, i64 16 ; 3 uses
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !37146, !noalias !37129, !noundef !57 ; 3 uses
  %i.bs = load i64, ptr %.val.i7.i, align 8, !range !56, !alias.scope !37146, !noalias !37129, !noundef !57
  %i.bt = icmp eq i64 %i.bs, %i.br
  br i1 %i.bt, label %bb.l, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17hfae286a944c26dd8E.exit, !prof !60

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i7.i, i64 noundef %i.br, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !37129, !inline_history !37072
end_hunk_9
begin_hunk_10_@"_ZN124_$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h86fff4cbad95aeb0E":bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !37317
  unreachable

"_ZN189_$LT$$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$u20$as$u20$serde_core..de..Deserialize$GT$..deserialize..Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h2d63b2cce32f78abE.exit.i": ; preds = %bb.u, %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h275f1b5bd0cd1e1eE.exit.i.i"
  %.sroa.038.0.i = phi i64 [ -9223372036854775808, %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h275f1b5bd0cd1e1eE.exit.i.i" ], [ %.sroa.038.0.copyload39.i, %bb.u ]
  %.sroa.7.0.i = phi ptr [ %i.bo, %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h275f1b5bd0cd1e1eE.exit.i.i" ], [ %.sroa.7.0.copyload41.i, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !37312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !37307
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !37307
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !37307
  %i.ce = load i8, ptr %i.al, align 8, !range !74, !alias.scope !37296, !noalias !37295, !noundef !57
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.aa, label %bb.z

bb.y:                                             ; preds = %bb.l
  %.val27.i = load i64, ptr %i.p, align 8, !alias.scope !37296, !noalias !37295, !noundef !57
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val28.i = load i64, ptr %i.cg, align 8, !alias.scope !37296, !noalias !37295, !noundef !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !37325
  store i64 24, ptr %i.b, align 8, !noalias !37307
  %i.ch = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error6syntax17hd0fb411d419d3392E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %.val27.i, i64 noundef %.val28.i), !noalias !37326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !37325
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ch, ptr %i.ci, align 8, !alias.scope !37295, !noalias !37296
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !37295, !noalias !37296
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_map17h4a92ff9eefa18b02E.exit"

bb.z:                                             ; preds = %"_ZN189_$LT$$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$u20$as$u20$serde_core..de..Deserialize$GT$..deserialize..Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h2d63b2cce32f78abE.exit.i"
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 89 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !alias.scope !37296, !noalias !37295, !noundef !57
  %i.cl = add i8 %i.ck, 1
  store i8 %i.cl, ptr %i.cj, align 1, !alias.scope !37296, !noalias !37295
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %"_ZN189_$LT$$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$u20$as$u20$serde_core..de..Deserialize$GT$..deserialize..Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h2d63b2cce32f78abE.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !37307
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !37307
  store i64 %.sroa.038.0.i, ptr %i.k, align 8, !noalias !37307
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.sroa.7.0.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !37307
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.i, i64 56, i1 false), !noalias !37307
  %i.cm = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17haeec60909f4f4b33E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.ac unwind label %bb.ab, !noalias !37295 ; 10 uses

bb.ab:                                            ; preds = %bb.aa
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr152drop_in_place$LT$core..result..Result$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$C$serde_json..error..Error$GT$$GT$17h111a2ee26c636724E"(ptr noalias noundef align 8 dereferenceable(72) %i.k) #81
          to label %common.resume.i unwind label %bb.ag, !noalias !37295

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.l, ptr noundef nonnull align 8 dereferenceable(72) %i.k, i64 72, i1 false), !noalias !37307
  %i.co = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  store ptr %i.cm, ptr %i.co, align 8, !noalias !37307
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !37307
  %i.cp = load i64, ptr %i.l, align 8, !range !83, !noalias !37307, !noundef !57 ; 2 uses
  %i.cq = icmp eq i64 %i.cp, -9223372036854775808
  br i1 %i.cq, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not.i = icmp eq ptr %i.cm, null
  br i1 %.not.i, label %bb.am, label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.cr = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !37307, !nonnull !57, !align !61, !noundef !57
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  %.not67.i = icmp eq ptr %i.cm, null
  br i1 %.not67.i, label %.thread61.i, label %bb.ah

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !37327)
  call void @llvm.experimental.noalias.scope.decl(metadata !37328)
  call void @llvm.experimental.noalias.scope.decl(metadata !37329)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.val1.i.i.i.i = load i64, ptr %i.ct, align 8, !alias.scope !37330, !noalias !37307, !noundef !57 ; 4 uses
  %i.cu = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.cu, label %"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hd649b7ceafe66e09E.exit.i.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i.i: ; preds = %bb.af
  %i.cv = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.val.i.i.i.i = load ptr, ptr %i.cv, align 8, !alias.scope !37330, !noalias !37307, !nonnull !57, !noundef !57
  %i.cw = shl i64 %.val1.i.i.i.i, 3
  %i.cx = icmp slt i64 %.val1.i.i.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.cx), !noalias !37329
  %i.cy = and i64 %i.cw, -16                      ; 2 uses
  %i.cz = add i64 %i.cy, 16                       ; 2 uses
  %i.da = add nsw i64 %.val1.i.i.i.i, 17
  %i.db = add i64 %i.da, %i.cz                    ; 3 uses
  %i.dc = icmp uge i64 %i.db, %i.cz
  call void @llvm.assume(i1 %i.dc), !noalias !37329
  %i.dd = icmp ult i64 %i.db, 9223372036854775793
  call void @llvm.assume(i1 %i.dd), !noalias !37329
  %i.de = sub nuw nsw i64 -16, %i.cy
  %i.df = getelementptr inbounds i8, ptr %.val.i.i.i.i, i64 %i.de
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.df, i64 noundef %i.db, i64 noundef range(i64 1, -9223372036854775807) 16) #79, !noalias !37331, !inline_history !92
  br label %"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hd649b7ceafe66e09E.exit.i.i"

"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hd649b7ceafe66e09E.exit.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i.i, %bb.af
  call fastcc void @"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17h737a762b1bd6a592E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.l), !noalias !37295, !inline_history !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !37307
  br label %bb.al

bb.ag:                                            ; preds = %bb.ab
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !37295
  unreachable

.thread61.i:                                      ; preds = %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i", %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !37307
  br label %bb.al

bb.ah:                                            ; preds = %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !37332)
  call void @llvm.experimental.noalias.scope.decl(metadata !37333)
  %i.dh = load i64, ptr %i.cm, align 8, !range !88, !alias.scope !37334, !noalias !37335, !noundef !57
  switch i64 %i.dh, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i" [
    i64 0, label %bb.ai
    i64 1, label %bb.aj
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.di = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %.val1.i.i.i.i32.i = load i64, ptr %i.di, align 8, !alias.scope !37334, !noalias !37335, !noundef !57 ; 2 uses
  %i.dj = icmp eq i64 %.val1.i.i.i.i32.i, 0
  br i1 %i.dj, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i": ; preds = %bb.ai
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %.val.i.i.i.i33.i = load ptr, ptr %i.dk, align 8, !alias.scope !37334, !noalias !37335, !nonnull !57, !noundef !57
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i33.i, i64 noundef %.val1.i.i.i.i32.i, i64 noundef 1) #79, !noalias !37336
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i"

bb.aj:                                            ; preds = %bb.ah
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h17d36f2cee8d0937E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.dl)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i" unwind label %bb.ak, !noalias !37335

bb.ak:                                            ; preds = %bb.aj
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cm, i64 noundef 40, i64 noundef 8) #79, !noalias !37335
  br label %common.resume.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i": ; preds = %bb.aj, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i", %bb.ai, %bb.ah
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cm, i64 noundef 40, i64 noundef 8) #79, !noalias !37335
  br label %.thread61.i

bb.al:                                            ; preds = %.thread61.i, %"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hd649b7ceafe66e09E.exit.i.i", %bb.k
  %.sroa.9.2.i = phi ptr [ %i.cm, %"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hd649b7ceafe66e09E.exit.i.i" ], [ %i.ao, %bb.k ], [ %i.cs, %.thread61.i ]
  %.val29.i = load i64, ptr %i.p, align 8, !alias.scope !37296, !noalias !37295
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val30.i = load i64, ptr %i.dn, align 8, !alias.scope !37296, !noalias !37295
  %i.do = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h3b4979117a0d89efE(ptr noalias noundef nonnull align 8 %.sroa.9.2.i, i64 %.val29.i, i64 %.val30.i), !noalias !37295
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.do, ptr %i.dp, align 8, !alias.scope !37295, !noalias !37296
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !37295, !noalias !37296
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_map17h4a92ff9eefa18b02E.exit"

bb.am:                                            ; preds = %bb.ad
  %.sroa.211.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.211.0.copyload.i = load ptr, ptr %.sroa.211.0..sroa_idx.i, align 8, !noalias !37307
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.318.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.318.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3.0..sroa_idx.i, i64 56, i1 false), !noalias !37296
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !37307
  store i64 %i.cp, ptr %0, align 8, !alias.scope !37295, !noalias !37296
  %.sroa.217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.211.0.copyload.i, ptr %.sroa.217.0..sroa_idx.i, align 8, !alias.scope !37295, !noalias !37296
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_map17h4a92ff9eefa18b02E.exit"

"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_map17h4a92ff9eefa18b02E.exit": ; preds = %bb.al, %bb.am, %bb.i, %bb.y
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @"_ZN126_$LT$index_scheduler..upgrade..v1_50..MigrateDynamicSearchRules$u20$as$u20$index_scheduler..upgrade..UpgradeIndexScheduler$GT$11description17h9d8000bc937e6d06E"(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @425, i64 34 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @"_ZN126_$LT$index_scheduler..upgrade..v1_50..MigrateDynamicSearchRules$u20$as$u20$index_scheduler..upgrade..UpgradeIndexScheduler$GT$12must_upgrade17hde1d336a920f26f2E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %1) unnamed_addr #2 {
"_ZN4core5tuple69_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$$LP$V$C$U$C$T$RP$$GT$2lt17he23ea79208eb1b10E.exit":
  %.val7.i = load i32, ptr %1, align 4, !alias.scope !37340, !noalias !37341, !noundef !57 ; 2 uses
  %i.a = icmp eq i32 %.val7.i, 1
  %i.b = icmp eq i32 %.val7.i, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val.i = load i32, ptr %i.c, align 4
  %i.d = icmp ult i32 %.val.i, 50
  %.sroa.0.1.in.i = select i1 %i.a, i1 %i.d, i1 %i.b
  ret i1 %.sroa.0.1.in.i
}

; Function Attrs: nonlazybind uwtable
define noalias noundef ptr @"_ZN126_$LT$index_scheduler..upgrade..v1_50..MigrateDynamicSearchRules$u20$as$u20$index_scheduler..upgrade..UpgradeIndexScheduler$GT$7upgrade17ha3c8c9bfff05e188E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [208 x i8], align 8               ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [208 x i8], align 8               ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [344 x i8], align 8               ; 12 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %i.k = alloca [48 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 16               ; 8 uses
  %i.m = alloca [48 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 2 uses
  %i.o = alloca [96 x i8], align 8                ; 2 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [344 x i8], align 8               ; 5 uses
  %i.r = alloca [344 x i8], align 8               ; 8 uses
  %.sroa.5123 = alloca [16 x i8], align 8         ; 4 uses
  %i.s = alloca [344 x i8], align 8               ; 8 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [344 x i8], align 8               ; 6 uses
  %i.v = alloca [344 x i8], align 8               ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [16 x i8], align 4                ; 4 uses
  %i.y = alloca [784 x i8], align 8               ; 19 uses
  %i.z = alloca [344 x i8], align 8               ; 6 uses
  %i.aa = alloca [192 x i8], align 8              ; 7 uses
  %i.ab = alloca [288 x i8], align 8              ; 11 uses
  %i.ac = alloca [168 x i8], align 8              ; 14 uses
  %i.ad = alloca [32 x i8], align 8               ; 10 uses
  %.sroa.8193 = alloca [312 x i8], align 8        ; 2 uses
  %i.ae = alloca [344 x i8], align 8              ; 7 uses
  %.sroa.6 = alloca [128 x i8], align 8           ; 6 uses
  %i.af = alloca [128 x i8], align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call fastcc void @_ZN15index_scheduler5queue5tasks9TaskQueue3new17h9b33964fd73cd59bE(ptr noalias noundef align 8 captures(address) dereferenceable(344) %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(24) %2)
  %i.ag = load i64, ptr %i.ae, align 8, !range !80, !noundef !57 ; 2 uses
  %.not = icmp eq i64 %i.ag, 152
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(128) %i.ah, i64 128, i1 false)
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.689.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 136
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.689.0..sroa_idx, i64 208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.6, i64 128, i1 false)
  store i64 %i.ag, ptr %i.v, align 8
  %i.ai = call fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17ha6b155e913d27dcbE"(ptr noalias noundef align 8 captures(address) dereferenceable(344) %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.au

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.af, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.6, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37423)
  %i.aj = load ptr, ptr %1, align 8, !alias.scope !37421, !noalias !37424, !nonnull !57, !noundef !57
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !37425, !nonnull !57, !noundef !57
  %i.am = load i64, ptr %2, align 8, !range !71, !alias.scope !37426, !noalias !37427, !noundef !57
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ao = trunc nuw i64 %i.am to i1
  %i.ap = load ptr, ptr %i.an, align 8, !alias.scope !37426, !noalias !37427, !nonnull !57, !align !61
  %.sroa.0.0.i.i = select i1 %i.ao, ptr %i.an, ptr %i.ap ; 3 uses
  %i.aq = load ptr, ptr %.sroa.0.0.i.i, align 8, !noalias !37427, !nonnull !57, !noundef !57
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !37425, !nonnull !57, !noundef !57
  %i.at = icmp eq ptr %i.al, %i.as
  br i1 %i.at, label %bb.e, label %bb.d, !prof !58

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !37425
  store ptr @2223, ptr %i.m, align 8, !noalias !37425
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 1, ptr %i.au, align 8, !noalias !37425
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr null, ptr %i.av, align 8, !noalias !37425
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.aw, align 8, !noalias !37425
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 0, ptr %i.ax, align 8, !noalias !37425
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2225) #80, !noalias !37425
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !37425
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !37426, !noalias !37427, !noundef !57 ; 4 uses
  %.not.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i, label %bb.g, label %bb.f, !prof !60

bb.f:                                             ; preds = %bb.e
  %i.ba = tail call fastcc i64 @"_ZN4heed4envs3env12Env$LT$T$GT$12raw_open_dbi17h22b14340deb78d57E"(ptr noundef nonnull %i.az, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @828, i64 20, i32 noundef 262144), !noalias !37428 ; 2 uses
  %.sroa.020.0.extract.trunc.i.i.i = trunc i64 %i.ba to i32 ; 2 uses
  %.sroa.4.0.extract.shift.i.i.i = lshr i64 %i.ba, 32
  %.sroa.4.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.4.0.extract.shift.i.i.i to i32 ; 2 uses
  %.not.i.i.i = icmp eq i32 %.sroa.020.0.extract.trunc.i.i.i, 22
  br i1 %.not.i.i.i, label %bb.i, label %"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit.i.i"

"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit.i.i": ; preds = %bb.f
  call void @"_ZN87_$LT$heed..Error$u20$as$u20$core..convert..From$LT$heed..mdb..lmdb_error..Error$GT$$GT$4from17hea4d5b0dd9c7836fE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, i32 noundef %.sroa.020.0.extract.trunc.i.i.i, i32 %.sroa.4.0.extract.trunc.i.i.i), !noalias !37425
  %i.bb = load i32, ptr %i.l, align 16, !noalias !37425
  %.not3.i.i = icmp eq i32 %i.bb, 5
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !noalias !37429
  br i1 %.not3.i.i, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2201) #80, !noalias !37425
  unreachable

bb.h:                                             ; preds = %"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit.i.i"
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.bc = load <2 x i32>, ptr %.sroa.10.0..sroa_idx.i, align 16, !noalias !37429
  %i.bd = load <2 x i64>, ptr %i.l, align 16, !noalias !37429
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !37425
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i64 127, ptr %i.u, align 8
  store <2 x i64> %i.bd, ptr %.sroa.216.0..sroa_idx, align 8
  store <2 x i32> %i.bc, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %i.be = call fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17ha6b155e913d27dcbE"(ptr noalias noundef align 8 captures(address) dereferenceable(344) %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.au

bb.i:                                             ; preds = %bb.f, %"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit.i.i"
  %i.bf = phi i32 [ %.sroa.4.0.extract.trunc.i.i.i, %bb.f ], [ %.pre.i.i, %"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit.i.i" ] ; 2 uses
  %i.bg = load ptr, ptr %i.ak, align 8, !noalias !37425, !nonnull !57, !noundef !57 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !37425
  %i.bh = load ptr, ptr %.sroa.0.0.i.i, align 8, !noalias !37430, !nonnull !57, !noundef !57
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !37431, !nonnull !57, !noundef !57
  %i.bk = icmp eq ptr %i.bg, %i.bj
  br i1 %i.bk, label %bb.k, label %bb.j, !prof !58

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !37431
  store ptr @2206, ptr %i.k, align 8, !noalias !37431
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 1, ptr %i.bl, align 8, !noalias !37431
  %i.bm = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr null, ptr %i.bm, align 8, !noalias !37431
  %i.bn = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.bn, align 8, !noalias !37431
  %i.bo = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 0, ptr %i.bo, align 8, !noalias !37431
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2213) #80, !noalias !37431
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !37431
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !37432
  store ptr null, ptr %i.i, align 8, !noalias !37432
  %i.bp = call noundef i32 @mdb_cursor_open(ptr noundef nonnull %i.az, i32 noundef %i.bf, ptr noundef nonnull %i.i) #79, !noalias !37432
  %i.bq = call { i32, i32 } @_ZN4heed3mdb10lmdb_error10mdb_result17h91f495da5828afd4E(i32 noundef %i.bp), !noalias !37432 ; 2 uses
  %i.br = extractvalue { i32, i32 } %i.bq, 0      ; 2 uses
  %.not6.i.i = icmp eq i32 %i.br, 22
  br i1 %.not6.i.i, label %_ZN4heed6cursor8RoCursor3new17h4eb16cdd8c1fe9eeE.exit.thread.i, label %_ZN4heed6cursor8RoCursor3new17h4eb16cdd8c1fe9eeE.exit.i

_ZN4heed6cursor8RoCursor3new17h4eb16cdd8c1fe9eeE.exit.thread.i: ; preds = %bb.k
  %i.bs = load ptr, ptr %i.i, align 8, !noalias !37432, !noundef !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !37432
  br label %bb.m

_ZN4heed6cursor8RoCursor3new17h4eb16cdd8c1fe9eeE.exit.i: ; preds = %bb.k
  %i.bt = extractvalue { i32, i32 } %i.bq, 1
  call void @"_ZN87_$LT$heed..Error$u20$as$u20$core..convert..From$LT$heed..mdb..lmdb_error..Error$GT$$GT$4from17hea4d5b0dd9c7836fE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, i32 noundef %i.br, i32 %i.bt), !noalias !37431
  %.pr.i = load i32, ptr %i.j, align 8, !noalias !37431 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !37432
  %.not.i = icmp eq i32 %.pr.i, 5
  br i1 %.not.i, label %_ZN4heed6cursor8RoCursor3new17h4eb16cdd8c1fe9eeE.exit._crit_edge.i, label %bb.l

_ZN4heed6cursor8RoCursor3new17h4eb16cdd8c1fe9eeE.exit._crit_edge.i: ; preds = %_ZN4heed6cursor8RoCursor3new17h4eb16cdd8c1fe9eeE.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !37431
  br label %bb.m

bb.l:                                             ; preds = %_ZN4heed6cursor8RoCursor3new17h4eb16cdd8c1fe9eeE.exit.i
  %.sroa.6195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %.sroa.6195.0.copyload = load i32, ptr %.sroa.6195.0..sroa_idx, align 4, !noalias !37433
  %.sroa.7196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.7196.0.copyload = load ptr, ptr %.sroa.7196.0..sroa_idx, align 8, !noalias !37433
  %.sroa.10197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.10197.0.copyload = load i8, ptr %.sroa.10197.0..sroa_idx, align 8, !noalias !37433
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 17
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.0..sroa_idx, i64 7, i1 false)
end_hunk_10
begin_hunk_11_@"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h7fbe3620c23e3074E":bb.a

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9660f7607dd08246E.exit", label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !70884
  %i.c = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, 9) 1) #79, !noalias !70884 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9660f7607dd08246E.exit"

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4878) #80, !noalias !70885
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9660f7607dd08246E.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %bb.b
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.c, %bb.b ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !70886
  store i64 -9223372036854775805, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN177_$LT$index_scheduler.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$index_scheduler..CliWebhook$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9expecting17h1b9103860d46d1ddE"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1193, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN177_$LT$milli..index.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..index..MatchingStrategy$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$11visit_bytes17h1fe1bd4b10cac902E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  switch i64 %2, label %bb.d [
    i64 4, label %bb.b
    i64 3, label %bb.i
    i64 9, label %bb.l
  ], !prof !186

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !noundef !57
  %i.c = icmp eq i8 %i.b, 108
  br i1 %i.c, label %bb.c, label %bb.d, !prof !58

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.e = load i8, ptr %i.d, align 1, !noundef !57
  %i.f = icmp eq i8 %i.e, 97
  br i1 %i.f, label %bb.e, label %bb.d, !prof !58

bb.d:                                             ; preds = %bb.a, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.j, %bb.i, %bb.f, %bb.e, %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN10serde_core7private6string15from_utf8_lossy17he3d8bb260d435bdbE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  %i.g = load i64, ptr %i.a, align 8, !range !83, !noundef !57 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8
  %i.l = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15unknown_variant17h76a41d8cd1b30ac9E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.i, i64 noundef %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @1204, i64 noundef 3)
          to label %bb.x unwind label %bb.v

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.n = load i8, ptr %i.m, align 1, !noundef !57
  %i.o = icmp eq i8 %i.n, 115
  br i1 %i.o, label %bb.f, label %bb.d, !prof !58

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.q = load i8, ptr %i.p, align 1, !noundef !57
  %i.r = icmp eq i8 %i.q, 116
  br i1 %i.r, label %bb.g, label %bb.d, !prof !58

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.s, align 1
  store i8 0, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h0205c3fb11dfae33E.exit6", %bb.u, %bb.k, %bb.g
  ret void

bb.i:                                             ; preds = %bb.a
  %i.t = load i8, ptr %1, align 1, !noundef !57
  %i.u = icmp eq i8 %i.t, 97
  br i1 %i.u, label %bb.j, label %bb.d, !prof !58

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.w = load i8, ptr %i.v, align 1, !noundef !57
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.y = load i8, ptr %i.x, align 1, !noundef !57
  %i.z = icmp eq i8 %i.w, 108
  %i.aa = icmp eq i8 %i.y, 108
  %or.cond = and i1 %i.z, %i.aa
  br i1 %or.cond, label %bb.k, label %bb.d, !prof !108

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.ab, align 1
  store i8 0, ptr %0, align 8
  br label %bb.h

bb.l:                                             ; preds = %bb.a
  %i.ac = load i8, ptr %1, align 1, !noundef !57
  %i.ad = icmp eq i8 %i.ac, 102
  br i1 %i.ad, label %bb.m, label %bb.d, !prof !58

bb.m:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !noundef !57
  %i.ag = icmp eq i8 %i.af, 114
  br i1 %i.ag, label %bb.n, label %bb.d, !prof !58

bb.n:                                             ; preds = %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ai = load i8, ptr %i.ah, align 1, !noundef !57
  %i.aj = icmp eq i8 %i.ai, 101
  br i1 %i.aj, label %bb.o, label %bb.d, !prof !58

bb.o:                                             ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.al = load i8, ptr %i.ak, align 1, !noundef !57
  %i.am = icmp eq i8 %i.al, 113
  br i1 %i.am, label %bb.p, label %bb.d, !prof !58

bb.p:                                             ; preds = %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ao = load i8, ptr %i.an, align 1, !noundef !57
  %i.ap = icmp eq i8 %i.ao, 117
  br i1 %i.ap, label %bb.q, label %bb.d, !prof !58

bb.q:                                             ; preds = %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.ar = load i8, ptr %i.aq, align 1, !noundef !57
  %i.as = icmp eq i8 %i.ar, 101
  br i1 %i.as, label %bb.r, label %bb.d, !prof !58

bb.r:                                             ; preds = %bb.q
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.au = load i8, ptr %i.at, align 1, !noundef !57
  %i.av = icmp eq i8 %i.au, 110
  br i1 %i.av, label %bb.s, label %bb.d, !prof !58

bb.s:                                             ; preds = %bb.r
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ax = load i8, ptr %i.aw, align 1, !noundef !57
  %i.ay = icmp eq i8 %i.ax, 99
  br i1 %i.ay, label %bb.t, label %bb.d, !prof !58

bb.t:                                             ; preds = %bb.s
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = load i8, ptr %i.az, align 1, !noundef !57
  %i.bb = icmp eq i8 %i.ba, 121
  br i1 %i.bb, label %bb.u, label %bb.d, !prof !58

bb.u:                                             ; preds = %bb.t
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.bc, align 1
  store i8 0, ptr %0, align 8
  br label %bb.h

bb.v:                                             ; preds = %bb.d
  %i.bd = landingpad { ptr, i32 }
          cleanup
  %switch = icmp sgt i64 %i.g, 0
  br i1 %switch, label %bb.w, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h0205c3fb11dfae33E.exit"

bb.w:                                             ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !70895
  br label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h0205c3fb11dfae33E.exit"

bb.x:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.be, align 8
  store i8 1, ptr %0, align 8
  %switch8 = icmp sgt i64 %i.g, 0
  br i1 %switch8, label %bb.y, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h0205c3fb11dfae33E.exit6"

bb.y:                                             ; preds = %bb.x
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !70896
  br label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h0205c3fb11dfae33E.exit6"

"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h0205c3fb11dfae33E.exit6": ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h0205c3fb11dfae33E.exit": ; preds = %bb.v, %bb.w
  resume { ptr, i32 } %i.bd
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noalias noundef ptr @_ZN17meilisearch_types11compression9to_tar_gz17h61124d90b218521bE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [56 x i8], align 8                ; 10 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 4                ; 9 uses
  %i.i = alloca [64 x i8], align 8                ; 8 uses
  %i.j = alloca [112 x i8], align 8               ; 7 uses
  %i.k = alloca [120 x i8], align 8               ; 21 uses
  %.sroa.10 = alloca [96 x i8], align 8           ; 5 uses
  %i.l = alloca [120 x i8], align 8               ; 16 uses
  %.sroa.0 = alloca [104 x i8], align 8           ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 7 uses
  %i.n = alloca [4 x i8], align 4                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !70950
  store i32 0, ptr %i.h, align 4, !noalias !70950
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 438, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !70950
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 11
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %.sroa.5.0..sroa_idx.i, i8 0, i64 6, i1 false), !noalias !70950
  store i8 1, ptr %.sroa.6.0..sroa_idx.i, align 1, !noalias !70950
  store i8 1, ptr %.sroa.9.0..sroa_idx.i, align 4, !noalias !70950
  store i8 1, ptr %.sroa.8.0..sroa_idx.i, align 1, !noalias !70950
  call void @_ZN3std2fs11OpenOptions5_open17h005de3b10d8796e4E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.m, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !70950
  %i.o = load i32, ptr %i.m, align 8, !range !99, !noundef !57
  %i.p = trunc nuw i32 %i.o to i1
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !57, !noundef !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.s = call fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h31bdd22f1221e704E"(ptr noundef nonnull %i.r)
  br label %bb.av

bb.c:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.u = load i32, ptr %i.t, align 4, !range !164, !noundef !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i32 %i.u, ptr %i.n, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 -9223372036854775808, ptr %i.i, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr null, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr null, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 60
  store i8 0, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i32 0, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !70951
  invoke void @_ZN6flate22gz9GzBuilder11into_header17h15ab112a00edbc39E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.i, i32 noundef 6)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !70952)
  call void @llvm.experimental.noalias.scope.decl(metadata !70953)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !70954
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !70954
  invoke void @_ZN6flate23mem8Compress3new17h283a97c4f8419ab4E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, i32 noundef 6, i1 noundef zeroext false)
          to label %bb.e unwind label %bb.d, !noalias !70954

bb.d:                                             ; preds = %.noexc
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.e:                                             ; preds = %.noexc
  call void @llvm.experimental.noalias.scope.decl(metadata !70955)
  call void @llvm.experimental.noalias.scope.decl(metadata !70956)
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !70956, !noalias !70957 ; 3 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !70958
  %i.aa = call noundef dereferenceable_or_null(32768) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 32768, i64 noundef range(i64 1, 9) 1) #79, !noalias !70958 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 32768, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @3933) #80
          to label %.noexc.i.i.i unwind label %bb.g, !noalias !70959

.noexc.i.i.i:                                     ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i) ]
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$flate2..mem..Compress$GT$17h285f587a7aee3091E"(ptr nonnull %.sroa.0.0.copyload.i.i.i) #81, !noalias !70959
  br label %.body.i.i

bb.h:                                             ; preds = %bb.e
  %.sroa.5.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr %i.n, ptr %i.ad, align 8, !alias.scope !70955, !noalias !70960
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.ae, align 8, !alias.scope !70955, !noalias !70960
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx5.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.5.0..sroa_idx4.i.i.i, i64 16, i1 false), !alias.scope !70961, !noalias !70962
  store i64 32768, ptr %i.f, align 8, !alias.scope !70955, !noalias !70960
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.aa, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !70955, !noalias !70960
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !70955, !noalias !70960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !70954
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !70954
  invoke void @_ZN6flate23crc14impl_crc32fast3Crc3new17h67c7dd1c6341d98eE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.m unwind label %bb.i, !noalias !70963

bb.i:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$flate2..zio..Writer$LT$$RF$mut$u20$std..fs..File$C$flate2..mem..Compress$GT$$GT$17h1d89fc5e4625869eE"(ptr noalias noundef align 8 dereferenceable(56) %i.f) #81
          to label %.body.i.i unwind label %bb.j, !noalias !70963

bb.j:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !70963
  unreachable

.body.i.i:                                        ; preds = %bb.i, %bb.g, %bb.d
  %.pn.i.i = phi { ptr, i32 } [ %i.af, %bb.i ], [ %i.z, %bb.d ], [ %i.ac, %bb.g ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !70964)
  %.val.i.i.i = load i64, ptr %i.g, align 8, !range !56, !alias.scope !70965, !noalias !70966, !noundef !57 ; 2 uses
  %i.ah = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ah, label %.body40.thread, label %bb.k

bb.k:                                             ; preds = %.body.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val1.i.i.i = load ptr, ptr %i.ai, align 8, !alias.scope !70965, !noalias !70966, !nonnull !57, !noundef !57
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !70967
  br label %.body40.thread

bb.l:                                             ; preds = %bb.bb, %bb.c
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body40.thread

bb.m:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !noalias !70968
  %.sroa.0.80..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.80..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !70968
  %.sroa.0.56..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.56..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !alias.scope !70969, !noalias !70970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !70954
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !70954
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !70951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.l, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.0, i64 104, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 112 ; 2 uses
  store <4 x i8> <i8 0, i8 0, i8 1, i8 1>, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 116
  store i8 0, ptr %i.al, align 4
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  store i64 0, ptr %.sroa.453.0..sroa_idx, align 8
  %i.am = load i64, ptr %i.l, align 8, !range !83, !alias.scope !70971, !noalias !70972, !noundef !57
  %.not.i = icmp eq i64 %i.am, -9223372036854775808
  br i1 %.not.i, label %bb.o, label %bb.n, !prof !60

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.copyload.i = load i32, ptr %i.ak, align 8, !alias.scope !70971, !noalias !70972
  %i.an = invoke noundef ptr @_ZN3tar7builder14append_dir_all17h1dfa2279ec1acf7fE(ptr noundef nonnull align 8 dereferenceable(120) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @2020, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @794, i64 noundef 1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, i32 %.sroa.0.0.copyload.i)
          to label %"_ZN3tar7builder16Builder$LT$W$GT$14append_dir_all17h7dd97cb707fa1f3eE.exit" unwind label %bb.bd ; 2 uses

bb.o:                                             ; preds = %bb.m
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2019) #80
          to label %.noexc36 unwind label %bb.bd

.noexc36:                                         ; preds = %bb.o
  unreachable

.body40.thread57:                                 ; preds = %.invoke, %bb.ar, %"_ZN4core3ptr111drop_in_place$LT$tar..builder..Builder$LT$flate2..gz..write..GzEncoder$LT$$RF$mut$u20$std..fs..File$GT$$GT$$GT$17h92a5a893504f4ef1E.exit.sink.split.i"
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body40.thread

"_ZN3tar7builder16Builder$LT$W$GT$14append_dir_all17h7dd97cb707fa1f3eE.exit": ; preds = %bb.n
  %.not.not = icmp eq ptr %i.an, null
  br i1 %.not.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %"_ZN3tar7builder16Builder$LT$W$GT$14append_dir_all17h7dd97cb707fa1f3eE.exit"
  %i.ao = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h31bdd22f1221e704E"(ptr noundef nonnull %i.an)
          to label %bb.aw unwind label %bb.bd     ; 2 uses

bb.q:                                             ; preds = %"_ZN3tar7builder16Builder$LT$W$GT$14append_dir_all17h7dd97cb707fa1f3eE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.k, ptr noundef nonnull align 8 dereferenceable(120) %i.l, i64 120, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !70973)
  call void @llvm.experimental.noalias.scope.decl(metadata !70974)
end_hunk_11
begin_hunk_12_@"_ZN17meilisearch_types9task_view1_98_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$meilisearch_types..task_view..DetailsView$GT$9serialize17hffcf71590f6689efE":bb.a
  %i.bh = icmp sgt i64 %i.bf, -1
  call void @llvm.assume(i1 %i.bh)
  %i.bi = getelementptr inbounds nuw i8, ptr %.val11.i.i, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !81232, !noalias !81231, !nonnull !57, !noundef !57
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bf
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bk, ptr nonnull readonly align 1 %i.bg, i64 %i.az, i1 false), !noalias !81233
  %i.bl = add nuw i64 %i.bf, %i.az
  store i64 %i.bl, ptr %i.ba, align 8, !alias.scope !81232, !noalias !81231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !81205
  br label %bb.u

bb.u:                                             ; preds = %_ZN10serde_core3ser12SerializeMap15serialize_entry17h7c66f11f9ecb7f03E.exit, %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bn = load i64, ptr %i.bm, align 8, !range !72, !noundef !57 ; 2 uses
  %.not134 = icmp eq i64 %i.bn, 2
  br i1 %.not134, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val180 = load i64, ptr %i.bo, align 8
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h746f72aa41999974E(ptr noalias noundef align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1694, i64 noundef 16, i64 %i.bn, i64 %.val180)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bq = load i64, ptr %i.bp, align 8, !range !71, !noundef !57
  %.not135 = icmp eq i64 %i.bq, 0
  br i1 %.not135, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val170 = load i64, ptr %i.br, align 8
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h9ea6ec64b5f2ba46E(ptr noalias noundef align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1695, i64 noundef 12, i64 1, i64 %.val170)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bt = load i64, ptr %i.bs, align 8, !range !72, !noundef !57 ; 2 uses
  %.not136 = icmp eq i64 %i.bt, 2
  br i1 %.not136, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.val182 = load i64, ptr %i.bu, align 8
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h746f72aa41999974E(ptr noalias noundef align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1696, i64 noundef 13, i64 %i.bt, i64 %.val182)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bw = load i64, ptr %i.bv, align 8, !range !72, !noundef !57 ; 2 uses
  %.not137 = icmp eq i64 %i.bw, 2
  br i1 %.not137, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.val184 = load i64, ptr %i.bx, align 8
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h746f72aa41999974E(ptr noalias noundef align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1697, i64 noundef 12, i64 %i.bw, i64 %.val184)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !range !84, !noundef !57
  %.not138 = icmp eq i64 %i.bz, -9223372036854775807
  br i1 %.not138, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h5c6416517692c5aaE(ptr noalias noundef align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1698, i64 noundef 14, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.by)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !range !84, !noundef !57
  %.not139 = icmp eq i64 %i.cb, -9223372036854775807
  br i1 %.not139, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h5c6416517692c5aaE(ptr noalias noundef align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1699, i64 noundef 7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ca)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !range !84, !noundef !57 ; 2 uses
  %.not140 = icmp eq i64 %i.cd, -9223372036854775807
  br i1 %.not140, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17hef54db542e2d46deE.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !81234)
  call void @llvm.experimental.noalias.scope.decl(metadata !81235)
  %i.ce = load i8, ptr %i.b, align 8, !range !74, !alias.scope !81236, !noalias !81237, !noundef !57
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.ai, label %bb.aj, !prof !60

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @252, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4932) #80, !noalias !81238
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.cg = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !81236, !noalias !81237, !nonnull !57, !align !61, !noundef !57 ; 5 uses
  %i.ch = load i8, ptr %.sroa.4.0..sroa_idx, align 1, !range !65, !alias.scope !81236, !noalias !81237, !noundef !57
  %i.ci = icmp eq i8 %i.ch, 1
  %.val.i.i187 = load ptr, ptr %i.cg, align 8, !noalias !81238 ; 6 uses
  br i1 %i.ci, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i187) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !81239)
  call void @llvm.experimental.noalias.scope.decl(metadata !81240)
  call void @llvm.experimental.noalias.scope.decl(metadata !81241)
  call void @llvm.experimental.noalias.scope.decl(metadata !81242)
  %i.cj = getelementptr inbounds nuw i8, ptr %.val.i.i187, i64 16 ; 3 uses
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !81243, !noalias !81244, !noundef !57 ; 3 uses
  %i.cl = load i64, ptr %.val.i.i187, align 8, !range !56, !alias.scope !81243, !noalias !81244, !noundef !57
  %i.cm = icmp eq i64 %i.cl, %i.ck
  br i1 %i.cm, label %bb.al, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i188", !prof !60

bb.al:                                            ; preds = %bb.ak
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i187, i64 noundef %i.ck, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !81244
  %.pre.i.i.i.i.i.i.i.i194 = load i64, ptr %i.cj, align 8, !alias.scope !81245, !noalias !81244
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i188"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i188": ; preds = %bb.al, %bb.ak
  %i.cn = phi i64 [ %i.ck, %bb.ak ], [ %.pre.i.i.i.i.i.i.i.i194, %bb.al ] ; 3 uses
  %i.co = icmp sgt i64 %i.cn, -1
  call void @llvm.assume(i1 %i.co)
  %i.cp = getelementptr inbounds nuw i8, ptr %.val.i.i187, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !alias.scope !81245, !noalias !81244, !nonnull !57, !noundef !57
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cn
  store i8 44, ptr %i.cr, align 1, !noalias !81246
  %i.cs = add nuw i64 %i.cn, 1
  store i64 %i.cs, ptr %i.cj, align 8, !alias.scope !81245, !noalias !81244
  %.val9.pre.i.i189 = load ptr, ptr %i.cg, align 8, !noalias !81238
  br label %bb.am

bb.am:                                            ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i188", %bb.aj
  %.val9.i.i190 = phi ptr [ %.val.i.i187, %bb.aj ], [ %.val9.pre.i.i189, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i188" ]
  store i8 2, ptr %.sroa.4.0..sroa_idx, align 1, !alias.scope !81236, !noalias !81237
  call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val9.i.i190, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @496, i64 noundef 7)
  %.val.i5.i = load ptr, ptr %i.cg, align 8, !noalias !81247, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !81248)
  call void @llvm.experimental.noalias.scope.decl(metadata !81249)
  call void @llvm.experimental.noalias.scope.decl(metadata !81250)
  call void @llvm.experimental.noalias.scope.decl(metadata !81251)
  %i.ct = getelementptr inbounds nuw i8, ptr %.val.i5.i, i64 16 ; 3 uses
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !81252, !noalias !81253, !noundef !57 ; 3 uses
  %i.cv = load i64, ptr %.val.i5.i, align 8, !range !56, !alias.scope !81252, !noalias !81253, !noundef !57
  %i.cw = icmp eq i64 %i.cv, %i.cu
  br i1 %i.cw, label %bb.an, label %bb.ao, !prof !60

bb.an:                                            ; preds = %bb.am
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i5.i, i64 noundef %i.cu, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !81253
  %.pre.i.i.i.i.i.i.i6.i = load i64, ptr %i.ct, align 8, !alias.scope !81254, !noalias !81253
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %i.cx = phi i64 [ %i.cu, %bb.am ], [ %.pre.i.i.i.i.i.i.i6.i, %bb.an ] ; 3 uses
  %i.cy = icmp sgt i64 %i.cx, -1
  call void @llvm.assume(i1 %i.cy)
  %i.cz = getelementptr inbounds nuw i8, ptr %.val.i5.i, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !alias.scope !81254, !noalias !81253, !nonnull !57, !noundef !57
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cx
  store i8 58, ptr %i.db, align 1, !noalias !81255
  %i.dc = add nuw i64 %i.cx, 1
  store i64 %i.dc, ptr %i.ct, align 8, !alias.scope !81254, !noalias !81253
  call void @llvm.experimental.noalias.scope.decl(metadata !81256)
  call void @llvm.experimental.noalias.scope.decl(metadata !81257)
  call void @llvm.experimental.noalias.scope.decl(metadata !81258)
  %.not.i.i.i.i.i = icmp eq i64 %i.cd, -9223372036854775808
  br i1 %.not.i.i.i.i.i, label %bb.ap, label %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17h9ecde72b26705e18E.exit.i.i"

bb.ap:                                            ; preds = %bb.ao
  %.val.i.i.i.i.i = load ptr, ptr %i.cg, align 8, !alias.scope !81259, !noalias !81260, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !81261)
  call void @llvm.experimental.noalias.scope.decl(metadata !81262)
  call void @llvm.experimental.noalias.scope.decl(metadata !81263)
  call void @llvm.experimental.noalias.scope.decl(metadata !81264)
  %i.dd = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 16 ; 3 uses
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !81265, !noalias !81266, !noundef !57 ; 3 uses
  %i.df = load i64, ptr %.val.i.i.i.i.i, align 8, !range !56, !alias.scope !81265, !noalias !81266, !noundef !57
  %i.dg = sub i64 %i.df, %i.de
  %i.dh = icmp ult i64 %i.dg, 4
  br i1 %i.dh, label %bb.aq, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h252051f7955c6753E.exit.i.i.i.i.i", !prof !60

bb.aq:                                            ; preds = %bb.ap
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i, i64 noundef %i.de, i64 noundef 4, i64 noundef 1, i64 noundef 1), !noalias !81266
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dd, align 8, !alias.scope !81267, !noalias !81266
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h252051f7955c6753E.exit.i.i.i.i.i"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h252051f7955c6753E.exit.i.i.i.i.i": ; preds = %bb.aq, %bb.ap
  %i.di = phi i64 [ %i.de, %bb.ap ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.aq ] ; 3 uses
  %i.dj = icmp sgt i64 %i.di, -1
  call void @llvm.assume(i1 %i.dj)
  %i.dk = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !alias.scope !81267, !noalias !81266, !nonnull !57, !noundef !57
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.di
  store i32 1819047278, ptr %i.dm, align 1, !noalias !81268
  %i.dn = add nuw i64 %i.di, 4
  store i64 %i.dn, ptr %i.dd, align 8, !alias.scope !81267, !noalias !81266
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17hef54db542e2d46deE.exit.thread

"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17h9ecde72b26705e18E.exit.i.i": ; preds = %bb.ao
  %i.do = call fastcc noalias noundef align 8 ptr @"_ZN123_$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17h7402f2c4161a18e2E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.cc, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cg), !noalias !81234 ; 2 uses
  %.not.i.i = icmp eq ptr %i.do, null
  br i1 %.not.i.i, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17hef54db542e2d46deE.exit.thread, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h6d92c326ceaf6029E.exit"

_ZN10serde_core3ser12SerializeMap15serialize_entry17hef54db542e2d46deE.exit.thread: ; preds = %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17h9ecde72b26705e18E.exit.i.i", %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h252051f7955c6753E.exit.i.i.i.i.i", %bb.ag
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !range !83, !noundef !57
  %.not143 = icmp eq i64 %i.dq, -9223372036854775808
  br i1 %.not143, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZN10serde_core3ser12SerializeMap15serialize_entry17hef54db542e2d46deE.exit.thread
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h8216b47b447f3dadE(ptr noalias noundef align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1357, i64 noundef 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dp)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %_ZN10serde_core3ser12SerializeMap15serialize_entry17hef54db542e2d46deE.exit.thread
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.ds = load ptr, ptr %i.dr, align 8, !align !61, !noundef !57 ; 26 uses
  %.not144 = icmp eq ptr %i.ds, null
  br i1 %.not144, label %"_ZN17meilisearch_types8settings1_103_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$meilisearch_types..settings..Settings$LT$T$GT$$GT$9serialize17hfbc52713ecef3965E.exit.thread246", label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 584 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !range !84, !alias.scope !81269, !noalias !81270, !noundef !57
  %i.dv = icmp eq i64 %i.du, -9223372036854775807
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 608 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !range !84, !alias.scope !81269, !noalias !81270, !noundef !57
  %i.dy = icmp eq i64 %i.dx, -9223372036854775807
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 632 ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !range !84, !alias.scope !81269, !noalias !81270, !noundef !57
  %i.eb = icmp eq i64 %i.ea, -9223372036854775807
  %i.ec = load i64, ptr %i.ds, align 8, !range !72, !alias.scope !81269, !noalias !81270, !noundef !57
  %i.ed = icmp eq i64 %i.ec, 2
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ds, i64 656 ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !range !84, !alias.scope !81269, !noalias !81270, !noundef !57
  %i.eg = icmp eq i64 %i.ef, -9223372036854775807
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ds, i64 680 ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 8, !range !84, !alias.scope !81269, !noalias !81270, !noundef !57
  %i.ej = icmp eq i64 %i.ei, -9223372036854775807
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ds, i64 32 ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8, !range !72, !alias.scope !81269, !noalias !81270, !noundef !57
  %i.em = icmp eq i64 %i.el, 2
  %i.en = getelementptr inbounds nuw i8, ptr %i.ds, i64 64 ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !range !72, !alias.scope !81269, !noalias !81270, !noundef !57
  %i.ep = icmp eq i64 %i.eo, 2
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ds, i64 96 ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8, !range !72, !alias.scope !81269, !noalias !81270, !noundef !57
  %i.es = icmp eq i64 %i.er, 2
  %i.et = getelementptr inbounds nuw i8, ptr %i.ds, i64 128 ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !range !72, !alias.scope !81269, !noalias !81270, !noundef !57
  %i.ev = icmp eq i64 %i.eu, 2
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ds, i64 160 ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !range !72, !alias.scope !81269, !noalias !81270, !noundef !57
  %i.ey = icmp eq i64 %i.ex, 2
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ds, i64 704 ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !range !84, !alias.scope !81269, !noalias !81270, !noundef !57
  %i.fb = icmp eq i64 %i.fa, -9223372036854775807
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ds, i64 752
  %i.fd = load i8, ptr %i.fc, align 8, !range !76, !alias.scope !81269, !noalias !81270, !noundef !57 ; 2 uses
  %i.fe = icmp eq i8 %i.fd, 3
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ds, i64 240 ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !range !119, !alias.scope !81269, !noalias !81270, !noundef !57
  %i.fh = icmp eq i64 %i.fg, 4
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ds, i64 312 ; 2 uses
  %i.fj = load i64, ptr %i.fi, align 8, !range !119, !alias.scope !81269, !noalias !81270, !noundef !57
  %i.fk = icmp eq i64 %i.fj, 4
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ds, i64 360
  %i.fm = load i64, ptr %i.fl, align 8, !range !119, !alias.scope !81269, !noalias !81270, !noundef !57 ; 2 uses
  %i.fn = icmp eq i64 %i.fm, 4
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ds, i64 192 ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8, !range !72, !alias.scope !81269, !noalias !81270, !noundef !57
  %i.fq = icmp eq i64 %i.fp, 2
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ds, i64 224
  %i.fs = load i64, ptr %i.fr, align 8, !range !72, !alias.scope !81269, !noalias !81270, !noundef !57 ; 2 uses
  %i.ft = icmp eq i64 %i.fs, 2
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ds, i64 728 ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8, !range !84, !alias.scope !81269, !noalias !81270, !noundef !57
  %i.fw = icmp eq i64 %i.fv, -9223372036854775807
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ds, i64 753
  %i.fy = load i8, ptr %i.fx, align 1, !range !76, !alias.scope !81269, !noalias !81270, !noundef !57 ; 2 uses
  %i.fz = icmp eq i8 %i.fy, 3
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ds, i64 754
  %i.gb = load i8, ptr %i.ga, align 2, !range !76, !alias.scope !81269, !noalias !81270, !noundef !57 ; 2 uses
  %i.gc = icmp eq i8 %i.gb, 3
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ds, i64 376 ; 2 uses
  %i.ge = load i64, ptr %i.gd, align 8, !range !119, !alias.scope !81269, !noalias !81270, !noundef !57
  %i.gf = icmp eq i64 %i.ge, 4
  br i1 %i.dv, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gg = call fastcc noalias noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17ha229a924f4a68fb3E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1648, i64 noundef 19, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dt) ; 2 uses
  %.not.i = icmp eq ptr %i.gg, null
  br i1 %.not.i, label %bb.av, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h6d92c326ceaf6029E.exit"

bb.av:                                            ; preds = %bb.au, %bb.at
  br i1 %i.dy, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gh = call fastcc noalias noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17ha229a924f4a68fb3E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1649, i64 noundef 20, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dw) ; 2 uses
  %.not210.i = icmp eq ptr %i.gh, null
  br i1 %.not210.i, label %bb.ax, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h6d92c326ceaf6029E.exit"

bb.ax:                                            ; preds = %bb.aw, %bb.av
  br i1 %i.eb, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gi = call fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h66f5206f1699289eE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dz) ; 2 uses
  %.not212.i = icmp eq ptr %i.gi, null
  br i1 %.not212.i, label %bb.az, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h6d92c326ceaf6029E.exit"

bb.az:                                            ; preds = %bb.ay, %bb.ax
  br i1 %i.ed, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gj = call fastcc noalias noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h94eeba50d8764d6dE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1651, i64 noundef 18, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(760) %i.ds) ; 2 uses
  %.not214.i = icmp eq ptr %i.gj, null
  br i1 %.not214.i, label %bb.bb, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h6d92c326ceaf6029E.exit"

bb.bb:                                            ; preds = %bb.ba, %bb.az
  br i1 %i.eg, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gk = call fastcc noalias noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h909ddecc7f31286bE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ee) ; 2 uses
  %.not216.i = icmp eq ptr %i.gk, null
  br i1 %.not216.i, label %bb.bd, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h6d92c326ceaf6029E.exit"

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  br i1 %i.ej, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gl = call fastcc noalias noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17ha67bb40ff7931dc3E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eh) ; 2 uses
  %.not218.i = icmp eq ptr %i.gl, null
  br i1 %.not218.i, label %bb.bf, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h6d92c326ceaf6029E.exit"

bb.bf:                                            ; preds = %bb.be, %bb.bd
  br i1 %i.em, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gm = call fastcc noalias noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h94eeba50d8764d6dE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1653, i64 noundef 9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ek) ; 2 uses
  %.not220.i = icmp eq ptr %i.gm, null
  br i1 %.not220.i, label %bb.bh, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h6d92c326ceaf6029E.exit"

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  br i1 %i.ep, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gn = call fastcc noalias noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h94eeba50d8764d6dE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1654, i64 noundef 18, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.en) ; 2 uses
  %.not222.i = icmp eq ptr %i.gn, null
  br i1 %.not222.i, label %bb.bj, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h6d92c326ceaf6029E.exit"

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  br i1 %i.es, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.go = call fastcc noalias noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h94eeba50d8764d6dE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1655, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.eq) ; 2 uses
  %.not224.i = icmp eq ptr %i.go, null
  br i1 %.not224.i, label %bb.bl, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h6d92c326ceaf6029E.exit"

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  br i1 %i.ev, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gp = call fastcc noalias noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h94eeba50d8764d6dE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1656, i64 noundef 10, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.et) ; 2 uses
  %.not226.i = icmp eq ptr %i.gp, null
  br i1 %.not226.i, label %bb.bn, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h6d92c326ceaf6029E.exit"

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  br i1 %i.ey, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gq = call fastcc noalias noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h8b4af813dc369729E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ew) ; 2 uses
  %.not228.i = icmp eq ptr %i.gq, null
  br i1 %.not228.i, label %bb.bp, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h6d92c326ceaf6029E.exit"

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  br i1 %i.fb, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17hecb7885cefd34ae6E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1658, i64 noundef 17, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ez)
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  br i1 %i.fe, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17hf392e6d0b4e0e18fE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, i8 %i.fd)
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  br i1 %i.fh, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.gr = call fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17hee53fafef74858deE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ff) ; 2 uses
  %.not230.i = icmp eq ptr %i.gr, null
  br i1 %.not230.i, label %bb.bv, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h6d92c326ceaf6029E.exit"

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  br i1 %i.fk, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.gs = call fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17hd9531fd69de28dafE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fi) ; 2 uses
  %.not232.i = icmp eq ptr %i.gs, null
  br i1 %.not232.i, label %bb.bx, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h6d92c326ceaf6029E.exit"

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  br i1 %i.fn, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ds, i64 368
  %.val259.i = load i64, ptr %i.gt, align 8, !alias.scope !81269, !noalias !81270
  %i.gu = call fastcc noalias noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h778be0232178f8a0E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, i64 %i.fm, i64 %.val259.i) ; 2 uses
  %.not234.i = icmp eq ptr %i.gu, null
  br i1 %.not234.i, label %bb.bz, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h6d92c326ceaf6029E.exit"

bb.bz:                                            ; preds = %bb.by, %bb.bx
  br i1 %i.fq, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.gv = call fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h82e78d2aa1e0a64cE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.fo) ; 2 uses
  %.not236.i = icmp eq ptr %i.gv, null
  br i1 %.not236.i, label %bb.cb, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h6d92c326ceaf6029E.exit"

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  br i1 %i.ft, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ds, i64 232
  %.val263.i = load i64, ptr %i.gw, align 8, !alias.scope !81269, !noalias !81270
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17hb8fdabf0c68418baE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1664, i64 noundef 14, i64 %i.fs, i64 %.val263.i)
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  br i1 %i.fw, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.gx = call fastcc noalias noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h6986db78f813f878E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fu) ; 2 uses
  %.not238.i = icmp eq ptr %i.gx, null
  br i1 %.not238.i, label %bb.cf, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h6d92c326ceaf6029E.exit"

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  br i1 %i.fz, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h220d9a7059ee34ceE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1666, i64 noundef 11, i8 %i.fy)
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  br i1 %i.gc, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17hebdfc900fdc4d501E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, i8 %i.gb)
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  br i1 %i.gf, label %"_ZN17meilisearch_types8settings1_103_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$meilisearch_types..settings..Settings$LT$T$GT$$GT$9serialize17hfbc52713ecef3965E.exit.thread246", label %"_ZN17meilisearch_types8settings1_103_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$meilisearch_types..settings..Settings$LT$T$GT$$GT$9serialize17hfbc52713ecef3965E.exit"

"_ZN17meilisearch_types8settings1_103_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$meilisearch_types..settings..Settings$LT$T$GT$$GT$9serialize17hfbc52713ecef3965E.exit": ; preds = %bb.cj
  %i.gy = call fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h191526dc1607de8cE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %i.gd) ; 2 uses
  %.not145 = icmp eq ptr %i.gy, null
  br i1 %.not145, label %"_ZN17meilisearch_types8settings1_103_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$meilisearch_types..settings..Settings$LT$T$GT$$GT$9serialize17hfbc52713ecef3965E.exit.thread246", label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h6d92c326ceaf6029E.exit"

"_ZN17meilisearch_types8settings1_103_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$meilisearch_types..settings..Settings$LT$T$GT$$GT$9serialize17hfbc52713ecef3965E.exit.thread246": ; preds = %bb.cj, %"_ZN17meilisearch_types8settings1_103_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$meilisearch_types..settings..Settings$LT$T$GT$$GT$9serialize17hfbc52713ecef3965E.exit", %bb.as
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ha = load i64, ptr %i.gz, align 8, !range !83, !noundef !57
  %.not147 = icmp eq i64 %i.ha, -9223372036854775808
  br i1 %.not147, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h09a8da096c38a293E.exit.thread, label %bb.ck

bb.ck:                                            ; preds = %"_ZN17meilisearch_types8settings1_103_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$meilisearch_types..settings..Settings$LT$T$GT$$GT$9serialize17hfbc52713ecef3965E.exit.thread246"
  call void @llvm.experimental.noalias.scope.decl(metadata !81271)
  call void @llvm.experimental.noalias.scope.decl(metadata !81272)
  call void @llvm.experimental.noalias.scope.decl(metadata !81273)
  %i.hb = load i8, ptr %i.b, align 8, !range !74, !alias.scope !81274, !noalias !81275, !noundef !57
  %i.hc = trunc nuw i8 %i.hb to i1
  br i1 %i.hc, label %bb.cl, label %bb.cm, !prof !60

bb.cl:                                            ; preds = %bb.ck
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @252, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4932) #80, !noalias !81276
  unreachable

bb.cm:                                            ; preds = %bb.ck
  %i.hd = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !81274, !noalias !81275, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  %i.he = load i8, ptr %.sroa.4.0..sroa_idx, align 1, !range !65, !alias.scope !81274, !noalias !81275, !noundef !57
  %i.hf = icmp eq i8 %i.he, 1
  %.val.i.i195 = load ptr, ptr %i.hd, align 8, !noalias !81276 ; 6 uses
  br i1 %i.hf, label %bb.cp, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i195) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !81277)
  call void @llvm.experimental.noalias.scope.decl(metadata !81278)
  call void @llvm.experimental.noalias.scope.decl(metadata !81279)
  call void @llvm.experimental.noalias.scope.decl(metadata !81280)
  %i.hg = getelementptr inbounds nuw i8, ptr %.val.i.i195, i64 16 ; 3 uses
  %i.hh = load i64, ptr %i.hg, align 8, !alias.scope !81281, !noalias !81282, !noundef !57 ; 3 uses
  %i.hi = load i64, ptr %.val.i.i195, align 8, !range !56, !alias.scope !81281, !noalias !81282, !noundef !57
  %i.hj = icmp eq i64 %i.hi, %i.hh
  br i1 %i.hj, label %bb.co, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i196", !prof !60

bb.co:                                            ; preds = %bb.cn
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i195, i64 noundef %i.hh, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !81282
  %.pre.i.i.i.i.i.i.i.i207 = load i64, ptr %i.hg, align 8, !alias.scope !81283, !noalias !81282
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i196"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i196": ; preds = %bb.co, %bb.cn
  %i.hk = phi i64 [ %i.hh, %bb.cn ], [ %.pre.i.i.i.i.i.i.i.i207, %bb.co ] ; 3 uses
  %i.hl = icmp sgt i64 %i.hk, -1
  call void @llvm.assume(i1 %i.hl)
  %i.hm = getelementptr inbounds nuw i8, ptr %.val.i.i195, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !alias.scope !81283, !noalias !81282, !nonnull !57, !noundef !57
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.hk
  store i8 44, ptr %i.ho, align 1, !noalias !81284
  %i.hp = add nuw i64 %i.hk, 1
  store i64 %i.hp, ptr %i.hg, align 8, !alias.scope !81283, !noalias !81282
  %.val9.pre.i.i197 = load ptr, ptr %i.hd, align 8, !noalias !81276
  br label %bb.cp

bb.cp:                                            ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i196", %bb.cm
  %.val9.i.i198 = phi ptr [ %.val.i.i195, %bb.cm ], [ %.val9.pre.i.i197, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i196" ]
  store i8 2, ptr %.sroa.4.0..sroa_idx, align 1, !alias.scope !81274, !noalias !81275
  call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val9.i.i198, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1367, i64 noundef 5)
  call void @llvm.experimental.noalias.scope.decl(metadata !81285)
  %.val.i5.i199 = load ptr, ptr %i.hd, align 8, !noalias !81286, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !81287)
  call void @llvm.experimental.noalias.scope.decl(metadata !81288)
  call void @llvm.experimental.noalias.scope.decl(metadata !81289)
  call void @llvm.experimental.noalias.scope.decl(metadata !81290)
  %i.hq = getelementptr inbounds nuw i8, ptr %.val.i5.i199, i64 16 ; 3 uses
  %i.hr = load i64, ptr %i.hq, align 8, !alias.scope !81291, !noalias !81292, !noundef !57 ; 3 uses
  %i.hs = load i64, ptr %.val.i5.i199, align 8, !range !56, !alias.scope !81291, !noalias !81292, !noundef !57
  %i.ht = icmp eq i64 %i.hs, %i.hr
  br i1 %i.ht, label %bb.cq, label %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17hcd40e052ee953887E.exit.i.i", !prof !60

bb.cq:                                            ; preds = %bb.cp
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i5.i199, i64 noundef %i.hr, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !81292
  %.pre.i.i.i.i.i.i.i6.i206 = load i64, ptr %i.hq, align 8, !alias.scope !81293, !noalias !81292
  br label %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17hcd40e052ee953887E.exit.i.i"

"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17hcd40e052ee953887E.exit.i.i": ; preds = %bb.cp, %bb.cq
  %i.hu = phi i64 [ %i.hr, %bb.cp ], [ %.pre.i.i.i.i.i.i.i6.i206, %bb.cq ] ; 3 uses
  %i.hv = icmp sgt i64 %i.hu, -1
  call void @llvm.assume(i1 %i.hv)
  %i.hw = getelementptr inbounds nuw i8, ptr %.val.i5.i199, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8, !alias.scope !81293, !noalias !81292, !nonnull !57, !noundef !57
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hu
  store i8 58, ptr %i.hy, align 1, !noalias !81294
  %i.hz = add nuw i64 %i.hu, 1
  store i64 %i.hz, ptr %i.hq, align 8, !alias.scope !81293, !noalias !81292
  call void @llvm.experimental.noalias.scope.decl(metadata !81295)
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 392
  %.val1.i.i.i = load ptr, ptr %i.ia, align 8, !alias.scope !81296, !noalias !81297, !nonnull !57, !noundef !57
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 400
  %.val2.i.i.i = load i64, ptr %i.ib, align 8, !alias.scope !81296, !noalias !81297, !noundef !57
  %i.ic = call fastcc noalias noundef align 8 ptr @"_ZN10serde_core3ser5impls81_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$9serialize17h00d69ddfb6847d00E"(ptr nonnull readonly %.val1.i.i.i, i64 %.val2.i.i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hd), !noalias !81298 ; 2 uses
  %.not.i.i202 = icmp eq ptr %i.ic, null
  br i1 %.not.i.i202, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h09a8da096c38a293E.exit.thread, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h6d92c326ceaf6029E.exit"

_ZN10serde_core3ser12SerializeMap15serialize_entry17h09a8da096c38a293E.exit.thread: ; preds = %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17hcd40e052ee953887E.exit.i.i", %"_ZN17meilisearch_types8settings1_103_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$meilisearch_types..settings..Settings$LT$T$GT$$GT$9serialize17hfbc52713ecef3965E.exit.thread246"
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.ie = load i64, ptr %i.id, align 8, !range !83, !noundef !57
  %.not150 = icmp eq i64 %i.ie, -9223372036854775808
  br i1 %.not150, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %_ZN10serde_core3ser12SerializeMap15serialize_entry17h09a8da096c38a293E.exit.thread
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h8216b47b447f3dadE(ptr noalias noundef align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1700, i64 noundef 11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.id)
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %_ZN10serde_core3ser12SerializeMap15serialize_entry17h09a8da096c38a293E.exit.thread
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.ig = load i64, ptr %i.if, align 8, !range !83, !noundef !57
  %.not151 = icmp eq i64 %i.ig, -9223372036854775808
  br i1 %.not151, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h8216b47b447f3dadE(ptr noalias noundef align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1701, i64 noundef 9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.if)
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.ii = load i64, ptr %i.ih, align 8, !range !83, !noundef !57
  %.not152 = icmp eq i64 %i.ii, -9223372036854775808
  br i1 %.not152, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h8216b47b447f3dadE(ptr noalias noundef align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @804, i64 noundef 3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ih)
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.ik = load i64, ptr %i.ij, align 8, !range !83, !noundef !57
  %.not153 = icmp eq i64 %i.ik, -9223372036854775808
  br i1 %.not153, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h8216b47b447f3dadE(ptr noalias noundef align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1628, i64 noundef 6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ij)
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.im = load i64, ptr %i.il, align 8, !range !83, !noundef !57
  %.not154 = icmp eq i64 %i.im, -9223372036854775808
  br i1 %.not154, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h8216b47b447f3dadE(ptr noalias noundef align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1702, i64 noundef 11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.il)
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.io = load i64, ptr %i.in, align 8, !range !71, !noundef !57
  %.not155 = icmp eq i64 %i.io, 0
  br i1 %.not155, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h6caf7fbf150889ebE.exit.thread, label %bb.db

bb.db:                                            ; preds = %bb.da
  call void @llvm.experimental.noalias.scope.decl(metadata !81299)
  call void @llvm.experimental.noalias.scope.decl(metadata !81300)
  call void @llvm.experimental.noalias.scope.decl(metadata !81301)
  %i.ip = load i8, ptr %i.b, align 8, !range !74, !alias.scope !81302, !noalias !81303, !noundef !57
  %i.iq = trunc nuw i8 %i.ip to i1
  br i1 %i.iq, label %bb.dc, label %bb.dd, !prof !60

bb.dc:                                            ; preds = %bb.db
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @252, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4932) #80, !noalias !81304
  unreachable

bb.dd:                                            ; preds = %bb.db
  %i.ir = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !81302, !noalias !81303, !nonnull !57, !align !61, !noundef !57 ; 8 uses
  %i.is = load i8, ptr %.sroa.4.0..sroa_idx, align 1, !range !65, !alias.scope !81302, !noalias !81303, !noundef !57
  %i.it = icmp eq i8 %i.is, 1
  %.val.i.i208 = load ptr, ptr %i.ir, align 8, !noalias !81304 ; 6 uses
  br i1 %i.it, label %bb.dg, label %bb.de

bb.de:                                            ; preds = %bb.dd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i208) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !81305)
  call void @llvm.experimental.noalias.scope.decl(metadata !81306)
  call void @llvm.experimental.noalias.scope.decl(metadata !81307)
end_hunk_12
begin_hunk_13_@"_ZN17meilisearch_types9task_view1_98_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$meilisearch_types..task_view..DetailsView$GT$9serialize17hffcf71590f6689efE":bb.a
  br i1 %i.kr, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc97707bc8dfa6277E.exit.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %bb.dn
  %xtraiter = and i64 %.sroa.7.0.i.i.i32.i.i48.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol
  %.sroa.012.015.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.kq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ]
  %.sroa.011.014.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.kt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %.sroa.7.0.i.i.i32.i.i48.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i.i.i.i.i.i.i.i.prol, i64 1336
  %i.kt = add i64 %.sroa.011.014.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %i.ks, align 8, !noalias !81354, !nonnull !57, !noundef !57 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !81089

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %.sroa.012.015.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.kq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %.sroa.011.014.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.7.0.i.i.i32.i.i48.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.kt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ku = icmp ult i64 %.sroa.7.0.i.i.i32.i.i48.i.i.i.i.i.i, 8
  br i1 %i.ku, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc97707bc8dfa6277E.exit.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.sroa.012.015.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.012.015.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.011.014.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ld, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.011.014.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i.i.i.i.i.i.i.i, i64 1336
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.kv, align 8, !noalias !81354, !nonnull !57, !noundef !57
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i.i.i, i64 1336
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.kw, align 8, !noalias !81354, !nonnull !57, !noundef !57
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.1, i64 1336
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.kx, align 8, !noalias !81354, !nonnull !57, !noundef !57
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.2, i64 1336
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.ky, align 8, !noalias !81354, !nonnull !57, !noundef !57
  %i.kz = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.3, i64 1336
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.kz, align 8, !noalias !81354, !nonnull !57, !noundef !57
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.4, i64 1336
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.la, align 8, !noalias !81354, !nonnull !57, !noundef !57
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.5, i64 1336
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.lb, align 8, !noalias !81354, !nonnull !57, !noundef !57
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.6, i64 1336
  %i.ld = add i64 %.sroa.011.014.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.lc, align 8, !noalias !81354, !nonnull !57, !noundef !57 ; 2 uses
  %i.le = icmp eq i64 %i.ld, 0
  br i1 %i.le, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc97707bc8dfa6277E.exit.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc97707bc8dfa6277E.exit.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.dn, %.lr.ph.i.preheader.i.i.i.i.i
  %.sroa.37.0.copyload.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.7.0.i.i.i32.i.i48.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i ], [ 0, %bb.dn ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.26.0.copyload.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.9.147.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i ], [ 0, %bb.dn ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.012.0.lcssa.i.i19.i.i49.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i ], [ %i.kq, %bb.dn ], [ %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 1330
  %i.lg = load i16, ptr %i.lf, align 2, !noalias !81355, !noundef !57
  %i.lh = zext i16 %i.lg to i64
  %i.li = icmp ult i64 %.sroa.37.0.copyload.i.i.i.i.i.i.i.i.i.i, %i.lh
  br i1 %i.li, label %bb.dp, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc97707bc8dfa6277E.exit.i.i.i.i.i.i.i.i.i", %bb.do
  %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.lk, %bb.do ], [ %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc97707bc8dfa6277E.exit.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.lm, %bb.do ], [ %.sroa.26.0.copyload.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc97707bc8dfa6277E.exit.i.i.i.i.i.i.i.i.i" ]
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i.i, i64 1056
  %i.lk = load ptr, ptr %i.lj, align 8, !noalias !81356, !noundef !57 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.lk, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.dr, label %bb.do

._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %bb.do
  %i.ll = zext i16 %i.lo to i64
  br label %bb.dp

bb.do:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.lm = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i.i, i64 1328
  %i.lo = load i16, ptr %i.ln, align 8, !noalias !81356 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lk, i64 1330
  %i.lq = load i16, ptr %i.lp, align 2, !noalias !81355, !noundef !57
  %i.lr = icmp ult i16 %i.lo, %i.lq
  br i1 %i.lr, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

bb.dp:                                            ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc97707bc8dfa6277E.exit.i.i.i.i.i.i.i.i.i"
  %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.37.0.copyload.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc97707bc8dfa6277E.exit.i.i.i.i.i.i.i.i.i" ], [ %i.ll, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.26.0.copyload.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc97707bc8dfa6277E.exit.i.i.i.i.i.i.i.i.i" ], [ %i.lm, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc97707bc8dfa6277E.exit.i.i.i.i.i.i.i.i.i" ], [ %i.lk, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.ls = icmp eq i64 %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i, 0
  %i.lt = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  br i1 %i.ls, label %.loopexit.i.i.i.i.i.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.lu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i, i64 1336
  %i.lv = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.lv)
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.lu, i64 %i.lt ; 2 uses
  %xtraiter347 = and i64 %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod348.not = icmp eq i64 %xtraiter347, 0
  br i1 %lcmp.mod348.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.dq, %.prol.preheader
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.lx, %.prol.preheader ], [ %i.lw, %bb.dq ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.dq ]
  %prol.iter349 = phi i64 [ %prol.iter349.next, %.prol.preheader ], [ 0, %bb.dq ]
  %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !81357, !nonnull !57, !noundef !57 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.prol, i64 1336 ; 2 uses
  %prol.iter349.next = add i64 %prol.iter349, 1   ; 2 uses
  %prol.iter349.cmp.not = icmp eq i64 %prol.iter349.next, %xtraiter347
  br i1 %prol.iter349.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !81103

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.dq
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.dq ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.lw, %bb.dq ], [ %i.lx, %.prol.preheader ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.dq ], [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %i.ly = icmp ult i64 %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i, 8
  br i1 %i.ly, label %.loopexit.i.i.i.i.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.mh, %.new ], [ %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !81357, !nonnull !57, !noundef !57
  %i.lz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i, i64 1336
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.lz, align 8, !noalias !81357, !nonnull !57, !noundef !57
  %i.ma = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.1, i64 1336
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.ma, align 8, !noalias !81357, !nonnull !57, !noundef !57
  %i.mb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.2, i64 1336
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.mb, align 8, !noalias !81357, !nonnull !57, !noundef !57
  %i.mc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.3, i64 1336
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.mc, align 8, !noalias !81357, !nonnull !57, !noundef !57
  %i.md = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.4, i64 1336
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.md, align 8, !noalias !81357, !nonnull !57, !noundef !57
  %i.me = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.5, i64 1336
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.me, align 8, !noalias !81357, !nonnull !57, !noundef !57
  %i.mf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.6, i64 1336
  %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.mf, align 8, !noalias !81357, !nonnull !57, !noundef !57 ; 2 uses
  %i.mg = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.mh = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.7, i64 1336
  br i1 %i.mg, label %.loopexit.i.i.i.i.i.i, label %.new

bb.dr:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2537) #80
          to label %.noexc.i.i.i.i.i.i.i.i.i.i unwind label %bb.ds, !noalias !81358

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.dr
  unreachable

bb.ds:                                            ; preds = %bb.dr
  %i.mi = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.loopexit.i.i.i.i.i.i:                            ; preds = %.prol.loopexit, %.new, %bb.dp
  %.sroa.7.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.lt, %bb.dp ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.dp ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new ]
  %i.mj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i, i64 1064
  %i.mk = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.mk)
  %i.ml = getelementptr inbounds nuw [24 x i8], ptr %i.mj, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.mm = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i) ]
  %i.mn = getelementptr i8, ptr %i.ml, i64 8
  %.val9.i.i.i.i.i.i.i.i = load ptr, ptr %i.mn, align 8, !noalias !81359 ; 2 uses
  %i.mo = getelementptr i8, ptr %i.ml, i64 16
  %.val10.i.i.i.i.i.i.i.i = load i64, ptr %i.mo, align 8, !noalias !81359
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ir, align 8, !alias.scope !81360, !noalias !81361 ; 6 uses
  br i1 %i.ko, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc74a3c287562a893E.exit.i.i.i.i.i.i.i.i", label %bb.dt

bb.dt:                                            ; preds = %.loopexit.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !81362)
  call void @llvm.experimental.noalias.scope.decl(metadata !81363)
  call void @llvm.experimental.noalias.scope.decl(metadata !81364)
  call void @llvm.experimental.noalias.scope.decl(metadata !81365)
  %i.mp = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.mq = load i64, ptr %i.mp, align 8, !alias.scope !81366, !noalias !81367, !noundef !57 ; 3 uses
  %i.mr = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !56, !alias.scope !81366, !noalias !81367, !noundef !57
  %i.ms = icmp eq i64 %i.mr, %i.mq
  br i1 %i.ms, label %bb.du, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !60

bb.du:                                            ; preds = %bb.dt
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.mq, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !81367
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.mp, align 8, !alias.scope !81368, !noalias !81367
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.du, %bb.dt
  %i.mt = phi i64 [ %i.mq, %bb.dt ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.du ] ; 3 uses
  %i.mu = icmp sgt i64 %i.mt, -1
  call void @llvm.assume(i1 %i.mu)
  %i.mv = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.mw = load ptr, ptr %i.mv, align 8, !alias.scope !81368, !noalias !81367, !nonnull !57, !noundef !57
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 %i.mt
  store i8 44, ptr %i.mx, align 1, !noalias !81369
  %i.my = add nuw i64 %i.mt, 1
  store i64 %i.my, ptr %i.mp, align 8, !alias.scope !81368, !noalias !81367
  %.val10.pre.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ir, align 8, !alias.scope !81360, !noalias !81361
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc74a3c287562a893E.exit.i.i.i.i.i.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc74a3c287562a893E.exit.i.i.i.i.i.i.i.i": ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %.loopexit.i.i.i.i.i.i
  %.val10.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.val.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ %.val10.pre.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i.i.i) ]
  call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val10.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.i.i.i.i.i.i.i.i, i64 noundef %.val10.i.i.i.i.i.i.i.i)
  %i.mz = call fastcc noalias noundef align 8 ptr @"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h6b3d5e5c74f961e9E"(i8 0, ptr nonnull align 8 dereferenceable(8) %i.ir, ptr nonnull readonly align 8 dereferenceable(96) %i.mm), !noalias !81370 ; 2 uses
  %.not8.i.i.i.i.i.i.i.i = icmp eq ptr %i.mz, null
  br i1 %.not8.i.i.i.i.i.i.i.i, label %bb.dm, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h6d92c326ceaf6029E.exit"

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.dm
  %.val.i11.i.i.i.i.i.i = load ptr, ptr %i.ir, align 8, !alias.scope !81360, !noalias !81371, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !81372)
  call void @llvm.experimental.noalias.scope.decl(metadata !81373)
  call void @llvm.experimental.noalias.scope.decl(metadata !81374)
  call void @llvm.experimental.noalias.scope.decl(metadata !81375)
  %i.na = getelementptr inbounds nuw i8, ptr %.val.i11.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.nb = load i64, ptr %i.na, align 8, !alias.scope !81376, !noalias !81377, !noundef !57 ; 3 uses
  %i.nc = load i64, ptr %.val.i11.i.i.i.i.i.i, align 8, !range !56, !alias.scope !81376, !noalias !81377, !noundef !57
  %i.nd = icmp eq i64 %i.nc, %i.nb
  br i1 %i.nd, label %bb.dv, label %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i12.i.i.i.i.i.i, !prof !60

bb.dv:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i11.i.i.i.i.i.i, i64 noundef %i.nb, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !81377
  %.pre.i.i.i.i.i.i.i13.i.i.i.i.i.i = load i64, ptr %i.na, align 8, !alias.scope !81378, !noalias !81377
  br label %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i12.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i12.i.i.i.i.i.i: ; preds = %bb.dv, %._crit_edge.i.i.i.i.i.i
  %i.ne = phi i64 [ %i.nb, %._crit_edge.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i13.i.i.i.i.i.i, %bb.dv ] ; 3 uses
  %i.nf = icmp sgt i64 %i.ne, -1
  call void @llvm.assume(i1 %i.nf)
  %i.ng = getelementptr inbounds nuw i8, ptr %.val.i11.i.i.i.i.i.i, i64 8
  %i.nh = load ptr, ptr %i.ng, align 8, !alias.scope !81378, !noalias !81377, !nonnull !57, !noundef !57
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 %i.ne
  store i8 125, ptr %i.ni, align 1, !noalias !81379
  %i.nj = add nuw i64 %i.ne, 1
  store i64 %i.nj, ptr %i.na, align 8, !alias.scope !81378, !noalias !81377
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h6caf7fbf150889ebE.exit.thread

_ZN10serde_core3ser12SerializeMap15serialize_entry17h6caf7fbf150889ebE.exit.thread: ; preds = %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i12.i.i.i.i.i.i, %._crit_edge.thread.i.i.i.i.i.i, %bb.da
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.nl = load i64, ptr %i.nk, align 8, !range !83, !noundef !57
  %.not158 = icmp eq i64 %i.nl, -9223372036854775808
  br i1 %.not158, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %_ZN10serde_core3ser12SerializeMap15serialize_entry17h6caf7fbf150889ebE.exit.thread
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h8216b47b447f3dadE(ptr noalias noundef align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1703, i64 noundef 11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.nk)
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %_ZN10serde_core3ser12SerializeMap15serialize_entry17h6caf7fbf150889ebE.exit.thread
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  %i.nn = load i64, ptr %i.nm, align 8, !range !83, !noundef !57
  %.not159 = icmp eq i64 %i.nn, -9223372036854775808
  br i1 %.not159, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h8216b47b447f3dadE(ptr noalias noundef align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1704, i64 noundef 11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.nm)
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.np = load i64, ptr %i.no, align 8, !range !83, !noundef !57
  %.not160 = icmp eq i64 %i.np, -9223372036854775808
  br i1 %.not160, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h8216b47b447f3dadE(ptr noalias noundef align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1705, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.no)
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.nr = load i64, ptr %i.nq, align 8, !range !83, !noundef !57
  %.not161 = icmp eq i64 %i.nr, -9223372036854775808
  br i1 %.not161, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h8216b47b447f3dadE(ptr noalias noundef align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1706, i64 noundef 18, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.nq)
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.nt = load i64, ptr %i.ns, align 8, !range !71, !noundef !57
  %.not162 = icmp eq i64 %i.nt, 0
  br i1 %.not162, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val172 = load i64, ptr %i.nu, align 8
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h9ea6ec64b5f2ba46E(ptr noalias noundef align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1435, i64 noundef 14, i64 1, i64 %.val172)
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  %i.nw = load i64, ptr %i.nv, align 8, !range !83, !noundef !57
  %.not163 = icmp eq i64 %i.nw, -9223372036854775808
  br i1 %.not163, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h8216b47b447f3dadE(ptr noalias noundef align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @400, i64 noundef 7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.nv)
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.ny = load i64, ptr %i.nx, align 8, !range !62, !noundef !57
  %.not164 = icmp eq i64 %i.ny, 3
  br i1 %.not164, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17ha4ac62aa3b5e28a5E.exit.thread, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.experimental.noalias.scope.decl(metadata !81380)
  call void @llvm.experimental.noalias.scope.decl(metadata !81381)
  %i.nz = load i8, ptr %i.b, align 8, !range !74, !alias.scope !81382, !noalias !81383, !noundef !57
  %i.oa = trunc nuw i8 %i.nz to i1
  br i1 %i.oa, label %bb.ej, label %bb.ek, !prof !60

bb.ej:                                            ; preds = %bb.ei
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @252, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4932) #80, !noalias !81384
  unreachable

bb.ek:                                            ; preds = %bb.ei
  %i.ob = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !81382, !noalias !81383, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  %i.oc = load i8, ptr %.sroa.4.0..sroa_idx, align 1, !range !65, !alias.scope !81382, !noalias !81383, !noundef !57
  %i.od = icmp eq i8 %i.oc, 1
  %.val.i.i221 = load ptr, ptr %i.ob, align 8, !noalias !81384 ; 6 uses
  br i1 %i.od, label %bb.en, label %bb.el

bb.el:                                            ; preds = %bb.ek
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i221) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !81385)
  call void @llvm.experimental.noalias.scope.decl(metadata !81386)
  call void @llvm.experimental.noalias.scope.decl(metadata !81387)
  call void @llvm.experimental.noalias.scope.decl(metadata !81388)
  %i.oe = getelementptr inbounds nuw i8, ptr %.val.i.i221, i64 16 ; 3 uses
  %i.of = load i64, ptr %i.oe, align 8, !alias.scope !81389, !noalias !81390, !noundef !57 ; 3 uses
  %i.og = load i64, ptr %.val.i.i221, align 8, !range !56, !alias.scope !81389, !noalias !81390, !noundef !57
  %i.oh = icmp eq i64 %i.og, %i.of
  br i1 %i.oh, label %bb.em, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i222", !prof !60

bb.em:                                            ; preds = %bb.el
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i221, i64 noundef %i.of, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !81390
  %.pre.i.i.i.i.i.i.i.i233 = load i64, ptr %i.oe, align 8, !alias.scope !81391, !noalias !81390
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i222"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i222": ; preds = %bb.em, %bb.el
  %i.oi = phi i64 [ %i.of, %bb.el ], [ %.pre.i.i.i.i.i.i.i.i233, %bb.em ] ; 3 uses
  %i.oj = icmp sgt i64 %i.oi, -1
  call void @llvm.assume(i1 %i.oj)
  %i.ok = getelementptr inbounds nuw i8, ptr %.val.i.i221, i64 8
  %i.ol = load ptr, ptr %i.ok, align 8, !alias.scope !81391, !noalias !81390, !nonnull !57, !noundef !57
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 %i.oi
  store i8 44, ptr %i.om, align 1, !noalias !81392
  %i.on = add nuw i64 %i.oi, 1
  store i64 %i.on, ptr %i.oe, align 8, !alias.scope !81391, !noalias !81390
  %.val9.pre.i.i223 = load ptr, ptr %i.ob, align 8, !noalias !81384
  br label %bb.en

bb.en:                                            ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i222", %bb.ek
  %.val9.i.i224 = phi ptr [ %.val.i.i221, %bb.ek ], [ %.val9.pre.i.i223, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i222" ]
  store i8 2, ptr %.sroa.4.0..sroa_idx, align 1, !alias.scope !81382, !noalias !81383
  call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val9.i.i224, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1707, i64 noundef 4)
  %.val.i5.i225 = load ptr, ptr %i.ob, align 8, !noalias !81393, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !81394)
  call void @llvm.experimental.noalias.scope.decl(metadata !81395)
  call void @llvm.experimental.noalias.scope.decl(metadata !81396)
  call void @llvm.experimental.noalias.scope.decl(metadata !81397)
  %i.oo = getelementptr inbounds nuw i8, ptr %.val.i5.i225, i64 16 ; 3 uses
  %i.op = load i64, ptr %i.oo, align 8, !alias.scope !81398, !noalias !81399, !noundef !57 ; 3 uses
  %i.oq = load i64, ptr %.val.i5.i225, align 8, !range !56, !alias.scope !81398, !noalias !81399, !noundef !57
  %i.or = icmp eq i64 %i.oq, %i.op
  br i1 %i.or, label %bb.eo, label %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17h458ff60460980dbdE.exit.i.i", !prof !60

bb.eo:                                            ; preds = %bb.en
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i5.i225, i64 noundef %i.op, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !81399
  %.pre.i.i.i.i.i.i.i6.i232 = load i64, ptr %i.oo, align 8, !alias.scope !81400, !noalias !81399
  br label %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17h458ff60460980dbdE.exit.i.i"

"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17h458ff60460980dbdE.exit.i.i": ; preds = %bb.en, %bb.eo
  %i.os = phi i64 [ %i.op, %bb.en ], [ %.pre.i.i.i.i.i.i.i6.i232, %bb.eo ] ; 3 uses
  %i.ot = icmp sgt i64 %i.os, -1
  call void @llvm.assume(i1 %i.ot)
  %i.ou = getelementptr inbounds nuw i8, ptr %.val.i5.i225, i64 8
  %i.ov = load ptr, ptr %i.ou, align 8, !alias.scope !81400, !noalias !81399, !nonnull !57, !noundef !57
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 %i.os
  store i8 58, ptr %i.ow, align 1, !noalias !81401
  %i.ox = add nuw i64 %i.os, 1
  store i64 %i.ox, ptr %i.oo, align 8, !alias.scope !81400, !noalias !81399
  %i.oy = call fastcc noundef align 8 ptr @"_ZN17meilisearch_types20dynamic_search_rules1_128_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$meilisearch_types..dynamic_search_rules..DynamicSearchRuleUpdateRequest$GT$9serialize17h2d4780149eb09ba4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.nx, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ob), !noalias !81380 ; 2 uses
  %.not.i.i228 = icmp eq ptr %i.oy, null
  br i1 %.not.i.i228, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17ha4ac62aa3b5e28a5E.exit.thread, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h6d92c326ceaf6029E.exit"

_ZN10serde_core3ser12SerializeMap15serialize_entry17ha4ac62aa3b5e28a5E.exit.thread: ; preds = %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17h458ff60460980dbdE.exit.i.i", %bb.eh
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.pa = load i64, ptr %i.oz, align 8, !range !71, !noundef !57
  %.not167 = icmp eq i64 %i.pa, 0
  br i1 %.not167, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %_ZN10serde_core3ser12SerializeMap15serialize_entry17ha4ac62aa3b5e28a5E.exit.thread
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val174 = load i64, ptr %i.pb, align 8
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h9ea6ec64b5f2ba46E(ptr noalias noundef align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1708, i64 noundef 12, i64 1, i64 %.val174)
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %_ZN10serde_core3ser12SerializeMap15serialize_entry17ha4ac62aa3b5e28a5E.exit.thread
  %.sroa.0238.0.copyload = load i8, ptr %i.b, align 8
  %.sroa.5241.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %i.pc = trunc nuw i8 %.sroa.0238.0.copyload to i1
  br i1 %i.pc, label %bb.er, label %bb.es, !prof !60

end_hunk_13
begin_hunk_14_@"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h89d92bbb496fb633E":bb.a
  %i.adc = icmp eq i64 %.sroa.47.0.i.i.i.i.i146.i.i.i.i.i.i.i.i, 0
  br i1 %i.adc, label %.thread169.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hffdbb7c7a5acdc18E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hffdbb7c7a5acdc18E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h54115392baaa8e1bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.add = add i64 %.sroa.47.0.i.i.i.i.i146.i.i.i.i.i.i.i.i, -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.1.i.i.i.i.i148.i.i.i.i.i.i.i.i.ph303) ]
  %i.ade = load i16, ptr %i.abu, align 2, !noalias !138229, !noundef !57
  %i.adf = zext i16 %i.ade to i64
  %i.adg = icmp samesign ult i64 %.sroa.33.1.i.i.i.i.i147.i.i.i.i.i.i.i.i, %i.adf
  br i1 %i.adg, label %.peel.next.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i152.i.i.i.i.i.i.i.i.preheader, !llvm.loop !137697

.lr.ph.i.i.i.i.i.i.i.i.i152.i.i.i.i.i.i.i.i.preheader: ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hffdbb7c7a5acdc18E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hffdbb7c7a5acdc18E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel"
  %.lcssa305 = phi i64 [ %i.abn, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hffdbb7c7a5acdc18E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel" ], [ %i.add, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hffdbb7c7a5acdc18E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %.lcssa304 = phi i64 [ %i.abl, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hffdbb7c7a5acdc18E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel" ], [ %i.adb, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hffdbb7c7a5acdc18E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i152.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i152.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i152.i.i.i.i.i.i.i.i.preheader, %bb.cz
  %.sroa.0.038.i.i.i.i.i.i.i.i.i153.i.i.i.i.i.i.i.i = phi ptr [ %i.adh, %bb.cz ], [ %.sroa.10.1.i.i.i.i.i148.i.i.i.i.i.i.i.i.ph303, %.lr.ph.i.i.i.i.i.i.i.i.i152.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i.i154.i.i.i.i.i.i.i.i = phi i64 [ %i.adi, %bb.cz ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i152.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.adh = load ptr, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i153.i.i.i.i.i.i.i.i, align 8, !noalias !138251, !noundef !57 ; 6 uses
  %.not.i.i.i.i.i.i.i.i.i.i155.i.i.i.i.i.i.i.i = icmp eq ptr %i.adh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i155.i.i.i.i.i.i.i.i, label %bb.dc, label %bb.cz

bb.cz:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i152.i.i.i.i.i.i.i.i
  %i.adi = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i154.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i153.i.i.i.i.i.i.i.i, i64 316
  %i.adk = load i16, ptr %i.adj, align 4, !noalias !138251 ; 3 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adh, i64 318
  %i.adm = load i16, ptr %i.adl, align 2, !noalias !138229, !noundef !57
  %i.adn = icmp ult i16 %i.adk, %i.adm
  br i1 %i.adn, label %bb.da, label %.lr.ph.i.i.i.i.i.i.i.i.i152.i.i.i.i.i.i.i.i

bb.da:                                            ; preds = %bb.cz
  %i.ado = zext i16 %i.adk to i64                 ; 2 uses
  %i.adp = icmp eq i64 %i.adi, 0
  %i.adq = add nuw nsw i64 %i.ado, 1              ; 2 uses
  br i1 %i.adp, label %.peel.next.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i.outer.backedge, label %bb.db

.peel.next.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i.outer.backedge: ; preds = %.prol.loopexit424, %.new425, %bb.da
  %.sroa.33.1.i.i.i.i.i147.i.i.i.i.i.i.i.i.ph302.be = phi i64 [ %i.adq, %bb.da ], [ 0, %.new425 ], [ 0, %.prol.loopexit424 ]
  %.sroa.10.1.i.i.i.i.i148.i.i.i.i.i.i.i.i.ph303.be = phi ptr [ %i.adh, %bb.da ], [ %.pn30.i.i.i.i.i.i.i.i.i159.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit424 ], [ %.pn30.i.i.i.i.i.i.i.i.i159.i.i.i.i.i.i.i.i.7, %.new425 ]
  br label %.peel.next.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i.outer, !llvm.loop !137700

bb.db:                                            ; preds = %bb.da
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adh, i64 320
  %i.ads = icmp ult i16 %i.adk, 11
  call void @llvm.assume(i1 %i.ads), !noalias !138179
  %i.adt = getelementptr inbounds nuw [8 x i8], ptr %i.adr, i64 %i.adq ; 2 uses
  %xtraiter427 = and i64 %i.adi, 7                ; 2 uses
  %lcmp.mod428.not = icmp eq i64 %xtraiter427, 0
  br i1 %lcmp.mod428.not, label %.prol.loopexit424, label %.prol.preheader423

.prol.preheader423:                               ; preds = %bb.db, %.prol.preheader423
  %.pn30.in.i.i.i.i.i.i.i.i.i156.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.adu, %.prol.preheader423 ], [ %i.adt, %bb.db ]
  %.pn28.in.i.i.i.i.i.i.i.i.i157.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i158.i.i.i.i.i.i.i.i.prol, %.prol.preheader423 ], [ %i.adi, %bb.db ]
  %prol.iter429 = phi i64 [ %prol.iter429.next, %.prol.preheader423 ], [ 0, %bb.db ]
  %.pn28.i.i.i.i.i.i.i.i.i158.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i157.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i159.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i156.i.i.i.i.i.i.i.i.prol, align 8, !noalias !138252, !nonnull !57, !noundef !57 ; 2 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i159.i.i.i.i.i.i.i.i.prol, i64 320 ; 2 uses
  %prol.iter429.next = add i64 %prol.iter429, 1   ; 2 uses
  %prol.iter429.cmp.not = icmp eq i64 %prol.iter429.next, %xtraiter427
  br i1 %prol.iter429.cmp.not, label %.prol.loopexit424, label %.prol.preheader423, !llvm.loop !137704

.prol.loopexit424:                                ; preds = %.prol.preheader423, %bb.db
  %.pn30.i.i.i.i.i.i.i.i.i159.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.db ], [ %.pn30.i.i.i.i.i.i.i.i.i159.i.i.i.i.i.i.i.i.prol, %.prol.preheader423 ]
  %.pn30.in.i.i.i.i.i.i.i.i.i156.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.adt, %bb.db ], [ %i.adu, %.prol.preheader423 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i157.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.adi, %bb.db ], [ %.pn28.i.i.i.i.i.i.i.i.i158.i.i.i.i.i.i.i.i.prol, %.prol.preheader423 ]
  %i.adv = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i154.i.i.i.i.i.i.i.i, 7
  br i1 %i.adv, label %.peel.next.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i.outer.backedge, label %.new425

.new425:                                          ; preds = %.prol.loopexit424, %.new425
  %.pn30.in.i.i.i.i.i.i.i.i.i156.i.i.i.i.i.i.i.i = phi ptr [ %i.aee, %.new425 ], [ %.pn30.in.i.i.i.i.i.i.i.i.i156.i.i.i.i.i.i.i.i.unr, %.prol.loopexit424 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i157.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i158.i.i.i.i.i.i.i.i.7, %.new425 ], [ %.pn28.in.i.i.i.i.i.i.i.i.i157.i.i.i.i.i.i.i.i.unr, %.prol.loopexit424 ]
  %.pn30.i.i.i.i.i.i.i.i.i159.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i156.i.i.i.i.i.i.i.i, align 8, !noalias !138252, !nonnull !57, !noundef !57
  %i.adw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i159.i.i.i.i.i.i.i.i, i64 320
  %.pn30.i.i.i.i.i.i.i.i.i159.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.adw, align 8, !noalias !138252, !nonnull !57, !noundef !57
  %i.adx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i159.i.i.i.i.i.i.i.i.1, i64 320
  %.pn30.i.i.i.i.i.i.i.i.i159.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.adx, align 8, !noalias !138252, !nonnull !57, !noundef !57
  %i.ady = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i159.i.i.i.i.i.i.i.i.2, i64 320
  %.pn30.i.i.i.i.i.i.i.i.i159.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.ady, align 8, !noalias !138252, !nonnull !57, !noundef !57
  %i.adz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i159.i.i.i.i.i.i.i.i.3, i64 320
  %.pn30.i.i.i.i.i.i.i.i.i159.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.adz, align 8, !noalias !138252, !nonnull !57, !noundef !57
  %i.aea = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i159.i.i.i.i.i.i.i.i.4, i64 320
  %.pn30.i.i.i.i.i.i.i.i.i159.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.aea, align 8, !noalias !138252, !nonnull !57, !noundef !57
  %i.aeb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i159.i.i.i.i.i.i.i.i.5, i64 320
  %.pn30.i.i.i.i.i.i.i.i.i159.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.aeb, align 8, !noalias !138252, !nonnull !57, !noundef !57
  %i.aec = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i159.i.i.i.i.i.i.i.i.6, i64 320
  %.pn28.i.i.i.i.i.i.i.i.i158.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i157.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i159.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.aec, align 8, !noalias !138252, !nonnull !57, !noundef !57 ; 2 uses
  %i.aed = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i158.i.i.i.i.i.i.i.i.7, 0
  %i.aee = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i159.i.i.i.i.i.i.i.i.7, i64 320
  br i1 %i.aed, label %.peel.next.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i.outer.backedge, label %.new425, !llvm.loop !137700

bb.dc:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i152.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2537) #80
          to label %.noexc.i.i.i.i.i.i.i162.i.i.i.i.i.i.i.i unwind label %bb.dd, !noalias !138253

.noexc.i.i.i.i.i.i.i162.i.i.i.i.i.i.i.i:          ; preds = %bb.dc
  unreachable

bb.dd:                                            ; preds = %bb.dc
  %i.aef = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !138179
  unreachable

.thread169.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h54115392baaa8e1bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h54115392baaa8e1bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel", %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h54115392baaa8e1bE.exit.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.aeg = phi i64 [ %i.yx, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h54115392baaa8e1bE.exit.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.adb, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h54115392baaa8e1bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.abl, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h54115392baaa8e1bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel" ] ; 3 uses
  %i.aeh = load i64, ptr %.val9.i6.i.i120.i.i.i.i.i.i.i.i, align 8, !range !56, !alias.scope !138254, !noalias !138255, !noundef !57
  %i.aei = icmp eq i64 %i.aeh, %i.aeg
  br i1 %i.aei, label %.thread171.i.i.i.i.i.sink.split.i.i.i.i.i.i.i.i, label %.thread171.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !60

.thread171.i.i.i.i.i.sink.split.i.i.i.i.i.i.i.i:  ; preds = %.thread169.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cd
  %.sink.i.i.i.i.i.i.i.i = phi i64 [ %i.we, %bb.cd ], [ %i.aeg, %.thread169.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i120.i.i.i.i.i.i.i.i, i64 noundef %.sink.i.i.i.i.i.i.i.i, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc80.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !137841

.noexc80.i.i:                                     ; preds = %.thread171.i.i.i.i.i.sink.split.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i13.i.i.i.i.i166.i.i.i.i.i.i.i.i = load i64, ptr %i.vv, align 8, !noalias !138256
  br label %.thread171.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread171.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %.noexc80.i.i, %.thread169.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cd
  %.sink393.i.i.i.i.i.i.i.i = phi i64 [ %i.aeg, %.thread169.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.we, %bb.cd ], [ %.pre.i.i.i.i.i.i.i13.i.i.i.i.i166.i.i.i.i.i.i.i.i, %.noexc80.i.i ] ; 3 uses
  %i.aej = icmp sgt i64 %.sink393.i.i.i.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.aej)
  %i.aek = load ptr, ptr %i.wb, align 8, !noalias !138256, !nonnull !57, !noundef !57
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aek, i64 %.sink393.i.i.i.i.i.i.i.i
  store i8 125, ptr %i.ael, align 1, !noalias !138256
  %storemerge.i.i.i.i.i164.i.i.i.i.i.i.i.i = add nuw i64 %.sink393.i.i.i.i.i.i.i.i, 1
  store i64 %storemerge.i.i.i.i.i164.i.i.i.i.i.i.i.i, ptr %i.vv, align 8, !noalias !138256
  br i1 %i.cq, label %bb.di, label %bb.de

bb.de:                                            ; preds = %.thread171.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !138257)
  call void @llvm.experimental.noalias.scope.decl(metadata !138258)
  call void @llvm.experimental.noalias.scope.decl(metadata !138259)
  %.val.i.i.i12.i.i.i.i.i.i.i = load ptr, ptr %i.dm, align 8, !noalias !138260, !nonnull !57, !noundef !57 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !138261)
  call void @llvm.experimental.noalias.scope.decl(metadata !138262)
  call void @llvm.experimental.noalias.scope.decl(metadata !138263)
  call void @llvm.experimental.noalias.scope.decl(metadata !138264)
  %i.aem = getelementptr inbounds nuw i8, ptr %.val.i.i.i12.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.aen = load i64, ptr %i.aem, align 8, !alias.scope !138265, !noalias !138266, !noundef !57 ; 3 uses
  %i.aeo = load i64, ptr %.val.i.i.i12.i.i.i.i.i.i.i, align 8, !range !56, !alias.scope !138265, !noalias !138266, !noundef !57
  %i.aep = icmp eq i64 %i.aeo, %i.aen
  br i1 %i.aep, label %bb.df, label %bb.dg, !prof !60

bb.df:                                            ; preds = %bb.de
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i12.i.i.i.i.i.i.i, i64 noundef %i.aen, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc81.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !137841

.noexc81.i.i:                                     ; preds = %bb.df
  %.pre.i.i.i.i.i.i.i.i.i20.i.i.i.i.i.i.i = load i64, ptr %i.aem, align 8, !alias.scope !138267, !noalias !138266
  br label %bb.dg

bb.dg:                                            ; preds = %.noexc81.i.i, %bb.de
  %i.aeq = phi i64 [ %i.aen, %bb.de ], [ %.pre.i.i.i.i.i.i.i.i.i20.i.i.i.i.i.i.i, %.noexc81.i.i ] ; 3 uses
  %i.aer = icmp sgt i64 %i.aeq, -1
  call void @llvm.assume(i1 %i.aer)
  %i.aes = getelementptr inbounds nuw i8, ptr %.val.i.i.i12.i.i.i.i.i.i.i, i64 8
  %i.aet = load ptr, ptr %i.aes, align 8, !alias.scope !138267, !noalias !138266, !nonnull !57, !noundef !57
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aet, i64 %i.aeq
  store i8 44, ptr %i.aeu, align 1, !noalias !138268
  %i.aev = add nuw i64 %i.aeq, 1
  store i64 %i.aev, ptr %i.aem, align 8, !alias.scope !138267, !noalias !138266
  %.val9.pre.i.i.i14.i.i.i.i.i.i.i = load ptr, ptr %i.dm, align 8, !noalias !138260
  store i8 2, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 1, !alias.scope !138269, !noalias !138270
  invoke fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val9.pre.i.i.i14.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1465, i64 noundef range(i64 13, 22) 13)
          to label %.noexc82.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i

.noexc82.i.i:                                     ; preds = %bb.dg
  %.val.i5.i.i16.i.i.i.i.i.i.i = load ptr, ptr %i.dm, align 8, !noalias !138271, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !138272)
  call void @llvm.experimental.noalias.scope.decl(metadata !138273)
  call void @llvm.experimental.noalias.scope.decl(metadata !138274)
  call void @llvm.experimental.noalias.scope.decl(metadata !138275)
  %i.aew = getelementptr inbounds nuw i8, ptr %.val.i5.i.i16.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.aex = load i64, ptr %i.aew, align 8, !alias.scope !138276, !noalias !138277, !noundef !57 ; 3 uses
  %i.aey = load i64, ptr %.val.i5.i.i16.i.i.i.i.i.i.i, align 8, !range !56, !alias.scope !138276, !noalias !138277, !noundef !57
  %i.aez = icmp eq i64 %i.aey, %i.aex
  br i1 %i.aez, label %bb.dh, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha9dee27774a513a8E.exit21.i.i.i.i.i.i.i", !prof !60

bb.dh:                                            ; preds = %.noexc82.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i5.i.i16.i.i.i.i.i.i.i, i64 noundef %i.aex, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc83.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !137841

.noexc83.i.i:                                     ; preds = %bb.dh
  %.pre.i.i.i.i.i.i.i6.i.i19.i.i.i.i.i.i.i = load i64, ptr %i.aew, align 8, !alias.scope !138278, !noalias !138277
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha9dee27774a513a8E.exit21.i.i.i.i.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha9dee27774a513a8E.exit21.i.i.i.i.i.i.i": ; preds = %.noexc83.i.i, %.noexc82.i.i
  %i.afa = phi i64 [ %i.aex, %.noexc82.i.i ], [ %.pre.i.i.i.i.i.i.i6.i.i19.i.i.i.i.i.i.i, %.noexc83.i.i ] ; 3 uses
  %i.afb = icmp sgt i64 %i.afa, -1
  call void @llvm.assume(i1 %i.afb)
  %i.afc = getelementptr inbounds nuw i8, ptr %.val.i5.i.i16.i.i.i.i.i.i.i, i64 8
  %i.afd = load ptr, ptr %i.afc, align 8, !alias.scope !138278, !noalias !138277, !nonnull !57, !noundef !57
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afd, i64 %i.afa
  store i8 58, ptr %i.afe, align 1, !noalias !138279
  %i.aff = add nuw i64 %i.afa, 1
  store i64 %i.aff, ptr %i.aew, align 8, !alias.scope !138278, !noalias !138277
  %i.afg = invoke fastcc noalias noundef align 8 ptr @"_ZN123_$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17h7402f2c4161a18e2E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %i.bt, ptr noalias noundef align 8 dereferenceable(8) %i.dm)
          to label %.noexc84.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !137875 ; 2 uses

.noexc84.i.i:                                     ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha9dee27774a513a8E.exit21.i.i.i.i.i.i.i"
  %.not57.i.i.i.i.i.i.i.i = icmp eq ptr %i.afg, null
  br i1 %.not57.i.i.i.i.i.i.i.i, label %bb.di, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17haefd67adef83a5beE.exit.thread.i.i.i.i"

bb.di:                                            ; preds = %.noexc84.i.i, %.thread171.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.afh = invoke fastcc noundef align 8 ptr @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h8e5025f4df484539E"(ptr noalias noundef align 8 dereferenceable(16) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1466, i64 noundef 22, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.cr)
          to label %.noexc85.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !137875 ; 2 uses

.noexc85.i.i:                                     ; preds = %bb.dj
  %.not59.i.i.i.i.i.i.i.i = icmp eq ptr %i.afh, null
  br i1 %.not59.i.i.i.i.i.i.i.i, label %bb.dk, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17haefd67adef83a5beE.exit.thread.i.i.i.i"

bb.dk:                                            ; preds = %.noexc85.i.i, %bb.di
  %.pre79.i.i.i.i.i.i.i = load i8, ptr %i.f, align 8, !range !74, !noalias !137899 ; 2 uses
  br i1 %i.cw, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha9dee27774a513a8E.exit._crit_edge.i.i.i.i.i.i.i", label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.experimental.noalias.scope.decl(metadata !138280)
  %i.afi = trunc nuw i8 %.pre79.i.i.i.i.i.i.i to i1
  br i1 %i.afi, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17haefd67adef83a5beE.exit.thread.i.sink.split.i.i.i", label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.experimental.noalias.scope.decl(metadata !138281)
  call void @llvm.experimental.noalias.scope.decl(metadata !138282)
  %i.afj = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !138283, !noalias !138284, !nonnull !57, !align !61, !noundef !57 ; 5 uses
  %i.afk = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 1, !range !65, !alias.scope !138283, !noalias !138284, !noundef !57
  %i.afl = icmp eq i8 %i.afk, 1
  %.val.i.i.i9.i.i.i.i.i.i.i = load ptr, ptr %i.afj, align 8, !noalias !138285 ; 6 uses
  br i1 %i.afl, label %bb.dp, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i9.i.i.i.i.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !138286)
  call void @llvm.experimental.noalias.scope.decl(metadata !138287)
  call void @llvm.experimental.noalias.scope.decl(metadata !138288)
  call void @llvm.experimental.noalias.scope.decl(metadata !138289)
  %i.afm = getelementptr inbounds nuw i8, ptr %.val.i.i.i9.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.afn = load i64, ptr %i.afm, align 8, !alias.scope !138290, !noalias !138291, !noundef !57 ; 3 uses
  %i.afo = load i64, ptr %.val.i.i.i9.i.i.i.i.i.i.i, align 8, !range !56, !alias.scope !138290, !noalias !138291, !noundef !57
  %i.afp = icmp eq i64 %i.afo, %i.afn
  br i1 %i.afp, label %bb.do, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i.i.i.i.i.i.i.i", !prof !60

bb.do:                                            ; preds = %bb.dn
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i9.i.i.i.i.i.i.i, i64 noundef %i.afn, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc86.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !137841

.noexc86.i.i:                                     ; preds = %bb.do
  %.pre.i.i.i.i.i.i.i.i.i11.i.i.i.i.i.i.i = load i64, ptr %i.afm, align 8, !alias.scope !138292, !noalias !138291
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc86.i.i, %bb.dn
  %i.afq = phi i64 [ %i.afn, %bb.dn ], [ %.pre.i.i.i.i.i.i.i.i.i11.i.i.i.i.i.i.i, %.noexc86.i.i ] ; 3 uses
  %i.afr = icmp sgt i64 %i.afq, -1
  call void @llvm.assume(i1 %i.afr)
  %i.afs = getelementptr inbounds nuw i8, ptr %.val.i.i.i9.i.i.i.i.i.i.i, i64 8
  %i.aft = load ptr, ptr %i.afs, align 8, !alias.scope !138292, !noalias !138291, !nonnull !57, !noundef !57
  %i.afu = getelementptr inbounds nuw i8, ptr %i.aft, i64 %i.afq
  store i8 44, ptr %i.afu, align 1, !noalias !138293
  %i.afv = add nuw i64 %i.afq, 1
  store i64 %i.afv, ptr %i.afm, align 8, !alias.scope !138292, !noalias !138291
  %.val9.pre.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.afj, align 8, !noalias !138285
  br label %bb.dp

bb.dp:                                            ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i.i.i.i.i.i.i.i", %bb.dm
  %.val9.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.val.i.i.i9.i.i.i.i.i.i.i, %bb.dm ], [ %.val9.pre.i.i.i.i.i.i.i.i.i.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i.i.i.i.i.i.i.i" ]
  invoke fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val9.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1467, i64 noundef range(i64 13, 22) 21)
          to label %.noexc87.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i

.noexc87.i.i:                                     ; preds = %bb.dp
  %.val.i5.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.afj, align 8, !noalias !138294, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !138295)
  call void @llvm.experimental.noalias.scope.decl(metadata !138296)
  call void @llvm.experimental.noalias.scope.decl(metadata !138297)
  call void @llvm.experimental.noalias.scope.decl(metadata !138298)
  %i.afw = getelementptr inbounds nuw i8, ptr %.val.i5.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.afx = load i64, ptr %i.afw, align 8, !alias.scope !138299, !noalias !138300, !noundef !57 ; 3 uses
  %i.afy = load i64, ptr %.val.i5.i.i.i.i.i.i.i.i.i, align 8, !range !56, !alias.scope !138299, !noalias !138300, !noundef !57
  %i.afz = icmp eq i64 %i.afy, %i.afx
  br i1 %i.afz, label %bb.dq, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha9dee27774a513a8E.exit.i.i.i.i.i.i.i", !prof !60

bb.dq:                                            ; preds = %.noexc87.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i5.i.i.i.i.i.i.i.i.i, i64 noundef %i.afx, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc88.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !137841

.noexc88.i.i:                                     ; preds = %bb.dq
  %.pre.i.i.i.i.i.i.i6.i.i.i.i.i.i.i.i.i = load i64, ptr %i.afw, align 8, !alias.scope !138301, !noalias !138300
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha9dee27774a513a8E.exit.i.i.i.i.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha9dee27774a513a8E.exit.i.i.i.i.i.i.i": ; preds = %.noexc88.i.i, %.noexc87.i.i
  %i.aga = phi i64 [ %i.afx, %.noexc87.i.i ], [ %.pre.i.i.i.i.i.i.i6.i.i.i.i.i.i.i.i.i, %.noexc88.i.i ] ; 3 uses
  %i.agb = icmp sgt i64 %i.aga, -1
  call void @llvm.assume(i1 %i.agb)
  %i.agc = getelementptr inbounds nuw i8, ptr %.val.i5.i.i.i.i.i.i.i.i.i, i64 8
  %i.agd = load ptr, ptr %i.agc, align 8, !alias.scope !138301, !noalias !138300, !nonnull !57, !noundef !57
  %i.age = getelementptr inbounds nuw i8, ptr %i.agd, i64 %i.aga
  store i8 58, ptr %i.age, align 1, !noalias !138302
  %i.agf = add nuw i64 %i.aga, 1
  store i64 %i.agf, ptr %i.afw, align 8, !alias.scope !138301, !noalias !138300
  %i.agg = invoke fastcc noalias noundef align 8 ptr @"_ZN123_$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17h7402f2c4161a18e2E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ct, ptr noalias noundef align 8 dereferenceable(8) %i.afj)
          to label %.noexc89.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !137875 ; 2 uses

.noexc89.i.i:                                     ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha9dee27774a513a8E.exit.i.i.i.i.i.i.i"
  %.not61.i.i.i.i.i.i.i.i = icmp eq ptr %i.agg, null
  br i1 %.not61.i.i.i.i.i.i.i.i, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha9dee27774a513a8E.exit._crit_edge.thread.i.thread.i.i.i.i.i.i", label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17haefd67adef83a5beE.exit.thread.i.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha9dee27774a513a8E.exit._crit_edge.i.i.i.i.i.i.i": ; preds = %bb.dk
  %.pre.i.i.i.i.i.i.i = trunc nuw i8 %.pre79.i.i.i.i.i.i.i to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !138303)
  br i1 %.pre.i.i.i.i.i.i.i, label %bb.ds, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha9dee27774a513a8E.exit._crit_edge.thread.i.i.i.i.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha9dee27774a513a8E.exit._crit_edge.thread.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha9dee27774a513a8E.exit._crit_edge.i.i.i.i.i.i.i"
  %.pre.i.i.i.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 1, !range !65, !alias.scope !138304, !noalias !138305
  %i.agh = icmp eq i8 %.pre.i.i.i.i.i.i, 0
  call void @llvm.experimental.noalias.scope.decl(metadata !138306), !noalias !137897
  br i1 %i.agh, label %bb.ds, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha9dee27774a513a8E.exit._crit_edge.thread.i.i.i._ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha9dee27774a513a8E.exit._crit_edge.thread.i.thread.i.i_crit_edge.i.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha9dee27774a513a8E.exit._crit_edge.thread.i.i.i._ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha9dee27774a513a8E.exit._crit_edge.thread.i.thread.i.i_crit_edge.i.i.i.i": ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha9dee27774a513a8E.exit._crit_edge.thread.i.i.i.i.i.i.i"
  %.pre.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !138304, !noalias !138305
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha9dee27774a513a8E.exit._crit_edge.thread.i.thread.i.i.i.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha9dee27774a513a8E.exit._crit_edge.thread.i.thread.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha9dee27774a513a8E.exit._crit_edge.thread.i.i.i._ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha9dee27774a513a8E.exit._crit_edge.thread.i.thread.i.i_crit_edge.i.i.i.i", %.noexc89.i.i
  %i.agi = phi ptr [ %.pre.i.i.i.i, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha9dee27774a513a8E.exit._crit_edge.thread.i.i.i._ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha9dee27774a513a8E.exit._crit_edge.thread.i.thread.i.i_crit_edge.i.i.i.i" ], [ %i.afj, %.noexc89.i.i ]
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.agi, align 8, !noalias !138307, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !138308), !noalias !137897
  call void @llvm.experimental.noalias.scope.decl(metadata !138309), !noalias !137897
  call void @llvm.experimental.noalias.scope.decl(metadata !138310), !noalias !137897
  call void @llvm.experimental.noalias.scope.decl(metadata !138311), !noalias !137897
  %i.agj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.agk = load i64, ptr %i.agj, align 8, !alias.scope !138312, !noalias !138313, !noundef !57 ; 3 uses
  %i.agl = load i64, ptr %.val.i.i.i.i.i.i.i.i.i, align 8, !range !56, !alias.scope !138312, !noalias !138313, !noundef !57
  %i.agm = icmp eq i64 %i.agl, %i.agk
  br i1 %i.agm, label %bb.dr, label %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i.i.i.i.i.i.i.i.i, !prof !60

bb.dr:                                            ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha9dee27774a513a8E.exit._crit_edge.thread.i.thread.i.i.i.i.i.i"
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i, i64 noundef %i.agk, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc90.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !137841

.noexc90.i.i:                                     ; preds = %bb.dr
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.agj, align 8, !alias.scope !138314, !noalias !138313
  br label %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc90.i.i, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha9dee27774a513a8E.exit._crit_edge.thread.i.thread.i.i.i.i.i.i"
  %i.agn = phi i64 [ %i.agk, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha9dee27774a513a8E.exit._crit_edge.thread.i.thread.i.i.i.i.i.i" ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc90.i.i ] ; 3 uses
  %i.ago = icmp sgt i64 %i.agn, -1
  call void @llvm.assume(i1 %i.ago), !noalias !137897
  %i.agp = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 8
  %i.agq = load ptr, ptr %i.agp, align 8, !alias.scope !138314, !noalias !138313, !nonnull !57, !noundef !57
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agq, i64 %i.agn
  store i8 125, ptr %i.agr, align 1, !noalias !138315
  %i.ags = add nuw i64 %i.agn, 1
  store i64 %i.ags, ptr %i.agj, align 8, !alias.scope !138314, !noalias !138313
  br label %bb.ds

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17haefd67adef83a5beE.exit.thread.i.sink.split.i.i.i": ; preds = %bb.dl, %bb.s
  %i.agt = invoke noundef nonnull align 8 ptr @_ZN10serde_json3ser17invalid_raw_value17h7b86ac75f635f2e0E()
          to label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17haefd67adef83a5beE.exit.thread.i.i.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !137841

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17haefd67adef83a5beE.exit.thread.i.i.i.i": ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17haefd67adef83a5beE.exit.thread.i.sink.split.i.i.i", %.noexc89.i.i, %.noexc85.i.i, %.noexc84.i.i, %.noexc13.i.i
  %.sroa.0.1.i.i.i.ph.i.i.i.i = phi ptr [ %i.afh, %.noexc85.i.i ], [ %i.di, %.noexc13.i.i ], [ %i.agg, %.noexc89.i.i ], [ %i.afg, %.noexc84.i.i ], [ %i.agt, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17haefd67adef83a5beE.exit.thread.i.sink.split.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !137899
  br label %bb.ea

bb.ds:                                            ; preds = %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i.i.i.i.i.i.i.i.i, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha9dee27774a513a8E.exit._crit_edge.thread.i.i.i.i.i.i.i", %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha9dee27774a513a8E.exit._crit_edge.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !137899
  br i1 %or.cond67.i.i.i.i, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.agu = invoke fastcc noundef align 8 ptr @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h9969f9544a2ed206E"(ptr noalias noundef align 8 dereferenceable(16) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ai)
          to label %.noexc92.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ; 2 uses

.noexc92.i.i:                                     ; preds = %bb.dt
  %.not58.i.i.i.i = icmp eq ptr %i.agu, null
  br i1 %.not58.i.i.i.i, label %bb.du, label %bb.ea

bb.du:                                            ; preds = %.noexc92.i.i, %bb.ds
  %i.agv = getelementptr inbounds nuw i8, ptr %2, i64 1192
  %i.agw = invoke fastcc noundef align 8 ptr @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h49195ac69d898f32E"(ptr noalias noundef align 8 dereferenceable(16) %i.g, ptr nonnull readonly %i.agv)
          to label %.noexc93.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ; 2 uses

.noexc93.i.i:                                     ; preds = %bb.du
  %.not59.i.i.i.i = icmp eq ptr %i.agw, null
  br i1 %.not59.i.i.i.i, label %bb.dv, label %bb.ea

bb.dv:                                            ; preds = %.noexc93.i.i
  %i.agx = getelementptr inbounds nuw i8, ptr %2, i64 1208
  %i.agy = invoke fastcc noundef align 8 ptr @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hf690d1c181249d82E"(ptr noalias noundef align 8 dereferenceable(16) %i.g, ptr nonnull readonly %i.agx)
          to label %.noexc94.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ; 2 uses

.noexc94.i.i:                                     ; preds = %bb.dv
  %.not61.i.i.i.i = icmp eq ptr %i.agy, null
  br i1 %.not61.i.i.i.i, label %bb.dw, label %bb.ea

bb.dw:                                            ; preds = %.noexc94.i.i
  %i.agz = getelementptr inbounds nuw i8, ptr %2, i64 1224
  %i.aha = invoke fastcc noundef align 8 ptr @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h932ce5ab4b8a7423E"(ptr noalias noundef align 8 dereferenceable(16) %i.g, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.agz)
          to label %.noexc95.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ; 2 uses

.noexc95.i.i:                                     ; preds = %bb.dw
  %.not63.i.i.i.i = icmp eq ptr %i.aha, null
  br i1 %.not63.i.i.i.i, label %bb.dx, label %bb.ea

bb.dx:                                            ; preds = %.noexc95.i.i
  %i.ahb = getelementptr inbounds nuw i8, ptr %2, i64 1104
  %.val.i.i.i.i = load ptr, ptr %i.ahb, align 8, !alias.scope !137847, !noalias !137848
  %i.ahc = getelementptr inbounds nuw i8, ptr %2, i64 1112
  %.val69.i.i.i.i = load i64, ptr %i.ahc, align 8, !alias.scope !137847, !noalias !137848
  %i.ahd = invoke fastcc noundef align 8 ptr @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h109770cd78803a66E"(ptr noalias noundef align 8 dereferenceable(16) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1461, i64 noundef 10, ptr %.val.i.i.i.i, i64 %.val69.i.i.i.i)
          to label %.noexc96.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !137841 ; 2 uses

.noexc96.i.i:                                     ; preds = %bb.dx
  %.not65.i.i.i.i = icmp eq ptr %i.ahd, null
  br i1 %.not65.i.i.i.i, label %bb.dy, label %bb.ea

bb.dy:                                            ; preds = %.noexc96.i.i
  invoke fastcc void @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$3end17h9efebf22f020f0b7E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.g)
          to label %_ZN10serde_json3ser6to_vec17h610519d2682b5a72E.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i

.loopexit.i.i.loopexit:                           ; preds = %bb.cv, %bb.cx, %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i151.i.i.i.i.i.i.i.i, %bb.cy, %bb.cw
  %lpad.loopexit418 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.i.i.loopexit.split-lp:                  ; preds = %bb.cr, %bb.cs, %bb.ct, %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i151.i.i.i.i.i.i.i.i.peel, %bb.cu
  %lpad.loopexit.split-lp419 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.i.i.loopexit:         ; preds = %bb.br, %bb.bs, %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i81.i.i.i.i.i.i.i.i, %bb.bt, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %lpad.loopexit388 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.i.i.loopexit.split-lp: ; preds = %bb.bo, %switch.lookup294.peel, %bb.bp, %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i81.i.i.i.i.i.i.i.i.peel, %bb.bq
  %lpad.loopexit.split-lp389 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.loopexit: ; preds = %bb.ar, %bb.as, %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.at, %_ZN10serde_json3ser9Formatter16begin_object_key17hf08d083a82ccb2fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.loopexit.split-lp: ; preds = %bb.ao, %_ZN10serde_json3ser9Formatter16begin_object_key17hf08d083a82ccb2fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %bb.ap, %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %bb.aq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i: ; preds = %bb.dy, %bb.dv, %bb.dt, %bb.dw, %bb.du, %bb.k, %bb.o, %bb.w, %_ZN10serde_json3ser9Formatter16begin_object_key17hf08d083a82ccb2fbE.exit.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bd, %bb.ca, %.lr.ph.split.i.i.i.i.i.i.i131.i.i.i.i.i.i.i.i, %bb.dg, %bb.dp, %bb.dx, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17haefd67adef83a5beE.exit.thread.i.sink.split.i.i.i", %bb.dr, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha9dee27774a513a8E.exit.i.i.i.i.i.i.i", %bb.dq, %bb.do, %bb.dj, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha9dee27774a513a8E.exit21.i.i.i.i.i.i.i", %bb.dh, %bb.df, %.thread171.i.i.i.i.i.sink.split.i.i.i.i.i.i.i.i, %bb.cl, %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.peel.i.i.i.i.i.i.i134.i.i.i.i.i.i.i.i, %bb.ck, %bb.cc, %bb.cb, %bb.bz, %.thread114.i.i.i.i.i.sink.split.i.i.i.i.i.i.i.i, %bb.bf, %bb.be, %bb.bc, %bb.az, %bb.ai, %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ah, %.critedge.i54.i.i.i.i.i.i.i.i.i.i.i.invoke.i.i, %bb.aa, %bb.y, %bb.x, %bb.v, %bb.r, %bb.q, %bb.p, %bb.n, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h647d6edf6b65fd10E.exit.i.i.i.i", %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h647d6edf6b65fd10E.exit.thread.i.i.i.i", %bb.l, %bb.j, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1b8af89e63a58f7cE.exit.i.i"
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i:                           ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.loopexit.split-lp, %.loopexit.split-lp.loopexit.i.i.loopexit, %.loopexit.split-lp.loopexit.i.i.loopexit.split-lp, %.loopexit.i.i.loopexit, %.loopexit.i.i.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ], [ %lpad.loopexit.split-lp419, %.loopexit.i.i.loopexit.split-lp ], [ %lpad.loopexit.split-lp389, %.loopexit.split-lp.loopexit.i.i.loopexit.split-lp ], [ %lpad.loopexit418, %.loopexit.i.i.loopexit ], [ %lpad.loopexit388, %.loopexit.split-lp.loopexit.i.i.loopexit ], [ %lpad.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !138316)
  %.val.i.i.i = load i64, ptr %i.i, align 8, !range !56, !alias.scope !138316, !noalias !137841, !noundef !57 ; 2 uses
  %i.ahe = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ahe, label %bb.ev, label %bb.dz

bb.dz:                                            ; preds = %.loopexit.split-lp.i.i
  %.val1.i.i.i = load ptr, ptr %i.ag, align 8, !alias.scope !138316, !noalias !137841, !nonnull !57, !noundef !57
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !138317
  br label %bb.ev

bb.ea:                                            ; preds = %.noexc96.i.i, %.noexc95.i.i, %.noexc94.i.i, %.noexc93.i.i, %.noexc92.i.i, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17haefd67adef83a5beE.exit.thread.i.i.i.i", %.noexc8.i.i, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h647d6edf6b65fd10E.exit.thread.i.i.i.i", %.noexc3.i.i
  %.sroa.0.0.i.i.ph.i.i = phi ptr [ %i.agu, %.noexc92.i.i ], [ %i.agw, %.noexc93.i.i ], [ %i.agy, %.noexc94.i.i ], [ %.sroa.0.1.i.i.i.ph.i.i.i.i, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17haefd67adef83a5beE.exit.thread.i.i.i.i" ], [ %i.bs, %.noexc8.i.i ], [ %i.ar, %.noexc3.i.i ], [ %i.aha, %.noexc95.i.i ], [ %i.ahd, %.noexc96.i.i ], [ %i.bl, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h647d6edf6b65fd10E.exit.thread.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !137845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !137845
  call void @llvm.experimental.noalias.scope.decl(metadata !138318)
  %.val.i98.i.i = load i64, ptr %i.i, align 8, !range !56, !alias.scope !138318, !noalias !137841, !noundef !57 ; 2 uses
  %i.ahf = icmp eq i64 %.val.i98.i.i, 0
  br i1 %i.ahf, label %_ZN10serde_json3ser6to_vec17h610519d2682b5a72E.exit.thread.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %.val1.i99.i.i = load ptr, ptr %i.ag, align 8, !alias.scope !138318, !noalias !137841, !nonnull !57, !noundef !57
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i99.i.i, i64 noundef %.val.i98.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !138319
  br label %_ZN10serde_json3ser6to_vec17h610519d2682b5a72E.exit.thread.i

_ZN10serde_json3ser6to_vec17h610519d2682b5a72E.exit.thread.i: ; preds = %bb.eb, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !137841
  br label %bb.ec

_ZN10serde_json3ser6to_vec17h610519d2682b5a72E.exit.i: ; preds = %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !137845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !137845
  %.sroa.0.0.copyload.i = load i64, ptr %i.i, align 8, !noalias !138320 ; 7 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %i.ag, align 8, !noalias !138320 ; 9 uses
  %.sroa.9.0.copyload.i = load i64, ptr %i.ah, align 8, !noalias !138320 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !137841
  switch i64 %.sroa.0.0.copyload.i, label %bb.ei [
    i64 -9223372036854775808, label %bb.ec
    i64 -9223372036854775807, label %bb.eh
  ]

bb.ec:                                            ; preds = %_ZN10serde_json3ser6to_vec17h610519d2682b5a72E.exit.i, %_ZN10serde_json3ser6to_vec17h610519d2682b5a72E.exit.thread.i
  %.sroa.6.015.i = phi ptr [ %.sroa.0.0.i.i.ph.i.i, %_ZN10serde_json3ser6to_vec17h610519d2682b5a72E.exit.thread.i ], [ %.sroa.6.0.copyload.i, %_ZN10serde_json3ser6to_vec17h610519d2682b5a72E.exit.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.015.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !138321
  store ptr %.sroa.6.015.i, ptr %i.j, align 8, !noalias !138322
end_hunk_14
begin_hunk_15_@_ZN6anyhow5error23object_reallocate_boxed17h366092598071f09bE:bb.a
  %i.j = icmp eq i64 %i.i, 3
  br i1 %i.j, label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h5e57a7efea93378fE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$std..backtrace..Backtrace$GT$17hb36ac16187dee329E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.h)
          to label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h5e57a7efea93378fE.exit" unwind label %bb.h

bb.e:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.e, align 8, !noalias !181334
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.d, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !range !62, !alias.scope !181335, !noundef !57
  %i.n = icmp eq i64 %i.m, 3
  br i1 %i.n, label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h5e57a7efea93378fE.exit7", label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$std..backtrace..Backtrace$GT$17hb36ac16187dee329E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.l)
          to label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h5e57a7efea93378fE.exit7" unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h5e57a7efea93378fE.exit"

"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h5e57a7efea93378fE.exit7": ; preds = %bb.e, %bb.f
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 72, i64 noundef 8) #79
  %i.p = insertvalue { ptr, ptr } poison, ptr %i.e, 0
  %i.q = insertvalue { ptr, ptr } %i.p, ptr @3897, 1
  ret { ptr, ptr } %i.q

bb.h:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82
  unreachable

"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h5e57a7efea93378fE.exit": ; preds = %bb.d, %bb.c, %bb.g
  %.pn = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.g, %bb.c ], [ %i.g, %bb.d ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 72, i64 noundef 8) #79
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN6anyhow5error23object_reallocate_boxed17h61fe53af382968b5E(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !181342
  %i.c = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !181342 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.f, !prof !66

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 24) #80
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @"_ZN4core3ptr32drop_in_place$LT$heed..Error$GT$17hc98baf41816c301eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #81
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82
  unreachable

.body:                                            ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !range !62, !alias.scope !181343, !noundef !57
  %i.i = icmp eq i64 %i.h, 3
  br i1 %i.i, label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h5e57a7efea93378fE.exit", label %bb.e

bb.e:                                             ; preds = %.body
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$std..backtrace..Backtrace$GT$17hb36ac16187dee329E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.g)
          to label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h5e57a7efea93378fE.exit" unwind label %bb.i

bb.f:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !62, !alias.scope !181344, !noundef !57
  %i.l = icmp eq i64 %i.k, 3
  br i1 %i.l, label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h5e57a7efea93378fE.exit7", label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$std..backtrace..Backtrace$GT$17hb36ac16187dee329E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.j)
          to label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h5e57a7efea93378fE.exit7" unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h5e57a7efea93378fE.exit"

"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h5e57a7efea93378fE.exit7": ; preds = %bb.f, %bb.g
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 80, i64 noundef 8) #79
  %i.n = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.o = insertvalue { ptr, ptr } %i.n, ptr @3641, 1
  ret { ptr, ptr } %i.o

bb.i:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82
  unreachable

"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h5e57a7efea93378fE.exit": ; preds = %bb.e, %.body, %bb.h
  %.pn = phi { ptr, i32 } [ %i.m, %bb.h ], [ %i.e, %.body ], [ %i.e, %bb.e ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 80, i64 noundef 8) #79
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN6anyhow5error23object_reallocate_boxed17hb8bca45f8a4e4b7eE(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [344 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.a, ptr noundef nonnull align 8 dereferenceable(344) %i.b, i64 344, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !181351
  %i.c = tail call noundef align 8 dereferenceable_or_null(344) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 344, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !181351 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.f, !prof !66

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 344) #80
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr50drop_in_place$LT$index_scheduler..error..Error$GT$17hb6ff07c045ee620cE"(ptr noalias noundef nonnull align 8 dereferenceable(344) %i.a) #81
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82
  unreachable

.body:                                            ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !range !62, !alias.scope !181352, !noundef !57
  %i.i = icmp eq i64 %i.h, 3
  br i1 %i.i, label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h5e57a7efea93378fE.exit", label %bb.e

bb.e:                                             ; preds = %.body
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$std..backtrace..Backtrace$GT$17hb36ac16187dee329E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.g)
          to label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h5e57a7efea93378fE.exit" unwind label %bb.i

bb.f:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.c, ptr noundef nonnull align 8 dereferenceable(344) %i.a, i64 344, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !62, !alias.scope !181353, !noundef !57
  %i.l = icmp eq i64 %i.k, 3
  br i1 %i.l, label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h5e57a7efea93378fE.exit7", label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$std..backtrace..Backtrace$GT$17hb36ac16187dee329E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.j)
          to label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h5e57a7efea93378fE.exit7" unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 400, i64 noundef 8) #79
  br label %bb.j

"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h5e57a7efea93378fE.exit7": ; preds = %bb.f, %bb.g
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 400, i64 noundef 8) #79
  %i.n = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.o = insertvalue { ptr, ptr } %i.n, ptr @933, 1
  ret { ptr, ptr } %i.o

bb.i:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82
  unreachable

bb.j:                                             ; preds = %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h5e57a7efea93378fE.exit", %bb.h
  %.pn = phi { ptr, i32 } [ %i.m, %bb.h ], [ %i.e, %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h5e57a7efea93378fE.exit" ]
  resume { ptr, i32 } %.pn

"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h5e57a7efea93378fE.exit": ; preds = %.body, %bb.e
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 400, i64 noundef 8) #79
  br label %bb.j
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$3msg17h45c5c1ce66df2388E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$20construct_from_adhoc17h59c95fb85a52c342E.exit" unwind label %bb.b

"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$20construct_from_adhoc17h59c95fb85a52c342E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call fastcc noalias noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h58e1770abd7f9e63E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.c

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.d

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !181358)
  call void @llvm.experimental.noalias.scope.decl(metadata !181359)
  %.val.i.i = load i64, ptr %0, align 8, !range !56, !alias.scope !181360, !noundef !57 ; 2 uses
  %i.e = icmp eq i64 %.val.i.i, 0
  br i1 %i.e, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.f, align 8, !alias.scope !181360, !nonnull !57, !noundef !57
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !181360
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit"
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$3msg17hc3230879b6510d87E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
  %i.b = call fastcc noalias noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17he574e4c0910ba462E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h05d939367327e347E"(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @3911, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %i.c, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !181363
  %i.d = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !181363 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h6c9a8fe9974a54c6E.exit", !prof !66

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 64) #80
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr74drop_in_place$LT$anyhow..error..ErrorImpl$LT$std..io..error..Error$GT$$GT$17h4da3f20355e50de4E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #81
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h6c9a8fe9974a54c6E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h58e1770abd7f9e63E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @3913, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !181366
  %i.d = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 80, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !181366 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hf6d67a59f74bf12dE.exit", !prof !66

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 80) #80
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr111drop_in_place$LT$anyhow..error..ErrorImpl$LT$anyhow..wrapper..MessageError$LT$alloc..string..String$GT$$GT$$GT$17h4b981cd1946565dfE"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a) #81
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17hf6d67a59f74bf12dE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h689c2da66d31fbdcE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @3912, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !181369
  %i.d = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 80, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !181369 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h3574e301c94a00dbE.exit", !prof !66

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 80) #80
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr64drop_in_place$LT$anyhow..error..ErrorImpl$LT$heed..Error$GT$$GT$17h4063232ac7bc3747E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a) #81
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h3574e301c94a00dbE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17hd70486bc97f4ecd9E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(344) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [400 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @3910, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.c, ptr noundef nonnull align 8 dereferenceable(344) %0, i64 344, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !181372
  %i.d = tail call noundef align 8 dereferenceable_or_null(400) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 400, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !181372 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h5b0b82d8fa2c99dfE.exit", !prof !66

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 400) #80
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr82drop_in_place$LT$anyhow..error..ErrorImpl$LT$index_scheduler..error..Error$GT$$GT$17h1224ece3c7250439E"(ptr noalias noundef nonnull align 8 dereferenceable(400) %i.a) #81
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h5b0b82d8fa2c99dfE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.d, ptr noundef nonnull align 8 dereferenceable(400) %i.a, i64 400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17he574e4c0910ba462E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @3914, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %1, ptr %i.d, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !181379
  %i.e = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !181379 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hb471aac580409303E.exit", !prof !66

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 72) #80
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load i64, ptr %i.b, align 8, !range !62, !alias.scope !181380, !noundef !57
  %i.i = icmp eq i64 %i.h, 3
  br i1 %i.i, label %"_ZN4core3ptr97drop_in_place$LT$anyhow..error..ErrorImpl$LT$anyhow..wrapper..MessageError$LT$$RF$str$GT$$GT$$GT$17h7f873a297fb602ccE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$std..backtrace..Backtrace$GT$17hb36ac16187dee329E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.b)
          to label %"_ZN4core3ptr97drop_in_place$LT$anyhow..error..ErrorImpl$LT$anyhow..wrapper..MessageError$LT$$RF$str$GT$$GT$$GT$17h7f873a297fb602ccE.exit" unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82
  unreachable

"_ZN4core3ptr97drop_in_place$LT$anyhow..error..ErrorImpl$LT$anyhow..wrapper..MessageError$LT$$RF$str$GT$$GT$$GT$17h7f873a297fb602ccE.exit": ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.g

"_ZN5alloc5boxed12Box$LT$T$GT$3new17hb471aac580409303E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.e
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h31bdd22f1221e704E"(ptr noundef nonnull %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h15460e551a6128ebE.exit" unwind label %bb.c

"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h15460e551a6128ebE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = call fastcc noalias noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h05d939367327e347E"(ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  ret ptr %i.d

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h17d36f2cee8d0937E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #81
          to label %bb.b unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h76d8d0ae0c451a61E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h33778472c2b0e3b6E.exit" unwind label %bb.c

"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h33778472c2b0e3b6E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call fastcc noalias noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h689c2da66d31fbdcE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  ret ptr %i.c

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr32drop_in_place$LT$heed..Error$GT$17hc98baf41816c301eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) #81
          to label %bb.b unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17ha6b155e913d27dcbE"(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(344) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h00cce630e7bb9402E.exit" unwind label %bb.c

"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h00cce630e7bb9402E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call fastcc noalias noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17hd70486bc97f4ecd9E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(344) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  ret ptr %i.c

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr50drop_in_place$LT$index_scheduler..error..Error$GT$17hb6ff07c045ee620cE"(ptr noalias noundef nonnull align 8 dereferenceable(344) %0) #81
          to label %bb.b unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82
  unreachable
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_ZN6anyhow9__private10format_err17h7fa6d8de0a0b5309E(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %0) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !57, !align !61, !noundef !57 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !57
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !57 ; 2 uses
  switch i64 %i.e, label %"_ZN4core6option15Option$LT$T$GT$11map_or_else17hef096431254a32f6E.exit" [
    i64 0, label %bb.b
    i64 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %"_ZN4core6option15Option$LT$T$GT$11map_or_else17hef096431254a32f6E.exit"

bb.c:                                             ; preds = %bb.b, %bb.e
  %.sroa.5.0 = phi i64 [ %i.m, %bb.e ], [ 0, %bb.b ]
  %.sroa.01.0 = phi ptr [ %i.k, %bb.e ], [ inttoptr (i64 1 to ptr), %bb.b ]
  %i.i = tail call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$3msg17hc3230879b6510d87E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.01.0, i64 noundef %.sroa.5.0)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %i.g, 0
  br i1 %i.j, label %bb.e, label %"_ZN4core6option15Option$LT$T$GT$11map_or_else17hef096431254a32f6E.exit"

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.c, align 8, !nonnull !57, !align !64, !noundef !57
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noundef !57
  br label %bb.c

bb.f:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$11map_or_else17hef096431254a32f6E.exit", %bb.c
  %.sroa.0.0 = phi ptr [ %i.n, %"_ZN4core6option15Option$LT$T$GT$11map_or_else17hef096431254a32f6E.exit" ], [ %i.i, %bb.c ]
  ret ptr %.sroa.0.0

"_ZN4core6option15Option$LT$T$GT$11map_or_else17hef096431254a32f6E.exit": ; preds = %bb.d, %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
  %i.n = call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$3msg17h45c5c1ce66df2388E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @"_ZN6flate22gz5write18GzEncoder$LT$W$GT$10try_finish17h11b9dcb8930999f7E"(ptr noalias noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181412)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !181412, !noundef !57 ; 6 uses
  %i.d = icmp sgt i64 %i.c, -1
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %"_ZN6flate22gz5write18GzEncoder$LT$W$GT$12write_header17h37124994259d070eE.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !181412, !align !61, !noundef !57 ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !181412, !nonnull !57
  br i1 %.not.i, label %bb.c, label %.lr.ph.split.i, !prof !60

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %.val.i.i = load ptr, ptr %i.g, align 8, !noalias !181413, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181416)
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !181417, !noalias !181418, !noundef !57 ; 3 uses
  %i.l = load i64, ptr %.val.i.i, align 8, !range !56, !alias.scope !181417, !noalias !181418, !noundef !57
  %i.m = sub i64 %i.l, %i.k
  %i.n = icmp ugt i64 %i.c, %i.m
  br i1 %i.n, label %bb.b, label %._crit_edge.loopexit.i, !prof !60

._crit_edge.loopexit.i:                           ; preds = %bb.b, %.lr.ph.split.i
  %i.o = phi i64 [ %i.k, %.lr.ph.split.i ], [ %.pre.i.i.i.i.i.i, %bb.b ] ; 3 uses
  %i.p = icmp sgt i64 %i.o, -1
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !181419, !noalias !181418, !nonnull !57, !noundef !57
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull readonly align 1 %i.i, i64 range(i64 0, -9223372036854775808) %i.c, i1 false), !noalias !181420
  %i.t = add nuw i64 %i.o, %i.c
  store i64 %i.t, ptr %i.j, align 8, !alias.scope !181419, !noalias !181418
  store i64 0, ptr %i.b, align 8, !alias.scope !181421, !noalias !181422
  br label %"_ZN6flate22gz5write18GzEncoder$LT$W$GT$12write_header17h37124994259d070eE.exit"

bb.b:                                             ; preds = %.lr.ph.split.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, i64 noundef %i.k, i64 noundef range(i64 0, -9223372036854775808) %i.c, i64 noundef 1, i64 noundef 1), !noalias !181418
  %.pre.i.i.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !181419, !noalias !181418
  br label %._crit_edge.loopexit.i

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3929) #80, !noalias !181412
  unreachable

"_ZN6flate22gz5write18GzEncoder$LT$W$GT$12write_header17h37124994259d070eE.exit": ; preds = %bb.a, %._crit_edge.loopexit.i
  %i.u = tail call fastcc noundef ptr @"_ZN6flate23zio19Writer$LT$W$C$D$GT$6finish17h4e7584e5cd38eb1eE"(ptr noalias noundef align 8 dereferenceable(56) %0) ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %"_ZN6flate22gz5write18GzEncoder$LT$W$GT$12write_header17h37124994259d070eE.exit"
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !noundef !57 ; 2 uses
  %i.x = icmp ult i64 %i.w, 8
  br i1 %i.x, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$5write17h89d03636826f614bE.exit"
  %i.ac = phi i64 [ %i.w, %.lr.ph ], [ %i.au, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$5write17h89d03636826f614bE.exit" ] ; 2 uses
  %i.ad = load i32, ptr %i.y, align 4, !noundef !57
  %i.ae = load i32, ptr %i.z, align 8, !noundef !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.ad, ptr %i.a, align 4
  store i32 %i.ae, ptr %i.aa, align 4
  %i.af = load ptr, ptr %i.ab, align 8, !align !61, !noundef !57 ; 2 uses
  %.not15 = icmp eq ptr %i.af, null
  br i1 %.not15, label %bb.e, label %bb.f, !prof !60

.loopexit:                                        ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$5write17h89d03636826f614bE.exit", %.preheader, %"_ZN6flate22gz5write18GzEncoder$LT$W$GT$12write_header17h37124994259d070eE.exit"
  %.sroa.0.0 = phi ptr [ %i.u, %"_ZN6flate22gz5write18GzEncoder$LT$W$GT$12write_header17h37124994259d070eE.exit" ], [ null, %.preheader ], [ null, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$5write17h89d03636826f614bE.exit" ]
  ret ptr %.sroa.0.0

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3929) #80
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ag = sub nuw nsw i64 8, %i.ac                ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ac
  %.val.i = load ptr, ptr %i.af, align 8, !noalias !181423, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181426)
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 3 uses
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !181427, !noalias !181428, !noundef !57 ; 3 uses
  %i.ak = load i64, ptr %.val.i, align 8, !range !56, !alias.scope !181427, !noalias !181428, !noundef !57
  %i.al = sub i64 %i.ak, %i.aj
  %i.am = icmp ugt i64 %i.ag, %i.al
  br i1 %i.am, label %bb.g, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$5write17h89d03636826f614bE.exit", !prof !60

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, i64 noundef %i.aj, i64 noundef range(i64 0, -9223372036854775808) %i.ag, i64 noundef 1, i64 noundef 1), !noalias !181428
  %.pre.i.i.i.i.i = load i64, ptr %i.ai, align 8, !alias.scope !181429, !noalias !181428
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$5write17h89d03636826f614bE.exit"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$5write17h89d03636826f614bE.exit": ; preds = %bb.f, %bb.g
  %i.an = phi i64 [ %i.aj, %bb.f ], [ %.pre.i.i.i.i.i, %bb.g ] ; 3 uses
  %i.ao = icmp sgt i64 %i.an, -1
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !181429, !noalias !181428, !nonnull !57, !noundef !57
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.an
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr nonnull readonly align 1 %i.ah, i64 range(i64 0, -9223372036854775808) %i.ag, i1 false), !noalias !181429
  %i.as = add nuw i64 %i.an, %i.ag
  store i64 %i.as, ptr %i.ai, align 8, !alias.scope !181429, !noalias !181428
  %i.at = load i64, ptr %i.v, align 8, !noundef !57
  %i.au = add i64 %i.at, %i.ag                    ; 3 uses
  store i64 %i.au, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.av = icmp ult i64 %i.au, 8
  br i1 %i.av, label %bb.d, label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @"_ZN6flate22gz5write18GzEncoder$LT$W$GT$10try_finish17h678e8ab1ad2049c7E"(ptr noalias noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 6 uses
  %i.b = tail call fastcc noundef ptr @"_ZN6flate22gz5write18GzEncoder$LT$W$GT$12write_header17h2f50e920e1179609E"(ptr noalias noundef align 8 dereferenceable(112) %0) ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef ptr @"_ZN6flate23zio19Writer$LT$W$C$D$GT$6finish17hea33b311708fc931E"(ptr noalias noundef align 8 dereferenceable(56) %0) ; 2 uses
  %.not15 = icmp eq ptr %i.c, null
  br i1 %.not15, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !57 ; 2 uses
  %i.f = icmp ult i64 %i.e, 8
  br i1 %i.f, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.c

end_hunk_15
begin_hunk_16_@_ZN7geojson10conversion12to_geo_types18create_geo_polygon17h291b22d7b8b4236fE:bb.a
  br label %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$5close17hf08e134e3971d5f9E.exit.i"

.loopexit.i:                                      ; preds = %bb.r
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp.i:                             ; preds = %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$9is_closed17h9ef1df4ed0ca70fdE.exit.thread.i.i"
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  call fastcc void @"_ZN4core3ptr88drop_in_place$LT$alloc..vec..Vec$LT$geo_types..geometry..line_string..LineString$GT$$GT$17h91e4cab0d0d4adccE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.b) #81, !noalias !186568
  %.val.i = load i64, ptr %i.c, align 8, !alias.scope !186569, !noalias !186573 ; 2 uses
  %i.bk = icmp eq i64 %.val.i, 0
  br i1 %i.bk, label %common.resume, label %bb.s

"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$5close17hf08e134e3971d5f9E.exit.i": ; preds = %.noexc.i, %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$9is_closed17h9ef1df4ed0ca70fdE.exit.i.i", %_ZN4core4iter6traits8iterator8Iterator7collect17h10abdeeabb37887cE.exit.thread
  %.idx.i = mul nuw nsw i64 %.sroa.06.0, 24
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.5.0, i64 %.idx.i
  %i.bm = icmp eq i64 %.sroa.06.0, 0
  br i1 %i.bm, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$5close17hf08e134e3971d5f9E.exit.i", %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$5close17hf08e134e3971d5f9E.exit17.i"
  %.sroa.01.018.i = phi ptr [ %i.cd, %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$5close17hf08e134e3971d5f9E.exit17.i" ], [ %.sroa.5.0, %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$5close17hf08e134e3971d5f9E.exit.i" ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !186575)
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.01.018.i, i64 8 ; 2 uses
  %.val.i4.i = load ptr, ptr %i.bn, align 8, !alias.scope !186575, !noalias !186573, !nonnull !57, !noundef !57 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.01.018.i, i64 16 ; 2 uses
  %.val1.i5.i = load i64, ptr %i.bo, align 8, !alias.scope !186575, !noalias !186573, !noundef !57 ; 5 uses
  %.not.i.i6.i = icmp eq i64 %.val1.i5.i, 0
  br i1 %.not.i.i6.i, label %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$5close17hf08e134e3971d5f9E.exit17.i", label %bb.p

bb.p:                                             ; preds = %.lr.ph.i
  %i.bp = getelementptr [16 x i8], ptr %.val.i4.i, i64 %.val1.i5.i ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 -16    ; 2 uses
  %.not24.i.i7.i = icmp eq ptr %i.bq, null
  %.pre.i8.i = load double, ptr %.val.i4.i, align 8, !noalias !186576 ; 2 uses
  br i1 %.not24.i.i7.i, label %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$9is_closed17h9ef1df4ed0ca70fdE.exit.thread.i10.i", label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val27.i.i9.i = load double, ptr %i.bq, align 8, !noalias !186576, !noundef !57
  %i.br = fcmp oeq double %.pre.i8.i, %.val27.i.i9.i
  br i1 %i.br, label %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$9is_closed17h9ef1df4ed0ca70fdE.exit.i13.i", label %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$9is_closed17h9ef1df4ed0ca70fdE.exit.thread.i10.i"

"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$9is_closed17h9ef1df4ed0ca70fdE.exit.i13.i": ; preds = %bb.q
  %i.bs = getelementptr inbounds nuw i8, ptr %.val.i4.i, i64 8
  %i.bt = getelementptr i8, ptr %i.bp, i64 -8
  %.val.i.i14.i = load double, ptr %i.bs, align 8, !noalias !186576, !noundef !57
  %.val25.i.i15.i = load double, ptr %i.bt, align 8, !noalias !186576, !noundef !57
  %i.bu = fcmp oeq double %.val.i.i14.i, %.val25.i.i15.i
  br i1 %i.bu, label %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$5close17hf08e134e3971d5f9E.exit17.i", label %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$9is_closed17h9ef1df4ed0ca70fdE.exit.thread.i10.i"

"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$9is_closed17h9ef1df4ed0ca70fdE.exit.thread.i10.i": ; preds = %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$9is_closed17h9ef1df4ed0ca70fdE.exit.i13.i", %bb.q, %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %.val.i4.i, i64 8
  %i.bw = load double, ptr %i.bv, align 8, !noalias !186576, !noundef !57
  %i.bx = load i64, ptr %.sroa.01.018.i, align 8, !range !56, !alias.scope !186577, !noalias !186573, !noundef !57
  %i.by = icmp eq i64 %.val1.i5.i, %i.bx
  br i1 %i.by, label %bb.r, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hd5c0e0a5c7b4c47cE.exit.i11.i"

bb.r:                                             ; preds = %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$9is_closed17h9ef1df4ed0ca70fdE.exit.thread.i10.i"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hf18829a0e773511bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.01.018.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6328)
          to label %.noexc16.i unwind label %.loopexit.i, !noalias !186573

.noexc16.i:                                       ; preds = %bb.r
  %.pre5.i12.i = load ptr, ptr %i.bn, align 8, !alias.scope !186577, !noalias !186573
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hd5c0e0a5c7b4c47cE.exit.i11.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hd5c0e0a5c7b4c47cE.exit.i11.i": ; preds = %.noexc16.i, %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$9is_closed17h9ef1df4ed0ca70fdE.exit.thread.i10.i"
  %i.bz = phi ptr [ %.val.i4.i, %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$9is_closed17h9ef1df4ed0ca70fdE.exit.thread.i10.i" ], [ %.pre5.i12.i, %.noexc16.i ]
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %.val1.i5.i ; 2 uses
  store double %.pre.i8.i, ptr %i.ca, align 8, !noalias !186573
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store double %i.bw, ptr %i.cb, align 8, !noalias !186573
  %i.cc = add i64 %.val1.i5.i, 1
  store i64 %i.cc, ptr %i.bo, align 8, !alias.scope !186577, !noalias !186573
  br label %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$5close17hf08e134e3971d5f9E.exit17.i"

"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$5close17hf08e134e3971d5f9E.exit17.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hd5c0e0a5c7b4c47cE.exit.i11.i", %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$9is_closed17h9ef1df4ed0ca70fdE.exit.i13.i", %.lr.ph.i
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.01.018.i, i64 24 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.bl
  br i1 %i.ce, label %.loopexit, label %.lr.ph.i

bb.s:                                             ; preds = %bb.o
  %.val3.i = load ptr, ptr %.sroa.6.0..sroa_idx2, align 8, !alias.scope !186569, !noalias !186573, !nonnull !57, !noundef !57
  %i.cf = shl nuw i64 %.val.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.cf, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !186573
  br label %common.resume

.loopexit:                                        ; preds = %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$5close17hf08e134e3971d5f9E.exit17.i", %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$5close17hf08e134e3971d5f9E.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !alias.scope !186578, !noalias !186570
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b, i64 24, i1 false), !alias.scope !186573, !noalias !186569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.t:                                             ; preds = %.body.i.i.i.i9, %bb.l
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.ay, %bb.l ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i9 ] ; 2 uses
  %i.ch = icmp eq i64 %i.g, 0
  br i1 %i.ch, label %common.resume, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ci = shl nuw i64 %i.g, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0, i64 noundef %i.ci, i64 noundef range(i64 1, -9223372036854775807) 8) #79
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN7memmap211MmapOptions3map17h80ec8e6902688c42E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.val.i = load i32, ptr %2, align 4, !range !164, !noundef !57 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186581)
  %i.b = load i64, ptr %1, align 8, !range !71, !alias.scope !186581, !noundef !57
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !186581, !noundef !57
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call { i64, ptr } @_ZN7memmap22os8file_len17hd39f334523d88558E(i32 noundef %.val.i), !noalias !186581 ; 2 uses
  %i.g = extractvalue { i64, ptr } %i.f, 0
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.j = trunc nuw i64 %i.g to i1
  br i1 %i.j, label %bb.h, label %bb.e

bb.d:                                             ; preds = %bb.f, %bb.b
  %.sroa.01.0.i = phi i64 [ %i.e, %bb.b ], [ %i.o, %bb.f ]
  %i.k = tail call { i64, ptr } @_ZN7memmap211MmapOptions12validate_len17hfb00179b3ca5938eE(i64 noundef %.sroa.01.0.i), !noalias !186581
  br label %_ZN7memmap211MmapOptions7get_len17h0ccf6ff71718e901E.exit

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !186581, !noundef !57 ; 2 uses
  %i.n = icmp ugt i64 %i.m, %i.i
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = sub nuw i64 %i.i, %i.m
  br label %bb.d

bb.g:                                             ; preds = %bb.e
  %i.p = tail call noundef nonnull ptr @_ZN3std2io5error5Error3new17h2fc9d5dda48b3f00E(i8 noundef 21, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4650, i64 noundef 39), !noalias !186581
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %.sroa.4.1.i = phi ptr [ %i.p, %bb.g ], [ %i.h, %bb.c ]
  %i.q = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %.sroa.4.1.i, 1
  br label %_ZN7memmap211MmapOptions7get_len17h0ccf6ff71718e901E.exit

_ZN7memmap211MmapOptions7get_len17h0ccf6ff71718e901E.exit: ; preds = %bb.d, %bb.h
  %.merged.i = phi { i64, ptr } [ %i.k, %bb.d ], [ %i.q, %bb.h ] ; 2 uses
  %i.r = extractvalue { i64, ptr } %.merged.i, 0
  %i.s = extractvalue { i64, ptr } %.merged.i, 1  ; 2 uses
  %i.t = trunc nuw i64 %i.r to i1
  br i1 %i.t, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZN7memmap211MmapOptions7get_len17h0ccf6ff71718e901E.exit
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8, !noundef !57
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 27
  %i.y = load i8, ptr %i.x, align 1, !range !74, !noundef !57
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ab = load i8, ptr %i.aa, align 4, !range !74, !noundef !57
  %i.ac = trunc nuw i8 %i.ab to i1
  call void @_ZN7memmap22os9MmapInner3map17h945c0949fcd15ae1E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.u, i32 noundef %.val.i, i64 noundef %i.w, i1 noundef zeroext %i.z, i1 noundef zeroext %i.ac)
  %i.ad = load i64, ptr %i.a, align 8, !range !71, !noundef !57
  %i.ae = trunc nuw i64 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !noundef !57 ; 2 uses
  br i1 %i.ae, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !57
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ai, ptr %i.aj, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %_ZN7memmap211MmapOptions7get_len17h0ccf6ff71718e901E.exit
  %.sink = phi ptr [ %i.s, %_ZN7memmap211MmapOptions7get_len17h0ccf6ff71718e901E.exit ], [ %i.ag, %bb.i ], [ %i.ag, %bb.j ]
  %storemerge.sink = phi i64 [ 1, %_ZN7memmap211MmapOptions7get_len17h0ccf6ff71718e901E.exit ], [ 1, %bb.i ], [ 0, %bb.j ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ak, align 8
  store i64 %storemerge.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @_ZN7reqwest5error5Error3new17hea483f0e2e217070E(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, i8 noundef range(i8 0, 7) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [144 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79
  %i.c = tail call noundef dereferenceable_or_null(2) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 2, i64 noundef range(i64 1, -9223372036854775807) 1) #79 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.f, !prof !66

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 1, i64 noundef 2) #80
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186594)
  %i.f = load i16, ptr %i.a, align 8, !range !222, !alias.scope !186594, !noundef !57
  %i.g = icmp eq i16 %i.f, 3
  br i1 %i.g, label %bb.d, label %common.resume

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186595)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !186596, !noundef !57 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186597)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186599)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !noalias !186600, !nonnull !57, !noundef !57
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !186600, !noundef !57
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !186600, !noundef !57
  invoke void %i.l(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %i.o, i64 noundef %i.q)
          to label %common.resume unwind label %bb.j, !inline_history !41

bb.f:                                             ; preds = %bb.a
  store i8 %1, ptr %i.c, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %i.c, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr @2552, ptr %i.t, align 8
  store i64 -9223372036854775808, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !186601
  %i.u = tail call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 144, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !186601 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.g, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h6a3757dbbf110d31E.exit", !prof !66

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 144) #80
          to label %.noexc8 unwind label %bb.h

.noexc8:                                          ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$reqwest..error..Inner$GT$17he2e69dc72293284bE"(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.b) #81
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82
  unreachable

common.resume:                                    ; preds = %bb.e, %bb.c, %bb.d, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.h ], [ %i.e, %bb.d ], [ %i.e, %bb.c ], [ %i.e, %bb.e ]
  resume { ptr, i32 } %common.resume.op

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h6a3757dbbf110d31E.exit": ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.u, ptr noundef nonnull align 8 dereferenceable(144) %i.b, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.u

bb.j:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN7roaring6bitmap13serialization48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$21deserialize_from_impl17h928a84a3e5a0a8baE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 24 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = icmp ult i64 %2, 4
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1974, ptr %i.h, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hbdc0e97463cb8b33E.exit206"

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.j = add i64 %2, -4                           ; 3 uses
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 1, !alias.scope !186743, !noalias !186744 ; 4 uses
  %.not = icmp eq i32 %.sroa.0.0.copyload.i, 12346
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = and i32 %.sroa.0.0.copyload.i, 65535
  %i.l = icmp eq i32 %i.k, 12347
  br i1 %i.l, label %bb.h, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = icmp ult i64 %i.j, 4
  br i1 %i.m, label %bb.g, label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.n = tail call noundef nonnull ptr @_ZN3std2io5error5Error3new17h2fc9d5dda48b3f00E(i8 noundef 40, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4651, i64 noundef 20)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.o, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hbdc0e97463cb8b33E.exit206"

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1974, ptr %i.p, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hbdc0e97463cb8b33E.exit206"

bb.h:                                             ; preds = %bb.d
  %i.q = lshr i32 %.sroa.0.0.copyload.i, 16
  %i.r = add nuw nsw i32 %i.q, 1
  %i.s = zext nneg i32 %i.r to i64                ; 3 uses
  %i.t = icmp ugt i32 %.sroa.0.0.copyload.i, 196607 ; 2 uses
  %i.u = add nuw nsw i64 %i.s, 7
  %i.v = lshr i64 %i.u, 3                         ; 12 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !186745
  %i.w = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.v, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !186745 ; 6 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.i, label %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h6a633d9ce659f5a8E.exit"

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4653) #80, !noalias !186746
  unreachable

"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h6a633d9ce659f5a8E.exit": ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186747)
  %i.y = icmp ugt i64 %i.v, %i.j
  br i1 %i.y, label %bb.m, label %bb.j

bb.j:                                             ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h6a633d9ce659f5a8E.exit"
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.v ; 2 uses
  %i.aa = sub nuw i64 %i.j, %i.v                  ; 2 uses
  %i.ab = icmp eq i64 %i.v, 1
  br i1 %i.ab, label %bb.k, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb910a701e4f2ce29E.exit.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb910a701e4f2ce29E.exit.i": ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull readonly align 1 %i.i, i64 %i.v, i1 false), !alias.scope !186748, !noalias !186749
  br label %.thread374.thread

bb.k:                                             ; preds = %bb.j
  %i.ac = load i8, ptr %i.i, align 1, !noalias !186750, !noundef !57
  store i8 %i.ac, ptr %i.w, align 1, !alias.scope !186747, !noalias !186751
  br label %.thread374.thread

bb.l:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i167 = load i32, ptr %i.i, align 1, !alias.scope !186752, !noalias !186753 ; 3 uses
  %i.ad = icmp ugt i32 %.sroa.0.0.copyload.i167, 65536
  br i1 %i.ad, label %bb.p, label %.thread374

bb.m:                                             ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h6a633d9ce659f5a8E.exit"
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1974, ptr %i.ae, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.w, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !186754
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hbdc0e97463cb8b33E.exit206"

.thread374:                                       ; preds = %bb.l
  %i.af = zext nneg i32 %.sroa.0.0.copyload.i167 to i64
  %i.ag = add i64 %2, -8                          ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ai = icmp eq i32 %.sroa.0.0.copyload.i167, 0
  br i1 %i.ai, label %bb.s, label %.thread374.thread

.thread374.thread:                                ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb910a701e4f2ce29E.exit.i", %bb.k, %.thread374
end_hunk_16
begin_hunk_17_@"_ZN83_$LT$rayon_core..job..StackJob$LT$L$C$F$C$R$GT$$u20$as$u20$rayon_core..job..Job$GT$7execute17hbc95f89f5c179597E":bb.a
.thread482.i.i.i.i.i.i.i.i:                       ; preds = %bb.bg
  %.sroa.649.i.i.i.i.i.i.i.sroa.0.0.copyload56.i = load ptr, ptr %i.dt, align 8, !noalias !191501
  %i.hv = load <2 x i64>, ptr %.sroa.649.i.i.i.i.i.i.i.sroa.7.0..sroa_idx.i, align 8, !noalias !191501
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.649.i.i.i.i.i.i.i.sroa.11.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.649.i.i.i.i.i.i.i.sroa.11.0..sroa_idx.i, i64 48, i1 false), !noalias !191501
  br label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %.sroa.047.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.z, align 8, !noalias !191501 ; 2 uses
  %.sroa.649.i.i.i.i.i.i.i.sroa.0.0.copyload.i = load ptr, ptr %.sroa.649.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !191501 ; 2 uses
  %i.hw = load <2 x i64>, ptr %.sroa.649.i.i.i.i.i.i.i.sroa.7.0..sroa.649.0..sroa_idx.i.i.i.i.i.i.i.sroa_idx.i, align 8, !noalias !191501 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.649.i.i.i.i.i.i.i.sroa.11.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.649.i.i.i.i.i.i.i.sroa.11.0..sroa.649.0..sroa_idx.i.i.i.i.i.i.i.sroa_idx.i, i64 48, i1 false), !noalias !191501
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.851.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.851.0..sroa_idx.i.i.i.i.i.i.i.i, i64 264, i1 false), !noalias !191501
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !191501
  %.not256.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.047.0.copyload.i.i.i.i.i.i.i.i, 152
  br i1 %.not256.i.i.i.i.i.i.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.743.i.i.i.i.i.i.i.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.649.i.i.i.i.i.i.i.sroa.11.i, i64 48, i1 false), !noalias !191501
  %.sroa.26.80..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.26.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.26.80..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.851.i.i.i.i.i.i.i.i, i64 264, i1 false), !noalias !191502
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.649.i.i.i.i.i.i.i.sroa.11.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.851.i.i.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.26.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.743.i.i.i.i.i.i.i.sroa.9.i, i64 48, i1 false), !noalias !191502
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.743.i.i.i.i.i.i.i.sroa.9.i)
  %i.hx = extractelement <2 x i64> %i.hw, i64 0
  %i.hy = extractelement <2 x i64> %i.hw, i64 1
  br label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h275f1b5bd0cd1e1eE.exit342.i.i.i.i.i.i.i.i"

bb.bk:                                            ; preds = %bb.bi, %.thread482.i.i.i.i.i.i.i.i
  %.sroa.649.i.i.i.i.i.i.i.sroa.0.0.i = phi ptr [ %.sroa.649.i.i.i.i.i.i.i.sroa.0.0.copyload56.i, %.thread482.i.i.i.i.i.i.i.i ], [ %.sroa.649.i.i.i.i.i.i.i.sroa.0.0.copyload.i, %bb.bi ]
  %i.hz = phi <2 x i64> [ %i.hv, %.thread482.i.i.i.i.i.i.i.i ], [ %i.hw, %bb.bi ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.743.i.i.i.i.i.i.i.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.649.i.i.i.i.i.i.i.sroa.11.i, i64 48, i1 false), !noalias !191501
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.649.i.i.i.i.i.i.i.sroa.11.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.851.i.i.i.i.i.i.i.i)
  store ptr %.sroa.649.i.i.i.i.i.i.i.sroa.0.0.i, ptr %i.ax, align 8, !noalias !191501
  store <2 x i64> %i.hz, ptr %.sroa.743.i.i.i.i.i.i.i.sroa.7.0..sroa_idx.i, align 8, !noalias !191501
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ez, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.743.i.i.i.i.i.i.i.sroa.9.i, i64 48, i1 false), !noalias !191501
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.743.i.i.i.i.i.i.i.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.866.i.i.i.i.i.i.i.i)
  %i.ia = load i32, ptr %i.ay, align 4, !noalias !191501, !noundef !57
  invoke void @_ZN5milli5index5Index10embeddings17h8943c5bfba81fbe0E(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %i.bq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.be, i32 noundef %i.ia)
          to label %bb.bl unwind label %.loopexit534.i.i.i.i.i.i.i.i, !noalias !191501

.thread498.i.i.i.i.i.i.i.i:                       ; preds = %"_ZN4core3ptr129drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$milli..index..EmbeddingsWithMetadata$GT$$GT$17hb2b23fbea3deb009E.exit.i.i.i.i.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i.i.i", %bb.by, %.loopexit.split-lp535.i.i.i.i.i.i.i.i, %.loopexit534.i.i.i.i.i.i.i.i
  %.pn281.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn270.i.i.i.i.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i.i.i" ], [ %.pn270.pn497.i.i.i.i.i.i.i.i, %"_ZN4core3ptr129drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$milli..index..EmbeddingsWithMetadata$GT$$GT$17hb2b23fbea3deb009E.exit.i.i.i.i.i.i.i" ], [ %lpad.thr_comm.split-lp.i.i.i.i.i.i.i.i, %bb.by ], [ %lpad.loopexit536.i.i.i.i.i.i.i.i, %.loopexit534.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp537.i.i.i.i.i.i.i.i, %.loopexit.split-lp535.i.i.i.i.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !191574)
  call void @llvm.experimental.noalias.scope.decl(metadata !191575), !noalias !191506
  call void @llvm.experimental.noalias.scope.decl(metadata !191576), !noalias !191506
  %.val1.i.i.i13.i.i.i.i.i.i.i = load i64, ptr %i.ey, align 8, !alias.scope !191577, !noalias !191501, !noundef !57 ; 4 uses
  %i.ib = icmp eq i64 %.val1.i.i.i13.i.i.i.i.i.i.i, 0
  br i1 %i.ib, label %"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hd649b7ceafe66e09E.exit.i.i.i.i.i.i.i.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.thread498.i.i.i.i.i.i.i.i
  %.val.i.i.i14.i.i.i.i.i.i.i = load ptr, ptr %i.ez, align 8, !alias.scope !191577, !noalias !191501, !nonnull !57, !noundef !57
  %i.ic = shl i64 %.val1.i.i.i13.i.i.i.i.i.i.i, 3
  %i.id = icmp slt i64 %.val1.i.i.i13.i.i.i.i.i.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.id), !noalias !191578
  %i.ie = and i64 %i.ic, -16                      ; 2 uses
  %i.if = add i64 %i.ie, 16                       ; 2 uses
  %i.ig = add nsw i64 %.val1.i.i.i13.i.i.i.i.i.i.i, 17
  %i.ih = add i64 %i.ig, %i.if                    ; 3 uses
  %i.ii = icmp uge i64 %i.ih, %i.if
  call void @llvm.assume(i1 %i.ii), !noalias !191578
  %i.ij = icmp ult i64 %i.ih, 9223372036854775793
  call void @llvm.assume(i1 %i.ij), !noalias !191578
  %i.ik = sub nuw nsw i64 -16, %i.ie
  %i.il = getelementptr inbounds i8, ptr %.val.i.i.i14.i.i.i.i.i.i.i, i64 %i.ik
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.il, i64 noundef %i.ih, i64 noundef range(i64 1, -9223372036854775807) 16) #79, !noalias !191579, !inline_history !92
  br label %"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hd649b7ceafe66e09E.exit.i.i.i.i.i.i.i.i"

"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hd649b7ceafe66e09E.exit.i.i.i.i.i.i.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread498.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17h737a762b1bd6a592E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.ax)
          to label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h275f1b5bd0cd1e1eE.exit.i.i.i.i.i.i.i" unwind label %bb.dl, !noalias !191500, !inline_history !93

.loopexit534.i.i.i.i.i.i.i.i:                     ; preds = %bb.cs, %bb.cp, %bb.ck, %bb.bx, %"_ZN99_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7e8bbfab7264bd89E.exit.i.i.i.i.i.i.i.i.i", %bb.bm, %bb.bk
  %lpad.loopexit536.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.thread498.i.i.i.i.i.i.i.i

.loopexit.split-lp535.i.i.i.i.i.i.i.i:            ; preds = %"_ZN99_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7e8bbfab7264bd89E.exit.i367.i.i.i.i.i.i.i.i"
  %lpad.loopexit.split-lp537.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.thread498.i.i.i.i.i.i.i.i

bb.bl:                                            ; preds = %bb.bk
  %i.im = load i64, ptr %i.w, align 8, !range !111, !noalias !191501, !noundef !57
  %.not258.i.i.i.i.i.i.i.i = icmp eq i64 %i.im, 97
  br i1 %.not258.i.i.i.i.i.i.i.i, label %.thread488.i.i.i.i.i.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.in = load i64, ptr %i.cs, align 8, !noalias !191501, !noundef !57
  %i.io = load ptr, ptr %i.cr, align 8, !noalias !191501, !nonnull !57, !align !64, !noundef !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !191501
  invoke fastcc void @_ZN4core3ops8function6FnOnce9call_once17h5b7c5e52e888eeaaE(ptr noalias noundef align 8 captures(address) dereferenceable(344) %i.x, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.io, i64 noundef %i.in, ptr noalias noundef align 8 captures(address) dereferenceable(320) %i.w)
          to label %bb.bn unwind label %.loopexit534.i.i.i.i.i.i.i.i, !noalias !191501

.thread488.i.i.i.i.i.i.i.i:                       ; preds = %bb.bl
  %.sroa.664.i.sroa.0.0.copyload29.i.i.i.i.i.i.i = load ptr, ptr %i.du, align 8, !noalias !191501
  %.sroa.664.i.sroa.7.0.copyload30.i.i.i.i.i.i.i = load i64, ptr %.sroa.664.i.sroa.7.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !191501
  %.sroa.664.i.sroa.9.0.copyload31.i.i.i.i.i.i.i = load i64, ptr %.sroa.664.i.sroa.9.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !191501
  br label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %.sroa.062.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.x, align 8, !noalias !191501 ; 2 uses
  %.sroa.664.i.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.664.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !191501 ; 2 uses
  %.sroa.664.i.sroa.7.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.664.i.sroa.7.0..sroa.664.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !191501 ; 2 uses
  %.sroa.664.i.sroa.9.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.664.i.sroa.9.0..sroa.664.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !191501 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.866.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(312) %.sroa.866.0..sroa_idx.i.i.i.i.i.i.i.i, i64 312, i1 false), !noalias !191501
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !191501
  %.not259.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.062.0.copyload.i.i.i.i.i.i.i.i, 152
  br i1 %.not259.i.i.i.i.i.i.i.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.26.i, ptr noundef nonnull align 8 dereferenceable(312) %.sroa.866.i.i.i.i.i.i.i.i, i64 312, i1 false), !noalias !191502
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.866.i.i.i.i.i.i.i.i)
  br label %.loopexit.i

bb.bp:                                            ; preds = %bb.bn, %.thread488.i.i.i.i.i.i.i.i
  %.sroa.664.i.sroa.9.0.i.i.i.i.i.i.i = phi i64 [ %.sroa.664.i.sroa.9.0.copyload31.i.i.i.i.i.i.i, %.thread488.i.i.i.i.i.i.i.i ], [ %.sroa.664.i.sroa.9.0.copyload.i.i.i.i.i.i.i, %bb.bn ] ; 4 uses
  %.sroa.664.i.sroa.7.0.i.i.i.i.i.i.i = phi i64 [ %.sroa.664.i.sroa.7.0.copyload30.i.i.i.i.i.i.i, %.thread488.i.i.i.i.i.i.i.i ], [ %.sroa.664.i.sroa.7.0.copyload.i.i.i.i.i.i.i, %bb.bn ] ; 7 uses
  %.sroa.664.i.sroa.0.0.i.i.i.i.i.i.i = phi ptr [ %.sroa.664.i.sroa.0.0.copyload29.i.i.i.i.i.i.i, %.thread488.i.i.i.i.i.i.i.i ], [ %.sroa.664.i.sroa.0.0.copyload.i.i.i.i.i.i.i, %bb.bn ] ; 12 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.866.i.i.i.i.i.i.i.i)
  %i.ip = icmp eq i64 %.sroa.664.i.sroa.9.0.i.i.i.i.i.i.i, 0
  br i1 %i.ip, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !191580
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.664.i.sroa.0.0.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN99_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7e8bbfab7264bd89E.exit.i.i.i.i.i.i.i.i.i", label %bb.br

bb.br:                                            ; preds = %bb.bq
  store ptr null, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !191581, !noalias !191582
  store ptr %.sroa.664.i.sroa.0.0.i.i.i.i.i.i.i, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !191581, !noalias !191582
  store i64 %.sroa.664.i.sroa.7.0.i.i.i.i.i.i.i, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !191581, !noalias !191582
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !191581, !noalias !191582
  store ptr %.sroa.664.i.sroa.0.0.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !191581, !noalias !191582
  store i64 %.sroa.664.i.sroa.7.0.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !191581, !noalias !191582
  br label %"_ZN99_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7e8bbfab7264bd89E.exit.i.i.i.i.i.i.i.i.i"

"_ZN99_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7e8bbfab7264bd89E.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.br, %bb.bq
  %.sink23.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.br ], [ 0, %bb.bq ] ; 2 uses
  store i64 %.sink23.i.i.i.i.i.i.i.i.i.i.i, ptr %i.n, align 8, !alias.scope !191581, !noalias !191582
  store i64 %.sink23.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ec, align 8, !alias.scope !191581, !noalias !191582
  store i64 0, ptr %i.ed, align 8, !alias.scope !191581, !noalias !191582
  invoke fastcc void @"_ZN4core3ptr129drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$milli..index..EmbeddingsWithMetadata$GT$$GT$17h6e8f5cd4e050fa4bE"(ptr noalias noundef align 8 dereferenceable(72) %i.n)
          to label %bb.bw unwind label %.loopexit534.i.i.i.i.i.i.i.i, !noalias !191501

bb.bs:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !191501
  call void @llvm.experimental.noalias.scope.decl(metadata !191583)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !191584
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !191584
  call void @llvm.experimental.noalias.scope.decl(metadata !191585)
  call void @llvm.experimental.noalias.scope.decl(metadata !191586)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !191587
  %i.iq = call noundef dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, 9) 1) #79, !noalias !191587 ; 3 uses
  %i.ir = icmp eq ptr %i.iq, null
  br i1 %i.ir, label %bb.bt, label %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17ha3603fc8fe36937fE.exit.i.i.i.i.i.i.i.i.i"

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4878) #80
          to label %.noexc327.i.i.i.i.i.i.i.i unwind label %.thread502.loopexit.split-lp.i.i.i.i.i.i.i.i, !noalias !191501

.noexc327.i.i.i.i.i.i.i.i:                        ; preds = %bb.bt
  unreachable

"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17ha3603fc8fe36937fE.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.bs
  store i64 8318834007381210719, ptr %i.iq, align 1, !noalias !191588
  store i64 8, ptr %i.l, align 8, !alias.scope !191589, !noalias !191590
  store ptr %i.iq, ptr %.sroa.4.0..sroa_idx.i.i.i326.i.i.i.i.i.i.i.i, align 8, !alias.scope !191589, !noalias !191590
  store i64 8, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !191589, !noalias !191590
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$5entry17h0fd79e0bcb1c24dcE"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ax, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l)
          to label %.noexc328.i.i.i.i.i.i.i.i unwind label %.thread502.loopexit.i.i.i.i.i.i.i.i, !noalias !191501

.noexc328.i.i.i.i.i.i.i.i:                        ; preds = %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17ha3603fc8fe36937fE.exit.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !191584
  %i.is = load i64, ptr %i.m, align 8, !range !83, !noalias !191584, !noundef !57
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.is, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %.noexc328.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aw, ptr noundef nonnull align 8 dereferenceable(40) %i.m, i64 40, i1 false), !noalias !191591
  br label %bb.bz

bb.bv:                                            ; preds = %.noexc328.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dw, ptr noundef nonnull align 8 dereferenceable(24) %i.dv, i64 24, i1 false), !noalias !191591
  store i64 -9223372036854775808, ptr %i.aw, align 8, !alias.scope !191583, !noalias !191591
  br label %bb.bz

bb.bw:                                            ; preds = %"_ZN99_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7e8bbfab7264bd89E.exit.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !191580
  br label %bb.bx

bb.bx:                                            ; preds = %bb.ci, %bb.bw
  store i64 0, ptr %i.cw, align 8, !noalias !191501
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.686.i.i.i.i.i.i.i.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !191592
  store ptr %i.bb, ptr %i.k, align 8, !noalias !191592
  %i.it = invoke fastcc noalias noundef align 8 ptr @"_ZN123_$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17h7402f2c4161a18e2E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ax, ptr noalias noundef align 8 dereferenceable(8) %i.k)
          to label %bb.cj unwind label %.loopexit534.i.i.i.i.i.i.i.i, !noalias !191501 ; 2 uses

.thread502.loopexit.i.i.i.i.i.i.i.i:              ; preds = %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17ha3603fc8fe36937fE.exit.i.i.i.i.i.i.i.i.i"
  %lpad.loopexit539.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.thread494.i.i.i.i.i.i.i.i

.thread502.loopexit.split-lp.i.i.i.i.i.i.i.i:     ; preds = %bb.cd, %bb.eq, %bb.em, %bb.dt, %bb.dr, %bb.dp, %bb.do, %bb.bt
  %lpad.loopexit.split-lp540.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.thread494.i.i.i.i.i.i.i.i

bb.by:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i
  %lpad.thr_comm.split-lp.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.thread498.i.i.i.i.i.i.i.i

bb.bz:                                            ; preds = %bb.bv, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !191584
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !191501
  %i.iu = load i8, ptr %i.dy, align 8, !range !74, !noalias !191593, !noundef !57
  %i.iv = trunc nuw i8 %i.iu to i1
  br i1 %i.iv, label %._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i.i.i.i.i.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i.i.i.i.i.i.i.i.i", !prof !58

._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bz
  %.pre.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dx, align 8, !noalias !191594
  %.pre1.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dz, align 8, !noalias !191594
  br label %bb.cb

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.bz
  %i.iw = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc330.i.i.i.i.i.i.i.i unwind label %bb.eu, !noalias !191501 ; 2 uses

.noexc330.i.i.i.i.i.i.i.i:                        ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i.i.i.i.i.i.i.i.i"
  %i.ix = extractvalue { i64, i64 } %i.iw, 0
  %i.iy = extractvalue { i64, i64 } %i.iw, 1      ; 2 uses
  store i64 %i.iy, ptr %i.dz, align 8, !noalias !191595
  store i8 1, ptr %i.dy, align 8, !noalias !191595
  br label %bb.cb

bb.ca:                                            ; preds = %bb.cb
  %i.iz = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.thread494.i.i.i.i.i.i.i.i

bb.cb:                                            ; preds = %.noexc330.i.i.i.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i.i.i.i.i.i.i.i.i
  %.pre-phi601.i.i.i.i.i.i.i.i = phi i64 [ %.pre1.i.i.i.i.i.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i.i.i.i.i.i.i.i.i ], [ %i.iy, %.noexc330.i.i.i.i.i.i.i.i ]
  %i.ja = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i.i.i.i.i.i.i.i.i ], [ %i.ix, %.noexc330.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.jb = add i64 %i.ja, 1
  store i64 %i.jb, ptr %i.dx, align 8, !noalias !191594
  store i64 0, ptr %i.av, align 8, !noalias !191501
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4439.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !191501
  store i64 0, ptr %.sroa.5440.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !191501
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6441.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) @30, i64 32, i1 false), !noalias !191501
  store i64 %i.ja, ptr %.sroa.7442.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !191501
  store i64 %.pre-phi601.i.i.i.i.i.i.i.i, ptr %.sroa.8443.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !191501
  %i.jc = invoke noundef align 8 dereferenceable(72) ptr @_ZN10serde_json3map5Entry9or_insert17h300c77b45e4f8b43E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.aw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.av)
          to label %bb.cc unwind label %bb.ca, !noalias !191501 ; 3 uses

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !191501
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !191501
  %i.jd = load i64, ptr %i.jc, align 8, !range !134, !noalias !191501, !noundef !57
  %i.je = icmp sgt i64 %i.jd, -1
  br i1 %i.je, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h39719ea278e171c3E.exit.i.i.i.i.i.i.i.i", label %bb.cd

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h39719ea278e171c3E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.cc
  %.not.i331.i.i.i.i.i.i.i.i = icmp ne ptr %.sroa.664.i.sroa.0.0.i.i.i.i.i.i.i, null ; 3 uses
  %.sroa.10418.0.i.i.i.i.i.i.i.i = select i1 %.not.i331.i.i.i.i.i.i.i.i, i64 %.sroa.664.i.sroa.7.0.i.i.i.i.i.i.i, i64 undef ; 2 uses
  %.sink23.i.i.i.i.i.i.i.i.i = zext i1 %.not.i331.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %.sroa.7.0.copyload.sink.i.i.i.i.i.i.i.i.i = select i1 %.not.i331.i.i.i.i.i.i.i.i, i64 %.sroa.664.i.sroa.9.0.i.i.i.i.i.i.i, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !191501
  store i64 %.sink23.i.i.i.i.i.i.i.i.i, ptr %i.an, align 8, !noalias !191501
  store ptr null, ptr %.sroa.4412.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !191501
  store ptr %.sroa.664.i.sroa.0.0.i.i.i.i.i.i.i, ptr %.sroa.5413.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !191501
  store i64 %.sroa.10418.0.i.i.i.i.i.i.i.i, ptr %.sroa.6414.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !191501
  store i64 %.sink23.i.i.i.i.i.i.i.i.i, ptr %.sroa.7415.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !191501
  store ptr null, ptr %.sroa.8416.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !191501
  store ptr %.sroa.664.i.sroa.0.0.i.i.i.i.i.i.i, ptr %.sroa.9417.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !191501
  store i64 %.sroa.10418.0.i.i.i.i.i.i.i.i, ptr %.sroa.10418.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !191501
  store i64 %.sroa.7.0.copyload.sink.i.i.i.i.i.i.i.i.i, ptr %.sroa.11419.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !191501
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !191501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !191501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !191501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !191501
  %i.jf = load i32, ptr %i.ay, align 4, !noalias !191501, !noundef !57
  invoke fastcc void @_ZN5milli5index5Index14external_id_of17hb2e4156dca0f7d68E(ptr noalias noundef align 8 captures(address) dereferenceable(320) %i.ar, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(496) %i.bq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.be, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ds, i32 %i.jf)
          to label %bb.dm unwind label %.thread502.loopexit.split-lp.i.i.i.i.i.i.i.i

bb.ce:                                            ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17he58f49b22575bf74E.exit.i.i.i.i.i.i.i.i", %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h39719ea278e171c3E.exit.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7425.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !191596
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h74a85859ec01b9a8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.an)
          to label %.noexc333.i.i.i.i.i.i.i.i unwind label %bb.cf, !noalias !191501

.noexc333.i.i.i.i.i.i.i.i:                        ; preds = %bb.ce
  %i.jg = load ptr, ptr %i.j, align 8, !noalias !191596, !noundef !57 ; 3 uses
  %.not.i332.i.i.i.i.i.i.i.i = icmp eq ptr %i.jg, null
  br i1 %.not.i332.i.i.i.i.i.i.i.i, label %.thread507.i.i.i.i.i.i.i.i, label %bb.cg

.thread507.i.i.i.i.i.i.i.i:                       ; preds = %.noexc333.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !191596
  br label %.loopexit.i.i.i.i.i.i.i.i

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.dk, %.body.thread.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i, %bb.cf
  %.pn270.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.jh, %bb.cf ], [ %i.lw, %.body.i.i.i.i.i.i.i.i ], [ %eh.lpad-body526.i.i.i.i.i.i.i.i, %.body.thread.i.i.i.i.i.i.i.i ], [ %eh.lpad-body526.i.i.i.i.i.i.i.i, %bb.dk ]
  invoke fastcc void @"_ZN4core3ptr129drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$milli..index..EmbeddingsWithMetadata$GT$$GT$17h6e8f5cd4e050fa4bE"(ptr noalias noundef align 8 dereferenceable(72) %i.an) #81
          to label %.thread498.i.i.i.i.i.i.i.i unwind label %bb.dl, !noalias !191501

bb.cf:                                            ; preds = %bb.dj, %bb.ce
  %i.jh = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i.i.i"

bb.cg:                                            ; preds = %.noexc333.i.i.i.i.i.i.i.i
  %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !191596 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4445.i.i.i.i.i.i.i.i)
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 360
  %i.jj = getelementptr inbounds nuw [24 x i8], ptr %i.ji, i64 %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i ; 2 uses
  %.sroa.0444.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.jj, align 8, !noalias !191596 ; 4 uses
  %.sroa.4445.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4445.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4445.0..sroa_idx.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !191596
  %i.jk = getelementptr inbounds nuw [32 x i8], ptr %i.jg, i64 %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4445.24..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.jk, i64 24, i1 false), !noalias !191596
  %.sroa.6446.24..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jk, i64 24
  %.sroa.6446.24.copyload.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.6446.24..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !191596
  %.sroa.7447.24..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jk, i64 25
  %.sroa.7447.24.copyload.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.7447.24..sroa_idx.i.i.i.i.i.i.i.i, align 1, !noalias !191596
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7425.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4445.i.i.i.i.i.i.i.i, i64 40, i1 false), !noalias !191597
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4445.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !191596
  %.not269.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0444.0.copyload.i.i.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not269.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !191501
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4431.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7425.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !191501
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4200.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7425.24..sroa_idx.i.i.i.i.i.i.i.i, i64 24, i1 false), !noalias !191501
  %i.jl = trunc nuw i8 %.sroa.6446.24.copyload.i.i.i.i.i.i.i.i to i1
  %i.jm = xor i8 %.sroa.7447.24.copyload.i.i.i.i.i.i.i.i, 1
  %.sroa.079.0.i.i.i.i.i.i.i.i = select i1 %i.jl, i8 %i.jm, i8 0
  store i64 0, ptr %i.am, align 8, !noalias !191501
  store i8 %.sroa.079.0.i.i.i.i.i.i.i.i, ptr %i.ea, align 8, !noalias !191501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !191501
  store i64 %.sroa.0444.0.copyload.i.i.i.i.i.i.i.i, ptr %i.ak, align 8, !noalias !191501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !191501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !191501
  invoke fastcc void @_ZN10serde_json5value8to_value17h7c48c1d2a6d695d8E(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.ai, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.am)
          to label %bb.db unwind label %.body.thread527.i.i.i.i.i.i.i.i, !noalias !191501

.body.thread527.i.i.i.i.i.i.i.i:                  ; preds = %bb.ch
  %i.jn = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.thread.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %bb.cg, %.thread507.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7425.i.i.i.i.i.i.i.i)
  invoke fastcc void @"_ZN4core3ptr129drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$milli..index..EmbeddingsWithMetadata$GT$$GT$17h6e8f5cd4e050fa4bE"(ptr noalias noundef align 8 dereferenceable(72) %i.an)
          to label %bb.ci unwind label %bb.by, !noalias !191501

bb.ci:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !191501
  br label %bb.bx

bb.cj:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !191592
  %.not273.not.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.it, null
  br i1 %.not273.not.not.i.i.i.i.i.i.i.i, label %.thread512.i.i.i.i.i.i.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.jo = load i64, ptr %i.cs, align 8, !noalias !191501, !noundef !57
  %i.jp = load ptr, ptr %i.cr, align 8, !noalias !191501, !nonnull !57, !align !64, !noundef !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !191501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !191501
  store i64 95, ptr %i.p, align 8, !noalias !191501
  store i64 -9223372036854775797, ptr %.sroa.4213.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !191501
  store ptr %i.it, ptr %.sroa.5214.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !191501
  invoke fastcc void @_ZN4core3ops8function6FnOnce9call_once17h5b7c5e52e888eeaaE(ptr noalias noundef align 8 captures(address) dereferenceable(344) %i.q, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.jp, i64 noundef %i.jo, ptr noalias noundef align 8 captures(address) dereferenceable(320) %i.p)
          to label %bb.cl unwind label %.loopexit534.i.i.i.i.i.i.i.i, !noalias !191501

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !191501
  %.sroa.084.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !noalias !191501 ; 2 uses
  %.sroa.686.i.i.i.i.i.i.i.sroa.0.0.copyload.i = load ptr, ptr %.sroa.686.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !191501
  %.sroa.686.i.i.i.i.i.i.i.sroa.5.0.copyload.i = load i64, ptr %.sroa.686.i.i.i.i.i.i.i.sroa.5.0..sroa.686.0..sroa_idx.i.i.i.i.i.i.i.sroa_idx.i, align 8, !noalias !191501
  %.sroa.686.i.i.i.i.i.i.i.sroa.6.0.copyload.i = load i64, ptr %.sroa.686.i.i.i.i.i.i.i.sroa.6.0..sroa.686.0..sroa_idx.i.i.i.i.i.i.i.sroa_idx.i, align 8, !noalias !191501
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.686.i.i.i.i.i.i.i.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(312) %.sroa.686.i.i.i.i.i.i.i.sroa.7.0..sroa.686.0..sroa_idx.i.i.i.i.i.i.i.sroa_idx.i, i64 312, i1 false), !noalias !191501
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !191501
  %.not274.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.084.0.copyload.i.i.i.i.i.i.i.i, 152
  br i1 %.not274.i.i.i.i.i.i.i.i, label %.thread512.i.i.i.i.i.i.i.i, label %bb.cm

end_hunk_17
begin_hunk_18_@"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h0d3c72aac7768ab8E":bb.a
  %.pre.i.i.i.i.i9.i = load i64, ptr %i.i, align 8, !alias.scope !225338, !noalias !225337
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit10.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit10.i": ; preds = %bb.e, %.split.i
  %i.w = phi i64 [ %i.t, %.split.i ], [ %.pre.i.i.i.i.i9.i, %bb.e ] ; 3 uses
  %i.x = icmp sgt i64 %i.w, -1
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !225338, !noalias !225337, !nonnull !57, !noundef !57
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w
  store i8 10, ptr %i.aa, align 1, !noalias !225339
  %i.ab = add nuw i64 %i.w, 1
  br label %bb.f

bb.f:                                             ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit10.i", %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i"
  %.sink.i = phi i64 [ %i.s, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i" ], [ %i.ab, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit10.i" ] ; 2 uses
  store i64 %.sink.i, ptr %i.i, align 8, !noalias !225323
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !225323, !noundef !57 ; 2 uses
  %i.ae = load ptr, ptr %i.e, align 8, !alias.scope !225323, !nonnull !57, !align !64, !noundef !57
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !225323, !noundef !57 ; 4 uses
  %.not.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i, label %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$16begin_object_key17hce33575a1bfe7036E.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 8
  br label %bb.g

bb.g:                                             ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i", %.lr.ph.i.i
  %i.ai = phi i64 [ %.sink.i, %.lr.ph.i.i ], [ %i.ar, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i" ] ; 3 uses
  %.sroa.04.01.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.aj, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i" ]
  %i.aj = add nuw i64 %.sroa.04.01.i.i, 1         ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225341)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225343)
  %i.ak = load i64, ptr %.val, align 8, !range !56, !alias.scope !225344, !noalias !225345, !noundef !57
  %i.al = sub i64 %i.ak, %i.ai
  %i.am = icmp ugt i64 %i.ag, %i.al
  br i1 %i.am, label %bb.h, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i", !prof !60

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, i64 noundef %i.ai, i64 noundef %i.ag, i64 noundef 1, i64 noundef 1), !noalias !225345
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !225346, !noalias !225345
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i": ; preds = %bb.h, %bb.g
  %i.an = phi i64 [ %i.ai, %bb.g ], [ %.pre.i.i.i.i.i.i.i, %bb.h ] ; 3 uses
  %i.ao = icmp sgt i64 %i.an, -1
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = load ptr, ptr %i.ah, align 8, !alias.scope !225346, !noalias !225345, !nonnull !57, !noundef !57
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aq, ptr nonnull readonly align 1 %i.ae, i64 %i.ag, i1 false), !noalias !225347
  %i.ar = add i64 %i.an, %i.ag                    ; 2 uses
  store i64 %i.ar, ptr %i.i, align 8, !alias.scope !225346, !noalias !225345
  %exitcond.not.i.i = icmp eq i64 %i.aj, %i.ad
  br i1 %exitcond.not.i.i, label %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$16begin_object_key17hce33575a1bfe7036E.exit", label %bb.g

"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$16begin_object_key17hce33575a1bfe7036E.exit": ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i", %bb.f
  store i8 2, ptr %i.f, align 1
  %.val9 = load ptr, ptr %i.d, align 8, !nonnull !57, !align !61, !noundef !57
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17h771178339adfa686E"(ptr nonnull %.val9, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef range(i64 3, 25) %2)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h3a14191539cf15c8E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree readonly captures(none) %.0.val) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !74, !noundef !57
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !60

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @252, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4932) #80
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !57, !align !61, !noundef !57 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !range !65, !noundef !57
  %i.h = icmp eq i8 %i.g, 1
  %.val = load ptr, ptr %i.d, align 8, !nonnull !57, !noundef !57 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225394)
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 7 uses
  br i1 %i.h, label %.split.i, label %.split6.i

.split6.i:                                        ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225398)
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !225399, !noalias !225400, !noundef !57 ; 3 uses
  %i.k = load i64, ptr %.val, align 8, !range !56, !alias.scope !225399, !noalias !225400, !noundef !57
  %i.l = sub i64 %i.k, %i.j
  %i.m = icmp ult i64 %i.l, 2
  br i1 %i.m, label %bb.d, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i", !prof !60

bb.d:                                             ; preds = %.split6.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, i64 noundef %i.j, i64 noundef 2, i64 noundef 1, i64 noundef 1), !noalias !225400
  %.pre.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !225401, !noalias !225400
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i": ; preds = %bb.d, %.split6.i
  %i.n = phi i64 [ %i.j, %.split6.i ], [ %.pre.i.i.i.i.i.i, %bb.d ] ; 3 uses
  %i.o = icmp sgt i64 %i.n, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !225401, !noalias !225400, !nonnull !57, !noundef !57
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n
  store i16 2604, ptr %i.r, align 1, !noalias !225402
  %i.s = add nuw i64 %i.n, 2
  br label %bb.f

.split.i:                                         ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225406)
  %i.t = load i64, ptr %i.i, align 8, !alias.scope !225407, !noalias !225408, !noundef !57 ; 3 uses
  %i.u = load i64, ptr %.val, align 8, !range !56, !alias.scope !225407, !noalias !225408, !noundef !57
  %i.v = icmp eq i64 %i.u, %i.t
  br i1 %i.v, label %bb.e, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit10.i", !prof !60

bb.e:                                             ; preds = %.split.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, i64 noundef %i.t, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !225408
  %.pre.i.i.i.i.i9.i = load i64, ptr %i.i, align 8, !alias.scope !225409, !noalias !225408
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit10.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit10.i": ; preds = %bb.e, %.split.i
  %i.w = phi i64 [ %i.t, %.split.i ], [ %.pre.i.i.i.i.i9.i, %bb.e ] ; 3 uses
  %i.x = icmp sgt i64 %i.w, -1
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !225409, !noalias !225408, !nonnull !57, !noundef !57
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w
  store i8 10, ptr %i.aa, align 1, !noalias !225410
  %i.ab = add nuw i64 %i.w, 1
  br label %bb.f

bb.f:                                             ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit10.i", %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i"
  %.sink.i = phi i64 [ %i.s, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i" ], [ %i.ab, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit10.i" ] ; 2 uses
  store i64 %.sink.i, ptr %i.i, align 8, !noalias !225394
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !225394, !noundef !57 ; 2 uses
  %i.ae = load ptr, ptr %i.e, align 8, !alias.scope !225394, !nonnull !57, !align !64, !noundef !57
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !225394, !noundef !57 ; 4 uses
  %.not.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i, label %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$16begin_object_key17hce33575a1bfe7036E.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 8
  br label %bb.g

bb.g:                                             ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i", %.lr.ph.i.i
  %i.ai = phi i64 [ %.sink.i, %.lr.ph.i.i ], [ %i.ar, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i" ] ; 3 uses
  %.sroa.04.01.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.aj, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i" ]
  %i.aj = add nuw i64 %.sroa.04.01.i.i, 1         ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225414)
  %i.ak = load i64, ptr %.val, align 8, !range !56, !alias.scope !225415, !noalias !225416, !noundef !57
  %i.al = sub i64 %i.ak, %i.ai
  %i.am = icmp ugt i64 %i.ag, %i.al
  br i1 %i.am, label %bb.h, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i", !prof !60

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, i64 noundef %i.ai, i64 noundef %i.ag, i64 noundef 1, i64 noundef 1), !noalias !225416
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !225417, !noalias !225416
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i": ; preds = %bb.h, %bb.g
  %i.an = phi i64 [ %i.ai, %bb.g ], [ %.pre.i.i.i.i.i.i.i, %bb.h ] ; 3 uses
  %i.ao = icmp sgt i64 %i.an, -1
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = load ptr, ptr %i.ah, align 8, !alias.scope !225417, !noalias !225416, !nonnull !57, !noundef !57
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aq, ptr nonnull readonly align 1 %i.ae, i64 %i.ag, i1 false), !noalias !225418
  %i.ar = add i64 %i.an, %i.ag                    ; 2 uses
  store i64 %i.ar, ptr %i.i, align 8, !alias.scope !225417, !noalias !225416
  %exitcond.not.i.i = icmp eq i64 %i.aj, %i.ad
  br i1 %exitcond.not.i.i, label %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$16begin_object_key17hce33575a1bfe7036E.exit", label %bb.g

"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$16begin_object_key17hce33575a1bfe7036E.exit": ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i", %bb.f
  store i8 2, ptr %i.f, align 1
  %.val10 = load ptr, ptr %i.d, align 8, !nonnull !57, !align !61, !noundef !57
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.as = getelementptr i8, ptr %.0.val, i64 8
  %.val.i = load ptr, ptr %i.as, align 8, !nonnull !57, !noundef !57
  %i.at = getelementptr i8, ptr %.0.val, i64 16
  %.val1.i = load i64, ptr %i.at, align 8, !noundef !57
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17h771178339adfa686E"(ptr nonnull %.val10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i, i64 noundef %.val1.i)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef align 8 ptr @"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h6b3d5e5c74f961e9E"(i8 %.0.val, ptr %.8.val, ptr nofree readonly captures(none) %.0.val1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 9 uses
  %i.b = trunc nuw i8 %.0.val to i1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !60

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @252, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4933) #80
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %.val = load ptr, ptr %.8.val, align 8, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225474)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225477)
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !225478, !noalias !225479, !noundef !57 ; 3 uses
  %i.e = load i64, ptr %.val, align 8, !range !56, !alias.scope !225478, !noalias !225479, !noundef !57
  %i.f = icmp eq i64 %i.e, %i.d
  br i1 %i.f, label %bb.d, label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit, !prof !60

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, i64 noundef %i.d, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !225479
  %.pre.i.i.i.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !225480, !noalias !225479
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit

_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit: ; preds = %bb.c, %bb.d
  %i.g = phi i64 [ %i.d, %bb.c ], [ %.pre.i.i.i.i.i.i, %bb.d ] ; 3 uses
  %i.h = icmp sgt i64 %i.g, -1
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !225480, !noalias !225479, !nonnull !57, !noundef !57
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  store i8 58, ptr %i.k, align 1, !noalias !225480
  %i.l = add nuw i64 %i.g, 1
  store i64 %i.l, ptr %i.c, align 8, !alias.scope !225480, !noalias !225479
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225481)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val1) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225482)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225483)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !225484
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225485)
  %.val.i.i.i = load ptr, ptr %.8.val, align 8, !alias.scope !225486, !noalias !225487, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225488)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225489)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225490)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225491)
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !225492, !noalias !225493, !noundef !57 ; 3 uses
  %i.o = load i64, ptr %.val.i.i.i, align 8, !range !56, !alias.scope !225492, !noalias !225493, !noundef !57
  %i.p = icmp eq i64 %i.o, %i.n
  br i1 %i.p, label %bb.e, label %bb.f, !prof !60

bb.e:                                             ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i, i64 noundef %i.n, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !225493
  %.pre.i.i.i.i.i.i.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !225494, !noalias !225493
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit
  %i.q = phi i64 [ %i.n, %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit ], [ %.pre.i.i.i.i.i.i.i.i.i, %bb.e ] ; 3 uses
  %i.r = icmp sgt i64 %i.q, -1
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !225494, !noalias !225493, !nonnull !57, !noundef !57
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.q
  store i8 123, ptr %i.u, align 1, !noalias !225495
  %i.v = add nuw i64 %i.q, 1
  store i64 %i.v, ptr %i.m, align 8, !alias.scope !225494, !noalias !225493
  store i8 0, ptr %i.a, align 8, !noalias !225484
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  store i8 1, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !noalias !225484
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %.8.val, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !225484
  %i.w = getelementptr inbounds nuw i8, ptr %.0.val1, i64 16
  %i.x = call fastcc noalias noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17habe4c3a5e0d95b05E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @38, i64 noundef 6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.w) ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %bb.g, label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hb9ef040755cadbd1E.exit"

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %.0.val1, i64 88
  %.val16.i.i.i = load i8, ptr %i.y, align 1, !alias.scope !225496, !noalias !225497
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h92535ac3d79c558bE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1307, i64 noundef 16, i8 %.val16.i.i.i)
  %i.z = load i64, ptr %.0.val1, align 8, !range !71, !alias.scope !225482, !noalias !225498, !noundef !57
  %.not21.i.i = icmp eq i64 %i.z, 0
  br i1 %.not21.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.val1, i64 8
  %.val22.i.i = load i64, ptr %i.aa, align 8, !alias.scope !225482, !noalias !225498
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h9ea6ec64b5f2ba46E(ptr noalias noundef align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1309, i64 noundef 17, i64 1, i64 %.val22.i.i)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.026.0.copyload.i.i = load i8, ptr %i.a, align 8, !noalias !225484
  %.sroa.529.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !225484 ; 2 uses
  %i.ab = trunc nuw i8 %.sroa.026.0.copyload.i.i to i1
  br i1 %i.ab, label %bb.j, label %bb.k, !prof !60

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @252, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4934) #80, !noalias !225499
  unreachable

bb.k:                                             ; preds = %bb.i
  %.sroa.427.0.copyload.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !noalias !225484
  %i.ac = icmp eq i8 %.sroa.427.0.copyload.i.i, 0
  br i1 %i.ac, label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hb9ef040755cadbd1E.exit", label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.529.0.copyload.i.i) ]
  %.val.i23.i.i = load ptr, ptr %.sroa.529.0.copyload.i.i, align 8, !noalias !225499, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225501)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225502)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225503)
  %i.ad = getelementptr inbounds nuw i8, ptr %.val.i23.i.i, i64 16 ; 3 uses
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !225504, !noalias !225505, !noundef !57 ; 3 uses
  %i.af = load i64, ptr %.val.i23.i.i, align 8, !range !56, !alias.scope !225504, !noalias !225505, !noundef !57
  %i.ag = icmp eq i64 %i.af, %i.ae
  br i1 %i.ag, label %bb.m, label %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i.i.i, !prof !60

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i23.i.i, i64 noundef %i.ae, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !225505
  %.pre.i.i.i.i.i.i.i24.i.i = load i64, ptr %i.ad, align 8, !alias.scope !225506, !noalias !225505
  br label %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i.i.i

_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i.i.i: ; preds = %bb.m, %bb.l
  %i.ah = phi i64 [ %i.ae, %bb.l ], [ %.pre.i.i.i.i.i.i.i24.i.i, %bb.m ] ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, -1
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i23.i.i, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !225506, !noalias !225505, !nonnull !57, !noundef !57
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ah
  store i8 125, ptr %i.al, align 1, !noalias !225507
  %i.am = add nuw i64 %i.ah, 1
  store i64 %i.am, ptr %i.ad, align 8, !alias.scope !225506, !noalias !225505
  br label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hb9ef040755cadbd1E.exit"

"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hb9ef040755cadbd1E.exit": ; preds = %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i.i.i, %bb.k, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !225484
  ret ptr %i.x
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17hfa1a50d6205a1121E"(i8 %.0.val, ptr nofree readonly captures(none) %.8.val, ptr nofree readonly captures(address) %.8.val1, i64 %.16.val) unnamed_addr #13 {
bb.a:
  %i.a = trunc nuw i8 %.0.val to i1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !60

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @252, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4933) #80
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %.val = load ptr, ptr %.8.val, align 8, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225525)
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !225526, !noalias !225527, !noundef !57 ; 3 uses
  %i.d = load i64, ptr %.val, align 8, !range !56, !alias.scope !225526, !noalias !225527, !noundef !57
  %i.e = icmp eq i64 %i.d, %i.c
  br i1 %i.e, label %bb.d, label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit, !prof !60

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, i64 noundef %i.c, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !225527
  %.pre.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !225528, !noalias !225527
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit

_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit: ; preds = %bb.c, %bb.d
  %i.f = phi i64 [ %i.c, %bb.c ], [ %.pre.i.i.i.i.i.i, %bb.d ] ; 3 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !225528, !noalias !225527, !nonnull !57, !noundef !57
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  store i8 58, ptr %i.j, align 1, !noalias !225528
  %i.k = add nuw i64 %i.f, 1
  store i64 %i.k, ptr %i.b, align 8, !alias.scope !225528, !noalias !225527
  %.val11 = load ptr, ptr %.8.val, align 8
  tail call fastcc void @"_ZN7roaring6bitmap5serde87_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$9serialize17hdc86e7a86cc4081cE"(ptr %.8.val1, i64 %.16.val, ptr %.val11)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17hd8239344f942d794E"(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !74, !noundef !57
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !60

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @252, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4934) #80
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1, !range !65, !noundef !57
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !57, !align !61, !noundef !57 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val = load ptr, ptr %i.g, align 8             ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225575)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !225575, !noundef !57
  %i.k = add i64 %i.j, -1                         ; 3 uses
  store i64 %i.k, ptr %i.i, align 8, !alias.scope !225575
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.m = load i8, ptr %i.l, align 8, !range !74, !alias.scope !225575, !noundef !57
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.f, label %._ZN10serde_json3ser6indent17h109e002384918612E.exit_crit_edge.i

._ZN10serde_json3ser6indent17h109e002384918612E.exit_crit_edge.i: ; preds = %bb.d
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !225576, !noalias !225577
  br label %_ZN10serde_json3ser6indent17h109e002384918612E.exit.i

_ZN10serde_json3ser6indent17h109e002384918612E.exit.i: ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i", %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit10.i", %._ZN10serde_json3ser6indent17h109e002384918612E.exit_crit_edge.i
  %i.o = phi i64 [ %.pre.i, %._ZN10serde_json3ser6indent17h109e002384918612E.exit_crit_edge.i ], [ %i.ab, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit10.i" ], [ %i.ao, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i" ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225578)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225579)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225581)
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.q = load i64, ptr %.val, align 8, !range !56, !alias.scope !225576, !noalias !225577, !noundef !57
  %i.r = icmp eq i64 %i.q, %i.o
  br i1 %i.r, label %bb.e, label %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$10end_object17h1e3f6b6c9e20a290E.exit", !prof !60

bb.e:                                             ; preds = %_ZN10serde_json3ser6indent17h109e002384918612E.exit.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, i64 noundef %i.o, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !225577
  %.pre.i.i.i.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !225582, !noalias !225577
  br label %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$10end_object17h1e3f6b6c9e20a290E.exit"

bb.f:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225583)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225584)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225585)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225586)
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 5 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !225587, !noalias !225588, !noundef !57 ; 3 uses
  %i.u = load i64, ptr %.val, align 8, !range !56, !alias.scope !225587, !noalias !225588, !noundef !57
  %i.v = icmp eq i64 %i.u, %i.t
  br i1 %i.v, label %bb.g, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit10.i", !prof !60

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, i64 noundef %i.t, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !225588
  %.pre.i.i.i.i.i9.i = load i64, ptr %i.s, align 8, !alias.scope !225589, !noalias !225588
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit10.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit10.i": ; preds = %bb.g, %bb.f
  %i.w = phi i64 [ %i.t, %bb.f ], [ %.pre.i.i.i.i.i9.i, %bb.g ] ; 3 uses
  %i.x = icmp sgt i64 %i.w, -1
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !225589, !noalias !225588, !nonnull !57, !noundef !57
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w
  store i8 10, ptr %i.aa, align 1, !noalias !225590
  %i.ab = add nuw i64 %i.w, 1                     ; 3 uses
  store i64 %i.ab, ptr %i.s, align 8, !alias.scope !225589, !noalias !225588
  %i.ac = load ptr, ptr %i.h, align 8, !alias.scope !225575, !nonnull !57, !align !64, !noundef !57
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !225575, !noundef !57 ; 4 uses
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %_ZN10serde_json3ser6indent17h109e002384918612E.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit10.i", %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i"
  %i.af = phi i64 [ %i.ao, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i" ], [ %i.ab, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit10.i" ] ; 3 uses
  %.sroa.04.01.i.i = phi i64 [ %i.ag, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i" ], [ 0, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit10.i" ]
end_hunk_18
begin_hunk_19_@"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h8dbbe270f4cf1021E":bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !241045, !noalias !241044, !nonnull !57, !noundef !57
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.aa, ptr noundef nonnull readonly align 1 dereferenceable(5) @316, i64 5, i1 false), !noalias !241046
  %i.ab = add nuw i64 %i.w, 5
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17he27a84b6f2e86dc9E.exit.i.i.i"

.split.i.i.i.i.i.i.i.i:                           ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241047)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241048)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241050)
  %i.ac = load i64, ptr %i.r, align 8, !alias.scope !241051, !noalias !241052, !noundef !57 ; 3 uses
  %i.ad = load i64, ptr %.val9.i.i, align 8, !range !56, !alias.scope !241051, !noalias !241052, !noundef !57
  %i.ae = sub i64 %i.ad, %i.ac
  %i.af = icmp ult i64 %i.ae, 4
  br i1 %i.af, label %bb.h, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit5.i.i.i.i.i.i.i.i", !prof !60

bb.h:                                             ; preds = %.split.i.i.i.i.i.i.i.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i.i, i64 noundef %i.ac, i64 noundef 4, i64 noundef 1, i64 noundef 1), !noalias !241052
  %.pre.i.i.i.i.i4.i.i.i.i.i.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !241053, !noalias !241052
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit5.i.i.i.i.i.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit5.i.i.i.i.i.i.i.i": ; preds = %bb.h, %.split.i.i.i.i.i.i.i.i
  %i.ag = phi i64 [ %i.ac, %.split.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i4.i.i.i.i.i.i.i.i, %bb.h ] ; 3 uses
  %i.ah = icmp sgt i64 %i.ag, -1
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !241053, !noalias !241052, !nonnull !57, !noundef !57
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ag
  store i32 1702195828, ptr %i.ak, align 1, !noalias !241054
  %i.al = add nuw i64 %i.ag, 4
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17he27a84b6f2e86dc9E.exit.i.i.i"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17he27a84b6f2e86dc9E.exit.i.i.i": ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit5.i.i.i.i.i.i.i.i", %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i.i.i.i.i"
  %.sink.i.i.i.i.i.i.i.i = phi i64 [ %i.al, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit5.i.i.i.i.i.i.i.i" ], [ %i.ab, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i.i.i.i.i" ]
  store i64 %.sink.i.i.i.i.i.i.i.i, ptr %i.r, align 8, !noalias !241055
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h9ba1cdfe9a5805ceE.exit

bb.i:                                             ; preds = %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17hbde1af2c5984e6b5E.exit.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241056)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241057)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241058)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241059)
  %i.am = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 16 ; 3 uses
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !241060, !noalias !241061, !noundef !57 ; 3 uses
  %i.ao = load i64, ptr %.val9.i.i, align 8, !range !56, !alias.scope !241060, !noalias !241061, !noundef !57
  %i.ap = sub i64 %i.ao, %i.an
  %i.aq = icmp ult i64 %i.ap, 4
  br i1 %i.aq, label %bb.j, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h1d2b4805c971e51fE.exit.i.i.i", !prof !60

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i.i, i64 noundef %i.an, i64 noundef 4, i64 noundef 1, i64 noundef 1), !noalias !241061
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.am, align 8, !alias.scope !241062, !noalias !241061
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h1d2b4805c971e51fE.exit.i.i.i"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h1d2b4805c971e51fE.exit.i.i.i": ; preds = %bb.j, %bb.i
  %i.ar = phi i64 [ %i.an, %bb.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i, %bb.j ] ; 3 uses
  %i.as = icmp sgt i64 %i.ar, -1
  tail call void @llvm.assume(i1 %i.as)
  %i.at = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !241062, !noalias !241061, !nonnull !57, !noundef !57
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ar
  store i32 1819047278, ptr %i.av, align 1, !noalias !241063
  %i.aw = add nuw i64 %i.ar, 4
  store i64 %i.aw, ptr %i.am, align 8, !alias.scope !241062, !noalias !241061
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h9ba1cdfe9a5805ceE.exit

_ZN10serde_core3ser12SerializeMap15serialize_entry17h9ba1cdfe9a5805ceE.exit: ; preds = %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17he27a84b6f2e86dc9E.exit.i.i.i", %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h1d2b4805c971e51fE.exit.i.i.i"
  %i.ax = getelementptr inbounds nuw i8, ptr %.val4.i, i64 32
  store i8 1, ptr %i.ax, align 8, !alias.scope !241064, !noalias !241030
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %_ZN10serde_core3ser12SerializeMap15serialize_entry17h9ba1cdfe9a5805ceE.exit
  %.sroa.0.0 = phi ptr [ null, %_ZN10serde_core3ser12SerializeMap15serialize_entry17h9ba1cdfe9a5805ceE.exit ], [ %i.ay, %bb.l ]
  ret ptr %.sroa.0.0

bb.l:                                             ; preds = %bb.a
  %i.ay = tail call noundef nonnull align 8 ptr @_ZN10serde_json3ser17invalid_raw_value17h7b86ac75f635f2e0E()
  br label %bb.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h8e5025f4df484539E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef range(i64 7, 23) %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !74, !noundef !57
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241121)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !241122, !noalias !241123, !nonnull !57, !align !61, !noundef !57 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !range !65, !alias.scope !241122, !noalias !241123, !noundef !57
  %i.g = icmp eq i8 %i.f, 1
  %.val.i.i = load ptr, ptr %i.d, align 8, !noalias !241124 ; 6 uses
  br i1 %i.g, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241128)
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !241129, !noalias !241130, !noundef !57 ; 3 uses
  %i.j = load i64, ptr %.val.i.i, align 8, !range !56, !alias.scope !241129, !noalias !241130, !noundef !57
  %i.k = icmp eq i64 %i.j, %i.i
  br i1 %i.k, label %bb.d, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i", !prof !60

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, i64 noundef %i.i, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !241130
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !241131, !noalias !241130
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i": ; preds = %bb.d, %bb.c
  %i.l = phi i64 [ %i.i, %bb.c ], [ %.pre.i.i.i.i.i.i.i.i, %bb.d ] ; 3 uses
  %i.m = icmp sgt i64 %i.l, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !241131, !noalias !241130, !nonnull !57, !noundef !57
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l
  store i8 44, ptr %i.p, align 1, !noalias !241132
  %i.q = add nuw i64 %i.l, 1
  store i64 %i.q, ptr %i.h, align 8, !alias.scope !241131, !noalias !241130
  %.val9.pre.i.i = load ptr, ptr %i.d, align 8, !noalias !241124
  br label %bb.e

bb.e:                                             ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i", %bb.b
  %.val9.i.i = phi ptr [ %.val.i.i, %bb.b ], [ %.val9.pre.i.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i" ]
  store i8 2, ptr %i.e, align 1, !alias.scope !241122, !noalias !241123
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val9.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef range(i64 7, 23) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241133)
  %.val.i5.i = load ptr, ptr %i.d, align 8, !noalias !241134, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241138)
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i5.i, i64 16 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !241139, !noalias !241140, !noundef !57 ; 3 uses
  %i.t = load i64, ptr %.val.i5.i, align 8, !range !56, !alias.scope !241139, !noalias !241140, !noundef !57
  %i.u = icmp eq i64 %i.t, %i.s
  br i1 %i.u, label %bb.f, label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i, !prof !60

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i5.i, i64 noundef %i.s, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !241140
  %.pre.i.i.i.i.i.i.i6.i = load i64, ptr %i.r, align 8, !alias.scope !241141, !noalias !241140
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i

_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i: ; preds = %bb.f, %bb.e
  %i.v = phi i64 [ %i.s, %bb.e ], [ %.pre.i.i.i.i.i.i.i6.i, %bb.f ] ; 3 uses
  %i.w = icmp sgt i64 %i.v, -1
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i5.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !241141, !noalias !241140, !nonnull !57, !noundef !57
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v
  store i8 58, ptr %i.z, align 1, !noalias !241142
  %i.aa = add nuw i64 %i.v, 1
  store i64 %i.aa, ptr %i.r, align 8, !alias.scope !241141, !noalias !241140
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241144)
  %i.ab = load i64, ptr %3, align 8, !range !83, !alias.scope !241145, !noalias !241146, !noundef !57
  %.not.i.i.i = icmp eq i64 %i.ab, -9223372036854775808
  br i1 %.not.i.i.i, label %bb.g, label %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17h6be6d9dc61cff2aeE.exit.i.i"

bb.g:                                             ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i
  %.val.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !241144, !noalias !241147, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241151)
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !241152, !noalias !241153, !noundef !57 ; 3 uses
  %i.ae = load i64, ptr %.val.i.i.i, align 8, !range !56, !alias.scope !241152, !noalias !241153, !noundef !57
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = icmp ult i64 %i.af, 4
  br i1 %i.ag, label %bb.h, label %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17h6be6d9dc61cff2aeE.exit.thread.i.i", !prof !60

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i, i64 noundef %i.ad, i64 noundef 4, i64 noundef 1, i64 noundef 1), !noalias !241153
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ac, align 8, !alias.scope !241154, !noalias !241153
  br label %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17h6be6d9dc61cff2aeE.exit.thread.i.i"

"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17h6be6d9dc61cff2aeE.exit.thread.i.i": ; preds = %bb.h, %bb.g
  %i.ah = phi i64 [ %i.ad, %bb.g ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i, %bb.h ] ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, -1
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !241154, !noalias !241153, !nonnull !57, !noundef !57
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ah
  store i32 1819047278, ptr %i.al, align 1, !noalias !241155
  %i.am = add nuw i64 %i.ah, 4
  store i64 %i.am, ptr %i.ac, align 8, !alias.scope !241154, !noalias !241153
  br label %bb.i

"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17h6be6d9dc61cff2aeE.exit.i.i": ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i
  %i.an = tail call fastcc noalias noundef align 8 ptr @"_ZN123_$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17h7402f2c4161a18e2E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %3, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d), !noalias !241156 ; 2 uses
  %.not.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i, label %bb.i, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h3a26bf0a08e5291dE.exit

bb.i:                                             ; preds = %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17h6be6d9dc61cff2aeE.exit.i.i", %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17h6be6d9dc61cff2aeE.exit.thread.i.i"
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h3a26bf0a08e5291dE.exit

_ZN10serde_core3ser12SerializeMap15serialize_entry17h3a26bf0a08e5291dE.exit: ; preds = %bb.i, %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17h6be6d9dc61cff2aeE.exit.i.i", %bb.j
  %.sroa.0.0 = phi ptr [ %i.ao, %bb.j ], [ null, %bb.i ], [ %i.an, %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17h6be6d9dc61cff2aeE.exit.i.i" ]
  ret ptr %.sroa.0.0

bb.j:                                             ; preds = %bb.a
  %i.ao = tail call noundef nonnull align 8 ptr @_ZN10serde_json3ser17invalid_raw_value17h7b86ac75f635f2e0E()
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h3a26bf0a08e5291dE.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h8ef9e4b109925711E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !74, !noundef !57
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241387)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !241388, !noalias !241389, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !range !65, !alias.scope !241388, !noalias !241389, !noundef !57
  %i.g = icmp eq i8 %i.f, 1
  %.val.i.i = load ptr, ptr %i.d, align 8, !noalias !241390 ; 6 uses
  br i1 %i.g, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241394)
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !241395, !noalias !241396, !noundef !57 ; 3 uses
  %i.j = load i64, ptr %.val.i.i, align 8, !range !56, !alias.scope !241395, !noalias !241396, !noundef !57
  %i.k = icmp eq i64 %i.j, %i.i
  br i1 %i.k, label %bb.d, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i", !prof !60

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, i64 noundef %i.i, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !241396
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !241397, !noalias !241396
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i": ; preds = %bb.d, %bb.c
  %i.l = phi i64 [ %i.i, %bb.c ], [ %.pre.i.i.i.i.i.i.i.i, %bb.d ] ; 3 uses
  %i.m = icmp sgt i64 %i.l, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !241397, !noalias !241396, !nonnull !57, !noundef !57
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l
  store i8 44, ptr %i.p, align 1, !noalias !241398
  %i.q = add nuw i64 %i.l, 1
  store i64 %i.q, ptr %i.h, align 8, !alias.scope !241397, !noalias !241396
  %.val9.pre.i.i = load ptr, ptr %i.d, align 8, !noalias !241390
  br label %bb.e

bb.e:                                             ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i", %bb.b
  %.val9.i.i = phi ptr [ %.val.i.i, %bb.b ], [ %.val9.pre.i.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i" ]
  store i8 2, ptr %i.e, align 1, !alias.scope !241388, !noalias !241389
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val9.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @908, i64 noundef 5)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241399)
  %.val.i5.i = load ptr, ptr %i.d, align 8, !noalias !241400, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241404)
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i5.i, i64 16 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !241405, !noalias !241406, !noundef !57 ; 3 uses
  %i.t = load i64, ptr %.val.i5.i, align 8, !range !56, !alias.scope !241405, !noalias !241406, !noundef !57
  %i.u = icmp eq i64 %i.t, %i.s
  br i1 %i.u, label %bb.f, label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i, !prof !60

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i5.i, i64 noundef %i.s, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !241406
  %.pre.i.i.i.i.i.i.i7.i = load i64, ptr %i.r, align 8, !alias.scope !241407, !noalias !241406
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i

_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i: ; preds = %bb.f, %bb.e
  %i.v = phi i64 [ %i.s, %bb.e ], [ %.pre.i.i.i.i.i.i.i7.i, %bb.f ] ; 3 uses
  %i.w = icmp sgt i64 %i.v, -1
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i5.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !241407, !noalias !241406, !nonnull !57, !noundef !57
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v
  store i8 58, ptr %i.z, align 1, !noalias !241408
  %i.aa = add nuw i64 %i.v, 1
  store i64 %i.aa, ptr %i.r, align 8, !alias.scope !241407, !noalias !241406
  %.val9.i6.i = load ptr, ptr %i.d, align 8, !noalias !241400 ; 34 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241409)
  %i.ab = load i64, ptr %1, align 8, !range !83, !alias.scope !241410, !noalias !241385, !noundef !57
  %.not.i.i.i = icmp eq i64 %i.ab, -9223372036854775808
  br i1 %.not.i.i.i, label %bb.y, label %bb.g

bb.g:                                             ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241412)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i6.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241416)
  %i.ac = getelementptr inbounds nuw i8, ptr %.val9.i6.i, i64 16 ; 27 uses
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !241417, !noalias !241418, !noundef !57 ; 3 uses
  %i.ae = load i64, ptr %.val9.i6.i, align 8, !range !56, !alias.scope !241417, !noalias !241418, !noundef !57
  %i.af = icmp eq i64 %i.ae, %i.ad
  br i1 %i.af, label %bb.h, label %bb.i, !prof !60

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i, i64 noundef %i.ad, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !241418
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ac, align 8, !alias.scope !241419, !noalias !241418
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ag = phi i64 [ %i.ad, %bb.g ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.h ] ; 3 uses
  %i.ah = icmp sgt i64 %i.ag, -1
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %.val9.i6.i, i64 8 ; 9 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !241419, !noalias !241418, !nonnull !57, !noundef !57
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ag
  store i8 123, ptr %i.ak, align 1, !noalias !241420
  %i.al = add nuw i64 %i.ag, 1
  store i64 %i.al, ptr %i.ac, align 8, !alias.scope !241419, !noalias !241418
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !241421, !noalias !241422 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val30.i.i.i.i.i = load i64, ptr %i.an, align 8, !alias.scope !241421, !noalias !241422
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val9.i6.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @400, i64 noundef range(i64 2, 20) 7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241426)
  %i.ao = load i64, ptr %i.ac, align 8, !alias.scope !241427, !noalias !241428, !noundef !57 ; 3 uses
  %i.ap = load i64, ptr %.val9.i6.i, align 8, !range !56, !alias.scope !241427, !noalias !241428, !noundef !57
  %i.aq = icmp eq i64 %i.ap, %i.ao
  br i1 %i.aq, label %bb.j, label %bb.k, !prof !60

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i, i64 noundef %i.ao, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !241428
  %.pre.i.i.i.i.i.i.i8.i.i.i.i.i.i.i = load i64, ptr %i.ac, align 8, !alias.scope !241429, !noalias !241428
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ar = phi i64 [ %i.ao, %bb.i ], [ %.pre.i.i.i.i.i.i.i8.i.i.i.i.i.i.i, %bb.j ] ; 3 uses
  %i.as = icmp sgt i64 %i.ar, -1
  tail call void @llvm.assume(i1 %i.as)
  %i.at = load ptr, ptr %i.ai, align 8, !alias.scope !241429, !noalias !241428, !nonnull !57, !noundef !57
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store i8 58, ptr %i.au, align 1, !noalias !241430
  %i.av = add nuw i64 %i.ar, 1
  store i64 %i.av, ptr %i.ac, align 8, !alias.scope !241429, !noalias !241428
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val9.i6.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i.i.i.i, i64 noundef %.val30.i.i.i.i.i)
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val31.i.i.i.i.i = load ptr, ptr %i.aw, align 8, !alias.scope !241421, !noalias !241422 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val32.i.i.i.i.i = load i64, ptr %i.ax, align 8, !alias.scope !241421, !noalias !241422
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241434)
  %i.ay = load i64, ptr %i.ac, align 8, !alias.scope !241435, !noalias !241436, !noundef !57 ; 3 uses
  %i.az = load i64, ptr %.val9.i6.i, align 8, !range !56, !alias.scope !241435, !noalias !241436, !noundef !57
  %i.ba = icmp eq i64 %i.az, %i.ay
  br i1 %i.ba, label %bb.l, label %bb.m, !prof !60

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i, i64 noundef %i.ay, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !241436
  %.pre.i.i.i.i.i.i.i.i.i46.i.i.i.i.i = load i64, ptr %i.ac, align 8, !alias.scope !241437, !noalias !241436
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bb = phi i64 [ %i.ay, %bb.k ], [ %.pre.i.i.i.i.i.i.i.i.i46.i.i.i.i.i, %bb.l ] ; 3 uses
  %i.bc = icmp sgt i64 %i.bb, -1
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = load ptr, ptr %i.ai, align 8, !alias.scope !241437, !noalias !241436, !nonnull !57, !noundef !57
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bb
  store i8 44, ptr %i.be, align 1, !noalias !241438
  %i.bf = add nuw i64 %i.bb, 1
  store i64 %i.bf, ptr %i.ac, align 8, !alias.scope !241437, !noalias !241436
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val9.i6.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @991, i64 noundef range(i64 2, 20) 4)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241439)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241440)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241442)
  %i.bg = load i64, ptr %i.ac, align 8, !alias.scope !241443, !noalias !241444, !noundef !57 ; 3 uses
  %i.bh = load i64, ptr %.val9.i6.i, align 8, !range !56, !alias.scope !241443, !noalias !241444, !noundef !57
  %i.bi = icmp eq i64 %i.bh, %i.bg
  br i1 %i.bi, label %bb.n, label %bb.o, !prof !60

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i, i64 noundef %i.bg, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !241444
  %.pre.i.i.i.i.i.i.i8.i.i45.i.i.i.i.i = load i64, ptr %i.ac, align 8, !alias.scope !241445, !noalias !241444
end_hunk_19
begin_hunk_20_@"_ZN98_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStructVariant$GT$15serialize_field17h8e0eb87c398fa444E":bb.a
  %i.ex = call fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h94eeba50d8764d6dE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1654, i64 noundef 18, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bc), !noalias !252590 ; 2 uses
  %.not225.i.i.i.i.i = icmp eq ptr %i.ex, null
  br i1 %.not225.i.i.i.i.i, label %bb.z, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha0aeec9b25263899E.exit"

bb.z:                                             ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h1809373d1cce2877E.exit270.i.i.i.i.i", %bb.x
  br i1 %i.bi, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ey = load i8, ptr %i.a, align 8, !range !74, !noalias !252625, !noundef !57
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %.sink.split.i.i.i.i.i, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h1809373d1cce2877E.exit272.i.i.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h1809373d1cce2877E.exit272.i.i.i.i.i": ; preds = %bb.aa
  %i.fa = call fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h94eeba50d8764d6dE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1655, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bg), !noalias !252590 ; 2 uses
  %.not227.i.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not227.i.i.i.i.i, label %bb.ab, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha0aeec9b25263899E.exit"

bb.ab:                                            ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h1809373d1cce2877E.exit272.i.i.i.i.i", %bb.z
  br i1 %i.bm, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fb = load i8, ptr %i.a, align 8, !range !74, !noalias !252625, !noundef !57
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %.sink.split.i.i.i.i.i, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h1809373d1cce2877E.exit274.i.i.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h1809373d1cce2877E.exit274.i.i.i.i.i": ; preds = %bb.ac
  %i.fd = call fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h94eeba50d8764d6dE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1656, i64 noundef 10, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bk), !noalias !252590 ; 2 uses
  %.not229.i.i.i.i.i = icmp eq ptr %i.fd, null
  br i1 %.not229.i.i.i.i.i, label %bb.ad, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha0aeec9b25263899E.exit"

bb.ad:                                            ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h1809373d1cce2877E.exit274.i.i.i.i.i", %bb.ab
  br i1 %i.bq, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fe = load i8, ptr %i.a, align 8, !range !74, !noalias !252625, !noundef !57
  %i.ff = trunc nuw i8 %i.fe to i1
  br i1 %i.ff, label %.sink.split.i.i.i.i.i, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hcfb0bab90e98befeE.exit.i.i.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hcfb0bab90e98befeE.exit.i.i.i.i.i": ; preds = %bb.ae
  %i.fg = call fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h8b4af813dc369729E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bo) ; 2 uses
  %.not231.i.i.i.i.i = icmp eq ptr %i.fg, null
  br i1 %.not231.i.i.i.i.i, label %bb.af, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha0aeec9b25263899E.exit"

bb.af:                                            ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hcfb0bab90e98befeE.exit.i.i.i.i.i", %bb.ad
  br i1 %i.bu, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fh = load i8, ptr %i.a, align 8, !range !74, !noalias !252625, !noundef !57
  %i.fi = trunc nuw i8 %i.fh to i1
  br i1 %i.fi, label %.sink.split.i.i.i.i.i, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h6eb385b7ed5b85dfE.exit.thread.i.i.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h6eb385b7ed5b85dfE.exit.thread.i.i.i.i.i": ; preds = %bb.ag
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17hecb7885cefd34ae6E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1658, i64 noundef 17, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bs)
  br label %bb.ah

bb.ah:                                            ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h6eb385b7ed5b85dfE.exit.thread.i.i.i.i.i", %bb.af
  br i1 %i.by, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fj = load i8, ptr %i.a, align 8, !range !74, !noalias !252625, !noundef !57
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %.sink.split.i.i.i.i.i, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hf838fb4a0b813287E.exit.thread.i.i.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hf838fb4a0b813287E.exit.thread.i.i.i.i.i": ; preds = %bb.ai
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17hf392e6d0b4e0e18fE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, i8 %i.bx)
  br label %bb.aj

bb.aj:                                            ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hf838fb4a0b813287E.exit.thread.i.i.i.i.i", %bb.ah
  br i1 %i.cc, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fl = load i8, ptr %i.a, align 8, !range !74, !noalias !252625, !noundef !57
  %i.fm = trunc nuw i8 %i.fl to i1
  br i1 %i.fm, label %.sink.split.i.i.i.i.i, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h5972c9bada2e3a21E.exit.i.i.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h5972c9bada2e3a21E.exit.i.i.i.i.i": ; preds = %bb.ak
  %i.fn = call fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17hee53fafef74858deE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ca) ; 2 uses
  %.not237.i.i.i.i.i = icmp eq ptr %i.fn, null
  br i1 %.not237.i.i.i.i.i, label %bb.al, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha0aeec9b25263899E.exit"

bb.al:                                            ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h5972c9bada2e3a21E.exit.i.i.i.i.i", %bb.aj
  br i1 %i.cg, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fo = load i8, ptr %i.a, align 8, !range !74, !noalias !252625, !noundef !57
  %i.fp = trunc nuw i8 %i.fo to i1
  br i1 %i.fp, label %.sink.split.i.i.i.i.i, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h8e35066d80f46dc7E.exit.i.i.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h8e35066d80f46dc7E.exit.i.i.i.i.i": ; preds = %bb.am
  %i.fq = call fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17hd9531fd69de28dafE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ce) ; 2 uses
  %.not239.i.i.i.i.i = icmp eq ptr %i.fq, null
  br i1 %.not239.i.i.i.i.i, label %bb.an, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha0aeec9b25263899E.exit"

bb.an:                                            ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h8e35066d80f46dc7E.exit.i.i.i.i.i", %bb.al
  br i1 %i.ck, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fr = load i8, ptr %i.a, align 8, !range !74, !noalias !252625, !noundef !57
  %i.fs = trunc nuw i8 %i.fr to i1
  br i1 %i.fs, label %.sink.split.i.i.i.i.i, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h8eb2dd3ddb003249E.exit.i.i.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h8eb2dd3ddb003249E.exit.i.i.i.i.i": ; preds = %bb.ao
  %i.ft = getelementptr inbounds nuw i8, ptr %.0.val, i64 368
  %.val259.i.i.i.i.i = load i64, ptr %i.ft, align 8, !alias.scope !252600, !noalias !252603
  %i.fu = call fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h778be0232178f8a0E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, i64 %i.cj, i64 %.val259.i.i.i.i.i) ; 2 uses
  %.not241.i.i.i.i.i = icmp eq ptr %i.fu, null
  br i1 %.not241.i.i.i.i.i, label %bb.ap, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha0aeec9b25263899E.exit"

bb.ap:                                            ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h8eb2dd3ddb003249E.exit.i.i.i.i.i", %bb.an
  br i1 %i.co, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.fv = load i8, ptr %i.a, align 8, !range !74, !noalias !252625, !noundef !57
  %i.fw = trunc nuw i8 %i.fv to i1
  br i1 %i.fw, label %.sink.split.i.i.i.i.i, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hdad301d7ac99712cE.exit.i.i.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hdad301d7ac99712cE.exit.i.i.i.i.i": ; preds = %bb.aq
  %i.fx = call fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h82e78d2aa1e0a64cE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cm) ; 2 uses
  %.not243.i.i.i.i.i = icmp eq ptr %i.fx, null
  br i1 %.not243.i.i.i.i.i, label %bb.ar, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha0aeec9b25263899E.exit"

bb.ar:                                            ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hdad301d7ac99712cE.exit.i.i.i.i.i", %bb.ap
  br i1 %i.cs, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.fy = load i8, ptr %i.a, align 8, !range !74, !noalias !252625, !noundef !57
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %.sink.split.i.i.i.i.i, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h6bd6fb0807787694E.exit.thread.i.i.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h6bd6fb0807787694E.exit.thread.i.i.i.i.i": ; preds = %bb.as
  %i.ga = getelementptr inbounds nuw i8, ptr %.0.val, i64 232
  %.val255.i.i.i.i.i = load i64, ptr %i.ga, align 8, !alias.scope !252600, !noalias !252603
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17hb8fdabf0c68418baE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1664, i64 noundef 14, i64 %i.cr, i64 %.val255.i.i.i.i.i)
  br label %bb.at

bb.at:                                            ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h6bd6fb0807787694E.exit.thread.i.i.i.i.i", %bb.ar
  br i1 %i.cw, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gb = load i8, ptr %i.a, align 8, !range !74, !noalias !252625, !noundef !57
  %i.gc = trunc nuw i8 %i.gb to i1
  br i1 %i.gc, label %.sink.split.i.i.i.i.i, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hcb3a8fdba619c3faE.exit.i.i.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hcb3a8fdba619c3faE.exit.i.i.i.i.i": ; preds = %bb.au
  %i.gd = call fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h6986db78f813f878E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cu) ; 2 uses
  %.not247.i.i.i.i.i = icmp eq ptr %i.gd, null
  br i1 %.not247.i.i.i.i.i, label %bb.av, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha0aeec9b25263899E.exit"

bb.av:                                            ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hcb3a8fdba619c3faE.exit.i.i.i.i.i", %bb.at
  br i1 %i.da, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ge = load i8, ptr %i.a, align 8, !range !74, !noalias !252625, !noundef !57
  %i.gf = trunc nuw i8 %i.ge to i1
  br i1 %i.gf, label %.sink.split.i.i.i.i.i, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h3eb33936b86b353cE.exit.thread.i.i.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h3eb33936b86b353cE.exit.thread.i.i.i.i.i": ; preds = %bb.aw
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h220d9a7059ee34ceE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1666, i64 noundef 11, i8 %i.cz)
  br label %bb.ax

bb.ax:                                            ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h3eb33936b86b353cE.exit.thread.i.i.i.i.i", %bb.av
  br i1 %i.de, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.gg = load i8, ptr %i.a, align 8, !range !74, !noalias !252625, !noundef !57
  %i.gh = trunc nuw i8 %i.gg to i1
  br i1 %i.gh, label %.sink.split.i.i.i.i.i, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h9ca7b1c58ed854caE.exit.thread.i.i.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h9ca7b1c58ed854caE.exit.thread.i.i.i.i.i": ; preds = %bb.ay
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17hebdfc900fdc4d501E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, i8 %i.dd)
  br label %bb.az

bb.az:                                            ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h9ca7b1c58ed854caE.exit.thread.i.i.i.i.i", %bb.ax
  br i1 %i.di, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.gi = load i8, ptr %i.a, align 8, !range !74, !noalias !252625, !noundef !57
  %i.gj = trunc nuw i8 %i.gi to i1
  br i1 %i.gj, label %.sink.split.i.i.i.i.i, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h721c838c99029008E.exit.i.i.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h721c838c99029008E.exit.i.i.i.i.i": ; preds = %bb.ba
  %i.gk = call fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h191526dc1607de8cE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %i.dg) ; 2 uses
  %.not253.i.i.i.i.i = icmp eq ptr %i.gk, null
  br i1 %.not253.i.i.i.i.i, label %bb.bb, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha0aeec9b25263899E.exit"

.sink.split.i.i.i.i.i:                            ; preds = %bb.ba, %bb.ay, %bb.aw, %bb.au, %bb.as, %bb.aq, %bb.ao, %bb.am, %bb.ak, %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m
  %i.gl = tail call noundef nonnull align 8 ptr @_ZN10serde_json3ser17invalid_raw_value17h7b86ac75f635f2e0E(), !noalias !252626
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha0aeec9b25263899E.exit"

bb.bb:                                            ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h721c838c99029008E.exit.i.i.i.i.i", %bb.az
  call fastcc void @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$3end17h9efebf22f020f0b7E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.a)
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha0aeec9b25263899E.exit"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha0aeec9b25263899E.exit": ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h34ae7d5735c1d508E.exit.i.i.i.i.i", %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h34ae7d5735c1d508E.exit262.i.i.i.i.i", %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h4ed2cf1d3190debcE.exit.i.i.i.i.i", %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h1809373d1cce2877E.exit.i.i.i.i.i", %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h237d23e4a6d36e5eE.exit.i.i.i.i.i", %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17he2f1304bd7368087E.exit.i.i.i.i.i", %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h1809373d1cce2877E.exit268.i.i.i.i.i", %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h1809373d1cce2877E.exit270.i.i.i.i.i", %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h1809373d1cce2877E.exit272.i.i.i.i.i", %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h1809373d1cce2877E.exit274.i.i.i.i.i", %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hcfb0bab90e98befeE.exit.i.i.i.i.i", %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h5972c9bada2e3a21E.exit.i.i.i.i.i", %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h8e35066d80f46dc7E.exit.i.i.i.i.i", %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h8eb2dd3ddb003249E.exit.i.i.i.i.i", %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hdad301d7ac99712cE.exit.i.i.i.i.i", %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hcb3a8fdba619c3faE.exit.i.i.i.i.i", %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h721c838c99029008E.exit.i.i.i.i.i", %.sink.split.i.i.i.i.i, %bb.bb
  %.sroa.0.1.i.i.i = phi ptr [ null, %bb.bb ], [ %i.gl, %.sink.split.i.i.i.i.i ], [ %i.fq, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h8e35066d80f46dc7E.exit.i.i.i.i.i" ], [ %i.fn, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h5972c9bada2e3a21E.exit.i.i.i.i.i" ], [ %i.gd, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hcb3a8fdba619c3faE.exit.i.i.i.i.i" ], [ %i.fx, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hdad301d7ac99712cE.exit.i.i.i.i.i" ], [ %i.fg, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hcfb0bab90e98befeE.exit.i.i.i.i.i" ], [ %i.fd, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h1809373d1cce2877E.exit274.i.i.i.i.i" ], [ %i.fa, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h1809373d1cce2877E.exit272.i.i.i.i.i" ], [ %i.ex, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h1809373d1cce2877E.exit270.i.i.i.i.i" ], [ %i.eu, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h1809373d1cce2877E.exit268.i.i.i.i.i" ], [ %i.er, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17he2f1304bd7368087E.exit.i.i.i.i.i" ], [ %i.eo, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h237d23e4a6d36e5eE.exit.i.i.i.i.i" ], [ %i.el, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h1809373d1cce2877E.exit.i.i.i.i.i" ], [ %i.ei, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h4ed2cf1d3190debcE.exit.i.i.i.i.i" ], [ %i.ef, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h34ae7d5735c1d508E.exit262.i.i.i.i.i" ], [ %i.ec, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h34ae7d5735c1d508E.exit.i.i.i.i.i" ], [ %i.fu, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h8eb2dd3ddb003249E.exit.i.i.i.i.i" ], [ %i.gk, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h721c838c99029008E.exit.i.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !252602
  ret ptr %.sroa.0.1.i.i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef align 8 ptr @"_ZN98_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStructVariant$GT$15serialize_field17h92f76380cb7e0ab6E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !74, !noundef !57
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !60

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @252, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6304) #80
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252788)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252789)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252790)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252791)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252792)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !252793, !noalias !252794, !nonnull !57, !align !61, !noundef !57 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !range !65, !alias.scope !252793, !noalias !252794, !noundef !57
  %i.g = icmp eq i8 %i.f, 1
  %.val.i.i.i = load ptr, ptr %i.d, align 8, !noalias !252795 ; 6 uses
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252796)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252797)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252798)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252799)
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !252800, !noalias !252801, !noundef !57 ; 3 uses
  %i.j = load i64, ptr %.val.i.i.i, align 8, !range !56, !alias.scope !252800, !noalias !252801, !noundef !57
  %i.k = icmp eq i64 %i.j, %i.i
  br i1 %i.k, label %bb.e, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i", !prof !60

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i, i64 noundef %i.i, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !252801
  %.pre.i.i.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !252802, !noalias !252801
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i": ; preds = %bb.e, %bb.d
  %i.l = phi i64 [ %i.i, %bb.d ], [ %.pre.i.i.i.i.i.i.i.i.i, %bb.e ] ; 3 uses
  %i.m = icmp sgt i64 %i.l, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !252802, !noalias !252801, !nonnull !57, !noundef !57
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l
  store i8 44, ptr %i.p, align 1, !noalias !252803
  %i.q = add nuw i64 %i.l, 1
  store i64 %i.q, ptr %i.h, align 8, !alias.scope !252802, !noalias !252801
  %.val9.pre.i.i.i = load ptr, ptr %i.d, align 8, !noalias !252795
  br label %bb.f

bb.f:                                             ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i", %bb.c
  %.val9.i.i.i = phi ptr [ %.val.i.i.i, %bb.c ], [ %.val9.pre.i.i.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i" ]
  store i8 2, ptr %i.e, align 1, !alias.scope !252793, !noalias !252794
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val9.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @690, i64 noundef 7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252804)
  %.val.i5.i.i = load ptr, ptr %i.d, align 8, !noalias !252805, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252806)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252807)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252808)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252809)
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i5.i.i, i64 16 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !252810, !noalias !252811, !noundef !57 ; 3 uses
  %i.t = load i64, ptr %.val.i5.i.i, align 8, !range !56, !alias.scope !252810, !noalias !252811, !noundef !57
  %i.u = icmp eq i64 %i.t, %i.s
  br i1 %i.u, label %bb.g, label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i, !prof !60

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i5.i.i, i64 noundef %i.s, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !252811
  %.pre.i.i.i.i.i.i.i6.i.i = load i64, ptr %i.r, align 8, !alias.scope !252812, !noalias !252811
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i

_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i: ; preds = %bb.g, %bb.f
  %i.v = phi i64 [ %i.s, %bb.f ], [ %.pre.i.i.i.i.i.i.i6.i.i, %bb.g ] ; 3 uses
  %i.w = icmp sgt i64 %i.v, -1
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i5.i.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !252812, !noalias !252811, !nonnull !57, !noundef !57
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v
  store i8 58, ptr %i.z, align 1, !noalias !252813
  %i.aa = add nuw i64 %i.v, 1
  store i64 %i.aa, ptr %i.r, align 8, !alias.scope !252812, !noalias !252811
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252814)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252815)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252816)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252817)
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !252818, !noalias !252819, !noundef !57 ; 4 uses
  %.not.i.not.i.i.i.i.i = icmp eq ptr %i.ab, null ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !252820, !noalias !252821 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !252820, !noalias !252821
  %.sink.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i, i64 0, i64 %i.af ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252822)
  %.val.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !252823, !noalias !252824, !nonnull !57, !align !61, !noundef !57 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252825)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252826)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252827)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252828)
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 16 ; 5 uses
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !252829, !noalias !252830, !noundef !57 ; 3 uses
  %i.ai = load i64, ptr %.val.i.i.i.i.i.i, align 8, !range !56, !alias.scope !252829, !noalias !252830, !noundef !57
  %i.aj = icmp eq i64 %i.ai, %i.ah
  br i1 %i.aj, label %bb.h, label %_ZN10serde_json3ser9Formatter12begin_object17h3f45ddf82171ae94E.exit.i.i.i.i.i.i, !prof !60

bb.h:                                             ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i, i64 noundef %i.ah, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !252830
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ag, align 8, !alias.scope !252831, !noalias !252830
  br label %_ZN10serde_json3ser9Formatter12begin_object17h3f45ddf82171ae94E.exit.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter12begin_object17h3f45ddf82171ae94E.exit.i.i.i.i.i.i: ; preds = %bb.h, %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i
  %i.ak = phi i64 [ %i.ah, %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i, %bb.h ] ; 3 uses
  %i.al = icmp sgt i64 %i.ak, -1
  tail call void @llvm.assume(i1 %i.al)
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !252831, !noalias !252830, !nonnull !57, !noundef !57
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ak
  store i8 123, ptr %i.ao, align 1, !noalias !252832
  %i.ap = add nuw i64 %i.ak, 1                    ; 4 uses
  store i64 %i.ap, ptr %i.ag, align 8, !alias.scope !252831, !noalias !252830
  %i.aq = icmp eq i64 %.sink.i.i.i.i.i.i, 0
  br i1 %i.aq, label %bb.i, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17hff98dc517a76c0ecE.exit.i.i.i.i.i"

bb.i:                                             ; preds = %_ZN10serde_json3ser9Formatter12begin_object17h3f45ddf82171ae94E.exit.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252833)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252834)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252835)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252836)
  %i.ar = load i64, ptr %.val.i.i.i.i.i.i, align 8, !range !56, !alias.scope !252837, !noalias !252838, !noundef !57
  %i.as = icmp eq i64 %i.ar, %i.ap
  br i1 %i.as, label %bb.j, label %.thread116.i.i.i.i.i, !prof !60

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i, i64 noundef %i.ap, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !252838
  %.pre.i.i.i.i.i.i17.i.i.i.i.i.i = load i64, ptr %i.ag, align 8, !alias.scope !252839, !noalias !252838
  br label %.thread116.i.i.i.i.i

.thread116.i.i.i.i.i:                             ; preds = %bb.j, %bb.i
  %i.at = phi i64 [ %i.ap, %bb.i ], [ %.pre.i.i.i.i.i.i17.i.i.i.i.i.i, %bb.j ] ; 3 uses
  %i.au = icmp sgt i64 %i.at, -1
  tail call void @llvm.assume(i1 %i.au)
  %i.av = load ptr, ptr %i.am, align 8, !alias.scope !252839, !noalias !252838, !nonnull !57, !noundef !57
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.at
  store i8 125, ptr %i.aw, align 1, !noalias !252840
  %i.ax = add nuw i64 %i.at, 1
  store i64 %i.ax, ptr %i.ag, align 8, !alias.scope !252839, !noalias !252838
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h7b4d63a2d28b0812E.exit"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17hff98dc517a76c0ecE.exit.i.i.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter12begin_object17h3f45ddf82171ae94E.exit.i.i.i.i.i.i
  br i1 %.not.i.not.i.i.i.i.i, label %.critedge.i15.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17hff98dc517a76c0ecE.exit.i.i.i.i.i"
  %i.ay = icmp eq i64 %i.ad, 0
  br i1 %i.ay, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1cd98a5ab37a3ccdE.exit.i21.i.i.i.i.i", label %.lr.ph.i.i46.i.i.i.i.i.preheader

.lr.ph.i.i46.i.i.i.i.i.preheader:                 ; preds = %bb.k
  %xtraiter = and i64 %i.ad, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i46.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i46.i.i.i.i.i.prol

.lr.ph.i.i46.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i46.i.i.i.i.i.preheader, %.lr.ph.i.i46.i.i.i.i.i.prol
  %.sroa.012.015.i.i47.i.i.i.i.i.prol = phi ptr [ %.sroa.012.0.i.i49.i.i.i.i.i.prol, %.lr.ph.i.i46.i.i.i.i.i.prol ], [ %i.ab, %.lr.ph.i.i46.i.i.i.i.i.preheader ]
  %.sroa.011.014.i.i48.i.i.i.i.i.prol = phi i64 [ %i.ba, %.lr.ph.i.i46.i.i.i.i.i.prol ], [ %i.ad, %.lr.ph.i.i46.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i46.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i46.i.i.i.i.i.preheader ]
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i47.i.i.i.i.i.prol, i64 1336
  %i.ba = add i64 %.sroa.011.014.i.i48.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.012.0.i.i49.i.i.i.i.i.prol = load ptr, ptr %i.az, align 8, !noalias !252841, !nonnull !57, !noundef !57 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i46.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i46.i.i.i.i.i.prol, !llvm.loop !252714

.lr.ph.i.i46.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i46.i.i.i.i.i.prol, %.lr.ph.i.i46.i.i.i.i.i.preheader
  %.sroa.012.0.i.i49.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i46.i.i.i.i.i.preheader ], [ %.sroa.012.0.i.i49.i.i.i.i.i.prol, %.lr.ph.i.i46.i.i.i.i.i.prol ]
  %.sroa.012.015.i.i47.i.i.i.i.i.unr = phi ptr [ %i.ab, %.lr.ph.i.i46.i.i.i.i.i.preheader ], [ %.sroa.012.0.i.i49.i.i.i.i.i.prol, %.lr.ph.i.i46.i.i.i.i.i.prol ]
  %.sroa.011.014.i.i48.i.i.i.i.i.unr = phi i64 [ %i.ad, %.lr.ph.i.i46.i.i.i.i.i.preheader ], [ %i.ba, %.lr.ph.i.i46.i.i.i.i.i.prol ]
  %i.bb = icmp ult i64 %i.ad, 8
  br i1 %i.bb, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1cd98a5ab37a3ccdE.exit.i21.i.i.i.i.i", label %.lr.ph.i.i46.i.i.i.i.i

.lr.ph.i.i46.i.i.i.i.i:                           ; preds = %.lr.ph.i.i46.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i46.i.i.i.i.i
  %.sroa.012.015.i.i47.i.i.i.i.i = phi ptr [ %.sroa.012.0.i.i49.i.i.i.i.i.7, %.lr.ph.i.i46.i.i.i.i.i ], [ %.sroa.012.015.i.i47.i.i.i.i.i.unr, %.lr.ph.i.i46.i.i.i.i.i.prol.loopexit ]
  %.sroa.011.014.i.i48.i.i.i.i.i = phi i64 [ %i.bk, %.lr.ph.i.i46.i.i.i.i.i ], [ %.sroa.011.014.i.i48.i.i.i.i.i.unr, %.lr.ph.i.i46.i.i.i.i.i.prol.loopexit ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i47.i.i.i.i.i, i64 1336
  %.sroa.012.0.i.i49.i.i.i.i.i = load ptr, ptr %i.bc, align 8, !noalias !252841, !nonnull !57, !noundef !57
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i49.i.i.i.i.i, i64 1336
  %.sroa.012.0.i.i49.i.i.i.i.i.1 = load ptr, ptr %i.bd, align 8, !noalias !252841, !nonnull !57, !noundef !57
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i49.i.i.i.i.i.1, i64 1336
  %.sroa.012.0.i.i49.i.i.i.i.i.2 = load ptr, ptr %i.be, align 8, !noalias !252841, !nonnull !57, !noundef !57
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i49.i.i.i.i.i.2, i64 1336
  %.sroa.012.0.i.i49.i.i.i.i.i.3 = load ptr, ptr %i.bf, align 8, !noalias !252841, !nonnull !57, !noundef !57
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i49.i.i.i.i.i.3, i64 1336
  %.sroa.012.0.i.i49.i.i.i.i.i.4 = load ptr, ptr %i.bg, align 8, !noalias !252841, !nonnull !57, !noundef !57
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i49.i.i.i.i.i.4, i64 1336
  %.sroa.012.0.i.i49.i.i.i.i.i.5 = load ptr, ptr %i.bh, align 8, !noalias !252841, !nonnull !57, !noundef !57
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i49.i.i.i.i.i.5, i64 1336
  %.sroa.012.0.i.i49.i.i.i.i.i.6 = load ptr, ptr %i.bi, align 8, !noalias !252841, !nonnull !57, !noundef !57
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i49.i.i.i.i.i.6, i64 1336
  %i.bk = add i64 %.sroa.011.014.i.i48.i.i.i.i.i, -8 ; 2 uses
  %.sroa.012.0.i.i49.i.i.i.i.i.7 = load ptr, ptr %i.bj, align 8, !noalias !252841, !nonnull !57, !noundef !57 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1cd98a5ab37a3ccdE.exit.i21.i.i.i.i.i", label %.lr.ph.i.i46.i.i.i.i.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1cd98a5ab37a3ccdE.exit.i21.i.i.i.i.i": ; preds = %.lr.ph.i.i46.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i46.i.i.i.i.i, %bb.k
  %.sroa.012.0.lcssa.i.i51.i.i.i.i.i = phi ptr [ %i.ab, %bb.k ], [ %.sroa.012.0.i.i49.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i46.i.i.i.i.i.prol.loopexit ], [ %.sroa.012.0.i.i49.i.i.i.i.i.7, %.lr.ph.i.i46.i.i.i.i.i ] ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i51.i.i.i.i.i, i64 1330
  %i.bn = load i16, ptr %i.bm, align 2, !noalias !252842, !noundef !57
  %.not.i.i.i.i.i = icmp eq i16 %i.bn, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.i27.i.i.i.i.i, label %.thread.i.i.i.i.i

.lr.ph.i.i.i.i27.i.i.i.i.i:                       ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1cd98a5ab37a3ccdE.exit.i21.i.i.i.i.i", %bb.l
  %.sroa.0.038.i.i.i.i28.i.i.i.i.i = phi ptr [ %i.bp, %bb.l ], [ %.sroa.012.0.lcssa.i.i51.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1cd98a5ab37a3ccdE.exit.i21.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i29.i.i.i.i.i = phi i64 [ %i.bq, %bb.l ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1cd98a5ab37a3ccdE.exit.i21.i.i.i.i.i" ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i28.i.i.i.i.i, i64 1056
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !252843, !noundef !57 ; 8 uses
  %.not.i.i.i.i.i30.i.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i30.i.i.i.i.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i27.i.i.i.i.i
  %i.bq = add i64 %.sroa.5.037.i.i.i.i29.i.i.i.i.i, 1 ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i28.i.i.i.i.i, i64 1328
  %i.bs = load i16, ptr %i.br, align 8, !noalias !252843 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 1330
  %i.bu = load i16, ptr %i.bt, align 2, !noalias !252842, !noundef !57
  %i.bv = icmp ult i16 %i.bs, %i.bu
  br i1 %i.bv, label %bb.m, label %.lr.ph.i.i.i.i27.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.bw = zext i16 %i.bs to i64                   ; 4 uses
  %i.bx = icmp eq i64 %i.bq, 0
  %i.by = add nuw nsw i64 %i.bw, 1                ; 2 uses
  br i1 %i.bx, label %.thread.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 1336
  %i.ca = icmp ult i16 %i.bs, 11
  tail call void @llvm.assume(i1 %i.ca), !noalias !252844
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.by ; 2 uses
  %xtraiter21 = and i64 %i.bq, 7                  ; 2 uses
  %lcmp.mod22.not = icmp eq i64 %xtraiter21, 0
  br i1 %lcmp.mod22.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.n, %.prol.preheader
  %.pn30.in.i.i.i.i35.i.i.i.i.i.prol = phi ptr [ %i.cc, %.prol.preheader ], [ %i.cb, %bb.n ]
  %.pn28.in.i.i.i.i36.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i37.i.i.i.i.i.prol, %.prol.preheader ], [ %i.bq, %bb.n ]
  %prol.iter23 = phi i64 [ %prol.iter23.next, %.prol.preheader ], [ 0, %bb.n ]
  %.pn28.i.i.i.i37.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i36.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i38.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i35.i.i.i.i.i.prol, align 8, !noalias !252845, !nonnull !57, !noundef !57 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i38.i.i.i.i.i.prol, i64 1336 ; 2 uses
  %prol.iter23.next = add i64 %prol.iter23, 1     ; 2 uses
  %prol.iter23.cmp.not = icmp eq i64 %prol.iter23.next, %xtraiter21
  br i1 %prol.iter23.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !252728

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.n
  %.pn30.i.i.i.i38.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.n ], [ %.pn30.i.i.i.i38.i.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i35.i.i.i.i.i.unr = phi ptr [ %i.cb, %bb.n ], [ %i.cc, %.prol.preheader ]
  %.pn28.in.i.i.i.i36.i.i.i.i.i.unr = phi i64 [ %i.bq, %bb.n ], [ %.pn28.i.i.i.i37.i.i.i.i.i.prol, %.prol.preheader ]
  %i.cd = icmp ult i64 %.sroa.5.037.i.i.i.i29.i.i.i.i.i, 7
  br i1 %i.cd, label %.thread.i.i.i.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i35.i.i.i.i.i = phi ptr [ %i.cm, %.new ], [ %.pn30.in.i.i.i.i35.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i36.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i37.i.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i36.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i38.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i35.i.i.i.i.i, align 8, !noalias !252845, !nonnull !57, !noundef !57
  %i.ce = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i38.i.i.i.i.i, i64 1336
  %.pn30.i.i.i.i38.i.i.i.i.i.1 = load ptr, ptr %i.ce, align 8, !noalias !252845, !nonnull !57, !noundef !57
  %i.cf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i38.i.i.i.i.i.1, i64 1336
  %.pn30.i.i.i.i38.i.i.i.i.i.2 = load ptr, ptr %i.cf, align 8, !noalias !252845, !nonnull !57, !noundef !57
  %i.cg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i38.i.i.i.i.i.2, i64 1336
  %.pn30.i.i.i.i38.i.i.i.i.i.3 = load ptr, ptr %i.cg, align 8, !noalias !252845, !nonnull !57, !noundef !57
  %i.ch = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i38.i.i.i.i.i.3, i64 1336
  %.pn30.i.i.i.i38.i.i.i.i.i.4 = load ptr, ptr %i.ch, align 8, !noalias !252845, !nonnull !57, !noundef !57
  %i.ci = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i38.i.i.i.i.i.4, i64 1336
  %.pn30.i.i.i.i38.i.i.i.i.i.5 = load ptr, ptr %i.ci, align 8, !noalias !252845, !nonnull !57, !noundef !57
  %i.cj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i38.i.i.i.i.i.5, i64 1336
  %.pn30.i.i.i.i38.i.i.i.i.i.6 = load ptr, ptr %i.cj, align 8, !noalias !252845, !nonnull !57, !noundef !57
  %i.ck = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i38.i.i.i.i.i.6, i64 1336
  %.pn28.i.i.i.i37.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i36.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i38.i.i.i.i.i.7 = load ptr, ptr %i.ck, align 8, !noalias !252845, !nonnull !57, !noundef !57 ; 2 uses
  %i.cl = icmp eq i64 %.pn28.i.i.i.i37.i.i.i.i.i.7, 0
  %i.cm = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i38.i.i.i.i.i.7, i64 1336
  br i1 %i.cl, label %.thread.i.i.i.i.i, label %.new

bb.o:                                             ; preds = %.lr.ph.i.i.i.i27.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2537) #80
          to label %.noexc.i.i44.i.i.i.i.i unwind label %bb.p, !noalias !252846

.noexc.i.i44.i.i.i.i.i:                           ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !252844
  unreachable

.critedge.i15.i.i.i.i.i:                          ; preds = %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17hff98dc517a76c0ecE.exit.i.i.i.i.i"
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @204) #80, !noalias !252847
  unreachable

.thread.i.i.i.i.i:                                ; preds = %.prol.loopexit, %.new, %bb.m, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1cd98a5ab37a3ccdE.exit.i21.i.i.i.i.i"
  %.sroa.0.0.ph.i.i.i3492.i.i.i.i.i = phi ptr [ %i.bp, %bb.m ], [ %.sroa.012.0.lcssa.i.i51.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1cd98a5ab37a3ccdE.exit.i21.i.i.i.i.i" ], [ %i.bp, %.new ], [ %i.bp, %.prol.loopexit ] ; 3 uses
  %.sroa.6.sroa.4.0.ph.i.i.i3291.i.i.i.i.i = phi i64 [ %i.bw, %bb.m ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1cd98a5ab37a3ccdE.exit.i21.i.i.i.i.i" ], [ %i.bw, %.new ], [ %i.bw, %.prol.loopexit ] ; 3 uses
  %.sroa.7.0.i.i.i40.i.i.i.i.i = phi i64 [ %i.by, %bb.m ], [ 1, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1cd98a5ab37a3ccdE.exit.i21.i.i.i.i.i" ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i41.i.i.i.i.i = phi ptr [ %i.bp, %bb.m ], [ %.sroa.012.0.lcssa.i.i51.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1cd98a5ab37a3ccdE.exit.i21.i.i.i.i.i" ], [ %.pn30.i.i.i.i38.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i38.i.i.i.i.i.7, %.new ]
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i3492.i.i.i.i.i, i64 1064
  %i.cp = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i3291.i.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.cp), !noalias !252844
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %i.co, i64 %.sroa.6.sroa.4.0.ph.i.i.i3291.i.i.i.i.i ; 2 uses
  %i.cr = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.0.ph.i.i.i3492.i.i.i.i.i, i64 %.sroa.6.sroa.4.0.ph.i.i.i3291.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph.i.i.i3492.i.i.i.i.i) ]
  %i.cs = getelementptr i8, ptr %i.cq, i64 8
  %.val9.peel.i.i.i.i.i.i.i = load ptr, ptr %i.cs, align 8, !noalias !252848, !nonnull !57, !noundef !57
  %i.ct = getelementptr i8, ptr %i.cq, i64 16
  %.val10.peel.i.i.i.i.i.i.i = load i64, ptr %i.ct, align 8, !noalias !252848
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.peel.i.i.i.i.i.i.i, i64 noundef %.val10.peel.i.i.i.i.i.i.i)
  %i.cu = tail call fastcc noalias noundef align 8 ptr @"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h6b3d5e5c74f961e9E"(i8 0, ptr nonnull align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %i.cr), !noalias !252849 ; 2 uses
  %.not8.peel.i.i.i.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not8.peel.i.i.i.i.i.i.i, label %.split.i.i.i.i.i.i.i.preheader, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h7b4d63a2d28b0812E.exit"

.split.i.i.i.i.i.i.i.preheader:                   ; preds = %.thread.i.i.i.i.i
  %.sroa.35.0.i.i.i.i.i8 = add i64 %.sink.i.i.i.i.i.i, -1 ; 2 uses
  %i.cv = icmp eq i64 %.sroa.35.0.i.i.i.i.i8, 0
  br i1 %i.cv, label %.thread114.i.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1cd98a5ab37a3ccdE.exit.i.i.i.i.i.i"

.split.i.i.i.i.i.i.i:                             ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h46b8059ba8d6d6dcE.exit.i.i.i.i.i.i.i"
  %.sroa.35.0.i.i.i.i.i = add i64 %.sroa.35.0.i.i.i.i.i11, -1 ; 2 uses
  %i.cw = icmp eq i64 %.sroa.35.0.i.i.i.i.i, 0
  br i1 %i.cw, label %.thread114.i.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1cd98a5ab37a3ccdE.exit.i.i.i.i.i.i", !llvm.loop !252735

.thread114.i.i.i.i.i:                             ; preds = %.split.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.preheader
  %.val.i11.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !252850, !noalias !252851, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252853)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252854)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252855)
  %i.cx = getelementptr inbounds nuw i8, ptr %.val.i11.i.i.i.i.i, i64 16 ; 3 uses
  %i.cy = load i64, ptr %i.cx, align 8, !alias.scope !252856, !noalias !252857, !noundef !57 ; 3 uses
  %i.cz = load i64, ptr %.val.i11.i.i.i.i.i, align 8, !range !56, !alias.scope !252856, !noalias !252857, !noundef !57
  %i.da = icmp eq i64 %i.cz, %i.cy
  br i1 %i.da, label %bb.w, label %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i12.i.i.i.i.i, !prof !60

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1cd98a5ab37a3ccdE.exit.i.i.i.i.i.i": ; preds = %.split.i.i.i.i.i.i.i.preheader, %.split.i.i.i.i.i.i.i
  %.sroa.35.0.i.i.i.i.i11 = phi i64 [ %.sroa.35.0.i.i.i.i.i, %.split.i.i.i.i.i.i.i ], [ %.sroa.35.0.i.i.i.i.i8, %.split.i.i.i.i.i.i.i.preheader ]
  %.sroa.8.1.i.i.i.i.i10 = phi ptr [ %.sroa.07.0.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i ], [ %.sroa.07.0.i.i.i41.i.i.i.i.i, %.split.i.i.i.i.i.i.i.preheader ] ; 5 uses
  %.sroa.24.1.i.i.i.i.i9 = phi i64 [ %.sroa.7.0.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i ], [ %.sroa.7.0.i.i.i40.i.i.i.i.i, %.split.i.i.i.i.i.i.i.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.1.i.i.i.i.i10) ]
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.8.1.i.i.i.i.i10, i64 1330
  %i.dc = load i16, ptr %i.db, align 2, !noalias !252858, !noundef !57
  %i.dd = zext i16 %i.dc to i64
  %i.de = icmp ult i64 %.sroa.24.1.i.i.i.i.i9, %i.dd
  br i1 %i.de, label %.thread118.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.thread118.i.i.i.i.i:                             ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1cd98a5ab37a3ccdE.exit.i.i.i.i.i.i"
  %i.df = add nuw nsw i64 %.sroa.24.1.i.i.i.i.i9, 1
  br label %.loopexit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1cd98a5ab37a3ccdE.exit.i.i.i.i.i.i", %bb.q
  %.sroa.0.038.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dh, %bb.q ], [ %.sroa.8.1.i.i.i.i.i10, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1cd98a5ab37a3ccdE.exit.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i.i = phi i64 [ %i.di, %bb.q ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1cd98a5ab37a3ccdE.exit.i.i.i.i.i.i" ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i, i64 1056
  %i.dh = load ptr, ptr %i.dg, align 8, !noalias !252859, !noundef !57 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.di = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i, i64 1328
  %i.dk = load i16, ptr %i.dj, align 8, !noalias !252859 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 1330
  %i.dm = load i16, ptr %i.dl, align 2, !noalias !252858, !noundef !57
  %i.dn = icmp ult i16 %i.dk, %i.dm
  br i1 %i.dn, label %bb.r, label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.do = zext i16 %i.dk to i64                   ; 4 uses
  %i.dp = icmp eq i64 %i.di, 0
  %i.dq = add nuw nsw i64 %i.do, 1                ; 2 uses
  br i1 %i.dp, label %.loopexit.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dh, i64 1336
  %i.ds = icmp ult i16 %i.dk, 11
  tail call void @llvm.assume(i1 %i.ds), !noalias !252844
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.dq ; 2 uses
  %xtraiter28 = and i64 %i.di, 7                  ; 2 uses
  %lcmp.mod29.not = icmp eq i64 %xtraiter28, 0
  br i1 %lcmp.mod29.not, label %.prol.loopexit25, label %.prol.preheader24

.prol.preheader24:                                ; preds = %bb.s, %.prol.preheader24
  %.pn30.in.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.du, %.prol.preheader24 ], [ %i.dt, %bb.s ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader24 ], [ %i.di, %bb.s ]
  %prol.iter30 = phi i64 [ %prol.iter30.next, %.prol.preheader24 ], [ 0, %bb.s ]
  %.pn28.i.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !252860, !nonnull !57, !noundef !57 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.prol, i64 1336 ; 2 uses
  %prol.iter30.next = add i64 %prol.iter30, 1     ; 2 uses
  %prol.iter30.cmp.not = icmp eq i64 %prol.iter30.next, %xtraiter28
  br i1 %prol.iter30.cmp.not, label %.prol.loopexit25, label %.prol.preheader24, !llvm.loop !252767

.prol.loopexit25:                                 ; preds = %.prol.preheader24, %bb.s
  %.pn30.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.s ], [ %.pn30.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader24 ]
  %.pn30.in.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.dt, %bb.s ], [ %i.du, %.prol.preheader24 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.di, %bb.s ], [ %.pn28.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader24 ]
  %i.dv = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i, 7
  br i1 %i.dv, label %.loopexit.i.i.i.i.i, label %.new26

.new26:                                           ; preds = %.prol.loopexit25, %.new26
  %.pn30.in.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ee, %.new26 ], [ %.pn30.in.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit25 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.7, %.new26 ], [ %.pn28.in.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit25 ]
  %.pn30.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i, align 8, !noalias !252860, !nonnull !57, !noundef !57
  %i.dw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i, i64 1336
  %.pn30.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.dw, align 8, !noalias !252860, !nonnull !57, !noundef !57
  %i.dx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.1, i64 1336
  %.pn30.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.dx, align 8, !noalias !252860, !nonnull !57, !noundef !57
  %i.dy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.2, i64 1336
  %.pn30.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.dy, align 8, !noalias !252860, !nonnull !57, !noundef !57
  %i.dz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.3, i64 1336
  %.pn30.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.dz, align 8, !noalias !252860, !nonnull !57, !noundef !57
  %i.ea = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.4, i64 1336
  %.pn30.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.ea, align 8, !noalias !252860, !nonnull !57, !noundef !57
  %i.eb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.5, i64 1336
  %.pn30.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.eb, align 8, !noalias !252860, !nonnull !57, !noundef !57
  %i.ec = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.6, i64 1336
  %.pn28.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.ec, align 8, !noalias !252860, !nonnull !57, !noundef !57 ; 2 uses
  %i.ed = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i.7, 0
  %i.ee = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.7, i64 1336
  br i1 %i.ed, label %.loopexit.i.i.i.i.i, label %.new26

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2537) #80
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.u, !noalias !252861

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.ef = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !252844
  unreachable

.loopexit.i.i.i.i.i:                              ; preds = %.prol.loopexit25, %.new26, %bb.r, %.thread118.i.i.i.i.i
  %.sroa.0.0.ph.i.i.i123.i.i.i.i.i = phi ptr [ %i.dh, %bb.r ], [ %.sroa.8.1.i.i.i.i.i10, %.thread118.i.i.i.i.i ], [ %i.dh, %.new26 ], [ %i.dh, %.prol.loopexit25 ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i122.i.i.i.i.i = phi i64 [ %i.do, %bb.r ], [ %.sroa.24.1.i.i.i.i.i9, %.thread118.i.i.i.i.i ], [ %i.do, %.new26 ], [ %i.do, %.prol.loopexit25 ] ; 3 uses
  %.sroa.7.0.i.i.i.i.i.i.i.i = phi i64 [ %i.dq, %bb.r ], [ %i.df, %.thread118.i.i.i.i.i ], [ 0, %.new26 ], [ 0, %.prol.loopexit25 ]
  %.sroa.07.0.i.i.i.i.i.i.i.i = phi ptr [ %i.dh, %bb.r ], [ %.sroa.8.1.i.i.i.i.i10, %.thread118.i.i.i.i.i ], [ %.pn30.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit25 ], [ %.pn30.i.i.i.i.i.i.i.i.i.7, %.new26 ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i123.i.i.i.i.i, i64 1064
  %i.eh = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i122.i.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.eh), !noalias !252844
  %i.ei = getelementptr inbounds nuw [24 x i8], ptr %i.eg, i64 %.sroa.6.sroa.4.0.ph.i.i.i122.i.i.i.i.i ; 2 uses
  %i.ej = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.0.ph.i.i.i123.i.i.i.i.i, i64 %.sroa.6.sroa.4.0.ph.i.i.i122.i.i.i.i.i
  %i.ek = getelementptr i8, ptr %i.ei, i64 8
  %.val9.i.i.i.i.i.i.i = load ptr, ptr %i.ek, align 8, !noalias !252862 ; 2 uses
  %i.el = getelementptr i8, ptr %i.ei, i64 16
  %.val10.i.i.i.i.i.i.i = load i64, ptr %i.el, align 8, !noalias !252862
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !252850, !noalias !252863, !nonnull !57, !noundef !57 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252864)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252866)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252867)
  %i.em = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.en = load i64, ptr %i.em, align 8, !alias.scope !252868, !noalias !252869, !noundef !57 ; 3 uses
  %i.eo = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !56, !alias.scope !252868, !noalias !252869, !noundef !57
  %i.ep = icmp eq i64 %i.eo, %i.en
  br i1 %i.ep, label %bb.v, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h46b8059ba8d6d6dcE.exit.i.i.i.i.i.i.i", !prof !60

bb.v:                                             ; preds = %.loopexit.i.i.i.i.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.en, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !252869
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.em, align 8, !alias.scope !252870, !noalias !252869
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h46b8059ba8d6d6dcE.exit.i.i.i.i.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h46b8059ba8d6d6dcE.exit.i.i.i.i.i.i.i": ; preds = %bb.v, %.loopexit.i.i.i.i.i
  %i.eq = phi i64 [ %i.en, %.loopexit.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.v ] ; 3 uses
  %i.er = icmp sgt i64 %i.eq, -1
  tail call void @llvm.assume(i1 %i.er)
  %i.es = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !alias.scope !252870, !noalias !252869, !nonnull !57, !noundef !57
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.eq
  store i8 44, ptr %i.eu, align 1, !noalias !252871
  %i.ev = add nuw i64 %i.eq, 1
  store i64 %i.ev, ptr %i.em, align 8, !alias.scope !252870, !noalias !252869
  %.val10.pre.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !252850, !noalias !252863
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i.i) ]
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val10.pre.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.i.i.i.i.i.i.i, i64 noundef %.val10.i.i.i.i.i.i.i)
  %i.ew = tail call fastcc noalias noundef align 8 ptr @"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h6b3d5e5c74f961e9E"(i8 0, ptr nonnull align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %i.ej), !noalias !252872 ; 2 uses
  %.not8.i.i.i.i.i.i.i = icmp eq ptr %i.ew, null
  br i1 %.not8.i.i.i.i.i.i.i, label %.split.i.i.i.i.i.i.i, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h7b4d63a2d28b0812E.exit", !llvm.loop !252735

bb.w:                                             ; preds = %.thread114.i.i.i.i.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i11.i.i.i.i.i, i64 noundef %i.cy, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !252857
  %.pre.i.i.i.i.i.i.i13.i.i.i.i.i = load i64, ptr %i.cx, align 8, !alias.scope !252873, !noalias !252857
  br label %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i12.i.i.i.i.i

_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i12.i.i.i.i.i: ; preds = %bb.w, %.thread114.i.i.i.i.i
  %i.ex = phi i64 [ %i.cy, %.thread114.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i13.i.i.i.i.i, %bb.w ] ; 3 uses
  %i.ey = icmp sgt i64 %i.ex, -1
  tail call void @llvm.assume(i1 %i.ey)
  %i.ez = getelementptr inbounds nuw i8, ptr %.val.i11.i.i.i.i.i, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !alias.scope !252873, !noalias !252857, !nonnull !57, !noundef !57
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.ex
  store i8 125, ptr %i.fb, align 1, !noalias !252874
  %i.fc = add nuw i64 %i.ex, 1
  store i64 %i.fc, ptr %i.cx, align 8, !alias.scope !252873, !noalias !252857
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h7b4d63a2d28b0812E.exit"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h7b4d63a2d28b0812E.exit": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h46b8059ba8d6d6dcE.exit.i.i.i.i.i.i.i", %.thread116.i.i.i.i.i, %.thread.i.i.i.i.i, %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i12.i.i.i.i.i
  %.sroa.0.0.i = phi ptr [ null, %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit.i12.i.i.i.i.i ], [ null, %.thread116.i.i.i.i.i ], [ %i.cu, %.thread.i.i.i.i.i ], [ %i.ew, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h46b8059ba8d6d6dcE.exit.i.i.i.i.i.i.i" ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef align 8 ptr @"_ZN98_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStructVariant$GT$15serialize_field17h99e43c297f923839E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree readonly captures(address) %.8.val, i64 %.16.val) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !74, !noundef !57
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !60

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @252, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6304) #80
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252911)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252912)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !252913, !noalias !252914, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !range !65, !alias.scope !252913, !noalias !252914, !noundef !57
  %i.g = icmp eq i8 %i.f, 1
  %.val.i.i.i = load ptr, ptr %i.d, align 8, !noalias !252915 ; 6 uses
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252916)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252917)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252918)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252919)
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !252920, !noalias !252921, !noundef !57 ; 3 uses
  %i.j = load i64, ptr %.val.i.i.i, align 8, !range !56, !alias.scope !252920, !noalias !252921, !noundef !57
  %i.k = icmp eq i64 %i.j, %i.i
  br i1 %i.k, label %bb.e, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i", !prof !60

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i, i64 noundef %i.i, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !252921
  %.pre.i.i.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !252922, !noalias !252921
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i": ; preds = %bb.e, %bb.d
  %i.l = phi i64 [ %i.i, %bb.d ], [ %.pre.i.i.i.i.i.i.i.i.i, %bb.e ] ; 3 uses
  %i.m = icmp sgt i64 %i.l, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !252922, !noalias !252921, !nonnull !57, !noundef !57
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l
  store i8 44, ptr %i.p, align 1, !noalias !252923
  %i.q = add nuw i64 %i.l, 1
  store i64 %i.q, ptr %i.h, align 8, !alias.scope !252922, !noalias !252921
  %.val9.pre.i.i.i = load ptr, ptr %i.d, align 8, !noalias !252915
  br label %bb.f

bb.f:                                             ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i", %bb.c
  %.val9.i.i.i = phi ptr [ %.val.i.i.i, %bb.c ], [ %.val9.pre.i.i.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i" ]
  store i8 2, ptr %i.e, align 1, !alias.scope !252913, !noalias !252914
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val9.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1393, i64 noundef 13)
  %.val.i7.i.i = load ptr, ptr %i.d, align 8, !noalias !252924, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252925)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252926)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252927)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252928)
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i7.i.i, i64 16 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !252929, !noalias !252930, !noundef !57 ; 3 uses
  %i.t = load i64, ptr %.val.i7.i.i, align 8, !range !56, !alias.scope !252929, !noalias !252930, !noundef !57
  %i.u = icmp eq i64 %i.t, %i.s
  br i1 %i.u, label %bb.g, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hdfd3122447d3ef00E.exit", !prof !60

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i7.i.i, i64 noundef %i.s, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !252930
  %.pre.i.i.i.i.i.i.i8.i.i = load i64, ptr %i.r, align 8, !alias.scope !252931, !noalias !252930
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hdfd3122447d3ef00E.exit"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hdfd3122447d3ef00E.exit": ; preds = %bb.f, %bb.g
  %i.v = phi i64 [ %i.s, %bb.f ], [ %.pre.i.i.i.i.i.i.i8.i.i, %bb.g ] ; 3 uses
  %i.w = icmp sgt i64 %i.v, -1
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i7.i.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !252931, !noalias !252930, !nonnull !57, !noundef !57
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v
  store i8 58, ptr %i.z, align 1, !noalias !252932
  %i.aa = add nuw i64 %i.v, 1
  store i64 %i.aa, ptr %i.r, align 8, !alias.scope !252931, !noalias !252930
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.ab = tail call fastcc noalias noundef align 8 ptr @_ZN10serde_core3ser10Serializer11collect_seq17h03fdc03ba20bbcb2E(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly %.8.val, i64 %.16.val), !noalias !252924
  ret ptr %i.ab
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef align 8 ptr @"_ZN98_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStructVariant$GT$15serialize_field17h9e12c8e445675ff2E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef range(i64 7, 16) %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !74, !noundef !57
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h2507e2bbc44f4333E.exit", !prof !60

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @252, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6304) #80
  unreachable

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h2507e2bbc44f4333E.exit": ; preds = %bb.a
  tail call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h8216b47b447f3dadE(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef range(i64 4, 16) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3)
  ret ptr null
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef align 8 ptr @"_ZN98_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStructVariant$GT$15serialize_field17hbb64be2762569a30E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef range(i64 2, 5) %2, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  %i.b = alloca [40 x i8], align 1                ; 4 uses
  %i.c = alloca [40 x i8], align 1                ; 4 uses
  %i.d = load i8, ptr %0, align 8, !range !74, !noundef !57
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c, !prof !60

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @252, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6304) #80
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253097)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253098)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253099)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253101)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !253102, !noalias !253103, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !range !65, !alias.scope !253102, !noalias !253103, !noundef !57
  %i.j = icmp eq i8 %i.i, 1
  %.val.i.i.i = load ptr, ptr %i.g, align 8, !noalias !253104 ; 6 uses
  br i1 %i.j, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253108)
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !253109, !noalias !253110, !noundef !57 ; 3 uses
  %i.m = load i64, ptr %.val.i.i.i, align 8, !range !56, !alias.scope !253109, !noalias !253110, !noundef !57
  %i.n = icmp eq i64 %i.m, %i.l
  br i1 %i.n, label %bb.e, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i", !prof !60

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i, i64 noundef %i.l, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !253110
  %.pre.i.i.i.i.i.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !253111, !noalias !253110
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i": ; preds = %bb.e, %bb.d
  %i.o = phi i64 [ %i.l, %bb.d ], [ %.pre.i.i.i.i.i.i.i.i.i, %bb.e ] ; 3 uses
  %i.p = icmp sgt i64 %i.o, -1
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !253111, !noalias !253110, !nonnull !57, !noundef !57
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o
  store i8 44, ptr %i.s, align 1, !noalias !253112
  %i.t = add nuw i64 %i.o, 1
  store i64 %i.t, ptr %i.k, align 8, !alias.scope !253111, !noalias !253110
  %.val9.pre.i.i.i = load ptr, ptr %i.g, align 8, !noalias !253104
  br label %bb.f

bb.f:                                             ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i", %bb.c
  %.val9.i.i.i = phi ptr [ %.val.i.i.i, %bb.c ], [ %.val9.pre.i.i.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i" ]
  store i8 2, ptr %i.h, align 1, !alias.scope !253102, !noalias !253103
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val9.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef range(i64 2, 5) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253113)
  %.val.i5.i.i = load ptr, ptr %i.g, align 8, !noalias !253114, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253118)
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i5.i.i, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !253119, !noalias !253120, !noundef !57 ; 3 uses
  %i.w = load i64, ptr %.val.i5.i.i, align 8, !range !56, !alias.scope !253119, !noalias !253120, !noundef !57
end_hunk_20
begin_hunk_21_@"_ZN98_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStructVariant$GT$15serialize_field17hbb64be2762569a30E":bb.a
  %i.bk = load i64, ptr %i.ae, align 8, !alias.scope !253161, !noalias !253162, !noundef !57 ; 3 uses
  %i.bl = load i64, ptr %.val.i.i.i.i.i.i, align 8, !range !56, !alias.scope !253161, !noalias !253162, !noundef !57
  %i.bm = sub i64 %i.bl, %i.bk
  %i.bn = icmp ugt i64 %i.bj, %i.bm
  br i1 %i.bn, label %bb.l, label %bb.m, !prof !60

bb.l:                                             ; preds = %_ZN10serde_json3ser9Formatter17begin_array_value17he9a3bb811dad8781E.exit.i.i16.i.i.i.i
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i, i64 noundef %i.bk, i64 noundef %i.bj, i64 noundef 1, i64 noundef 1), !noalias !253162
  %.pre.i.i.i.i.i.i.i.i.i.i18.i.i.i.i = load i64, ptr %i.ae, align 8, !alias.scope !253163, !noalias !253162
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN10serde_json3ser9Formatter17begin_array_value17he9a3bb811dad8781E.exit.i.i16.i.i.i.i
  %i.bo = phi i64 [ %i.bk, %_ZN10serde_json3ser9Formatter17begin_array_value17he9a3bb811dad8781E.exit.i.i16.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i18.i.i.i.i, %bb.l ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bi
  %i.bq = icmp sgt i64 %i.bo, -1
  call void @llvm.assume(i1 %i.bq)
  %i.br = load ptr, ptr %i.ak, align 8, !alias.scope !253163, !noalias !253162, !nonnull !57, !noundef !57
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bo
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bs, ptr nonnull readonly align 1 %i.bp, i64 %i.bj, i1 false), !noalias !253164
  %i.bt = add nuw i64 %i.bo, %i.bj                ; 4 uses
  store i64 %i.bt, ptr %i.ae, align 8, !alias.scope !253163, !noalias !253162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !253156
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val10.i.i.i.i = load i32, ptr %i.bu, align 4, !alias.scope !253137, !noalias !253138
  call void @llvm.experimental.noalias.scope.decl(metadata !253165)
  call void @llvm.experimental.noalias.scope.decl(metadata !253166)
  call void @llvm.experimental.noalias.scope.decl(metadata !253167)
  call void @llvm.experimental.noalias.scope.decl(metadata !253168)
  %i.bv = load i64, ptr %.val.i.i.i.i.i.i, align 8, !range !56, !alias.scope !253169, !noalias !253170, !noundef !57
  %i.bw = icmp eq i64 %i.bv, %i.bt
  br i1 %i.bw, label %bb.n, label %_ZN10serde_json3ser9Formatter17begin_array_value17he9a3bb811dad8781E.exit.i.i24.i.i.i.i, !prof !60

bb.n:                                             ; preds = %bb.m
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i, i64 noundef %i.bt, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !253170
  %.pre.i.i.i.i.i.i.i.i27.i.i.i.i = load i64, ptr %i.ae, align 8, !alias.scope !253171, !noalias !253170
  br label %_ZN10serde_json3ser9Formatter17begin_array_value17he9a3bb811dad8781E.exit.i.i24.i.i.i.i

_ZN10serde_json3ser9Formatter17begin_array_value17he9a3bb811dad8781E.exit.i.i24.i.i.i.i: ; preds = %bb.n, %bb.m
  %i.bx = phi i64 [ %i.bt, %bb.m ], [ %.pre.i.i.i.i.i.i.i.i27.i.i.i.i, %bb.n ] ; 3 uses
  %i.by = icmp sgt i64 %i.bx, -1
  call void @llvm.assume(i1 %i.by)
  %i.bz = load ptr, ptr %i.ak, align 8, !alias.scope !253171, !noalias !253170, !nonnull !57, !noundef !57
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bx
  store i8 44, ptr %i.ca, align 1, !noalias !253172
  %i.cb = add nuw i64 %i.bx, 1
  store i64 %i.cb, ptr %i.ae, align 8, !alias.scope !253171, !noalias !253170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !253173
  %i.cc = call noundef i64 @"_ZN38_$LT$u32$u20$as$u20$itoa..Unsigned$GT$3fmt17h0b36a92c699d3c58E"(i32 noundef %.val10.i.i.i.i, ptr noalias noundef nonnull align 1 dereferenceable(10) %i.a), !noalias !253173 ; 2 uses
  %i.cd = sub nuw i64 10, %i.cc                   ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !253174)
  call void @llvm.experimental.noalias.scope.decl(metadata !253175)
  call void @llvm.experimental.noalias.scope.decl(metadata !253176)
  call void @llvm.experimental.noalias.scope.decl(metadata !253177)
  %i.ce = load i64, ptr %i.ae, align 8, !alias.scope !253178, !noalias !253179, !noundef !57 ; 3 uses
  %i.cf = load i64, ptr %.val.i.i.i.i.i.i, align 8, !range !56, !alias.scope !253178, !noalias !253179, !noundef !57
  %i.cg = sub i64 %i.cf, %i.ce
  %i.ch = icmp ugt i64 %i.cd, %i.cg
  br i1 %i.ch, label %bb.o, label %bb.p, !prof !60

bb.o:                                             ; preds = %_ZN10serde_json3ser9Formatter17begin_array_value17he9a3bb811dad8781E.exit.i.i24.i.i.i.i
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i, i64 noundef %i.ce, i64 noundef %i.cd, i64 noundef 1, i64 noundef 1), !noalias !253179
  %.pre.i.i.i.i.i.i.i.i.i.i26.i.i.i.i = load i64, ptr %i.ae, align 8, !alias.scope !253180, !noalias !253179
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN10serde_json3ser9Formatter17begin_array_value17he9a3bb811dad8781E.exit.i.i24.i.i.i.i
  %i.ci = phi i64 [ %i.ce, %_ZN10serde_json3ser9Formatter17begin_array_value17he9a3bb811dad8781E.exit.i.i24.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i26.i.i.i.i, %bb.o ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cc
  %i.ck = icmp sgt i64 %i.ci, -1
  call void @llvm.assume(i1 %i.ck)
  %i.cl = load ptr, ptr %i.ak, align 8, !alias.scope !253180, !noalias !253179, !nonnull !57, !noundef !57
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ci
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cm, ptr nonnull readonly align 1 %i.cj, i64 %i.cd, i1 false), !noalias !253181
  %i.cn = add nuw i64 %i.ci, %i.cd                ; 4 uses
  store i64 %i.cn, ptr %i.ae, align 8, !alias.scope !253180, !noalias !253179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !253173
  call void @llvm.experimental.noalias.scope.decl(metadata !253182)
  call void @llvm.experimental.noalias.scope.decl(metadata !253183)
  call void @llvm.experimental.noalias.scope.decl(metadata !253184)
  call void @llvm.experimental.noalias.scope.decl(metadata !253185)
  %i.co = load i64, ptr %.val.i.i.i.i.i.i, align 8, !range !56, !alias.scope !253186, !noalias !253187, !noundef !57
  %i.cp = icmp eq i64 %i.co, %i.cn
  br i1 %i.cp, label %bb.q, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h0ac2ee9179978083E.exit", !prof !60

bb.q:                                             ; preds = %bb.p
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i, i64 noundef %i.cn, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !253187
  %.pre.i.i.i.i.i.i.i.i30.i.i.i.i = load i64, ptr %i.ae, align 8, !alias.scope !253188, !noalias !253187
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h0ac2ee9179978083E.exit"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h0ac2ee9179978083E.exit": ; preds = %bb.p, %bb.q
  %i.cq = phi i64 [ %i.cn, %bb.p ], [ %.pre.i.i.i.i.i.i.i.i30.i.i.i.i, %bb.q ] ; 3 uses
  %i.cr = icmp sgt i64 %i.cq, -1
  call void @llvm.assume(i1 %i.cr)
  %i.cs = load ptr, ptr %i.ak, align 8, !alias.scope !253188, !noalias !253187, !nonnull !57, !noundef !57
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cq
  store i8 93, ptr %i.ct, align 1, !noalias !253189
  %i.cu = add nuw i64 %i.cq, 1
  store i64 %i.cu, ptr %i.ae, align 8, !alias.scope !253188, !noalias !253187
  ret ptr null
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef align 8 ptr @"_ZN98_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStructVariant$GT$15serialize_field17hcd023c6109f212faE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i8 %.0.val) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !74, !noundef !57
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !60

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @252, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6304) #80
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253227)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !253228, !noalias !253229, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !range !65, !alias.scope !253228, !noalias !253229, !noundef !57
  %i.g = icmp eq i8 %i.f, 1
  %.val.i.i.i = load ptr, ptr %i.d, align 8, !noalias !253230 ; 6 uses
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253234)
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !253235, !noalias !253236, !noundef !57 ; 3 uses
  %i.j = load i64, ptr %.val.i.i.i, align 8, !range !56, !alias.scope !253235, !noalias !253236, !noundef !57
  %i.k = icmp eq i64 %i.j, %i.i
  br i1 %i.k, label %bb.e, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i", !prof !60

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i, i64 noundef %i.i, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !253236
  %.pre.i.i.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !253237, !noalias !253236
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i": ; preds = %bb.e, %bb.d
  %i.l = phi i64 [ %i.i, %bb.d ], [ %.pre.i.i.i.i.i.i.i.i.i, %bb.e ] ; 3 uses
  %i.m = icmp sgt i64 %i.l, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !253237, !noalias !253236, !nonnull !57, !noundef !57
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l
  store i8 44, ptr %i.p, align 1, !noalias !253238
  %i.q = add nuw i64 %i.l, 1
  store i64 %i.q, ptr %i.h, align 8, !alias.scope !253237, !noalias !253236
  %.val9.pre.i.i.i = load ptr, ptr %i.d, align 8, !noalias !253230
  br label %bb.f

bb.f:                                             ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i", %bb.c
  %.val9.i.i.i = phi ptr [ %.val.i.i.i, %bb.c ], [ %.val9.pre.i.i.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i" ]
  store i8 2, ptr %i.e, align 1, !alias.scope !253228, !noalias !253229
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val9.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1388, i64 noundef 6)
  %.val.i6.i.i = load ptr, ptr %i.d, align 8, !noalias !253239, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253243)
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i6.i.i, i64 16 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !253244, !noalias !253245, !noundef !57 ; 3 uses
  %i.t = load i64, ptr %.val.i6.i.i, align 8, !range !56, !alias.scope !253244, !noalias !253245, !noundef !57
  %i.u = icmp eq i64 %i.t, %i.s
  br i1 %i.u, label %bb.g, label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i, !prof !60

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i6.i.i, i64 noundef %i.s, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !253245
  %.pre.i.i.i.i.i.i.i7.i.i = load i64, ptr %i.r, align 8, !alias.scope !253246, !noalias !253245
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i

_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i: ; preds = %bb.g, %bb.f
  %i.v = phi i64 [ %i.s, %bb.f ], [ %.pre.i.i.i.i.i.i.i7.i.i, %bb.g ] ; 3 uses
  %i.w = icmp sgt i64 %i.v, -1
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i6.i.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !253246, !noalias !253245, !nonnull !57, !noundef !57
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v
  store i8 58, ptr %i.z, align 1, !noalias !253247
  %i.aa = add nuw i64 %i.v, 1
  store i64 %i.aa, ptr %i.r, align 8, !alias.scope !253246, !noalias !253245
  %.val10.i.i.i = load ptr, ptr %i.d, align 8, !noalias !253239, !nonnull !57, !noundef !57 ; 2 uses
  %i.ab = trunc nuw i8 %.0.val to i1
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val10.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1861, i64 noundef 15)
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hb5b27874024285eaE.exit"

bb.i:                                             ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val10.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1860, i64 noundef 16)
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hb5b27874024285eaE.exit"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hb5b27874024285eaE.exit": ; preds = %bb.h, %bb.i
  ret ptr null
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef align 8 ptr @"_ZN98_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStructVariant$GT$15serialize_field17hdec529ee24229a7bE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !74, !noundef !57
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h7afe8ab5f68ddd0bE.exit", !prof !60

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @252, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6304) #80
  unreachable

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h7afe8ab5f68ddd0bE.exit": ; preds = %bb.a
  %i.c = tail call fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17habe4c3a5e0d95b05E(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1395, i64 noundef 11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1)
  ret ptr %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN98_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStructVariant$GT$15serialize_field17hf7afcca877f8ce81E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef range(i64 13, 20) %2, i64 %.0.val) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !74, !noundef !57
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !60

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @252, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6304) #80
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef align 8 ptr @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h16cf197a4b56a65bE"(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i64 %.0.val)
  ret ptr %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN98_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStructVariant$GT$3end17hcfb3cf42fc06c1cbE"(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !74, !noundef !57
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !60

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @252, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6305) #80
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !57, !align !61, !noundef !57 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = load i8, ptr %i.e, align 1, !range !65, !noundef !57
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit11, %bb.c
  %.val = load ptr, ptr %i.d, align 8, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253279)
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !253280, !noalias !253281, !noundef !57 ; 3 uses
  %i.j = load i64, ptr %.val, align 8, !range !56, !alias.scope !253280, !noalias !253281, !noundef !57
  %i.k = icmp eq i64 %i.j, %i.i
  br i1 %i.k, label %bb.e, label %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit, !prof !60

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, i64 noundef %i.i, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !253281
  %.pre.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !253282, !noalias !253281
  br label %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit

_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit: ; preds = %bb.d, %bb.e
  %i.l = phi i64 [ %i.i, %bb.d ], [ %.pre.i.i.i.i.i.i, %bb.e ] ; 3 uses
  %i.m = icmp sgt i64 %i.l, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !253282, !noalias !253281, !nonnull !57, !noundef !57
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l
  store i8 125, ptr %i.p, align 1, !noalias !253282
  %i.q = add nuw i64 %i.l, 1
  store i64 %i.q, ptr %i.h, align 8, !alias.scope !253282, !noalias !253281
  ret void

bb.f:                                             ; preds = %bb.c
  %.val9 = load ptr, ptr %i.d, align 8, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253286)
  %i.r = getelementptr inbounds nuw i8, ptr %.val9, i64 16 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !253287, !noalias !253288, !noundef !57 ; 3 uses
  %i.t = load i64, ptr %.val9, align 8, !range !56, !alias.scope !253287, !noalias !253288, !noundef !57
  %i.u = icmp eq i64 %i.t, %i.s
  br i1 %i.u, label %bb.g, label %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit11, !prof !60

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9, i64 noundef %i.s, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !253288
  %.pre.i.i.i.i.i.i10 = load i64, ptr %i.r, align 8, !alias.scope !253289, !noalias !253288
  br label %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit11

_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit11: ; preds = %bb.f, %bb.g
  %i.v = phi i64 [ %i.s, %bb.f ], [ %.pre.i.i.i.i.i.i10, %bb.g ] ; 3 uses
  %i.w = icmp sgt i64 %i.v, -1
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %.val9, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !253289, !noalias !253288, !nonnull !57, !noundef !57
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v
  store i8 125, ptr %i.z, align 1, !noalias !253289
  %i.aa = add nuw i64 %i.v, 1
  store i64 %i.aa, ptr %i.r, align 8, !alias.scope !253289, !noalias !253288
  br label %bb.d
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc { ptr, i64 } @"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h97ef00b3b4627218E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0) unnamed_addr #54 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !57 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253292)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !253292, !noundef !57 ; 2 uses
  %.not13.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !253292 ; 2 uses
  br i1 %.not13.i, label %.lr.ph.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17he097c967df17773dE.exit"

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.promoted15.i = load ptr, ptr %i.g, align 8, !alias.scope !253292
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.l, ptr %i.g, align 8, !alias.scope !253292
  store ptr %i.k, ptr %i.d, align 8, !alias.scope !253292
  br label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17he097c967df17773dE.exit"

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted15.i, %.lr.ph.i ], [ %i.l, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.k, %bb.c ]
  %.val911.i = load <16 x i8>, ptr %i.h, align 16, !noalias !253292
  %i.j = icmp sgt <16 x i8> %.val911.i, splat (i8 -1)
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -256 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.j to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17he097c967df17773dE.exit": ; preds = %bb.b, %._crit_edge.i
  %i.m = phi ptr [ %i.k, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.n = add i16 %.lcssa.i, -1
  %i.o = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.p = zext nneg i16 %i.o to i64
  %i.q = and i16 %i.n, %.lcssa.i
  store i16 %i.q, ptr %i.e, align 8, !alias.scope !253292
  %i.r = sub nsw i64 0, %i.p
  %i.s = getelementptr inbounds [16 x i8], ptr %i.m, i64 %i.r ; 2 uses
  %i.t = add i64 %i.b, -1
  store i64 %i.t, ptr %i.a, align 8
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -16
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !57, !noundef !57
  %i.w = getelementptr inbounds i8, ptr %i.s, i64 -8
  %i.x = load i64, ptr %i.w, align 8, !noundef !57
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17he097c967df17773dE.exit"
  %.sroa.3.0 = phi i64 [ %i.x, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17he097c967df17773dE.exit" ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.v, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17he097c967df17773dE.exit" ], [ null, %bb.a ]
  %i.y = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.z = insertvalue { ptr, i64 } %i.y, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.z
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN99_$LT$meilisearch_types..index_uid..UserIndex$u20$as$u20$index_scheduler..index_mapper..IndexUid$GT$12try_from_uid17ha05c896e6b34d16fE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([344 x i8]) align 8 captures(none) dereferenceable(344) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { ptr, i64 } @_ZN17meilisearch_types9index_uid9UserIndex3new17he3028764339854adE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, i64 } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.c, ptr %i.e, align 8
  store i64 152, ptr %0, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %2, 0
  br i1 %i.f, label %bb.e, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !85

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.c
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9660f7607dd08246E.exit", label %bb.d

bb.d:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !253300
  %i.h = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, 9) 1) #79, !noalias !253300 ; 2 uses
end_hunk_21
