Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x_ls.yara_x_ls.375707425faaecf2-cgu.11?download=true
inline.NumInlined: 2062
inline.NumDeleted: 975
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvXs_NtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB4_18SemanticTokensIterNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next:bb.a
  %i.aq = getelementptr i8, ptr %i.z, i64 16
  %.val.i = load ptr, ptr %i.aq, align 8, !noalias !1608, !noundef !4 ; 5 uses
  %.not.i51.i = icmp eq ptr %.val.i, null
  br i1 %.not.i51.i, label %.invoke555, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %.val.i, i64 24 ; 6 uses
  %i.as = load i32, ptr %i.ar, align 4, !noalias !1608, !noundef !4 ; 2 uses
  %i.at = icmp eq i32 %i.as, -1
  br i1 %i.at, label %.invoke, label %bb.ae, !prof !9

bb.r:                                             ; preds = %.noexc63, %.noexc63, %.noexc63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.19, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @118, i64 8), i64 16, i1 false), !noalias !1606
  br label %bb.aj

bb.s:                                             ; preds = %.noexc63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.19, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @121, i64 8), i64 16, i1 false), !noalias !1606
  br label %bb.aj

bb.t:                                             ; preds = %bb.o
  %i.au = add nuw i32 %i.ao, 1
  store i32 %i.au, ptr %i.an, align 4, !noalias !1608
  store ptr %.val46.i, ptr %i.b, align 8, !noalias !1607
  %i.av = invoke noundef i16 @_RNvMs4_NtCskKs5foxPL5A_5rowan3apiINtB5_10SyntaxNodeNtNtCsfF8zpZz1lvn_13yara_x_parser3cst4YARAE4kindCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.w unwind label %bb.u, !noalias !1608

.invoke555:                                       ; preds = %bb.p, %bb.n
  %i.aw = phi ptr [ @112, %bb.n ], [ @119, %bb.p ]
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aw) #35
          to label %.cont556 unwind label %.loopexit.split-lp187

.cont556:                                         ; preds = %.invoke555
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load i32, ptr %i.an, align 4, !noalias !1608, !noundef !4
  %i.az = add i32 %i.ay, -1                       ; 2 uses
  store i32 %i.az, ptr %i.an, align 4, !noalias !1608
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.v, label %.body

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtCskKs5foxPL5A_5rowan6cursor4free(ptr noundef nonnull %.val46.i) #36
          to label %.body unwind label %bb.ad, !noalias !1608

bb.w:                                             ; preds = %bb.t
  switch i16 %i.av, label %bb.x [
    i16 90, label %bb.y
    i16 103, label %bb.z
    i16 113, label %bb.aa
  ]

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.19, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @118, i64 8), i64 16, i1 false), !noalias !1606
  br label %bb.ab

bb.y:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.19, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @114, i64 8), i64 16, i1 false), !noalias !1606
  br label %bb.ab

bb.z:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.19, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @116, i64 8), i64 16, i1 false), !noalias !1606
  br label %bb.ab

bb.aa:                                            ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.19, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @118, i64 8), i64 16, i1 false), !noalias !1606
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  %.sink58.i = phi i32 [ 1, %bb.aa ], [ 0, %bb.z ], [ 0, %bb.y ], [ 0, %bb.x ]
  %i.bb = load i32, ptr %i.an, align 4, !noalias !1608, !noundef !4
  %i.bc = add i32 %i.bb, -1                       ; 2 uses
  store i32 %i.bc, ptr %i.an, align 4, !noalias !1608
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.ac, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst4NodeNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit53.i

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtCskKs5foxPL5A_5rowan6cursor4free(ptr noundef nonnull %.val46.i) #36
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst4NodeNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit53.i unwind label %.loopexit186

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst4NodeNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit53.i: ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1607
  br label %bb.aj

bb.ad:                                            ; preds = %bb.ag, %bb.v
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31, !noalias !1608
  unreachable

bb.ae:                                            ; preds = %bb.q
  %i.bf = add nuw i32 %i.as, 1
  store i32 %i.bf, ptr %i.ar, align 4, !noalias !1608
  store ptr %.val.i, ptr %i.a, align 8, !noalias !1607
  %i.bg = invoke noundef i16 @_RNvMs4_NtCskKs5foxPL5A_5rowan3apiINtB5_10SyntaxNodeNtNtCsfF8zpZz1lvn_13yara_x_parser3cst4YARAE4kindCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.ah unwind label %bb.af, !noalias !1608

bb.af:                                            ; preds = %bb.ae
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = load i32, ptr %i.ar, align 4, !noalias !1608, !noundef !4
  %i.bj = add i32 %i.bi, -1                       ; 2 uses
  store i32 %i.bj, ptr %i.ar, align 4, !noalias !1608
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.ag, label %.body

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvNtCskKs5foxPL5A_5rowan6cursor4free(ptr noundef nonnull %.val.i) #36
          to label %.body unwind label %bb.ad, !noalias !1608

bb.ah:                                            ; preds = %bb.ae
  %i.bl = icmp eq i16 %i.bg, 94
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.19, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @118, i64 8), i64 16, i1 false), !noalias !1606
  %..i = zext i1 %i.bl to i32
  %i.bm = load i32, ptr %i.ar, align 4, !noalias !1608, !noundef !4
  %i.bn = add i32 %i.bm, -1                       ; 2 uses
  store i32 %i.bn, ptr %i.ar, align 4, !noalias !1608
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.ai, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst4NodeNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit56.i

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvNtCskKs5foxPL5A_5rowan6cursor4free(ptr noundef nonnull %.val.i) #36
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst4NodeNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit56.i unwind label %.loopexit186

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst4NodeNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit56.i: ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1607
  br label %bb.aj

bb.aj:                                            ; preds = %bb.s, %bb.i, %bb.j, %bb.l, %bb.k, %bb.m, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst4NodeNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit53.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst4NodeNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit56.i, %bb.r
  %.sroa.19131.0.ph = phi i32 [ 0, %bb.r ], [ %..i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst4NodeNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit56.i ], [ %.sink58.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst4NodeNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit53.i ], [ 0, %bb.m ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.s ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 -1, ptr %i.f, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.19.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.19, i64 16, i1 false)
  %i.bp = load i64, ptr %i.z, align 8, !range !13, !noundef !4
  %i.bq = trunc nuw i64 %i.bp to i1
  br i1 %i.bq, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.br = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.5.0.i = load ptr, ptr %i.br, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i, i64 16
  br label %bb.am

bb.al:                                            ; preds = %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit95.thread169
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.am:                                            ; preds = %bb.ak, %bb.aj
  %.sroa.3.0.i = phi i64 [ %i.bt, %bb.ak ], [ 0, %bb.aj ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.bu, %bb.ak ], [ inttoptr (i64 1 to ptr), %bb.aj ] ; 2 uses
  %i.bv = load i32, ptr %i.k, align 8, !noundef !4 ; 3 uses
  %i.bw = load i32, ptr %i.l, align 4, !noundef !4 ; 2 uses
  %i.bx = load i32, ptr %i.m, align 8, !range !12, !noundef !4
  %i.by = trunc nuw i32 %i.bx to i1
  %i.bz = load i32, ptr %i.n, align 4
  %i.ca = icmp ult i32 %i.bz, %i.bv
  %or.cond = select i1 %i.by, i1 %i.ca, i1 false
  br i1 %or.cond, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cb = invoke noundef i16 @_RNvMs5_NtCskKs5foxPL5A_5rowan3apiINtB5_11SyntaxTokenNtNtCsfF8zpZz1lvn_13yara_x_parser3cst4YARAE4kindCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.ao:                                            ; preds = %bb.am
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19)
  br label %.loopexit193

.loopexit193:                                     ; preds = %bb.cl, %bb.ao
  %i.cc = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !noundef !4
  %i.ce = add i32 %i.cd, -1                       ; 2 uses
  store i32 %i.ce, ptr %i.cc, align 4
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.ap, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit73

bb.ap:                                            ; preds = %.loopexit193
  call void @_RNvNtCskKs5foxPL5A_5rowan6cursor4free(ptr noundef nonnull %i.z) #36
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit73

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit73: ; preds = %.loopexit193, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.b

bb.aq:                                            ; preds = %bb.an
  switch i16 %i.cb, label %.thread152 [
    i16 78, label %.preheader560
    i16 80, label %.preheader560
  ]

.preheader560:                                    ; preds = %bb.aq, %bb.aq
  br label %bb.ar

bb.ar:                                            ; preds = %.preheader560, %bb.bi
  %.sroa.8.0 = phi i64 [ %i.el, %bb.bi ], [ %.sroa.3.0.i, %.preheader560 ] ; 13 uses
  %.sroa.016.0 = phi ptr [ %i.ek, %bb.bi ], [ %.sroa.0.0.i, %.preheader560 ] ; 13 uses
  %.sroa.010.0 = phi i32 [ 0, %bb.bi ], [ %i.bw, %.preheader560 ] ; 8 uses
  %.sroa.04.0 = phi i32 [ %i.em, %bb.bi ], [ %i.bv, %.preheader560 ] ; 11 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.0) ]
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i.backedge, %bb.ar
  %i.cg = phi i64 [ 0, %bb.ar ], [ %i.cu, %.lr.ph.split.i.i.backedge ] ; 5 uses
  %i.ch = sub nuw i64 %.sroa.8.0, %i.cg           ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.016.0, i64 %i.cg ; 2 uses
  %i.cj = icmp samesign ult i64 %i.ch, 16
  br i1 %i.cj, label %.preheader.i.i.i, label %bb.as

.preheader.i.i.i:                                 ; preds = %.lr.ph.split.i.i
  %.not.i.i.i = icmp eq i64 %.sroa.8.0, %i.cg
  br i1 %.not.i.i.i, label %.thread152, label %.lr.ph.i.i.i

bb.as:                                            ; preds = %.lr.ph.split.i.i
  %i.ck = invoke { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ci, i64 noundef range(i64 0, -9223372036854775808) %i.ch)
          to label %.noexc74 unwind label %.loopexit ; 2 uses

.noexc74:                                         ; preds = %bb.as
  %i.cl = extractvalue { i64, i64 } %i.ck, 0
  %i.cm = extractvalue { i64, i64 } %i.ck, 1
  %i.cn = trunc nuw i64 %i.cl to i1
  br i1 %i.cn, label %.loopexit.i.i, label %.thread152

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.at
  %.sroa.04.011.i.i.i = phi i64 [ %i.cr, %bb.at ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.sroa.04.011.i.i.i
  %i.cp = load i8, ptr %i.co, align 1, !alias.scope !1609, !noalias !1610, !noundef !4
  %i.cq = icmp eq i8 %i.cp, 10
  br i1 %i.cq, label %.loopexit.i.i, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i
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
  br i1 %or.cond.i.not.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.loopexit.i.i
  br i1 %.not12.i.i, label %.thread152, label %.lr.ph.split.i.i.backedge

bb.av:                                            ; preds = %.loopexit.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.016.0, i64 %i.cv
  %lhsc.i = load i8, ptr %i.cw, align 1, !alias.scope !1611
  %i.cx = icmp eq i8 %lhsc.i, 10                  ; 2 uses
  %brmerge.i = or i1 %.not12.i.i, %i.cx
  br i1 %brmerge.i, label %bb.aw, label %.lr.ph.split.i.i.backedge

.lr.ph.split.i.i.backedge:                        ; preds = %bb.av, %bb.au
  br label %.lr.ph.split.i.i

bb.aw:                                            ; preds = %bb.av
  br i1 %i.cx, label %bb.ax, label %.preheader180.preheader

bb.ax:                                            ; preds = %bb.aw
  %cond = icmp eq i64 %i.cv, 0
  br i1 %cond, label %_RNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11EncodeUtf16NtNtNtNtB9_4iter6traits8iterator8Iterator5count.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.ax
  %min.iters.check536 = icmp ult i64 %i.cv, 8
  br i1 %min.iters.check536, label %.preheader.preheader557, label %vector.ph537

vector.ph537:                                     ; preds = %.preheader.preheader
  %n.vec538 = and i64 %i.cv, -8                   ; 3 uses
  br label %vector.body539

vector.body539:                                   ; preds = %vector.body539, %vector.ph537
  %index540 = phi i64 [ 0, %vector.ph537 ], [ %index.next549, %vector.body539 ] ; 2 uses
  %vec.phi541 = phi <4 x i32> [ zeroinitializer, %vector.ph537 ], [ %i.di, %vector.body539 ]
  %vec.phi542 = phi <4 x i32> [ zeroinitializer, %vector.ph537 ], [ %i.dj, %vector.body539 ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.016.0, i64 %index540 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %wide.load543 = load <4 x i8>, ptr %i.cy, align 1, !noalias !1612 ; 3 uses
  %wide.load544 = load <4 x i8>, ptr %i.cz, align 1, !noalias !1612 ; 3 uses
  %i.da = icmp slt <4 x i8> %wide.load543, zeroinitializer
  %i.db = icmp slt <4 x i8> %wide.load544, zeroinitializer
  %i.dc = icmp ult <4 x i8> %wide.load543, splat (i8 -16)
  %i.dd = icmp ult <4 x i8> %wide.load544, splat (i8 -16)
  %i.de = select <4 x i1> %i.dc, <4 x i32> splat (i32 1), <4 x i32> splat (i32 2)
  %i.df = select <4 x i1> %i.dd, <4 x i32> splat (i32 1), <4 x i32> splat (i32 2)
  %i.dg = icmp slt <4 x i8> %wide.load543, splat (i8 -64)
  %i.dh = icmp slt <4 x i8> %wide.load544, splat (i8 -64)
  %predphi545 = select <4 x i1> %i.dg, <4 x i32> zeroinitializer, <4 x i32> %i.de
  %predphi546 = select <4 x i1> %i.da, <4 x i32> %predphi545, <4 x i32> splat (i32 1)
  %predphi547 = select <4 x i1> %i.dh, <4 x i32> zeroinitializer, <4 x i32> %i.df
  %predphi548 = select <4 x i1> %i.db, <4 x i32> %predphi547, <4 x i32> splat (i32 1)
  %i.di = add <4 x i32> %predphi546, %vec.phi541  ; 2 uses
  %i.dj = add <4 x i32> %predphi548, %vec.phi542  ; 2 uses
  %index.next549 = add nuw i64 %index540, 8       ; 2 uses
  %i.dk = icmp eq i64 %index.next549, %n.vec538
  br i1 %i.dk, label %middle.block550, label %vector.body539, !llvm.loop !1584

middle.block550:                                  ; preds = %vector.body539
  %bin.rdx551 = add <4 x i32> %i.dj, %i.di
  %i.dl = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx551) ; 2 uses
  %cmp.n552 = icmp eq i64 %i.cv, %n.vec538
  br i1 %cmp.n552, label %_RNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11EncodeUtf16NtNtNtNtB9_4iter6traits8iterator8Iterator5count.exit, label %.preheader.preheader557

.preheader.preheader557:                          ; preds = %.preheader.preheader, %middle.block550
  %.sroa.04.0.i.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec538, %middle.block550 ]
  %.sroa.02.0.i.i.ph = phi i32 [ 0, %.preheader.preheader ], [ %i.dl, %middle.block550 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader557, %_RNCNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4KzxGwe94yc_9yara_x_ls.exit.i.i
  %.sroa.04.0.i.i = phi i64 [ %i.dr, %_RNCNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4KzxGwe94yc_9yara_x_ls.exit.i.i ], [ %.sroa.04.0.i.i.ph, %.preheader.preheader557 ] ; 2 uses
  %.sroa.02.0.i.i = phi i32 [ %i.dq, %_RNCNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4KzxGwe94yc_9yara_x_ls.exit.i.i ], [ %.sroa.02.0.i.i.ph, %.preheader.preheader557 ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.016.0, i64 %.sroa.04.0.i.i
  %.val.i.i = load i8, ptr %i.dm, align 1, !noalias !1612, !noundef !4 ; 3 uses
  %i.dn = icmp sgt i8 %.val.i.i, -1
  br i1 %i.dn, label %_RNCNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4KzxGwe94yc_9yara_x_ls.exit.i.i, label %bb.ay

bb.ay:                                            ; preds = %.preheader
  %i.do = icmp samesign ult i8 %.val.i.i, -64
  br i1 %i.do, label %_RNCNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4KzxGwe94yc_9yara_x_ls.exit.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.dp = icmp samesign ult i8 %.val.i.i, -16
  %..i.i.i = select i1 %i.dp, i32 1, i32 2
  br label %_RNCNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4KzxGwe94yc_9yara_x_ls.exit.i.i

_RNCNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4KzxGwe94yc_9yara_x_ls.exit.i.i: ; preds = %bb.az, %bb.ay, %.preheader
  %.sroa.0.0.i.i.i = phi i32 [ 0, %bb.ay ], [ %..i.i.i, %bb.az ], [ 1, %.preheader ]
  %i.dq = add i32 %.sroa.0.0.i.i.i, %.sroa.02.0.i.i ; 2 uses
  %i.dr = add nuw i64 %.sroa.04.0.i.i, 1          ; 2 uses
  %i.ds = icmp eq i64 %i.dr, %i.cv
  br i1 %i.ds, label %_RNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11EncodeUtf16NtNtNtNtB9_4iter6traits8iterator8Iterator5count.exit, label %.preheader, !llvm.loop !1585

bb.ba:                                            ; preds = %.thread164
  unreachable

_RNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11EncodeUtf16NtNtNtNtB9_4iter6traits8iterator8Iterator5count.exit: ; preds = %_RNCNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4KzxGwe94yc_9yara_x_ls.exit.i.i, %middle.block550, %bb.ax
  %.sroa.0.0.i.i = phi i32 [ 0, %bb.ax ], [ %i.dl, %middle.block550 ], [ %i.dq, %_RNCNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4KzxGwe94yc_9yara_x_ls.exit.i.i ] ; 2 uses
  %i.dt = load i32, ptr %i.m, align 8, !range !12, !alias.scope !1613, !noundef !4
  %i.du = trunc nuw i32 %i.dt to i1
  br i1 %i.du, label %bb.bb, label %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit.thread161

bb.bb:                                            ; preds = %_RNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11EncodeUtf16NtNtNtNtB9_4iter6traits8iterator8Iterator5count.exit
  %i.dv = load i32, ptr %i.o, align 4, !alias.scope !1613, !noundef !4 ; 2 uses
  %i.dw = icmp ult i32 %.sroa.04.0, %i.dv
  br i1 %i.dw, label %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.dx = icmp eq i32 %.sroa.04.0, %i.dv
  br i1 %i.dx, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.dy = add i32 %.sroa.0.0.i.i, %.sroa.010.0
  %i.dz = load i32, ptr %i.p, align 8, !alias.scope !1613, !noundef !4
  %.not.i78 = icmp ugt i32 %i.dy, %i.dz
  br i1 %.not.i78, label %bb.be, label %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit.thread

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.ea = load i32, ptr %i.n, align 4, !alias.scope !1613, !noundef !4 ; 2 uses
  %i.eb = icmp ugt i32 %.sroa.04.0, %i.ea
  br i1 %i.eb, label %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit.thread, label %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit

_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit: ; preds = %bb.be
  %i.ec = icmp ne i32 %.sroa.04.0, %i.ea
  %i.ed = load i32, ptr %i.q, align 8, !alias.scope !1613
  %i.ee = icmp ult i32 %.sroa.010.0, %i.ed
  %or.cond.not.i = select i1 %i.ec, i1 true, i1 %i.ee
  br i1 %or.cond.not.i, label %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit.thread161, label %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit.thread

_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit.thread161: ; preds = %_RNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11EncodeUtf16NtNtNtNtB9_4iter6traits8iterator8Iterator5count.exit, %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXs0_NtCsexYYUdYSQU6_5alloc6borrowINtB5_3CoweENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f)
          to label %bb.bg unwind label %.loopexit.split-lp.loopexit

_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit.thread: ; preds = %bb.be, %bb.bd, %bb.bb, %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit, %bb.bh
  %i.ef = add nuw i64 %i.cv, 1                    ; 5 uses
  %.not.i79 = icmp ult i64 %i.ef, %.sroa.8.0
  br i1 %.not.i79, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit.thread
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.016.0, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !alias.scope !1614, !noundef !4
  %i.ei = icmp sgt i8 %i.eh, -65
  br i1 %i.ei, label %bb.bi, label %.thread164

bb.bg:                                            ; preds = %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit.thread161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i32 %.sroa.19131.0.ph, ptr %i.r, align 8
  store i32 %.sroa.04.0, ptr %i.s, align 8
  store i32 %.sroa.010.0, ptr %i.t, align 4
  store i32 %.sroa.0.0.i.i, ptr %i.u, align 4
  %i.ej = invoke noundef nonnull align 8 ptr @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtCs2w2nn1AeeqK_9lsp_types15semantic_tokens17SemanticTokenTypeNtNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokens9ModifiersNtB1a_8PositionmEE13push_back_mutB2e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.e)
          to label %bb.bh unwind label %.loopexit.split-lp.loopexit ; 0 uses

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit.thread

bb.bi:                                            ; preds = %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit.thread, %bb.bf
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.016.0, i64 %i.ef
  %i.el = sub nuw i64 %.sroa.8.0, %i.ef
  %i.em = add i32 %.sroa.04.0, 1
  br label %bb.ar

.thread164:                                       ; preds = %bb.bf
  invoke void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.016.0, i64 noundef %.sroa.8.0, i64 noundef %i.ef, i64 noundef %.sroa.8.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #33
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread152:                                       ; preds = %.preheader.i.i.i, %.noexc74, %bb.au, %bb.at, %bb.aq
  %.sroa.8.1 = phi i64 [ %.sroa.3.0.i, %bb.aq ], [ %.sroa.8.0, %bb.at ], [ %.sroa.8.0, %bb.au ], [ %.sroa.8.0, %.noexc74 ], [ %.sroa.8.0, %.preheader.i.i.i ] ; 2 uses
  %.sroa.016.1 = phi ptr [ %.sroa.0.0.i, %bb.aq ], [ %.sroa.016.0, %bb.at ], [ %.sroa.016.0, %bb.au ], [ %.sroa.016.0, %.noexc74 ], [ %.sroa.016.0, %.preheader.i.i.i ] ; 2 uses
  %.sroa.010.1 = phi i32 [ %i.bw, %bb.aq ], [ %.sroa.010.0, %bb.at ], [ %.sroa.010.0, %bb.au ], [ %.sroa.010.0, %.noexc74 ], [ %.sroa.010.0, %.preheader.i.i.i ] ; 2 uses
  %.sroa.04.1 = phi i32 [ %i.bv, %bb.aq ], [ %.sroa.04.0, %bb.at ], [ %.sroa.04.0, %bb.au ], [ %.sroa.04.0, %.noexc74 ], [ %.sroa.04.0, %.preheader.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.1) ]
  %i.en = icmp samesign eq i64 %.sroa.8.1, 0
  br i1 %i.en, label %_RNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11EncodeUtf16NtNtNtNtB9_4iter6traits8iterator8Iterator5count.exit91, label %.preheader180.preheader

.preheader180.preheader:                          ; preds = %bb.aw, %.thread152
  %.sroa.04.1392 = phi i32 [ %.sroa.04.1, %.thread152 ], [ %.sroa.04.0, %bb.aw ] ; 2 uses
  %.sroa.010.1390 = phi i32 [ %.sroa.010.1, %.thread152 ], [ %.sroa.010.0, %bb.aw ] ; 2 uses
  %.sroa.016.1389 = phi ptr [ %.sroa.016.1, %.thread152 ], [ %.sroa.016.0, %bb.aw ] ; 2 uses
  %.sroa.8.1388 = phi i64 [ %.sroa.8.1, %.thread152 ], [ %.sroa.8.0, %bb.aw ] ; 4 uses
  %min.iters.check = icmp ult i64 %.sroa.8.1388, 8
  br i1 %min.iters.check, label %.preheader180.preheader559, label %vector.ph

vector.ph:                                        ; preds = %.preheader180.preheader
  %n.vec = and i64 %.sroa.8.1388, -8              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ey, %vector.body ]
  %vec.phi530 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ez, %vector.body ]
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.016.1389, i64 %index ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %wide.load = load <4 x i8>, ptr %i.eo, align 1, !noalias !1615 ; 3 uses
  %wide.load531 = load <4 x i8>, ptr %i.ep, align 1, !noalias !1615 ; 3 uses
  %i.eq = icmp slt <4 x i8> %wide.load, zeroinitializer
  %i.er = icmp slt <4 x i8> %wide.load531, zeroinitializer
  %i.es = icmp ult <4 x i8> %wide.load, splat (i8 -16)
  %i.et = icmp ult <4 x i8> %wide.load531, splat (i8 -16)
  %i.eu = select <4 x i1> %i.es, <4 x i32> splat (i32 1), <4 x i32> splat (i32 2)
  %i.ev = select <4 x i1> %i.et, <4 x i32> splat (i32 1), <4 x i32> splat (i32 2)
  %i.ew = icmp slt <4 x i8> %wide.load, splat (i8 -64)
  %i.ex = icmp slt <4 x i8> %wide.load531, splat (i8 -64)
  %predphi = select <4 x i1> %i.ew, <4 x i32> zeroinitializer, <4 x i32> %i.eu
  %predphi532 = select <4 x i1> %i.eq, <4 x i32> %predphi, <4 x i32> splat (i32 1)
  %predphi533 = select <4 x i1> %i.ex, <4 x i32> zeroinitializer, <4 x i32> %i.ev
  %predphi534 = select <4 x i1> %i.er, <4 x i32> %predphi533, <4 x i32> splat (i32 1)
  %i.ey = add <4 x i32> %predphi532, %vec.phi     ; 2 uses
  %i.ez = add <4 x i32> %predphi534, %vec.phi530  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fa = icmp eq i64 %index.next, %n.vec
  br i1 %i.fa, label %middle.block, label %vector.body, !llvm.loop !1592

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ez, %i.ey
  %i.fb = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.sroa.8.1388, %n.vec
  br i1 %cmp.n, label %_RNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11EncodeUtf16NtNtNtNtB9_4iter6traits8iterator8Iterator5count.exit91, label %.preheader180.preheader559

.preheader180.preheader559:                       ; preds = %.preheader180.preheader, %middle.block
  %.sroa.04.0.i.i84.ph = phi i64 [ 0, %.preheader180.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.i85.ph = phi i32 [ 0, %.preheader180.preheader ], [ %i.fb, %middle.block ]
  br label %.preheader180

.preheader180:                                    ; preds = %.preheader180.preheader559, %_RNCNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4KzxGwe94yc_9yara_x_ls.exit.i.i88
  %.sroa.04.0.i.i84 = phi i64 [ %i.fh, %_RNCNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4KzxGwe94yc_9yara_x_ls.exit.i.i88 ], [ %.sroa.04.0.i.i84.ph, %.preheader180.preheader559 ] ; 2 uses
  %.sroa.02.0.i.i85 = phi i32 [ %i.fg, %_RNCNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4KzxGwe94yc_9yara_x_ls.exit.i.i88 ], [ %.sroa.02.0.i.i85.ph, %.preheader180.preheader559 ]
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.016.1389, i64 %.sroa.04.0.i.i84
  %.val.i.i86 = load i8, ptr %i.fc, align 1, !noalias !1615, !noundef !4 ; 3 uses
  %i.fd = icmp sgt i8 %.val.i.i86, -1
  br i1 %i.fd, label %_RNCNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4KzxGwe94yc_9yara_x_ls.exit.i.i88, label %bb.bj

bb.bj:                                            ; preds = %.preheader180
  %i.fe = icmp samesign ult i8 %.val.i.i86, -64
  br i1 %i.fe, label %_RNCNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4KzxGwe94yc_9yara_x_ls.exit.i.i88, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ff = icmp samesign ult i8 %.val.i.i86, -16
  %..i.i.i87 = select i1 %i.ff, i32 1, i32 2
  br label %_RNCNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4KzxGwe94yc_9yara_x_ls.exit.i.i88

_RNCNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4KzxGwe94yc_9yara_x_ls.exit.i.i88: ; preds = %bb.bk, %bb.bj, %.preheader180
  %.sroa.0.0.i.i.i89 = phi i32 [ 0, %bb.bj ], [ %..i.i.i87, %bb.bk ], [ 1, %.preheader180 ]
  %i.fg = add i32 %.sroa.0.0.i.i.i89, %.sroa.02.0.i.i85 ; 2 uses
  %i.fh = add nuw i64 %.sroa.04.0.i.i84, 1        ; 2 uses
  %i.fi = icmp eq i64 %i.fh, %.sroa.8.1388
  br i1 %i.fi, label %_RNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11EncodeUtf16NtNtNtNtB9_4iter6traits8iterator8Iterator5count.exit91, label %.preheader180, !llvm.loop !1593

_RNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11EncodeUtf16NtNtNtNtB9_4iter6traits8iterator8Iterator5count.exit91: ; preds = %_RNCNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4KzxGwe94yc_9yara_x_ls.exit.i.i88, %middle.block, %.thread152
  %.sroa.04.1393 = phi i32 [ %.sroa.04.1, %.thread152 ], [ %.sroa.04.1392, %middle.block ], [ %.sroa.04.1392, %_RNCNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4KzxGwe94yc_9yara_x_ls.exit.i.i88 ] ; 5 uses
  %.sroa.010.1391 = phi i32 [ %.sroa.010.1, %.thread152 ], [ %.sroa.010.1390, %middle.block ], [ %.sroa.010.1390, %_RNCNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4KzxGwe94yc_9yara_x_ls.exit.i.i88 ] ; 3 uses
  %.sroa.0.0.i.i90 = phi i32 [ 0, %.thread152 ], [ %i.fb, %middle.block ], [ %i.fg, %_RNCNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4KzxGwe94yc_9yara_x_ls.exit.i.i88 ] ; 2 uses
  %i.fj = load i32, ptr %i.m, align 8, !range !12, !alias.scope !1616, !noundef !4
  %i.fk = trunc nuw i32 %i.fj to i1
  br i1 %i.fk, label %bb.bl, label %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit95.thread169

bb.bl:                                            ; preds = %_RNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11EncodeUtf16NtNtNtNtB9_4iter6traits8iterator8Iterator5count.exit91
  %i.fl = load i32, ptr %i.o, align 4, !alias.scope !1616, !noundef !4 ; 2 uses
  %i.fm = icmp ult i32 %.sroa.04.1393, %i.fl
  br i1 %i.fm, label %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit95.thread, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fn = icmp eq i32 %.sroa.04.1393, %i.fl
  br i1 %i.fn, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.fo = add i32 %.sroa.0.0.i.i90, %.sroa.010.1391
  %i.fp = load i32, ptr %i.p, align 8, !alias.scope !1616, !noundef !4
  %.not.i94 = icmp ugt i32 %i.fo, %i.fp
  br i1 %.not.i94, label %bb.bo, label %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit95.thread

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.fq = load i32, ptr %i.n, align 4, !alias.scope !1616, !noundef !4 ; 2 uses
  %i.fr = icmp ugt i32 %.sroa.04.1393, %i.fq
  br i1 %i.fr, label %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit95.thread, label %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit95

_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit95: ; preds = %bb.bo
  %i.fs = icmp ne i32 %.sroa.04.1393, %i.fq
  %i.ft = load i32, ptr %i.q, align 8, !alias.scope !1616
  %i.fu = icmp ult i32 %.sroa.010.1391, %i.ft
  %or.cond.not.i93 = select i1 %i.fs, i1 true, i1 %i.fu
  br i1 %or.cond.not.i93, label %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit95.thread169, label %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit95.thread

_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit95.thread169: ; preds = %_RNvXsO_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11EncodeUtf16NtNtNtNtB9_4iter6traits8iterator8Iterator5count.exit91, %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  store i32 %.sroa.19131.0.ph, ptr %i.v, align 8
  store i32 %.sroa.04.1393, ptr %i.w, align 8
  store i32 %.sroa.010.1391, ptr %i.x, align 4
  store i32 %.sroa.0.0.i.i90, ptr %i.y, align 4
  %i.fv = invoke noundef nonnull align 8 ptr @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtCs2w2nn1AeeqK_9lsp_types15semantic_tokens17SemanticTokenTypeNtNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokens9ModifiersNtB1a_8PositionmEE13push_back_mutB2e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.d)
          to label %bb.bs unwind label %bb.al     ; 0 uses

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2w2nn1AeeqK_9lsp_types15semantic_tokens17SemanticTokenTypeECs4KzxGwe94yc_9yara_x_ls.exit101: ; preds = %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit95.thread, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i97, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RNvNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokens10token_type.exit

_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit95.thread: ; preds = %bb.bo, %bb.bn, %bb.bl, %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit95
  %i.fw = load i64, ptr %i.f, align 8, !range !5, !alias.scope !1617, !noundef !4
  %i.fx = icmp eq i64 %i.fw, -1
  br i1 %i.fx, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2w2nn1AeeqK_9lsp_types15semantic_tokens17SemanticTokenTypeECs4KzxGwe94yc_9yara_x_ls.exit101, label %bb.bp

bb.bp:                                            ; preds = %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit95.thread
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i97 unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.fy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i97: ; preds = %bb.bp
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2w2nn1AeeqK_9lsp_types15semantic_tokens17SemanticTokenTypeECs4KzxGwe94yc_9yara_x_ls.exit101 unwind label %.loopexit186

bb.bs:                                            ; preds = %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit95.thread169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2w2nn1AeeqK_9lsp_types15semantic_tokens17SemanticTokenTypeECs4KzxGwe94yc_9yara_x_ls.exit101

_RNvNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokens10token_type.exit: ; preds = %.noexc63, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2w2nn1AeeqK_9lsp_types15semantic_tokens17SemanticTokenTypeECs4KzxGwe94yc_9yara_x_ls.exit101
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19)
  %i.ga = invoke noundef i16 @_RNvMs5_NtCskKs5foxPL5A_5rowan3apiINtB5_11SyntaxTokenNtNtCsfF8zpZz1lvn_13yara_x_parser3cst4YARAE4kindCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
          to label %bb.bx unwind label %.loopexit186

.loopexit:                                        ; preds = %bb.as
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.bg, %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokensNtB2_18SemanticTokensIter11is_in_range.exit.thread161
  %lpad.loopexit182 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.an
  %lpad.loopexit190 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.thread164
  %lpad.loopexit.split-lp191 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit182, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit190, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp191, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.gb = load i64, ptr %i.f, align 8, !range !5, !alias.scope !1618, !noundef !4
  %i.gc = icmp eq i64 %i.gb, -1
  br i1 %i.gc, label %.body, label %bb.bt

bb.bt:                                            ; preds = %.loopexit.split-lp
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i103 unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.gd = landingpad { ptr, i32 }
end_hunk_0
