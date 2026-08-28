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
  %.sroa.36.0..sroa_idx622.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.36.0..sroa_idx622.a, align 8
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
  %.sroa.36.0..sroa_idx624.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lobit.i.i.i28.sink, ptr %.sroa.36.0..sroa_idx624.a, align 8
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
  %.sroa.36.0..sroa_idx628.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.36.0..sroa_idx628.a, align 8
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
  %.sroa.34.0..sroa_idx488.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.34.0..sroa_idx488.a, align 8
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
  %.sroa.34.0..sroa_idx490.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lobit.i.i.i18.sink, ptr %.sroa.34.0..sroa_idx490.a, align 8
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
  %.sroa.34.0..sroa_idx492.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.34.0..sroa_idx492.a, align 8
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
  %.sroa.34.0..sroa_idx494.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.34.0..sroa_idx494.a, align 8
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
