Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/chrono-f381b5504deaa07f.chrono.95f864141025b2a6-cgu.05?download=true
inline.NumInlined: 65
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB2_14TransitionRule14from_tz_string:bb.a
  %i.by = load i8, ptr %.val270, align 1, !noundef !13
  %i.bz = icmp eq i8 %i.by, 44
  br i1 %i.bz, label %.thread, label %bb.af

bb.ae:                                            ; preds = %_RNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4rule10parse_name.exit278
  store i8 14, ptr %0, align 8
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @0, ptr %.sroa.465.0..sroa_idx, align 8
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 40, ptr %.sroa.566.0..sroa_idx, align 8
  br label %bb.bd

.thread:                                          ; preds = %bb.ad
  %i.ca = add nsw i32 %i.ax, -3600
  br label %bb.ai

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call fastcc void @_RNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4rule12parse_offset(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef align 8 dereferenceable(24) %i.l)
  %i.cb = load i8, ptr %i.k, align 8, !range !36, !noundef !13 ; 2 uses
  %.not260 = icmp eq i8 %i.cb, -1
  br i1 %.not260, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cc = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.val268.pre = load i64, ptr %i.m, align 8
  %i.ce = icmp eq i64 %.val268.pre, 0
  br i1 %i.ce, label %bb.aj, label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %.sroa.4187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %.sroa.4191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4191.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4187.0..sroa_idx, i64 3, i1 false)
  %.sroa.5188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.sroa.5188.0.copyload = load i32, ptr %.sroa.5188.0..sroa_idx, align 4
  %.sroa.6189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.6193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6193.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6189.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i8 %i.cb, ptr %0, align 8
  %.sroa.5192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.5188.0.copyload, ptr %.sroa.5192.0..sroa_idx, align 4
  br label %bb.bd

bb.ai:                                            ; preds = %.thread, %bb.ag
  %.sroa.062.0421 = phi i32 [ %i.ca, %.thread ], [ %i.cd, %bb.ag ]
  %i.cf = call noundef ptr @_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor8read_tag(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 1) ; 2 uses
  %.not261 = icmp eq ptr %i.cf, null
  br i1 %.not261, label %bb.al, label %bb.ak

bb.aj:                                            ; preds = %bb.ag
  store i8 14, ptr %0, align 8
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @0, ptr %.sroa.469.0..sroa_idx, align 8
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 40, ptr %.sroa.570.0..sroa_idx, align 8
  br label %bb.bd

bb.ak:                                            ; preds = %bb.ai
  store i8 6, ptr %0, align 8
  %.sroa.4325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cf, ptr %.sroa.4325.0..sroa_idx, align 8
  br label %bb.bd

bb.al:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call fastcc void @_RNvMs2_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_7RuleDay5parse(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.j, ptr noalias noundef align 8 dereferenceable(24) %i.l, i1 noundef zeroext %3)
  %i.cg = load i8, ptr %i.j, align 8, !range !36, !noundef !13 ; 2 uses
  %.not262 = icmp eq i8 %i.cg, -1
  br i1 %.not262, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.sroa.4204.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %.sroa.4209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4209.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4204.0..sroa_idx, i64 3, i1 false)
  %.sroa.5205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %.sroa.7207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %.sroa.7212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7212.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7207.0..sroa_idx, i64 12, i1 false)
  %.sroa.5210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ch = load <2 x i32>, ptr %.sroa.5205.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i8 %i.cg, ptr %0, align 8
  store <2 x i32> %i.ch, ptr %.sroa.5210.0..sroa_idx, align 4
  br label %bb.bd

bb.an:                                            ; preds = %bb.al
  %i.ci = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %.sroa.0194.0.copyload = load i32, ptr %i.ci, align 4
  %.sroa.4196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.4196.0.copyload = load i32, ptr %.sroa.4196.0..sroa_idx, align 8 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.cj = call noundef ptr @_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor8read_tag(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 1) ; 2 uses
  %.not263 = icmp eq ptr %i.cj, null
  br i1 %.not263, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store i8 6, ptr %0, align 8
  %.sroa.4329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cj, ptr %.sroa.4329.0..sroa_idx, align 8
  br label %bb.bd

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call fastcc void @_RNvMs2_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_7RuleDay5parse(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef align 8 dereferenceable(24) %i.l, i1 noundef zeroext %3)
  %i.ck = load i8, ptr %i.i, align 8, !range !36, !noundef !13 ; 2 uses
  %.not264 = icmp eq i8 %i.ck, -1
  br i1 %.not264, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.sroa.4223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %.sroa.4228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4228.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4223.0..sroa_idx, i64 3, i1 false)
  %.sroa.5224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.sroa.7226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %.sroa.7231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7231.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7226.0..sroa_idx, i64 12, i1 false)
  %.sroa.5229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cl = load <2 x i32>, ptr %.sroa.5224.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i8 %i.ck, ptr %0, align 8
  store <2 x i32> %i.cl, ptr %.sroa.5229.0..sroa_idx, align 4
  br label %bb.bd

bb.ar:                                            ; preds = %bb.ap
  %i.cm = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.sroa.0213.0.copyload = load i32, ptr %i.cm, align 4
  %.sroa.4215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.4215.0.copyload = load i32, ptr %.sroa.4215.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.val = load i64, ptr %i.m, align 8, !noundef !13
  %i.cn = icmp eq i64 %.val, 0
  br i1 %i.cn, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i8 5, ptr %0, align 8
  %.sroa.4106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @2, ptr %.sroa.4106.0..sroa_idx, align 8
  %.sroa.5107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 38, ptr %.sroa.5107.0..sroa_idx, align 8
  br label %bb.bd

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.co = sub nsw i32 0, %i.ax
  call void @_RNvMs5_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB5_13LocalTimeType3new(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i32 noundef %i.co, i1 noundef zeroext false, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.11.0, i64 %.sroa.18.0)
  %i.cp = load i8, ptr %i.h, align 8, !range !36, !noundef !13 ; 2 uses
  %.not265 = icmp eq i8 %i.cp, -1
  br i1 %.not265, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.sroa.4236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %.sroa.4239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4239.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4236.0..sroa_idx, i64 3, i1 false)
  %.sroa.4236.sroa.4.0..sroa.4236.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.sroa.5237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %.sroa.5237.0.copyload = load i32, ptr %.sroa.5237.0..sroa_idx, align 4
  %.sroa.4239.sroa.4.0..sroa.4239.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cq = load <2 x i64>, ptr %.sroa.4236.sroa.4.0..sroa.4236.0..sroa_idx.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i8 %i.cp, ptr %0, align 8
  store <2 x i64> %i.cq, ptr %.sroa.4239.sroa.4.0..sroa.4239.0..sroa_idx.sroa_idx, align 4
  %.sroa.5240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.5237.0.copyload, ptr %.sroa.5240.0..sroa_idx, align 4
  br label %bb.ba

bb.av:                                            ; preds = %bb.at
  %i.cr = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %i.cs = load <2 x i64>, ptr %i.cr, align 4
  %.sroa.0331.0.copyload = load i64, ptr %i.cr, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ct = sub i32 0, %.sroa.062.0421
  call void @_RNvMs5_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB5_13LocalTimeType3new(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i32 noundef %i.ct, i1 noundef zeroext true, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.11292.0, i64 %.sroa.18293.0)
  %i.cu = load i8, ptr %i.f, align 8, !range !36, !noundef !13 ; 2 uses
  %.not266 = icmp eq i8 %i.cu, -1
  %.sroa.4334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 17
  %.sroa.4334.0.copyload = load i8, ptr %.sroa.4334.0..sroa_idx, align 1 ; 3 uses
  %.sroa.5335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 18
  %.sroa.5335.0.copyload = load i16, ptr %.sroa.5335.0..sroa_idx, align 2 ; 2 uses
  br i1 %.not266, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.sroa.4245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.5246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %.sroa.5246.0.copyload = load i32, ptr %.sroa.5246.0..sroa_idx, align 4
  %.sroa.4248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.4248.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.4245.0..sroa_idx, i64 16, i1 false)
  store i8 %i.cu, ptr %0, align 8
  %.sroa.4248.sroa.4.0..sroa.4248.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %.sroa.4334.0.copyload, ptr %.sroa.4248.sroa.4.0..sroa.4248.0..sroa_idx.sroa_idx, align 1
  %.sroa.4248.sroa.5.0..sroa.4248.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %.sroa.5335.0.copyload, ptr %.sroa.4248.sroa.5.0..sroa.4248.0..sroa_idx.sroa_idx, align 2
  %.sroa.5249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.5246.0.copyload, ptr %.sroa.5249.0..sroa_idx, align 4
  br label %bb.ba

bb.ax:                                            ; preds = %bb.av
  %i.cv = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %4 = add i32 %.sroa.4196.0.copyload, 604799
  %i.cw = icmp ult i32 %4, 1209599
  %5 = add i32 %.sroa.4215.0.copyload, 604799
  %i.cx = icmp ult i32 %5, 1209599
  %or.cond.i280 = and i1 %i.cw, %i.cx
  br i1 %or.cond.i280, label %_RNvMs1_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_13AlternateTime3new.exit, label %_RNvMs1_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_13AlternateTime3new.exit.thread

_RNvMs1_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_13AlternateTime3new.exit: ; preds = %bb.ax
  %.sroa.0295.sroa.9.0.extract.shift = and i32 %.sroa.4196.0.copyload, -256
  %.sroa.10299.0.insert.ext = zext i32 %.sroa.0194.0.copyload to i64
  %.sroa.10299.4.insert.ext = zext i32 %.sroa.0213.0.copyload to i64
  %.sroa.10299.4.insert.shift = shl nuw i64 %.sroa.10299.4.insert.ext, 32
  %.sroa.10299.4.insert.insert = or disjoint i64 %.sroa.10299.4.insert.shift, %.sroa.10299.0.insert.ext
  %i.cy = inttoptr i64 %.sroa.10299.4.insert.insert to ptr ; 2 uses
  %i.cz = icmp eq i8 %.sroa.4334.0.copyload, 2
  br i1 %i.cz, label %_RNvMs1_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_13AlternateTime3new.exit.thread, label %bb.ay

_RNvMs1_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_13AlternateTime3new.exit.thread: ; preds = %bb.ax, %_RNvMs1_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_13AlternateTime3new.exit
  %.sroa.9297.0398 = phi i32 [ %.sroa.4215.0.copyload, %_RNvMs1_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_13AlternateTime3new.exit ], [ undef, %bb.ax ]
  %.sroa.13.0397 = phi i64 [ %.sroa.0331.0.copyload, %_RNvMs1_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_13AlternateTime3new.exit ], [ 29, %bb.ax ]
  %.sroa.10299.0396 = phi ptr [ %i.cy, %_RNvMs1_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_13AlternateTime3new.exit ], [ @4, %bb.ax ]
  %.sroa.0295.sroa.0.0395 = phi i32 [ %.sroa.4196.0.copyload, %_RNvMs1_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_13AlternateTime3new.exit ], [ 12, %bb.ax ]
  %.sroa.0295.sroa.9.sroa.0.0394 = phi i32 [ %.sroa.0295.sroa.9.0.extract.shift, %_RNvMs1_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_13AlternateTime3new.exit ], [ 0, %bb.ax ]
  %.sroa.0295.sroa.0.0.insert.ext303 = and i32 %.sroa.0295.sroa.0.0395, 255
  %.sroa.0295.sroa.0.0.insert.insert305 = or disjoint i32 %.sroa.0295.sroa.9.sroa.0.0394, %.sroa.0295.sroa.0.0.insert.ext303
  store i32 %.sroa.0295.sroa.0.0.insert.insert305, ptr %0, align 8
  %.sroa.4360.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.9297.0398, ptr %.sroa.4360.0..sroa_idx, align 4
  %.sroa.5361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10299.0396, ptr %.sroa.5361.0..sroa_idx, align 8
  %.sroa.6362.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.13.0397, ptr %.sroa.6362.0..sroa_idx, align 8
  br label %bb.ba

bb.ay:                                            ; preds = %_RNvMs1_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_13AlternateTime3new.exit
  %.sroa.0322.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %.sroa.0322.sroa.11.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(13) %i.cv, i64 13, i1 false)
  store i32 %.sroa.4196.0.copyload, ptr %0, align 8
  %.sroa.0322.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.4215.0.copyload, ptr %.sroa.0322.sroa.7.0..sroa_idx, align 4
  %.sroa.0322.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cy, ptr %.sroa.0322.sroa.8.0..sroa_idx, align 8
  %.sroa.0322.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.cs, ptr %.sroa.0322.sroa.9.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 45
  store i8 %.sroa.4334.0.copyload, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 46
  store i16 %.sroa.5335.0.copyload, ptr %.sroa.8.0..sroa_idx, align 2
  br label %bb.az

bb.az:                                            ; preds = %bb.bd, %bb.ba, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

bb.ba:                                            ; preds = %bb.aw, %_RNvMs1_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_13AlternateTime3new.exit.thread, %bb.au
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 45
  store i8 -1, ptr %i.da, align 1
  br label %bb.az

bb.bb:                                            ; preds = %bb.ab
  %.sroa.4165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.sroa.5166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %.sroa.5166.0.copyload = load i32, ptr %.sroa.5166.0..sroa_idx, align 4
  %.sroa.4168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %.sroa.4168.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(19) %.sroa.4165.0..sroa_idx, i64 19, i1 false)
  store i8 %i.bx, ptr %0, align 8
  %.sroa.5169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.5166.0.copyload, ptr %.sroa.5169.0..sroa_idx, align 4
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ab
  %i.db = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.db, i64 16, i1 false)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bb, %bb.bc, %bb.ae, %bb.ah, %bb.r, %bb.aj, %bb.ak, %bb.am, %bb.as, %bb.aq, %bb.ao, %bb.ac, %bb.j
  %.sink424 = phi i8 [ -1, %bb.ae ], [ -1, %bb.ah ], [ -1, %bb.r ], [ -1, %bb.j ], [ -1, %bb.aj ], [ -1, %bb.ak ], [ -1, %bb.am ], [ -1, %bb.as ], [ -1, %bb.aq ], [ -1, %bb.ao ], [ -1, %bb.ac ], [ 2, %bb.bc ], [ -1, %bb.bb ]
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 45
  store i8 %.sink424, ptr %i.dc, align 1
  br label %bb.az
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB2_14TransitionRule20find_local_time_type(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 1), (8, 16)) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(48) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 45
  %i.b = load i8, ptr %i.a, align 1, !range !58, !noundef !13
  %.not = icmp eq i8 %i.b, 2
  br i1 %.not, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %i.c = load i32, ptr %1, align 4, !alias.scope !62, !noalias !59, !noundef !13
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.f = load i32, ptr %i.e, align 4, !alias.scope !62, !noalias !59, !noundef !13
  %i.g = sext i32 %i.f to i64
  %i.h = sub nsw i64 %i.d, %i.g                   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !alias.scope !62, !noalias !59, !noundef !13
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !alias.scope !62, !noalias !59, !noundef !13
  %i.n = sext i32 %i.m to i64
  %i.o = sub nsw i64 %i.k, %i.n                   ; 5 uses
  %i.p = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %2, i64 -951868800) ; 2 uses
  %i.q = extractvalue { i64, i1 } %i.p, 1
  br i1 %i.q, label %bb.d, label %bb.c, !prof !64

bb.c:                                             ; preds = %bb.b
  %i.r = extractvalue { i64, i1 } %i.p, 0         ; 2 uses
  %i.s = sdiv i64 %i.r, 86400
  %i.t = srem i64 %i.r, 86400
  %.lobit.i.i = ashr i64 %i.t, 63
  %.sroa.05.0.i.i = add nsw i64 %.lobit.i.i, %i.s ; 2 uses
  %i.u = sdiv i64 %.sroa.05.0.i.i, 146097
  %i.v = srem i64 %.sroa.05.0.i.i, 146097         ; 4 uses
  %i.w = icmp slt i64 %i.v, 0
  %i.x = add nsw i64 %i.v, 146097
  %.sroa.05.1.i.i = select i1 %i.w, i64 %i.x, i64 %i.v ; 2 uses
  %.lobit56.i.i = ashr i64 %i.v, 63
  %.sroa.024.0.i.i = add nsw i64 %.lobit56.i.i, %i.u
  %i.y = udiv i64 %.sroa.05.1.i.i, 36524
  %i.z = tail call i64 @llvm.umin.i64(i64 %i.y, i64 3) ; 2 uses
  %.neg.i.i = mul nsw i64 %i.z, -36524
  %i.aa = add nsw i64 %.neg.i.i, %.sroa.05.1.i.i  ; 2 uses
  %.lhs.trunc.i.i = trunc nsw i64 %i.aa to i32
  %i.ab = sdiv i32 %.lhs.trunc.i.i, 1461
  %i.ac = tail call i32 @llvm.smin.i32(i32 %i.ab, i32 24)
  %.sroa.0.0.i52.i.i = sext i32 %i.ac to i64      ; 2 uses
  %.neg50.i.i = mul nsw i64 %.sroa.0.0.i52.i.i, -1461
  %i.ad = add nsw i64 %.neg50.i.i, %i.aa          ; 2 uses
  %.lhs.trunc54.i.i = trunc nsw i64 %i.ad to i32
  %i.ae = sdiv i32 %.lhs.trunc54.i.i, 365
  %i.af = tail call i32 @llvm.smin.i32(i32 %i.ae, i32 3)
  %.sroa.0.0.i53.i.i = sext i32 %i.af to i64      ; 2 uses
  %.neg51.i.i = mul nsw i64 %.sroa.0.0.i53.i.i, -365
  %i.ag = add nsw i64 %.neg51.i.i, %i.ad
  %i.ah = shl nsw i64 %.sroa.0.0.i52.i.i, 2
  %i.ai = mul nuw nsw i64 %i.z, 100
  %i.aj = mul nsw i64 %.sroa.024.0.i.i, 400
  %or.cond33.i = icmp sgt i64 %i.ag, 305
  %spec.select.i = zext i1 %or.cond33.i to i64
  %i.ak = add nsw i64 %i.aj, 2000
  %i.al = add nsw i64 %i.ak, %i.ai
  %i.am = add nsw i64 %i.al, %i.ah
  %i.an = add nsw i64 %i.am, %.sroa.0.0.i53.i.i
  %.sroa.026.0.i.i = add nsw i64 %i.an, %spec.select.i ; 3 uses
  %i.ao = add nsw i64 %.sroa.026.0.i.i, 2147483648
  %or.cond.i.i = icmp ult i64 %i.ao, 4294967296
  br i1 %or.cond.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.10.0.ph.i = phi ptr [ @17, %bb.c ], [ @18, %bb.b ]
  %.sroa.17.0.ph.i = phi i64 [ 27, %bb.c ], [ 22, %bb.b ]
  store i8 7, ptr %0, align 8, !alias.scope !59, !noalias !62
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.ph.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !59, !noalias !62
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.17.0.ph.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !59, !noalias !62
  br label %_RNvMs1_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_13AlternateTime20find_local_time_type.exit

bb.e:                                             ; preds = %bb.c
  %i.ap = trunc nsw i64 %.sroa.026.0.i.i to i32   ; 6 uses
  %i.aq = add nsw i64 %.sroa.026.0.i.i, 2147483646
  %or.cond.i = icmp ult i64 %i.aq, 4294967292
  br i1 %or.cond.i, label %bb.f, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECscShS5OxKAqE_6chrono.exit.thread.i

_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECscShS5OxKAqE_6chrono.exit.thread.i: ; preds = %bb.e
  store i8 7, ptr %0, align 8, !alias.scope !59, !noalias !62
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @3, ptr %.sroa.41.0..sroa_idx.i, align 8, !alias.scope !59, !noalias !62
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 22, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !59, !noalias !62
  br label %_RNvMs1_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_13AlternateTime20find_local_time_type.exit

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.as = tail call fastcc noundef i64 @_RNvMs2_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_7RuleDay9unix_time(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.ar, i32 noundef %i.ap, i64 noundef %i.h), !noalias !59 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 5 uses
  %i.au = tail call fastcc noundef i64 @_RNvMs2_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_7RuleDay9unix_time(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.at, i32 noundef %i.ap, i64 noundef %i.o), !noalias !59 ; 3 uses
  %i.av = icmp sgt i64 %i.as, %i.au
  br i1 %i.av, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = icmp slt i64 %2, %i.as
  br i1 %i.aw, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ax = icmp slt i64 %2, %i.au
  br i1 %i.ax, label %bb.n, label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.ay = icmp slt i64 %2, %i.au
  br i1 %i.ay, label %bb.p, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.az = add nsw i32 %i.ap, -1                   ; 2 uses
  %i.ba = tail call fastcc noundef i64 @_RNvMs2_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_7RuleDay9unix_time(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.at, i32 noundef %i.az, i64 noundef %i.o), !noalias !59
  %i.bb = icmp slt i64 %2, %i.ba
  br i1 %i.bb, label %.split23.i, label %bb.q

bb.k:                                             ; preds = %bb.i
end_hunk_0
begin_hunk_1_@_RNvMNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB2_14TransitionRule31find_local_time_type_from_local:bb.a
  br label %_RNvMs1_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_13AlternateTime31find_local_time_type_from_local.exit

bb.w:                                             ; preds = %bb.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.ao, i64 16, i1 false), !alias.scope !71
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 2, ptr %.sroa.411.0..sroa_idx.i, align 1, !alias.scope !66, !noalias !69
  br label %_RNvMs1_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_13AlternateTime31find_local_time_type_from_local.exit

bb.x:                                             ; preds = %bb.u
  %.not54.i = icmp sgt i64 %i.ac, %i.ax
  br i1 %.not54.i, label %bb.w, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.ao, i64 16, i1 false), !noalias !66
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bv, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.ak, i64 16, i1 false), !noalias !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvMs1_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_13AlternateTime31find_local_time_type_from_local.exit

bb.z:                                             ; preds = %bb.g
  %.not.i = icmp sgt i64 %i.ac, %i.ax
  br i1 %.not.i, label %bb.ac, label %bb.ab

bb.aa:                                            ; preds = %bb.g
  %i.bw = icmp slt i64 %i.ac, %i.ar
  br i1 %i.bw, label %bb.aj, label %bb.ak

bb.ab:                                            ; preds = %bb.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.ak, i64 16, i1 false), !alias.scope !71
  %.sroa.438.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 2, ptr %.sroa.438.0..sroa_idx.i, align 1, !alias.scope !66, !noalias !69
  br label %_RNvMs1_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_13AlternateTime31find_local_time_type_from_local.exit

bb.ac:                                            ; preds = %bb.z
  %i.bx = icmp slt i64 %i.ac, %i.bb
  br i1 %i.bx, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %.sroa.341.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 4, ptr %.sroa.341.0..sroa_idx.i, align 1, !alias.scope !66, !noalias !69
  br label %_RNvMs1_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_13AlternateTime31find_local_time_type_from_local.exit

bb.ae:                                            ; preds = %bb.ac
  %i.by = icmp slt i64 %i.ac, %i.ar
  br i1 %i.by, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.ao, i64 16, i1 false), !alias.scope !71
  %.sroa.444.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 2, ptr %.sroa.444.0..sroa_idx.i, align 1, !alias.scope !66, !noalias !69
  br label %_RNvMs1_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_13AlternateTime31find_local_time_type_from_local.exit

bb.ag:                                            ; preds = %bb.ah
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.ak, i64 16, i1 false), !alias.scope !71
  %.sroa.447.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 2, ptr %.sroa.447.0..sroa_idx.i, align 1, !alias.scope !66, !noalias !69
  br label %_RNvMs1_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_13AlternateTime31find_local_time_type_from_local.exit

bb.ah:                                            ; preds = %bb.ae
  %.not50.i = icmp sgt i64 %i.ac, %i.ah
  br i1 %.not50.i, label %bb.ag, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.ak, i64 16, i1 false), !noalias !66
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bz, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.ao, i64 16, i1 false), !noalias !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvMs1_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_13AlternateTime31find_local_time_type_from_local.exit

bb.aj:                                            ; preds = %bb.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.ao, i64 16, i1 false), !alias.scope !71
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 2, ptr %.sroa.426.0..sroa_idx.i, align 1, !alias.scope !66, !noalias !69
  br label %_RNvMs1_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_13AlternateTime31find_local_time_type_from_local.exit

bb.ak:                                            ; preds = %bb.aa
  %.not51.i = icmp sgt i64 %i.ac, %i.ah
  br i1 %.not51.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.ak, i64 16, i1 false), !noalias !66
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ca, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.ao, i64 16, i1 false), !noalias !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMs1_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_13AlternateTime31find_local_time_type_from_local.exit

bb.am:                                            ; preds = %bb.ak
  %i.cb = icmp slt i64 %i.ac, %i.ax
  br i1 %i.cb, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.ak, i64 16, i1 false), !alias.scope !71
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 2, ptr %.sroa.429.0..sroa_idx.i, align 1, !alias.scope !66, !noalias !69
  br label %_RNvMs1_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_13AlternateTime31find_local_time_type_from_local.exit

bb.ao:                                            ; preds = %bb.ap
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.ao, i64 16, i1 false), !alias.scope !71
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 2, ptr %.sroa.435.0..sroa_idx.i, align 1, !alias.scope !66, !noalias !69
  br label %_RNvMs1_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_13AlternateTime31find_local_time_type_from_local.exit

bb.ap:                                            ; preds = %bb.am
  %i.cc = icmp slt i64 %i.ac, %i.bb
  br i1 %i.cc, label %bb.aq, label %bb.ao

bb.aq:                                            ; preds = %bb.ap
  %.sroa.332.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 4, ptr %.sroa.332.0..sroa_idx.i, align 1, !alias.scope !66, !noalias !69
  br label %_RNvMs1_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_13AlternateTime31find_local_time_type_from_local.exit

bb.ar:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(29) %0, ptr noundef nonnull align 4 dereferenceable(29) %1, i64 29, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 2, ptr %.sroa.4.0..sroa_idx, align 1
  br label %_RNvMs1_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_13AlternateTime31find_local_time_type_from_local.exit

_RNvMs1_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_13AlternateTime31find_local_time_type_from_local.exit: ; preds = %bb.aq, %bb.ao, %bb.an, %bb.al, %bb.aj, %bb.ai, %bb.ag, %bb.af, %bb.ad, %bb.ab, %bb.y, %bb.w, %bb.v, %bb.t, %bb.r, %bb.q, %bb.p, %bb.o, %bb.m, %bb.j, %bb.f, %bb.ar
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMs2_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_7RuleDay15transition_date(ptr noalias noundef nonnull readonly align 2 captures(none) dereferenceable(4) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 19 uses
  %i.b = load i8, ptr %0, align 2, !range !58, !noundef !13
  switch i8 %i.b, label %default.unreachable67 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

default.unreachable67:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = load i16, ptr %i.c, align 2, !noundef !13 ; 2 uses
  %i.e = zext i16 %i.d to i64                     ; 5 uses
  %i.f = add nsw i64 %i.e, -1                     ; 2 uses
  %i.g = icmp ult i16 %i.d, 182
  %i.h = select i1 %i.g, i64 0, i64 6, !unpredictable !13 ; 2 uses
  %i.i = add nuw nsw i64 %i.h, 3                  ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @8, i64 %i.i
  %.val16.1.i = load i64, ptr %i.j, align 8, !alias.scope !72, !noalias !75, !noundef !13
  %.not54 = icmp slt i64 %.val16.1.i, %i.e
  %i.k = select i1 %.not54, i64 %i.i, i64 %i.h, !unpredictable !13 ; 2 uses
  %i.l = add nuw nsw i64 %i.k, 1                  ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @8, i64 %i.l
  %.val16.2.i = load i64, ptr %i.m, align 8, !alias.scope !72, !noalias !75, !noundef !13
  %.not55 = icmp slt i64 %.val16.2.i, %i.e
  %i.n = select i1 %.not55, i64 %i.l, i64 %i.k, !unpredictable !13 ; 2 uses
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr @8, i64 %i.o
  %.val16.3.i = load i64, ptr %i.p, align 8, !alias.scope !72, !noalias !75, !noundef !13
  %.not56 = icmp slt i64 %.val16.3.i, %i.e
  %i.q = select i1 %.not56, i64 %i.o, i64 %i.n, !unpredictable !13 ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @8, i64 %i.q
  %.val14.i = load i64, ptr %i.r, align 8, !alias.scope !72, !noalias !75, !noundef !13 ; 2 uses
  %.not57 = icmp eq i64 %.val14.i, %i.f
  %i.s = icmp slt i64 %.val14.i, %i.f
  %i.t = zext i1 %i.s to i64
  %i.u = zext i1 %.not57 to i64
  %i.v = add nuw nsw i64 %i.u, %i.t
  %.sroa.05.0 = add nuw nsw i64 %i.v, %i.q        ; 2 uses
  %i.w = add nsw i64 %.sroa.05.0, -1              ; 3 uses
  %i.x = icmp ult i64 %i.w, 12
  br i1 %i.x, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.z = load i16, ptr %i.y, align 2, !noundef !13
  %i.aa = srem i32 %1, 400
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.i, label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !13 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.af = load i8, ptr %i.ae, align 2, !noundef !13
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !13
  %i.ai = srem i32 %1, 400
  %i.aj = icmp eq i32 %i.ai, 0                    ; 3 uses
  br i1 %i.aj, label %bb.n, label %bb.m

bb.e:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr @8, i64 %i.w
  %i.al = load i64, ptr %i.ak, align 8, !noundef !13
  %i.am = sub i64 %i.e, %i.al
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.w, i64 noundef 12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #6
  unreachable

bb.g:                                             ; preds = %bb.ab, %bb.k, %bb.e
  %.sroa.4.0 = phi i64 [ %i.am, %bb.e ], [ %i.co, %bb.k ], [ %spec.select, %bb.ab ]
  %.sroa.0.0 = phi i64 [ %.sroa.05.0, %bb.e ], [ %.sroa.012.0, %bb.k ], [ %i.cr, %bb.ab ]
  %i.an = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.ao = insertvalue { i64, i64 } %i.an, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.ao

bb.h:                                             ; preds = %bb.c
  %i.ap = and i32 %1, 3
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.c, %bb.j
  %.sroa.07.0 = phi i64 [ 1, %bb.c ], [ %i.ck, %bb.j ], [ 0, %bb.h ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ar = add nuw nsw i64 %.sroa.07.0, 59
  %i.as = or disjoint i64 %.sroa.07.0, 90
  %i.at = or disjoint i64 %.sroa.07.0, 120
  %i.au = add nuw nsw i64 %.sroa.07.0, 151
  %i.av = add nuw nsw i64 %.sroa.07.0, 181        ; 2 uses
  %i.aw = or disjoint i64 %.sroa.07.0, 212
  %i.ax = add nuw nsw i64 %.sroa.07.0, 243
  %i.ay = add nuw nsw i64 %.sroa.07.0, 273
  %i.az = or disjoint i64 %.sroa.07.0, 304
  %i.ba = or disjoint i64 %.sroa.07.0, 334
  store i64 0, ptr %i.a, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 31, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.ar, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.as, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.at, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.au, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.av, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.aw, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %i.ax, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 %i.ay, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 %i.az, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i64 %i.ba, ptr %i.bl, align 8
  %i.bm = zext i16 %i.z to i64                    ; 7 uses
  %i.bn = icmp samesign ugt i64 %i.av, %i.bm
  %i.bo = select i1 %i.bn, i64 0, i64 6, !unpredictable !13 ; 2 uses
  %i.bp = add nuw nsw i64 %i.bo, 3                ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bp
  %.val16.1.i30 = load i64, ptr %i.bq, align 8, !alias.scope !77, !noalias !80, !noundef !13
  %i.br = icmp sgt i64 %.val16.1.i30, %i.bm
  %i.bs = select i1 %i.br, i64 %i.bo, i64 %i.bp, !unpredictable !13 ; 2 uses
  %i.bt = add nuw nsw i64 %i.bs, 1                ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bt
  %.val16.2.i31 = load i64, ptr %i.bu, align 8, !alias.scope !77, !noalias !80, !noundef !13
  %i.bv = icmp sgt i64 %.val16.2.i31, %i.bm
  %i.bw = select i1 %i.bv, i64 %i.bs, i64 %i.bt, !unpredictable !13 ; 2 uses
  %i.bx = add nuw nsw i64 %i.bw, 1                ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bx
  %.val16.3.i32 = load i64, ptr %i.by, align 8, !alias.scope !77, !noalias !80, !noundef !13
  %i.bz = icmp sgt i64 %.val16.3.i32, %i.bm
  %i.ca = select i1 %i.bz, i64 %i.bw, i64 %i.bx, !unpredictable !13 ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ca
  %.val14.i33 = load i64, ptr %i.cb, align 8, !alias.scope !77, !noalias !80, !noundef !13 ; 2 uses
  %.not = icmp eq i64 %.val14.i33, %i.bm
  %i.cc = icmp slt i64 %.val14.i33, %i.bm
  %i.cd = zext i1 %i.cc to i64
  %i.ce = zext i1 %.not to i64
  %i.cf = add nuw nsw i64 %i.ce, %i.cd
  %.sroa.012.0 = add nuw nsw i64 %i.cf, %i.ca     ; 2 uses
  %i.cg = add nsw i64 %.sroa.012.0, -1            ; 3 uses
  %i.ch = icmp ult i64 %i.cg, 12
  br i1 %i.ch, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ci = srem i32 %1, 100
  %i.cj = icmp ne i32 %i.ci, 0
  %i.ck = zext i1 %i.cj to i64
  br label %bb.i

bb.k:                                             ; preds = %bb.i
  %i.cl = add nuw nsw i64 %i.bm, 1
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cg
  %i.cn = load i64, ptr %i.cm, align 8, !noundef !13
  %i.co = sub i64 %i.cl, %i.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.l:                                             ; preds = %bb.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cg, i64 noundef 12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #6
  unreachable

bb.m:                                             ; preds = %bb.d
  %i.cp = and i32 %1, 3
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.d, %bb.o
  %.sroa.014.0 = phi i64 [ 1, %bb.d ], [ %i.cw, %bb.o ], [ 0, %bb.m ]
  %i.cr = zext i8 %i.ad to i64                    ; 2 uses
  %i.cs = add nsw i64 %i.cr, -1                   ; 4 uses
  %i.ct = icmp ult i64 %i.cs, 12
  br i1 %i.ct, label %bb.p, label %bb.v

bb.o:                                             ; preds = %bb.m
  %i.cu = srem i32 %1, 100
  %i.cv = icmp ne i32 %i.cu, 0
  %i.cw = zext i1 %i.cv to i64
  br label %bb.n

bb.p:                                             ; preds = %bb.n
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr @12, i64 %i.cs
  %i.cy = load i64, ptr %i.cx, align 8, !noundef !13 ; 2 uses
  %i.cz = icmp eq i8 %i.ad, 2
  br i1 %i.cz, label %.split21, label %.split

.split:                                           ; preds = %bb.p
  br i1 %i.aj, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.split
  %i.da = and i32 %1, 3
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.s, %bb.q, %.split
  %.sroa.011.0.i = phi i1 [ true, %.split ], [ %i.dh, %bb.s ], [ false, %bb.q ] ; 2 uses
  %i.dc = sext i32 %1 to i64                      ; 2 uses
  %i.dd = mul nsw i64 %i.dc, 365
  %i.de = add nsw i64 %i.dd, -719050              ; 2 uses
  %i.df = icmp sgt i32 %1, 1969
  br i1 %i.df, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.dg = srem i32 %1, 100
  %i.dh = icmp ne i32 %i.dg, 0
  br label %bb.r

bb.t:                                             ; preds = %bb.r
  %.nonneg.i = sub i32 1972, %1
  %i.di = lshr i32 %.nonneg.i, 2
  %.nonneg21.i = sub i32 2000, %1                 ; 2 uses
  %.neg2324.i = udiv i32 %.nonneg21.i, 100
  %.neg23.zext.i = zext nneg i32 %.neg2324.i to i64
  %i.dj = udiv i32 %.nonneg21.i, 400
  %i.dk = add nsw i64 %i.de, %.neg23.zext.i
  %narrow.i = add nuw nsw i32 %i.di, %i.dj
  %i.dl = zext nneg i32 %narrow.i to i64
  %i.dm = sub nsw i64 %i.dk, %i.dl
  %i.dn = icmp ugt i8 %i.ad, 2
  %or.cond.i = and i1 %i.dn, %.sroa.011.0.i
  %i.do = zext i1 %or.cond.i to i64
  %spec.select.i = add nsw i64 %i.dm, %i.do
  br label %_RNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4rule21days_since_unix_epoch.exit

bb.u:                                             ; preds = %bb.r
  %i.dp = add nsw i64 %i.dc, -1968
  %i.dq = lshr i64 %i.dp, 2
  %i.dr = add nsw i64 %i.de, %i.dq
  %.lhs.trunc.i = add nsw i32 %1, -1900
  %i.ds = udiv i32 %.lhs.trunc.i, 100
  %.zext.i = zext nneg i32 %i.ds to i64
  %i.dt = sub nsw i64 %i.dr, %.zext.i
  %.lhs.trunc16.i = add nsw i32 %1, -1600
  %i.du = udiv i32 %.lhs.trunc16.i, 400
  %.zext17.i = zext nneg i32 %i.du to i64
  %i.dv = add nsw i64 %i.dt, %.zext17.i
  %i.dw = icmp ult i8 %i.ad, 3
  %or.cond1.i = and i1 %i.dw, %.sroa.011.0.i
  %i.dx = sext i1 %or.cond1.i to i64
  %spec.select15.i = add nsw i64 %i.dv, %i.dx
  br label %_RNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4rule21days_since_unix_epoch.exit

_RNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4rule21days_since_unix_epoch.exit: ; preds = %bb.t, %bb.u
  %.sroa.0.0.i = phi i64 [ %spec.select.i, %bb.t ], [ %spec.select15.i, %bb.u ]
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr @8, i64 %i.cs
  %i.dz = load i64, ptr %i.dy, align 8, !noundef !13
  %i.ea = add i64 %i.dz, %.sroa.0.0.i
  br label %bb.ab

bb.v:                                             ; preds = %bb.n
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cs, i64 noundef 12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #6
  unreachable

.split21:                                         ; preds = %bb.p
  %i.eb = add i64 %i.cy, %.sroa.014.0
  br i1 %i.aj, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.split21
  %i.ec = and i32 %1, 3
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.y, %bb.w, %.split21
  %.sroa.011.0.i35 = phi i64 [ -1, %.split21 ], [ %i.ek, %bb.y ], [ 0, %bb.w ]
  %i.ee = sext i32 %1 to i64                      ; 2 uses
  %i.ef = mul nsw i64 %i.ee, 365
  %i.eg = add nsw i64 %i.ef, -719050              ; 2 uses
  %i.eh = icmp sgt i32 %1, 1969
  br i1 %i.eh, label %bb.aa, label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.ei = srem i32 %1, 100
  %i.ej = icmp ne i32 %i.ei, 0
  %i.ek = sext i1 %i.ej to i64
  br label %bb.x

bb.z:                                             ; preds = %bb.x
  %.nonneg.i36 = sub i32 1972, %1
  %i.el = lshr i32 %.nonneg.i36, 2
  %.nonneg21.i37 = sub i32 2000, %1               ; 2 uses
  %.neg2324.i38 = udiv i32 %.nonneg21.i37, 100
  %.neg23.zext.i39 = zext nneg i32 %.neg2324.i38 to i64
  %i.em = udiv i32 %.nonneg21.i37, 400
  %i.en = add nsw i64 %i.eg, %.neg23.zext.i39
  %narrow.i40 = add nuw nsw i32 %i.el, %i.em
  %i.eo = zext nneg i32 %narrow.i40 to i64
  %i.ep = sub nsw i64 %i.en, %i.eo
  br label %_RNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4rule21days_since_unix_epoch.exit50

bb.aa:                                            ; preds = %bb.x
  %i.eq = add nsw i64 %i.ee, -1968
  %i.er = lshr i64 %i.eq, 2
  %i.es = add nsw i64 %i.eg, %i.er
  %.lhs.trunc.i44 = add nsw i32 %1, -1900
  %i.et = udiv i32 %.lhs.trunc.i44, 100
  %.zext.i45 = zext nneg i32 %i.et to i64
  %i.eu = sub nsw i64 %i.es, %.zext.i45
  %.lhs.trunc16.i46 = add nsw i32 %1, -1600
  %i.ev = udiv i32 %.lhs.trunc16.i46, 400
  %.zext17.i47 = zext nneg i32 %i.ev to i64
  %i.ew = add nsw i64 %i.eu, %.zext17.i47
  %spec.select15.i49 = add nsw i64 %i.ew, %.sroa.011.0.i35
  br label %_RNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4rule21days_since_unix_epoch.exit50

_RNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4rule21days_since_unix_epoch.exit50: ; preds = %bb.z, %bb.aa
  %.sroa.0.0.i43 = phi i64 [ %i.ep, %bb.z ], [ %spec.select15.i49, %bb.aa ]
  %i.ex = add nsw i64 %.sroa.0.0.i43, 31
  br label %bb.ab

bb.ab:                                            ; preds = %_RNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4rule21days_since_unix_epoch.exit, %_RNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4rule21days_since_unix_epoch.exit50
  %phi.call = phi i64 [ %i.ea, %_RNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4rule21days_since_unix_epoch.exit ], [ %i.ex, %_RNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4rule21days_since_unix_epoch.exit50 ]
  %.sroa.015.0 = phi i64 [ %i.cy, %_RNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4rule21days_since_unix_epoch.exit ], [ %i.eb, %_RNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4rule21days_since_unix_epoch.exit50 ]
  %i.ey = add i64 %phi.call, 4
  %i.ez = srem i64 %i.ey, 7                       ; 3 uses
  %i.fa = icmp slt i64 %i.ez, 0
  %i.fb = add nsw i64 %i.ez, 7
  %spec.select.i51 = select i1 %i.fa, i64 %i.fb, i64 %i.ez
  %i.fc = zext i8 %i.ah to i64
  %i.fd = sub nsw i64 %i.fc, %spec.select.i51
  %.lhs.trunc = trunc nsw i64 %i.fd to i16
  %i.fe = srem i16 %.lhs.trunc, 7                 ; 2 uses
  %.sext = sext i16 %i.fe to i64                  ; 2 uses
  %i.ff = icmp slt i16 %i.fe, 0
  %i.fg = add nsw i64 %.sext, 7
  %spec.select.i52 = select i1 %i.ff, i64 %i.fg, i64 %.sext
  %i.fh = zext i8 %i.af to i64
  %i.fi = mul nuw nsw i64 %i.fh, 7
  %i.fj = add nuw nsw i64 %spec.select.i52, %i.fi ; 2 uses
  %i.fk = add nsw i64 %i.fj, -6                   ; 2 uses
  %i.fl = icmp sgt i64 %i.fk, %.sroa.015.0
  %i.fm = add nsw i64 %i.fj, -13
  %spec.select = select i1 %i.fl, i64 %i.fm, i64 %i.fk
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_7RuleDay5parse(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 1), (8, 12)) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %.val = load ptr, ptr %1, align 8               ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val264 = load i64, ptr %i.i, align 8, !noundef !13 ; 3 uses
  %.not.i = icmp eq i64 %.val264, 0
  %.not338 = icmp eq ptr %.val, null
  %.not = select i1 %.not.i, i1 true, i1 %.not338
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i8, ptr %.val, align 1, !noundef !13
  switch i8 %i.j, label %bb.c [
    i8 77, label %_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact.exit
    i8 74, label %_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact.exit269
  ]

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RINvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB6_6Cursor8read_inttEBe_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  %i.k = load i8, ptr %i.d, align 8, !range !36, !noundef !13 ; 2 uses
  %.not260 = icmp eq i8 %i.k, -1
  br i1 %.not260, label %bb.w, label %bb.v

_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact.exit: ; preds = %bb.b
  %i.l = add i64 %.val264, -1
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 1
  store ptr %i.m, ptr %1, align 8, !alias.scope !82, !noalias !85
  store i64 %i.l, ptr %i.i, align 8, !alias.scope !82, !noalias !85
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !82, !noalias !85, !noundef !13
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.n, align 8, !alias.scope !82, !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RINvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB6_6Cursor8read_inthEBe_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  %i.q = load i8, ptr %i.h, align 8, !range !36, !noundef !13 ; 2 uses
  %.not254 = icmp eq i8 %i.q, -1
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.s = load i8, ptr %i.r, align 1               ; 3 uses
  br i1 %.not254, label %bb.e, label %bb.d

_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact.exit269: ; preds = %bb.b
  %i.t = add i64 %.val264, -1
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 1
  store ptr %i.u, ptr %1, align 8, !alias.scope !87, !noalias !90
  store i64 %i.t, ptr %i.i, align 8, !alias.scope !87, !noalias !90
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !87, !noalias !90, !noundef !13
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr %i.v, align 8, !alias.scope !87, !noalias !90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RINvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB6_6Cursor8read_inttEBe_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  %i.y = load i8, ptr %i.e, align 8, !range !36, !noundef !13 ; 2 uses
  %.not252 = icmp eq i8 %i.y, -1
  br i1 %.not252, label %bb.t, label %bb.s

bb.d:                                             ; preds = %_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact.exit
  %.sroa.5143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %.sroa.5146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.5146.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.5143.0..sroa_idx, i64 22, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i8 %i.q, ptr %0, align 8
  %.sroa.4145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.s, ptr %.sroa.4145.0..sroa_idx, align 1
  br label %bb.ai

bb.e:                                             ; preds = %_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.z = tail call noundef ptr @_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor8read_tag(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 1) ; 2 uses
  %.not255 = icmp eq ptr %i.z, null
  br i1 %.not255, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 6, ptr %0, align 8
  %.sroa.4301.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %.sroa.4301.0..sroa_idx, align 8
  br label %bb.ai

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RINvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB6_6Cursor8read_inthEBe_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  %i.aa = load i8, ptr %i.g, align 8, !range !36, !noundef !13 ; 2 uses
  %.not256 = icmp eq i8 %i.aa, -1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.ac = load i8, ptr %i.ab, align 1             ; 3 uses
  br i1 %.not256, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.5152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %.sroa.5155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.5155.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.5152.0..sroa_idx, i64 22, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i8 %i.aa, ptr %0, align 8
  %.sroa.4154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ac, ptr %.sroa.4154.0..sroa_idx, align 1
  br label %bb.ai

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ad = tail call noundef ptr @_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor8read_tag(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 1) ; 2 uses
  %.not257 = icmp eq ptr %i.ad, null
  br i1 %.not257, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 6, ptr %0, align 8
  %.sroa.4305.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %.sroa.4305.0..sroa_idx, align 8
end_hunk_1
begin_hunk_2_@_RNvMs2_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_7RuleDay5parse:bb.a

bb.u:                                             ; preds = %bb.t
  %.sroa.8286.4.insert.ext = zext nneg i16 %i.an to i32
  %.sroa.8286.4.insert.shift = shl nuw nsw i32 %.sroa.8286.4.insert.ext, 16
  br label %bb.r

bb.v:                                             ; preds = %bb.c
  %.sroa.4208.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.4208.0.copyload = load i8, ptr %.sroa.4208.0..sroa_idx, align 1
  %.sroa.5209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %.sroa.5209.0.copyload = load i16, ptr %.sroa.5209.0..sroa_idx, align 2
  %.sroa.6210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.6214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6214.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6210.0..sroa_idx, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i8 %i.k, ptr %0, align 8
  %.sroa.4212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4208.0.copyload, ptr %.sroa.4212.0..sroa_idx, align 1
  %.sroa.5213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %.sroa.5209.0.copyload, ptr %.sroa.5213.0..sroa_idx, align 2
  br label %bb.ai

bb.w:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.aq = load i16, ptr %i.ap, align 2, !noundef !13 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ar = icmp ugt i16 %i.aq, 365
  br i1 %i.ar, label %_RNvMs2_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_7RuleDay8julian_0.exit, label %bb.x

_RNvMs2_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_7RuleDay8julian_0.exit: ; preds = %bb.w
  store i8 12, ptr %0, align 8
  %.sroa.6227.sroa.4.0..sroa.6227.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @16, ptr %.sroa.6227.sroa.4.0..sroa.6227.0..sroa_idx.sroa_idx, align 8
  %.sroa.6227.sroa.5.0..sroa.6227.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 27, ptr %.sroa.6227.sroa.5.0..sroa.6227.0..sroa_idx.sroa_idx, align 8
  br label %bb.ai

bb.x:                                             ; preds = %bb.w
  %.sroa.8291.4.insert.ext = zext nneg i16 %i.aq to i32
  %.sroa.8291.4.insert.shift = shl nuw nsw i32 %.sroa.8291.4.insert.ext, 16
  %.sroa.8291.4.insert.insert = or disjoint i32 %.sroa.8291.4.insert.shift, 1
  br label %bb.r

bb.y:                                             ; preds = %bb.r
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !13, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i8 6, ptr %0, align 8
  %.sroa.4313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.at, ptr %.sroa.4313.0..sroa_idx, align 8
  br label %bb.ai

bb.z:                                             ; preds = %bb.r
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.av = load i8, ptr %i.au, align 1, !range !92, !noundef !13
  %i.aw = trunc nuw i8 %i.av to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.aw, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  br i1 %2, label %bb.ad, label %bb.ac

bb.ab:                                            ; preds = %bb.z, %bb.ah, %bb.af
  %.sroa.0137.0 = phi i32 [ %i.bd, %bb.ah ], [ %i.bb, %bb.af ], [ 7200, %bb.z ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.096.0, ptr %i.ax, align 4
  %.sroa.5107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0137.0, ptr %.sroa.5107.0..sroa_idx, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.ai

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4rule15parse_rule_time(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(24) %1)
  %i.ay = load i8, ptr %i.a, align 8, !range !36, !noundef !13 ; 2 uses
  %.not262 = icmp eq i8 %i.ay, -1
  br i1 %.not262, label %bb.af, label %bb.ae

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4rule24parse_rule_time_extended(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef align 8 dereferenceable(24) %1)
  %i.az = load i8, ptr %i.b, align 8, !range !36, !noundef !13 ; 2 uses
  %.not263 = icmp eq i8 %i.az, -1
  br i1 %.not263, label %bb.ah, label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %.sroa.4245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.4249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4249.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4245.0..sroa_idx, i64 3, i1 false)
  %.sroa.5246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.5246.0.copyload = load i32, ptr %.sroa.5246.0..sroa_idx, align 4
  %.sroa.6247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6251.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6247.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 %i.ay, ptr %0, align 8
  %.sroa.5250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.5246.0.copyload, ptr %.sroa.5250.0..sroa_idx, align 4
  br label %bb.ai

bb.af:                                            ; preds = %bb.ac
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ab

bb.ag:                                            ; preds = %bb.ad
  %.sroa.4233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.4237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4237.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4233.0..sroa_idx, i64 3, i1 false)
  %.sroa.5234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.5234.0.copyload = load i32, ptr %.sroa.5234.0..sroa_idx, align 4
  %.sroa.6235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6239.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6235.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i8 %i.az, ptr %0, align 8
  %.sroa.5238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.5234.0.copyload, ptr %.sroa.5238.0..sroa_idx, align 4
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ad
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ab

bb.ai:                                            ; preds = %bb.v, %_RNvMs2_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_7RuleDay8julian_0.exit, %bb.s, %_RNvMs2_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_7RuleDay8julian_1.exit, %bb.y, %bb.ae, %bb.ag, %bb.p, %bb.h, %bb.j, %bb.l, %bb.f, %bb.d, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_RNvMs2_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_7RuleDay9unix_time(ptr noalias noundef nonnull readonly align 2 captures(none) dereferenceable(4) %0, i32 noundef %1, i64 noundef range(i64 -4294967295, 4294967296) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc { i64, i64 } @_RNvMs2_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_7RuleDay15transition_date(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(4) %0, i32 noundef %1) ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0        ; 3 uses
  %i.c = srem i32 %1, 400
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %1, 3
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b, %bb.a
  %.sroa.011.0.i = phi i1 [ true, %bb.a ], [ %i.l, %bb.d ], [ false, %bb.b ] ; 2 uses
  %i.g = sext i32 %1 to i64                       ; 2 uses
  %i.h = mul nsw i64 %i.g, 365
  %i.i = add nsw i64 %i.h, -719050                ; 2 uses
  %i.j = icmp sgt i32 %1, 1969
  br i1 %i.j, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = srem i32 %1, 100
  %i.l = icmp ne i32 %i.k, 0
  br label %bb.c

bb.e:                                             ; preds = %bb.c
  %.nonneg.i = sub i32 1972, %1
  %i.m = lshr i32 %.nonneg.i, 2
  %.nonneg21.i = sub i32 2000, %1                 ; 2 uses
  %.neg2324.i = udiv i32 %.nonneg21.i, 100
  %.neg23.zext.i = zext nneg i32 %.neg2324.i to i64
  %i.n = udiv i32 %.nonneg21.i, 400
  %i.o = add nsw i64 %i.i, %.neg23.zext.i
  %narrow.i = add nuw nsw i32 %i.m, %i.n
  %i.p = zext nneg i32 %narrow.i to i64
  %i.q = sub nsw i64 %i.o, %i.p
  %i.r = icmp samesign ugt i64 %i.b, 2
  %or.cond.i = and i1 %i.r, %.sroa.011.0.i
  %i.s = zext i1 %or.cond.i to i64
  %spec.select.i = add nsw i64 %i.q, %i.s
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.t = add nsw i64 %i.g, -1968
  %i.u = lshr i64 %i.t, 2
  %i.v = add nsw i64 %i.i, %i.u
  %.lhs.trunc.i = add nsw i32 %1, -1900
  %i.w = udiv i32 %.lhs.trunc.i, 100
  %.zext.i = zext nneg i32 %i.w to i64
  %i.x = sub nsw i64 %i.v, %.zext.i
  %.lhs.trunc16.i = add nsw i32 %1, -1600
  %i.y = udiv i32 %.lhs.trunc16.i, 400
  %.zext17.i = zext nneg i32 %i.y to i64
  %i.z = add nsw i64 %i.x, %.zext17.i
  %i.aa = icmp samesign ult i64 %i.b, 3
  %or.cond1.i = and i1 %i.aa, %.sroa.011.0.i
  %i.ab = sext i1 %or.cond1.i to i64
  %spec.select15.i = add nsw i64 %i.z, %i.ab
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i = phi i64 [ %spec.select.i, %bb.e ], [ %spec.select15.i, %bb.f ]
  %i.ac = add nsw i64 %i.b, -1                    ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 12
  br i1 %i.ad, label %_RNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4rule21days_since_unix_epoch.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ac, i64 noundef 12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #6
  unreachable

_RNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4rule21days_since_unix_epoch.exit: ; preds = %bb.g
  %i.ae = extractvalue { i64, i64 } %i.a, 1
  %i.af = getelementptr inbounds nuw [8 x i8], ptr @8, i64 %i.ac
  %i.ag = load i64, ptr %i.af, align 8, !noundef !13
  %i.ah = add i64 %i.ae, -1
  %i.ai = add i64 %i.ah, %.sroa.0.0.i
  %i.aj = add i64 %i.ai, %i.ag
  %i.ak = mul i64 %i.aj, 86400
  %i.al = add i64 %i.ak, %2
  ret i64 %i.al
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4rule12parse_hhmmss(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 1), (8, 16)) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RINvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB6_6Cursor8read_intlEBe_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  %i.f = load i8, ptr %i.e, align 8, !range !36, !noundef !13 ; 2 uses
  %.not = icmp eq i8 %i.f, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.457.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.453.0..sroa_idx, i64 3, i1 false)
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.sroa.554.0.copyload = load i32, ptr %.sroa.554.0..sroa_idx, align 4
  %.sroa.655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.659.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.659.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.655.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i8 %i.f, ptr %0, align 8
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.554.0.copyload, ptr %.sroa.558.0..sroa_idx, align 4
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.h = load i32, ptr %i.g, align 4, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor17read_optional_tag(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 1)
  %i.i = load i8, ptr %i.d, align 8, !range !92, !noundef !13
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !13, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i8 6, ptr %0, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %.sroa.462.0..sroa_idx, align 8
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.n = load i8, ptr %i.m, align 1, !range !92, !noundef !13
  %i.o = trunc nuw i8 %i.n to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RINvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB6_6Cursor8read_intlEBe_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  %i.p = load i8, ptr %i.c, align 8, !range !36, !noundef !13 ; 2 uses
  %.not92 = icmp eq i8 %i.p, -1
  br i1 %.not92, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.k, %bb.e, %bb.n
  %.sroa.026.0 = phi i32 [ %i.s, %bb.n ], [ 0, %bb.e ], [ %i.s, %bb.k ]
  %.sroa.044.0 = phi i32 [ %i.ac, %bb.n ], [ 0, %bb.e ], [ 0, %bb.k ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.h, ptr %i.q, align 4
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.026.0, ptr %.sroa.446.0..sroa_idx, align 8
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.044.0, ptr %.sroa.547.0..sroa_idx, align 4
  store i8 -1, ptr %0, align 8
  br label %bb.o

bb.h:                                             ; preds = %bb.f
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.473.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.469.0..sroa_idx, i64 3, i1 false)
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.570.0.copyload = load i32, ptr %.sroa.570.0..sroa_idx, align 4
  %.sroa.671.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.675.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.675.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.671.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i8 %i.p, ptr %0, align 8
  %.sroa.574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.570.0.copyload, ptr %.sroa.574.0..sroa_idx, align 4
  br label %bb.o

bb.i:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.s = load i32, ptr %i.r, align 4, !noundef !13 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor17read_optional_tag(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 1)
  %i.t = load i8, ptr %i.b, align 8, !range !92, !noundef !13
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !13, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i8 6, ptr %0, align 8
  %.sroa.478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %.sroa.478.0..sroa_idx, align 8
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.y = load i8, ptr %i.x, align 1, !range !92, !noundef !13
  %i.z = trunc nuw i8 %i.y to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.z, label %bb.l, label %bb.g

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB6_6Cursor8read_intlEBe_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  %i.aa = load i8, ptr %i.a, align 8, !range !36, !noundef !13 ; 2 uses
  %.not93 = icmp eq i8 %i.aa, -1
  br i1 %.not93, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.489.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.485.0..sroa_idx, i64 3, i1 false)
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.586.0.copyload = load i32, ptr %.sroa.586.0..sroa_idx, align 4
  %.sroa.687.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.691.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.691.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.687.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 %i.aa, ptr %0, align 8
  %.sroa.590.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.586.0.copyload, ptr %.sroa.590.0..sroa_idx, align 4
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.o:                                             ; preds = %bb.b, %bb.m, %bb.j, %bb.h, %bb.d, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4rule12parse_offset(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 1)) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !93, !noalias !96, !noundef !13 ; 2 uses
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !alias.scope !93, !noalias !96, !nonnull !13, !noundef !13 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !noalias !98, !noundef !13 ; 2 uses
  switch i8 %i.e, label %bb.c [
    i8 43, label %bb.d
    i8 45, label %bb.d
  ]

bb.c:                                             ; preds = %bb.d, %bb.b, %bb.a
  %.sroa.0.0.i = phi i32 [ 1, %bb.b ], [ 1, %bb.a ], [ %spec.select.i, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !98
  call fastcc void @_RNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4rule12parse_hhmmss(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !96
  %i.f = load i8, ptr %i.a, align 8, !range !36, !noalias !98, !noundef !13 ; 2 uses
  %.not48.i = icmp eq i8 %i.f, -1
  br i1 %.not48.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.b
  %i.g = add i64 %i.c, -1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.h, ptr %1, align 8, !alias.scope !99, !noalias !102
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !99, !noalias !102
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !99, !noalias !102, !noundef !13
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !alias.scope !99, !noalias !102
  %i.l = icmp eq i8 %i.e, 45
  %spec.select.i = select i1 %i.l, i32 -1, i32 1
  br label %bb.c

end_hunk_2
begin_hunk_3_@_RNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4rule15parse_rule_time:bb.a
_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECscShS5OxKAqE_6chrono.exit52.thread: ; preds = %bb.d
  store i8 5, ptr %0, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @24, ptr %.sroa.421.0..sroa_idx, align 8
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 23, ptr %.sroa.522.0..sroa_idx, align 8
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %or.cond62 = icmp ult i32 %.sroa.529.0.copyload, 60
  br i1 %or.cond62, label %bb.f, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECscShS5OxKAqE_6chrono.exit55.thread

_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECscShS5OxKAqE_6chrono.exit55.thread: ; preds = %bb.e
  store i8 5, ptr %0, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @25, ptr %.sroa.425.0..sroa_idx, align 8
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 23, ptr %.sroa.526.0..sroa_idx, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.e = mul nuw nsw i32 %.sroa.027.0.copyload, 3600
  %i.f = mul nuw nsw i32 %.sroa.428.0.copyload, 60
  %i.g = add nuw nsw i32 %i.f, %i.e
  %i.h = add nuw nsw i32 %i.g, %.sroa.529.0.copyload
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.h, ptr %i.i, align 4
  store i8 -1, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECscShS5OxKAqE_6chrono.exit.thread, %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECscShS5OxKAqE_6chrono.exit52.thread, %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECscShS5OxKAqE_6chrono.exit55.thread, %bb.f, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4rule24parse_rule_time_extended(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 1)) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !104, !noalias !107, !noundef !13 ; 2 uses
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !alias.scope !104, !noalias !107, !nonnull !13, !noundef !13 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !noalias !109, !noundef !13 ; 2 uses
  switch i8 %i.e, label %bb.c [
    i8 43, label %bb.d
    i8 45, label %bb.d
  ]

bb.c:                                             ; preds = %bb.d, %bb.b, %bb.a
  %.sroa.0.0.i = phi i32 [ 1, %bb.b ], [ 1, %bb.a ], [ %spec.select.i, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !109
  call fastcc void @_RNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4rule12parse_hhmmss(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !107
  %i.f = load i8, ptr %i.a, align 8, !range !36, !noalias !109, !noundef !13 ; 2 uses
  %.not48.i = icmp eq i8 %i.f, -1
  br i1 %.not48.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.b
  %i.g = add i64 %i.c, -1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.h, ptr %1, align 8, !alias.scope !110, !noalias !113
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !110, !noalias !113
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !110, !noalias !113, !noundef !13
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !alias.scope !110, !noalias !113
  %i.l = icmp eq i8 %i.e, 45
  %spec.select.i = select i1 %i.l, i32 -1, i32 1
  br label %bb.c

bb.e:                                             ; preds = %bb.c
  %.sroa.437.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.449.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.437.0..sroa_idx.i, i64 3, i1 false)
  %.sroa.538.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.740.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.740.0.copyload.i = load i32, ptr %.sroa.740.0..sroa_idx.i, align 4, !noalias !109
  %.sroa.841.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.841.0.copyload.i = load i64, ptr %.sroa.841.0..sroa_idx.i, align 8, !noalias !109
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load <2 x i32>, ptr %.sroa.538.0..sroa_idx.i, align 4, !noalias !109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !109
  store i8 %i.f, ptr %0, align 8
  store <2 x i32> %i.m, ptr %.sroa.550.0..sroa_idx, align 4
  %.sroa.752.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.740.0.copyload.i, ptr %.sroa.752.0..sroa_idx, align 4
  %.sroa.853.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.841.0.copyload.i, ptr %.sroa.853.0..sroa_idx, align 8
  br label %bb.j

bb.f:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.027.0.copyload.i = load i32, ptr %i.n, align 4, !noalias !109 ; 2 uses
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.428.0.copyload.i = load i32, ptr %.sroa.428.0..sroa_idx.i, align 8, !noalias !109 ; 2 uses
  %.sroa.529.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.529.0.copyload.i = load i32, ptr %.sroa.529.0..sroa_idx.i, align 4, !noalias !109 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !109
  %i.o = add i32 %.sroa.027.0.copyload.i, 167
  %or.cond = icmp ult i32 %i.o, 335
  br i1 %or.cond, label %bb.g, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECscShS5OxKAqE_6chrono.exit.thread

_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECscShS5OxKAqE_6chrono.exit.thread: ; preds = %bb.f
  store i8 5, ptr %0, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @23, ptr %.sroa.420.0..sroa_idx, align 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 21, ptr %.sroa.521.0..sroa_idx, align 8
  br label %bb.j

bb.g:                                             ; preds = %bb.f
  %or.cond86 = icmp ult i32 %.sroa.428.0.copyload.i, 60
  br i1 %or.cond86, label %bb.h, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECscShS5OxKAqE_6chrono.exit61.thread

_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECscShS5OxKAqE_6chrono.exit61.thread: ; preds = %bb.g
  store i8 5, ptr %0, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @24, ptr %.sroa.424.0..sroa_idx, align 8
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 23, ptr %.sroa.525.0..sroa_idx, align 8
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %or.cond87 = icmp ult i32 %.sroa.529.0.copyload.i, 60
  br i1 %or.cond87, label %bb.i, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECscShS5OxKAqE_6chrono.exit64.thread

_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECscShS5OxKAqE_6chrono.exit64.thread: ; preds = %bb.h
  store i8 5, ptr %0, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @25, ptr %.sroa.428.0..sroa_idx, align 8
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 23, ptr %.sroa.529.0..sroa_idx, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.p = mul nsw i32 %.sroa.027.0.copyload.i, 3600
  %i.q = mul nuw nsw i32 %.sroa.428.0.copyload.i, 60
  %i.r = add nsw i32 %i.q, %i.p
  %i.s = add nsw i32 %i.r, %.sroa.529.0.copyload.i
  %i.t = mul nsw i32 %i.s, %.sroa.0.0.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.t, ptr %i.u, align 4
  store i8 -1, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECscShS5OxKAqE_6chrono.exit.thread, %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECscShS5OxKAqE_6chrono.exit61.thread, %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECscShS5OxKAqE_6chrono.exit64.thread, %bb.i, %bb.e
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor8read_tag(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezoneNtB5_13LocalTimeType3new(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i32 noundef, i1 noundef zeroext, ptr noalias noundef readonly captures(address, read_provenance), i64) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #3

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB6_6Cursor8read_inthEBe_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB6_6Cursor8read_inttEBe_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor17read_optional_tag(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB6_6Cursor10read_untilNCNvNtB8_4rule10parse_name0EBe_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB6_6Cursor10read_whileNvMs4_NtCs4NRVxsYgnAr_4core3numh19is_ascii_alphabeticEBe_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB6_6Cursor8read_intlEBe_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor3new: argument 0"}
!5 = distinct !{!5, !"_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor3new"}
!6 = !{!7}
!7 = distinct !{!7, !5, !"_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor3new: argument 1"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_RNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4rule10parse_name: argument 1"}
!10 = distinct !{!10, !"_RNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4rule10parse_name"}
!11 = !{!12, !9}
!12 = distinct !{!12, !10, !"_RNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4rule10parse_name: argument 0"}
!13 = !{}
!14 = !{!12}
!15 = !{!16, !9}
!16 = distinct !{!16, !17, !"_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact: argument 1"}
!17 = distinct !{!17, !"_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact"}
!18 = !{!19, !12}
!19 = distinct !{!19, !17, !"_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact: argument 0"}
!20 = !{!21, !9}
!21 = distinct !{!21, !22, !"_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact: argument 1"}
!22 = distinct !{!22, !"_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact"}
!23 = !{!24, !12}
!24 = distinct !{!24, !22, !"_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact: argument 0"}
!25 = !{!26, !28}
!26 = distinct !{!26, !27, !"_RNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4rule19parse_signed_hhmmss: argument 1"}
!27 = distinct !{!27, !"_RNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4rule19parse_signed_hhmmss"}
!28 = distinct !{!28, !29, !"_RNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4rule12parse_offset: argument 1"}
!29 = distinct !{!29, !"_RNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4rule12parse_offset"}
!30 = !{!31, !32}
!31 = distinct !{!31, !27, !"_RNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4rule19parse_signed_hhmmss: argument 0"}
!32 = distinct !{!32, !29, !"_RNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4rule12parse_offset: argument 0"}
!33 = !{!28}
!34 = !{!26}
!35 = !{!31, !26, !32, !28}
!36 = !{i8 -1, i8 16}
!37 = !{!38, !26, !28}
!38 = distinct !{!38, !39, !"_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact: argument 1"}
!39 = distinct !{!39, !"_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact"}
!40 = !{!41, !31, !32}
!41 = distinct !{!41, !39, !"_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact: argument 0"}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_RNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4rule10parse_name: argument 1"}
!44 = distinct !{!44, !"_RNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4rule10parse_name"}
!45 = !{!46}
!46 = distinct !{!46, !44, !"_RNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4rule10parse_name: argument 0"}
!47 = !{!46, !43}
!48 = !{!49, !43}
!49 = distinct !{!49, !50, !"_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact: argument 1"}
!50 = distinct !{!50, !"_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact"}
!51 = !{!52, !46}
!52 = distinct !{!52, !50, !"_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact: argument 0"}
!53 = !{!54, !43}
!54 = distinct !{!54, !55, !"_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact: argument 1"}
!55 = distinct !{!55, !"_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact"}
!56 = !{!57, !46}
!57 = distinct !{!57, !55, !"_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact: argument 0"}
!58 = !{i8 0, i8 3}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_RNvMs1_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_13AlternateTime20find_local_time_type: argument 0"}
!61 = distinct !{!61, !"_RNvMs1_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_13AlternateTime20find_local_time_type"}
!62 = !{!63}
!63 = distinct !{!63, !61, !"_RNvMs1_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_13AlternateTime20find_local_time_type: argument 1"}
!64 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!65 = !{i32 1, i32 0}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_RNvMs1_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_13AlternateTime31find_local_time_type_from_local: argument 0"}
!68 = distinct !{!68, !"_RNvMs1_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_13AlternateTime31find_local_time_type_from_local"}
!69 = !{!70}
!70 = distinct !{!70, !68, !"_RNvMs1_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4ruleNtB5_13AlternateTime31find_local_time_type_from_local: argument 1"}
!71 = !{!67, !70}
!72 = !{!73}
!73 = distinct !{!73, !74, !"_RINvMNtCs4NRVxsYgnAr_4core5sliceSx16binary_search_byNCNvB2_13binary_search0ECscShS5OxKAqE_6chrono: argument 0"}
!74 = distinct !{!74, !"_RINvMNtCs4NRVxsYgnAr_4core5sliceSx16binary_search_byNCNvB2_13binary_search0ECscShS5OxKAqE_6chrono"}
!75 = !{!76}
!76 = distinct !{!76, !74, !"_RINvMNtCs4NRVxsYgnAr_4core5sliceSx16binary_search_byNCNvB2_13binary_search0ECscShS5OxKAqE_6chrono: argument 1"}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_RINvMNtCs4NRVxsYgnAr_4core5sliceSx16binary_search_byNCNvB2_13binary_search0ECscShS5OxKAqE_6chrono: argument 0"}
!79 = distinct !{!79, !"_RINvMNtCs4NRVxsYgnAr_4core5sliceSx16binary_search_byNCNvB2_13binary_search0ECscShS5OxKAqE_6chrono"}
!80 = !{!81}
!81 = distinct !{!81, !79, !"_RINvMNtCs4NRVxsYgnAr_4core5sliceSx16binary_search_byNCNvB2_13binary_search0ECscShS5OxKAqE_6chrono: argument 1"}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact: argument 1"}
!84 = distinct !{!84, !"_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact"}
!85 = !{!86}
!86 = distinct !{!86, !84, !"_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact: argument 0"}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact: argument 1"}
!89 = distinct !{!89, !"_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact"}
!90 = !{!91}
!91 = distinct !{!91, !89, !"_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact: argument 0"}
!92 = !{i8 0, i8 2}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_RNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4rule19parse_signed_hhmmss: argument 1"}
!95 = distinct !{!95, !"_RNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4rule19parse_signed_hhmmss"}
!96 = !{!97}
!97 = distinct !{!97, !95, !"_RNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4rule19parse_signed_hhmmss: argument 0"}
!98 = !{!97, !94}
!99 = !{!100, !94}
!100 = distinct !{!100, !101, !"_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact: argument 1"}
!101 = distinct !{!101, !"_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact"}
!102 = !{!103, !97}
!103 = distinct !{!103, !101, !"_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact: argument 0"}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_RNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4rule19parse_signed_hhmmss: argument 1"}
!106 = distinct !{!106, !"_RNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4rule19parse_signed_hhmmss"}
!107 = !{!108}
!108 = distinct !{!108, !106, !"_RNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info4rule19parse_signed_hhmmss: argument 0"}
!109 = !{!108, !105}
!110 = !{!111, !105}
!111 = distinct !{!111, !112, !"_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact: argument 1"}
!112 = distinct !{!112, !"_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact"}
!113 = !{!114, !108}
!114 = distinct !{!114, !112, !"_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact: argument 0"}
end_hunk_3
