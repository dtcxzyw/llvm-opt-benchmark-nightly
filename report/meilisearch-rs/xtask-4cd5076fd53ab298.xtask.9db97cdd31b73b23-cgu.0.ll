Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/xtask-4cd5076fd53ab298.xtask.9db97cdd31b73b23-cgu.0?download=true
inline.NumInlined: 15191
inline.NumDeleted: 6593
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 95
begin_hunk_0_@"_ZN10serde_json5value2de82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$11deserialize17h0eac9bb75c42c276E":bb.a
  br i1 %.not.i58.1, label %bb.i, label %bb.k, !prof !2978

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5532), !noalias !5492
  %exitcond.not.i57.2 = icmp eq i64 %i.bx, %umax.i55
  br i1 %exitcond.not.i57.2, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i61", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !noalias !5534, !noundef !8
  %i.ca = add i64 %i.bk, 4
  store i64 %i.ca, ptr %i.be, align 8, !alias.scope !5535, !noalias !5527
  %.not.i58.2 = icmp eq i8 %i.bz, 108
  br i1 %.not.i58.2, label %bb.ag, label %bb.k, !prof !2978

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i61": ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !5536
  store i64 5, ptr %i.m, align 8, !noalias !5536
  %i.cb = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h76a61760c98b61bbE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m), !noalias !5537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5536
  br label %bb.af

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !5536
  store i64 9, ptr %i.l, align 8, !noalias !5536
  %i.cc = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h76a61760c98b61bbE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l), !noalias !5537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5536
  br label %bb.af

bb.l:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h98aada7194e8b809E.exit"
  %i.cd = add i64 %i.bk, 1                        ; 4 uses
  store i64 %i.cd, ptr %i.be, align 8, !alias.scope !5538, !noalias !5492
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5541)
  %umax.i46 = tail call i64 @llvm.umax.i64(i64 %i.cd, i64 %i.bg) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5544), !noalias !5492
  %exitcond.not.i48.not = icmp ult i64 %i.cd, %i.bg
  br i1 %exitcond.not.i48.not, label %bb.m, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i52"

bb.m:                                             ; preds = %bb.l
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !noalias !5547, !noundef !8
  %i.cg = add i64 %i.bk, 2                        ; 3 uses
  store i64 %i.cg, ptr %i.be, align 8, !alias.scope !5550, !noalias !5551
  %.not.i49 = icmp eq i8 %i.cf, 114
  br i1 %.not.i49, label %bb.n, label %bb.r, !prof !2978

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5552), !noalias !5492
  %exitcond.not.i48.1 = icmp eq i64 %i.cg, %umax.i46
  br i1 %exitcond.not.i48.1, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i52", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !noalias !5554, !noundef !8
  %i.cj = add i64 %i.bk, 3                        ; 3 uses
  store i64 %i.cj, ptr %i.be, align 8, !alias.scope !5555, !noalias !5551
  %.not.i49.1 = icmp eq i8 %i.ci, 117
  br i1 %.not.i49.1, label %bb.p, label %bb.r, !prof !2978

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5556), !noalias !5492
  %exitcond.not.i48.2 = icmp eq i64 %i.cj, %umax.i46
  br i1 %exitcond.not.i48.2, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i52", label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !noalias !5558, !noundef !8
  %i.cm = add i64 %i.bk, 4
  store i64 %i.cm, ptr %i.be, align 8, !alias.scope !5559, !noalias !5551
  %.not.i49.2 = icmp eq i8 %i.cl, 101
  br i1 %.not.i49.2, label %bb.aj, label %bb.r, !prof !2978

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i52": ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !5560
  store i64 5, ptr %i.o, align 8, !noalias !5560
  %i.cn = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h76a61760c98b61bbE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o), !noalias !5561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !5560
  br label %bb.ai

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !5560
  store i64 9, ptr %i.n, align 8, !noalias !5560
  %i.co = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h76a61760c98b61bbE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.n), !noalias !5561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5560
  br label %bb.ai

bb.s:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h98aada7194e8b809E.exit"
  %i.cp = add i64 %i.bk, 1                        ; 4 uses
  store i64 %i.cp, ptr %i.be, align 8, !alias.scope !5562, !noalias !5492
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5565)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.cp, i64 %i.bg) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5568), !noalias !5492
  %exitcond.not.i.not = icmp ult i64 %i.cp, %i.bg
  br i1 %exitcond.not.i.not, label %bb.t, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i"

bb.t:                                             ; preds = %bb.s
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !noalias !5571, !noundef !8
  %i.cs = add i64 %i.bk, 2                        ; 3 uses
  store i64 %i.cs, ptr %i.be, align 8, !alias.scope !5574, !noalias !5575
  %.not.i42 = icmp eq i8 %i.cr, 97
  br i1 %.not.i42, label %bb.u, label %bb.aa, !prof !2978

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5576), !noalias !5492
  %exitcond.not.i.1 = icmp eq i64 %i.cs, %umax.i
  br i1 %exitcond.not.i.1, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i", label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !noalias !5578, !noundef !8
  %i.cv = add i64 %i.bk, 3                        ; 3 uses
  store i64 %i.cv, ptr %i.be, align 8, !alias.scope !5579, !noalias !5575
  %.not.i42.1 = icmp eq i8 %i.cu, 108
  br i1 %.not.i42.1, label %bb.w, label %bb.aa, !prof !2978

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5580), !noalias !5492
  %exitcond.not.i.2 = icmp eq i64 %i.cv, %umax.i
  br i1 %exitcond.not.i.2, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i", label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !noalias !5582, !noundef !8
  %i.cy = add i64 %i.bk, 4                        ; 3 uses
  store i64 %i.cy, ptr %i.be, align 8, !alias.scope !5583, !noalias !5575
  %.not.i42.2 = icmp eq i8 %i.cx, 115
  br i1 %.not.i42.2, label %bb.y, label %bb.aa, !prof !2978

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5584), !noalias !5492
  %exitcond.not.i.3 = icmp eq i64 %i.cy, %umax.i
  br i1 %exitcond.not.i.3, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !noalias !5586, !noundef !8
  %i.db = add i64 %i.bk, 5
  store i64 %i.db, ptr %i.be, align 8, !alias.scope !5587, !noalias !5575
  %.not.i42.3 = icmp eq i8 %i.da, 101
  br i1 %.not.i42.3, label %bb.al, label %bb.aa, !prof !2978

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i": ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !5588
  store i64 5, ptr %i.q, align 8, !noalias !5588
  %i.dc = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h76a61760c98b61bbE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.q), !noalias !5589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5588
  br label %bb.ak

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !5588
  store i64 9, ptr %i.p, align 8, !noalias !5588
  %i.dd = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h76a61760c98b61bbE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p), !noalias !5589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !5588
  br label %bb.ak

bb.ab:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h98aada7194e8b809E.exit"
  %i.de = add i64 %i.bk, 1
  store i64 %i.de, ptr %i.be, align 8, !alias.scope !5590, !noalias !5492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !5512
  call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17hac0c276490b9e118E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.bc, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, i1 noundef zeroext false), !noalias !5492, !inline_history !5513
  %i.df = load i64, ptr %i.bc, align 8, !range !2364, !noalias !5512, !noundef !8 ; 2 uses
  %i.dg = icmp eq i64 %i.df, 3
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  br i1 %i.dg, label %bb.am, label %bb.an

bb.ac:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h98aada7194e8b809E.exit"
  %i.di = add i64 %i.bk, 1
  store i64 %i.di, ptr %i.be, align 8, !alias.scope !5593, !noalias !5492
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.dj, align 8, !alias.scope !5495, !noalias !5492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !5512
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ba, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !5492, !inline_history !5513
  %i.dk = load i64, ptr %i.ba, align 8, !range !479, !noalias !5512, !noundef !8 ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 2
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !noalias !5512 ; 4 uses
  br i1 %i.dl, label %bb.as, label %bb.at

bb.ad:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h98aada7194e8b809E.exit"
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.dp = load i8, ptr %i.do, align 8, !range !610, !alias.scope !5495, !noalias !5492, !noundef !8
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %bb.bc, label %bb.bb

bb.ae:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h98aada7194e8b809E.exit"
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 8, !range !610, !alias.scope !5495, !noalias !5492, !noundef !8
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.cv, label %bb.cu

bb.af:                                            ; preds = %bb.k, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i61"
  %.sroa.0.1.i60.ph = phi ptr [ %i.cb, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i61" ], [ %i.cc, %bb.k ]
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i60.ph, ptr %i.du, align 8, !alias.scope !5492, !noalias !5495
  store i64 -9223372036854775803, ptr %0, align 8, !alias.scope !5492, !noalias !5495
  br label %bb.ah

bb.ag:                                            ; preds = %bb.j
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.36.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h00942df1743577daE.exit"

bb.ah:                                            ; preds = %bb.fo, %bb.ew, %bb.bz, %bb.as, %bb.am, %bb.ak, %bb.ai, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h00942df1743577daE.exit"

bb.ai:                                            ; preds = %bb.r, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i52"
  %.sroa.0.1.i51.ph = phi ptr [ %i.cn, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i52" ], [ %i.co, %bb.r ]
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i51.ph, ptr %i.dv, align 8, !alias.scope !5492, !noalias !5495
  store i64 -9223372036854775803, ptr %0, align 8, !alias.scope !5492, !noalias !5495
  br label %bb.ah

bb.aj:                                            ; preds = %bb.q
  store i64 -9223372036854775807, ptr %0, align 8
  %.sroa.36.0..sroa_idx620 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %.sroa.36.0..sroa_idx620, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h00942df1743577daE.exit"

bb.ak:                                            ; preds = %bb.aa, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i"
  %.sroa.0.1.i44.ph = phi ptr [ %i.dc, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i" ], [ %i.dd, %bb.aa ]
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i44.ph, ptr %i.dw, align 8, !alias.scope !5492, !noalias !5495
  store i64 -9223372036854775803, ptr %0, align 8, !alias.scope !5492, !noalias !5495
  br label %bb.ah

bb.al:                                            ; preds = %bb.z
  store i64 -9223372036854775807, ptr %0, align 8
  %.sroa.36.0..sroa_idx622 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.36.0..sroa_idx622, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h00942df1743577daE.exit"

bb.am:                                            ; preds = %bb.ab
  %i.dx = load ptr, ptr %i.dh, align 8, !noalias !5512, !nonnull !8, !align !461, !noundef !8
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dx, ptr %i.dy, align 8, !alias.scope !5492, !noalias !5495
  store i64 -9223372036854775803, ptr %0, align 8, !alias.scope !5492, !noalias !5495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !5512
  br label %bb.ah

bb.an:                                            ; preds = %bb.ab
  %.sroa.4.0.copyload = load i64, ptr %i.dh, align 8, !noalias !5512 ; 3 uses
  switch i64 %i.df, label %default.unreachable960 [
    i64 0, label %bb.ao
    i64 1, label %bb.ar
    i64 2, label %bb.aq
  ]

default.unreachable960:                           ; preds = %bb.fp, %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.an
  %i.dz = bitcast i64 %.sroa.4.0.copyload to double
  %i.ea = tail call double @llvm.fabs.f64(double %i.dz)
  %i.eb = fcmp ueq double %i.ea, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !5596
  br i1 %i.eb, label %"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417hb94c5a8d62df9b37E.exit.i33", label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i64 -9223372036854775808, ptr %i.r, align 8, !noalias !5596
  call fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h1c45b7324ac9ef4bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.r), !noalias !5602
  br label %"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417hb94c5a8d62df9b37E.exit.i33"

"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417hb94c5a8d62df9b37E.exit.i33": ; preds = %bb.ap, %bb.ao
  %.sroa.07.013.i.i34 = phi i64 [ 2, %bb.ap ], [ 3, %bb.ao ]
  %.sroa.0.0.i.i35 = phi i64 [ -9223372036854775806, %bb.ap ], [ -9223372036854775808, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !5596
  br label %bb.ar

bb.aq:                                            ; preds = %bb.an
  %.lobit.i.i.i28 = lshr i64 %.sroa.4.0.copyload, 63
  br label %bb.ar

bb.ar:                                            ; preds = %bb.an, %bb.aq, %"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417hb94c5a8d62df9b37E.exit.i33"
  %.sink = phi i64 [ -9223372036854775806, %bb.aq ], [ %.sroa.0.0.i.i35, %"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417hb94c5a8d62df9b37E.exit.i33" ], [ -9223372036854775806, %bb.an ]
  %.lobit.i.i.i28.sink = phi i64 [ %.lobit.i.i.i28, %bb.aq ], [ %.sroa.07.013.i.i34, %"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417hb94c5a8d62df9b37E.exit.i33" ], [ 0, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !5512
  store i64 %.sink, ptr %0, align 8
  %.sroa.36.0..sroa_idx624 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lobit.i.i.i28.sink, ptr %.sroa.36.0..sroa_idx624, align 8
  %.sroa.50.0..sroa_idx642 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.copyload, ptr %.sroa.50.0..sroa_idx642, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h00942df1743577daE.exit"

bb.as:                                            ; preds = %bb.ac
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dn, ptr %i.ec, align 8, !alias.scope !5492, !noalias !5495
  store i64 -9223372036854775803, ptr %0, align 8, !alias.scope !5492, !noalias !5495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !5512
  br label %bb.ah

bb.at:                                            ; preds = %bb.ac
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !5512 ; 13 uses
  %i.ed = trunc nuw i64 %i.dk to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dn) ]
  %i.ee = icmp slt i64 %.sroa.4.0.copyload.i, 0   ; 2 uses
  br i1 %i.ed, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  br i1 %i.ee, label %bb.av, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !807

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.au
  %i.ef = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %i.ef, label %bb.ba, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !5606
  %i.eg = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.sroa.4.0.copyload.i, i64 noundef range(i64 1, 9) 1) #47, !noalias !5606 ; 2 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %bb.av, label %bb.ba

bb.av:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i", %bb.au
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i" ], [ 0, %bb.au ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.sroa.4.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1765) #54, !noalias !5617
  unreachable

bb.aw:                                            ; preds = %bb.at
  br i1 %i.ee, label %bb.ax, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !807

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.aw
  %i.ei = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %i.ei, label %bb.az, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !5618
  %i.ej = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.sroa.4.0.copyload.i, i64 noundef range(i64 1, 9) 1) #47, !noalias !5618 ; 2 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i", %bb.aw
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i" ], [ 0, %bb.aw ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %.sroa.4.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1765) #54, !noalias !5632
  unreachable

bb.ay:                                            ; preds = %bb.fm, %bb.ct
  %.sroa.36.sroa.34.sroa.0.0.in.in = phi i64 [ %i.qh, %bb.fm ], [ %.sroa.36.sroa.34.sroa.0.2.in.in, %bb.ct ]
  %i.el = inttoptr i64 %.sroa.36.sroa.34.sroa.0.0.in.in to ptr
  %i.em = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h2db3c445fd96cae1E(ptr noalias noundef nonnull align 8 %i.el, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !5492
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.em, ptr %i.en, align 8, !alias.scope !5492, !noalias !5495
  store i64 -9223372036854775803, ptr %0, align 8, !alias.scope !5492, !noalias !5495
  br label %bb.fl

bb.az:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.ej, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i" ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 1 %i.dn, i64 %.sroa.4.0.copyload.i, i1 false), !noalias !5633
  %i.eo = ptrtoint ptr %.sroa.10.0.i.i.i.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !5512
  store i64 -9223372036854775805, ptr %0, align 8
  %.sroa.36.0..sroa_idx626 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.36.0..sroa_idx626, align 8
  %.sroa.50.0..sroa_idx644 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.eo, ptr %.sroa.50.0..sroa_idx644, align 8
  %.sroa.54.0..sroa_idx662 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.54.0..sroa_idx662, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h00942df1743577daE.exit"

bb.ba:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.eg, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i" ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %i.dn, i64 %.sroa.4.0.copyload.i, i1 false), !noalias !5634
  %i.ep = ptrtoint ptr %.sroa.10.0.i.i.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !5512
  store i64 -9223372036854775805, ptr %0, align 8
  %.sroa.36.0..sroa_idx628 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.36.0..sroa_idx628, align 8
  %.sroa.50.0..sroa_idx646 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ep, ptr %.sroa.50.0..sroa_idx646, align 8
  %.sroa.54.0..sroa_idx664 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.54.0..sroa_idx664, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h00942df1743577daE.exit"

bb.bb:                                            ; preds = %bb.ad
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.er = load i8, ptr %i.eq, align 1, !alias.scope !5495, !noalias !5492, !noundef !8
  %i.es = add i8 %i.er, -1                        ; 2 uses
  store i8 %i.es, ptr %i.eq, align 1, !alias.scope !5495, !noalias !5492
  %i.et = icmp eq i8 %i.es, 0
  br i1 %i.et, label %bb.bz, label %bb.bc, !prof !14

bb.bc:                                            ; preds = %bb.bb, %bb.ad
  %i.eu = add i64 %i.bk, 1                        ; 3 uses
  store i64 %i.eu, ptr %i.be, align 8, !alias.scope !5635, !noalias !5492
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9101)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !5638
  store i64 0, ptr %i.t, align 8, !noalias !5638
  %i.ev = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ev, align 8, !noalias !5638
  %i.ew = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 4 uses
  store i64 0, ptr %i.ew, align 8, !noalias !5638
  %i.ex = icmp ult i64 %i.eu, %i.bg
  br i1 %i.ex, label %.lr.ph.i.i.i85.lr.ph, label %.loopexit23.i.i

end_hunk_0
begin_hunk_1_@"_ZN10serde_json5value2de82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$11deserialize17h786ed32b337e573cE":bb.a
bb.j:                                             ; preds = %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !noalias !6110, !noundef !8
  %i.br = add i64 %i.bb, 4
  store i64 %i.br, ptr %i.av, align 8, !alias.scope !6111, !noalias !6099
  %.not.i45.2 = icmp eq i8 %i.bq, 108
  br i1 %.not.i45.2, label %bb.ag, label %bb.k, !prof !2978

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i47": ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !6112
  store i64 5, ptr %i.j, align 8, !noalias !6112
  %i.bs = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h94ec12d23cb89b70E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j), !noalias !6113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !6112
  br label %bb.af

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !6112
  store i64 9, ptr %i.i, align 8, !noalias !6112
  %i.bt = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h94ec12d23cb89b70E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i), !noalias !6113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6112
  br label %bb.af

bb.l:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h954fd29c224a723eE.exit"
  %i.bu = add i64 %i.bb, 1                        ; 4 uses
  store i64 %i.bu, ptr %i.av, align 8, !alias.scope !6114, !noalias !6056
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6117)
  %umax.i34 = tail call i64 @llvm.umax.i64(i64 %i.bu, i64 %i.ax) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6120), !noalias !6056
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6123), !noalias !6056
  %exitcond.not.i36.not = icmp ult i64 %i.bu, %i.ax
  br i1 %exitcond.not.i36.not, label %bb.m, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i39"

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !6126, !noundef !8
  %i.bx = add i64 %i.bb, 2                        ; 3 uses
  store i64 %i.bx, ptr %i.av, align 8, !alias.scope !6130, !noalias !6131
  %.not.i37 = icmp eq i8 %i.bw, 114
  br i1 %.not.i37, label %bb.n, label %bb.r, !prof !2978

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6132), !noalias !6056
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6134), !noalias !6056
  %exitcond.not.i36.1 = icmp eq i64 %i.bx, %umax.i34
  br i1 %exitcond.not.i36.1, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i39", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !noalias !6136, !noundef !8
  %i.ca = add i64 %i.bb, 3                        ; 3 uses
  store i64 %i.ca, ptr %i.av, align 8, !alias.scope !6137, !noalias !6131
  %.not.i37.1 = icmp eq i8 %i.bz, 117
  br i1 %.not.i37.1, label %bb.p, label %bb.r, !prof !2978

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6138), !noalias !6056
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6140), !noalias !6056
  %exitcond.not.i36.2 = icmp eq i64 %i.ca, %umax.i34
  br i1 %exitcond.not.i36.2, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i39", label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !6142, !noundef !8
  %i.cd = add i64 %i.bb, 4
  store i64 %i.cd, ptr %i.av, align 8, !alias.scope !6143, !noalias !6131
  %.not.i37.2 = icmp eq i8 %i.cc, 101
  br i1 %.not.i37.2, label %bb.aj, label %bb.r, !prof !2978

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i39": ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !6144
  store i64 5, ptr %i.l, align 8, !noalias !6144
  %i.ce = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h94ec12d23cb89b70E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l), !noalias !6145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !6144
  br label %bb.ai

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !6144
  store i64 9, ptr %i.k, align 8, !noalias !6144
  %i.cf = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h94ec12d23cb89b70E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k), !noalias !6145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !6144
  br label %bb.ai

bb.s:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h954fd29c224a723eE.exit"
  %i.cg = add i64 %i.bb, 1                        ; 4 uses
  store i64 %i.cg, ptr %i.av, align 8, !alias.scope !6146, !noalias !6056
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6149)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.cg, i64 %i.ax) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6152), !noalias !6056
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6155), !noalias !6056
  %exitcond.not.i.not = icmp ult i64 %i.cg, %i.ax
  br i1 %exitcond.not.i.not, label %bb.t, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i"

bb.t:                                             ; preds = %bb.s
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !noalias !6158, !noundef !8
  %i.cj = add i64 %i.bb, 2                        ; 3 uses
  store i64 %i.cj, ptr %i.av, align 8, !alias.scope !6162, !noalias !6163
  %.not.i32 = icmp eq i8 %i.ci, 97
  br i1 %.not.i32, label %bb.u, label %bb.aa, !prof !2978

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6164), !noalias !6056
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6166), !noalias !6056
  %exitcond.not.i.1 = icmp eq i64 %i.cj, %umax.i
  br i1 %exitcond.not.i.1, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i", label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !noalias !6168, !noundef !8
  %i.cm = add i64 %i.bb, 3                        ; 3 uses
  store i64 %i.cm, ptr %i.av, align 8, !alias.scope !6169, !noalias !6163
  %.not.i32.1 = icmp eq i8 %i.cl, 108
  br i1 %.not.i32.1, label %bb.w, label %bb.aa, !prof !2978

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6170), !noalias !6056
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6172), !noalias !6056
  %exitcond.not.i.2 = icmp eq i64 %i.cm, %umax.i
  br i1 %exitcond.not.i.2, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i", label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !noalias !6174, !noundef !8
  %i.cp = add i64 %i.bb, 4                        ; 3 uses
  store i64 %i.cp, ptr %i.av, align 8, !alias.scope !6175, !noalias !6163
  %.not.i32.2 = icmp eq i8 %i.co, 115
  br i1 %.not.i32.2, label %bb.y, label %bb.aa, !prof !2978

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6176), !noalias !6056
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6178), !noalias !6056
  %exitcond.not.i.3 = icmp eq i64 %i.cp, %umax.i
  br i1 %exitcond.not.i.3, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !noalias !6180, !noundef !8
  %i.cs = add i64 %i.bb, 5
  store i64 %i.cs, ptr %i.av, align 8, !alias.scope !6181, !noalias !6163
  %.not.i32.3 = icmp eq i8 %i.cr, 101
  br i1 %.not.i32.3, label %bb.al, label %bb.aa, !prof !2978

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i": ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !6182
  store i64 5, ptr %i.n, align 8, !noalias !6182
  %i.ct = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h94ec12d23cb89b70E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.n), !noalias !6183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !6182
  br label %bb.ak

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !6182
  store i64 9, ptr %i.m, align 8, !noalias !6182
  %i.cu = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h94ec12d23cb89b70E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m), !noalias !6183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !6182
  br label %bb.ak

bb.ab:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h954fd29c224a723eE.exit"
  %i.cv = add i64 %i.bb, 1
  store i64 %i.cv, ptr %i.av, align 8, !alias.scope !6184, !noalias !6056
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !6080
  call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17h775dfdd57d8eaa7cE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.at, ptr noalias noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext false), !noalias !6056, !inline_history !6081
  %i.cw = load i64, ptr %i.at, align 8, !range !2364, !noalias !6080, !noundef !8 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 3
  %i.cy = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  br i1 %i.cx, label %bb.am, label %bb.an

bb.ac:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h954fd29c224a723eE.exit"
  %i.cz = add i64 %i.bb, 1
  store i64 %i.cz, ptr %i.av, align 8, !alias.scope !6187, !noalias !6056
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.da, align 8, !alias.scope !6059, !noalias !6056
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !6080
  call void @"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17hb363ba977b6810eaE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ar, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.az, ptr noalias noundef nonnull align 8 dereferenceable(80) %1), !noalias !6056, !inline_history !6081
  %i.db = load i64, ptr %i.ar, align 8, !range !479, !noalias !6080, !noundef !8 ; 2 uses
  %i.dc = icmp eq i64 %i.db, 2
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !noalias !6080 ; 4 uses
  br i1 %i.dc, label %bb.as, label %bb.at

bb.ad:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h954fd29c224a723eE.exit"
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.dg = load i8, ptr %i.df, align 8, !range !610, !alias.scope !6059, !noalias !6056, !noundef !8
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %bb.bc, label %bb.bb

bb.ae:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h954fd29c224a723eE.exit"
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.dj = load i8, ptr %i.di, align 8, !range !610, !alias.scope !6059, !noalias !6056, !noundef !8
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.cm, label %bb.cl

bb.af:                                            ; preds = %bb.k, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i47"
  %.sroa.0.1.i46.ph = phi ptr [ %i.bs, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i47" ], [ %i.bt, %bb.k ]
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i46.ph, ptr %i.dl, align 8, !alias.scope !6056, !noalias !6059
  store i64 -9223372036854775803, ptr %0, align 8, !alias.scope !6056, !noalias !6059
  br label %bb.ah

bb.ag:                                            ; preds = %bb.j
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.34.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.52)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17ha0fb66df0ca558a1E.exit"

bb.ah:                                            ; preds = %bb.fe, %bb.en, %bb.bw, %bb.as, %bb.am, %bb.ak, %bb.ai, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.52)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17ha0fb66df0ca558a1E.exit"

bb.ai:                                            ; preds = %bb.r, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i39"
  %.sroa.0.1.i38.ph = phi ptr [ %i.ce, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i39" ], [ %i.cf, %bb.r ]
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i38.ph, ptr %i.dm, align 8, !alias.scope !6056, !noalias !6059
  store i64 -9223372036854775803, ptr %0, align 8, !alias.scope !6056, !noalias !6059
  br label %bb.ah

bb.aj:                                            ; preds = %bb.q
  store i64 -9223372036854775807, ptr %0, align 8
  %.sroa.34.0..sroa_idx486 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %.sroa.34.0..sroa_idx486, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.52)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17ha0fb66df0ca558a1E.exit"

bb.ak:                                            ; preds = %bb.aa, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i"
  %.sroa.0.1.i.ph = phi ptr [ %i.ct, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i" ], [ %i.cu, %bb.aa ]
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph, ptr %i.dn, align 8, !alias.scope !6056, !noalias !6059
  store i64 -9223372036854775803, ptr %0, align 8, !alias.scope !6056, !noalias !6059
  br label %bb.ah

bb.al:                                            ; preds = %bb.z
  store i64 -9223372036854775807, ptr %0, align 8
  %.sroa.34.0..sroa_idx488 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.34.0..sroa_idx488, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.52)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17ha0fb66df0ca558a1E.exit"

bb.am:                                            ; preds = %bb.ab
  %i.do = load ptr, ptr %i.cy, align 8, !noalias !6080, !nonnull !8, !align !461, !noundef !8
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.do, ptr %i.dp, align 8, !alias.scope !6056, !noalias !6059
  store i64 -9223372036854775803, ptr %0, align 8, !alias.scope !6056, !noalias !6059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !6080
  br label %bb.ah

bb.an:                                            ; preds = %bb.ab
  %.sroa.4.0.copyload = load i64, ptr %i.cy, align 8, !noalias !6080 ; 3 uses
  switch i64 %i.cw, label %default.unreachable779 [
    i64 0, label %bb.ao
    i64 1, label %bb.ar
    i64 2, label %bb.aq
  ]

default.unreachable779:                           ; preds = %bb.ff, %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.an
  %i.dq = bitcast i64 %.sroa.4.0.copyload to double
  %i.dr = tail call double @llvm.fabs.f64(double %i.dq)
  %i.ds = fcmp ueq double %i.dr, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !6190
  br i1 %i.ds, label %"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417hb94c5a8d62df9b37E.exit.i23", label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i64 -9223372036854775808, ptr %i.o, align 8, !noalias !6190
  call fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h1c45b7324ac9ef4bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.o), !noalias !6196
  br label %"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417hb94c5a8d62df9b37E.exit.i23"

"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417hb94c5a8d62df9b37E.exit.i23": ; preds = %bb.ap, %bb.ao
  %.sroa.07.013.i.i24 = phi i64 [ 2, %bb.ap ], [ 3, %bb.ao ]
  %.sroa.0.0.i.i25 = phi i64 [ -9223372036854775806, %bb.ap ], [ -9223372036854775808, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !6190
  br label %bb.ar

bb.aq:                                            ; preds = %bb.an
  %.lobit.i.i.i18 = lshr i64 %.sroa.4.0.copyload, 63
  br label %bb.ar

bb.ar:                                            ; preds = %bb.an, %bb.aq, %"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417hb94c5a8d62df9b37E.exit.i23"
  %.sink = phi i64 [ -9223372036854775806, %bb.aq ], [ %.sroa.0.0.i.i25, %"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417hb94c5a8d62df9b37E.exit.i23" ], [ -9223372036854775806, %bb.an ]
  %.lobit.i.i.i18.sink = phi i64 [ %.lobit.i.i.i18, %bb.aq ], [ %.sroa.07.013.i.i24, %"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417hb94c5a8d62df9b37E.exit.i23" ], [ 0, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !6080
  store i64 %.sink, ptr %0, align 8
  %.sroa.34.0..sroa_idx490 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lobit.i.i.i18.sink, ptr %.sroa.34.0..sroa_idx490, align 8
  %.sroa.46.0..sroa_idx508 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.copyload, ptr %.sroa.46.0..sroa_idx508, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.52)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17ha0fb66df0ca558a1E.exit"

bb.as:                                            ; preds = %bb.ac
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.de, ptr %i.dt, align 8, !alias.scope !6056, !noalias !6059
  store i64 -9223372036854775803, ptr %0, align 8, !alias.scope !6056, !noalias !6059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !6080
  br label %bb.ah

bb.at:                                            ; preds = %bb.ac
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6080 ; 13 uses
  %i.du = trunc nuw i64 %i.db to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.de) ]
  %i.dv = icmp slt i64 %.sroa.4.0.copyload.i, 0   ; 2 uses
  br i1 %i.du, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  br i1 %i.dv, label %bb.av, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !807

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.au
  %i.dw = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %i.dw, label %bb.ba, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !6200
  %i.dx = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.sroa.4.0.copyload.i, i64 noundef range(i64 1, 9) 1) #47, !noalias !6200 ; 2 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %bb.av, label %bb.ba

bb.av:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i", %bb.au
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i" ], [ 0, %bb.au ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.sroa.4.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1765) #54, !noalias !6211
  unreachable

bb.aw:                                            ; preds = %bb.at
  br i1 %i.dv, label %bb.ax, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !807

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.aw
  %i.dz = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %i.dz, label %bb.az, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !6212
  %i.ea = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.sroa.4.0.copyload.i, i64 noundef range(i64 1, 9) 1) #47, !noalias !6212 ; 2 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i", %bb.aw
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i" ], [ 0, %bb.aw ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %.sroa.4.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1765) #54, !noalias !6226
  unreachable

bb.ay:                                            ; preds = %bb.fc, %bb.ck
  %.sroa.34.sroa.32.sroa.0.0.in.in = phi i64 [ %i.oc, %bb.fc ], [ %.sroa.34.sroa.32.sroa.0.2.in.in, %bb.ck ]
  %i.ec = inttoptr i64 %.sroa.34.sroa.32.sroa.0.0.in.in to ptr
  %i.ed = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h020c265af5679557E(ptr noalias noundef nonnull align 8 %i.ec, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1), !noalias !6056
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ed, ptr %i.ee, align 8, !alias.scope !6056, !noalias !6059
  store i64 -9223372036854775803, ptr %0, align 8, !alias.scope !6056, !noalias !6059
  br label %bb.fb

bb.az:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.ea, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i" ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 1 %i.de, i64 %.sroa.4.0.copyload.i, i1 false), !noalias !6227
  %i.ef = ptrtoint ptr %.sroa.10.0.i.i.i.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !6080
  store i64 -9223372036854775805, ptr %0, align 8
  %.sroa.34.0..sroa_idx492 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.34.0..sroa_idx492, align 8
  %.sroa.46.0..sroa_idx510 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ef, ptr %.sroa.46.0..sroa_idx510, align 8
  %.sroa.50.0..sroa_idx528 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.50.0..sroa_idx528, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.52)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17ha0fb66df0ca558a1E.exit"

bb.ba:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.dx, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i" ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %i.de, i64 %.sroa.4.0.copyload.i, i1 false), !noalias !6228
  %i.eg = ptrtoint ptr %.sroa.10.0.i.i.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !6080
  store i64 -9223372036854775805, ptr %0, align 8
  %.sroa.34.0..sroa_idx494 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.34.0..sroa_idx494, align 8
  %.sroa.46.0..sroa_idx512 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.eg, ptr %.sroa.46.0..sroa_idx512, align 8
  %.sroa.50.0..sroa_idx530 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.50.0..sroa_idx530, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.52)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17ha0fb66df0ca558a1E.exit"

bb.bb:                                            ; preds = %bb.ad
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 73 ; 2 uses
  %i.ei = load i8, ptr %i.eh, align 1, !alias.scope !6059, !noalias !6056, !noundef !8
  %i.ej = add i8 %i.ei, -1                        ; 2 uses
  store i8 %i.ej, ptr %i.eh, align 1, !alias.scope !6059, !noalias !6056
  %i.ek = icmp eq i8 %i.ej, 0
  br i1 %i.ek, label %bb.bw, label %bb.bc, !prof !14

bb.bc:                                            ; preds = %bb.bb, %bb.ad
  %i.el = add i64 %i.bb, 1
  store i64 %i.el, ptr %i.av, align 8, !alias.scope !6229, !noalias !6056
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.977)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %1, ptr %i.r, align 8, !noalias !6232
  %i.em = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i8 1, ptr %i.em, align 8, !noalias !6232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !6232
  store i64 0, ptr %i.q, align 8, !noalias !6232
  %i.en = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.en, align 8, !noalias !6232
  %i.eo = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 4 uses
end_hunk_1
begin_hunk_2_@"_ZN5xtask5bench8workload11stop_report28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h1a0efc3a73d96329E":bb.a
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i125, align 8, !alias.scope !31064, !noalias !31061
  %.sroa.6.0..sroa_idx.i.i126 = getelementptr inbounds nuw i8, ptr %i.ap, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i126, ptr noundef nonnull align 8 dereferenceable(32) @257, i64 32, i1 false), !noalias !31061
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  store i64 %i.aua, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !31064, !noalias !31061
  %.sroa.8.0..sroa_idx.i.i127 = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  store i64 %.pre-phi2.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i127, align 8, !alias.scope !31064, !noalias !31061
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !31061
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !31061
  call void @llvm.experimental.noalias.scope.decl(metadata !31095)
  call void @llvm.experimental.noalias.scope.decl(metadata !31098)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !31101
  %i.auc = call noundef dereferenceable_or_null(13) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef range(i64 3, 65) 13, i64 noundef range(i64 1, 9) 1) #47, !noalias !31101 ; 4 uses
  %i.aud = icmp eq ptr %i.auc, null
  br i1 %i.aud, label %bb.jw, label %bb.jz

bb.jw:                                            ; preds = %bb.jv
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 range(i64 3, 65) 13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1765) #54
          to label %.noexc64.i unwind label %bb.jy

.noexc64.i:                                       ; preds = %bb.jw
  unreachable

bb.jx:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit82.i", %bb.kh, %bb.jy
  %.pn12.pn.i = phi { ptr, i32 } [ %.pn.i128, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit82.i" ], [ %i.aum, %bb.kh ], [ %i.aue, %bb.jy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !31061
  br label %bb.kk

bb.jy:                                            ; preds = %bb.jw
  %i.aue = landingpad { ptr, i32 }
          cleanup
  br label %bb.jx

bb.jz:                                            ; preds = %bb.jv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.auc, ptr noundef nonnull readonly align 1 dereferenceable(13) @927, i64 range(i64 3, 65) 13, i1 false), !noalias !31111
  store i64 13, ptr %i.an, align 8, !alias.scope !31112, !noalias !31113
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.auc, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !31112, !noalias !31113
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 13, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !31112, !noalias !31113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !31061
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !31061
  invoke fastcc void @_ZN10serde_json5value8to_value17hd8477ec5611614acE(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.al, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(16) %i.ate)
          to label %bb.kb unwind label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.auf = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit82.i"

bb.kb:                                            ; preds = %bb.jz
  call void @llvm.experimental.noalias.scope.decl(metadata !31114)
  call void @llvm.experimental.noalias.scope.decl(metadata !31117)
  %i.aug = load i64, ptr %i.al, align 8, !range !860, !alias.scope !31117, !noalias !31119, !noundef !8
  %i.auh = icmp eq i64 %i.aug, -9223372036854775803
  br i1 %i.auh, label %bb.kc, label %bb.kg, !prof !14

bb.kc:                                            ; preds = %bb.kb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !31121
  %i.aui = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.auj = load ptr, ptr %i.aui, align 8, !alias.scope !31117, !noalias !31119, !nonnull !8, !align !461, !noundef !8
  store ptr %i.auj, ptr %i.z, align 8, !noalias !31121
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @555, i64 noundef 43, ptr noundef nonnull align 1 %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @557, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1021) #54
          to label %bb.ke unwind label %bb.kd, !noalias !31122

bb.kd:                                            ; preds = %bb.kc
  %i.auk = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h7cf736f5bc1012bfE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.z) #55
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit82.i" unwind label %bb.kf, !noalias !31122

bb.ke:                                            ; preds = %bb.kc
  unreachable

bb.kf:                                            ; preds = %bb.kd
  %i.aul = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !31122
  unreachable

bb.kg:                                            ; preds = %bb.kb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.am, ptr noundef nonnull align 8 dereferenceable(72) %i.al, i64 72, i1 false), !alias.scope !31122, !noalias !31123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !31061
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !31124
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17h501bf1d040ec56e4E"(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ap, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.an, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(72) %i.am)
          to label %bb.ki unwind label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %i.aum = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !31061
  br label %bb.jx

bb.ki:                                            ; preds = %bb.kg
  %i.aun = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ao, ptr noundef nonnull align 8 dereferenceable(72) %i.aun, i64 72, i1 false), !noalias !31130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !31124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !31061
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !31061
  %i.auo = load i64, ptr %i.ao, align 8, !range !860, !alias.scope !31131, !noalias !31061, !noundef !8
  %i.aup = icmp eq i64 %i.auo, -9223372036854775803
  br i1 %i.aup, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17had044ad4ce3b98b3E.exit.i", label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h1c45b7324ac9ef4bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.ao)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17had044ad4ce3b98b3E.exit.i" unwind label %bb.kl

bb.kk:                                            ; preds = %bb.kl, %bb.jx
  %.pn15.i = phi { ptr, i32 } [ %i.auq, %bb.kl ], [ %.pn12.pn.i, %bb.jx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !31061
  br label %bb.mi

bb.kl:                                            ; preds = %bb.kj
  %i.auq = landingpad { ptr, i32 }
          cleanup
  br label %bb.kk

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17had044ad4ce3b98b3E.exit.i": ; preds = %bb.kj, %bb.ki
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !31061
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !31061
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !31061
  call void @llvm.experimental.noalias.scope.decl(metadata !31134)
  call void @llvm.experimental.noalias.scope.decl(metadata !31137)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !31140
  %i.aur = call noundef dereferenceable_or_null(4) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef range(i64 3, 65) 4, i64 noundef range(i64 1, 9) 1) #47, !noalias !31140 ; 4 uses
  %i.aus = icmp eq ptr %i.aur, null
  br i1 %i.aus, label %bb.km, label %bb.kp

bb.km:                                            ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17had044ad4ce3b98b3E.exit.i"
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 range(i64 3, 65) 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1765) #54
          to label %.noexc69.i unwind label %bb.ko

.noexc69.i:                                       ; preds = %bb.km
  unreachable

bb.kn:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit.i", %bb.lw, %bb.ko
  %.pn19.pn.i = phi { ptr, i32 } [ %.pn17.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit.i" ], [ %i.ayi, %bb.lw ], [ %i.aut, %bb.ko ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !31061
  br label %bb.lz

bb.ko:                                            ; preds = %bb.km
  %i.aut = landingpad { ptr, i32 }
          cleanup
  br label %bb.kn

bb.kp:                                            ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17had044ad4ce3b98b3E.exit.i"
  store i32 1635017060, ptr %i.aur, align 1, !noalias !31150
  store i64 4, ptr %i.aj, align 8, !alias.scope !31151, !noalias !31152
  %.sroa.4.0..sroa_idx.i.i67.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.aur, ptr %.sroa.4.0..sroa_idx.i.i67.i, align 8, !alias.scope !31151, !noalias !31152
  %.sroa.5.0..sroa_idx.i.i68.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 4, ptr %.sroa.5.0..sroa_idx.i.i68.i, align 8, !alias.scope !31151, !noalias !31152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !31061
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !31061
  call void @llvm.experimental.noalias.scope.decl(metadata !31153)
  %.val.i.i.i129 = load ptr, ptr %i.atf, align 8, !alias.scope !31153, !noalias !31156, !nonnull !8, !align !461, !noundef !8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31160)
  call void @llvm.experimental.noalias.scope.decl(metadata !31163)
  %i.auu = load ptr, ptr %.val.i.i.i129, align 8, !alias.scope !31166, !noalias !31169, !noundef !8 ; 2 uses
  %.not.i.i.i.i.i.i.i130 = icmp ne ptr %i.auu, null ; 3 uses
  %i.auv = getelementptr inbounds nuw i8, ptr %.val.i.i.i129, i64 8
  %i.auw = load i64, ptr %i.auv, align 8, !alias.scope !31175, !noalias !31176
  %i.aux = getelementptr inbounds nuw i8, ptr %.val.i.i.i129, i64 16
  %i.auy = load i64, ptr %i.aux, align 8, !alias.scope !31175, !noalias !31176 ; 2 uses
  %i.auz = ptrtoint ptr %i.auu to i64
  %.sroa.15.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i130, i64 %i.auw, i64 undef
  %.sink.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i130, i64 %i.auy, i64 0 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !31177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !31177
  invoke void @"_ZN82_$LT$serde_json..value..ser..Serializer$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17h38fa74e76d6ab555E"(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.w, i64 noundef 1, i64 %.sink.i.i.i.i.i.i.i)
          to label %.noexc71.i unwind label %bb.lp

.noexc71.i:                                       ; preds = %bb.kp
  %i.ava = load i64, ptr %i.w, align 8, !range !627, !noalias !31177, !noundef !8
  %i.avb = icmp eq i64 %i.ava, -9223372036854775807
  br i1 %i.avb, label %bb.kq, label %bb.kr

bb.kq:                                            ; preds = %.noexc71.i
  %i.avc = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.avd = load ptr, ptr %i.avc, align 8, !noalias !31177, !nonnull !8, !align !461, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !31177
  br label %.thread125.i

bb.kr:                                            ; preds = %.noexc71.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.x, ptr noundef nonnull align 8 dereferenceable(96) %i.w, i64 96, i1 false), !noalias !31177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !31177
  call void @llvm.experimental.noalias.scope.decl(metadata !31178)
  call void @llvm.experimental.noalias.scope.decl(metadata !31181)
  %i.ave = icmp eq i64 %.sink.i.i.i.i.i.i.i, 0
  br i1 %i.ave, label %.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i131

.lr.ph.i.i.i.i.i.i.i.i131:                        ; preds = %bb.kr
  %i.avf = getelementptr inbounds nuw i8, ptr %i.x, i64 72 ; 2 uses
  %i.avg = getelementptr inbounds nuw i8, ptr %i.x, i64 80 ; 3 uses
  %.sroa.7.0..sroa_idx7.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  %i.avh = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  br label %bb.ks

bb.ks:                                            ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h720b64ab8792c210E.exit.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i.i131
  %.sroa.10.1.i.i.i.i.i.i.a = phi i64 [ %i.auz, %.lr.ph.i.i.i.i.i.i.i.i131 ], [ 0, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h720b64ab8792c210E.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.15.1.i.i.i.i.i.i = phi i64 [ %.sroa.15.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i131 ], [ %.sroa.7.0.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h720b64ab8792c210E.exit.i.i.i.i.i.i.i.i" ] ; 6 uses
  %.sroa.012.0.lcssa.i.i28.i.i.i.i.i.i.i.i = phi ptr [ null, %.lr.ph.i.i.i.i.i.i.i.i131 ], [ %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h720b64ab8792c210E.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.avi = phi i64 [ %i.auy, %.lr.ph.i.i.i.i.i.i.i.i131 ], [ %i.avk, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h720b64ab8792c210E.exit.i.i.i.i.i.i.i.i" ]
  %i.avj = phi i1 [ %.not.i.i.i.i.i.i.i130, %.lr.ph.i.i.i.i.i.i.i.i131 ], [ true, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h720b64ab8792c210E.exit.i.i.i.i.i.i.i.i" ]
  %i.avk = add i64 %i.avi, -1                     ; 2 uses
  br i1 %i.avj, label %bb.kt, label %.critedge.i.i.i.i.i.i.i.i.i

bb.kt:                                            ; preds = %bb.ks
  %.not.i.i.i.i.i.i.i.i.i.i133 = icmp eq ptr %.sroa.012.0.lcssa.i.i28.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i133, label %bb.ku, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h04131066cbde41e2E.exit.i.i.i.i.i.i.i.i.i"

bb.ku:                                            ; preds = %bb.kt
  %i.avl = inttoptr i64 %.sroa.10.1.i.i.i.i.i.i.a to ptr ; 3 uses
  %i.avm = icmp eq i64 %.sroa.15.1.i.i.i.i.i.i, 0
  br i1 %i.avm, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h04131066cbde41e2E.exit.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i134.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i134.preheader:          ; preds = %bb.ku
  %xtraiter1822 = and i64 %.sroa.15.1.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod1823.not = icmp eq i64 %xtraiter1822, 0
  br i1 %lcmp.mod1823.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i134.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i134.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i134.prol:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i134.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i134.prol
  %.sroa.012.015.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i134.prol ], [ %i.avl, %.lr.ph.i.i.i.i.i.i.i.i.i.i134.preheader ]
  %.sroa.011.014.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.avo, %.lr.ph.i.i.i.i.i.i.i.i.i.i134.prol ], [ %.sroa.15.1.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i134.preheader ]
  %prol.iter1824 = phi i64 [ %prol.iter1824.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i134.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i134.preheader ]
  %i.avn = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i.i.i.i.i.i.i.i.prol, i64 544
  %i.avo = add i64 %.sroa.011.014.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %i.avn, align 8, !noalias !31184, !nonnull !8, !noundef !8 ; 3 uses
  %prol.iter1824.next = add i64 %prol.iter1824, 1 ; 2 uses
  %prol.iter1824.cmp.not = icmp eq i64 %prol.iter1824.next, %xtraiter1822
  br i1 %prol.iter1824.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i134.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i134.prol, !llvm.loop !31191

.lr.ph.i.i.i.i.i.i.i.i.i.i134.prol.loopexit:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i134.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i134.preheader
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i.i134.preheader ], [ %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i134.prol ]
  %.sroa.012.015.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.avl, %.lr.ph.i.i.i.i.i.i.i.i.i.i134.preheader ], [ %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i134.prol ]
  %.sroa.011.014.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.15.1.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i134.preheader ], [ %i.avo, %.lr.ph.i.i.i.i.i.i.i.i.i.i134.prol ]
  %i.avp = icmp ult i64 %.sroa.15.1.i.i.i.i.i.i, 8
  br i1 %i.avp, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h04131066cbde41e2E.exit.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i134

.lr.ph.i.i.i.i.i.i.i.i.i.i134:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i134.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i134
  %.sroa.012.015.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i134 ], [ %.sroa.012.015.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i134.prol.loopexit ]
  %.sroa.011.014.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.avy, %.lr.ph.i.i.i.i.i.i.i.i.i.i134 ], [ %.sroa.011.014.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i134.prol.loopexit ]
  %i.avq = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i.i.i.i.i.i.i.i, i64 544
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.avq, align 8, !noalias !31184, !nonnull !8, !noundef !8
  %i.avr = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i.i.i, i64 544
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.avr, align 8, !noalias !31184, !nonnull !8, !noundef !8
  %i.avs = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.1, i64 544
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.avs, align 8, !noalias !31184, !nonnull !8, !noundef !8
  %i.avt = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.2, i64 544
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.avt, align 8, !noalias !31184, !nonnull !8, !noundef !8
  %i.avu = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.3, i64 544
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.avu, align 8, !noalias !31184, !nonnull !8, !noundef !8
  %i.avv = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.4, i64 544
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.avv, align 8, !noalias !31184, !nonnull !8, !noundef !8
  %i.avw = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.5, i64 544
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.avw, align 8, !noalias !31184, !nonnull !8, !noundef !8
  %i.avx = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.6, i64 544
  %i.avy = add i64 %.sroa.011.014.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.avx, align 8, !noalias !31184, !nonnull !8, !noundef !8 ; 2 uses
  %i.avz = icmp eq i64 %i.avy, 0
  br i1 %i.avz, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h04131066cbde41e2E.exit.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i134

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h04131066cbde41e2E.exit.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i134.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i134, %bb.ku, %bb.kt
  %.sroa.37.0.copyload.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.15.1.i.i.i.i.i.i, %bb.kt ], [ 0, %bb.ku ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i134 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i134.prol.loopexit ] ; 2 uses
  %.sroa.26.0.copyload.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.10.1.i.i.i.i.i.i.a, %bb.kt ], [ 0, %bb.ku ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i134 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i134.prol.loopexit ] ; 2 uses
  %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.012.0.lcssa.i.i28.i.i.i.i.i.i.i.i, %bb.kt ], [ %i.avl, %bb.ku ], [ %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i134.prol.loopexit ], [ %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i134 ] ; 3 uses
  %i.awa = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 538
  %i.awb = load i16, ptr %i.awa, align 2, !noalias !31192, !noundef !8
  %i.awc = zext i16 %i.awb to i64
  %i.awd = icmp ult i64 %.sroa.37.0.copyload.i.i.i.i.i.i.i.i.i.i, %i.awc
  br i1 %i.awd, label %bb.kw, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h04131066cbde41e2E.exit.i.i.i.i.i.i.i.i.i", %bb.kv
  %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.awe, %bb.kv ], [ %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h04131066cbde41e2E.exit.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.awg, %bb.kv ], [ %.sroa.26.0.copyload.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h04131066cbde41e2E.exit.i.i.i.i.i.i.i.i.i" ]
  %i.awe = load ptr, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !31201, !noundef !8 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.awe, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ky, label %bb.kv

._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %bb.kv
  %i.awf = zext i16 %i.awi to i64
  br label %bb.kw

bb.kv:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.awg = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.awh = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i.i, i64 536
  %i.awi = load i16, ptr %i.awh, align 8, !noalias !31201 ; 2 uses
  %i.awj = getelementptr inbounds nuw i8, ptr %i.awe, i64 538
  %i.awk = load i16, ptr %i.awj, align 2, !noalias !31192, !noundef !8
  %i.awl = icmp ult i16 %i.awi, %i.awk
  br i1 %i.awl, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

bb.kw:                                            ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h04131066cbde41e2E.exit.i.i.i.i.i.i.i.i.i"
  %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.37.0.copyload.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h04131066cbde41e2E.exit.i.i.i.i.i.i.i.i.i" ], [ %i.awf, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.26.0.copyload.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h04131066cbde41e2E.exit.i.i.i.i.i.i.i.i.i" ], [ %i.awg, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h04131066cbde41e2E.exit.i.i.i.i.i.i.i.i.i" ], [ %i.awe, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.awm = icmp eq i64 %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i, 0
  %i.awn = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  br i1 %i.awm, label %.loopexit.i.i.i.i.i.i.i.i, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.awo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i, i64 544
  %i.awp = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.awp)
  %i.awq = getelementptr inbounds nuw [8 x i8], ptr %i.awo, i64 %i.awn ; 2 uses
  %xtraiter1825 = and i64 %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod1826.not = icmp eq i64 %xtraiter1825, 0
  br i1 %lcmp.mod1826.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.kx, %.prol.preheader
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.awr, %.prol.preheader ], [ %i.awq, %bb.kx ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.kx ]
  %prol.iter1827 = phi i64 [ %prol.iter1827.next, %.prol.preheader ], [ 0, %bb.kx ]
  %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !31204, !nonnull !8, !noundef !8 ; 2 uses
  %i.awr = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.prol, i64 544 ; 2 uses
  %prol.iter1827.next = add i64 %prol.iter1827, 1 ; 2 uses
  %prol.iter1827.cmp.not = icmp eq i64 %prol.iter1827.next, %xtraiter1825
  br i1 %prol.iter1827.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !31208

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.kx
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.kx ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.awq, %bb.kx ], [ %i.awr, %.prol.preheader ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.kx ], [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %i.aws = icmp ult i64 %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i, 8
  br i1 %i.aws, label %.loopexit.i.i.i.i.i.i.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.axb, %.new ], [ %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !31204, !nonnull !8, !noundef !8
  %i.awt = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i, i64 544
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.awt, align 8, !noalias !31204, !nonnull !8, !noundef !8
  %i.awu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.1, i64 544
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.awu, align 8, !noalias !31204, !nonnull !8, !noundef !8
  %i.awv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.2, i64 544
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.awv, align 8, !noalias !31204, !nonnull !8, !noundef !8
  %i.aww = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.3, i64 544
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.aww, align 8, !noalias !31204, !nonnull !8, !noundef !8
  %i.awx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.4, i64 544
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.awx, align 8, !noalias !31204, !nonnull !8, !noundef !8
  %i.awy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.5, i64 544
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.awy, align 8, !noalias !31204, !nonnull !8, !noundef !8
  %i.awz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.6, i64 544
  %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.awz, align 8, !noalias !31204, !nonnull !8, !noundef !8 ; 2 uses
  %i.axa = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.axb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.7, i64 544
  br i1 %i.axa, label %.loopexit.i.i.i.i.i.i.i.i, label %.new

bb.ky:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @684) #54
          to label %.noexc.i.i.i.i.i.i.i.i.i.i unwind label %bb.kz, !noalias !31209

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.ky
  unreachable

bb.kz:                                            ; preds = %bb.ky
  %i.axc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.critedge.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.ks
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #54
          to label %.noexc.i.i.i.i.i.i132 unwind label %.body.thread23.loopexit.split-lp.i.i.i.i.i.i, !noalias !31210

.noexc.i.i.i.i.i.i132:                            ; preds = %.critedge.i.i.i.i.i.i.i.i.i
  unreachable

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %.prol.loopexit, %.new, %bb.kw
  %.sroa.7.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.awn, %bb.kw ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.kw ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new ]
  %i.axd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.axe = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.axe)
  %i.axf = getelementptr inbounds nuw [24 x i8], ptr %i.axd, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.axg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i, i64 272
  %i.axh = getelementptr inbounds nuw [24 x i8], ptr %i.axg, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.axi = getelementptr i8, ptr %i.axf, i64 8
  %.val9.i.i.i.i.i.i.i.i = load ptr, ptr %i.axi, align 8, !noalias !31211 ; 2 uses
  %i.axj = getelementptr i8, ptr %i.axf, i64 16
  %.val10.i.i.i.i.i.i.i.i = load i64, ptr %i.axj, align 8, !noalias !31211 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31212)
  call void @llvm.experimental.noalias.scope.decl(metadata !31215)
  %i.axk = load i64, ptr %i.x, align 8, !range !929, !alias.scope !31218, !noalias !31219, !noundef !8
  %i.axl = icmp eq i64 %i.axk, -9223372036854775808
  br i1 %i.axl, label %bb.la, label %bb.lb, !prof !14

bb.la:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @97, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1761) #54
          to label %.noexc9.i.i.i.i.i.i unwind label %.body.thread23.loopexit.split-lp.i.i.i.i.i.i, !noalias !31210

.noexc9.i.i.i.i.i.i:                              ; preds = %bb.la
  unreachable

bb.lb:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i.i.i) ]
  %i.axm = icmp slt i64 %.val10.i.i.i.i.i.i.i.i, 0
  br i1 %i.axm, label %bb.lc, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !807

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.lb
  %i.axn = icmp eq i64 %.val10.i.i.i.i.i.i.i.i, 0 ; 3 uses
  br i1 %i.axn, label %bb.ld, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !31225
  %i.axo = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val10.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, 9) 1) #47, !noalias !31225 ; 2 uses
  %i.axp = icmp eq ptr %i.axo, null
  br i1 %i.axp, label %bb.lc, label %bb.ld

bb.lc:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.lb
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ 0, %bb.lb ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.val10.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1765) #54
          to label %.noexc10.i.i.i.i.i.i unwind label %.body.thread23.loopexit.split-lp.i.i.i.i.i.i, !noalias !31210

.noexc10.i.i.i.i.i.i:                             ; preds = %bb.lc
  unreachable

bb.ld:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.axo, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.val9.i.i.i.i.i.i.i.i, i64 %.val10.i.i.i.i.i.i.i.i, i1 false), !noalias !31240
  call void @llvm.experimental.noalias.scope.decl(metadata !31241)
  %i.axq = load i64, ptr %i.avf, align 8, !range !929, !alias.scope !31244, !noalias !31219, !noundef !8 ; 3 uses
  %i.axr = icmp eq i64 %i.axq, -9223372036854775808
  br i1 %i.axr, label %bb.lg, label %bb.le

bb.le:                                            ; preds = %bb.ld
  call void @llvm.experimental.noalias.scope.decl(metadata !31245)
  %i.axs = icmp eq i64 %i.axq, 0
  br i1 %i.axs, label %bb.lg, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.avg, align 8, !alias.scope !31248, !noalias !31219, !nonnull !8, !noundef !8
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.axq, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !31249
  br label %bb.lg

bb.lg:                                            ; preds = %bb.lf, %bb.le, %bb.ld
  store ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.avg, align 8, !alias.scope !31218, !noalias !31219
  store i64 %.val10.i.i.i.i.i.i.i.i, ptr %.sroa.7.0..sroa_idx7.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !31218, !noalias !31219
  call void @llvm.experimental.noalias.scope.decl(metadata !31250)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !31253
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !31253
  store i64 -9223372036854775808, ptr %i.avf, align 8, !alias.scope !31254, !noalias !31219
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !31255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.avg, i64 16, i1 false), !noalias !31219
  store i64 %.val10.i.i.i.i.i.i.i.i, ptr %i.u, align 8, !noalias !31255
  invoke fastcc void @"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hed3d16311fda0bf1E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.t, ptr nonnull readonly align 8 dereferenceable(24) %i.axh)
          to label %_ZN10serde_json5value8to_value17h2560d00bf08f19efE.exit.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.lh, !noalias !31256

bb.lh:                                            ; preds = %bb.lg
  %i.axt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31257)
  br i1 %i.axn, label %.body.thread.i.i.i.i.i.i, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %.val1.i.i5.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !31257, !noalias !31255, !nonnull !8, !noundef !8
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i5.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val10.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !31260
  br label %.body.thread.i.i.i.i.i.i

_ZN10serde_json5value8to_value17h2560d00bf08f19efE.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.lg
  %i.axu = load i64, ptr %i.t, align 8, !range !860, !noalias !31255, !noundef !8
  %i.axv = icmp eq i64 %i.axu, -9223372036854775803
  br i1 %i.axv, label %bb.lj, label %bb.ll
end_hunk_2
begin_hunk_3_@"_ZN5xtask6common6assets12fetch_assets28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h557b5b335f3e4253E":bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx.i.i, i8 0, i64 48, i1 false)
  store ptr %i.dg, ptr %i.df, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i64 0, ptr %i.dj, align 8
  %i.dk = load ptr, ptr %0, align 8, !nonnull !8, !align !461, !noundef !8 ; 3 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !alias.scope !32819, !noalias !32822, !noundef !8 ; 2 uses
  %.not.i184.not = icmp eq ptr %i.dl, null
  br i1 %.not.i184.not, label %.thread, label %"_ZN123_$LT$$RF$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h60be7f1d6e9983efE.exit"

"_ZN123_$LT$$RF$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h60be7f1d6e9983efE.exit": ; preds = %bb.e
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !32819, !noalias !32822, !noundef !8 ; 2 uses
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN123_$LT$$RF$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h60be7f1d6e9983efE.exit"
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !alias.scope !32819, !noalias !32822, !noundef !8
  %i.dr = ptrtoint ptr %i.dl to i64
  %.sroa.4.0..sroa_idx.i187 = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  %i.du = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  %.sroa.715.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.sroa.816.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %.sroa.917.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %.sroa.622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %.sroa.823.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.el = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %.sroa.4.0..sroa_idx.i197 = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %.sroa.5.0..sroa_idx.i198 = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.em = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.en = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.eq = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.er = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.es = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %.sroa.727.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %.sroa.828.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %.sroa.929.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %.sroa.52.0..sroa_idx.i217 = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.7.0..sroa_idx.i218 = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.sroa.634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %.sroa.835.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.ew = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.ey = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.ez = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %.sroa.4.0..sroa_idx.i213 = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %.sroa.5.0..sroa_idx.i214 = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.838.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.939.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.sroa.1140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %.sroa.4.0..sroa_idx.i226 = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %.sroa.5.0..sroa_idx.i227 = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 7 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.fk = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.fp = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.fs = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.ft = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %.sroa.754.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.sroa.855.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %.sroa.956.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %.sroa.52.0..sroa_idx.i246 = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.7.0..sroa_idx.i247 = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.661.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.sroa.862.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.fu = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.fw = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.fy = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.ga = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.gb = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.gc = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %.sroa.4.0..sroa_idx.i242 = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.sroa.5.0..sroa_idx.i243 = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.gd = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.gh = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.gi = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.gj = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.gm = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %.sroa.766.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.sroa.867.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %.sroa.968.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %.sroa.52.0..sroa_idx.i270 = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.7.0..sroa_idx.i271 = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.sroa.673.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.874.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.gn = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.gp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.gq = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.gr = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.gu = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %.sroa.4.0..sroa_idx.i266 = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.sroa.5.0..sroa_idx.i267 = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.gv = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gx = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 3 uses
  %.sroa.075.sroa.5.0..sroa.7.0..sroa_idx.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.075.sroa.6.0..sroa.7.0..sroa_idx.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %.sroa.075.sroa.7.0..sroa.7.0..sroa_idx.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %.sroa.075.sroa.7.sroa.5.0..sroa.075.sroa.7.0..sroa.7.0..sroa_idx.i.i.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %.sroa.075.sroa.7.sroa.6.0..sroa.075.sroa.7.0..sroa.7.0..sroa_idx.i.i.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %.sroa.075.sroa.8.0..sroa.7.0..sroa_idx.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %.sroa.075.sroa.9.0..sroa.7.0..sroa_idx.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %.sroa.075.sroa.10.0..sroa.7.0..sroa_idx.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  %.sroa.976.0..sroa.7.0..sroa_idx.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 312
  %i.hb = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN5tokio7runtime7context7CONTEXT29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17hd4467768b74c4adaE") ; 12 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 72 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 16 ; 3 uses
  %.sroa.412.8..sroa_idx.i.i.i.i5.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.412.i.i.i.i1.i.i.i.i.i.i.i, i64 4
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 3 uses
  %.sroa.45.0..sroa_idx.i.i.i.i6.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.56.0..sroa_idx.i.i.i.i7.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.67.0..sroa_idx.i.i.i.i8.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.hg = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %.sroa.49.0..sroa_idx.i.i.i.i9.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %.sroa.510.0..sroa_idx.i.i.i.i10.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i.i11.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 52
  %i.hh = getelementptr inbounds nuw i8, ptr %i.w, i64 824
  %.sroa.7.0..sroa_idx.i.i.i.i12.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 856
  %.sroa.412.8..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.412.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.hi = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 52
  %i.hj = getelementptr inbounds nuw i8, ptr %i.y, i64 824
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 856
  %i.hk = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.6.0..sroa_idx.i.i1.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %.sroa.7.0..sroa_idx.i.i2.i = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.hm = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.backedge
  %.sroa.72.0578 = phi ptr [ null, %.lr.ph ], [ %.sroa.07.0.i.i.i, %.backedge ] ; 2 uses
  %.sroa.16.0577 = phi i64 [ %i.dq, %.lr.ph ], [ %.sroa.7.0.i.i.i, %.backedge ] ; 6 uses
  %.sroa.24.0576 = phi i64 [ %i.dn, %.lr.ph ], [ %i.ho, %.backedge ]
  %.sroa.113.0575 = phi i64 [ %i.dr, %.lr.ph ], [ 0, %.backedge ] ; 2 uses
  %i.ho = add i64 %.sroa.24.0576, -1              ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.72.0578, null
  br i1 %.not.i.i, label %bb.g, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0eced8dc6afe390fE.exit.i"

bb.g:                                             ; preds = %bb.f
  %i.hp = inttoptr i64 %.sroa.113.0575 to ptr     ; 3 uses
  %i.hq = icmp eq i64 %.sroa.16.0577, 0
  br i1 %i.hq, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0eced8dc6afe390fE.exit.i", label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %xtraiter = and i64 %.sroa.16.0577, 7           ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.012.015.i.i.prol = phi ptr [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i.prol ], [ %i.hp, %.lr.ph.i.i.preheader ]
  %.sroa.011.014.i.i.prol = phi i64 [ %i.hs, %.lr.ph.i.i.prol ], [ %.sroa.16.0577, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.prol, i64 1160
  %i.hs = add i64 %.sroa.011.014.i.i.prol, -1     ; 2 uses
  %.sroa.012.0.i.i.prol = load ptr, ptr %i.hr, align 8, !noalias !32824, !nonnull !8, !noundef !8 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !32829

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.sroa.012.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i.prol ]
  %.sroa.012.015.i.i.unr = phi ptr [ %i.hp, %.lr.ph.i.i.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i.prol ]
  %.sroa.011.014.i.i.unr = phi i64 [ %.sroa.16.0577, %.lr.ph.i.i.preheader ], [ %i.hs, %.lr.ph.i.i.prol ]
  %i.ht = icmp ult i64 %.sroa.16.0577, 8
  br i1 %i.ht, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0eced8dc6afe390fE.exit.i", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.012.015.i.i = phi ptr [ %.sroa.012.0.i.i.7, %.lr.ph.i.i ], [ %.sroa.012.015.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.011.014.i.i = phi i64 [ %i.ic, %.lr.ph.i.i ], [ %.sroa.011.014.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i, i64 1160
  %.sroa.012.0.i.i = load ptr, ptr %i.hu, align 8, !noalias !32824, !nonnull !8, !noundef !8
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i, i64 1160
  %.sroa.012.0.i.i.1 = load ptr, ptr %i.hv, align 8, !noalias !32824, !nonnull !8, !noundef !8
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.1, i64 1160
  %.sroa.012.0.i.i.2 = load ptr, ptr %i.hw, align 8, !noalias !32824, !nonnull !8, !noundef !8
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.2, i64 1160
  %.sroa.012.0.i.i.3 = load ptr, ptr %i.hx, align 8, !noalias !32824, !nonnull !8, !noundef !8
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.3, i64 1160
  %.sroa.012.0.i.i.4 = load ptr, ptr %i.hy, align 8, !noalias !32824, !nonnull !8, !noundef !8
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.4, i64 1160
  %.sroa.012.0.i.i.5 = load ptr, ptr %i.hz, align 8, !noalias !32824, !nonnull !8, !noundef !8
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.5, i64 1160
  %.sroa.012.0.i.i.6 = load ptr, ptr %i.ia, align 8, !noalias !32824, !nonnull !8, !noundef !8
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.6, i64 1160
  %i.ic = add i64 %.sroa.011.014.i.i, -8          ; 2 uses
  %.sroa.012.0.i.i.7 = load ptr, ptr %i.ib, align 8, !noalias !32824, !nonnull !8, !noundef !8 ; 2 uses
  %i.id = icmp eq i64 %i.ic, 0
  br i1 %i.id, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0eced8dc6afe390fE.exit.i", label %.lr.ph.i.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0eced8dc6afe390fE.exit.i": ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g, %bb.f
  %.sroa.37.0.copyload.i.i = phi i64 [ %.sroa.16.0577, %bb.f ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.sroa.26.0.copyload.i.i = phi i64 [ %.sroa.113.0575, %bb.f ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.sroa.05.0.copyload.i.i = phi ptr [ %.sroa.72.0578, %bb.f ], [ %i.hp, %bb.g ], [ %.sroa.012.0.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.sroa.012.0.i.i.7, %.lr.ph.i.i ] ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i, i64 1154
  %i.if = load i16, ptr %i.ie, align 2, !noalias !32830, !noundef !8
  %i.ig = zext i16 %i.if to i64
  %i.ih = icmp ult i64 %.sroa.37.0.copyload.i.i, %i.ig
  br i1 %i.ih, label %bb.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0eced8dc6afe390fE.exit.i", %bb.h
  %.sroa.0.038.i.i.i.i = phi ptr [ %i.ij, %bb.h ], [ %.sroa.05.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0eced8dc6afe390fE.exit.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i = phi i64 [ %i.il, %bb.h ], [ %.sroa.26.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0eced8dc6afe390fE.exit.i" ]
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i, i64 880
  %i.ij = load ptr, ptr %i.ii, align 8, !noalias !32839, !noundef !8 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ij, null
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.h

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.h
  %i.ik = zext i16 %i.in to i64
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.il = add i64 %.sroa.5.037.i.i.i.i, 1         ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i, i64 1152
  %i.in = load i16, ptr %i.im, align 8, !noalias !32839 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.ij, i64 1154
  %i.ip = load i16, ptr %i.io, align 2, !noalias !32830, !noundef !8
  %i.iq = icmp ult i16 %i.in, %i.ip
  br i1 %i.iq, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.i:                                             ; preds = %._crit_edge.loopexit.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0eced8dc6afe390fE.exit.i"
  %.sroa.6.sroa.4.0.ph.i.i.i = phi i64 [ %.sroa.37.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0eced8dc6afe390fE.exit.i" ], [ %i.ik, %._crit_edge.loopexit.i.i.i.i ] ; 5 uses
  %.sroa.6.sroa.0.0.ph.i.i.i = phi i64 [ %.sroa.26.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0eced8dc6afe390fE.exit.i" ], [ %i.il, %._crit_edge.loopexit.i.i.i.i ] ; 5 uses
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0eced8dc6afe390fE.exit.i" ], [ %i.ij, %._crit_edge.loopexit.i.i.i.i ] ; 5 uses
  %i.ir = icmp eq i64 %.sroa.6.sroa.0.0.ph.i.i.i, 0
  %i.is = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i, 1 ; 2 uses
  br i1 %i.ir, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i, i64 1160
  %i.iu = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i, 11
  call void @llvm.assume(i1 %i.iu)
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %i.is ; 2 uses
  %xtraiter1639 = and i64 %.sroa.6.sroa.0.0.ph.i.i.i, 7 ; 2 uses
  %lcmp.mod1640.not = icmp eq i64 %xtraiter1639, 0
  br i1 %lcmp.mod1640.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.j, %.prol.preheader
  %.pn30.in.i.i.i.i.prol = phi ptr [ %i.iw, %.prol.preheader ], [ %i.iv, %bb.j ]
  %.pn28.in.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.6.sroa.0.0.ph.i.i.i, %bb.j ]
  %prol.iter1641 = phi i64 [ %prol.iter1641.next, %.prol.preheader ], [ 0, %bb.j ]
  %.pn28.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.prol, align 8, !noalias !32842, !nonnull !8, !noundef !8 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.prol, i64 1160 ; 2 uses
  %prol.iter1641.next = add i64 %prol.iter1641, 1 ; 2 uses
  %prol.iter1641.cmp.not = icmp eq i64 %prol.iter1641.next, %xtraiter1639
  br i1 %prol.iter1641.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !32846

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.j
  %.pn30.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.j ], [ %.pn30.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.unr = phi ptr [ %i.iv, %bb.j ], [ %i.iw, %.prol.preheader ]
  %.pn28.in.i.i.i.i.unr = phi i64 [ %.sroa.6.sroa.0.0.ph.i.i.i, %bb.j ], [ %.pn28.i.i.i.i.prol, %.prol.preheader ]
  %i.ix = icmp ult i64 %.sroa.6.sroa.0.0.ph.i.i.i, 8
  br i1 %i.ix, label %.loopexit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i = phi ptr [ %i.jg, %.new ], [ %.pn30.in.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i, align 8, !noalias !32842, !nonnull !8, !noundef !8
  %i.iy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i, i64 1160
  %.pn30.i.i.i.i.1 = load ptr, ptr %i.iy, align 8, !noalias !32842, !nonnull !8, !noundef !8
  %i.iz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.1, i64 1160
  %.pn30.i.i.i.i.2 = load ptr, ptr %i.iz, align 8, !noalias !32842, !nonnull !8, !noundef !8
  %i.ja = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.2, i64 1160
  %.pn30.i.i.i.i.3 = load ptr, ptr %i.ja, align 8, !noalias !32842, !nonnull !8, !noundef !8
  %i.jb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.3, i64 1160
  %.pn30.i.i.i.i.4 = load ptr, ptr %i.jb, align 8, !noalias !32842, !nonnull !8, !noundef !8
  %i.jc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.4, i64 1160
  %.pn30.i.i.i.i.5 = load ptr, ptr %i.jc, align 8, !noalias !32842, !nonnull !8, !noundef !8
  %i.jd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.5, i64 1160
  %.pn30.i.i.i.i.6 = load ptr, ptr %i.jd, align 8, !noalias !32842, !nonnull !8, !noundef !8
  %i.je = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.6, i64 1160
  %.pn28.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.7 = load ptr, ptr %i.je, align 8, !noalias !32842, !nonnull !8, !noundef !8 ; 2 uses
  %i.jf = icmp eq i64 %.pn28.i.i.i.i.7, 0
  %i.jg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.7, i64 1160
  br i1 %i.jf, label %.loopexit, label %.new

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @684) #54
          to label %.noexc.i.i185 unwind label %bb.l, !noalias !32847

.noexc.i.i185:                                    ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.jh = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.loopexit:                                        ; preds = %.prol.loopexit, %.new, %bb.i
  %.sroa.7.0.i.i.i = phi i64 [ %i.is, %bb.i ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i = phi ptr [ %.sroa.0.0.ph.i.i.i, %bb.i ], [ %.pn30.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.7, %.new ]
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i, i64 888
  %i.jj = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i, 11
  call void @llvm.assume(i1 %i.jj)
  %i.jk = getelementptr inbounds nuw [24 x i8], ptr %i.ji, i64 %.sroa.6.sroa.4.0.ph.i.i.i
  %i.jl = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.0.ph.i.i.i, i64 %.sroa.6.sroa.4.0.ph.i.i.i ; 10 uses
  store ptr %i.jk, ptr %i.dc, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph.i.i.i) ]
  %i.jm = load i64, ptr %i.jl, align 8, !range !929, !noundef !8
  %.not34 = icmp eq i64 %i.jm, -9223372036854775808
  br i1 %.not34, label %bb.cb, label %bb.m

bb.m:                                             ; preds = %.loopexit
  store ptr %i.jl, ptr %i.db, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da)
  call void @llvm.experimental.noalias.scope.decl(metadata !32848)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !32851
  store i32 0, ptr %i.bb, align 4, !noalias !32851
  store i32 438, ptr %.sroa.4.0..sroa_idx.i187, align 4, !noalias !32851
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %.sroa.5.0..sroa_idx.i, i8 0, i64 6, i1 false), !noalias !32851
  store i8 1, ptr %.sroa.5.0..sroa_idx.i, align 4, !noalias !32851
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %.val.i.i = load ptr, ptr %i.jn, align 8, !alias.scope !32848, !noalias !32853, !nonnull !8, !noundef !8
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  %.val1.i.i = load i64, ptr %i.jo, align 8, !alias.scope !32848, !noalias !32853, !noundef !8
  invoke void @_ZN3std2fs11OpenOptions5_open17h005de3b10d8796e4E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.da, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.bb, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i)
          to label %bb.p unwind label %bb.o

bb.n:                                             ; preds = %bb.as, %bb.ab, %bb.z, %bb.aj, %bb.am, %bb.ag, %bb.s, %bb.bw, %bb.o
  %.pn62.pn = phi { ptr, i32 } [ %.pn62, %bb.bw ], [ %i.jp, %bb.o ], [ %i.lf, %bb.am ], [ %i.ly, %bb.as ], [ %i.kj, %bb.z ], [ %i.jz, %bb.s ], [ %i.lc, %bb.aj ], [ %i.ks, %bb.ag ], [ %i.kl, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  br label %bb.jy

bb.o:                                             ; preds = %bb.m
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.p:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !32851
  %i.jq = load i32, ptr %i.da, align 8, !range !10275, !noundef !8
  %i.jr = trunc nuw i32 %i.jq to i1
  br i1 %i.jr, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr)
  %i.js = load ptr, ptr %i.en, align 8, !nonnull !8, !noundef !8 ; 2 uses
  store ptr %i.js, ptr %i.cr, align 8
  %i.jt = call fastcc noundef i8 @_ZN3std2io5error5Error4kind17hcef9c5606d2f7459E(ptr nonnull %i.js)
  %i.ju = icmp eq i8 %i.jt, 0
  br i1 %i.ju, label %bb.ax, label %bb.ay

bb.r:                                             ; preds = %bb.p
  %i.jv = load i32, ptr %i.ds, align 4, !range !13682, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz)
  %i.jw = load ptr, ptr %i.dc, align 8, !nonnull !8, !align !461, !noundef !8 ; 2 uses
  %i.jx = getelementptr i8, ptr %i.jw, i64 8
  %.val147 = load ptr, ptr %i.jx, align 8, !nonnull !8, !noundef !8
  %i.jy = getelementptr i8, ptr %i.jw, i64 16
  %.val148 = load i64, ptr %i.jy, align 8, !noundef !8
  invoke void @_ZN5xtask6common6assets12check_sha25617h611758076ef03dedE(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.cz, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val147, i64 noundef %.val148, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.jl, i32 noundef %i.jv)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.jz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  br label %bb.n

bb.t:                                             ; preds = %bb.r
  %i.ka = load i8, ptr %i.cz, align 8, !range !610, !alias.scope !32854, !noalias !32857, !noundef !8
  %i.kb = trunc nuw i8 %i.ka to i1
  br i1 %i.kb, label %bb.av, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.kc = load i8, ptr %i.dt, align 1, !range !610, !alias.scope !32854, !noalias !32857, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  %i.kd = trunc nuw i8 %i.kc to i1
  br i1 %i.kd, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  br label %.backedge

bb.w:                                             ; preds = %bb.u
  %i.ke = load atomic i64, ptr @_ZN12tracing_core8metadata9MAX_LEVEL17h3c62bc6fa7dc27b1E monotonic, align 8
  %i.kf = icmp samesign ult i64 %i.ke, 4
  br i1 %i.kf, label %bb.x, label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.kg = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN5xtask6common6assets12fetch_assets28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$10__CALLSITE17hfb52f528bdc0e424E", i64 16) monotonic, align 8 ; 2 uses
  %i.kh = icmp ult i8 %i.kg, 3
  br i1 %i.kh, label %bb.aa, label %bb.y, !prof !26699

bb.y:                                             ; preds = %bb.x
  %i.ki = invoke noundef i8 @_ZN12tracing_core8callsite15DefaultCallsite8register17hfea5cd845fb2ec3aE(ptr noundef nonnull align 8 @"_ZN5xtask6common6assets12fetch_assets28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$10__CALLSITE17hfb52f528bdc0e424E")
          to label %bb.aa unwind label %bb.z

bb.z:                                             ; preds = %bb.y
end_hunk_3
begin_hunk_4_@"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h03c64a618f9d33a1E":bb.a
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.x = icmp eq ptr %i.t, null
  br i1 %i.x, label %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.thread3.i.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp ult i64 %.sroa.5.041.i.i.i.i, %i.v
  br i1 %i.y, label %.noexc.i.i.i.i, label %bb.h, !prof !14

.noexc.i.i.i.i:                                   ; preds = %bb.g
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.v, i64 noundef range(i64 1, 0) %.sroa.5.041.i.i.i.i, i64 noundef range(i64 1, 0) %.sroa.5.041.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @443) #54, !noalias !48656
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.z = sub nuw nsw i64 %.sroa.5.041.i.i.i.i, %i.v
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.042.i.i.i.i, i64 %i.v
  br label %bb.j

.split.i.i.i.i:                                   ; preds = %bb.e
  %.mask37.i.i.i.i = and i64 %i.v, -4294967296
  %i.ab = icmp eq i64 %.mask37.i.i.i.i, 17179869184
  br i1 %i.ab, label %.thread.i.i.i.i, label %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.i.i"

.split36.i.i.i.i:                                 ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ad = load i8, ptr %i.ac, align 8, !range !15, !noalias !48656, !noundef !8
  %i.ae = icmp eq i8 %i.ad, 35
  br i1 %i.ae, label %.thread.i.i.i.i, label %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.thread3.i.i"

.split35.i.i.i.i:                                 ; preds = %bb.e
  %i.af = getelementptr i8, ptr %i.t, i64 15
  %i.ag = load i8, ptr %i.af, align 8, !range !15, !noalias !48656, !noundef !8
  %i.ah = icmp eq i8 %i.ag, 35
  br i1 %i.ah, label %.thread.i.i.i.i, label %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.thread3.i.i"

bb.i:                                             ; preds = %bb.e
  %i.ai = icmp ult ptr %i.t, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.ai)
  %.mask.i.i.i.i = and i64 %i.v, -4294967296
  %i.aj = icmp eq i64 %.mask.i.i.i.i, 150323855360
  br i1 %i.aj, label %.thread.i.i.i.i, label %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.i.i"

.thread.i.i.i.i:                                  ; preds = %bb.i, %.split35.i.i.i.i, %.split36.i.i.i.i, %.split.i.i.i.i
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17ha15fe409393fbeaeE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q), !noalias !48656
  br label %bb.j

bb.j:                                             ; preds = %.thread.i.i.i.i, %bb.h
  %.sroa.0.116.i.i.i.i = phi ptr [ %.sroa.0.042.i.i.i.i, %.thread.i.i.i.i ], [ %i.aa, %bb.h ]
  %.sroa.5.114.i.i.i.i = phi i64 [ %.sroa.5.041.i.i.i.i, %.thread.i.i.i.i ], [ %i.z, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !48650
  %i.ak = icmp eq i64 %.sroa.5.114.i.i.i.i, 0
  br i1 %i.ak, label %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.thread.i.i", label %bb.d

"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.thread3.i.i": ; preds = %.split35.i.i.i.i, %.split36.i.i.i.i, %bb.f
  %.sroa.05.1.i.i.ph.i.i = phi ptr [ %i.t, %.split35.i.i.i.i ], [ %i.t, %.split36.i.i.i.i ], [ @442, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !48650
  br label %bb.k

"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.i.i": ; preds = %bb.i, %.split.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !48650
  %.not.i6.i = icmp eq ptr %i.t, null
  br i1 %.not.i6.i, label %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.thread.i.i", label %bb.k, !prof !16

bb.k:                                             ; preds = %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.i.i", %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.thread3.i.i"
  %.sroa.05.1.i.i6.i.i = phi ptr [ %.sroa.05.1.i.i.ph.i.i, %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.thread3.i.i" ], [ %i.t, %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.i.i" ]
  %i.al = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %.sroa.05.1.i.i6.i.i), !noalias !48656
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17he1044d664cfd8b54E.exit

"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.thread.i.i": ; preds = %bb.j, %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48657)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48660)
  %i.am = load ptr, ptr %1, align 8, !alias.scope !48663, !noalias !48666, !noundef !8 ; 5 uses
  %.not.i.i.i.i.i = icmp ne ptr %i.am, null       ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !48670, !noalias !48671 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !48670, !noalias !48671 ; 2 uses
  %i.ar = ptrtoint ptr %i.am to i64
  %.sroa.15.0.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 %i.ao, i64 undef
  %.sink.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 %i.aq, i64 0 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !48672
  call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17h6aacb3442ff30911E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.i, i64 noundef 1, i64 %.sink.i.i.i.i.i), !noalias !48673
  %i.as = load i8, ptr %i.d, align 8, !range !483, !noalias !48672, !noundef !8 ; 2 uses
  %i.at = icmp eq i8 %i.as, 2
  br i1 %i.at, label %bb.l, label %bb.m

bb.l:                                             ; preds = %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.thread.i.i"
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !noalias !48672, !nonnull !8, !align !461, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !48672
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17he1044d664cfd8b54E.exit

bb.m:                                             ; preds = %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.thread.i.i"
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.4.0.copyload.i.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 1, !noalias !48672 ; 2 uses
  %.sroa.624.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.624.0.copyload.i.i.i.i = load ptr, ptr %.sroa.624.0..sroa_idx.i.i.i.i, align 8, !noalias !48672 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !48672
  %i.aw = icmp eq i64 %.sink.i.i.i.i.i, 0
  %i.ax = trunc nuw i8 %i.as to i1                ; 2 uses
  br i1 %i.aw, label %_ZN4core4iter6traits8iterator8Iterator12try_for_each17h932a8283be62ff91E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.624.0.copyload.i.i.i.i, i64 8
  %.sroa.530.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 4 uses
  %.sroa.631.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.624.0.copyload.i.i.i.i, i64 32
  br i1 %i.ax, label %.lr.ph.i.i.split.us.i.i.i.i, label %.lr.ph.i.i.split.preheader.i.i.i.i, !prof !14

.lr.ph.i.i.split.preheader.i.i.i.i:               ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bb = icmp eq i8 %.sroa.4.0.copyload.i.i.i.i, 1
  br label %.lr.ph.i.i.split.i.i.i.i

.lr.ph.i.i.split.us.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.n, label %.critedge.i.i.i.i.i.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.split.us.i.i.i.i
  %i.bc = icmp eq i64 %i.ao, 0
  br i1 %i.bc, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0eced8dc6afe390fE.exit.i.i.i.us.i.i.i.i", label %.lr.ph.i.i.i.i.us.i.i.i.i.preheader

.lr.ph.i.i.i.i.us.i.i.i.i.preheader:              ; preds = %bb.n
  %xtraiter204 = and i64 %i.ao, 7                 ; 2 uses
  %lcmp.mod205.not = icmp eq i64 %xtraiter204, 0
  br i1 %lcmp.mod205.not, label %.lr.ph.i.i.i.i.us.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.us.i.i.i.i.prol

.lr.ph.i.i.i.i.us.i.i.i.i.prol:                   ; preds = %.lr.ph.i.i.i.i.us.i.i.i.i.preheader, %.lr.ph.i.i.i.i.us.i.i.i.i.prol
  %.sroa.012.015.i.i.i.i.us.i.i.i.i.prol = phi ptr [ %.sroa.012.0.i.i.i.i.us.i.i.i.i.prol, %.lr.ph.i.i.i.i.us.i.i.i.i.prol ], [ %i.am, %.lr.ph.i.i.i.i.us.i.i.i.i.preheader ]
  %.sroa.011.014.i.i.i.i.us.i.i.i.i.prol = phi i64 [ %i.be, %.lr.ph.i.i.i.i.us.i.i.i.i.prol ], [ %i.ao, %.lr.ph.i.i.i.i.us.i.i.i.i.preheader ]
  %prol.iter206 = phi i64 [ %prol.iter206.next, %.lr.ph.i.i.i.i.us.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.us.i.i.i.i.preheader ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i.i.us.i.i.i.i.prol, i64 1160
  %i.be = add i64 %.sroa.011.014.i.i.i.i.us.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.012.0.i.i.i.i.us.i.i.i.i.prol = load ptr, ptr %i.bd, align 8, !noalias !48674, !nonnull !8, !noundef !8 ; 3 uses
  %prol.iter206.next = add i64 %prol.iter206, 1   ; 2 uses
  %prol.iter206.cmp.not = icmp eq i64 %prol.iter206.next, %xtraiter204
  br i1 %prol.iter206.cmp.not, label %.lr.ph.i.i.i.i.us.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.us.i.i.i.i.prol, !llvm.loop !48685

.lr.ph.i.i.i.i.us.i.i.i.i.prol.loopexit:          ; preds = %.lr.ph.i.i.i.i.us.i.i.i.i.prol, %.lr.ph.i.i.i.i.us.i.i.i.i.preheader
  %.sroa.012.0.i.i.i.i.us.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.us.i.i.i.i.preheader ], [ %.sroa.012.0.i.i.i.i.us.i.i.i.i.prol, %.lr.ph.i.i.i.i.us.i.i.i.i.prol ]
  %.sroa.012.015.i.i.i.i.us.i.i.i.i.unr = phi ptr [ %i.am, %.lr.ph.i.i.i.i.us.i.i.i.i.preheader ], [ %.sroa.012.0.i.i.i.i.us.i.i.i.i.prol, %.lr.ph.i.i.i.i.us.i.i.i.i.prol ]
  %.sroa.011.014.i.i.i.i.us.i.i.i.i.unr = phi i64 [ %i.ao, %.lr.ph.i.i.i.i.us.i.i.i.i.preheader ], [ %i.be, %.lr.ph.i.i.i.i.us.i.i.i.i.prol ]
  %i.bf = icmp ult i64 %i.ao, 8
  br i1 %i.bf, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0eced8dc6afe390fE.exit.i.i.i.us.i.i.i.i", label %.lr.ph.i.i.i.i.us.i.i.i.i

.lr.ph.i.i.i.i.us.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.us.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.us.i.i.i.i
  %.sroa.012.015.i.i.i.i.us.i.i.i.i = phi ptr [ %.sroa.012.0.i.i.i.i.us.i.i.i.i.7, %.lr.ph.i.i.i.i.us.i.i.i.i ], [ %.sroa.012.015.i.i.i.i.us.i.i.i.i.unr, %.lr.ph.i.i.i.i.us.i.i.i.i.prol.loopexit ]
  %.sroa.011.014.i.i.i.i.us.i.i.i.i = phi i64 [ %i.bo, %.lr.ph.i.i.i.i.us.i.i.i.i ], [ %.sroa.011.014.i.i.i.i.us.i.i.i.i.unr, %.lr.ph.i.i.i.i.us.i.i.i.i.prol.loopexit ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i.i.us.i.i.i.i, i64 1160
  %.sroa.012.0.i.i.i.i.us.i.i.i.i = load ptr, ptr %i.bg, align 8, !noalias !48674, !nonnull !8, !noundef !8
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.us.i.i.i.i, i64 1160
  %.sroa.012.0.i.i.i.i.us.i.i.i.i.1 = load ptr, ptr %i.bh, align 8, !noalias !48674, !nonnull !8, !noundef !8
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.us.i.i.i.i.1, i64 1160
  %.sroa.012.0.i.i.i.i.us.i.i.i.i.2 = load ptr, ptr %i.bi, align 8, !noalias !48674, !nonnull !8, !noundef !8
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.us.i.i.i.i.2, i64 1160
  %.sroa.012.0.i.i.i.i.us.i.i.i.i.3 = load ptr, ptr %i.bj, align 8, !noalias !48674, !nonnull !8, !noundef !8
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.us.i.i.i.i.3, i64 1160
  %.sroa.012.0.i.i.i.i.us.i.i.i.i.4 = load ptr, ptr %i.bk, align 8, !noalias !48674, !nonnull !8, !noundef !8
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.us.i.i.i.i.4, i64 1160
  %.sroa.012.0.i.i.i.i.us.i.i.i.i.5 = load ptr, ptr %i.bl, align 8, !noalias !48674, !nonnull !8, !noundef !8
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.us.i.i.i.i.5, i64 1160
  %.sroa.012.0.i.i.i.i.us.i.i.i.i.6 = load ptr, ptr %i.bm, align 8, !noalias !48674, !nonnull !8, !noundef !8
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.us.i.i.i.i.6, i64 1160
  %i.bo = add i64 %.sroa.011.014.i.i.i.i.us.i.i.i.i, -8 ; 2 uses
  %.sroa.012.0.i.i.i.i.us.i.i.i.i.7 = load ptr, ptr %i.bn, align 8, !noalias !48674, !nonnull !8, !noundef !8 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0eced8dc6afe390fE.exit.i.i.i.us.i.i.i.i", label %.lr.ph.i.i.i.i.us.i.i.i.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0eced8dc6afe390fE.exit.i.i.i.us.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.us.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.us.i.i.i.i, %bb.n
  %.sroa.05.0.copyload.i.i.i.i.us.i.i.i.i = phi ptr [ %i.am, %bb.n ], [ %.sroa.012.0.i.i.i.i.us.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.us.i.i.i.i.prol.loopexit ], [ %.sroa.012.0.i.i.i.i.us.i.i.i.i.7, %.lr.ph.i.i.i.i.us.i.i.i.i ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i.i.i.us.i.i.i.i, i64 1154
  %i.br = load i16, ptr %i.bq, align 2, !noalias !48686, !noundef !8
  %.not.i.i.i.i = icmp eq i16 %i.br, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.us.i.i.i.i, label %.loopexit.i.i.us.i.i.i.i

.lr.ph.i.i.i.i.i.i.us.i.i.i.i:                    ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0eced8dc6afe390fE.exit.i.i.i.us.i.i.i.i", %bb.o
  %.sroa.0.038.i.i.i.i.i.i.us.i.i.i.i = phi ptr [ %i.bt, %bb.o ], [ %.sroa.05.0.copyload.i.i.i.i.us.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0eced8dc6afe390fE.exit.i.i.i.us.i.i.i.i" ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.us.i.i.i.i, i64 880
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !48695, !noundef !8 ; 3 uses
  %.not.i.i.i.i.i.i.i.us.i.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i.i.i.i.us.i.i.i.i, label %.split.us.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i.us.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.us.i.i.i.i, i64 1152
  %i.bv = load i16, ptr %i.bu, align 8, !noalias !48695
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 1154
  %i.bx = load i16, ptr %i.bw, align 2, !noalias !48686, !noundef !8
  %i.by = icmp ult i16 %i.bv, %i.bx
  br i1 %i.by, label %.loopexit.i.i.us.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.us.i.i.i.i

.loopexit.i.i.us.i.i.i.i:                         ; preds = %bb.o, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0eced8dc6afe390fE.exit.i.i.i.us.i.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48698)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48701)
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @97, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1778) #54, !noalias !48704
  unreachable

.lr.ph.i.i.split.i.i.i.i:                         ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hcc529d79d9bcecd9E.exit.i.i.i.i.i.i", %.lr.ph.i.i.split.preheader.i.i.i.i
  %.sroa.10.1.i.i.i.i.a = phi i64 [ 0, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hcc529d79d9bcecd9E.exit.i.i.i.i.i.i" ], [ %i.ar, %.lr.ph.i.i.split.preheader.i.i.i.i ] ; 2 uses
  %.sroa.15.1.i.i.i.i = phi i64 [ %.sroa.7.0.i.i.i.i.i.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hcc529d79d9bcecd9E.exit.i.i.i.i.i.i" ], [ %.sroa.15.0.i.i.i.i, %.lr.ph.i.i.split.preheader.i.i.i.i ] ; 6 uses
  %i.bz = phi i1 [ false, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hcc529d79d9bcecd9E.exit.i.i.i.i.i.i" ], [ %i.bb, %.lr.ph.i.i.split.preheader.i.i.i.i ]
  %.sroa.012.0.lcssa.i.i87.i.i.i.i.i.i = phi ptr [ %.sroa.07.0.i.i.i.i.i.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hcc529d79d9bcecd9E.exit.i.i.i.i.i.i" ], [ null, %.lr.ph.i.i.split.preheader.i.i.i.i ] ; 2 uses
  %i.ca = phi i64 [ %i.cc, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hcc529d79d9bcecd9E.exit.i.i.i.i.i.i" ], [ %i.aq, %.lr.ph.i.i.split.preheader.i.i.i.i ]
  %i.cb = phi i1 [ true, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hcc529d79d9bcecd9E.exit.i.i.i.i.i.i" ], [ %.not.i.i.i.i.i, %.lr.ph.i.i.split.preheader.i.i.i.i ]
  %i.cc = add i64 %i.ca, -1                       ; 2 uses
  br i1 %i.cb, label %bb.p, label %.critedge.i.i.i.i.i.i.i

bb.p:                                             ; preds = %.lr.ph.i.i.split.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.012.0.lcssa.i.i87.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.q, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0eced8dc6afe390fE.exit.i.i.i.i.i.i.i"

bb.q:                                             ; preds = %bb.p
  %i.cd = inttoptr i64 %.sroa.10.1.i.i.i.i.a to ptr ; 3 uses
  %i.ce = icmp eq i64 %.sroa.15.1.i.i.i.i, 0
  br i1 %i.ce, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0eced8dc6afe390fE.exit.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.q
  %xtraiter = and i64 %.sroa.15.1.i.i.i.i, 7      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.sroa.012.015.i.i.i.i.i.i.i.i.prol = phi ptr [ %.sroa.012.0.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %i.cd, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %.sroa.011.014.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.cg, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.sroa.15.1.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i.i.i.i.i.i.prol, i64 1160
  %i.cg = add i64 %.sroa.011.014.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.012.0.i.i.i.i.i.i.i.i.prol = load ptr, ptr %i.cf, align 8, !noalias !48674, !nonnull !8, !noundef !8 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !48710

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %.sroa.012.0.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.012.0.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.sroa.012.015.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.012.0.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.sroa.011.014.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.15.1.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.cg, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.ch = icmp ult i64 %.sroa.15.1.i.i.i.i, 8
  br i1 %i.ch, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0eced8dc6afe390fE.exit.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.012.015.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.012.0.i.i.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.012.015.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.011.014.i.i.i.i.i.i.i.i = phi i64 [ %i.cq, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.011.014.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i.i.i.i.i.i, i64 1160
  %.sroa.012.0.i.i.i.i.i.i.i.i = load ptr, ptr %i.ci, align 8, !noalias !48674, !nonnull !8, !noundef !8
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i, i64 1160
  %.sroa.012.0.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.cj, align 8, !noalias !48674, !nonnull !8, !noundef !8
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i.1, i64 1160
  %.sroa.012.0.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.ck, align 8, !noalias !48674, !nonnull !8, !noundef !8
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i.2, i64 1160
  %.sroa.012.0.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.cl, align 8, !noalias !48674, !nonnull !8, !noundef !8
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i.3, i64 1160
  %.sroa.012.0.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.cm, align 8, !noalias !48674, !nonnull !8, !noundef !8
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i.4, i64 1160
  %.sroa.012.0.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.cn, align 8, !noalias !48674, !nonnull !8, !noundef !8
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i.5, i64 1160
  %.sroa.012.0.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.co, align 8, !noalias !48674, !nonnull !8, !noundef !8
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i.6, i64 1160
  %i.cq = add i64 %.sroa.011.014.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.012.0.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.cp, align 8, !noalias !48674, !nonnull !8, !noundef !8 ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0eced8dc6afe390fE.exit.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0eced8dc6afe390fE.exit.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %bb.q, %bb.p
  %.sroa.37.0.copyload.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.15.1.i.i.i.i, %bb.p ], [ 0, %bb.q ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.26.0.copyload.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.10.1.i.i.i.i.a, %bb.p ], [ 0, %bb.q ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.05.0.copyload.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.012.0.lcssa.i.i87.i.i.i.i.i.i, %bb.p ], [ %i.cd, %bb.q ], [ %.sroa.012.0.i.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ], [ %.sroa.012.0.i.i.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i.i.i.i.i.i.i, i64 1154
  %i.ct = load i16, ptr %i.cs, align 2, !noalias !48686, !noundef !8
  %i.cu = zext i16 %i.ct to i64
  %i.cv = icmp ult i64 %.sroa.37.0.copyload.i.i.i.i.i.i.i.i, %i.cu
  br i1 %i.cv, label %bb.s, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0eced8dc6afe390fE.exit.i.i.i.i.i.i.i", %bb.r
  %.sroa.0.038.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cx, %bb.r ], [ %.sroa.05.0.copyload.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0eced8dc6afe390fE.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cz, %bb.r ], [ %.sroa.26.0.copyload.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0eced8dc6afe390fE.exit.i.i.i.i.i.i.i" ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i, i64 880
  %i.cx = load ptr, ptr %i.cw, align 8, !noalias !48695, !noundef !8 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.split.us.i.i.i.i, label %bb.r

._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i:         ; preds = %bb.r
  %i.cy = zext i16 %i.db to i64
  br label %bb.s

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.cz = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i, i64 1152
  %i.db = load i16, ptr %i.da, align 8, !noalias !48695 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 1154
  %i.dd = load i16, ptr %i.dc, align 2, !noalias !48686, !noundef !8
  %i.de = icmp ult i16 %i.db, %i.dd
  br i1 %i.de, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0eced8dc6afe390fE.exit.i.i.i.i.i.i.i"
  %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.37.0.copyload.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0eced8dc6afe390fE.exit.i.i.i.i.i.i.i" ], [ %i.cy, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.26.0.copyload.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0eced8dc6afe390fE.exit.i.i.i.i.i.i.i" ], [ %i.cz, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h0eced8dc6afe390fE.exit.i.i.i.i.i.i.i" ], [ %i.cx, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.df = icmp eq i64 %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i.i, 0
  %i.dg = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  br i1 %i.df, label %.loopexit.i.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i, i64 1160
  %i.di = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.di)
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.dg ; 2 uses
  %xtraiter201 = and i64 %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod202.not = icmp eq i64 %xtraiter201, 0
  br i1 %lcmp.mod202.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.t, %.prol.preheader
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.dk, %.prol.preheader ], [ %i.dj, %bb.t ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i.i, %bb.t ]
  %prol.iter203 = phi i64 [ %prol.iter203.next, %.prol.preheader ], [ 0, %bb.t ]
  %.pn28.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !48711, !nonnull !8, !noundef !8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.prol, i64 1160 ; 2 uses
  %prol.iter203.next = add i64 %prol.iter203, 1   ; 2 uses
  %prol.iter203.cmp.not = icmp eq i64 %prol.iter203.next, %xtraiter201
  br i1 %prol.iter203.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !48715

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.t
  %.pn30.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.t ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.dj, %bb.t ], [ %i.dk, %.prol.preheader ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i.i, %bb.t ], [ %.pn28.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %i.dl = icmp ult i64 %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i.i, 8
  br i1 %i.dl, label %.loopexit.i.i.i.i.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.du, %.new ], [ %.pn30.in.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !48711, !nonnull !8, !noundef !8
  %i.dm = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.dm, align 8, !noalias !48711, !nonnull !8, !noundef !8
  %i.dn = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.1, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.dn, align 8, !noalias !48711, !nonnull !8, !noundef !8
  %i.do = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.2, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.do, align 8, !noalias !48711, !nonnull !8, !noundef !8
  %i.dp = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.3, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.dp, align 8, !noalias !48711, !nonnull !8, !noundef !8
  %i.dq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.4, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.dq, align 8, !noalias !48711, !nonnull !8, !noundef !8
  %i.dr = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.5, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.dr, align 8, !noalias !48711, !nonnull !8, !noundef !8
  %i.ds = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.6, i64 1160
  %.pn28.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.ds, align 8, !noalias !48711, !nonnull !8, !noundef !8 ; 2 uses
  %i.dt = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.du = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.7, i64 1160
  br i1 %i.dt, label %.loopexit.i.i.i.i.i.i, label %.new

.split.us.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.us.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @684) #54
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.u, !noalias !48716

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %.split.us.i.i.i.i
  unreachable

bb.u:                                             ; preds = %.split.us.i.i.i.i
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.critedge.i.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.split.i.i.i.i, %.lr.ph.i.i.split.us.i.i.i.i
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #54, !noalias !48717
  unreachable

.loopexit.i.i.i.i.i.i:                            ; preds = %.prol.loopexit, %.new, %bb.s
  %.sroa.7.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dg, %bb.s ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i, %bb.s ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.7, %.new ]
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i, i64 888
  %i.dx = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.dx)
  %i.dy = getelementptr inbounds nuw [24 x i8], ptr %i.dw, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.dz = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i.i ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i) ]
  %i.ea = getelementptr i8, ptr %i.dy, i64 8
  %.val9.i.i.i.i.i.i = load ptr, ptr %i.ea, align 8, !noalias !48718 ; 2 uses
  %i.eb = getelementptr i8, ptr %i.dy, i64 16
  %.val10.i.i.i.i.i.i = load i64, ptr %i.eb, align 8, !noalias !48718
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48698)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48701)
  %i.ec = tail call fastcc noundef ptr @"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$16begin_object_key17h0123dfa5d25575bfE"(ptr noalias noundef align 8 dereferenceable(32) %i.ay, ptr noalias noundef align 8 dereferenceable(8) %.sroa.624.0.copyload.i.i.i.i, i1 noundef zeroext %i.bz), !noalias !48704 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h8ee613224f408cc5E.exit.i.i.i.i.i.i.i.i.i", label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h8ee613224f408cc5E.exit.thread.i.i.i.i.i.i.i.i.i", !prof !17

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h8ee613224f408cc5E.exit.thread.i.i.i.i.i.i.i.i.i": ; preds = %.loopexit.i.i.i.i.i.i
  %i.ed = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %i.ec), !noalias !48704
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17he1044d664cfd8b54E.exit

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h8ee613224f408cc5E.exit.i.i.i.i.i.i.i.i.i": ; preds = %.loopexit.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i) ]
  %i.ee = tail call fastcc noundef align 8 ptr @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17h2d85527b18494ec4E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %.sroa.624.0.copyload.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.i.i.i.i.i.i, i64 noundef %.val10.i.i.i.i.i.i), !noalias !48704 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17he1044d664cfd8b54E.exit

.preheader.i.i.i.i.i.i:                           ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h8ee613224f408cc5E.exit.i.i.i.i.i.i.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17ha15fe409393fbeaeE.exit.i.i.i.i.i.i"
  %.sroa.0.042.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.116.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17ha15fe409393fbeaeE.exit.i.i.i.i.i.i" ], [ @471, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h8ee613224f408cc5E.exit.i.i.i.i.i.i.i.i.i" ] ; 5 uses
  %.sroa.5.041.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.5.114.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17ha15fe409393fbeaeE.exit.i.i.i.i.i.i" ], [ 2, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h8ee613224f408cc5E.exit.i.i.i.i.i.i.i.i.i" ] ; 8 uses
  %i.ef = tail call { i64, ptr } @"_ZN52_$LT$$RF$std..fs..File$u20$as$u20$std..io..Write$GT$5write17h67386e57384e2d63E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.624.0.copyload.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.042.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.5.041.i.i.i.i.i.i.i.i.i.i.i.i), !noalias !48719 ; 2 uses
  %i.eg = extractvalue { i64, ptr } %i.ef, 0
  %i.eh = extractvalue { i64, ptr } %i.ef, 1      ; 14 uses
  %i.ei = trunc nuw i64 %i.eg to i1
  %i.ej = ptrtoint ptr %i.eh to i64               ; 7 uses
  br i1 %i.ei, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.preheader.i.i.i.i.i.i
  %i.ek = and i64 %i.ej, 3
  switch i64 %i.ek, label %default.unreachable [
    i64 2, label %.split.i.i.i.i.i.i.i.i.i.i.i.i
    i64 3, label %bb.z
    i64 0, label %.split36.i.i.i.i.i.i.i.i.i.i.i.i
    i64 1, label %.split35.i.i.i.i.i.i.i.i.i.i.i.i
  ], !prof !13

bb.w:                                             ; preds = %.preheader.i.i.i.i.i.i
  %i.el = icmp eq ptr %i.eh, null
  br i1 %i.el, label %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.thread5.i.i.i.i.i.i.i.i.i.i", label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.em = icmp ult i64 %.sroa.5.041.i.i.i.i.i.i.i.i.i.i.i.i, %i.ej
  br i1 %i.em, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.y, !prof !14

.noexc.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.x
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.ej, i64 noundef range(i64 1, 0) %.sroa.5.041.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %.sroa.5.041.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @443) #54, !noalias !48719
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.en = sub nuw nsw i64 %.sroa.5.041.i.i.i.i.i.i.i.i.i.i.i.i, %i.ej
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0.042.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ej
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17ha15fe409393fbeaeE.exit.i.i.i.i.i.i"

.split.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.v
  %.mask37.i.i.i.i.i.i.i.i.i.i.i.i = and i64 %i.ej, -4294967296
  %i.ep = icmp eq i64 %.mask37.i.i.i.i.i.i.i.i.i.i.i.i, 17179869184
  br i1 %i.ep, label %.thread.i.i.i.i.i.i.thread.i.i.i.i.i.i, label %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.i.i.i.i.i.i.i.i.i.i"

.split36.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eh) ]
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.er = load i8, ptr %i.eq, align 8, !range !15, !noalias !48719, !noundef !8
  %i.es = icmp eq i8 %i.er, 35
  br i1 %i.es, label %.thread.i.i.i.i.i.i.thread.i.i.i.i.i.i, label %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.thread5.i.i.i.i.i.i.i.i.i.i"

.split35.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.v
  %i.et = getelementptr i8, ptr %i.eh, i64 -1     ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.et) ]
  %i.eu = getelementptr i8, ptr %i.eh, i64 15
  %i.ev = load i8, ptr %i.eu, align 8, !range !15, !noalias !48719, !noundef !8
  %i.ew = icmp eq i8 %i.ev, 35
  br i1 %i.ew, label %bb.aa, label %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.thread5.i.i.i.i.i.i.i.i.i.i"

bb.z:                                             ; preds = %bb.v
  %i.ex = icmp ult ptr %i.eh, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.ex)
  %.mask.i.i.i.i.i.i.i.i.i.i.i.i = and i64 %i.ej, -4294967296
  %i.ey = icmp eq i64 %.mask.i.i.i.i.i.i.i.i.i.i.i.i, 150323855360
  br i1 %i.ey, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17ha15fe409393fbeaeE.exit.i.i.i.i.i.i", label %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.i.i.i.i.i.i.i.i.i.i"

.thread.i.i.i.i.i.i.thread.i.i.i.i.i.i:           ; preds = %.split36.i.i.i.i.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eh) ]
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17ha15fe409393fbeaeE.exit.i.i.i.i.i.i"

bb.aa:                                            ; preds = %.split35.i.i.i.i.i.i.i.i.i.i.i.i
end_hunk_4
