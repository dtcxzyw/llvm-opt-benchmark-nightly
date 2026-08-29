Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/dump-aabfeca2ed74a9fb.dump.2d0df727840c2dbc-cgu.0?download=true
inline.NumInlined: 31028
inline.NumDeleted: 13504
loop-unroll.NumCompletelyUnrolled: 125
loop-unroll.NumRuntimeUnrolled: 228
loop-unroll.NumUnrolled: 353
loop-unroll.NumUnrolledNotLatch: 9
begin_hunk_0_@"_ZN10serde_json5value2de82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$11deserialize17hcd91ac400234fe3aE":bb.a
bb.j:                                             ; preds = %bb.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !27044, !noundef !13
  %i.bn = add i64 %i.ax, 4
  store i64 %i.bn, ptr %i.ar, align 8, !alias.scope !27045, !noalias !27033
  %.not.i43.2 = icmp eq i8 %i.bm, 108
  br i1 %.not.i43.2, label %bb.ag, label %bb.k, !prof !4380

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i45": ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !27046
  store i64 5, ptr %i.e, align 8, !noalias !27046
  %i.bo = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc41d812516ce183cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e), !noalias !27047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !27046
  br label %bb.af

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !27046
  store i64 9, ptr %i.d, align 8, !noalias !27046
  %i.bp = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc41d812516ce183cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d), !noalias !27047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !27046
  br label %bb.af

bb.l:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h2d54aad932fd9e08E.exit"
  %i.bq = add i64 %i.ax, 1                        ; 4 uses
  store i64 %i.bq, ptr %i.ar, align 8, !alias.scope !27048, !noalias !26990
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27051)
  %umax.i32 = tail call i64 @llvm.umax.i64(i64 %i.bq, i64 %i.at) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27054), !noalias !26990
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27057), !noalias !26990
  %exitcond.not.i34.not = icmp ult i64 %i.bq, %i.at
  br i1 %exitcond.not.i34.not, label %bb.m, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i37"

bb.m:                                             ; preds = %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !noalias !27060, !noundef !13
  %i.bt = add i64 %i.ax, 2                        ; 3 uses
  store i64 %i.bt, ptr %i.ar, align 8, !alias.scope !27064, !noalias !27065
  %.not.i35 = icmp eq i8 %i.bs, 114
  br i1 %.not.i35, label %bb.n, label %bb.r, !prof !4380

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27066), !noalias !26990
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27068), !noalias !26990
  %exitcond.not.i34.1 = icmp eq i64 %i.bt, %umax.i32
  br i1 %exitcond.not.i34.1, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i37", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !noalias !27070, !noundef !13
  %i.bw = add i64 %i.ax, 3                        ; 3 uses
  store i64 %i.bw, ptr %i.ar, align 8, !alias.scope !27071, !noalias !27065
  %.not.i35.1 = icmp eq i8 %i.bv, 117
  br i1 %.not.i35.1, label %bb.p, label %bb.r, !prof !4380

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27072), !noalias !26990
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27074), !noalias !26990
  %exitcond.not.i34.2 = icmp eq i64 %i.bw, %umax.i32
  br i1 %exitcond.not.i34.2, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i37", label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !noalias !27076, !noundef !13
  %i.bz = add i64 %i.ax, 4
  store i64 %i.bz, ptr %i.ar, align 8, !alias.scope !27077, !noalias !27065
  %.not.i35.2 = icmp eq i8 %i.by, 101
  br i1 %.not.i35.2, label %bb.aj, label %bb.r, !prof !4380

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i37": ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !27078
  store i64 5, ptr %i.g, align 8, !noalias !27078
  %i.ca = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc41d812516ce183cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g), !noalias !27079
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !27078
  br label %bb.ai

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !27078
  store i64 9, ptr %i.f, align 8, !noalias !27078
  %i.cb = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc41d812516ce183cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f), !noalias !27079
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !27078
  br label %bb.ai

bb.s:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h2d54aad932fd9e08E.exit"
  %i.cc = add i64 %i.ax, 1                        ; 4 uses
  store i64 %i.cc, ptr %i.ar, align 8, !alias.scope !27080, !noalias !26990
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27083)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.cc, i64 %i.at) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27086), !noalias !26990
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27089), !noalias !26990
  %exitcond.not.i.not = icmp ult i64 %i.cc, %i.at
  br i1 %exitcond.not.i.not, label %bb.t, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i"

bb.t:                                             ; preds = %bb.s
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !noalias !27092, !noundef !13
  %i.cf = add i64 %i.ax, 2                        ; 3 uses
  store i64 %i.cf, ptr %i.ar, align 8, !alias.scope !27096, !noalias !27097
  %.not.i30 = icmp eq i8 %i.ce, 97
  br i1 %.not.i30, label %bb.u, label %bb.aa, !prof !4380

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27098), !noalias !26990
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27100), !noalias !26990
  %exitcond.not.i.1 = icmp eq i64 %i.cf, %umax.i
  br i1 %exitcond.not.i.1, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i", label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cg = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !noalias !27102, !noundef !13
  %i.ci = add i64 %i.ax, 3                        ; 3 uses
  store i64 %i.ci, ptr %i.ar, align 8, !alias.scope !27103, !noalias !27097
  %.not.i30.1 = icmp eq i8 %i.ch, 108
  br i1 %.not.i30.1, label %bb.w, label %bb.aa, !prof !4380

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27104), !noalias !26990
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27106), !noalias !26990
  %exitcond.not.i.2 = icmp eq i64 %i.ci, %umax.i
  br i1 %exitcond.not.i.2, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i", label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cj = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !noalias !27108, !noundef !13
  %i.cl = add i64 %i.ax, 4                        ; 3 uses
  store i64 %i.cl, ptr %i.ar, align 8, !alias.scope !27109, !noalias !27097
  %.not.i30.2 = icmp eq i8 %i.ck, 115
  br i1 %.not.i30.2, label %bb.y, label %bb.aa, !prof !4380

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27110), !noalias !26990
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27112), !noalias !26990
  %exitcond.not.i.3 = icmp eq i64 %i.cl, %umax.i
  br i1 %exitcond.not.i.3, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cm = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !noalias !27114, !noundef !13
  %i.co = add i64 %i.ax, 5
  store i64 %i.co, ptr %i.ar, align 8, !alias.scope !27115, !noalias !27097
  %.not.i30.3 = icmp eq i8 %i.cn, 101
  br i1 %.not.i30.3, label %bb.al, label %bb.aa, !prof !4380

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i": ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !27116
  store i64 5, ptr %i.i, align 8, !noalias !27116
  %i.cp = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc41d812516ce183cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i), !noalias !27117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !27116
  br label %bb.ak

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !27116
  store i64 9, ptr %i.h, align 8, !noalias !27116
  %i.cq = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc41d812516ce183cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h), !noalias !27117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !27116
  br label %bb.ak

bb.ab:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h2d54aad932fd9e08E.exit"
  %i.cr = add i64 %i.ax, 1
  store i64 %i.cr, ptr %i.ar, align 8, !alias.scope !27118, !noalias !26990
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !27014
  call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17h63a509a6eb048268E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext false), !noalias !26990, !inline_history !27015
  %i.cs = load i64, ptr %i.ap, align 8, !range !406, !noalias !27014, !noundef !13 ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 3
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  br i1 %i.ct, label %bb.am, label %bb.an

bb.ac:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h2d54aad932fd9e08E.exit"
  %i.cv = add i64 %i.ax, 1
  store i64 %i.cv, ptr %i.ar, align 8, !alias.scope !27121, !noalias !26990
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.cw, align 8, !alias.scope !26993, !noalias !26990
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !27014
  call void @"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17hb363ba977b6810eaE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.an, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.av, ptr noalias noundef nonnull align 8 dereferenceable(80) %1), !noalias !26990, !inline_history !27015
  %i.cx = load i64, ptr %i.an, align 8, !range !1515, !noalias !27014, !noundef !13 ; 2 uses
  %i.cy = icmp eq i64 %i.cx, 2
  %i.cz = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !noalias !27014 ; 4 uses
  br i1 %i.cy, label %bb.as, label %bb.at

bb.ad:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h2d54aad932fd9e08E.exit"
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.dc = load i8, ptr %i.db, align 8, !range !1013, !alias.scope !26993, !noalias !26990, !noundef !13
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %bb.be, label %bb.bd

bb.ae:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h2d54aad932fd9e08E.exit"
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.df = load i8, ptr %i.de, align 8, !range !1013, !alias.scope !26993, !noalias !26990, !noundef !13
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %bb.co, label %bb.cn

bb.af:                                            ; preds = %bb.k, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i45"
  %.sroa.0.1.i44.ph = phi ptr [ %i.bo, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i45" ], [ %i.bp, %bb.k ]
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i44.ph, ptr %i.dh, align 8, !alias.scope !26990, !noalias !26993
  store i64 -9223372036854775803, ptr %0, align 8, !alias.scope !26990, !noalias !26993
  br label %bb.ah

bb.ag:                                            ; preds = %bb.j
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.34.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.52)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hf4d037dcddec6494E.exit"

bb.ah:                                            ; preds = %bb.ew, %bb.ef, %bb.by, %bb.as, %bb.am, %bb.ak, %bb.ai, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.52)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hf4d037dcddec6494E.exit"

bb.ai:                                            ; preds = %bb.r, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i37"
  %.sroa.0.1.i36.ph = phi ptr [ %i.ca, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i37" ], [ %i.cb, %bb.r ]
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i36.ph, ptr %i.di, align 8, !alias.scope !26990, !noalias !26993
  store i64 -9223372036854775803, ptr %0, align 8, !alias.scope !26990, !noalias !26993
  br label %bb.ah

bb.aj:                                            ; preds = %bb.q
  store i64 -9223372036854775807, ptr %0, align 8
  %.sroa.34.0..sroa_idx268 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %.sroa.34.0..sroa_idx268, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.52)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hf4d037dcddec6494E.exit"

bb.ak:                                            ; preds = %bb.aa, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i"
  %.sroa.0.1.i.ph = phi ptr [ %i.cp, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i" ], [ %i.cq, %bb.aa ]
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph, ptr %i.dj, align 8, !alias.scope !26990, !noalias !26993
  store i64 -9223372036854775803, ptr %0, align 8, !alias.scope !26990, !noalias !26993
  br label %bb.ah

bb.al:                                            ; preds = %bb.z
  store i64 -9223372036854775807, ptr %0, align 8
  %.sroa.34.0..sroa_idx270 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.34.0..sroa_idx270, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.52)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hf4d037dcddec6494E.exit"

bb.am:                                            ; preds = %bb.ab
  %i.dk = load ptr, ptr %i.cu, align 8, !noalias !27014, !nonnull !13, !align !25, !noundef !13
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dk, ptr %i.dl, align 8, !alias.scope !26990, !noalias !26993
  store i64 -9223372036854775803, ptr %0, align 8, !alias.scope !26990, !noalias !26993
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !27014
  br label %bb.ah

bb.an:                                            ; preds = %bb.ab
  %.sroa.4.0.copyload = load i64, ptr %i.cu, align 8, !noalias !27014 ; 3 uses
  switch i64 %i.cs, label %default.unreachable478 [
    i64 0, label %bb.ao
    i64 1, label %bb.ar
    i64 2, label %bb.aq
  ]

default.unreachable478:                           ; preds = %bb.ex, %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.an
  %i.dm = bitcast i64 %.sroa.4.0.copyload to double
  %i.dn = tail call double @llvm.fabs.f64(double %i.dm)
  %i.do = fcmp ueq double %i.dn, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !27124
  br i1 %i.do, label %"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417he1d25946b2968871E.exit.i21", label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i64 -9223372036854775808, ptr %i.j, align 8, !noalias !27124
  call fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h334bdfa87607afd5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.j), !noalias !27130
  br label %"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417he1d25946b2968871E.exit.i21"

"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417he1d25946b2968871E.exit.i21": ; preds = %bb.ap, %bb.ao
  %.sroa.07.013.i.i22 = phi i64 [ 2, %bb.ap ], [ 3, %bb.ao ]
  %.sroa.0.0.i.i23 = phi i64 [ -9223372036854775806, %bb.ap ], [ -9223372036854775808, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !27124
  br label %bb.ar

bb.aq:                                            ; preds = %bb.an
  %.lobit.i.i.i16 = lshr i64 %.sroa.4.0.copyload, 63
  br label %bb.ar

bb.ar:                                            ; preds = %bb.an, %bb.aq, %"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417he1d25946b2968871E.exit.i21"
  %.sink = phi i64 [ -9223372036854775806, %bb.aq ], [ %.sroa.0.0.i.i23, %"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417he1d25946b2968871E.exit.i21" ], [ -9223372036854775806, %bb.an ]
  %.lobit.i.i.i16.sink = phi i64 [ %.lobit.i.i.i16, %bb.aq ], [ %.sroa.07.013.i.i22, %"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417he1d25946b2968871E.exit.i21" ], [ 0, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !27014
  store i64 %.sink, ptr %0, align 8
  %.sroa.34.0..sroa_idx272 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lobit.i.i.i16.sink, ptr %.sroa.34.0..sroa_idx272, align 8
  %.sroa.46.0..sroa_idx290 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.copyload, ptr %.sroa.46.0..sroa_idx290, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.52)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hf4d037dcddec6494E.exit"

bb.as:                                            ; preds = %bb.ac
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.da, ptr %i.dp, align 8, !alias.scope !26990, !noalias !26993
  store i64 -9223372036854775803, ptr %0, align 8, !alias.scope !26990, !noalias !26993
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !27014
  br label %bb.ah

bb.at:                                            ; preds = %bb.ac
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !27014 ; 13 uses
  %i.dq = trunc nuw i64 %i.cx to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.da) ]
  %i.dr = icmp slt i64 %.sroa.4.0.copyload.i, 0   ; 2 uses
  br i1 %i.dq, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  br i1 %i.dr, label %bb.aw, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !738

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.au
  %i.ds = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %i.ds, label %bb.bc, label %bb.av

bb.av:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !27134
  %i.dt = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.sroa.4.0.copyload.i, i64 noundef range(i64 1, 9) 1) #42, !noalias !27134 ; 2 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %bb.aw, label %bb.bc

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %bb.av ], [ 0, %bb.au ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.sroa.4.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1765) #41, !noalias !27145
  unreachable

bb.ax:                                            ; preds = %bb.at
  br i1 %i.dr, label %bb.az, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !738

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.ax
  %i.dv = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %i.dv, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !27146
  %i.dw = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.sroa.4.0.copyload.i, i64 noundef range(i64 1, 9) 1) #42, !noalias !27146 ; 2 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %bb.ay ], [ 0, %bb.ax ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %.sroa.4.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1765) #41, !noalias !27160
  unreachable

bb.ba:                                            ; preds = %bb.eu, %bb.cm
  %.sroa.34.sroa.32.sroa.0.0.in.in = phi i64 [ %i.mm, %bb.eu ], [ %.sroa.34.sroa.32.sroa.0.2.in.in, %bb.cm ]
  %i.dy = inttoptr i64 %.sroa.34.sroa.32.sroa.0.0.in.in to ptr
  %i.dz = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h07299f01aaf065d0E(ptr noalias noundef nonnull align 8 %i.dy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1), !noalias !26990
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dz, ptr %i.ea, align 8, !alias.scope !26990, !noalias !26993
  store i64 -9223372036854775803, ptr %0, align 8, !alias.scope !26990, !noalias !26993
  br label %bb.et

bb.bb:                                            ; preds = %bb.ay, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.dw, %bb.ay ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 1 %i.da, i64 %.sroa.4.0.copyload.i, i1 false), !noalias !27161
  %i.eb = ptrtoint ptr %.sroa.10.0.i.i.i.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !27014
  store i64 -9223372036854775805, ptr %0, align 8
  %.sroa.34.0..sroa_idx274 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.34.0..sroa_idx274, align 8
  %.sroa.46.0..sroa_idx292 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.eb, ptr %.sroa.46.0..sroa_idx292, align 8
  %.sroa.50.0..sroa_idx310 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.50.0..sroa_idx310, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.52)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hf4d037dcddec6494E.exit"

bb.bc:                                            ; preds = %bb.av, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.dt, %bb.av ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %i.da, i64 %.sroa.4.0.copyload.i, i1 false), !noalias !27162
  %i.ec = ptrtoint ptr %.sroa.10.0.i.i.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !27014
  store i64 -9223372036854775805, ptr %0, align 8
  %.sroa.34.0..sroa_idx276 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.34.0..sroa_idx276, align 8
  %.sroa.46.0..sroa_idx294 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ec, ptr %.sroa.46.0..sroa_idx294, align 8
  %.sroa.50.0..sroa_idx312 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.50.0..sroa_idx312, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.52)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hf4d037dcddec6494E.exit"

bb.bd:                                            ; preds = %bb.ad
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 73 ; 2 uses
  %i.ee = load i8, ptr %i.ed, align 1, !alias.scope !26993, !noalias !26990, !noundef !13
  %i.ef = add i8 %i.ee, -1                        ; 2 uses
  store i8 %i.ef, ptr %i.ed, align 1, !alias.scope !26993, !noalias !26990
  %i.eg = icmp eq i8 %i.ef, 0
  br i1 %i.eg, label %bb.by, label %bb.be, !prof !11

bb.be:                                            ; preds = %bb.bd, %bb.ad
  %i.eh = add i64 %i.ax, 1
  store i64 %i.eh, ptr %i.ar, align 8, !alias.scope !27163, !noalias !26990
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.959)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %1, ptr %i.m, align 8, !noalias !27166
  %i.ei = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i8 1, ptr %i.ei, align 8, !noalias !27166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !27166
  store i64 0, ptr %i.l, align 8, !noalias !27166
  %i.ej = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ej, align 8, !noalias !27166
  %i.ek = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 4 uses
end_hunk_0
begin_hunk_1_@"_ZN4dump1_71_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$dump..KindDump$GT$9serialize17h6e17f92586a79266E":bb.a
bb.ai:                                            ; preds = %bb.af
  %i.ev = tail call fastcc noundef ptr @_ZN10serde_json3ser18format_escaped_str17h6748dc9d0f30c4fbE(ptr nonnull %.val11.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @536, i64 noundef 18), !noalias !61734 ; 2 uses
  %.not.i.i9.i.i.i.i.i.i = icmp eq ptr %i.ev, null
  br i1 %.not.i.i9.i.i.i.i.i.i, label %bb.am, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h8379e05972074cebE.exit.i.i", !prof !220

bb.aj:                                            ; preds = %bb.af
  %i.ew = tail call fastcc noundef ptr @_ZN10serde_json3ser18format_escaped_str17h6748dc9d0f30c4fbE(ptr nonnull %.val11.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @537, i64 noundef 16), !noalias !61734 ; 2 uses
  %.not.i.i12.i.i.i.i.i.i = icmp eq ptr %i.ew, null
  br i1 %.not.i.i12.i.i.i.i.i.i, label %bb.am, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h8379e05972074cebE.exit.i.i", !prof !220

bb.ak:                                            ; preds = %bb.af
  %i.ex = tail call fastcc noundef ptr @_ZN10serde_json3ser18format_escaped_str17h6748dc9d0f30c4fbE(ptr nonnull %.val11.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @538, i64 noundef 17), !noalias !61734 ; 2 uses
  %.not.i.i15.i.i.i.i.i.i = icmp eq ptr %i.ex, null
  br i1 %.not.i.i15.i.i.i.i.i.i, label %bb.am, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h8379e05972074cebE.exit.i.i", !prof !220

bb.al:                                            ; preds = %bb.af
  %i.ey = tail call fastcc noundef ptr @_ZN10serde_json3ser18format_escaped_str17h6748dc9d0f30c4fbE(ptr nonnull %.val11.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @518, i64 noundef 8), !noalias !61734 ; 2 uses
  %.not.i.i18.i.i.i.i.i.i = icmp eq ptr %i.ey, null
  br i1 %.not.i.i18.i.i.i.i.i.i, label %bb.am, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h8379e05972074cebE.exit.i.i", !prof !220

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h8379e05972074cebE.exit.i.i": ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.i, %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i
  %.sink.i.sink.i.sink.i.i.i.i = phi ptr [ %i.eh, %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i ], [ %i.ey, %bb.al ], [ %i.es, %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.i ], [ %i.ex, %bb.ak ], [ %i.ew, %bb.aj ], [ %i.ev, %bb.ai ], [ %i.eu, %bb.ah ], [ %i.et, %bb.ag ]
  %i.ez = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %.sink.i.sink.i.sink.i.i.i.i), !noalias !61734
  br label %"_ZN17meilisearch_types5tasks7network1_113_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyChange$GT$9serialize17hc22cec211136cd0aE.exit.thread.i"

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61749)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61752)
  %.val.i.i.i39.i.i = load ptr, ptr %1, align 8, !alias.scope !61724, !noalias !61755, !nonnull !13, !noundef !13 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61761)
  %i.fb = load i64, ptr %.val.i.i.i39.i.i, align 8, !range !26, !alias.scope !61761, !noalias !61764, !noundef !13
  %i.fc = getelementptr inbounds nuw i8, ptr %.val.i.i.i39.i.i, i64 16 ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8, !alias.scope !61761, !noalias !61764, !noundef !13 ; 4 uses
  %i.fe = icmp sgt i64 %i.fd, -1
  tail call void @llvm.assume(i1 %i.fe)
  %i.ff = sub nsw i64 %i.fb, %i.fd
  %i.fg = icmp ugt i64 %i.ff, 1
  br i1 %i.fg, label %bb.an, label %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i40.i.i, !prof !220

bb.an:                                            ; preds = %bb.am
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61768)
  %i.fh = getelementptr inbounds nuw i8, ptr %.val.i.i.i39.i.i, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !alias.scope !61771, !noalias !61772, !nonnull !13, !noundef !13
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fd
  store i8 44, ptr %i.fj, align 1, !noalias !61774
  %i.fk = add nuw i64 %i.fd, 1
  store i64 %i.fk, ptr %i.fc, align 8, !alias.scope !61771, !noalias !61772
  br label %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i43.i.i

_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i40.i.i: ; preds = %bb.am
  %i.fl = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i.i39.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @214, i64 noundef 1), !noalias !61755 ; 2 uses
  %.not.i.i.i41.i.i = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i41.i.i, label %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i43.i.i, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hfdaf05a4245b2870E.exit.i.i.i.i", !prof !341

_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i43.i.i: ; preds = %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i40.i.i, %bb.an
  store i8 2, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !noalias !61722
  %.val10.i.i.i44.i.i = load ptr, ptr %1, align 8, !alias.scope !61724, !noalias !61755, !nonnull !13, !align !25, !noundef !13
  %i.fm = tail call fastcc noundef ptr @_ZN10serde_json3ser18format_escaped_str17h6748dc9d0f30c4fbE(ptr nonnull %.val10.i.i.i44.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @542, i64 noundef range(i64 2, 25) 9), !noalias !61775 ; 2 uses
  %.not.i.i.i.i.i.i45.i.i = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i.i.i.i45.i.i, label %bb.ao, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hfdaf05a4245b2870E.exit.i.i.i.i", !prof !220

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hfdaf05a4245b2870E.exit.i.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i43.i.i, %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i40.i.i
  %.sink.i.i.i.i.i = phi ptr [ %i.fl, %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i40.i.i ], [ %i.fm, %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i43.i.i ]
  %i.fn = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %.sink.i.i.i.i.i), !noalias !61775
  br label %"_ZN17meilisearch_types5tasks7network1_113_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyChange$GT$9serialize17hc22cec211136cd0aE.exit.thread.i"

bb.ao:                                            ; preds = %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i43.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61776)
  %.val.i5.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !61724, !noalias !61779, !nonnull !13, !align !25, !noundef !13 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61780)
  %i.fo = load i64, ptr %.val.i5.i.i.i.i, align 8, !range !26, !alias.scope !61780, !noalias !61783, !noundef !13
  %i.fp = getelementptr inbounds nuw i8, ptr %.val.i5.i.i.i.i, i64 16 ; 2 uses
  %i.fq = load i64, ptr %i.fp, align 8, !alias.scope !61780, !noalias !61783, !noundef !13 ; 4 uses
  %i.fr = icmp sgt i64 %i.fq, -1
  tail call void @llvm.assume(i1 %i.fr)
  %i.fs = sub nsw i64 %i.fo, %i.fq
  %i.ft = icmp ugt i64 %i.fs, 1
  br i1 %i.ft, label %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.thread.i.i.i47.i.i, label %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i46.i.i, !prof !220

_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.thread.i.i.i47.i.i: ; preds = %bb.ao
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61787)
  %i.fu = getelementptr inbounds nuw i8, ptr %.val.i5.i.i.i.i, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !alias.scope !61790, !noalias !61791, !nonnull !13, !noundef !13
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fq
  store i8 58, ptr %i.fw, align 1, !noalias !61793
  %i.fx = add nuw i64 %i.fq, 1
  store i64 %i.fx, ptr %i.fp, align 8, !alias.scope !61790, !noalias !61791
  br label %bb.aq

_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i46.i.i: ; preds = %bb.ao
  %i.fy = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i5.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @215, i64 noundef 1), !noalias !61779 ; 2 uses
  %.not.i6.i.i.i.i = icmp eq ptr %i.fy, null
  br i1 %.not.i6.i.i.i.i, label %bb.aq, label %bb.ap, !prof !341

bb.ap:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i46.i.i
  %i.fz = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %i.fy), !noalias !61779
  br label %"_ZN17meilisearch_types5tasks7network1_113_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyChange$GT$9serialize17hc22cec211136cd0aE.exit.thread.i"

bb.aq:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i46.i.i, %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.thread.i.i.i47.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61794)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61797)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61799)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61802)
  %i.ga = load ptr, ptr %i.fa, align 8, !alias.scope !61804, !noalias !61807, !noundef !13 ; 2 uses
  %.not.i.i.i.i8.i.i.i.i = icmp ne ptr %i.ga, null ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.gc = load i64, ptr %i.gb, align 8, !alias.scope !61809, !noalias !61810
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ge = load i64, ptr %i.gd, align 8, !alias.scope !61809, !noalias !61810 ; 2 uses
  %i.gf = ptrtoint ptr %i.ga to i64
  %.sroa.15.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i8.i.i.i.i, i64 %i.gc, i64 undef
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61811)
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !61814, !noalias !61815, !nonnull !13, !align !25, !noundef !13 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61817)
  %i.gg = load i64, ptr %.val.i.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !61817, !noalias !61820, !noundef !13
  %i.gh = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i, i64 16 ; 4 uses
  %i.gi = load i64, ptr %i.gh, align 8, !alias.scope !61817, !noalias !61820, !noundef !13 ; 4 uses
  %i.gj = icmp sgt i64 %i.gi, -1
  tail call void @llvm.assume(i1 %i.gj)
  %i.gk = sub nsw i64 %i.gg, %i.gi
  %i.gl = icmp ugt i64 %i.gk, 1
  br i1 %i.gl, label %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.thread.i.i.i.i.i.i.i.i, label %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.i.i.i.i.i.i.i.i, !prof !220

_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.thread.i.i.i.i.i.i.i.i: ; preds = %bb.aq
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61824)
  %i.gm = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !alias.scope !61827, !noalias !61828, !nonnull !13, !noundef !13
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gi
  store i8 123, ptr %i.go, align 1, !noalias !61830
  %i.gp = add nuw i64 %i.gi, 1
  store i64 %i.gp, ptr %i.gh, align 8, !alias.scope !61827, !noalias !61828
  br label %bb.as

_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.aq
  %i.gq = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @213, i64 noundef 1), !noalias !61831 ; 2 uses
  %.not.i10.i.i.i.i.i.i.i = icmp eq ptr %i.gq, null
  br i1 %.not.i10.i.i.i.i.i.i.i, label %bb.as, label %bb.ar, !prof !341

bb.ar:                                            ; preds = %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.i.i.i.i.i.i.i.i
  %i.gr = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %i.gq), !noalias !61831
  br label %"_ZN17meilisearch_types5tasks7network1_113_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyChange$GT$9serialize17hc22cec211136cd0aE.exit.thread.i"

bb.as:                                            ; preds = %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.thread.i.i.i.i.i.i.i.i
  %i.gs = icmp ne i64 %i.ge, 0
  %.not413.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i8.i.i.i.i, i1 %i.gs, i1 false
  br i1 %.not413.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61832)
  %i.gt = load i64, ptr %.val.i.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !61832, !noalias !61835, !noundef !13
  %i.gu = load i64, ptr %i.gh, align 8, !alias.scope !61832, !noalias !61835, !noundef !13 ; 4 uses
  %i.gv = icmp sgt i64 %i.gu, -1
  tail call void @llvm.assume(i1 %i.gv)
  %i.gw = sub nsw i64 %i.gt, %i.gu
  %i.gx = icmp ugt i64 %i.gw, 1
  br i1 %i.gx, label %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i.i.i.i.i.i.i.i, label %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i, !prof !220

_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i.i.i.i.i.i.i.i: ; preds = %bb.at
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61839)
  %i.gy = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8, !alias.scope !61842, !noalias !61843, !nonnull !13, !noundef !13
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.gu
  store i8 125, ptr %i.ha, align 1, !noalias !61845
  %i.hb = add nuw i64 %i.gu, 1
  store i64 %i.hb, ptr %i.gh, align 8, !alias.scope !61842, !noalias !61843
  br label %bb.fk

_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i: ; preds = %bb.at
  %i.hc = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @207, i64 noundef 1), !noalias !61831 ; 2 uses
  %.not16.i.i.i.i.i.i.i.i = icmp eq ptr %i.hc, null
  br i1 %.not16.i.i.i.i.i.i.i.i, label %bb.fk, label %bb.au, !prof !341

bb.au:                                            ; preds = %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i
  %i.hd = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %i.hc), !noalias !61831
  br label %"_ZN17meilisearch_types5tasks7network1_113_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyChange$GT$9serialize17hc22cec211136cd0aE.exit.thread.i"

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.as
  %.sroa.536.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %.sroa.422.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 2 uses
  %.sroa.637.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %.sroa.523.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %.sroa.533.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 4 uses
  %.sroa.634.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %.sroa.536.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 3 uses
  %.sroa.637.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %.sroa.539.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.sroa.428.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 2 uses
  %.sroa.640.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.sroa.529.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  br label %bb.av

bb.av:                                            ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hba40e86c1be2ef1cE.exit.i.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.hg = phi i1 [ true, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ false, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hba40e86c1be2ef1cE.exit.i.i.i.i.i.i.i.i.i" ]
  %.sroa.10.1.i.i.i.i.i.i.i.a = phi i64 [ %i.gf, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ 0, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hba40e86c1be2ef1cE.exit.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.15.1.i.i.i.i.i.i.i = phi i64 [ %.sroa.15.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.7.0.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hba40e86c1be2ef1cE.exit.i.i.i.i.i.i.i.i.i" ] ; 6 uses
  %.sroa.6.1.i.i.i.i.i.i.i = phi ptr [ null, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hba40e86c1be2ef1cE.exit.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.hh = phi i64 [ %i.ge, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.hi, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hba40e86c1be2ef1cE.exit.i.i.i.i.i.i.i.i.i" ]
  %i.hi = add i64 %i.hh, -1                       ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.6.1.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.aw, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h3262b4c85770a58dE.exit.i.i.i.i.i.i.i.i.i.i"

bb.aw:                                            ; preds = %bb.av
  %i.hj = inttoptr i64 %.sroa.10.1.i.i.i.i.i.i.i.a to ptr ; 3 uses
  %i.hk = icmp eq i64 %.sroa.15.1.i.i.i.i.i.i.i, 0
  br i1 %i.hk, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h3262b4c85770a58dE.exit.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %bb.aw
  %xtraiter = and i64 %.sroa.15.1.i.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol
  %.sroa.012.015.i.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.hj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %.sroa.011.014.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.hm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.sroa.15.1.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i.i.i.i.i.i.i.i.i.prol, i64 720
  %i.hm = add i64 %.sroa.011.014.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %i.hl, align 8, !noalias !61846, !nonnull !13, !noundef !13 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !61857

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.sroa.012.015.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.hj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.sroa.011.014.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.15.1.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.hm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.hn = icmp ult i64 %.sroa.15.1.i.i.i.i.i.i.i, 8
  br i1 %i.hn, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h3262b4c85770a58dE.exit.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.012.015.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.012.015.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.011.014.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.011.014.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i.i.i.i.i.i.i.i.i, i64 720
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ho, align 8, !noalias !61846, !nonnull !13, !noundef !13
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i, i64 720
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.hp, align 8, !noalias !61846, !nonnull !13, !noundef !13
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.1, i64 720
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.hq, align 8, !noalias !61846, !nonnull !13, !noundef !13
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.2, i64 720
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.hr, align 8, !noalias !61846, !nonnull !13, !noundef !13
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.3, i64 720
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.hs, align 8, !noalias !61846, !nonnull !13, !noundef !13
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.4, i64 720
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.ht, align 8, !noalias !61846, !nonnull !13, !noundef !13
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.5, i64 720
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.hu, align 8, !noalias !61846, !nonnull !13, !noundef !13
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.6, i64 720
  %i.hw = add i64 %.sroa.011.014.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.hv, align 8, !noalias !61846, !nonnull !13, !noundef !13 ; 2 uses
  %i.hx = icmp eq i64 %i.hw, 0
  br i1 %i.hx, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h3262b4c85770a58dE.exit.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h3262b4c85770a58dE.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.aw, %bb.av
  %.sroa.37.0.copyload.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.15.1.i.i.i.i.i.i.i, %bb.av ], [ 0, %bb.aw ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.26.0.copyload.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.10.1.i.i.i.i.i.i.i.a, %bb.av ], [ 0, %bb.aw ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.1.i.i.i.i.i.i.i, %bb.av ], [ %i.hj, %bb.aw ], [ %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i.i.i, i64 714
  %i.hz = load i16, ptr %i.hy, align 2, !noalias !61858, !noundef !13
  %i.ia = zext i16 %i.hz to i64
  %i.ib = icmp ult i64 %.sroa.37.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %i.ia
  br i1 %i.ib, label %bb.ay, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h3262b4c85770a58dE.exit.i.i.i.i.i.i.i.i.i.i", %bb.ax
  %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ic, %bb.ax ], [ %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h3262b4c85770a58dE.exit.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ie, %bb.ax ], [ %.sroa.26.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h3262b4c85770a58dE.exit.i.i.i.i.i.i.i.i.i.i" ]
  %i.ic = load ptr, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !61867, !noundef !13 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ic, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ba, label %bb.ax

._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i:   ; preds = %bb.ax
  %i.id = zext i16 %i.ig to i64
  br label %bb.ay

bb.ax:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ie = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 712
  %i.ig = load i16, ptr %i.if, align 8, !noalias !61867 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ic, i64 714
  %i.ii = load i16, ptr %i.ih, align 2, !noalias !61858, !noundef !13
  %i.ij = icmp ult i16 %i.ig, %i.ii
  br i1 %i.ij, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ay:                                            ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h3262b4c85770a58dE.exit.i.i.i.i.i.i.i.i.i.i"
  %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.37.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h3262b4c85770a58dE.exit.i.i.i.i.i.i.i.i.i.i" ], [ %i.id, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.26.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h3262b4c85770a58dE.exit.i.i.i.i.i.i.i.i.i.i" ], [ %i.ie, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h3262b4c85770a58dE.exit.i.i.i.i.i.i.i.i.i.i" ], [ %i.ic, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.ik = icmp eq i64 %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %i.il = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  br i1 %i.ik, label %.loopexit.i.i.i.i.i.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i.i, i64 720
  %i.in = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.in)
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %i.il ; 2 uses
  %xtraiter1327 = and i64 %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod1328.not = icmp eq i64 %xtraiter1327, 0
  br i1 %lcmp.mod1328.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.az, %.prol.preheader
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.ip, %.prol.preheader ], [ %i.io, %bb.az ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i.i, %bb.az ]
  %prol.iter1329 = phi i64 [ %prol.iter1329.next, %.prol.preheader ], [ 0, %bb.az ]
  %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !61870, !nonnull !13, !noundef !13 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, i64 720 ; 2 uses
  %prol.iter1329.next = add i64 %prol.iter1329, 1 ; 2 uses
  %prol.iter1329.cmp.not = icmp eq i64 %prol.iter1329.next, %xtraiter1327
  br i1 %prol.iter1329.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !61874

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.az
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.az ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.io, %bb.az ], [ %i.ip, %.prol.preheader ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i.i, %bb.az ], [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %i.iq = icmp ult i64 %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i.i, 8
  br i1 %i.iq, label %.loopexit.i.i.i.i.i.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.iz, %.new ], [ %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !61870, !nonnull !13, !noundef !13
  %i.ir = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 720
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.ir, align 8, !noalias !61870, !nonnull !13, !noundef !13
  %i.is = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.1, i64 720
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.is, align 8, !noalias !61870, !nonnull !13, !noundef !13
  %i.it = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.2, i64 720
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.it, align 8, !noalias !61870, !nonnull !13, !noundef !13
  %i.iu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.3, i64 720
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.iu, align 8, !noalias !61870, !nonnull !13, !noundef !13
  %i.iv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.4, i64 720
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.iv, align 8, !noalias !61870, !nonnull !13, !noundef !13
  %i.iw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.5, i64 720
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.iw, align 8, !noalias !61870, !nonnull !13, !noundef !13
  %i.ix = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.6, i64 720
  %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.ix, align 8, !noalias !61870, !nonnull !13, !noundef !13 ; 2 uses
  %i.iy = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.iz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.7, i64 720
  br i1 %i.iy, label %.loopexit.i.i.i.i.i.i.i, label %.new

bb.ba:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1639) #41
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.bb, !noalias !61875

.noexc.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ba
  unreachable

bb.bb:                                            ; preds = %bb.ba
  %i.ja = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.loopexit.i.i.i.i.i.i.i:                          ; preds = %.prol.loopexit, %.new, %bb.ay
  %.sroa.7.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.il, %bb.ay ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ay ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new ]
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.jc = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.jc)
  %i.jd = getelementptr inbounds nuw [24 x i8], ptr %i.jb, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i.i, i64 272
  %i.jf = getelementptr inbounds nuw [40 x i8], ptr %i.je, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i ; 7 uses
  %i.jg = getelementptr i8, ptr %i.jd, i64 8
  %.val9.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.jg, align 8, !noalias !61876 ; 2 uses
  %i.jh = getelementptr i8, ptr %i.jd, i64 16
  %.val10.i.i.i.i.i.i.i.i.i = load i64, ptr %i.jh, align 8, !noalias !61876
  call void @llvm.experimental.noalias.scope.decl(metadata !61877)
  call void @llvm.experimental.noalias.scope.decl(metadata !61880)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !61883, !noalias !61884 ; 5 uses
  br i1 %i.hg, label %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %.loopexit.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !61890)
  %i.ji = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !61890, !noalias !61893, !noundef !13
  %i.jj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.jk = load i64, ptr %i.jj, align 8, !alias.scope !61890, !noalias !61893, !noundef !13 ; 4 uses
  %i.jl = icmp sgt i64 %i.jk, -1
  call void @llvm.assume(i1 %i.jl)
  %i.jm = sub nsw i64 %i.ji, %i.jk
  %i.jn = icmp ugt i64 %i.jm, 1
  br i1 %i.jn, label %bb.bd, label %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !220

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.experimental.noalias.scope.decl(metadata !61897)
  %i.jo = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8, !alias.scope !61900, !noalias !61901, !nonnull !13, !noundef !13
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.jk
  store i8 44, ptr %i.jq, align 1, !noalias !61903
  %i.jr = add nuw i64 %i.jk, 1
  store i64 %i.jr, ptr %i.jj, align 8, !alias.scope !61900, !noalias !61901
  br label %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bc
  %i.js = call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @214, i64 noundef 1), !noalias !61884 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.js, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hcfa0f4f96b175a0eE.exit.i.i.i.i.i.i.i.i.i.i.i.i", !prof !341

_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bd, %.loopexit.i.i.i.i.i.i.i
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !61883, !noalias !61884, !nonnull !13, !align !25, !noundef !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i.i.i.i) ]
  %i.jt = call fastcc noundef ptr @_ZN10serde_json3ser18format_escaped_str17h6748dc9d0f30c4fbE(ptr nonnull %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.i.i.i.i.i.i.i.i.i, i64 noundef %.val10.i.i.i.i.i.i.i.i.i), !noalias !61884 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.jt, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.be, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hcfa0f4f96b175a0eE.exit.i.i.i.i.i.i.i.i.i.i.i.i", !prof !220

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hcfa0f4f96b175a0eE.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.js, %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jt, %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ju = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i), !noalias !61884
  br label %"_ZN17meilisearch_types5tasks7network1_113_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyChange$GT$9serialize17hc22cec211136cd0aE.exit.thread.i"

bb.be:                                            ; preds = %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !61883, !noalias !61904, !nonnull !13, !align !25, !noundef !13 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !61905)
  %i.jv = load i64, ptr %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !61905, !noalias !61908, !noundef !13
  %i.jw = getelementptr inbounds nuw i8, ptr %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.jx = load i64, ptr %i.jw, align 8, !alias.scope !61905, !noalias !61908, !noundef !13 ; 4 uses
  %i.jy = icmp sgt i64 %i.jx, -1
  call void @llvm.assume(i1 %i.jy)
  %i.jz = sub nsw i64 %i.jv, %i.jx
  %i.ka = icmp ugt i64 %i.jz, 1
  br i1 %i.ka, label %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !220

_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.be
  call void @llvm.experimental.noalias.scope.decl(metadata !61912)
  %i.kb = getelementptr inbounds nuw i8, ptr %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.kc = load ptr, ptr %i.kb, align 8, !alias.scope !61915, !noalias !61916, !nonnull !13, !noundef !13
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 %i.jx
  store i8 58, ptr %i.kd, align 1, !noalias !61918
  %i.ke = add nuw i64 %i.jx, 1
  store i64 %i.ke, ptr %i.jw, align 8, !alias.scope !61915, !noalias !61916
  br label %bb.bg

_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.be
  %i.kf = call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @215, i64 noundef 1), !noalias !61904 ; 2 uses
  %.not.i8.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.kf, null
  br i1 %.not.i8.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bg, label %bb.bf, !prof !341

bb.bf:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.kg = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %i.kf), !noalias !61904
  br label %"_ZN17meilisearch_types5tasks7network1_113_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyChange$GT$9serialize17hc22cec211136cd0aE.exit.thread.i"

bb.bg:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !61919)
  call void @llvm.experimental.noalias.scope.decl(metadata !61922)
  call void @llvm.experimental.noalias.scope.decl(metadata !61925)
  call void @llvm.experimental.noalias.scope.decl(metadata !61927)
  call void @llvm.experimental.noalias.scope.decl(metadata !61930)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !61933, !noalias !61934, !nonnull !13, !align !25, !noundef !13 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !61938)
  %i.kh = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !61938, !noalias !61941, !noundef !13
  %i.ki = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.kj = load i64, ptr %i.ki, align 8, !alias.scope !61938, !noalias !61941, !noundef !13 ; 4 uses
  %i.kk = icmp sgt i64 %i.kj, -1
  call void @llvm.assume(i1 %i.kk)
  %i.kl = sub nsw i64 %i.kh, %i.kj
end_hunk_1
begin_hunk_2_@"_ZN4dump1_71_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$dump..KindDump$GT$9serialize17h6e17f92586a79266E":bb.a

bb.bo:                                            ; preds = %bb.bk
  %i.ln = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !61994
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !61994
  call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$24serialize_struct_variant17hcd6cb45ab17f6309E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @518, i64 noundef 8)
  %i.lo = load i8, ptr %i.k, align 8, !range !450, !noalias !61994, !noundef !13 ; 3 uses
  %i.lp = icmp eq i8 %i.lo, 2
  br i1 %i.lp, label %bb.eu, label %bb.ev

bb.bp:                                            ; preds = %bb.bn
  %i.lq = load ptr, ptr %.sroa.634.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !61994, !nonnull !13, !align !25, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !61994
  br label %"_ZN98_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStructVariant$GT$15serialize_field17h2e2ceeae09812701E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.bq:                                            ; preds = %bb.bn
  %i.lr = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.533.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 7, i1 false), !noalias !61994
  %.sroa.634.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.634.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !61994 ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !61994
  store i8 %i.ll, ptr %i.n, align 8, !noalias !61994
  store ptr %.sroa.634.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !61994
  call void @llvm.experimental.noalias.scope.decl(metadata !61995)
  call void @llvm.experimental.noalias.scope.decl(metadata !61998)
  %i.ls = trunc nuw i8 %i.ll to i1
  br i1 %i.ls, label %bb.br, label %bb.bs, !prof !11

bb.br:                                            ; preds = %bb.bq
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @198, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1980) #41, !noalias !62000
  unreachable

bb.bs:                                            ; preds = %bb.bq
  call void @llvm.experimental.noalias.scope.decl(metadata !62001)
  call void @llvm.experimental.noalias.scope.decl(metadata !62004)
  call void @llvm.experimental.noalias.scope.decl(metadata !62006)
  call void @llvm.experimental.noalias.scope.decl(metadata !62009)
  call void @llvm.experimental.noalias.scope.decl(metadata !62011)
  %i.lt = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !range !450, !alias.scope !62014, !noalias !62015, !noundef !13
  %i.lu = icmp eq i8 %i.lt, 1
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.634.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !62017 ; 5 uses
  br i1 %i.lu, label %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !62018)
  %i.lv = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !62018, !noalias !62021, !noundef !13
  %i.lw = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.lx = load i64, ptr %i.lw, align 8, !alias.scope !62018, !noalias !62021, !noundef !13 ; 4 uses
  %i.ly = icmp sgt i64 %i.lx, -1
  call void @llvm.assume(i1 %i.ly)
  %i.lz = sub nsw i64 %i.lv, %i.lx
  %i.ma = icmp ugt i64 %i.lz, 1
  br i1 %i.ma, label %bb.bu, label %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !220

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.experimental.noalias.scope.decl(metadata !62025)
  %i.mb = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.mc = load ptr, ptr %i.mb, align 8, !alias.scope !62028, !noalias !62029, !nonnull !13, !noundef !13
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 %i.lx
  store i8 44, ptr %i.md, align 1, !noalias !62031
  %i.me = add nuw i64 %i.lx, 1
  store i64 %i.me, ptr %i.lw, align 8, !alias.scope !62028, !noalias !62029
  br label %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bt
  %i.mf = call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @214, i64 noundef 1), !noalias !62017 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.mf, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hfdaf05a4245b2870E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !341

_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bu, %bb.bs
  store i8 2, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !62014, !noalias !62015
  %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.634.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !62017, !nonnull !13, !align !25, !noundef !13
  %i.mg = call fastcc noundef ptr @_ZN10serde_json3ser18format_escaped_str17h6748dc9d0f30c4fbE(ptr nonnull %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @521, i64 noundef range(i64 2, 25) 18), !noalias !62032 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.mg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bv, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hfdaf05a4245b2870E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !220

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hfdaf05a4245b2870E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.mf, %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.mg, %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.mh = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i), !noalias !62032
  br label %"_ZN98_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStructVariant$GT$15serialize_field17h2e2ceeae09812701E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.bv:                                            ; preds = %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !62033)
  %.val.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.634.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !62036, !nonnull !13, !align !25, !noundef !13 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !62037)
  %i.mi = load i64, ptr %.val.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !62037, !noalias !62040, !noundef !13
  %i.mj = getelementptr inbounds nuw i8, ptr %.val.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.mk = load i64, ptr %i.mj, align 8, !alias.scope !62037, !noalias !62040, !noundef !13 ; 4 uses
  %i.ml = icmp sgt i64 %i.mk, -1
  call void @llvm.assume(i1 %i.ml)
  %i.mm = sub nsw i64 %i.mi, %i.mk
  %i.mn = icmp ugt i64 %i.mm, 1
  br i1 %i.mn, label %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !220

_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bv
  call void @llvm.experimental.noalias.scope.decl(metadata !62044)
  %i.mo = getelementptr inbounds nuw i8, ptr %.val.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.mp = load ptr, ptr %i.mo, align 8, !alias.scope !62047, !noalias !62048, !nonnull !13, !noundef !13
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 %i.mk
  store i8 58, ptr %i.mq, align 1, !noalias !62050
  %i.mr = add nuw i64 %i.mk, 1
  store i64 %i.mr, ptr %i.mj, align 8, !alias.scope !62047, !noalias !62048
  br label %bb.bx

_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bv
  %i.ms = call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @215, i64 noundef 1), !noalias !62036 ; 2 uses
  %.not.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ms, null
  br i1 %.not.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bx, label %bb.bw, !prof !341

bb.bw:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mt = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %i.ms), !noalias !62036
  br label %"_ZN98_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStructVariant$GT$15serialize_field17h2e2ceeae09812701E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.bx:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !62051)
  call void @llvm.experimental.noalias.scope.decl(metadata !62054)
  call void @llvm.experimental.noalias.scope.decl(metadata !62056)
  call void @llvm.experimental.noalias.scope.decl(metadata !62059)
  %i.mu = load ptr, ptr %i.lr, align 8, !alias.scope !62061, !noalias !62064, !noundef !13 ; 2 uses
  %.not.i.i.i.i8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ne ptr %i.mu, null ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  %i.mw = load i64, ptr %i.mv, align 8, !alias.scope !62066, !noalias !62067
  %i.mx = getelementptr inbounds nuw i8, ptr %i.jf, i64 24
  %i.my = load i64, ptr %i.mx, align 8, !alias.scope !62066, !noalias !62067 ; 2 uses
  %i.mz = ptrtoint ptr %i.mu to i64
  %.sroa.15.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.mw, i64 undef
  call void @llvm.experimental.noalias.scope.decl(metadata !62068)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.634.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !62071, !noalias !62072, !nonnull !13, !align !25, !noundef !13 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !62074)
  %i.na = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !62074, !noalias !62077, !noundef !13
  %i.nb = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 4 uses
  %i.nc = load i64, ptr %i.nb, align 8, !alias.scope !62074, !noalias !62077, !noundef !13 ; 4 uses
  %i.nd = icmp sgt i64 %i.nc, -1
  call void @llvm.assume(i1 %i.nd)
  %i.ne = sub nsw i64 %i.na, %i.nc
  %i.nf = icmp ugt i64 %i.ne, 1
  br i1 %i.nf, label %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !220

_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bx
  call void @llvm.experimental.noalias.scope.decl(metadata !62081)
  %i.ng = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.nh = load ptr, ptr %i.ng, align 8, !alias.scope !62084, !noalias !62085, !nonnull !13, !noundef !13
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 %i.nc
  store i8 123, ptr %i.ni, align 1, !noalias !62087
  %i.nj = add nuw i64 %i.nc, 1
  store i64 %i.nj, ptr %i.nb, align 8, !alias.scope !62084, !noalias !62085
  br label %bb.bz

_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bx
  %i.nk = call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @213, i64 noundef 1), !noalias !62088 ; 2 uses
  %.not.i10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.nk, null
  br i1 %.not.i10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bz, label %bb.by, !prof !341

bb.by:                                            ; preds = %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.nl = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %i.nk), !noalias !62088
  br label %"_ZN98_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStructVariant$GT$15serialize_field17h2e2ceeae09812701E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.bz:                                            ; preds = %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not245.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.my, 0
  %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 %.not245.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 false
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.experimental.noalias.scope.decl(metadata !62089)
  %i.nm = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !62089, !noalias !62092, !noundef !13
  %i.nn = load i64, ptr %i.nb, align 8, !alias.scope !62089, !noalias !62092, !noundef !13 ; 4 uses
  %i.no = icmp sgt i64 %i.nn, -1
  call void @llvm.assume(i1 %i.no)
  %i.np = sub nsw i64 %i.nm, %i.nn
  %i.nq = icmp ugt i64 %i.np, 1
  br i1 %i.nq, label %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !220

_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ca
  call void @llvm.experimental.noalias.scope.decl(metadata !62096)
  %i.nr = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ns = load ptr, ptr %i.nr, align 8, !alias.scope !62099, !noalias !62100, !nonnull !13, !noundef !13
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.nn
  store i8 125, ptr %i.nt, align 1, !noalias !62102
  %i.nu = add nuw i64 %i.nn, 1
  store i64 %i.nu, ptr %i.nb, align 8, !alias.scope !62099, !noalias !62100
  br label %"_ZN98_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStructVariant$GT$15serialize_field17h421fca2009805553E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ca
  %i.nv = call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @207, i64 noundef 1), !noalias !62088 ; 2 uses
  %.not16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.nv, null
  br i1 %.not16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN98_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStructVariant$GT$15serialize_field17h421fca2009805553E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.cb, !prof !341

bb.cb:                                            ; preds = %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.nw = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %i.nv), !noalias !62088
  br label %"_ZN98_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStructVariant$GT$15serialize_field17h2e2ceeae09812701E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h2712854ff48a7d5cE.exit.i.i.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h2712854ff48a7d5cE.exit.i.i.thread196.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !62103
  %i.nx = icmp eq i64 %i.oa, 0
  br i1 %i.nx, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bz, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h2712854ff48a7d5cE.exit.i.i.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.ny = phi i64 [ %i.oa, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h2712854ff48a7d5cE.exit.i.i.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.my, %bb.bz ]
  %.sroa.012.0.lcssa.i.i104.i.i118.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h2712854ff48a7d5cE.exit.i.i.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ null, %bb.bz ] ; 2 uses
  %i.nz = phi i1 [ false, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h2712854ff48a7d5cE.exit.i.i.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ true, %bb.bz ]
  %.sroa.15.1117.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.7.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h2712854ff48a7d5cE.exit.i.i.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.15.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bz ] ; 6 uses
  %.sroa.10.1116.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h2712854ff48a7d5cE.exit.i.i.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.mz, %bb.bz ] ; 2 uses
  %i.oa = add i64 %i.ny, -1                       ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.012.0.lcssa.i.i104.i.i118.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cc, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he19fda1ed1befa85E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.cc:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ob = inttoptr i64 %.sroa.10.1116.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to ptr ; 3 uses
  %i.oc = icmp eq i64 %.sroa.15.1117.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.oc, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he19fda1ed1befa85E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %bb.cc
  %xtraiter1330 = and i64 %.sroa.15.1117.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod1331.not = icmp eq i64 %xtraiter1330, 0
  br i1 %lcmp.mod1331.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.sroa.012.015.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.ob, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %.sroa.011.014.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.oe, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.sroa.15.1117.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter1332 = phi i64 [ %prol.iter1332.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.od = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, i64 808
  %i.oe = add i64 %.sroa.011.014.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %i.od, align 8, !noalias !62119, !nonnull !13, !noundef !13 ; 3 uses
  %prol.iter1332.next = add i64 %prol.iter1332, 1 ; 2 uses
  %prol.iter1332.cmp.not = icmp eq i64 %prol.iter1332.next, %xtraiter1330
  br i1 %prol.iter1332.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !62124

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.sroa.012.015.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.ob, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.sroa.011.014.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.15.1117.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.oe, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.of = icmp ult i64 %.sroa.15.1117.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 8
  br i1 %i.of, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he19fda1ed1befa85E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.012.015.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.012.015.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.011.014.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.oo, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.011.014.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.og = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 808
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.og, align 8, !noalias !62119, !nonnull !13, !noundef !13
  %i.oh = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 808
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.oh, align 8, !noalias !62119, !nonnull !13, !noundef !13
  %i.oi = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, i64 808
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.oi, align 8, !noalias !62119, !nonnull !13, !noundef !13
  %i.oj = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2, i64 808
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.oj, align 8, !noalias !62119, !nonnull !13, !noundef !13
  %i.ok = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, i64 808
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.ok, align 8, !noalias !62119, !nonnull !13, !noundef !13
  %i.ol = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.4, i64 808
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.ol, align 8, !noalias !62119, !nonnull !13, !noundef !13
  %i.om = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.5, i64 808
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.om, align 8, !noalias !62119, !nonnull !13, !noundef !13
  %i.on = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.6, i64 808
  %i.oo = add i64 %.sroa.011.014.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.on, align 8, !noalias !62119, !nonnull !13, !noundef !13 ; 2 uses
  %i.op = icmp eq i64 %i.oo, 0
  br i1 %i.op, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he19fda1ed1befa85E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he19fda1ed1befa85E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cc, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.37.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.15.1117.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.cc ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.26.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.10.1116.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.cc ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.012.0.lcssa.i.i104.i.i118.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ob, %bb.cc ], [ %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 802
  %i.or = load i16, ptr %i.oq, align 2, !noalias !62125, !noundef !13
  %i.os = zext i16 %i.or to i64
  %i.ot = icmp ult i64 %.sroa.37.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.os
  br i1 %i.ot, label %bb.ce, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he19fda1ed1befa85E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.cd
  %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ov, %bb.cd ], [ %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he19fda1ed1befa85E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ox, %bb.cd ], [ %.sroa.26.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he19fda1ed1befa85E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %i.ou = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 528
  %i.ov = load ptr, ptr %i.ou, align 8, !noalias !62134, !noundef !13 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ov, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cg, label %bb.cd

._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cd
  %i.ow = zext i16 %i.oz to i64
  br label %bb.ce

bb.cd:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ox = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 800
  %i.oz = load i16, ptr %i.oy, align 8, !noalias !62134 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ov, i64 802
  %i.pb = load i16, ptr %i.pa, align 2, !noalias !62125, !noundef !13
  %i.pc = icmp ult i16 %i.oz, %i.pb
  br i1 %i.pc, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ce:                                            ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he19fda1ed1befa85E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.37.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he19fda1ed1befa85E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.ow, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.26.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he19fda1ed1befa85E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.ox, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he19fda1ed1befa85E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.ov, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.pd = icmp eq i64 %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %i.pe = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  br i1 %i.pd, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.pf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 808
  %i.pg = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.pg)
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.pf, i64 %i.pe ; 2 uses
  %xtraiter1336 = and i64 %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod1337.not = icmp eq i64 %xtraiter1336, 0
  br i1 %lcmp.mod1337.not, label %.prol.loopexit1334, label %.prol.preheader1333

.prol.preheader1333:                              ; preds = %bb.cf, %.prol.preheader1333
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.pi, %.prol.preheader1333 ], [ %i.ph, %bb.cf ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader1333 ], [ %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cf ]
  %prol.iter1338 = phi i64 [ %prol.iter1338.next, %.prol.preheader1333 ], [ 0, %bb.cf ]
  %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !62137, !nonnull !13, !noundef !13 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, i64 808 ; 2 uses
  %prol.iter1338.next = add i64 %prol.iter1338, 1 ; 2 uses
  %prol.iter1338.cmp.not = icmp eq i64 %prol.iter1338.next, %xtraiter1336
  br i1 %prol.iter1338.cmp.not, label %.prol.loopexit1334, label %.prol.preheader1333, !llvm.loop !62141

.prol.loopexit1334:                               ; preds = %.prol.preheader1333, %bb.cf
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.cf ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader1333 ]
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.ph, %bb.cf ], [ %i.pi, %.prol.preheader1333 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cf ], [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader1333 ]
  %i.pj = icmp ult i64 %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 8
  br i1 %i.pj, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.new1335

.new1335:                                         ; preds = %.prol.loopexit1334, %.new1335
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ps, %.new1335 ], [ %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit1334 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new1335 ], [ %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit1334 ]
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !62137, !nonnull !13, !noundef !13
  %i.pk = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 808
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.pk, align 8, !noalias !62137, !nonnull !13, !noundef !13
  %i.pl = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, i64 808
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.pl, align 8, !noalias !62137, !nonnull !13, !noundef !13
  %i.pm = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2, i64 808
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.pm, align 8, !noalias !62137, !nonnull !13, !noundef !13
  %i.pn = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, i64 808
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.pn, align 8, !noalias !62137, !nonnull !13, !noundef !13
  %i.po = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.4, i64 808
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.po, align 8, !noalias !62137, !nonnull !13, !noundef !13
  %i.pp = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.5, i64 808
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.pp, align 8, !noalias !62137, !nonnull !13, !noundef !13
  %i.pq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.6, i64 808
  %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.pq, align 8, !noalias !62137, !nonnull !13, !noundef !13 ; 2 uses
  %i.pr = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.ps = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7, i64 808
  br i1 %i.pr, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.new1335

bb.cg:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1639) #41
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.ch, !noalias !62142

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cg
  unreachable

bb.ch:                                            ; preds = %bb.cg
  %i.pt = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.prol.loopexit1334, %.new1335, %bb.ce
  %.sroa.7.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.pe, %bb.ce ], [ 0, %.new1335 ], [ 0, %.prol.loopexit1334 ]
  %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ce ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit1334 ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new1335 ]
  %i.pu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 536
  %i.pv = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.pv)
  %i.pw = getelementptr inbounds nuw [24 x i8], ptr %i.pu, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.px = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  %i.py = getelementptr i8, ptr %i.pw, i64 8
  %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.py, align 8, !noalias !62143 ; 2 uses
  %i.pz = getelementptr i8, ptr %i.pw, i64 16
  %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.pz, align 8, !noalias !62143
  call void @llvm.experimental.noalias.scope.decl(metadata !62144)
  call void @llvm.experimental.noalias.scope.decl(metadata !62145)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.634.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !62146, !noalias !62147 ; 5 uses
  br i1 %i.nz, label %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !62150)
  %i.qa = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !62150, !noalias !62153, !noundef !13
  %i.qb = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.qc = load i64, ptr %i.qb, align 8, !alias.scope !62150, !noalias !62153, !noundef !13 ; 4 uses
  %i.qd = icmp sgt i64 %i.qc, -1
  call void @llvm.assume(i1 %i.qd)
  %i.qe = sub nsw i64 %i.qa, %i.qc
  %i.qf = icmp ugt i64 %i.qe, 1
  br i1 %i.qf, label %bb.cj, label %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !220

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.experimental.noalias.scope.decl(metadata !62157)
  %i.qg = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.qh = load ptr, ptr %i.qg, align 8, !alias.scope !62160, !noalias !62161, !nonnull !13, !noundef !13
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 %i.qc
  store i8 44, ptr %i.qi, align 1, !noalias !62163
  %i.qj = add nuw i64 %i.qc, 1
  store i64 %i.qj, ptr %i.qb, align 8, !alias.scope !62160, !noalias !62161
  br label %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ci
  %i.qk = call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @214, i64 noundef 1), !noalias !62147 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.qk, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hcfa0f4f96b175a0eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !341

_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cj, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.634.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !62146, !noalias !62147, !nonnull !13, !align !25, !noundef !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  %i.ql = call fastcc noundef ptr @_ZN10serde_json3ser18format_escaped_str17h6748dc9d0f30c4fbE(ptr nonnull %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i), !noalias !62147 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ql, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ck, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hcfa0f4f96b175a0eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !220

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hcfa0f4f96b175a0eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.qk, %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ql, %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.qm = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i), !noalias !62147
  br label %"_ZN98_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStructVariant$GT$15serialize_field17h2e2ceeae09812701E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.ck:                                            ; preds = %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.634.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !62146, !noalias !62164, !nonnull !13, !align !25, !noundef !13 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !62165)
  %i.qn = load i64, ptr %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !62165, !noalias !62168, !noundef !13
  %i.qo = getelementptr inbounds nuw i8, ptr %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.qp = load i64, ptr %i.qo, align 8, !alias.scope !62165, !noalias !62168, !noundef !13 ; 4 uses
  %i.qq = icmp sgt i64 %i.qp, -1
  call void @llvm.assume(i1 %i.qq)
  %i.qr = sub nsw i64 %i.qn, %i.qp
  %i.qs = icmp ugt i64 %i.qr, 1
  br i1 %i.qs, label %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !220

_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ck
  call void @llvm.experimental.noalias.scope.decl(metadata !62172)
  %i.qt = getelementptr inbounds nuw i8, ptr %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.qu = load ptr, ptr %i.qt, align 8, !alias.scope !62175, !noalias !62176, !nonnull !13, !noundef !13
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 %i.qp
  store i8 58, ptr %i.qv, align 1, !noalias !62178
  %i.qw = add nuw i64 %i.qp, 1
  store i64 %i.qw, ptr %i.qo, align 8, !alias.scope !62175, !noalias !62176
  br label %bb.cm

_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ck
  %i.qx = call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @215, i64 noundef 1), !noalias !62164 ; 2 uses
  %.not.i8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.qx, null
  br i1 %.not.i8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cm, label %bb.cl, !prof !341

bb.cl:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.qy = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %i.qx), !noalias !62164
  br label %"_ZN98_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStructVariant$GT$15serialize_field17h2e2ceeae09812701E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.cm:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !62179)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !62103
  %i.qz = load i64, ptr %i.px, align 8, !range !641, !alias.scope !62182, !noalias !62183, !noundef !13
  %i.ra = icmp eq i64 %i.qz, -9223372036854775808
  br i1 %i.ra, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !62185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !62185
  call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$24serialize_struct_variant17hcd6cb45ab17f6309E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.634.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @518, i64 noundef 8)
  %i.rb = load i8, ptr %i.g, align 8, !range !450, !noalias !62185, !noundef !13 ; 3 uses
  %i.rc = icmp eq i8 %i.rb, 2
end_hunk_2
begin_hunk_3_@"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha497b30c85d38af9E":bb.a
  %i.dr = xor i64 %i.dq, -9223372036854775808
  %i.ds = icmp slt i64 %i.dq, 0
  %i.dt = select i1 %i.ds, i64 %i.dr, i64 5
  switch i64 %i.dt, label %bb.aa [
    i64 0, label %_ZN4core3ops8function5FnMut8call_mut17hf332dcc7b415fdfcE.exit.i
    i64 1, label %bb.ab
    i64 2, label %bb.ac
    i64 3, label %bb.ad
    i64 4, label %bb.ae
    i64 5, label %bb.af
  ]

bb.aa:                                            ; preds = %.noexc.i
  unreachable

bb.ab:                                            ; preds = %.noexc.i
  %.sroa.9.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx62, i64 24, i1 false), !alias.scope !88237, !noalias !88224
  %.sroa.11.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %i.dm, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11.0..sroa_idx64, i64 40, i1 false), !alias.scope !88237, !noalias !88224
  br label %_ZN4core3ops8function5FnMut8call_mut17hf332dcc7b415fdfcE.exit.i

bb.ac:                                            ; preds = %.noexc.i
  %.sroa.9.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx61, i64 24, i1 false), !alias.scope !88237, !noalias !88224
  %.sroa.11.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.dm, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11.0..sroa_idx63, i64 40, i1 false), !alias.scope !88237, !noalias !88224
  br label %_ZN4core3ops8function5FnMut8call_mut17hf332dcc7b415fdfcE.exit.i

bb.ad:                                            ; preds = %.noexc.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !88238
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.du, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1652)
          to label %.noexc.i.i15 unwind label %bb.ag, !noalias !88239, !inline_history !88240

.noexc.i.i15:                                     ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !88241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !88238
  br label %_ZN4core3ops8function5FnMut8call_mut17hf332dcc7b415fdfcE.exit.i

bb.ae:                                            ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !88238
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dm, i64 48
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.dx = load ptr, ptr %i.dw, align 8, !alias.scope !88242, !noalias !88245, !nonnull !13, !noundef !13
  %i.dy = load i64, ptr %i.dv, align 8, !alias.scope !88242, !noalias !88245, !noundef !13
  invoke fastcc void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hf1a50c8cb8129e6bE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dx, i64 noundef %i.dy)
          to label %.noexc1.i.i unwind label %bb.ag, !noalias !88239, !inline_history !88240

.noexc1.i.i:                                      ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !88241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !88238
  br label %_ZN4core3ops8function5FnMut8call_mut17hf332dcc7b415fdfcE.exit.i

bb.af:                                            ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !88247
  invoke fastcc void @"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha497b30c85d38af9E"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.dp)
          to label %.noexc2.i.i unwind label %bb.ag, !noalias !88239, !inline_history !88240

.noexc2.i.i:                                      ; preds = %bb.af
  %.sroa.065.0.copyload = load i64, ptr %i.d, align 8, !noalias !88251
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.466.0..sroa_idx, i64 24, i1 false), !noalias !88241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.567.0..sroa_idx, i64 40, i1 false), !noalias !88241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !88247
  br label %_ZN4core3ops8function5FnMut8call_mut17hf332dcc7b415fdfcE.exit.i

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.dz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !88252), !noalias !88222
  call void @llvm.experimental.noalias.scope.decl(metadata !88255), !noalias !88258
  %.val.i.i.i.i12 = load i64, ptr %i.g, align 8, !range !26, !alias.scope !88259, !noalias !88260, !noundef !13 ; 2 uses
  %i.ea = icmp eq i64 %.val.i.i.i.i12, 0
  br i1 %i.ea, label %.body2.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val1.i.i.i.i13 = load ptr, ptr %i.eb, align 8, !alias.scope !88259, !noalias !88260, !nonnull !13, !noundef !13
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i13, i64 noundef %.val.i.i.i.i12, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !88261, !inline_history !88229
  br label %.body2.i

_ZN4core3ops8function5FnMut8call_mut17hf332dcc7b415fdfcE.exit.i: ; preds = %.noexc.i, %.noexc2.i.i, %.noexc1.i.i, %.noexc.i.i15, %bb.ac, %bb.ab
  %.sroa.057.0 = phi i64 [ %.sroa.065.0.copyload, %.noexc2.i.i ], [ %i.dq, %bb.ab ], [ %i.dq, %bb.ac ], [ -9223372036854775805, %.noexc.i.i15 ], [ -9223372036854775804, %.noexc1.i.i ], [ -9223372036854775808, %.noexc.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.055.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !88211
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.055.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, i64 24, i1 false), !noalias !88211
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.055.sroa.6, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11, i64 40, i1 false), !noalias !88211
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !88227
  %i.ec = getelementptr inbounds nuw [104 x i8], ptr %i.di, i64 %.sroa.648.0 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.055.sroa.0, i64 24, i1 false), !noalias !88262
  %.sroa.055.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  store i64 %.sroa.057.0, ptr %.sroa.055.sroa.4.0..sroa_idx, align 8, !noalias !88262
  %.sroa.055.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.055.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.055.sroa.5, i64 24, i1 false), !noalias !88262
  %.sroa.055.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.055.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.055.sroa.6, i64 40, i1 false), !noalias !88262
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 96
  store i64 %i.do, ptr %.sroa.456.0..sroa_idx, align 8, !noalias !88262
  %i.ed = add i64 %.sroa.648.0, 1                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.055.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.055.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.055.sroa.6)
  %i.ee = add nuw i64 %.sroa.06.0.i.i, 1          ; 2 uses
  %i.ef = icmp eq i64 %i.ee, %.idx72
  br i1 %i.ef, label %bb.ai, label %bb.z

bb.ai:                                            ; preds = %_ZN4core3ops8function5FnMut8call_mut17hf332dcc7b415fdfcE.exit.i
  store i64 %i.ed, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !88211
  br label %bb.al

.loopexit:                                        ; preds = %bb.p, %bb.t, %bb.u, %bb.v
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.k, %bb.x
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.n, %.body.i.i, %.loopexit, %.loopexit.split-lp, %bb.w, %.body2.i, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.bl, %bb.j ], [ %eh.lpad-body3.i, %.body2.i ], [ %i.de, %bb.w ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %i.cg, %.body.i.i ], [ %i.cg, %bb.n ]
  invoke fastcc void @"_ZN4core3ptr98drop_in_place$LT$indexmap..inner..Core$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17ha5b0b0824daeeb8cE"(ptr noalias noundef align 8 dereferenceable(56) %i.h) #43
          to label %bb.ak unwind label %bb.aj, !noalias !88117, !inline_history !88267

bb.aj:                                            ; preds = %.body
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #44, !noalias !88117, !inline_history !88267
  unreachable

bb.ak:                                            ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body

bb.al:                                            ; preds = %.noexc10, %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !88105
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ej = load <2 x i64>, ptr %i.eh, align 8
  store <2 x i64> %i.ej, ptr %i.ei, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN7roaring6bitmap13serialization48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$21deserialize_from_impl17h8c4d11e89369c1cdE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  store ptr @1311, ptr %i.h, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h236c9a83ddff1e1cE.exit206"

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.j = add i64 %2, -4                           ; 3 uses
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 1, !alias.scope !88268, !noalias !88272 ; 4 uses
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
  %i.n = tail call noundef nonnull ptr @_ZN3std2io5error5Error3new17h2fc9d5dda48b3f00E(i8 noundef 40, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1728, i64 noundef 20)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.o, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h236c9a83ddff1e1cE.exit206"

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1311, ptr %i.p, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h236c9a83ddff1e1cE.exit206"

bb.h:                                             ; preds = %bb.d
  %i.q = lshr i32 %.sroa.0.0.copyload.i, 16
  %i.r = add nuw nsw i32 %i.q, 1
  %i.s = zext nneg i32 %i.r to i64                ; 3 uses
  %i.t = icmp ugt i32 %.sroa.0.0.copyload.i, 196607 ; 2 uses
  %i.u = add nuw nsw i64 %i.s, 7
  %i.v = lshr i64 %i.u, 3                         ; 12 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !88279
  %i.w = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.v, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !88279 ; 5 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.i, label %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h472f0247fb84c47fE.exit"

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1730) #41, !noalias !88285
  unreachable

"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h472f0247fb84c47fE.exit": ; preds = %bb.h
  %3 = ptrtoint ptr %i.w to i64                   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88286)
  %i.y = icmp ugt i64 %i.v, %i.j
  br i1 %i.y, label %bb.m, label %bb.j

bb.j:                                             ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h472f0247fb84c47fE.exit"
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.v ; 2 uses
  %i.aa = sub nuw i64 %i.j, %i.v                  ; 2 uses
  %i.ab = icmp eq i64 %i.v, 1
  br i1 %i.ab, label %bb.k, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hcc8b75eb63748789E.exit.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hcc8b75eb63748789E.exit.i": ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull readonly align 1 %i.i, i64 range(i64 2, 1) %i.v, i1 false), !alias.scope !88289, !noalias !88293
  br label %.thread381.thread

bb.k:                                             ; preds = %bb.j
  %i.ac = load i8, ptr %i.i, align 1, !noalias !88296, !noundef !13
  store i8 %i.ac, ptr %i.w, align 1, !alias.scope !88286, !noalias !88297
  br label %.thread381.thread

bb.l:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i167 = load i32, ptr %i.i, align 1, !alias.scope !88298, !noalias !88302 ; 3 uses
  %i.ad = icmp ugt i32 %.sroa.0.0.copyload.i167, 65536
  br i1 %i.ad, label %bb.p, label %.thread381

bb.m:                                             ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h472f0247fb84c47fE.exit"
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1311, ptr %i.ae, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.w, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !88309
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h236c9a83ddff1e1cE.exit206"

.thread381:                                       ; preds = %bb.l
  %i.af = zext nneg i32 %.sroa.0.0.copyload.i167 to i64
  %i.ag = add i64 %2, -8                          ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ai = icmp eq i32 %.sroa.0.0.copyload.i167, 0
  br i1 %i.ai, label %bb.s, label %.thread381.thread

.thread381.thread:                                ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hcc8b75eb63748789E.exit.i", %bb.k, %.thread381
  %.sroa.0102.0372389656 = phi i1 [ true, %.thread381 ], [ %i.t, %bb.k ], [ %i.t, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hcc8b75eb63748789E.exit.i" ]
  %.sroa.0101.0370390654 = phi i64 [ %i.af, %.thread381 ], [ %i.s, %bb.k ], [ %i.s, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hcc8b75eb63748789E.exit.i" ] ; 2 uses
  %.sroa.9.0392647 = phi i64 [ undef, %.thread381 ], [ %3, %bb.k ], [ %3, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hcc8b75eb63748789E.exit.i" ] ; 2 uses
  %.sroa.13.0401645 = phi i64 [ undef, %.thread381 ], [ %i.v, %bb.k ], [ %i.v, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hcc8b75eb63748789E.exit.i" ]
  %.sroa.0279.0403638 = phi i64 [ -9223372036854775808, %.thread381 ], [ %i.v, %bb.k ], [ %i.v, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hcc8b75eb63748789E.exit.i" ] ; 2 uses
  %.sroa.19.1412636 = phi i64 [ %i.ag, %.thread381 ], [ %i.aa, %bb.k ], [ %i.aa, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hcc8b75eb63748789E.exit.i" ]
  %.sroa.0.1413634 = phi ptr [ %i.ah, %.thread381 ], [ %i.z, %bb.k ], [ %i.z, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hcc8b75eb63748789E.exit.i" ]
  %i.aj = shl nuw nsw i64 %.sroa.0101.0370390654, 2 ; 3 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !88312
  %i.ak = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.aj, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !88312 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.thread381.thread
  %i.am = ptrtoint ptr %i.ak to i64
  br label %bb.s

bb.o:                                             ; preds = %.thread381.thread
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1731) #41
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.l
  %i.an = invoke noundef nonnull ptr @_ZN3std2io5error5Error3new17h2fc9d5dda48b3f00E(i8 noundef 40, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1737, i64 noundef 30)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit252.thread" unwind label %bb.r

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit185": ; preds = %.split658, %bb.u, %bb.r
  %.sroa.0279.0404.a = phi i64 [ %.sroa.0279.0411, %bb.r ], [ %.sroa.0279.0403639, %.split658 ], [ %.sroa.0279.0403639, %bb.u ] ; 2 uses
  %.sroa.9.0393 = phi i64 [ %.sroa.9.0400, %bb.r ], [ %.sroa.9.0392648, %.split658 ], [ %.sroa.9.0392648, %bb.u ]
  %.pn130 = phi { ptr, i32 } [ %i.ao, %bb.r ], [ %i.at, %.split658 ], [ %.pn128662, %bb.u ]
  switch i64 %.sroa.0279.0404.a, label %bb.q [
    i64 -9223372036854775808, label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h236c9a83ddff1e1cE.exit"
    i64 0, label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h236c9a83ddff1e1cE.exit"
  ]

bb.q:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit185"
  %4 = inttoptr i64 %.sroa.9.0393 to ptr          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %4, i64 noundef %.sroa.0279.0404.a, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !88318
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h236c9a83ddff1e1cE.exit"

bb.r:                                             ; preds = %bb.o, %bb.p
  %.sroa.0279.0411 = phi i64 [ %.sroa.0279.0403638, %bb.o ], [ -9223372036854775808, %bb.p ]
  %.sroa.9.0400 = phi i64 [ %.sroa.9.0392647, %bb.o ], [ undef, %bb.p ]
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit185"

bb.s:                                             ; preds = %bb.n, %.thread381
  %i.ap = phi i1 [ false, %bb.n ], [ true, %.thread381 ] ; 3 uses
  %i.aq = phi i64 [ %i.aj, %bb.n ], [ 0, %.thread381 ] ; 9 uses
  %.sroa.0102.0372389657 = phi i1 [ %.sroa.0102.0372389656, %bb.n ], [ true, %.thread381 ]
  %.sroa.0101.0370390655 = phi i64 [ %.sroa.0101.0370390654, %bb.n ], [ 0, %.thread381 ] ; 4 uses
  %.sroa.9.0392648 = phi i64 [ %.sroa.9.0392647, %bb.n ], [ undef, %.thread381 ] ; 5 uses
  %.sroa.13.0401646 = phi i64 [ %.sroa.13.0401645, %bb.n ], [ undef, %.thread381 ] ; 2 uses
  %.sroa.0279.0403639 = phi i64 [ %.sroa.0279.0403638, %bb.n ], [ -9223372036854775808, %.thread381 ] ; 7 uses
  %.sroa.19.1412637 = phi i64 [ %.sroa.19.1412636, %bb.n ], [ %i.ag, %.thread381 ] ; 2 uses
  %.sroa.0.1413635 = phi ptr [ %.sroa.0.1413634, %bb.n ], [ %i.ah, %.thread381 ] ; 2 uses
  %.sroa.10.0.i176 = phi i64 [ %i.am, %bb.n ], [ 1, %.thread381 ]
  %i.ar = inttoptr i64 %.sroa.10.0.i176 to ptr    ; 5 uses
  %i.as = icmp ugt i64 %i.aq, %.sroa.19.1412637
  br i1 %i.as, label %.thread520, label %bb.v

bb.t:                                             ; preds = %bb.bi
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h1f8b440ec968d3f9E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #43
  br label %bb.u

bb.u:                                             ; preds = %.thread468.loopexit.split-lp, %.thread468.loopexit, %.thread448.loopexit.split-lp, %.thread448.loopexit, %.split667, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h9231484ccaa7a44aE.exit", %bb.t, %.split672, %.split670, %.split658.thread, %.split658
  %.pn128662 = phi { ptr, i32 } [ %i.at, %.split658 ], [ %lpad.thr_comm499, %bb.t ], [ %i.fh, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h9231484ccaa7a44aE.exit" ], [ %lpad.loopexit.split-lp525, %.thread468.loopexit.split-lp ], [ %lpad.loopexit524, %.thread468.loopexit ], [ %lpad.loopexit, %.thread448.loopexit ], [ %i.dp, %.split667 ], [ %lpad.loopexit.split-lp, %.thread448.loopexit.split-lp ], [ %i.bv, %.split670 ], [ %lpad.thr_comm499, %.split672 ], [ %i.bd, %.split658.thread ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ar, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !88321
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit185"

.split658:                                        ; preds = %bb.y
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ap, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit185", label %bb.u

.thread520:                                       ; preds = %bb.s
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1311, ptr %i.au, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.bk

bb.v:                                             ; preds = %bb.s
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.1413635, i64 %i.aq ; 4 uses
  %i.aw = sub nuw i64 %.sroa.19.1412637, %i.aq    ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr nonnull readonly align 1 %.sroa.0.1413635, i64 range(i64 2, 1) %i.aq, i1 false), !alias.scope !88324, !noalias !88328
  br i1 %.sroa.0102.0372389657, label %bb.y, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i: ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit198", %bb.v
  %.sroa.19.2 = phi i64 [ %i.bk, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit198" ], [ %i.aw, %bb.v ]
  %.sroa.0.2 = phi ptr [ %i.bj, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit198" ], [ %i.av, %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ax = shl nuw nsw i64 %.sroa.0101.0370390655, 5 ; 2 uses
  br i1 %i.ap, label %._crit_edge.thread, label %bb.w

._crit_edge.thread:                               ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  %i.ay = icmp eq i64 %.sroa.0101.0370390655, 0
  tail call void @llvm.assume(i1 %i.ay)
  store i64 0, ptr %i.e, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %i.ba, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit205"

bb.w:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !88332
  %i.bb = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ax, i64 noundef range(i64 1, 9) 8) #42, !noalias !88332 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.x, label %.lr.ph

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1733) #41
          to label %.noexc187 unwind label %.split658.thread

.split658.thread:                                 ; preds = %bb.x
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.noexc187:                                        ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke fastcc void @"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h472f0247fb84c47fE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, i64 noundef %i.aq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1732)
          to label %bb.z unwind label %.split658

bb.z:                                             ; preds = %bb.y
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !13, !noundef !13 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !13 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88337)
  %i.bi = icmp ugt i64 %i.bh, %i.aw
  br i1 %i.bi, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bj = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bh
  %i.bk = sub nuw i64 %i.aw, %i.bh
  %i.bl = icmp eq i64 %i.bh, 1
  br i1 %i.bl, label %bb.ab, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hcc8b75eb63748789E.exit.i188"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hcc8b75eb63748789E.exit.i188": ; preds = %bb.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bf, ptr nonnull readonly align 1 %i.av, i64 range(i64 2, 1) %i.bh, i1 false), !alias.scope !88340, !noalias !88344
  br label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.bm = load i8, ptr %i.av, align 1, !noalias !88347, !noundef !13
  store i8 %i.bm, ptr %i.bf, align 1, !alias.scope !88337, !noalias !88348
  br label %bb.ae

bb.ac:                                            ; preds = %bb.z
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1311, ptr %i.bn, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88349)
  %.val.i193 = load i64, ptr %i.f, align 8, !range !26, !alias.scope !88349, !noundef !13 ; 2 uses
  %i.bo = icmp eq i64 %.val.i193, 0
  br i1 %i.bo, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit195", label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bf, i64 noundef %.val.i193, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !88349
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit195"

bb.ae:                                            ; preds = %bb.ab, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hcc8b75eb63748789E.exit.i188"
  %.sroa.0296.0.copyload = load i64, ptr %i.f, align 8 ; 2 uses
  %i.bp = icmp eq i64 %.sroa.0296.0.copyload, 0
  br i1 %i.bp, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit198", label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bf, i64 noundef %.sroa.0296.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !88352
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit198"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit198": ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i

.lr.ph:                                           ; preds = %bb.w
  store i64 %.sroa.0101.0370390655, ptr %i.e, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.bb, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 0, ptr %i.br, align 8
  %.not115 = icmp eq i64 %.sroa.0279.0403639, -9223372036854775808
  %5 = inttoptr i64 %.sroa.9.0392648 to ptr
  %.sroa.730.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %.sroa.835.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph, %bb.bg
  %.sroa.0104.1569 = phi i64 [ 1, %.lr.ph ], [ %.sroa.0104.1, %bb.bg ] ; 3 uses
  %.sroa.0104.0568 = phi i64 [ 0, %.lr.ph ], [ %.sroa.0104.1569, %bb.bg ] ; 2 uses
  %.sroa.0.3567 = phi ptr [ %.sroa.0.2, %.lr.ph ], [ %.sroa.0.4, %bb.bg ] ; 8 uses
  %.sroa.19.3566 = phi i64 [ %.sroa.19.2, %.lr.ph ], [ %.sroa.19.4, %bb.bg ] ; 6 uses
  %.sroa.0293.0565 = phi ptr [ %i.ar, %.lr.ph ], [ %i.by, %bb.bg ] ; 3 uses
  %.sroa.8.0353564 = phi i64 [ %i.aq, %.lr.ph ], [ %i.bz, %bb.bg ] ; 2 uses
  %i.bu = icmp eq i64 %.sroa.8.0353564, 0
  br i1 %i.bu, label %bb.ai, label %bb.aj

._crit_edge:                                      ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ar, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !88355
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit205"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit205": ; preds = %._crit_edge.thread, %._crit_edge
  switch i64 %.sroa.0279.0403639, label %bb.ah [
    i64 -9223372036854775808, label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h236c9a83ddff1e1cE.exit206"
    i64 0, label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h236c9a83ddff1e1cE.exit206"
  ]

bb.ah:                                            ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit205"
  %6 = inttoptr i64 %.sroa.9.0392648 to ptr       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %6) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %6, i64 noundef %.sroa.0279.0403639, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !88358
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h236c9a83ddff1e1cE.exit206"

"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h236c9a83ddff1e1cE.exit206": ; preds = %bb.m, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit252.thread", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit252", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit252", %bb.bl, %bb.ah, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit205", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit205", %bb.b, %bb.g, %bb.f
  ret void

.split670:                                        ; preds = %.invoke, %bb.an, %bb.ak
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h1f8b440ec968d3f9E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #43
  br label %bb.u

bb.ai:                                            ; preds = %bb.ag
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1311, ptr %i.bw, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17hc11af29a19d0a82fE.exit"

bb.aj:                                            ; preds = %bb.ag
  %.sroa.0.0.copyload.i199 = load i16, ptr %.sroa.0293.0565, align 1, !alias.scope !88361, !noalias !88365
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0293.0565, i64 2
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0293.0565, i64 4
  %i.bz = add nsw i64 %.sroa.8.0353564, -4
  %.sroa.0.0.copyload.i207 = load i16, ptr %i.bx, align 1, !alias.scope !88372, !noalias !88376 ; 2 uses
  %i.ca = zext i16 %.sroa.0.0.copyload.i207 to i64
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 4 uses
  br i1 %.not115, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h5e39724c6cc9dbc1E.exit.thread", label %.cont

.cont:                                            ; preds = %bb.aj
  %i.cc = lshr i64 %.sroa.0104.0568, 3            ; 3 uses
  %i.cd = icmp ult i64 %i.cc, %.sroa.13.0401646
  br i1 %i.cd, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h5e39724c6cc9dbc1E.exit", label %bb.ak

bb.ak:                                            ; preds = %.cont
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.cc, i64 noundef %.sroa.13.0401646, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1738) #41
          to label %.noexc212 unwind label %.split670

.noexc212:                                        ; preds = %bb.ak
  unreachable

"_ZN4core6option15Option$LT$T$GT$6map_or17h5e39724c6cc9dbc1E.exit": ; preds = %.cont
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 %i.cc
  %i.cf = load i8, ptr %i.ce, align 1, !noalias !88383, !noundef !13
  %i.cg = trunc i64 %.sroa.0104.0568 to i8
  %i.ch = and i8 %i.cg, 7
  %i.ci = shl nuw i8 1, %i.ch
  %i.cj = and i8 %i.cf, %i.ci
  %.not523 = icmp eq i8 %i.cj, 0
  br i1 %.not523, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h5e39724c6cc9dbc1E.exit.thread", label %bb.al

"_ZN4core6option15Option$LT$T$GT$6map_or17h5e39724c6cc9dbc1E.exit.thread": ; preds = %bb.aj, %"_ZN4core6option15Option$LT$T$GT$6map_or17h5e39724c6cc9dbc1E.exit"
  %i.ck = icmp ult i16 %.sroa.0.0.copyload.i207, 4096
  br i1 %i.ck, label %bb.ao, label %bb.am

bb.al:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h5e39724c6cc9dbc1E.exit"
  %i.cl = icmp ult i64 %.sroa.19.3566, 2
  br i1 %i.cl, label %bb.bb, label %bb.bc

bb.am:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h5e39724c6cc9dbc1E.exit.thread"
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42
  %i.cm = call noundef align 8 dereferenceable_or_null(8192) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8192, i64 noundef range(i64 1, -9223372036854775807) 8) #42 ; 5 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.an, label %bb.ap, !prof !694

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 8192) #41
          to label %.noexc218 unwind label %.split670

.noexc218:                                        ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h5e39724c6cc9dbc1E.exit.thread"
  %i.co = shl nuw nsw i64 %i.cb, 1                ; 7 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !88386
  %i.cp = call noundef align 2 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.co, i64 noundef range(i64 1, -9223372036854775807) 2) #42, !noalias !88386 ; 4 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %.invoke, label %bb.au

.thread448.loopexit:                              ; preds = %bb.aq
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h1f8b440ec968d3f9E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #43
  br label %bb.u

.thread448.loopexit.split-lp:                     ; preds = %bb.ar
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h1f8b440ec968d3f9E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #43
  br label %bb.u

bb.ap:                                            ; preds = %bb.am
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %i.cm, i8 0, i64 8192, i1 false)
  %i.cr = icmp ult i64 %.sroa.19.3566, 8192
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.3567) ]
  br i1 %i.cr, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.3567, i64 8192
  %i.ct = add i64 %.sroa.19.3566, -8192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %i.cm, ptr noundef nonnull readonly align 1 dereferenceable(8192) %.sroa.0.3567, i64 range(i64 2, 1) 8192, i1 false), !alias.scope !88391, !noalias !88395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_ZN7roaring6bitmap5store12bitmap_store11BitmapStore8try_from17h24fc3ed428f45e5dE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef range(i64 4097, 65537) %i.cb, ptr noalias noundef nonnull align 8 %i.cm)
          to label %_ZN4core3ops8function2Fn4call17he459414274e05f0aE.exit unwind label %.thread448.loopexit

_ZN4core3ops8function2Fn4call17he459414274e05f0aE.exit: ; preds = %bb.aq
  %i.cu = load i64, ptr %i.b, align 8, !range !1447, !noundef !13
  %i.cv = trunc nuw i64 %i.cu to i1
  %i.cw = load i64, ptr %i.bt, align 8, !noundef !13 ; 2 uses
  br i1 %i.cv, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %_ZN4core3ops8function2Fn4call17he459414274e05f0aE.exit
  %i.cx = load i64, ptr %i.bs, align 8, !noundef !13
  %i.cy = invoke noundef nonnull ptr @_ZN3std2io5error5Error3new17h3d5870e22f9457d9E(i8 noundef 21, i64 noundef %i.cx, i64 noundef %i.cw)
          to label %.thread463 unwind label %.thread448.loopexit.split-lp

.thread463:                                       ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cy, ptr %i.cz, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17hc11af29a19d0a82fE.exit"

bb.as:                                            ; preds = %_ZN4core3ops8function2Fn4call17he459414274e05f0aE.exit
  %i.da = load ptr, ptr %i.bs, align 8, !nonnull !13, !align !25, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.az

bb.at:                                            ; preds = %bb.ap
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1311, ptr %i.db, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cm, i64 noundef 8192, i64 noundef 8) #42
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17hc11af29a19d0a82fE.exit"

.thread468.loopexit:                              ; preds = %bb.av
  %lpad.loopexit524 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h1f8b440ec968d3f9E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #43
  br label %bb.u

.thread468.loopexit.split-lp:                     ; preds = %bb.ax
  %lpad.loopexit.split-lp525 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h1f8b440ec968d3f9E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #43
  br label %bb.u

bb.au:                                            ; preds = %bb.ao
  %i.dc = icmp ugt i64 %i.co, %.sroa.19.3566
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.3567) ]
  br i1 %i.dc, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17hd0cdbb4bd88872b4E.exit", label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.3567, i64 %i.co
  %i.de = sub nuw i64 %.sroa.19.3566, %i.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.cp, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.0.3567, i64 range(i64 2, 1) %i.co, i1 false), !alias.scope !88399, !noalias !88403
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.cb, ptr %i.a, align 8, !noalias !88407
  store ptr %i.cp, ptr %.sroa.4334.0..sroa_idx, align 8, !noalias !88407
  store i64 %i.cb, ptr %.sroa.5335.0..sroa_idx, align 8, !noalias !88407
  invoke void @"_ZN124_$LT$roaring..bitmap..store..array_store..ArrayStore$u20$as$u20$core..convert..TryFrom$LT$alloc..vec..Vec$LT$u16$GT$$GT$$GT$8try_from17h9b325ec933d5e4fdE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.aw unwind label %.thread468.loopexit

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.df = load i64, ptr %i.c, align 8, !range !641, !noundef !13 ; 2 uses
  %i.dg = icmp eq i64 %i.df, -9223372036854775808
  br i1 %i.dg, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.dh = load i64, ptr %.sroa.496.0..sroa_idx, align 8, !noundef !13
  %i.di = load i8, ptr %.sroa.597.0..sroa_idx, align 8, !range !1013, !noundef !13
  %i.dj = trunc nuw i8 %i.di to i1
  %i.dk = invoke noundef nonnull ptr @_ZN3std2io5error5Error3new17h7157d976289c6a33E(i8 noundef 21, i64 noundef %i.dh, i1 noundef zeroext %i.dj)
          to label %.thread485 unwind label %.thread468.loopexit.split-lp

.thread485:                                       ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dk, ptr %i.dl, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17hc11af29a19d0a82fE.exit"

bb.ay:                                            ; preds = %bb.aw
  %.sroa.496.0.copyload = load ptr, ptr %.sroa.496.0..sroa_idx, align 8
  %.sroa.597.0.copyload = load i64, ptr %.sroa.597.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.az

bb.az:                                            ; preds = %bb.as, %bb.ay, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h9231484ccaa7a44aE.exit248"
  %.sroa.19.4 = phi i64 [ %i.fa, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h9231484ccaa7a44aE.exit248" ], [ %i.de, %bb.ay ], [ %i.ct, %bb.as ]
  %.sroa.0.4 = phi ptr [ %i.ez, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h9231484ccaa7a44aE.exit248" ], [ %i.dd, %bb.ay ], [ %i.cs, %bb.as ]
  %.sroa.835.0 = phi i64 [ %.sroa.835.0.copyload39, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h9231484ccaa7a44aE.exit248" ], [ %.sroa.597.0.copyload, %bb.ay ], [ %i.cw, %bb.as ]
  %.sroa.730.0 = phi ptr [ %.sroa.730.0.copyload34, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h9231484ccaa7a44aE.exit248" ], [ %.sroa.496.0.copyload, %bb.ay ], [ %i.da, %bb.as ] ; 2 uses
  %.sroa.027.0 = phi i64 [ %.sroa.027.0.copyload29, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h9231484ccaa7a44aE.exit248" ], [ %i.df, %bb.ay ], [ -9223372036854775808, %bb.as ] ; 2 uses
  %i.dm = load i64, ptr %i.br, align 8, !alias.scope !88410, !noalias !88413, !noundef !13 ; 3 uses
  %i.dn = load i64, ptr %i.e, align 8, !range !26, !alias.scope !88410, !noalias !88413, !noundef !13
  %i.do = icmp eq i64 %i.dm, %i.dn
  br i1 %i.do, label %bb.ba, label %bb.bg

bb.ba:                                            ; preds = %bb.az
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h2bed7fedf0cce30dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1736)
          to label %bb.bg unwind label %.split667, !noalias !88413

.split667:                                        ; preds = %bb.ba
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17hb733950af053b900E"(i64 %.sroa.027.0, ptr %.sroa.730.0) #43, !noalias !88413
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h1f8b440ec968d3f9E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #43
  br label %bb.u

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17hd0cdbb4bd88872b4E.exit": ; preds = %bb.au
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1311, ptr %i.dq, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cp, i64 noundef %i.co, i64 noundef range(i64 1, -9223372036854775807) 2) #42
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17hc11af29a19d0a82fE.exit"

bb.bb:                                            ; preds = %bb.al
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1311, ptr %i.dr, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17hc11af29a19d0a82fE.exit"

bb.bc:                                            ; preds = %bb.al
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0.3567, i64 2 ; 3 uses
  %i.dt = add i64 %.sroa.19.3566, -2              ; 2 uses
  %.sroa.0.0.copyload.i213 = load i16, ptr %.sroa.0.3567, align 1, !alias.scope !88415, !noalias !88419 ; 3 uses
  %i.du = zext i16 %.sroa.0.0.copyload.i213 to i64 ; 4 uses
  %i.dv = shl nuw nsw i64 %i.du, 2                ; 14 uses
  %i.dw = icmp eq i16 %.sroa.0.0.copyload.i213, 0 ; 3 uses
  br i1 %i.dw, label %.thread, label %bb.bd

.thread:                                          ; preds = %bb.bc
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 inttoptr (i64 2 to ptr), ptr nonnull readonly align 1 %i.ds, i64 range(i64 2, 1) %i.dv, i1 false), !alias.scope !88426, !noalias !88430
  %i.dx = getelementptr inbounds nuw i8, ptr inttoptr (i64 2 to ptr), i64 %i.dv
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h22904c9effca8fd5E.exit"

bb.bd:                                            ; preds = %bb.bc
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !88434
  %i.dy = call noundef align 2 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.dv, i64 noundef range(i64 1, -9223372036854775807) 2) #42, !noalias !88434 ; 8 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %.invoke, label %.thread516

.invoke:                                          ; preds = %bb.bd, %bb.ao
  %i.ea = phi i64 [ %i.co, %bb.ao ], [ %i.dv, %bb.bd ]
  %i.eb = phi ptr [ @1734, %bb.ao ], [ @1735, %bb.bd ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 2, i64 %i.ea, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eb) #41
          to label %.cont713 unwind label %.split670

.cont713:                                         ; preds = %.invoke
  unreachable

.thread516:                                       ; preds = %bb.bd
  %i.ec = icmp ugt i64 %i.dv, %i.dt
  br i1 %i.ec, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %.thread516
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.dy, ptr nonnull readonly align 1 %i.ds, i64 range(i64 2, 1) %i.dv, i1 false), !alias.scope !88426, !noalias !88430
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dv
  %min.iters.check = icmp ult i16 %.sroa.0.0.copyload.i213, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.be
  %i.ee = and i64 %i.du, 3                        ; 2 uses
  %i.ef = icmp eq i64 %i.ee, 0
  %i.eg = select i1 %i.ef, i64 4, i64 %i.ee
  %n.vec = sub nsw i64 %i.du, %i.eg               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.en, %vector.body ]
  %vec.phi745 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.eo, %vector.body ]
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %index
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %index
  %i.ej = getelementptr i8, ptr %i.eh, i64 2
  %i.ek = getelementptr i8, ptr %i.ei, i64 10
  %wide.vec = load <4 x i16>, ptr %i.ej, align 2
  %strided.vec = shufflevector <4 x i16> %wide.vec, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec746 = load <4 x i16>, ptr %i.ek, align 2
  %strided.vec747 = shufflevector <4 x i16> %wide.vec746, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %i.el = zext <2 x i16> %strided.vec to <2 x i64>
  %i.em = zext <2 x i16> %strided.vec747 to <2 x i64>
  %i.en = add <2 x i64> %vec.phi, %i.el           ; 2 uses
  %i.eo = add <2 x i64> %vec.phi745, %i.em        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ep = icmp eq i64 %index.next, %n.vec
  br i1 %i.ep, label %middle.block, label %vector.body, !llvm.loop !88439

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.eo, %i.en
  %i.eq = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.be, %middle.block
  %.sroa.09.0.i.ph = phi i64 [ 0, %bb.be ], [ %n.vec, %middle.block ]
  %.sroa.07.0.i.ph = phi i64 [ 0, %bb.be ], [ %i.eq, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.09.0.i = phi i64 [ %i.ev, %scalar.ph ], [ %.sroa.09.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.07.0.i = phi i64 [ %i.eu, %scalar.ph ], [ %.sroa.07.0.i.ph, %scalar.ph.preheader ]
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %.sroa.09.0.i
  %i.es = getelementptr i8, ptr %i.er, i64 2
  %.val.i243 = load i16, ptr %i.es, align 2, !noundef !13
  %i.et = zext i16 %.val.i243 to i64
  %i.eu = add i64 %.sroa.07.0.i, %i.et            ; 2 uses
  %i.ev = add nuw i64 %.sroa.09.0.i, 1            ; 2 uses
  %i.ew = icmp eq i64 %i.ev, %i.du
  br i1 %i.ew, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h22904c9effca8fd5E.exit", label %scalar.ph, !llvm.loop !88442

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h22904c9effca8fd5E.exit": ; preds = %scalar.ph, %.thread
  %i.ex = phi ptr [ %i.dx, %.thread ], [ %i.ed, %scalar.ph ]
  %i.ey = phi ptr [ inttoptr (i64 2 to ptr), %.thread ], [ %i.dy, %scalar.ph ] ; 5 uses
  %.sroa.04.0.i = phi i64 [ 0, %.thread ], [ %i.eu, %scalar.ph ]
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dv
  %i.fa = sub nuw i64 %i.dt, %i.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_ZN7roaring6bitmap5store5Store13with_capacity17hc6b77316ec3dc503E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, i64 noundef %.sroa.04.0.i)
          to label %bb.bf unwind label %bb.bi

bb.bf:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h22904c9effca8fd5E.exit"
  br i1 %i.dw, label %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h9231484ccaa7a44aE.exit248", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bf, %.noexc246
  %i.fb = phi ptr [ %i.fc, %.noexc246 ], [ %i.ey, %bb.bf ] ; 2 uses
  %.sroa.02.0.copyload.i = load i32, ptr %i.fb, align 2, !noalias !88443 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 4 ; 2 uses
  %.sroa.01.0.extract.trunc.i.i.i = trunc i32 %.sroa.02.0.copyload.i to i16 ; 2 uses
  %.sroa.4.0.extract.shift.i.i.i = lshr i32 %.sroa.02.0.copyload.i, 16
  %.sroa.4.0.extract.trunc.i.i.i = trunc nuw i32 %.sroa.4.0.extract.shift.i.i.i to i16
  %i.fd = add i16 %.sroa.4.0.extract.trunc.i.i.i, %.sroa.01.0.extract.trunc.i.i.i ; 2 uses
  %i.fe = icmp ult i16 %i.fd, %.sroa.01.0.extract.trunc.i.i.i
  br i1 %i.fe, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h19dd1b957d9c8497E.exit", label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h2fe1c101c3888498E.exit.i", !prof !11

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h2fe1c101c3888498E.exit.i": ; preds = %.lr.ph.i
  %.sroa.012.2.insert.ext.i.i.i = zext i16 %i.fd to i48
  %.sroa.012.2.insert.shift.i.i.i = shl nuw nsw i48 %.sroa.012.2.insert.ext.i.i.i, 16
  %i.ff = and i32 %.sroa.02.0.copyload.i, 65535
  %.sroa.012.2.insert.mask.i.i.i = zext nneg i32 %i.ff to i48
  %.sroa.012.2.insert.insert.i.i.i = or disjoint i48 %.sroa.012.2.insert.shift.i.i.i, %.sroa.012.2.insert.mask.i.i.i
  %i.fg = invoke noundef i64 @_ZN7roaring6bitmap5store5Store12insert_range17h99c18b5fd54fe8ebE(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i48 %.sroa.012.2.insert.insert.i.i.i)
          to label %.noexc246 unwind label %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h9231484ccaa7a44aE.exit" ; 0 uses

.noexc246:                                        ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h2fe1c101c3888498E.exit.i"
  %.not.i = icmp eq ptr %i.fc, %i.ex
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h9231484ccaa7a44aE.exit": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h2fe1c101c3888498E.exit.i"
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ey, i64 noundef %i.dv, i64 noundef range(i64 1, -9223372036854775807) 2) #42, !noalias !88446
  %.val148 = load i64, ptr %i.d, align 8, !range !641, !noundef !13
  %.val149 = load ptr, ptr %.sroa.730.0..sroa_idx33, align 8
  call fastcc void @"_ZN4core3ptr50drop_in_place$LT$roaring..bitmap..store..Store$GT$17hc8cc16ffe90a24b9E"(i64 %.val148, ptr %.val149) #43
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h1f8b440ec968d3f9E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #43
  br label %bb.u

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h19dd1b957d9c8497E.exit": ; preds = %.lr.ph.i
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 90194313219 to ptr), ptr %i.fi, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ey, i64 noundef %i.dv, i64 noundef range(i64 1, -9223372036854775807) 2) #42, !noalias !88449
  %.val146 = load i64, ptr %i.d, align 8, !range !641, !noundef !13
  %.val147 = load ptr, ptr %.sroa.730.0..sroa_idx33, align 8
  call fastcc void @"_ZN4core3ptr50drop_in_place$LT$roaring..bitmap..store..Store$GT$17hc8cc16ffe90a24b9E"(i64 %.val146, ptr %.val147)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17hc11af29a19d0a82fE.exit"

.loopexit:                                        ; preds = %.noexc246
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ey, i64 noundef %i.dv, i64 noundef range(i64 1, -9223372036854775807) 2) #42, !noalias !88452
  br label %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h9231484ccaa7a44aE.exit248"

"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h9231484ccaa7a44aE.exit248": ; preds = %bb.bf, %.loopexit
  %.sroa.027.0.copyload29 = load i64, ptr %i.d, align 8
  %.sroa.730.0.copyload34 = load ptr, ptr %.sroa.730.0..sroa_idx33, align 8
  %.sroa.835.0.copyload39 = load i64, ptr %.sroa.835.0..sroa_idx38, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.az

bb.bg:                                            ; preds = %bb.ba, %bb.az
  %i.fj = load ptr, ptr %i.bq, align 8, !alias.scope !88410, !noalias !88413, !nonnull !13, !noundef !13
  %i.fk = getelementptr inbounds nuw [32 x i8], ptr %i.fj, i64 %i.dm ; 4 uses
  store i64 %.sroa.027.0, ptr %i.fk, align 8
  %.sroa.5339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store ptr %.sroa.730.0, ptr %.sroa.5339.0..sroa_idx, align 8
  %.sroa.7340.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  store i64 %.sroa.835.0, ptr %.sroa.7340.0..sroa_idx, align 8
  %.sroa.8341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  store i16 %.sroa.0.0.copyload.i199, ptr %.sroa.8341.0..sroa_idx, align 8
  %i.fl = add i64 %i.dm, 1
  store i64 %i.fl, ptr %i.br, align 8
  %i.fm = icmp samesign ult i64 %.sroa.0104.1569, %.sroa.0101.0370390655 ; 2 uses
  %i.fn = zext i1 %i.fm to i64
  %.sroa.0104.1 = add nuw nsw i64 %.sroa.0104.1569, %i.fn
  br i1 %i.fm, label %bb.ag, label %._crit_edge

bb.bh:                                            ; preds = %.thread516
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1311, ptr %i.fo, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dy, i64 noundef %i.dv, i64 noundef range(i64 1, -9223372036854775807) 2) #42
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17hc11af29a19d0a82fE.exit"

bb.bi:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h22904c9effca8fd5E.exit"
  %lpad.thr_comm499 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.dw, label %bb.t, label %.split672

.split672:                                        ; preds = %bb.bi
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ey, i64 noundef %i.dv, i64 noundef range(i64 1, -9223372036854775807) 2) #42
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h1f8b440ec968d3f9E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #43
  br label %bb.u

"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17hc11af29a19d0a82fE.exit": ; preds = %bb.bh, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h19dd1b957d9c8497E.exit", %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17hd0cdbb4bd88872b4E.exit", %.thread485, %bb.at, %.thread463, %bb.bb, %bb.ai
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h1f8b440ec968d3f9E"(ptr noalias noundef align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bj

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit195": ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.bj

bb.bj:                                            ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17hc11af29a19d0a82fE.exit", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit195"
  br i1 %i.ap, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit252", label %bb.bk

bb.bk:                                            ; preds = %.thread520, %bb.bj
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ar, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !88455
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit252"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit252": ; preds = %bb.bj, %bb.bk
  switch i64 %.sroa.0279.0403639, label %bb.bl [
    i64 -9223372036854775808, label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h236c9a83ddff1e1cE.exit206"
    i64 0, label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h236c9a83ddff1e1cE.exit206"
  ]

bb.bl:                                            ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit252"
  %7 = inttoptr i64 %.sroa.9.0392648 to ptr       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %7) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %7, i64 noundef %.sroa.0279.0403639, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !88458
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h236c9a83ddff1e1cE.exit206"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit252.thread": ; preds = %bb.p
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.fp, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h236c9a83ddff1e1cE.exit206"

"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h236c9a83ddff1e1cE.exit": ; preds = %bb.q, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit185", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit185"
  resume { ptr, i32 } %.pn130
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN7roaring6bitmap5serde87_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$9serialize17h90fc7d1b8ac26a4bE"(ptr nofree readonly captures(address) %.8.val, i64 %.16.val, ptr %.0.val) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 10 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 15 uses
  store i64 0, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88461)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88470)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88473)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0, i64 noundef 4, i64 noundef 1, i64 noundef 1)
          to label %_ZN9byteorder2io13WriteBytesExt9write_u3217hbaca937133e6e287E.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN9byteorder2io13WriteBytesExt9write_u3217hbaca937133e6e287E.exit.i: ; preds = %bb.a
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !88476, !noalias !88477 ; 3 uses
  %.pre.i = load i64, ptr %i.b, align 8, !range !26, !alias.scope !88482, !noalias !88493
  %i.e = icmp sgt i64 %.pre.i.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = load ptr, ptr %i.c, align 8, !alias.scope !88476, !noalias !88477, !nonnull !13, !noundef !13 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %.pre.i.i.i.i.i.i.i
  store i32 12346, ptr %i.g, align 1, !noalias !88476
  %i.h = add nuw i64 %.pre.i.i.i.i.i.i.i, 4       ; 4 uses
  store i64 %i.h, ptr %i.d, align 8, !alias.scope !88476, !noalias !88477
  %i.i = icmp ult i64 %.16.val, 288230376151711744
  tail call void @llvm.assume(i1 %i.i)
  %i.j = trunc i64 %.16.val to i32                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88501)
  %i.k = sub i64 %.pre.i, %i.h
  %i.l = icmp ult i64 %i.k, 4
  br i1 %i.l, label %bb.b, label %_ZN9byteorder2io13WriteBytesExt9write_u3217hbaca937133e6e287E.exit60.i, !prof !11

bb.b:                                             ; preds = %_ZN9byteorder2io13WriteBytesExt9write_u3217hbaca937133e6e287E.exit.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.h, i64 noundef 4, i64 noundef 1, i64 noundef 1)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc10:                                         ; preds = %bb.b
  %.pre.i.i.i.i.i.i59.i = load i64, ptr %i.d, align 8, !alias.scope !88502, !noalias !88493
  %.pre33.i = load ptr, ptr %i.c, align 8, !alias.scope !88502, !noalias !88493
  br label %_ZN9byteorder2io13WriteBytesExt9write_u3217hbaca937133e6e287E.exit60.i

_ZN9byteorder2io13WriteBytesExt9write_u3217hbaca937133e6e287E.exit60.i: ; preds = %.noexc10, %_ZN9byteorder2io13WriteBytesExt9write_u3217hbaca937133e6e287E.exit.i
  %i.m = phi ptr [ %i.f, %_ZN9byteorder2io13WriteBytesExt9write_u3217hbaca937133e6e287E.exit.i ], [ %.pre33.i, %.noexc10 ] ; 3 uses
  %i.n = phi i64 [ %i.h, %_ZN9byteorder2io13WriteBytesExt9write_u3217hbaca937133e6e287E.exit.i ], [ %.pre.i.i.i.i.i.i59.i, %.noexc10 ] ; 3 uses
  %i.o = icmp sgt i64 %i.n, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  store i32 %i.j, ptr %i.p, align 1, !noalias !88502
  %i.q = add nuw i64 %i.n, 4                      ; 3 uses
  store i64 %i.q, ptr %i.d, align 8, !alias.scope !88502, !noalias !88493
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %.idx.i = shl nuw nsw i64 %.16.val, 5
  %i.r = getelementptr inbounds nuw i8, ptr %.8.val, i64 %.idx.i ; 3 uses
  %i.s = icmp eq i64 %.16.val, 0                  ; 2 uses
  %.sroa.043.1.idx6.i = select i1 %i.s, i64 0, i64 32
  %.sroa.043.17.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 %.sroa.043.1.idx6.i ; 3 uses
  br i1 %i.s, label %"_ZN7roaring6bitmap13serialization48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$14serialize_into17hd5073403a4d649b4E.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN9byteorder2io13WriteBytesExt9write_u3217hbaca937133e6e287E.exit60.i, %_ZN9byteorder2io13WriteBytesExt9write_u1617hdf4b1e8ea384e6caE.exit68.i
  %i.t = phi ptr [ %i.cu, %_ZN9byteorder2io13WriteBytesExt9write_u1617hdf4b1e8ea384e6caE.exit68.i ], [ %i.m, %_ZN9byteorder2io13WriteBytesExt9write_u3217hbaca937133e6e287E.exit60.i ]
  %i.u = phi i64 [ %i.cw, %_ZN9byteorder2io13WriteBytesExt9write_u1617hdf4b1e8ea384e6caE.exit68.i ], [ %i.q, %_ZN9byteorder2io13WriteBytesExt9write_u3217hbaca937133e6e287E.exit60.i ] ; 3 uses
  %.sroa.043.19.i = phi ptr [ %.sroa.043.1.i, %_ZN9byteorder2io13WriteBytesExt9write_u1617hdf4b1e8ea384e6caE.exit68.i ], [ %.sroa.043.17.i, %_ZN9byteorder2io13WriteBytesExt9write_u3217hbaca937133e6e287E.exit60.i ] ; 3 uses
  %.sroa.043.08.i = phi ptr [ %.sroa.043.19.i, %_ZN9byteorder2io13WriteBytesExt9write_u1617hdf4b1e8ea384e6caE.exit68.i ], [ %.8.val, %_ZN9byteorder2io13WriteBytesExt9write_u3217hbaca937133e6e287E.exit60.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.043.08.i, i64 24
  %i.w = load i16, ptr %i.v, align 8, !noalias !88461, !noundef !13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88506)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88509)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88512)
  %i.x = load i64, ptr %i.b, align 8, !range !26, !alias.scope !88515, !noalias !88518, !noundef !13
  %i.y = sub i64 %i.x, %i.u
  %i.z = icmp ult i64 %i.y, 2
  br i1 %i.z, label %bb.c, label %_ZN9byteorder2io13WriteBytesExt9write_u1617hdf4b1e8ea384e6caE.exit.i, !prof !11

bb.c:                                             ; preds = %.lr.ph.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.u, i64 noundef 2, i64 noundef 1, i64 noundef 1)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc11:                                         ; preds = %bb.c
  %.pre.i.i.i.i.i.i61.i = load i64, ptr %i.d, align 8, !alias.scope !88523, !noalias !88518
  %.pre34.i = load ptr, ptr %i.c, align 8, !alias.scope !88523, !noalias !88518
  br label %_ZN9byteorder2io13WriteBytesExt9write_u1617hdf4b1e8ea384e6caE.exit.i

_ZN9byteorder2io13WriteBytesExt9write_u1617hdf4b1e8ea384e6caE.exit.i: ; preds = %.noexc11, %.lr.ph.i
  %i.aa = phi ptr [ %i.t, %.lr.ph.i ], [ %.pre34.i, %.noexc11 ]
  %i.ab = phi i64 [ %i.u, %.lr.ph.i ], [ %.pre.i.i.i.i.i.i61.i, %.noexc11 ] ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, -1
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab
  store i16 %i.w, ptr %i.ad, align 1, !noalias !88523
  %i.ae = add nuw i64 %i.ab, 2                    ; 4 uses
  store i64 %i.ae, ptr %i.d, align 8, !alias.scope !88523, !noalias !88518
  %i.af = load i64, ptr %.sroa.043.08.i, align 8, !range !641, !noalias !88461, !noundef !13
  %i.ag = icmp eq i64 %i.af, -9223372036854775808
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.043.08.i, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !88461, !noundef !13 ; 2 uses
  br i1 %i.ag, label %bb.l, label %bb.k

._crit_edge.i:                                    ; preds = %_ZN9byteorder2io13WriteBytesExt9write_u1617hdf4b1e8ea384e6caE.exit68.i
  %i.aj = shl i32 %i.j, 3
  %i.ak = add i32 %i.aj, 8
  br label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %bb.j, %._crit_edge.i
  %i.al = phi ptr [ %i.aq, %bb.j ], [ %i.cu, %._crit_edge.i ]
  %i.am = phi i64 [ %i.au, %bb.j ], [ %i.cw, %._crit_edge.i ] ; 3 uses
  %.sroa.044.114.i = phi ptr [ %.sroa.044.1.i, %bb.j ], [ %.sroa.043.17.i, %._crit_edge.i ] ; 3 uses
  %.sroa.020.013.i = phi i32 [ %.sroa.020.1.i, %bb.j ], [ %i.ak, %._crit_edge.i ] ; 3 uses
  %.sroa.044.012.i = phi ptr [ %.sroa.044.114.i, %bb.j ], [ %.8.val, %._crit_edge.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88530)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88533)
  %i.an = load i64, ptr %i.b, align 8, !range !26, !alias.scope !88536, !noalias !88539, !noundef !13
  %i.ao = sub i64 %i.an, %i.am
  %i.ap = icmp ult i64 %i.ao, 4
  br i1 %i.ap, label %bb.d, label %_ZN9byteorder2io13WriteBytesExt9write_u3217hbaca937133e6e287E.exit63.i, !prof !11

bb.d:                                             ; preds = %.lr.ph16.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.am, i64 noundef 4, i64 noundef 1, i64 noundef 1)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc12:                                         ; preds = %bb.d
  %.pre.i.i.i.i.i.i62.i = load i64, ptr %i.d, align 8, !alias.scope !88544, !noalias !88539
  %.pre35.i = load ptr, ptr %i.c, align 8, !alias.scope !88544, !noalias !88539
  br label %_ZN9byteorder2io13WriteBytesExt9write_u3217hbaca937133e6e287E.exit63.i

_ZN9byteorder2io13WriteBytesExt9write_u3217hbaca937133e6e287E.exit63.i: ; preds = %.noexc12, %.lr.ph16.i
  %i.aq = phi ptr [ %i.al, %.lr.ph16.i ], [ %.pre35.i, %.noexc12 ] ; 2 uses
  %i.ar = phi i64 [ %i.am, %.lr.ph16.i ], [ %.pre.i.i.i.i.i.i62.i, %.noexc12 ] ; 3 uses
  %i.as = icmp sgt i64 %i.ar, -1
  tail call void @llvm.assume(i1 %i.as)
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ar
  store i32 %.sroa.020.013.i, ptr %i.at, align 1, !noalias !88544
  %i.au = add nuw i64 %i.ar, 4                    ; 3 uses
  store i64 %i.au, ptr %i.d, align 8, !alias.scope !88544, !noalias !88539
  %i.av = load i64, ptr %.sroa.044.012.i, align 8, !range !641, !noalias !88461, !noundef !13
  %i.aw = icmp eq i64 %i.av, -9223372036854775808
  br i1 %i.aw, label %bb.h, label %bb.i

.lr.ph29.i:                                       ; preds = %bb.j, %.loopexit.i
  %i.ax = phi i64 [ %i.br, %.loopexit.i ], [ %i.au, %bb.j ] ; 3 uses
  %.sroa.045.128.i = phi ptr [ %.sroa.045.1.i, %.loopexit.i ], [ %.sroa.043.17.i, %bb.j ] ; 3 uses
  %.sroa.045.027.i = phi ptr [ %.sroa.045.128.i, %.loopexit.i ], [ %.8.val, %bb.j ] ; 3 uses
  %i.ay = load i64, ptr %.sroa.045.027.i, align 8, !range !641, !noalias !88461, !noundef !13
  %i.az = icmp eq i64 %i.ay, -9223372036854775808
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.045.027.i, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !88461, !nonnull !13, !noundef !13 ; 4 uses
  br i1 %i.az, label %.preheader, label %bb.e

bb.e:                                             ; preds = %.lr.ph29.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.045.027.i, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !noalias !88461, !noundef !13 ; 2 uses
  %.idx31.i = shl nuw nsw i64 %i.bd, 1
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx31.i
  %i.bf = icmp eq i64 %i.bd, 0
  br i1 %i.bf, label %.loopexit.i, label %.lr.ph22.preheader.i

.lr.ph22.preheader.i:                             ; preds = %bb.e
  %.sroa.046.118.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  br label %.lr.ph22.i

.lr.ph22.i:                                       ; preds = %_ZN9byteorder2io13WriteBytesExt9write_u1617hdf4b1e8ea384e6caE.exit65.i, %.lr.ph22.preheader.i
  %i.bg = phi i64 [ %i.bp, %_ZN9byteorder2io13WriteBytesExt9write_u1617hdf4b1e8ea384e6caE.exit65.i ], [ %i.ax, %.lr.ph22.preheader.i ] ; 3 uses
  %.sroa.046.120.i = phi ptr [ %.sroa.046.1.i, %_ZN9byteorder2io13WriteBytesExt9write_u1617hdf4b1e8ea384e6caE.exit65.i ], [ %.sroa.046.118.i, %.lr.ph22.preheader.i ] ; 3 uses
  %.sroa.046.019.i = phi ptr [ %.sroa.046.120.i, %_ZN9byteorder2io13WriteBytesExt9write_u1617hdf4b1e8ea384e6caE.exit65.i ], [ %i.bb, %.lr.ph22.preheader.i ]
  %i.bh = load i16, ptr %.sroa.046.019.i, align 2, !noalias !88461, !noundef !13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88545)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88551)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88554)
  %i.bi = load i64, ptr %i.b, align 8, !range !26, !alias.scope !88557, !noalias !88560, !noundef !13
  %i.bj = sub i64 %i.bi, %i.bg
  %i.bk = icmp ult i64 %i.bj, 2
  br i1 %i.bk, label %bb.f, label %_ZN9byteorder2io13WriteBytesExt9write_u1617hdf4b1e8ea384e6caE.exit65.i, !prof !11

bb.f:                                             ; preds = %.lr.ph22.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.bg, i64 noundef 2, i64 noundef 1, i64 noundef 1)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

end_hunk_3
begin_hunk_4_@"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h0add7ca4c15bbd7eE":bb.a
  br i1 %.not.i14.i.i.i.i.i87.i.i.i, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h636e2801807096ecE.exit101.i.i.i", label %bb.br, !prof !341

bb.br:                                            ; preds = %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i13.i.i.i.i.i86.i.i.i
  %i.py = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %i.px), !noalias !146077
  br label %"_ZN17meilisearch_types7network1_92_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$meilisearch_types..network..Network$GT$9serialize17h16374d473c30eb51E.exit.thread.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h636e2801807096ecE.exit101.sink.split.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i15.i.i.i.i.i88.i.i.i, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i.i.i.i.i.i52.i.i.i
  %.sink195.i.i.i = phi i64 [ %i.pr, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i15.i.i.i.i.i88.i.i.i ], [ %i.lh, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i.i.i.i.i.i52.i.i.i ]
  %i.pz = add nuw i64 %.sink195.i.i.i, 1
  store i64 %i.pz, ptr %i.kt, align 8, !noalias !146078
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h636e2801807096ecE.exit101.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h636e2801807096ecE.exit101.i.i.i": ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h636e2801807096ecE.exit101.sink.split.i.i.i", %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i13.i.i.i.i.i86.i.i.i, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i50.i.i.i
  %i.qa = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.qb = call fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17hb38582f298d21f44E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @706, i64 noundef 6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qa), !noalias !145445 ; 2 uses
  %.not32.i.i.i = icmp eq ptr %i.qb, null
  br i1 %.not32.i.i.i, label %bb.bs, label %"_ZN17meilisearch_types7network1_92_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$meilisearch_types..network..Network$GT$9serialize17h16374d473c30eb51E.exit.thread.i.i"

bb.bs:                                            ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h636e2801807096ecE.exit101.i.i.i"
  %i.qc = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.qd = call fastcc noundef align 8 ptr @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h4bc528f0be57fd7eE"(ptr noalias noundef align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @424, i64 noundef 7, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(16) %i.qc), !noalias !145445 ; 2 uses
  %.not33.i.i.i = icmp eq ptr %i.qd, null
  br i1 %.not33.i.i.i, label %"_ZN17meilisearch_types7network1_92_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$meilisearch_types..network..Network$GT$9serialize17h16374d473c30eb51E.exit.i.i", label %"_ZN17meilisearch_types7network1_92_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$meilisearch_types..network..Network$GT$9serialize17h16374d473c30eb51E.exit.thread.i.i"

"_ZN17meilisearch_types7network1_92_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$meilisearch_types..network..Network$GT$9serialize17h16374d473c30eb51E.exit.thread.i.i": ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hcd93ac5397a5c70bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.bs, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h636e2801807096ecE.exit101.i.i.i", %bb.br, %.loopexit17.sink.split.i.i.i.i.i.i.i.i.i.i, %bb.bd, %bb.ba, %bb.ay, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hfdaf05a4245b2870E.exit.i.i38.i.i.i", %bb.au, %bb.at, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h927a040757bffb3bE.exit.thread19.i.i.i.i.i.i.i.i.i.i", %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17h0d1a25180f12e690E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.ac, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hcfa0f4f96b175a0eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.s, %bb.p, %bb.n, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hfdaf05a4245b2870E.exit.i.i.i.i.i", %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h636e2801807096ecE.exit.i.i.i", %bb.h
  %.sroa.0.0.i.ph.i.i = phi ptr [ %i.at, %bb.h ], [ %i.py, %bb.br ], [ %i.ld, %bb.ba ], [ %i.lp, %bb.bd ], [ %i.pp, %.loopexit17.sink.split.i.i.i.i.i.i.i.i.i.i ], [ %i.jz, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hfdaf05a4245b2870E.exit.i.i38.i.i.i" ], [ %i.bn, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hfdaf05a4245b2870E.exit.i.i.i.i.i" ], [ %i.bz, %bb.n ], [ %i.dd, %bb.s ], [ %i.cr, %bb.p ], [ %i.ix, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h927a040757bffb3bE.exit.thread19.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.0.0.i.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17h0d1a25180f12e690E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.ge, %bb.ac ], [ %i.fs, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hcfa0f4f96b175a0eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.jk, %bb.at ], [ %i.qd, %bb.bs ], [ %i.jl, %bb.au ], [ %i.kl, %bb.ay ], [ %i.au, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h636e2801807096ecE.exit.i.i.i" ], [ %i.qb, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h636e2801807096ecE.exit101.i.i.i" ], [ %i.pe, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hcd93ac5397a5c70bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !145496
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h4223a716888cb125E.exit

"_ZN17meilisearch_types7network1_92_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$meilisearch_types..network..Network$GT$9serialize17h16374d473c30eb51E.exit.i.i": ; preds = %bb.bs
  %i.qe = call fastcc noundef align 8 ptr @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$3end17h28d295c28ef45479E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.b), !noalias !146079
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !145496
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h4223a716888cb125E.exit

_ZN10serde_core3ser12SerializeMap15serialize_entry17h4223a716888cb125E.exit: ; preds = %"_ZN17meilisearch_types7network1_92_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$meilisearch_types..network..Network$GT$9serialize17h16374d473c30eb51E.exit.i.i", %"_ZN17meilisearch_types7network1_92_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$meilisearch_types..network..Network$GT$9serialize17h16374d473c30eb51E.exit.thread.i.i", %bb.f, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hfdaf05a4245b2870E.exit.i", %bb.bt
  %.sroa.0.0 = phi ptr [ %i.qf, %bb.bt ], [ %i.v, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hfdaf05a4245b2870E.exit.i" ], [ %i.ah, %bb.f ], [ %.sroa.0.0.i.ph.i.i, %"_ZN17meilisearch_types7network1_92_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$meilisearch_types..network..Network$GT$9serialize17h16374d473c30eb51E.exit.thread.i.i" ], [ %i.qe, %"_ZN17meilisearch_types7network1_92_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$meilisearch_types..network..Network$GT$9serialize17h16374d473c30eb51E.exit.i.i" ]
  ret ptr %.sroa.0.0

bb.bt:                                            ; preds = %bb.a
  %i.qf = tail call noundef nonnull align 8 ptr @_ZN10serde_json3ser17invalid_raw_value17h7b86ac75f635f2e0E()
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h4223a716888cb125E.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h0dfc81e9a63e5cdeE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 24 uses
  %i.c = load i8, ptr %0, align 8, !range !1013, !noundef !13
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.cg, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146080)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146083)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146085)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !146088, !noalias !146089, !nonnull !13, !align !25, !noundef !13 ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !range !450, !alias.scope !146088, !noalias !146089, !noundef !13
  %i.i = icmp eq i8 %i.h, 1
  %.val.i.i = load ptr, ptr %i.f, align 8, !noalias !146091 ; 6 uses
  br i1 %i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146092)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146095)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146098)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146101)
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !146104, !noalias !146107, !noundef !13 ; 3 uses
  %i.l = load i64, ptr %.val.i.i, align 8, !range !26, !alias.scope !146104, !noalias !146107, !noundef !13
  %i.m = icmp eq i64 %i.l, %i.k
  br i1 %i.m, label %bb.d, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h26817b3c326e73bfE.exit.i.i.i", !prof !11

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, i64 noundef %i.k, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !146107
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !146112, !noalias !146107
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h26817b3c326e73bfE.exit.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h26817b3c326e73bfE.exit.i.i.i": ; preds = %bb.d, %bb.c
  %i.n = phi i64 [ %i.k, %bb.c ], [ %.pre.i.i.i.i.i.i.i.i, %bb.d ] ; 3 uses
  %i.o = icmp sgt i64 %i.n, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !146112, !noalias !146107, !nonnull !13, !noundef !13
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n
  store i8 44, ptr %i.r, align 1, !noalias !146113
  %i.s = add nuw i64 %i.n, 1
  store i64 %i.s, ptr %i.j, align 8, !alias.scope !146112, !noalias !146107
  %.val9.pre.i.i = load ptr, ptr %i.f, align 8, !noalias !146091
  br label %bb.e

bb.e:                                             ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h26817b3c326e73bfE.exit.i.i.i", %bb.b
  %.val9.i.i = phi ptr [ %.val.i.i, %bb.b ], [ %.val9.pre.i.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h26817b3c326e73bfE.exit.i.i.i" ]
  store i8 2, ptr %i.g, align 1, !alias.scope !146088, !noalias !146089
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17ha54f8722ac753d23E"(ptr nonnull %.val9.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @759, i64 noundef range(i64 3, 27) 9)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146114)
  %.val.i5.i = load ptr, ptr %i.f, align 8, !noalias !146117, !nonnull !13, !align !25, !noundef !13 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146127)
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i5.i, i64 16 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !146130, !noalias !146133, !noundef !13 ; 3 uses
  %i.v = load i64, ptr %.val.i5.i, align 8, !range !26, !alias.scope !146130, !noalias !146133, !noundef !13
  %i.w = icmp eq i64 %i.v, %i.u
  br i1 %i.w, label %bb.f, label %_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i, !prof !11

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i5.i, i64 noundef %i.u, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !146133
  %.pre.i.i.i.i.i.i.i6.i = load i64, ptr %i.t, align 8, !alias.scope !146138, !noalias !146133
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i

_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i: ; preds = %bb.f, %bb.e
  %i.x = phi i64 [ %i.u, %bb.e ], [ %.pre.i.i.i.i.i.i.i6.i, %bb.f ] ; 3 uses
  %i.y = icmp sgt i64 %i.x, -1
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i5.i, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !146138, !noalias !146133, !nonnull !13, !noundef !13
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.x
  store i8 58, ptr %i.ab, align 1, !noalias !146139
  %i.ac = add nuw i64 %i.x, 1
  store i64 %i.ac, ptr %i.t, align 8, !alias.scope !146138, !noalias !146133
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146143)
  %i.ad = load i64, ptr %1, align 8, !range !1515, !alias.scope !146145, !noalias !146146, !noundef !13
  %.not.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.ce

bb.g:                                             ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146161)
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !146163, !noalias !146166, !noundef !13 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp ne ptr %i.af, null ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !146168, !noalias !146169
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !146168, !noalias !146169 ; 2 uses
  %i.ak = ptrtoint ptr %i.af to i64
  %.sroa.15.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i64 %i.ah, i64 undef
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146170)
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !146173, !noalias !146174, !nonnull !13, !align !25, !noundef !13 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146185)
  %i.al = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i, i64 16 ; 5 uses
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !146188, !noalias !146191, !noundef !13 ; 3 uses
  %i.an = load i64, ptr %.val.i.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !146188, !noalias !146191, !noundef !13
  %i.ao = icmp eq i64 %i.an, %i.am
  br i1 %i.ao, label %bb.h, label %_ZN10serde_json3ser9Formatter12begin_object17h347afe77415afce2E.exit.i.i.i.i.i.i.i.i, !prof !11

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i, i64 noundef %i.am, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !146196
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.al, align 8, !alias.scope !146197, !noalias !146196
  br label %_ZN10serde_json3ser9Formatter12begin_object17h347afe77415afce2E.exit.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter12begin_object17h347afe77415afce2E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.ap = phi i64 [ %i.am, %bb.g ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.h ] ; 3 uses
  %i.aq = icmp sgt i64 %i.ap, -1
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !146197, !noalias !146196, !nonnull !13, !noundef !13
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ap
  store i8 123, ptr %i.at, align 1, !noalias !146198
  %i.au = add nuw i64 %i.ap, 1                    ; 4 uses
  store i64 %i.au, ptr %i.al, align 8, !alias.scope !146197, !noalias !146196
  %i.av = icmp ne i64 %i.aj, 0
  %.not104.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i1 %i.av, i1 false
  br i1 %.not104.i.i.i.i.i.i.i, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17h9343d2d27d3141ddE.exit.i.i.i.i.i.i.i", label %bb.i

bb.i:                                             ; preds = %_ZN10serde_json3ser9Formatter12begin_object17h347afe77415afce2E.exit.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146208)
  %i.aw = load i64, ptr %.val.i.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !146211, !noalias !146214, !noundef !13
  %i.ax = icmp eq i64 %i.aw, %i.au
  br i1 %i.ax, label %bb.j, label %bb.cb, !prof !11

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i, i64 noundef %i.au, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !146214
  %.pre.i.i.i.i.i.i17.i.i.i.i.i.i.i.i = load i64, ptr %i.al, align 8, !alias.scope !146219, !noalias !146214
  br label %bb.cb

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17h9343d2d27d3141ddE.exit.i.i.i.i.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter12begin_object17h347afe77415afce2E.exit.i.i.i.i.i.i.i.i
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1b7553de692fd3fdE.exit.i.i.i.i.i.i.i.i.i", %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17h9343d2d27d3141ddE.exit.i.i.i.i.i.i.i"
  %.sroa.10.1.i.i.i.i.i.i.i.a = phi i64 [ %i.ak, %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17h9343d2d27d3141ddE.exit.i.i.i.i.i.i.i" ], [ 0, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1b7553de692fd3fdE.exit.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.15.1.i.i.i.i.i.i.i = phi i64 [ %.sroa.15.0.i.i.i.i.i.i.i, %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17h9343d2d27d3141ddE.exit.i.i.i.i.i.i.i" ], [ %.sroa.7.0.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1b7553de692fd3fdE.exit.i.i.i.i.i.i.i.i.i" ] ; 6 uses
  %i.ay = phi i1 [ true, %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17h9343d2d27d3141ddE.exit.i.i.i.i.i.i.i" ], [ false, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1b7553de692fd3fdE.exit.i.i.i.i.i.i.i.i.i" ]
  %.sroa.012.0.lcssa.i.i23.i.i.i.i.i.i.i.i.i = phi ptr [ null, %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17h9343d2d27d3141ddE.exit.i.i.i.i.i.i.i" ], [ %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1b7553de692fd3fdE.exit.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.az = phi i64 [ %i.aj, %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17h9343d2d27d3141ddE.exit.i.i.i.i.i.i.i" ], [ %i.ba, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1b7553de692fd3fdE.exit.i.i.i.i.i.i.i.i.i" ]
  %i.ba = add i64 %i.az, -1                       ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.012.0.lcssa.i.i23.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.l, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h919c09fc297a71ddE.exit.i.i.i.i.i.i.i.i.i.i"

bb.l:                                             ; preds = %bb.k
  %i.bb = inttoptr i64 %.sroa.10.1.i.i.i.i.i.i.i.a to ptr ; 3 uses
  %i.bc = icmp eq i64 %.sroa.15.1.i.i.i.i.i.i.i, 0
  br i1 %i.bc, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h919c09fc297a71ddE.exit.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %bb.l
  %xtraiter = and i64 %.sroa.15.1.i.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol
  %.sroa.012.015.i.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %.sroa.011.014.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.be, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.sroa.15.1.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i.i.i.i.i.i.i.i.i.prol, i64 16912
  %i.be = add i64 %.sroa.011.014.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %i.bd, align 8, !noalias !146220, !nonnull !13, !noundef !13 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !146231

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.sroa.012.015.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.sroa.011.014.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.15.1.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.be, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.bf = icmp ult i64 %.sroa.15.1.i.i.i.i.i.i.i, 8
  br i1 %i.bf, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h919c09fc297a71ddE.exit.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.012.015.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.012.015.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.011.014.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bo, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.011.014.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i.i.i.i.i.i.i.i.i, i64 16912
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bg, align 8, !noalias !146220, !nonnull !13, !noundef !13
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i, i64 16912
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.bh, align 8, !noalias !146220, !nonnull !13, !noundef !13
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.1, i64 16912
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.bi, align 8, !noalias !146220, !nonnull !13, !noundef !13
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.2, i64 16912
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.bj, align 8, !noalias !146220, !nonnull !13, !noundef !13
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.3, i64 16912
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.bk, align 8, !noalias !146220, !nonnull !13, !noundef !13
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.4, i64 16912
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.bl, align 8, !noalias !146220, !nonnull !13, !noundef !13
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.5, i64 16912
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.bm, align 8, !noalias !146220, !nonnull !13, !noundef !13
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.6, i64 16912
  %i.bo = add i64 %.sroa.011.014.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.bn, align 8, !noalias !146220, !nonnull !13, !noundef !13 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h919c09fc297a71ddE.exit.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h919c09fc297a71ddE.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.l, %bb.k
  %.sroa.37.0.copyload.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.15.1.i.i.i.i.i.i.i, %bb.k ], [ 0, %bb.l ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.26.0.copyload.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.10.1.i.i.i.i.i.i.i.a, %bb.k ], [ 0, %bb.l ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.012.0.lcssa.i.i23.i.i.i.i.i.i.i.i.i, %bb.k ], [ %i.bb, %bb.l ], [ %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i.i.i, i64 16906
  %i.br = load i16, ptr %i.bq, align 2, !noalias !146232, !noundef !13
  %i.bs = zext i16 %i.br to i64
  %i.bt = icmp ult i64 %.sroa.37.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %i.bs
  br i1 %i.bt, label %bb.n, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h919c09fc297a71ddE.exit.i.i.i.i.i.i.i.i.i.i", %bb.m
  %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bu, %bb.m ], [ %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h919c09fc297a71ddE.exit.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bw, %bb.m ], [ %.sroa.26.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h919c09fc297a71ddE.exit.i.i.i.i.i.i.i.i.i.i" ]
  %i.bu = load ptr, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !146241, !noundef !13 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.p, label %bb.m

._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i:   ; preds = %bb.m
  %i.bv = zext i16 %i.by to i64
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bw = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16904
  %i.by = load i16, ptr %i.bx, align 8, !noalias !146241 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 16906
  %i.ca = load i16, ptr %i.bz, align 2, !noalias !146232, !noundef !13
  %i.cb = icmp ult i16 %i.by, %i.ca
  br i1 %i.cb, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h919c09fc297a71ddE.exit.i.i.i.i.i.i.i.i.i.i"
  %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.37.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h919c09fc297a71ddE.exit.i.i.i.i.i.i.i.i.i.i" ], [ %i.bv, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.26.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h919c09fc297a71ddE.exit.i.i.i.i.i.i.i.i.i.i" ], [ %i.bw, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h919c09fc297a71ddE.exit.i.i.i.i.i.i.i.i.i.i" ], [ %i.bu, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.cc = icmp eq i64 %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %i.cd = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  br i1 %i.cc, label %.loopexit.i.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i.i, i64 16912
  %i.cf = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cd ; 2 uses
  %xtraiter7 = and i64 %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod8.not = icmp eq i64 %xtraiter7, 0
  br i1 %lcmp.mod8.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.o, %.prol.preheader
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.ch, %.prol.preheader ], [ %i.cg, %bb.o ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i.i, %bb.o ]
  %prol.iter9 = phi i64 [ %prol.iter9.next, %.prol.preheader ], [ 0, %bb.o ]
  %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !146244, !nonnull !13, !noundef !13 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, i64 16912 ; 2 uses
  %prol.iter9.next = add i64 %prol.iter9, 1       ; 2 uses
  %prol.iter9.cmp.not = icmp eq i64 %prol.iter9.next, %xtraiter7
  br i1 %prol.iter9.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !146248

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.o
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.o ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.cg, %bb.o ], [ %i.ch, %.prol.preheader ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i.i, %bb.o ], [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %i.ci = icmp ult i64 %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i.i, 8
  br i1 %i.ci, label %.loopexit.i.i.i.i.i.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cr, %.new ], [ %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !146244, !nonnull !13, !noundef !13
  %i.cj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16912
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.cj, align 8, !noalias !146244, !nonnull !13, !noundef !13
  %i.ck = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.1, i64 16912
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.ck, align 8, !noalias !146244, !nonnull !13, !noundef !13
  %i.cl = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.2, i64 16912
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.cl, align 8, !noalias !146244, !nonnull !13, !noundef !13
  %i.cm = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.3, i64 16912
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.cm, align 8, !noalias !146244, !nonnull !13, !noundef !13
  %i.cn = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.4, i64 16912
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.cn, align 8, !noalias !146244, !nonnull !13, !noundef !13
  %i.co = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.5, i64 16912
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.co, align 8, !noalias !146244, !nonnull !13, !noundef !13
  %i.cp = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.6, i64 16912
  %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.cp, align 8, !noalias !146244, !nonnull !13, !noundef !13 ; 2 uses
  %i.cq = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.cr = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.7, i64 16912
  br i1 %i.cq, label %.loopexit.i.i.i.i.i.i.i, label %.new

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1639) #41
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.q, !noalias !146249

.noexc.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.loopexit.i.i.i.i.i.i.i:                          ; preds = %.prol.loopexit, %.new, %bb.n
  %.sroa.7.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cd, %bb.n ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i.i, %bb.n ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.cu = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.cu)
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %i.ct, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i.i, i64 272
  %i.cx = getelementptr inbounds nuw [1512 x i8], ptr %i.cw, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i ; 22 uses
  %i.cy = getelementptr i8, ptr %i.cv, i64 8
  %.val9.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cy, align 8, !noalias !146250 ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cv, i64 16
  %.val10.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cz, align 8, !noalias !146250
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146254)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !146257, !noalias !146258 ; 6 uses
  br i1 %i.ay, label %bb.t, label %bb.r

bb.r:                                             ; preds = %.loopexit.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146273)
  %i.da = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !146276, !noalias !146279, !noundef !13 ; 3 uses
  %i.dc = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !146276, !noalias !146279, !noundef !13
  %i.dd = icmp eq i64 %i.dc, %i.db
  br i1 %i.dd, label %bb.s, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h26817b3c326e73bfE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !11

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.db, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !146279
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.da, align 8, !alias.scope !146284, !noalias !146279
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h26817b3c326e73bfE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h26817b3c326e73bfE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.s, %bb.r
  %i.de = phi i64 [ %i.db, %bb.r ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.s ] ; 3 uses
  %i.df = icmp sgt i64 %i.de, -1
  tail call void @llvm.assume(i1 %i.df)
  %i.dg = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !alias.scope !146284, !noalias !146279, !nonnull !13, !noundef !13
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.de
  store i8 44, ptr %i.di, align 1, !noalias !146285
  %i.dj = add nuw i64 %i.de, 1
  store i64 %i.dj, ptr %i.da, align 8, !alias.scope !146284, !noalias !146279
  %.val10.pre.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !146257, !noalias !146258
  br label %bb.t

bb.t:                                             ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h26817b3c326e73bfE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %.loopexit.i.i.i.i.i.i.i
  %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ], [ %.val10.pre.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h26817b3c326e73bfE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i.i.i.i) ]
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17ha54f8722ac753d23E"(ptr nonnull %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.i.i.i.i.i.i.i.i.i, i64 noundef %.val10.i.i.i.i.i.i.i.i.i)
  %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !146257, !noalias !146286, !nonnull !13, !align !25, !noundef !13 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146296)
  %i.dk = getelementptr inbounds nuw i8, ptr %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.dl = load i64, ptr %i.dk, align 8, !alias.scope !146299, !noalias !146302, !noundef !13 ; 3 uses
  %i.dm = load i64, ptr %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !146299, !noalias !146302, !noundef !13
  %i.dn = icmp eq i64 %i.dm, %i.dl
  br i1 %i.dn, label %bb.u, label %_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !11

bb.u:                                             ; preds = %bb.t
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.dl, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !146302
  %.pre.i.i.i.i.i.i.i8.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dk, align 8, !alias.scope !146307, !noalias !146302
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %i.do = phi i64 [ %i.dl, %bb.t ], [ %.pre.i.i.i.i.i.i.i8.i.i.i.i.i.i.i.i.i.i.i.i, %bb.u ] ; 3 uses
  %i.dp = icmp sgt i64 %i.do, -1
  tail call void @llvm.assume(i1 %i.dp)
  %i.dq = getelementptr inbounds nuw i8, ptr %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !alias.scope !146307, !noalias !146302, !nonnull !13, !noundef !13
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.do
  store i8 58, ptr %i.ds, align 1, !noalias !146308
  %i.dt = add nuw i64 %i.do, 1
  store i64 %i.dt, ptr %i.dk, align 8, !alias.scope !146307, !noalias !146302
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146320)
  %i.du = load i64, ptr %i.cx, align 8, !range !7631, !alias.scope !146322, !noalias !146323, !noundef !13 ; 3 uses
  %i.dv = icmp samesign ugt i64 %i.du, 2
  br i1 %i.dv, label %bb.by, label %bb.v

bb.v:                                             ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146333)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !146335
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cx, i64 1510
  %i.dx = load i8, ptr %i.dw, align 2, !range !6580, !alias.scope !146336, !noalias !146337, !noundef !13 ; 2 uses
  %i.dy = icmp ne i8 %i.dx, 7                     ; 2 uses
  %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = zext i1 %i.dy to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cx, i64 1232 ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !range !631, !alias.scope !146336, !noalias !146337, !noundef !13
  %i.eb = icmp ne i64 %i.ea, -9223372036854775807 ; 2 uses
  %.sroa.08.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = zext i1 %i.eb to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cx, i64 1256 ; 2 uses
end_hunk_4
