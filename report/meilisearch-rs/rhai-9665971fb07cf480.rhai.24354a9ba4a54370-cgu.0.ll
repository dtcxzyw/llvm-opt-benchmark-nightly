Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/rhai-9665971fb07cf480.rhai.24354a9ba4a54370-cgu.0?download=true
inline.NumInlined: 22837
inline.NumDeleted: 6491
loop-unroll.NumCompletelyUnrolled: 109
loop-unroll.NumRuntimeUnrolled: 148
loop-unroll.NumUnrolled: 257
begin_hunk_0_@"_ZN4rhai4func4call38_$LT$impl$u20$rhai..engine..Engine$GT$17eval_fn_call_expr17h8fd0a6868f87db9fE":bb.a

bb.k:                                             ; preds = %bb.q, %bb.g
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.o), !inline_history !78
  br label %bb.r

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.m
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.o)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit" unwind label %bb.s, !inline_history !78

bb.m:                                             ; preds = %bb.j, %.noexc125
  %.pre-phi196 = phi ptr [ %i.aw, %bb.j ], [ %i.au, %.noexc125 ] ; 2 uses
  %.merged.i123 = phi i64 [ %i.ay, %bb.j ], [ %i.av, %.noexc125 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pre-phi196) ]
  invoke void @"_ZN4rhai4func4call38_$LT$impl$u20$rhai..engine..Engine$GT$12exec_fn_call17h5d85ae488fcc2194E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(88) %2, ptr noalias noundef nonnull align 8 dereferenceable(200) %3, ptr noalias noundef align 8 dereferenceable_or_null(24) null, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.pre-phi196, i64 noundef %.merged.i123, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %6, ptr noalias noundef nonnull align 8 %i.m, i64 noundef 1, i1 noundef zeroext false, i1 noundef zeroext false, i16 noundef %7, i16 noundef %8)
          to label %bb.n unwind label %bb.l

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.bb = load i8, ptr %i.ba, align 8, !range !115, !noundef !60
  %i.bc = icmp eq i8 %i.bb, 2
  br i1 %i.bc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bd = load ptr, ptr %i.l, align 8, !nonnull !60, !align !61, !noundef !60
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bd, ptr %i.be, align 8
  store i8 12, ptr %0, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.k

bb.r:                                             ; preds = %bb.k, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.at

bb.s:                                             ; preds = %bb.af, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit148", %bb.l
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit": ; preds = %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit148", %bb.l
  %.pn106 = phi { ptr, i32 } [ %i.az, %bb.l ], [ %.pn, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit148" ]
  resume { ptr, i32 } %.pn106

"_ZN4core6option15Option$LT$T$GT$11map_or_else17hb4485129edb1776fE.exit": ; preds = %"._ZN4core6option15Option$LT$T$GT$11map_or_else17hb4485129edb1776fE.exit_crit_edge", %bb.t
  %i.bg = phi ptr [ %.pre186, %"._ZN4core6option15Option$LT$T$GT$11map_or_else17hb4485129edb1776fE.exit_crit_edge" ], [ %.pre187, %bb.t ]
  %i.bh = icmp ugt i64 %.pre185, 5                ; 2 uses
  %.sink11.i129 = select i1 %i.bh, ptr %i.bg, ptr %i.p ; 2 uses
  %.sink10.i130 = select i1 %i.bh, i64 %.pre189, i64 %.pre185 ; 2 uses
  %.not101 = icmp eq i64 %.sink10.i130, 0         ; 2 uses
  %.sroa.0157.0183 = select i1 %.not101, ptr null, ptr %.sink11.i129
  %.sroa.2.0.copyload.sink.i.idx = select i1 %.not101, i64 0, i64 16
  %.sroa.2.0.copyload.sink.i = getelementptr inbounds nuw i8, ptr %.sink11.i129, i64 %.sroa.2.0.copyload.sink.i.idx
  %.sroa.3.0.copyload.sink.i = tail call i64 @llvm.usub.sat.i64(i64 %.sink10.i130, i64 1)
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !nonnull !60, !noundef !60 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 3 uses
  %i.bl = tail call noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bk)
  br i1 %i.bl, label %bb.au, label %bb.av

bb.t:                                             ; preds = %bb.b
  %i.bm = icmp ugt i64 %.pre185, 5                ; 2 uses
  %.sink10.i133 = select i1 %i.bm, i64 %.pre189, i64 %.pre185
  %i.bn = icmp ne i64 %.sink10.i133, 2
  %or.cond110 = or i1 %.not, %i.bn
  %.pre187 = load ptr, ptr %i.p, align 8          ; 2 uses
  br i1 %or.cond110, label %"_ZN4core6option15Option$LT$T$GT$11map_or_else17hb4485129edb1776fE.exit", label %"_ZN80_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9046eb2ee03b8148E.exit137"

"_ZN80_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9046eb2ee03b8148E.exit137": ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %.sink11.i.i136 = select i1 %i.bm, ptr %.pre187, ptr %i.p ; 2 uses
  call fastcc void @"_ZN4rhai4func4call38_$LT$impl$u20$rhai..engine..Engine$GT$13get_arg_value17h0a45da5fa4b9d16dE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(88) %2, ptr noalias noundef align 8 dereferenceable(200) %3, ptr noalias noundef align 8 dereferenceable(24) %4, ptr noalias noundef align 8 dereferenceable_or_null(16) %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sink11.i.i136)
  %i.bo = load i8, ptr %i.j, align 8, !range !75, !noundef !60 ; 2 uses
  %i.bp = icmp eq i8 %i.bo, 12
  br i1 %i.bp, label %bb.u, label %bb.w

bb.u:                                             ; preds = %"_ZN80_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9046eb2ee03b8148E.exit137"
  %i.bq = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !60, !align !61, !noundef !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.br, ptr %i.bs, align 8
  store i8 12, ptr %0, align 8
  br label %bb.as

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit148": ; preds = %bb.af, %bb.v
  %.pn = phi { ptr, i32 } [ %i.bt, %bb.v ], [ %i.cq, %bb.af ]
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.k)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit" unwind label %bb.s, !inline_history !78

bb.v:                                             ; preds = %bb.am, %bb.z, %bb.w
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit148"

bb.w:                                             ; preds = %"_ZN80_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9046eb2ee03b8148E.exit137"
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %.sroa.725.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.725.0..sroa_idx26, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.471.0..sroa_idx, i64 7, i1 false)
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.572.0.copyload = load ptr, ptr %.sroa.572.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i8 %i.bo, ptr %i.b, align 8
  %.sroa.727.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.572.0.copyload, ptr %.sroa.727.0..sroa_idx28, align 8
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic7flatten17hab2556f42f1d3715E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.k, ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.bu = getelementptr inbounds nuw i8, ptr %.sink11.i.i136, i64 16
  invoke fastcc void @"_ZN4rhai4func4call38_$LT$impl$u20$rhai..engine..Engine$GT$13get_arg_value17h0a45da5fa4b9d16dE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(88) %2, ptr noalias noundef align 8 dereferenceable(200) %3, ptr noalias noundef align 8 dereferenceable(24) %4, ptr noalias noundef align 8 dereferenceable_or_null(16) %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bu)
          to label %bb.x unwind label %bb.v

bb.x:                                             ; preds = %bb.w
  %i.bv = load i8, ptr %i.h, align 8, !range !75, !noundef !60 ; 2 uses
  %i.bw = icmp eq i8 %i.bv, 12
  br i1 %i.bw, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !60, !align !61, !noundef !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.by, ptr %i.bz, align 8
  store i8 12, ptr %0, align 8
  br label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit153"

bb.z:                                             ; preds = %bb.x
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %.sroa.736.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.736.0..sroa_idx37, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.477.0..sroa_idx, i64 7, i1 false)
  %.sroa.578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.578.0.copyload = load ptr, ptr %.sroa.578.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i8 %i.bv, ptr %i.a, align 8
  %.sroa.738.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.578.0.copyload, ptr %.sroa.738.0..sroa_idx39, align 8
  invoke fastcc void @_ZN4rhai5types7dynamic7Dynamic7flatten17hab2556f42f1d3715E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.i, ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.a)
          to label %bb.aa unwind label %bb.v

bb.aa:                                            ; preds = %bb.z
  %i.ca = load i8, ptr %i.k, align 8, !range !72, !noundef !60
  %i.cb = icmp eq i8 %i.ca, 10
  %i.cc = load i8, ptr %i.i, align 8, !range !72
  %i.cd = icmp eq i8 %i.cc, 10
  %or.cond = select i1 %i.cb, i1 true, i1 %i.cd
  br i1 %or.cond, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.ag, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.k, ptr %i.e, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.i, ptr %i.ce, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !nonnull !60, !noundef !60 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 3 uses
  %i.ci = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ch)
          to label %.noexc119 unwind label %bb.af

.noexc119:                                        ; preds = %bb.ab
  br i1 %i.ci, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.noexc119
  %i.cj = invoke { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ch)
          to label %.noexc120 unwind label %bb.af ; 2 uses

.noexc120:                                        ; preds = %bb.ac
  %i.ck = extractvalue { ptr, i64 } %i.cj, 0
  %i.cl = extractvalue { ptr, i64 } %i.cj, 1
  br label %bb.an

bb.ad:                                            ; preds = %.noexc119
  %i.cm = load ptr, ptr %i.ch, align 8, !nonnull !60, !noundef !60
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.co = load i64, ptr %i.cn, align 8, !noundef !60
  br label %bb.an

bb.ae:                                            ; preds = %bb.aa
  %i.cp = invoke fastcc { ptr, i8 } @_ZN4rhai4func7builtin24get_builtin_binary_op_fn17h878b72701bc67765E(i32 %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i)
          to label %bb.ag unwind label %bb.af     ; 2 uses

bb.af:                                            ; preds = %bb.ah, %bb.ab, %bb.ae, %bb.ac, %bb.ai, %bb.an, %bb.ak
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.i)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit148" unwind label %bb.s, !inline_history !78

bb.ag:                                            ; preds = %bb.ae
  %i.cr = extractvalue { ptr, i8 } %i.cp, 0       ; 2 uses
  %i.cs = extractvalue { ptr, i8 } %i.cp, 1
  switch i8 %i.cs, label %bb.ah [
    i8 2, label %bb.ab
    i8 0, label %bb.ak
  ]

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cr) ]
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.cu = load ptr, ptr %i.ct, align 8, !nonnull !60, !noundef !60 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 3 uses
  %i.cw = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cv)
          to label %.noexc unwind label %bb.af

.noexc:                                           ; preds = %bb.ah
  br i1 %i.cw, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.noexc
  %i.cx = invoke { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cv)
          to label %.noexc115 unwind label %bb.af ; 2 uses

.noexc115:                                        ; preds = %bb.ai
  %i.cy = extractvalue { ptr, i64 } %i.cx, 0
  %i.cz = extractvalue { ptr, i64 } %i.cx, 1
  br label %bb.ak

bb.aj:                                            ; preds = %.noexc
  %i.da = load ptr, ptr %i.cv, align 8, !nonnull !60, !noundef !60
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.dc = load i64, ptr %i.db, align 8, !noundef !60
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ag, %.noexc115, %bb.aj
  %.sroa.5.sroa.0.0 = phi ptr [ %i.cy, %.noexc115 ], [ %i.da, %bb.aj ], [ undef, %bb.ag ]
  %.sroa.5.sroa.4.0 = phi i64 [ %i.cz, %.noexc115 ], [ %i.dc, %bb.aj ], [ undef, %bb.ag ]
  %.sroa.051.0 = phi ptr [ %1, %.noexc115 ], [ %1, %bb.aj ], [ null, %bb.ag ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %.sroa.051.0, ptr %i.g, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.5.sroa.0.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.5.sroa.4.0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %2, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i16 %7, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 50
  store i16 %8, ptr %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.k, ptr %i.f, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.i, ptr %i.dd, align 8
  invoke void %i.cr(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.g, ptr noalias noundef nonnull align 8 %i.f, i64 noundef 2)
          to label %bb.al unwind label %bb.af

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.am

bb.am:                                            ; preds = %bb.ar, %bb.al
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.i)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit153" unwind label %bb.v, !inline_history !78

bb.an:                                            ; preds = %bb.ad, %.noexc120
  %.pre-phi192 = phi ptr [ %i.cm, %bb.ad ], [ %i.ck, %.noexc120 ] ; 2 uses
  %.merged.i118 = phi i64 [ %i.co, %bb.ad ], [ %i.cl, %.noexc120 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pre-phi192) ]
  invoke void @"_ZN4rhai4func4call38_$LT$impl$u20$rhai..engine..Engine$GT$12exec_fn_call17h5d85ae488fcc2194E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(88) %2, ptr noalias noundef nonnull align 8 dereferenceable(200) %3, ptr noalias noundef align 8 dereferenceable_or_null(24) null, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.pre-phi192, i64 noundef %.merged.i118, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %6, ptr noalias noundef nonnull align 8 %i.e, i64 noundef 2, i1 noundef zeroext false, i1 noundef zeroext false, i16 noundef %7, i16 noundef %8)
          to label %bb.ao unwind label %bb.af

bb.ao:                                            ; preds = %bb.an
  %i.de = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.df = load i8, ptr %i.de, align 8, !range !115, !noundef !60
  %i.dg = icmp eq i8 %i.df, 2
  br i1 %i.dg, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.dh = load ptr, ptr %i.d, align 8, !nonnull !60, !align !61, !noundef !60
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dh, ptr %i.di, align 8
  store i8 12, ptr %0, align 8
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.am

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit153": ; preds = %bb.am, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.k), !inline_history !78
  br label %bb.as

bb.as:                                            ; preds = %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit153", %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.at

bb.at:                                            ; preds = %bb.r, %bb.as, %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit"
  ret void

bb.au:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$11map_or_else17hb4485129edb1776fE.exit"
  %i.dj = tail call { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bk) ; 2 uses
  %i.dk = extractvalue { ptr, i64 } %i.dj, 0
  %i.dl = extractvalue { ptr, i64 } %i.dj, 1
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit"

bb.av:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$11map_or_else17hb4485129edb1776fE.exit"
  %i.dm = load ptr, ptr %i.bk, align 8, !nonnull !60, !noundef !60
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.do = load i64, ptr %i.dn, align 8, !noundef !60
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit"

"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit": ; preds = %bb.au, %bb.av
  %.sroa.0.0.i = phi ptr [ %i.dk, %bb.au ], [ %i.dm, %bb.av ] ; 2 uses
  %.merged.i = phi i64 [ %i.dl, %bb.au ], [ %i.do, %bb.av ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i) ]
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 136
  %i.dq = load i8, ptr %i.dp, align 8, !range !62, !noundef !60
  %i.dr = trunc nuw i8 %i.dq to i1
  tail call void @"_ZN4rhai4func4call38_$LT$impl$u20$rhai..engine..Engine$GT$18make_function_call17hff6e177013521787E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(88) %2, ptr noalias noundef nonnull align 8 dereferenceable(200) %3, ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef align 8 dereferenceable_or_null(16) %5, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.merged.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %., ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %.sroa.0157.0183, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.2.0.copyload.sink.i, i64 noundef %.sroa.3.0.copyload.sink.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %6, i1 noundef zeroext %i.dr, i16 noundef %7, i16 noundef %8)
  br label %bb.at
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4rhai4func4call38_$LT$impl$u20$rhai..engine..Engine$GT$18make_function_call17hff6e177013521787E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(88) %2, ptr noalias noundef align 8 dereferenceable(200) %3, ptr noalias noundef align 8 dereferenceable(24) %4, ptr noalias noundef align 8 dereferenceable_or_null(16) %5, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %6, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %10, i64 noundef %11, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %12, i1 noundef zeroext %13, i16 noundef %14, i16 noundef %15) unnamed_addr #8 personality ptr @rust_eh_personality !guid !34316 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [88 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [64 x i8], align 8                ; 7 uses
  %i.j = alloca [64 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [64 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [64 x i8], align 8                ; 9 uses
  %i.o = alloca [16 x i8], align 8                ; 6 uses
  %i.p = alloca [8 x i8], align 8                 ; 6 uses
  %i.q = alloca [16 x i8], align 8                ; 6 uses
  %i.r = alloca [16 x i8], align 8                ; 6 uses
  %i.s = alloca [16 x i8], align 8                ; 4 uses
  %i.t = alloca [16 x i8], align 8                ; 4 uses
  %i.u = alloca [16 x i8], align 8                ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 4 uses
  %i.w = alloca [16 x i8], align 8                ; 4 uses
  %i.x = alloca [16 x i8], align 8                ; 4 uses
  %i.y = alloca [16 x i8], align 8                ; 4 uses
  %i.z = alloca [16 x i8], align 8                ; 4 uses
  %i.aa = alloca [16 x i8], align 8               ; 4 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [16 x i8], align 8               ; 4 uses
  %i.ad = alloca [16 x i8], align 8               ; 4 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [16 x i8], align 8               ; 7 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [16 x i8], align 8               ; 5 uses
  %i.aj = alloca [16 x i8], align 8               ; 5 uses
  %i.ak = alloca [48 x i8], align 8               ; 4 uses
  %i.al = alloca [48 x i8], align 8               ; 6 uses
  %i.am = alloca [16 x i8], align 8               ; 2 uses
  %i.an = alloca [16 x i8], align 8               ; 5 uses
  %i.ao = alloca [24 x i8], align 8               ; 6 uses
  %i.ap = alloca [24 x i8], align 8               ; 6 uses
  %i.aq = alloca [16 x i8], align 8               ; 5 uses
  %i.ar = alloca [24 x i8], align 8               ; 7 uses
  %i.as = alloca [48 x i8], align 8               ; 18 uses
  %i.at = alloca [16 x i8], align 8               ; 4 uses
  %i.au = alloca [16 x i8], align 8               ; 4 uses
  %.sroa.61280.sroa.0 = alloca [7 x i8], align 1  ; 4 uses
  %.sroa.81283.sroa.5 = alloca [15 x i8], align 1 ; 4 uses
  %i.av = alloca [48 x i8], align 8               ; 9 uses
  %i.aw = alloca [16 x i8], align 8               ; 5 uses
  %i.ax = alloca [24 x i8], align 8               ; 7 uses
  %i.ay = alloca [16 x i8], align 8               ; 5 uses
  %i.az = alloca [24 x i8], align 8               ; 7 uses
  %i.ba = alloca [24 x i8], align 8               ; 6 uses
  %i.bb = alloca [24 x i8], align 8               ; 6 uses
  %i.bc = alloca [16 x i8], align 8               ; 5 uses
  %i.bd = alloca [24 x i8], align 8               ; 7 uses
  %i.be = alloca [48 x i8], align 8               ; 20 uses
  %i.bf = alloca [88 x i8], align 8               ; 39 uses
  %i.bg = alloca [16 x i8], align 8               ; 4 uses
  %i.bh = alloca [16 x i8], align 8               ; 6 uses
  %i.bi = alloca [8 x i8], align 8                ; 5 uses
  %i.bj = alloca [24 x i8], align 8               ; 10 uses
  %i.bk = alloca [16 x i8], align 8               ; 5 uses
  %i.bl = alloca [16 x i8], align 8               ; 6 uses
  %i.bm = alloca [8 x i8], align 8                ; 5 uses
  %i.bn = alloca [24 x i8], align 8               ; 10 uses
  %i.bo = alloca [40 x i8], align 8               ; 6 uses
  %.sroa.61259 = alloca [15 x i8], align 1        ; 4 uses
  %.sroa.51263 = alloca [15 x i8], align 1        ; 5 uses
  %i.bp = alloca [16 x i8], align 8               ; 6 uses
  %i.bq = alloca [24 x i8], align 8               ; 10 uses
  %i.br = alloca [16 x i8], align 8               ; 8 uses
  %i.bs = alloca [16 x i8], align 8               ; 6 uses
  %i.bt = alloca [8 x i8], align 8                ; 8 uses
  %i.bu = alloca [24 x i8], align 8               ; 10 uses
  %i.bv = alloca [16 x i8], align 8               ; 6 uses
  %i.bw = alloca [8 x i8], align 8                ; 8 uses
  %i.bx = alloca [24 x i8], align 8               ; 10 uses
  %i.by = alloca [32 x i8], align 8               ; 5 uses
  %.sroa.6 = alloca [15 x i8], align 1            ; 4 uses
  %.sroa.51255 = alloca [15 x i8], align 1        ; 5 uses
  %i.bz = alloca [16 x i8], align 8               ; 6 uses
  %i.ca = alloca [24 x i8], align 8               ; 10 uses
  %i.cb = alloca [16 x i8], align 8               ; 8 uses
  %i.cc = alloca [16 x i8], align 8               ; 6 uses
  %i.cd = alloca [8 x i8], align 8                ; 8 uses
  %i.ce = alloca [24 x i8], align 8               ; 10 uses
  %i.cf = alloca [24 x i8], align 8               ; 8 uses
  %i.cg = alloca [16 x i8], align 8               ; 6 uses
  %i.ch = alloca [48 x i8], align 8               ; 8 uses
  %i.ci = alloca [24 x i8], align 8               ; 7 uses
  %i.cj = alloca [24 x i8], align 8               ; 10 uses
  %i.ck = alloca [16 x i8], align 8               ; 6 uses
  %i.cl = alloca [24 x i8], align 8               ; 10 uses
  %i.cm = alloca [72 x i8], align 8               ; 12 uses
  %i.cn = alloca [16 x i8], align 8               ; 4 uses
  %i.co = alloca [16 x i8], align 8               ; 7 uses
  %i.cp = alloca [48 x i8], align 8               ; 8 uses
  %i.cq = alloca [24 x i8], align 8               ; 7 uses
  %i.cr = alloca [88 x i8], align 8               ; 4 uses
  %i.cs = alloca [88 x i8], align 8               ; 16 uses
  %i.ct = alloca [24 x i8], align 8               ; 8 uses
  %i.cu = alloca [48 x i8], align 8               ; 6 uses
  %i.cv = alloca [24 x i8], align 8               ; 7 uses
  %i.cw = alloca [88 x i8], align 8               ; 4 uses
  %i.cx = alloca [88 x i8], align 8               ; 16 uses
  %i.cy = alloca [8 x i8], align 8                ; 5 uses
  %i.cz = alloca [24 x i8], align 8               ; 13 uses
  %i.da = alloca [8 x i8], align 8                ; 7 uses
  %i.db = alloca [8 x i8], align 8                ; 6 uses
  %.sroa.81230.sroa.6 = alloca [24 x i8], align 8 ; 5 uses
  %i.dc = alloca [48 x i8], align 8               ; 15 uses
  %i.dd = alloca [24 x i8], align 8               ; 10 uses
  %i.de = alloca [8 x i8], align 8                ; 8 uses
  %i.df = alloca [88 x i8], align 8               ; 17 uses
  %i.dg = alloca [8 x i8], align 8                ; 5 uses
  %i.dh = alloca [8 x i8], align 8                ; 18 uses
  %i.di = alloca [8 x i8], align 8                ; 23 uses
  %i.dj = alloca [8 x i8], align 8                ; 32 uses
  store ptr %1, ptr %i.dj, align 8
  store ptr %2, ptr %i.di, align 8
  store ptr %3, ptr %i.dh, align 8
end_hunk_0
begin_hunk_1_@_ZN4rhai9optimizer13optimize_expr17haeffafea56131100E:bb.a
  %i.afl = or i32 %i.afh, %i.afk
  %i.afm = icmp ne i32 %i.afl, 0
  %i.afn = zext i1 %i.afm to i32
  %i.afo = icmp eq i32 %i.afn, 0
  br i1 %i.afo, label %bb.jx, label %bb.kf

bb.jq:                                            ; preds = %bb.jo
  %i.afp = load i64, ptr %.pre-phi3054, align 1
  %i.afq = xor i64 %i.afp, 7310012246415864681
  %i.afr = getelementptr i8, ptr %.pre-phi3054, i64 8
  %i.afs = load i8, ptr %i.afr, align 1
  %i.aft = zext i8 %i.afs to i64
  %i.afu = xor i64 %i.aft, 100
  %i.afv = or i64 %i.afq, %i.afu
  %i.afw = icmp ne i64 %i.afv, 0
  %i.afx = zext i1 %i.afw to i32
  %i.afy = icmp eq i32 %i.afx, 0
  br i1 %i.afy, label %bb.jr, label %bb.kf

bb.jr:                                            ; preds = %bb.jq
  %i.afz = load i64, ptr %i.ael, align 8, !alias.scope !53112, !noundef !60 ; 2 uses
  %i.aga = icmp ugt i64 %i.afz, 5
  %i.agb = load i64, ptr %i.aep, align 8, !alias.scope !53112
  %.sink10.i1288 = select i1 %i.aga, i64 %i.agb, i64 %i.afz
  %i.agc = icmp eq i64 %.sink10.i1288, 1
  br i1 %i.agc, label %bb.js, label %bb.kf

bb.js:                                            ; preds = %bb.jr
  %i.agd = getelementptr inbounds nuw i8, ptr %1, i64 328
  store i8 1, ptr %i.agd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.age = load i16, ptr %.sroa.01.0.i1124.le7070, align 2, !noundef !60
  %i.agf = load i16, ptr %i.ez, align 4, !noundef !60
  invoke fastcc void @_ZN4rhai3ast4expr4Expr12from_dynamic17he6155e9426c035a5E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.aj, ptr noalias noundef align 8 captures(address) dereferenceable(16) @581, i16 noundef %i.age, i16 noundef %i.agf)
          to label %bb.jt unwind label %bb.ky

bb.jt:                                            ; preds = %bb.js
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %.tr)
          to label %bb.jv unwind label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.agg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.tr, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false)
  br label %bb.jn

bb.jv:                                            ; preds = %bb.jt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.tr, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.jw

bb.jw:                                            ; preds = %bb.lb, %bb.ke, %bb.jv
  %i.agh = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %.val1040 = load i64, ptr %i.agh, align 8, !alias.scope !120, !noundef !60 ; 2 uses
  %i.agi = icmp ugt i64 %.val1040, 5
  br i1 %i.agi, label %"_ZN4core3ptr61drop_in_place$LT$alloc..vec..Vec$LT$core..any..TypeId$GT$$GT$17h1fdfdc1fcc215794E.exit.i.i1290", label %"_ZN4core3ptr85drop_in_place$LT$smallvec..SmallVec$LT$$u5b$core..any..TypeId$u3b$$u20$5$u5d$$GT$$GT$17hd31a4616f37a851fE.exit1291"

"_ZN4core3ptr61drop_in_place$LT$alloc..vec..Vec$LT$core..any..TypeId$GT$$GT$17h1fdfdc1fcc215794E.exit.i.i1290": ; preds = %bb.jw
  %.val1039 = load ptr, ptr %i.am, align 8, !nonnull !60, !noundef !60
  %i.agj = shl nuw i64 %.val1040, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1039, i64 noundef %i.agj, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !53113
  br label %"_ZN4core3ptr85drop_in_place$LT$smallvec..SmallVec$LT$$u5b$core..any..TypeId$u3b$$u20$5$u5d$$GT$$GT$17hd31a4616f37a851fE.exit1291"

bb.jx:                                            ; preds = %bb.jp
  %i.agk = load i64, ptr %i.ael, align 8, !alias.scope !53114, !noundef !60 ; 2 uses
  %i.agl = icmp ugt i64 %i.agk, 5                 ; 2 uses
  %i.agm = load i64, ptr %i.aep, align 8, !alias.scope !53114
  %.sink10.i1282 = select i1 %i.agl, i64 %i.agm, i64 %i.agk
  %i.agn = icmp eq i64 %.sink10.i1282, 1
  br i1 %i.agn, label %bb.jy, label %bb.kf

bb.jy:                                            ; preds = %bb.jx
  %i.ago = load ptr, ptr %i.an, align 8, !alias.scope !53114, !nonnull !60
  %i.agp = getelementptr inbounds nuw i8, ptr %1, i64 328
  store i8 1, ptr %i.agp, align 8
  %i.agq = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.agr = load ptr, ptr %i.agq, align 8, !nonnull !60, !align !61, !noundef !60 ; 2 uses
  %.sink11.i.i1293 = select i1 %i.agl, ptr %i.ago, ptr %i.an
  %i.ags = invoke { ptr, i64 } @_ZN4rhai5types7dynamic7Dynamic9type_name17h29e53479f914ba95E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sink11.i.i1293)
          to label %bb.jz unwind label %bb.ky     ; 2 uses

bb.jz:                                            ; preds = %bb.jy
  %i.agt = extractvalue { ptr, i64 } %i.ags, 0
  %i.agu = extractvalue { ptr, i64 } %i.ags, 1
  %i.agv = getelementptr i8, ptr %i.agr, i64 104
  %.val1073 = load ptr, ptr %i.agv, align 8, !nonnull !60, !noundef !60
  %i.agw = getelementptr i8, ptr %i.agr, i64 112
  %.val1074 = load i64, ptr %i.agw, align 8, !noundef !60
  %i.agx = invoke fastcc { ptr, i64 } @"_ZN4rhai3api10formatting38_$LT$impl$u20$rhai..engine..Engine$GT$13map_type_name17h365f4fe751f60630E"(ptr nonnull %.val1073, i64 %.val1074, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.agt, i64 noundef %i.agu)
          to label %bb.ka unwind label %bb.ky     ; 2 uses

bb.ka:                                            ; preds = %bb.jz
  %i.agy = extractvalue { ptr, i64 } %i.agx, 0
  %i.agz = extractvalue { ptr, i64 } %i.agx, 1
  %i.aha = invoke fastcc noundef nonnull ptr @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h34a2038c4a5d4919E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.agy, i64 noundef %i.agz)
          to label %bb.kb unwind label %bb.ky

bb.kb:                                            ; preds = %bb.ka
  store i8 2, ptr %i.al, align 8
  %.sroa.4652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  store i8 0, ptr %.sroa.4652.0..sroa_idx, align 1
  %.sroa.5654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store i32 0, ptr %.sroa.5654.0..sroa_idx, align 4
  %.sroa.6655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.aha, ptr %.sroa.6655.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.ahb = load i16, ptr %.sroa.01.0.i1124.le7070, align 2, !noundef !60
  %i.ahc = load i16, ptr %i.ez, align 4, !noundef !60
  invoke fastcc void @_ZN4rhai3ast4expr4Expr12from_dynamic17he6155e9426c035a5E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.ak, ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.al, i16 noundef %i.ahb, i16 noundef %i.ahc)
          to label %bb.kc unwind label %bb.ky

bb.kc:                                            ; preds = %bb.kb
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %.tr)
          to label %bb.ke unwind label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.ahd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.tr, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false)
  br label %bb.jn

bb.ke:                                            ; preds = %bb.kc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.tr, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %bb.jw

bb.kf:                                            ; preds = %bb.jq, %bb.jr, %bb.jx, %bb.jo, %bb.jp
  %i.ahe = load ptr, ptr %i.fa, align 8, !nonnull !60, !align !61, !noundef !60 ; 4 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahe, i64 128
  %i.ahg = load i64, ptr %i.ahf, align 8, !alias.scope !53115, !noundef !60 ; 2 uses
  %i.ahh = icmp ugt i64 %i.ahg, 5
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahe, i64 56
  %i.ahj = load i64, ptr %i.ahi, align 8, !alias.scope !53115
  %.sink10.i1285 = select i1 %i.ahh, i64 %i.ahj, i64 %i.ahg
  %i.ahk = icmp eq i64 %.sink10.i1285, 2
  br i1 %i.ahk, label %bb.kg, label %bb.le

bb.kg:                                            ; preds = %bb.kf
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahe, i64 24
  %i.ahm = load i32, ptr %i.ahl, align 8, !range !118, !noundef !60 ; 2 uses
  %.not788 = icmp eq i32 %i.ahm, 86
  br i1 %.not788, label %bb.le, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %i.ahn = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.aho = load ptr, ptr %i.ahn, align 8, !nonnull !60, !align !61, !noundef !60 ; 2 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.aho, i64 328
  %i.ahq = load i16, ptr %i.ahp, align 8, !noundef !60
  %i.ahr = and i16 %i.ahq, 512
  %.not789 = icmp eq i16 %i.ahr, 0
  br i1 %.not789, label %bb.ki, label %.thread3209

bb.ki:                                            ; preds = %bb.kh
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahe, i64 16
  %i.aht = load i64, ptr %i.ahs, align 8, !noundef !60
  %i.ahu = invoke fastcc noundef zeroext i1 @"_ZN4rhai9optimizer38_$LT$impl$u20$rhai..engine..Engine$GT$22has_native_fn_override17h1d353f47b6d15f6fE"(ptr noundef nonnull align 8 %i.aho, i64 noundef %i.aht, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.am)
          to label %bb.kj unwind label %bb.ky

bb.kj:                                            ; preds = %bb.ki
  br i1 %i.ahu, label %bb.le, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  %.pre3031 = load ptr, ptr %i.fa, align 8
  %.phi.trans.insert3032 = getelementptr inbounds nuw i8, ptr %.pre3031, i64 24
  %.pre3033 = load i32, ptr %.phi.trans.insert3032, align 8 ; 2 uses
  %.not790 = icmp eq i32 %.pre3033, 86
  br i1 %.not790, label %.invoke, label %.thread3209, !prof !53116

.thread3209:                                      ; preds = %bb.kh, %bb.kk
  %.849.val3212 = phi i32 [ %.pre3033, %bb.kk ], [ %i.ahm, %bb.kh ]
  %i.ahv = load i64, ptr %i.ael, align 8, !alias.scope !53117, !noundef !60 ; 2 uses
  %i.ahw = icmp ugt i64 %i.ahv, 5                 ; 3 uses
  %i.ahx = load i64, ptr %i.aep, align 8, !alias.scope !53117
  %.sink10.i.i1298 = select i1 %i.ahw, i64 %i.ahx, i64 %i.ahv ; 3 uses
  switch i64 %.sink10.i.i1298, label %bb.km [
    i64 0, label %.invoke3810
    i64 1, label %bb.kl
  ]

.invoke:                                          ; preds = %bb.kt, %bb.kk
  %i.ahy = phi ptr [ @2187, %bb.kk ], [ @2190, %bb.kt ]
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ahy) #70
          to label %.cont3809 unwind label %bb.ky

.cont3809:                                        ; preds = %.invoke
  unreachable

bb.kl:                                            ; preds = %.thread3209
  br label %.invoke3810

bb.km:                                            ; preds = %.thread3209
  %i.ahz = load ptr, ptr %i.an, align 8, !alias.scope !53117, !nonnull !60 ; 2 uses
  %.sink11.i.i1299 = select i1 %i.ahw, ptr %i.ahz, ptr %i.an
  %.sroa.gep3009 = getelementptr inbounds nuw i8, ptr %i.ahz, i64 16
  %.sroa.gep3010 = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %.sink11.i.i1303.sroa.sel.v.sroa.sel = select i1 %i.ahw, ptr %.sroa.gep3009, ptr %.sroa.gep3010
  %i.aia = invoke fastcc { ptr, i8 } @_ZN4rhai4func7builtin24get_builtin_binary_op_fn17h878b72701bc67765E(i32 %.849.val3212, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sink11.i.i1299, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sink11.i.i1303.sroa.sel.v.sroa.sel)
          to label %bb.kn unwind label %bb.ky     ; 2 uses

bb.kn:                                            ; preds = %bb.km
  %i.aib = extractvalue { ptr, i8 } %i.aia, 0     ; 3 uses
  %i.aic = extractvalue { ptr, i8 } %i.aia, 1
  switch i8 %i.aic, label %bb.kp [
    i8 2, label %bb.le
    i8 0, label %bb.ko
  ]

bb.ko:                                            ; preds = %bb.kn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aib) ]
  br label %bb.kt

bb.kp:                                            ; preds = %bb.kn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aib) ]
  %i.aid = load ptr, ptr %i.ahn, align 8, !nonnull !60, !align !61, !noundef !60
  %i.aie = load ptr, ptr %i.fa, align 8, !nonnull !60, !noundef !60
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aie, i64 40
  %i.aig = load ptr, ptr %i.aif, align 8, !nonnull !60, !noundef !60 ; 2 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aig, i64 16 ; 3 uses
  %i.aii = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aih)
          to label %.noexc958 unwind label %bb.ky

.noexc958:                                        ; preds = %bb.kp
  br i1 %i.aii, label %bb.kq, label %bb.kr

bb.kq:                                            ; preds = %.noexc958
  %i.aij = invoke { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aih)
          to label %.noexc959 unwind label %bb.ky ; 2 uses

.noexc959:                                        ; preds = %bb.kq
  %i.aik = extractvalue { ptr, i64 } %i.aij, 0
  %i.ail = extractvalue { ptr, i64 } %i.aij, 1
  br label %bb.ks

bb.kr:                                            ; preds = %.noexc958
  %i.aim = load ptr, ptr %i.aih, align 8, !nonnull !60, !noundef !60
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aig, i64 32
  %i.aio = load i64, ptr %i.ain, align 8, !noundef !60
  br label %bb.ks

bb.ks:                                            ; preds = %bb.kr, %.noexc959
  %.pre-phi3056 = phi ptr [ %i.aim, %bb.kr ], [ %i.aik, %.noexc959 ] ; 2 uses
  %.merged.i957 = phi i64 [ %i.aio, %bb.kr ], [ %i.ail, %.noexc959 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pre-phi3056) ]
  %i.aip = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aiq = load <2 x i16>, ptr %.sroa.01.0.i1124.le7070, align 2
  br label %bb.kt

bb.kt:                                            ; preds = %bb.ko, %bb.ks
  %.sroa.0501.0 = phi ptr [ %i.aid, %bb.ks ], [ null, %bb.ko ]
  %.sroa.6503.sroa.0.0 = phi ptr [ %.pre-phi3056, %bb.ks ], [ undef, %bb.ko ]
  %.sroa.6503.sroa.5.0 = phi i64 [ %.merged.i957, %bb.ks ], [ undef, %bb.ko ]
  %.sroa.6503.sroa.6.0 = phi ptr [ %i.aip, %bb.ks ], [ undef, %bb.ko ]
  %i.air = phi <2 x i16> [ %i.aiq, %bb.ks ], [ undef, %bb.ko ]
  %i.ais = load i64, ptr %i.ael, align 8, !alias.scope !53118, !noundef !60 ; 2 uses
  %i.ait = icmp ugt i64 %i.ais, 5                 ; 3 uses
  %i.aiu = load ptr, ptr %i.an, align 8, !alias.scope !53118, !nonnull !60 ; 2 uses
  %.sink10.i1309 = select i1 %i.ait, ptr %i.aiu, ptr %i.an
  %.val2038 = load i64, ptr %i.aep, align 8
  %i.aiv = select i1 %i.ait, i64 %.val2038, i64 %i.ais ; 2 uses
  %.not793 = icmp eq i64 %i.aiv, 0
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %i.aiu, i64 16
  %.sink10.i1309.sroa.sel = select i1 %i.ait, ptr %.sroa.gep, ptr %.sroa.gep3010
  br i1 %.not793, label %.invoke, label %bb.ku, !prof !71

bb.ku:                                            ; preds = %bb.kt
  %i.aiw = icmp eq i64 %i.aiv, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store ptr %.sroa.0501.0, ptr %i.ai, align 8
  %.sroa.6503.0..sroa_idx504 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %.sroa.6503.sroa.0.0, ptr %.sroa.6503.0..sroa_idx504, align 8
  %.sroa.6503.sroa.5.0..sroa.6503.0..sroa_idx504.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 %.sroa.6503.sroa.5.0, ptr %.sroa.6503.sroa.5.0..sroa.6503.0..sroa_idx504.sroa_idx, align 8
  %.sroa.6503.sroa.6.0..sroa.6503.0..sroa_idx504.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %.sroa.6503.sroa.6.0, ptr %.sroa.6503.sroa.6.0..sroa.6503.0..sroa_idx504.sroa_idx, align 8
  %.sroa.6503.sroa.7.0..sroa.6503.0..sroa_idx504.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store ptr null, ptr %.sroa.6503.sroa.7.0..sroa.6503.0..sroa_idx504.sroa_idx, align 8
  %.sroa.6503.sroa.9.0..sroa.6503.0..sroa_idx504.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  store <2 x i16> %i.air, ptr %.sroa.6503.sroa.9.0..sroa.6503.0..sroa_idx504.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  br i1 %i.aiw, label %.invoke3810, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  store ptr %.sink10.i1309, ptr %i.ah, align 8
  %i.aix = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %.sink10.i1309.sroa.sel, ptr %i.aix, align 8
  invoke void %i.aib(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ag, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.ai, ptr noalias noundef nonnull align 8 %i.ah, i64 noundef 2)
          to label %bb.kw unwind label %bb.ky

.invoke3810:                                      ; preds = %bb.ku, %.thread3209, %bb.kl
  %i.aiy = phi i64 [ %.sink10.i.i1298, %.thread3209 ], [ %.sink10.i.i1298, %bb.kl ], [ 0, %bb.ku ] ; 2 uses
  %i.aiz = phi ptr [ @2188, %.thread3209 ], [ @2189, %bb.kl ], [ @2191, %bb.ku ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.aiy, i64 noundef %i.aiy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aiz) #70
          to label %.cont3811 unwind label %bb.ky

.cont3811:                                        ; preds = %.invoke3810
  unreachable

bb.kw:                                            ; preds = %bb.kv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %i.aja = load i8, ptr %i.ag, align 8, !range !75, !noundef !60
  %i.ajb = icmp eq i8 %i.aja, 12
  br i1 %i.ajb, label %bb.lc, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.ajc = getelementptr inbounds nuw i8, ptr %1, i64 328
  store i8 1, ptr %i.ajc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %i.ajd = load i16, ptr %.sroa.01.0.i1124.le7070, align 2, !noundef !60
  %i.aje = load i16, ptr %i.ez, align 4, !noundef !60
  invoke fastcc void @_ZN4rhai3ast4expr4Expr12from_dynamic17he6155e9426c035a5E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.af, ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.ag, i16 noundef %i.ajd, i16 noundef %i.aje)
          to label %bb.kz unwind label %bb.ky

bb.ky:                                            ; preds = %.invoke3810, %.invoke, %bb.js, %bb.jy, %bb.kb, %bb.ki, %bb.kv, %bb.lc, %bb.le, %bb.kq, %bb.jl, %bb.ka, %bb.jz, %bb.km, %bb.jk, %bb.kp, %bb.kx
  %i.ajf = landingpad { ptr, i32 }
          cleanup
  br label %bb.jn

bb.kz:                                            ; preds = %bb.kx
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %.tr)
          to label %bb.lb unwind label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.ajg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.tr, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false)
  br label %bb.jn

bb.lb:                                            ; preds = %bb.kz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.tr, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.jw

"_ZN4core3ptr85drop_in_place$LT$smallvec..SmallVec$LT$$u5b$core..any..TypeId$u3b$$u20$5$u5d$$GT$$GT$17hd31a4616f37a851fE.exit1291": ; preds = %"_ZN4core3ptr61drop_in_place$LT$alloc..vec..Vec$LT$core..any..TypeId$GT$$GT$17h1fdfdc1fcc215794E.exit.i.i1290", %bb.jw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call fastcc void @"_ZN4core3ptr97drop_in_place$LT$smallvec..SmallVec$LT$$u5b$rhai..types..dynamic..Dynamic$u3b$$u20$5$u5d$$GT$$GT$17hcccdf6f95b2c2522E"(ptr noalias noundef align 8 dereferenceable(88) %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %"_ZN8thin_vec16ThinVec$LT$T$GT$13shrink_to_fit17h7220b9c8b2993500E.exit"

bb.lc:                                            ; preds = %bb.kw
  invoke fastcc void @"_ZN4core3ptr139drop_in_place$LT$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$$GT$17h510cc7087b4ff53aE"(ptr noalias noundef align 8 dereferenceable(16) %i.ag)
          to label %bb.ld unwind label %bb.ky

bb.ld:                                            ; preds = %bb.lc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.le

bb.le:                                            ; preds = %bb.kf, %bb.kg, %bb.kj, %bb.kn, %bb.ld
  %i.ajh = load ptr, ptr %i.fa, align 8, !nonnull !60, !align !61, !noundef !60 ; 3 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 48 ; 2 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.ajh, i64 128 ; 2 uses
  %i.ajk = load i64, ptr %i.ajj, align 8, !alias.scope !53119, !noundef !60
  %i.ajl = icmp ugt i64 %i.ajk, 5                 ; 2 uses
  %i.ajm = load ptr, ptr %i.aji, align 8, !alias.scope !53119, !nonnull !60
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajh, i64 56
  %.sink10.i1295 = select i1 %i.ajl, ptr %i.ajm, ptr %i.aji ; 2 uses
  %.sink9.i1296 = select i1 %i.ajl, ptr %i.ajn, ptr %i.ajj
  %i.ajo = load i64, ptr %.sink9.i1296, align 8, !noundef !60
  %i.ajp = getelementptr inbounds nuw [16 x i8], ptr %.sink10.i1295, i64 %i.ajo
  invoke fastcc void @"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8for_each17hf88b8eb0ebc98d13E"(ptr noundef nonnull %.sink10.i1295, ptr noundef %i.ajp, ptr noalias noundef align 8 dereferenceable(8) %i.cw)
          to label %bb.lf unwind label %bb.ky

bb.lf:                                            ; preds = %bb.le
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %.val1038 = load i64, ptr %i.ajq, align 8, !alias.scope !120, !noundef !60 ; 2 uses
  %i.ajr = icmp ugt i64 %.val1038, 5
  br i1 %i.ajr, label %"_ZN4core3ptr61drop_in_place$LT$alloc..vec..Vec$LT$core..any..TypeId$GT$$GT$17h1fdfdc1fcc215794E.exit.i.i1312", label %"_ZN4core3ptr85drop_in_place$LT$smallvec..SmallVec$LT$$u5b$core..any..TypeId$u3b$$u20$5$u5d$$GT$$GT$17hd31a4616f37a851fE.exit1313"

"_ZN4core3ptr61drop_in_place$LT$alloc..vec..Vec$LT$core..any..TypeId$GT$$GT$17h1fdfdc1fcc215794E.exit.i.i1312": ; preds = %bb.lf
  %.val1037 = load ptr, ptr %i.am, align 8, !nonnull !60, !noundef !60
  %i.ajs = shl nuw i64 %.val1038, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1037, i64 noundef %i.ajs, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !53120
  br label %"_ZN4core3ptr85drop_in_place$LT$smallvec..SmallVec$LT$$u5b$core..any..TypeId$u3b$$u20$5$u5d$$GT$$GT$17hd31a4616f37a851fE.exit1313"

"_ZN4core3ptr85drop_in_place$LT$smallvec..SmallVec$LT$$u5b$core..any..TypeId$u3b$$u20$5$u5d$$GT$$GT$17hd31a4616f37a851fE.exit1313": ; preds = %"_ZN4core3ptr61drop_in_place$LT$alloc..vec..Vec$LT$core..any..TypeId$GT$$GT$17h1fdfdc1fcc215794E.exit.i.i1312", %bb.lf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call fastcc void @"_ZN4core3ptr97drop_in_place$LT$smallvec..SmallVec$LT$$u5b$rhai..types..dynamic..Dynamic$u3b$$u20$5$u5d$$GT$$GT$17hcccdf6f95b2c2522E"(ptr noalias noundef align 8 dereferenceable(88) %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %"_ZN8thin_vec16ThinVec$LT$T$GT$13shrink_to_fit17h7220b9c8b2993500E.exit"

bb.lg:                                            ; preds = %bb.jh
  %i.ajt = load ptr, ptr %i.fa, align 8, !nonnull !60, !align !61, !noundef !60 ; 2 uses
  %i.aju = tail call fastcc noundef zeroext i1 @_ZN4rhai3ast4expr10FnCallExpr13constant_args17h68a9dc64ccf667a8E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ajt)
  br i1 %i.aju, label %bb.lh, label %.thread1918

bb.lh:                                            ; preds = %bb.lg
  %i.ajv = load i64, ptr %i.ajt, align 8, !range !68, !noundef !60
  %.not776 = icmp eq i64 %i.ajv, 0
  br i1 %.not776, label %.critedge851, label %bb.li

bb.li:                                            ; preds = %bb.lh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.ajw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ajx = load i64, ptr %i.ajw, align 8, !alias.scope !53121, !noundef !60 ; 2 uses
  %i.ajy = icmp ugt i64 %i.ajx, 3                 ; 2 uses
  %i.ajz = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.aka = load ptr, ptr %i.ajz, align 8, !alias.scope !53121, !nonnull !60
  %i.akb = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.akc = load i64, ptr %i.akb, align 8, !alias.scope !53121
  %.sink11.i1314 = select i1 %i.ajy, ptr %i.aka, ptr %i.ajz ; 2 uses
  %.sink10.i1315 = select i1 %i.ajy, i64 %i.akc, i64 %i.ajx
  %i.akd = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1314, i64 %.sink10.i1315
  store ptr %.sink11.i1314, ptr %i.ad, align 8
  %i.ake = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.akd, ptr %i.ake, align 8
  %i.akf = call fastcc noundef align 8 dereferenceable_or_null(8) ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17h1ee098bec774b102E"(ptr noalias noundef align 8 dereferenceable(16) %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae)
  %.not2034 = icmp eq ptr %i.akf, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br i1 %.not2034, label %.critedge851, label %bb.lj

.critedge851:                                     ; preds = %bb.lh, %bb.li
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.akg = load ptr, ptr %i.fa, align 8, !nonnull !60, !align !61, !noundef !60 ; 3 uses
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akg, i64 48 ; 2 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akg, i64 128
  %i.akj = load i64, ptr %i.aki, align 8, !alias.scope !53122, !noundef !60 ; 2 uses
  %i.akk = icmp ugt i64 %i.akj, 5                 ; 2 uses
  %i.akl = load ptr, ptr %i.akh, align 8, !alias.scope !53122, !nonnull !60
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akg, i64 56
  %i.akn = load i64, ptr %i.akm, align 8, !alias.scope !53122
  %.sink11.i1317 = select i1 %i.akk, ptr %i.akl, ptr %i.akh ; 2 uses
  %.sink10.i1318 = select i1 %i.akk, i64 %i.akn, i64 %i.akj
  %i.ako = getelementptr inbounds nuw [16 x i8], ptr %.sink11.i1317, i64 %.sink10.i1318
  call fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17hb94fc0c66af8668aE(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.ab, ptr noundef nonnull %.sink11.i1317, ptr noundef %i.ako)
  %i.akp = load i64, ptr %i.ab, align 8, !range !68, !noundef !60
  %i.akq = trunc nuw i64 %i.akp to i1
  br i1 %i.akq, label %bb.lk, label %bb.ln, !prof !79

bb.lj:                                            ; preds = %bb.me, %bb.li
  %i.akr = load ptr, ptr %i.fa, align 8, !nonnull !60, !align !61, !noundef !60 ; 3 uses
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akr, i64 48 ; 2 uses
  %i.akt = getelementptr inbounds nuw i8, ptr %i.akr, i64 128 ; 2 uses
  %i.aku = load i64, ptr %i.akt, align 8, !alias.scope !53123, !noundef !60
  %i.akv = icmp ugt i64 %i.aku, 5                 ; 2 uses
  %i.akw = load ptr, ptr %i.aks, align 8, !alias.scope !53123, !nonnull !60
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akr, i64 56
  %.sink10.i1320 = select i1 %i.akv, ptr %i.akw, ptr %i.aks ; 2 uses
  %.sink9.i1321 = select i1 %i.akv, ptr %i.akx, ptr %i.akt
  %i.aky = load i64, ptr %.sink9.i1321, align 8, !noundef !60 ; 2 uses
  %.idx3958 = shl nuw nsw i64 %i.aky, 4
  %i.akz = getelementptr inbounds nuw i8, ptr %.sink10.i1320, i64 %.idx3958
  %i.ala = icmp eq i64 %i.aky, 0
  br i1 %i.ala, label %"_ZN8thin_vec16ThinVec$LT$T$GT$13shrink_to_fit17h7220b9c8b2993500E.exit", label %.lr.ph.i3814

.lr.ph.i3814:                                     ; preds = %bb.lj, %.lr.ph.i3814
  %.sroa.0.07.i3815 = phi ptr [ %i.alb, %.lr.ph.i3814 ], [ %.sink10.i1320, %bb.lj ] ; 2 uses
  %i.alb = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i3815, i64 16 ; 2 uses
  call fastcc void @_ZN4rhai9optimizer13optimize_expr17haeffafea56131100E(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.0.07.i3815, ptr noalias noundef align 8 dereferenceable(336) %1, i1 noundef zeroext false), !noalias !53124, !inline_history !52787
  %i.alc = icmp eq ptr %i.alb, %i.akz
  br i1 %i.alc, label %"_ZN8thin_vec16ThinVec$LT$T$GT$13shrink_to_fit17h7220b9c8b2993500E.exit", label %.lr.ph.i3814

bb.lk:                                            ; preds = %.critedge851
  %i.ald = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ac, ptr noundef nonnull align 8 dereferenceable(88) %i.ald, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.ale = load ptr, ptr %i.fa, align 8, !nonnull !60, !align !61, !noundef !60
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ale, i64 40
  %i.alg = load ptr, ptr %i.alf, align 8, !nonnull !60, !noundef !60 ; 2 uses
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alg, i64 16 ; 3 uses
  %i.ali = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.alh)
          to label %.noexc953 unwind label %bb.lp

.noexc953:                                        ; preds = %bb.lk
  br i1 %i.ali, label %bb.ll, label %bb.lm

bb.ll:                                            ; preds = %.noexc953
  %i.alj = invoke { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.alh)
          to label %.noexc954 unwind label %bb.lp ; 2 uses

.noexc954:                                        ; preds = %bb.ll
  %i.alk = extractvalue { ptr, i64 } %i.alj, 0
  %i.all = extractvalue { ptr, i64 } %i.alj, 1
  br label %bb.lq

bb.lm:                                            ; preds = %.noexc953
  %i.alm = load ptr, ptr %i.alh, align 8, !nonnull !60, !noundef !60
  %i.aln = getelementptr inbounds nuw i8, ptr %i.alg, i64 32
  %i.alo = load i64, ptr %i.aln, align 8, !noundef !60
  br label %bb.lq

bb.ln:                                            ; preds = %.critedge851
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2192) #70
  unreachable

bb.lo:                                            ; preds = %bb.mg, %bb.lp
  %.pn782 = phi { ptr, i32 } [ %i.aof, %bb.mg ], [ %i.alp, %bb.lp ]
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$smallvec..SmallVec$LT$$u5b$rhai..types..dynamic..Dynamic$u3b$$u20$5$u5d$$GT$$GT$17hcccdf6f95b2c2522E"(ptr noalias noundef align 8 dereferenceable(88) %i.ac) #72
          to label %common.resume unwind label %bb.ai

bb.lp:                                            ; preds = %.critedge855, %bb.lk, %bb.ma, %bb.mb, %bb.ll, %bb.lt, %.thread3214, %bb.md, %bb.lz
  %i.alp = landingpad { ptr, i32 }
          cleanup
  br label %bb.lo

bb.lq:                                            ; preds = %bb.lm, %.noexc954
  %.pre-phi3058 = phi ptr [ %i.alm, %bb.lm ], [ %i.alk, %.noexc954 ] ; 5 uses
  %.merged.i952 = phi i64 [ %i.alo, %bb.lm ], [ %i.all, %.noexc954 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pre-phi3058) ]
  switch i64 %.merged.i952, label %.critedge855 [
    i64 7, label %bb.lr
    i64 9, label %bb.ls
  ]

bb.lr:                                            ; preds = %bb.lq
  %i.alq = load i32, ptr %.pre-phi3058, align 1
  %i.alr = xor i32 %i.alq, 1701869940
  %i.als = getelementptr i8, ptr %.pre-phi3058, i64 3
  %i.alt = load i32, ptr %i.als, align 1
  %i.alu = xor i32 %i.alt, 1718574949
  %i.alv = or i32 %i.alr, %i.alu
  %i.alw = icmp ne i32 %i.alv, 0
  %i.alx = zext i1 %i.alw to i32
  %i.aly = icmp eq i32 %i.alx, 0
  br i1 %i.aly, label %bb.ly, label %.critedge855

bb.ls:                                            ; preds = %bb.lq
  %i.alz = load i64, ptr %.pre-phi3058, align 1
  %i.ama = xor i64 %i.alz, 7310012246415864681
  %i.amb = getelementptr i8, ptr %.pre-phi3058, i64 8
  %i.amc = load i8, ptr %i.amb, align 1
  %i.amd = zext i8 %i.amc to i64
  %i.ame = xor i64 %i.amd, 100
  %i.amf = or i64 %i.ama, %i.ame
  %i.amg = icmp ne i64 %i.amf, 0
  %i.amh = zext i1 %i.amg to i32
  %i.ami = icmp eq i32 %i.amh, 0
  br i1 %i.ami, label %bb.lv, label %.critedge855

.critedge855:                                     ; preds = %bb.lr, %bb.lq, %bb.ly, %bb.lv, %bb.ls
  %i.amj = load ptr, ptr %i.fa, align 8, !nonnull !60, !align !61, !noundef !60
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amj, i64 40
  %i.aml = load ptr, ptr %i.amk, align 8, !nonnull !60, !noundef !60 ; 2 uses
  %i.amm = getelementptr inbounds nuw i8, ptr %i.aml, i64 16 ; 3 uses
  %i.amn = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.amm)
          to label %.noexc948 unwind label %bb.lp

.noexc948:                                        ; preds = %.critedge855
  br i1 %i.amn, label %bb.lt, label %bb.lu

bb.lt:                                            ; preds = %.noexc948
  %i.amo = invoke { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.amm)
          to label %.noexc949 unwind label %bb.lp ; 2 uses

.noexc949:                                        ; preds = %bb.lt
  %i.amp = extractvalue { ptr, i64 } %i.amo, 0
  %i.amq = extractvalue { ptr, i64 } %i.amo, 1
  br label %bb.md
end_hunk_1
