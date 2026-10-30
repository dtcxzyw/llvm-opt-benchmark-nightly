Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x_ls.yara_x_ls.375707425faaecf2-cgu.11?download=true
inline.NumInlined: 2062
inline.NumDeleted: 975
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvXs_NtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB4_18SemanticTokensIterNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next:bb.a
  %i.as = load i32, ptr %i.ar, align 4, !noalias !1572, !noundef !4 ; 2 uses
  %i.at = icmp eq i32 %i.as, -1
  br i1 %i.at, label %.invoke546, label %bb.ae, !prof !9

.invoke546:                                       ; preds = %bb.q, %bb.o
  invoke void @_RNvNtCsG258MDvU3F_3std7process5abort() #33
          to label %.cont547 unwind label %.loopexit.split-lp187.loopexit.split-lp

.cont547:                                         ; preds = %.invoke546
  unreachable

bb.r:                                             ; preds = %.noexc63, %.noexc63, %.noexc63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.19, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @118, i64 8), i64 16, i1 false), !noalias !1570
  br label %bb.aj

bb.s:                                             ; preds = %.noexc63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.19, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @121, i64 8), i64 16, i1 false), !noalias !1570
  br label %bb.aj

bb.t:                                             ; preds = %bb.o
  %i.au = add nuw i32 %i.ao, 1
  store i32 %i.au, ptr %i.an, align 4, !noalias !1572
  store ptr %.val46.i, ptr %i.b, align 8, !noalias !1571
  %i.av = invoke noundef i16 @_RNvMs4_NtCskKs5foxPL5A_5rowan3apiINtB5_10SyntaxNodeNtNtCsfF8zpZz1lvn_13yara_x_parser3cst4YARAE4kindCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.w unwind label %bb.u, !noalias !1572

bb.u:                                             ; preds = %bb.t
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load i32, ptr %i.an, align 4, !noalias !1572, !noundef !4
  %i.ay = add i32 %i.ax, -1                       ; 2 uses
  store i32 %i.ay, ptr %i.an, align 4, !noalias !1572
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.v, label %.body

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtCskKs5foxPL5A_5rowan6cursor4free(ptr noundef nonnull %.val46.i) #36
          to label %.body unwind label %bb.ad, !noalias !1572

bb.w:                                             ; preds = %bb.t
  switch i16 %i.av, label %bb.x [
    i16 90, label %bb.y
    i16 103, label %bb.z
    i16 113, label %bb.aa
  ]

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.19, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @118, i64 8), i64 16, i1 false), !noalias !1570
  br label %bb.ab

bb.y:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.19, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @114, i64 8), i64 16, i1 false), !noalias !1570
  br label %bb.ab

bb.z:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.19, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @116, i64 8), i64 16, i1 false), !noalias !1570
  br label %bb.ab

bb.aa:                                            ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.19, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @118, i64 8), i64 16, i1 false), !noalias !1570
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  %.sink58.i = phi i32 [ 1, %bb.aa ], [ 0, %bb.z ], [ 0, %bb.y ], [ 0, %bb.x ]
  %i.ba = load i32, ptr %i.an, align 4, !noalias !1572, !noundef !4
  %i.bb = add i32 %i.ba, -1                       ; 2 uses
  store i32 %i.bb, ptr %i.an, align 4, !noalias !1572
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.ac, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst4NodeNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit53.i

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtCskKs5foxPL5A_5rowan6cursor4free(ptr noundef nonnull %.val46.i) #36
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst4NodeNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit53.i unwind label %.loopexit.split-lp187.loopexit.split-lp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst4NodeNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit53.i: ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1571
  br label %bb.aj

bb.ad:                                            ; preds = %bb.ag, %bb.v
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31, !noalias !1572
  unreachable

bb.ae:                                            ; preds = %bb.q
  %i.be = add nuw i32 %i.as, 1
  store i32 %i.be, ptr %i.ar, align 4, !noalias !1572
  store ptr %.val.i, ptr %i.a, align 8, !noalias !1571
  %i.bf = invoke noundef i16 @_RNvMs4_NtCskKs5foxPL5A_5rowan3apiINtB5_10SyntaxNodeNtNtCsfF8zpZz1lvn_13yara_x_parser3cst4YARAE4kindCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.ah unwind label %bb.af, !noalias !1572

.invoke:                                          ; preds = %bb.p, %bb.n
  %i.bg = phi ptr [ @112, %bb.n ], [ @119, %bb.p ]
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bg) #35
          to label %.cont unwind label %.loopexit.split-lp187.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.af:                                            ; preds = %bb.ae
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = load i32, ptr %i.ar, align 4, !noalias !1572, !noundef !4
  %i.bj = add i32 %i.bi, -1                       ; 2 uses
  store i32 %i.bj, ptr %i.ar, align 4, !noalias !1572
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.ag, label %.body

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvNtCskKs5foxPL5A_5rowan6cursor4free(ptr noundef nonnull %.val.i) #36
          to label %.body unwind label %bb.ad, !noalias !1572

bb.ah:                                            ; preds = %bb.ae
  %i.bl = icmp eq i16 %i.bf, 94
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.19, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @118, i64 8), i64 16, i1 false), !noalias !1570
  %..i = zext i1 %i.bl to i32
  %i.bm = load i32, ptr %i.ar, align 4, !noalias !1572, !noundef !4
  %i.bn = add i32 %i.bm, -1                       ; 2 uses
  store i32 %i.bn, ptr %i.ar, align 4, !noalias !1572
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.ai, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst4NodeNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit56.i

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvNtCskKs5foxPL5A_5rowan6cursor4free(ptr noundef nonnull %.val.i) #36
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst4NodeNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit56.i unwind label %.loopexit.split-lp187.loopexit.split-lp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst4NodeNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit56.i: ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1571
  br label %bb.aj

bb.aj:                                            ; preds = %bb.s, %bb.i, %bb.j, %bb.l, %bb.k, %bb.m, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst4NodeNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit53.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst4NodeNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit56.i, %bb.r
  %.sroa.19131.0.ph = phi i32 [ 0, %bb.r ], [ %..i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst4NodeNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit56.i ], [ %.sink58.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst4NodeNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit53.i ], [ 0, %bb.m ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.s ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 -1, ptr %i.f, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.19.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.19, i64 16, i1 false)
  %i.bp = load i64, ptr %i.z, align 8, !range !13, !noundef !4
  %i.bq = trunc nuw i64 %i.bp to i1
  br i1 %i.bq, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.br = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.5.0.i = load ptr, ptr %i.br, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i, i64 16
  br label %bb.al

.loopexit.split-lp187.loopexit.split-lp:          ; preds = %bb.c, %_RNvNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokens10token_type.exit, %.loopexit179, %bb.ci, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtB10_9ImmutableEEECs4KzxGwe94yc_9yara_x_ls.exit, %bb.ac, %bb.ai, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i97, %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit95.thread169, %.invoke, %.invoke546
  %lpad.loopexit.split-lp557 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.sroa.3.0.i = phi i64 [ %i.bt, %bb.ak ], [ 0, %bb.aj ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.bu, %bb.ak ], [ inttoptr (i64 1 to ptr), %bb.aj ] ; 2 uses
  %i.bv = load i32, ptr %i.k, align 8, !noundef !4 ; 3 uses
  %i.bw = load i32, ptr %i.l, align 4, !noundef !4 ; 2 uses
  %i.bx = load i32, ptr %i.m, align 8, !range !12, !noundef !4
  %i.by = trunc nuw i32 %i.bx to i1
  %i.bz = load i32, ptr %i.n, align 4
  %i.ca = icmp ult i32 %i.bz, %i.bv
  %or.cond = select i1 %i.by, i1 %i.ca, i1 false
  br i1 %or.cond, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cb = invoke noundef i16 @_RNvMs5_NtCskKs5foxPL5A_5rowan3apiINtB5_11SyntaxTokenNtNtCsfF8zpZz1lvn_13yara_x_parser3cst4YARAE4kindCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
          to label %bb.ap unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.an:                                            ; preds = %bb.al
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19)
  br label %.loopexit193

.loopexit193:                                     ; preds = %bb.ck, %bb.an
  %i.cc = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !noundef !4
  %i.ce = add i32 %i.cd, -1                       ; 2 uses
  store i32 %i.ce, ptr %i.cc, align 4
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.ao, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit73

bb.ao:                                            ; preds = %.loopexit193
  call void @_RNvNtCskKs5foxPL5A_5rowan6cursor4free(ptr noundef nonnull %i.z) #36
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit73

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit73: ; preds = %.loopexit193, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.b

bb.ap:                                            ; preds = %bb.am
  switch i16 %i.cb, label %.thread152 [
    i16 78, label %.preheader552
    i16 80, label %.preheader552
  ]

.preheader552:                                    ; preds = %bb.ap, %bb.ap
  br label %bb.aq

bb.aq:                                            ; preds = %.preheader552, %bb.bh
  %.sroa.8.0 = phi i64 [ %i.el, %bb.bh ], [ %.sroa.3.0.i, %.preheader552 ] ; 13 uses
  %.sroa.016.0 = phi ptr [ %i.ek, %bb.bh ], [ %.sroa.0.0.i, %.preheader552 ] ; 13 uses
  %.sroa.010.0 = phi i32 [ 0, %bb.bh ], [ %i.bw, %.preheader552 ] ; 8 uses
  %.sroa.04.0 = phi i32 [ %i.em, %bb.bh ], [ %i.bv, %.preheader552 ] ; 11 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.0) ]
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i.backedge, %bb.aq
  %i.cg = phi i64 [ 0, %bb.aq ], [ %i.cu, %.lr.ph.split.i.i.backedge ] ; 5 uses
  %i.ch = sub nuw i64 %.sroa.8.0, %i.cg           ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.016.0, i64 %i.cg ; 2 uses
  %i.cj = icmp samesign ult i64 %i.ch, 16
  br i1 %i.cj, label %.preheader.i.i.i, label %bb.ar

.preheader.i.i.i:                                 ; preds = %.lr.ph.split.i.i
  %.not.i.i.i = icmp eq i64 %.sroa.8.0, %i.cg
  br i1 %.not.i.i.i, label %.thread152, label %.lr.ph.i.i.i

bb.ar:                                            ; preds = %.lr.ph.split.i.i
  %i.ck = invoke { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ci, i64 noundef range(i64 0, -9223372036854775808) %i.ch)
          to label %.noexc74 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc74:                                         ; preds = %bb.ar
  %i.cl = extractvalue { i64, i64 } %i.ck, 0
  %i.cm = extractvalue { i64, i64 } %i.ck, 1
  %i.cn = trunc nuw i64 %i.cl to i1
  br i1 %i.cn, label %.loopexit.i.i, label %.thread152

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.as
  %.sroa.04.011.i.i.i = phi i64 [ %i.cr, %bb.as ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.sroa.04.011.i.i.i
  %i.cp = load i8, ptr %i.co, align 1, !alias.scope !1573, !noalias !1574, !noundef !4
  %i.cq = icmp eq i8 %i.cp, 10
  br i1 %i.cq, label %.loopexit.i.i, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i.i
  %i.cr = add nuw nsw i64 %.sroa.04.011.i.i.i, 1  ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.cr, %i.ch
  br i1 %exitcond.not.i.i.i, label %.thread152, label %.lr.ph.i.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %.noexc74
  %.sroa.5.0.i.i.i = phi i64 [ %i.cm, %.noexc74 ], [ %.sroa.04.011.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.cs = icmp ult i64 %.sroa.5.0.i.i.i, %i.ch
  call void @llvm.assume(i1 %i.cs)
  %i.ct = add i64 %i.cg, 1
  %i.cu = add i64 %i.ct, %.sroa.5.0.i.i.i         ; 2 uses
  %.not12.i.i = icmp ugt i64 %i.cu, %.sroa.8.0    ; 2 uses
  %i.cv = add i64 %.sroa.5.0.i.i.i, %i.cg         ; 8 uses
  %or.cond.i.not.i = icmp ult i64 %i.cv, %.sroa.8.0
  br i1 %or.cond.i.not.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.loopexit.i.i
  br i1 %.not12.i.i, label %.thread152, label %.lr.ph.split.i.i.backedge

bb.au:                                            ; preds = %.loopexit.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.016.0, i64 %i.cv
  %lhsc.i = load i8, ptr %i.cw, align 1, !alias.scope !1575
  %i.cx = icmp eq i8 %lhsc.i, 10                  ; 2 uses
  %brmerge.i = or i1 %.not12.i.i, %i.cx
  br i1 %brmerge.i, label %bb.av, label %.lr.ph.split.i.i.backedge

.lr.ph.split.i.i.backedge:                        ; preds = %bb.au, %bb.at
  br label %.lr.ph.split.i.i

bb.av:                                            ; preds = %bb.au
  br i1 %i.cx, label %bb.aw, label %.preheader180.preheader

bb.aw:                                            ; preds = %bb.av
  %cond = icmp eq i64 %i.cv, 0
  br i1 %cond, label %_RNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11EncodeUtf16NtNtNtNtB9_4iter6traits8iterator8Iterator5count.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.aw
  %min.iters.check527 = icmp ult i64 %i.cv, 8
  br i1 %min.iters.check527, label %.preheader.preheader548, label %vector.ph528

vector.ph528:                                     ; preds = %.preheader.preheader
  %n.vec529 = and i64 %i.cv, -8                   ; 3 uses
  br label %vector.body530

vector.body530:                                   ; preds = %vector.body530, %vector.ph528
  %index531 = phi i64 [ 0, %vector.ph528 ], [ %index.next540, %vector.body530 ] ; 2 uses
  %vec.phi532 = phi <4 x i32> [ zeroinitializer, %vector.ph528 ], [ %i.di, %vector.body530 ]
  %vec.phi533 = phi <4 x i32> [ zeroinitializer, %vector.ph528 ], [ %i.dj, %vector.body530 ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.016.0, i64 %index531 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %wide.load534 = load <4 x i8>, ptr %i.cy, align 1, !noalias !1576 ; 3 uses
  %wide.load535 = load <4 x i8>, ptr %i.cz, align 1, !noalias !1576 ; 3 uses
  %i.da = icmp slt <4 x i8> %wide.load534, zeroinitializer
  %i.db = icmp slt <4 x i8> %wide.load535, zeroinitializer
  %i.dc = icmp ult <4 x i8> %wide.load534, splat (i8 -16)
  %i.dd = icmp ult <4 x i8> %wide.load535, splat (i8 -16)
  %i.de = select <4 x i1> %i.dc, <4 x i32> splat (i32 1), <4 x i32> splat (i32 2)
  %i.df = select <4 x i1> %i.dd, <4 x i32> splat (i32 1), <4 x i32> splat (i32 2)
  %i.dg = icmp slt <4 x i8> %wide.load534, splat (i8 -64)
  %i.dh = icmp slt <4 x i8> %wide.load535, splat (i8 -64)
  %predphi536 = select <4 x i1> %i.dg, <4 x i32> zeroinitializer, <4 x i32> %i.de
  %predphi537 = select <4 x i1> %i.da, <4 x i32> %predphi536, <4 x i32> splat (i32 1)
  %predphi538 = select <4 x i1> %i.dh, <4 x i32> zeroinitializer, <4 x i32> %i.df
  %predphi539 = select <4 x i1> %i.db, <4 x i32> %predphi538, <4 x i32> splat (i32 1)
  %i.di = add <4 x i32> %predphi537, %vec.phi532  ; 2 uses
  %i.dj = add <4 x i32> %predphi539, %vec.phi533  ; 2 uses
  %index.next540 = add nuw i64 %index531, 8       ; 2 uses
  %i.dk = icmp eq i64 %index.next540, %n.vec529
  br i1 %i.dk, label %middle.block541, label %vector.body530, !llvm.loop !1548

middle.block541:                                  ; preds = %vector.body530
  %bin.rdx542 = add <4 x i32> %i.dj, %i.di
  %i.dl = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx542) ; 2 uses
  %cmp.n543 = icmp eq i64 %i.cv, %n.vec529
  br i1 %cmp.n543, label %_RNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11EncodeUtf16NtNtNtNtB9_4iter6traits8iterator8Iterator5count.exit, label %.preheader.preheader548

.preheader.preheader548:                          ; preds = %.preheader.preheader, %middle.block541
  %.sroa.04.0.i.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec529, %middle.block541 ]
  %.sroa.02.0.i.i.ph = phi i32 [ 0, %.preheader.preheader ], [ %i.dl, %middle.block541 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader548, %_RNCNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4KzxGwe94yc_9yara_x_ls.exit.i.i
  %.sroa.04.0.i.i = phi i64 [ %i.dr, %_RNCNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4KzxGwe94yc_9yara_x_ls.exit.i.i ], [ %.sroa.04.0.i.i.ph, %.preheader.preheader548 ] ; 2 uses
  %.sroa.02.0.i.i = phi i32 [ %i.dq, %_RNCNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4KzxGwe94yc_9yara_x_ls.exit.i.i ], [ %.sroa.02.0.i.i.ph, %.preheader.preheader548 ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.016.0, i64 %.sroa.04.0.i.i
  %.val.i.i = load i8, ptr %i.dm, align 1, !noalias !1576, !noundef !4 ; 3 uses
  %i.dn = icmp sgt i8 %.val.i.i, -1
  br i1 %i.dn, label %_RNCNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4KzxGwe94yc_9yara_x_ls.exit.i.i, label %bb.ax

bb.ax:                                            ; preds = %.preheader
  %i.do = icmp samesign ult i8 %.val.i.i, -64
  br i1 %i.do, label %_RNCNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4KzxGwe94yc_9yara_x_ls.exit.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dp = icmp samesign ult i8 %.val.i.i, -16
  %..i.i.i = select i1 %i.dp, i32 1, i32 2
  br label %_RNCNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4KzxGwe94yc_9yara_x_ls.exit.i.i

_RNCNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4KzxGwe94yc_9yara_x_ls.exit.i.i: ; preds = %bb.ay, %bb.ax, %.preheader
  %.sroa.0.0.i.i.i = phi i32 [ 0, %bb.ax ], [ %..i.i.i, %bb.ay ], [ 1, %.preheader ]
  %i.dq = add i32 %.sroa.0.0.i.i.i, %.sroa.02.0.i.i ; 2 uses
  %i.dr = add nuw i64 %.sroa.04.0.i.i, 1          ; 2 uses
  %i.ds = icmp eq i64 %i.dr, %i.cv
  br i1 %i.ds, label %_RNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11EncodeUtf16NtNtNtNtB9_4iter6traits8iterator8Iterator5count.exit, label %.preheader, !llvm.loop !1549

bb.az:                                            ; preds = %.thread164
  unreachable

_RNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11EncodeUtf16NtNtNtNtB9_4iter6traits8iterator8Iterator5count.exit: ; preds = %_RNCNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4KzxGwe94yc_9yara_x_ls.exit.i.i, %middle.block541, %bb.aw
  %.sroa.0.0.i.i = phi i32 [ 0, %bb.aw ], [ %i.dl, %middle.block541 ], [ %i.dq, %_RNCNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4KzxGwe94yc_9yara_x_ls.exit.i.i ] ; 2 uses
  %i.dt = load i32, ptr %i.m, align 8, !range !12, !alias.scope !1577, !noundef !4
  %i.du = trunc nuw i32 %i.dt to i1
  br i1 %i.du, label %bb.ba, label %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit.thread161

bb.ba:                                            ; preds = %_RNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11EncodeUtf16NtNtNtNtB9_4iter6traits8iterator8Iterator5count.exit
  %i.dv = load i32, ptr %i.o, align 4, !alias.scope !1577, !noundef !4 ; 2 uses
  %i.dw = icmp ult i32 %.sroa.04.0, %i.dv
  br i1 %i.dw, label %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dx = icmp eq i32 %.sroa.04.0, %i.dv
  br i1 %i.dx, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.dy = add i32 %.sroa.0.0.i.i, %.sroa.010.0
  %i.dz = load i32, ptr %i.p, align 8, !alias.scope !1577, !noundef !4
  %.not.i78 = icmp ugt i32 %i.dy, %i.dz
  br i1 %.not.i78, label %bb.bd, label %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit.thread

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.ea = load i32, ptr %i.n, align 4, !alias.scope !1577, !noundef !4 ; 2 uses
  %i.eb = icmp ugt i32 %.sroa.04.0, %i.ea
  br i1 %i.eb, label %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit.thread, label %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit

_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit: ; preds = %bb.bd
  %i.ec = icmp ne i32 %.sroa.04.0, %i.ea
  %i.ed = load i32, ptr %i.q, align 8, !alias.scope !1577
  %i.ee = icmp ult i32 %.sroa.010.0, %i.ed
  %or.cond.not.i = select i1 %i.ec, i1 true, i1 %i.ee
  br i1 %or.cond.not.i, label %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit.thread161, label %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit.thread

_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit.thread161: ; preds = %_RNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11EncodeUtf16NtNtNtNtB9_4iter6traits8iterator8Iterator5count.exit, %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXs0_NtCsexYYUdYSQU6_5alloc6borrowINtB5_3CoweENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f)
          to label %bb.bf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit.thread: ; preds = %bb.bd, %bb.bc, %bb.ba, %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit, %bb.bg
  %i.ef = add nuw i64 %i.cv, 1                    ; 5 uses
  %.not.i79 = icmp ult i64 %i.ef, %.sroa.8.0
  br i1 %.not.i79, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit.thread
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.016.0, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !alias.scope !1578, !noundef !4
  %i.ei = icmp sgt i8 %i.eh, -65
  br i1 %i.ei, label %bb.bh, label %.thread164

bb.bf:                                            ; preds = %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit.thread161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i32 %.sroa.19131.0.ph, ptr %i.r, align 8
  store i32 %.sroa.04.0, ptr %i.s, align 8
  store i32 %.sroa.010.0, ptr %i.t, align 4
  store i32 %.sroa.0.0.i.i, ptr %i.u, align 4
  %i.ej = invoke noundef nonnull align 8 ptr @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtCs2w2nn1AeeqK_9lsp_types15semantic_tokens17SemanticTokenTypeNtNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokens9ModifiersNtB1a_8PositionmEE13push_back_mutB2e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.e)
          to label %bb.bg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit.thread

bb.bh:                                            ; preds = %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit.thread, %bb.be
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.016.0, i64 %i.ef
  %i.el = sub nuw i64 %.sroa.8.0, %i.ef
  %i.em = add i32 %.sroa.04.0, 1
  br label %bb.aq

.thread164:                                       ; preds = %bb.be
  invoke void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.016.0, i64 noundef %.sroa.8.0, i64 noundef %i.ef, i64 noundef %.sroa.8.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #33
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread152:                                       ; preds = %.preheader.i.i.i, %.noexc74, %bb.at, %bb.as, %bb.ap
  %.sroa.8.1 = phi i64 [ %.sroa.3.0.i, %bb.ap ], [ %.sroa.8.0, %bb.as ], [ %.sroa.8.0, %bb.at ], [ %.sroa.8.0, %.noexc74 ], [ %.sroa.8.0, %.preheader.i.i.i ] ; 2 uses
  %.sroa.016.1 = phi ptr [ %.sroa.0.0.i, %bb.ap ], [ %.sroa.016.0, %bb.as ], [ %.sroa.016.0, %bb.at ], [ %.sroa.016.0, %.noexc74 ], [ %.sroa.016.0, %.preheader.i.i.i ] ; 2 uses
  %.sroa.010.1 = phi i32 [ %i.bw, %bb.ap ], [ %.sroa.010.0, %bb.as ], [ %.sroa.010.0, %bb.at ], [ %.sroa.010.0, %.noexc74 ], [ %.sroa.010.0, %.preheader.i.i.i ] ; 2 uses
  %.sroa.04.1 = phi i32 [ %i.bv, %bb.ap ], [ %.sroa.04.0, %bb.as ], [ %.sroa.04.0, %bb.at ], [ %.sroa.04.0, %.noexc74 ], [ %.sroa.04.0, %.preheader.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.1) ]
  %i.en = icmp samesign eq i64 %.sroa.8.1, 0
  br i1 %i.en, label %_RNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11EncodeUtf16NtNtNtNtB9_4iter6traits8iterator8Iterator5count.exit91, label %.preheader180.preheader

.preheader180.preheader:                          ; preds = %bb.av, %.thread152
  %.sroa.04.1387 = phi i32 [ %.sroa.04.1, %.thread152 ], [ %.sroa.04.0, %bb.av ] ; 2 uses
  %.sroa.010.1385 = phi i32 [ %.sroa.010.1, %.thread152 ], [ %.sroa.010.0, %bb.av ] ; 2 uses
  %.sroa.016.1384 = phi ptr [ %.sroa.016.1, %.thread152 ], [ %.sroa.016.0, %bb.av ] ; 2 uses
  %.sroa.8.1383 = phi i64 [ %.sroa.8.1, %.thread152 ], [ %.sroa.8.0, %bb.av ] ; 4 uses
  %min.iters.check = icmp ult i64 %.sroa.8.1383, 8
  br i1 %min.iters.check, label %.preheader180.preheader551, label %vector.ph

vector.ph:                                        ; preds = %.preheader180.preheader
  %n.vec = and i64 %.sroa.8.1383, -8              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ey, %vector.body ]
  %vec.phi521 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ez, %vector.body ]
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.016.1384, i64 %index ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %wide.load = load <4 x i8>, ptr %i.eo, align 1, !noalias !1579 ; 3 uses
  %wide.load522 = load <4 x i8>, ptr %i.ep, align 1, !noalias !1579 ; 3 uses
  %i.eq = icmp slt <4 x i8> %wide.load, zeroinitializer
  %i.er = icmp slt <4 x i8> %wide.load522, zeroinitializer
  %i.es = icmp ult <4 x i8> %wide.load, splat (i8 -16)
  %i.et = icmp ult <4 x i8> %wide.load522, splat (i8 -16)
  %i.eu = select <4 x i1> %i.es, <4 x i32> splat (i32 1), <4 x i32> splat (i32 2)
  %i.ev = select <4 x i1> %i.et, <4 x i32> splat (i32 1), <4 x i32> splat (i32 2)
  %i.ew = icmp slt <4 x i8> %wide.load, splat (i8 -64)
  %i.ex = icmp slt <4 x i8> %wide.load522, splat (i8 -64)
  %predphi = select <4 x i1> %i.ew, <4 x i32> zeroinitializer, <4 x i32> %i.eu
  %predphi523 = select <4 x i1> %i.eq, <4 x i32> %predphi, <4 x i32> splat (i32 1)
  %predphi524 = select <4 x i1> %i.ex, <4 x i32> zeroinitializer, <4 x i32> %i.ev
  %predphi525 = select <4 x i1> %i.er, <4 x i32> %predphi524, <4 x i32> splat (i32 1)
  %i.ey = add <4 x i32> %predphi523, %vec.phi     ; 2 uses
  %i.ez = add <4 x i32> %predphi525, %vec.phi521  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fa = icmp eq i64 %index.next, %n.vec
  br i1 %i.fa, label %middle.block, label %vector.body, !llvm.loop !1556

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ez, %i.ey
  %i.fb = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.sroa.8.1383, %n.vec
  br i1 %cmp.n, label %_RNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11EncodeUtf16NtNtNtNtB9_4iter6traits8iterator8Iterator5count.exit91, label %.preheader180.preheader551

.preheader180.preheader551:                       ; preds = %.preheader180.preheader, %middle.block
  %.sroa.04.0.i.i84.ph = phi i64 [ 0, %.preheader180.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.i85.ph = phi i32 [ 0, %.preheader180.preheader ], [ %i.fb, %middle.block ]
  br label %.preheader180

.preheader180:                                    ; preds = %.preheader180.preheader551, %_RNCNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4KzxGwe94yc_9yara_x_ls.exit.i.i88
  %.sroa.04.0.i.i84 = phi i64 [ %i.fh, %_RNCNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4KzxGwe94yc_9yara_x_ls.exit.i.i88 ], [ %.sroa.04.0.i.i84.ph, %.preheader180.preheader551 ] ; 2 uses
  %.sroa.02.0.i.i85 = phi i32 [ %i.fg, %_RNCNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4KzxGwe94yc_9yara_x_ls.exit.i.i88 ], [ %.sroa.02.0.i.i85.ph, %.preheader180.preheader551 ]
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.016.1384, i64 %.sroa.04.0.i.i84
  %.val.i.i86 = load i8, ptr %i.fc, align 1, !noalias !1579, !noundef !4 ; 3 uses
  %i.fd = icmp sgt i8 %.val.i.i86, -1
  br i1 %i.fd, label %_RNCNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4KzxGwe94yc_9yara_x_ls.exit.i.i88, label %bb.bi

bb.bi:                                            ; preds = %.preheader180
  %i.fe = icmp samesign ult i8 %.val.i.i86, -64
  br i1 %i.fe, label %_RNCNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4KzxGwe94yc_9yara_x_ls.exit.i.i88, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ff = icmp samesign ult i8 %.val.i.i86, -16
  %..i.i.i87 = select i1 %i.ff, i32 1, i32 2
  br label %_RNCNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4KzxGwe94yc_9yara_x_ls.exit.i.i88

_RNCNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4KzxGwe94yc_9yara_x_ls.exit.i.i88: ; preds = %bb.bj, %bb.bi, %.preheader180
  %.sroa.0.0.i.i.i89 = phi i32 [ 0, %bb.bi ], [ %..i.i.i87, %bb.bj ], [ 1, %.preheader180 ]
  %i.fg = add i32 %.sroa.0.0.i.i.i89, %.sroa.02.0.i.i85 ; 2 uses
  %i.fh = add nuw i64 %.sroa.04.0.i.i84, 1        ; 2 uses
  %i.fi = icmp eq i64 %i.fh, %.sroa.8.1383
  br i1 %i.fi, label %_RNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11EncodeUtf16NtNtNtNtB9_4iter6traits8iterator8Iterator5count.exit91, label %.preheader180, !llvm.loop !1557

_RNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11EncodeUtf16NtNtNtNtB9_4iter6traits8iterator8Iterator5count.exit91: ; preds = %_RNCNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4KzxGwe94yc_9yara_x_ls.exit.i.i88, %middle.block, %.thread152
  %.sroa.04.1388 = phi i32 [ %.sroa.04.1, %.thread152 ], [ %.sroa.04.1387, %middle.block ], [ %.sroa.04.1387, %_RNCNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4KzxGwe94yc_9yara_x_ls.exit.i.i88 ] ; 5 uses
  %.sroa.010.1386 = phi i32 [ %.sroa.010.1, %.thread152 ], [ %.sroa.010.1385, %middle.block ], [ %.sroa.010.1385, %_RNCNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4KzxGwe94yc_9yara_x_ls.exit.i.i88 ] ; 3 uses
  %.sroa.0.0.i.i90 = phi i32 [ 0, %.thread152 ], [ %i.fb, %middle.block ], [ %i.fg, %_RNCNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4KzxGwe94yc_9yara_x_ls.exit.i.i88 ] ; 2 uses
  %i.fj = load i32, ptr %i.m, align 8, !range !12, !alias.scope !1580, !noundef !4
  %i.fk = trunc nuw i32 %i.fj to i1
  br i1 %i.fk, label %bb.bk, label %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit95.thread169

bb.bk:                                            ; preds = %_RNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11EncodeUtf16NtNtNtNtB9_4iter6traits8iterator8Iterator5count.exit91
  %i.fl = load i32, ptr %i.o, align 4, !alias.scope !1580, !noundef !4 ; 2 uses
  %i.fm = icmp ult i32 %.sroa.04.1388, %i.fl
  br i1 %i.fm, label %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit95.thread, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fn = icmp eq i32 %.sroa.04.1388, %i.fl
  br i1 %i.fn, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.fo = add i32 %.sroa.0.0.i.i90, %.sroa.010.1386
  %i.fp = load i32, ptr %i.p, align 8, !alias.scope !1580, !noundef !4
  %.not.i94 = icmp ugt i32 %i.fo, %i.fp
  br i1 %.not.i94, label %bb.bn, label %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit95.thread

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.fq = load i32, ptr %i.n, align 4, !alias.scope !1580, !noundef !4 ; 2 uses
  %i.fr = icmp ugt i32 %.sroa.04.1388, %i.fq
  br i1 %i.fr, label %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit95.thread, label %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit95

_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit95: ; preds = %bb.bn
  %i.fs = icmp ne i32 %.sroa.04.1388, %i.fq
  %i.ft = load i32, ptr %i.q, align 8, !alias.scope !1580
  %i.fu = icmp ult i32 %.sroa.010.1386, %i.ft
  %or.cond.not.i93 = select i1 %i.fs, i1 true, i1 %i.fu
  br i1 %or.cond.not.i93, label %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit95.thread169, label %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit95.thread

_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit95.thread169: ; preds = %_RNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11EncodeUtf16NtNtNtNtB9_4iter6traits8iterator8Iterator5count.exit91, %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  store i32 %.sroa.19131.0.ph, ptr %i.v, align 8
  store i32 %.sroa.04.1388, ptr %i.w, align 8
  store i32 %.sroa.010.1386, ptr %i.x, align 4
  store i32 %.sroa.0.0.i.i90, ptr %i.y, align 4
  %i.fv = invoke noundef nonnull align 8 ptr @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtCs2w2nn1AeeqK_9lsp_types15semantic_tokens17SemanticTokenTypeNtNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokens9ModifiersNtB1a_8PositionmEE13push_back_mutB2e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.d)
          to label %bb.br unwind label %.loopexit.split-lp187.loopexit.split-lp ; 0 uses

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2w2nn1AeeqK_9lsp_types15semantic_tokens17SemanticTokenTypeECs4KzxGwe94yc_9yara_x_ls.exit101: ; preds = %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit95.thread, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i97, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RNvNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokens10token_type.exit

_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit95.thread: ; preds = %bb.bn, %bb.bm, %bb.bk, %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit95
  %i.fw = load i64, ptr %i.f, align 8, !range !5, !alias.scope !1581, !noundef !4
  %i.fx = icmp eq i64 %i.fw, -1
  br i1 %i.fx, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2w2nn1AeeqK_9lsp_types15semantic_tokens17SemanticTokenTypeECs4KzxGwe94yc_9yara_x_ls.exit101, label %bb.bo

bb.bo:                                            ; preds = %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit95.thread
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i97 unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.fy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i97: ; preds = %bb.bo
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2w2nn1AeeqK_9lsp_types15semantic_tokens17SemanticTokenTypeECs4KzxGwe94yc_9yara_x_ls.exit101 unwind label %.loopexit.split-lp187.loopexit.split-lp

bb.br:                                            ; preds = %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit95.thread169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2w2nn1AeeqK_9lsp_types15semantic_tokens17SemanticTokenTypeECs4KzxGwe94yc_9yara_x_ls.exit101

_RNvNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokens10token_type.exit: ; preds = %.noexc63, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2w2nn1AeeqK_9lsp_types15semantic_tokens17SemanticTokenTypeECs4KzxGwe94yc_9yara_x_ls.exit101
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19)
  %i.ga = invoke noundef i16 @_RNvMs5_NtCskKs5foxPL5A_5rowan3apiINtB5_11SyntaxTokenNtNtCsfF8zpZz1lvn_13yara_x_parser3cst4YARAE4kindCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
          to label %bb.bw unwind label %.loopexit.split-lp187.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bf, %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit.thread161, %bb.ar, %bb.am, %.thread164
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gb = load i64, ptr %i.f, align 8, !range !5, !alias.scope !1582, !noundef !4
  %i.gc = icmp eq i64 %i.gb, -1
  br i1 %i.gc, label %.body, label %bb.bs

bb.bs:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i103 unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.gd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body104 unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ge = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i103: ; preds = %bb.bs
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body unwind label %bb.bv

bb.bv:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i103, %bb.d
  %i.gf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body104

end_hunk_0
