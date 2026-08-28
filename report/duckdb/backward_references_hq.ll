Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/backward_references_hq?download=true
inline.NumInlined: 29
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN13duckdb_brotli31BrotliZopfliComputeShortestPathEPNS_13MemoryManagerEmmPKhmS3_PK19BrotliEncoderParamsPKiPNS_6HasherEPNS_10ZopfliNodeE:bb.a
  br label %.lr.ph399

.lr.ph391:                                        ; preds = %bb.v, %bb.x
  %.022.i.i390 = phi i64 [ %i.gc, %bb.x ], [ %i.fr, %bb.v ]
  %.024.i.i389 = phi ptr [ %i.ga, %bb.x ], [ %i.fq, %bb.v ] ; 2 uses
  %.026.i.i388 = phi ptr [ %i.gb, %bb.x ], [ %i.fo, %bb.v ] ; 3 uses
  %.0.copyload.i163 = load i64, ptr %.024.i.i389, align 1, !noalias !91 ; 2 uses
  %.0.copyload.i = load i64, ptr %.026.i.i388, align 1, !noalias !91 ; 2 uses
  %.not30.i.i = icmp eq i64 %.0.copyload.i163, %.0.copyload.i
  br i1 %.not30.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph391
  %i.ft = xor i64 %.0.copyload.i, %.0.copyload.i163
  %i.fu = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ft, i1 true)
  %i.fv = ptrtoint ptr %.026.i.i388 to i64
  %i.fw = ptrtoint ptr %i.fo to i64
  %i.fx = sub i64 %i.fv, %i.fw
  %i.fy = lshr i64 %i.fu, 3
  %i.fz = add i64 %i.fx, %i.fy
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i

bb.x:                                             ; preds = %.lr.ph391
  %i.ga = getelementptr inbounds nuw i8, ptr %.024.i.i389, i64 8 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.026.i.i388, i64 8 ; 2 uses
  %i.gc = add i64 %.022.i.i390, -8                ; 3 uses
  %i.gd = icmp ugt i64 %i.gc, 7
  br i1 %i.gd, label %.lr.ph391, label %.preheader332, !llvm.loop !67

.lr.ph399:                                        ; preds = %.lr.ph399.preheader, %bb.y
  %.123.i.i398 = phi i64 [ %i.gh, %bb.y ], [ %.022.i.i.lcssa, %.lr.ph399.preheader ]
  %.125.i.i397 = phi ptr [ %i.gi, %bb.y ], [ %.024.i.i.lcssa, %.lr.ph399.preheader ] ; 2 uses
  %.228.i.i396 = phi ptr [ %i.gj, %bb.y ], [ %.026.i.i.lcssa, %.lr.ph399.preheader ] ; 3 uses
  %i.ge = load i8, ptr %.228.i.i396, align 1, !tbaa !7, !alias.scope !76, !noalias !86
  %i.gf = load i8, ptr %.125.i.i397, align 1, !tbaa !7, !alias.scope !76, !noalias !86
  %i.gg = icmp eq i8 %i.ge, %i.gf
  br i1 %i.gg, label %bb.y, label %.critedge.i.i

bb.y:                                             ; preds = %.lr.ph399
  %i.gh = add nsw i64 %.123.i.i398, -1            ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.125.i.i397, i64 1
  %i.gj = getelementptr inbounds nuw i8, ptr %.228.i.i396, i64 1
  %.not.i.i = icmp eq i64 %i.gh, 0
  br i1 %.not.i.i, label %.critedge.i.i, label %.lr.ph399, !llvm.loop !68

.critedge.i.i:                                    ; preds = %bb.y, %.lr.ph399, %.preheader332
  %.228.i.i.lcssa = phi ptr [ %.026.i.i.lcssa, %.preheader332 ], [ %.228.i.i396, %.lr.ph399 ], [ %scevgep585, %bb.y ]
  %i.gk = ptrtoint ptr %.228.i.i.lcssa to i64
  %i.gl = ptrtoint ptr %i.fo to i64
  %i.gm = sub i64 %i.gk, %i.gl
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i: ; preds = %bb.w, %.critedge.i.i
  %.2.i.i = phi i64 [ %i.fz, %bb.w ], [ %i.gm, %.critedge.i.i ]
  %i.gn = add i64 %.2.i.i, %i.fn                  ; 8 uses
  %.not.i160 = icmp eq ptr %.0112.i405, null
  br i1 %.not.i160, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i
  %i.go = icmp ugt i64 %i.gn, %.4404
  br i1 %i.go, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gp = getelementptr inbounds nuw i8, ptr %.0112.i405, i64 8
  %i.gq = trunc i64 %i.fh to i32
  store i32 %i.gq, ptr %.0112.i405, align 4, !tbaa !69, !alias.scope !78, !noalias !93
  %.tr.i.i = trunc i64 %i.gn to i32
  %i.gr = shl i32 %.tr.i.i, 5
  %i.gs = getelementptr inbounds nuw i8, ptr %.0112.i405, i64 4
  store i32 %i.gr, ptr %i.gs, align 4, !tbaa !71, !alias.scope !78, !noalias !93
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i
  %.5 = phi i64 [ %.4404, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i ], [ %i.gn, %bb.aa ], [ %.4404, %bb.z ] ; 4 uses
  %.1113.i = phi ptr [ null, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i ], [ %i.gp, %bb.aa ], [ %.0112.i405, %bb.z ] ; 4 uses
  %.not118.i = icmp ult i64 %i.gn, %i.er
  br i1 %.not118.i, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.es, label %bb.ad, label %_ZN13duckdb_brotliL22StoreAndFindMatchesH10EPNS_3H10EPKhmmmmPmPNS_13BackwardMatchE.exit

bb.ad:                                            ; preds = %bb.ac
  %i.gt = and i64 %.0108.i412, %i.fb
  %.idx = shl nuw nsw i64 %i.gt, 3
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ex, i64 %.idx ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !3, !noalias !91
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %.0104.i407
  store i32 %i.gv, ptr %i.gw, align 4, !tbaa !3, !noalias !91
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !3, !noalias !91
  br label %_ZN13duckdb_brotliL22StoreAndFindMatchesH10EPNS_3H10EPKhmmmmPmPNS_13BackwardMatchE.exit.sink.split

bb.ae:                                            ; preds = %bb.ab
  %i.gz = getelementptr i8, ptr %i.et, i64 %i.gn
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !7, !alias.scope !76, !noalias !86
  %i.hb = getelementptr i8, ptr %i.fp, i64 %i.gn
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !7, !alias.scope !76, !noalias !86
  %i.hd = icmp ugt i8 %i.ha, %i.hc
  br i1 %i.hd, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  br i1 %i.es, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %.0104.i407
  store i32 %.0108.i.in406, ptr %i.he, align 4, !tbaa !3, !noalias !91
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.hf = and i64 %.0108.i412, %i.fb
  %i.hg = shl nuw nsw i64 %i.hf, 1
  %i.hh = or disjoint i64 %i.hg, 1                ; 2 uses
  br label %bb.al

bb.ai:                                            ; preds = %bb.ae
  br i1 %i.es, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %.0100.i408
  store i32 %.0108.i.in406, ptr %i.hi, align 4, !tbaa !3, !noalias !91
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.hj = and i64 %.0108.i412, %i.fb
  %i.hk = shl nuw nsw i64 %i.hj, 1                ; 2 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ah
  %.pn.i = phi i64 [ %i.hh, %bb.ah ], [ %i.hk, %bb.ak ]
  %.1105.i = phi i64 [ %i.hh, %bb.ah ], [ %.0104.i407, %bb.ak ] ; 2 uses
  %.1101.i = phi i64 [ %.0100.i408, %bb.ah ], [ %i.hk, %bb.ak ] ; 2 uses
  %.197.i = phi i64 [ %i.gn, %bb.ah ], [ %.096.i409, %bb.ak ]
  %.195.i = phi i64 [ %.094.i410, %bb.ah ], [ %i.gn, %bb.ak ]
  %.1109.in.in.i = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %.pn.i
  %.1109.in.i = load i32, ptr %.1109.in.in.i, align 4, !tbaa !3, !noalias !91 ; 2 uses
  %i.hl = add nsw i64 %.093.i411, -1
  %.0108.i = zext i32 %.1109.in.i to i64          ; 2 uses
  %i.hm = icmp eq i64 %i.bw, %.0108.i
  br i1 %i.hm, label %._crit_edge, label %.lr.ph413, !llvm.loop !94

_ZN13duckdb_brotliL22StoreAndFindMatchesH10EPNS_3H10EPKhmmmmPmPNS_13BackwardMatchE.exit.sink.split: ; preds = %bb.u, %bb.ad
  %.0100.i408.lcssa671.sink = phi i64 [ %.0100.i408, %bb.ad ], [ %.0100.i.lcssa, %bb.u ]
  %.sink = phi i32 [ %i.gy, %bb.ad ], [ %i.fk, %bb.u ]
  %.2257.ph = phi i64 [ %.5, %bb.ad ], [ %.4.lcssa, %bb.u ]
  %.4.i.ph = phi ptr [ %.1113.i, %bb.ad ], [ %.0112.i.lcssa, %bb.u ]
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %.0100.i408.lcssa671.sink
  store i32 %.sink, ptr %i.hn, align 4, !tbaa !3, !noalias !91
  br label %_ZN13duckdb_brotliL22StoreAndFindMatchesH10EPNS_3H10EPKhmmmmPmPNS_13BackwardMatchE.exit

_ZN13duckdb_brotliL22StoreAndFindMatchesH10EPNS_3H10EPKhmmmmPmPNS_13BackwardMatchE.exit: ; preds = %_ZN13duckdb_brotliL22StoreAndFindMatchesH10EPNS_3H10EPKhmmmmPmPNS_13BackwardMatchE.exit.sink.split, %bb.ac, %._crit_edge, %.thread263
  %.2257 = phi i64 [ %.0255.lcssa, %.thread263 ], [ %.5, %bb.ac ], [ %.4.lcssa, %._crit_edge ], [ %.2257.ph, %_ZN13duckdb_brotliL22StoreAndFindMatchesH10EPNS_3H10EPKhmmmmPmPNS_13BackwardMatchE.exit.sink.split ]
  %.4.i = phi ptr [ %.073.i.lcssa, %.thread263 ], [ %.1113.i, %bb.ac ], [ %.0112.i.lcssa, %._crit_edge ], [ %.4.i.ph, %_ZN13duckdb_brotliL22StoreAndFindMatchesH10EPNS_3H10EPKhmmmmPmPNS_13BackwardMatchE.exit.sink.split ] ; 3 uses
  store <4 x i32> splat (i32 268435455), ptr %i.a, align 16, !tbaa !3, !noalias !63
  store <4 x i32> splat (i32 268435455), ptr %i.bj, align 16, !tbaa !3, !noalias !63
  store <4 x i32> splat (i32 268435455), ptr %i.bk, align 16, !tbaa !3, !noalias !63
  store <4 x i32> splat (i32 268435455), ptr %i.bl, align 16, !tbaa !3, !noalias !63
  store <4 x i32> splat (i32 268435455), ptr %i.bm, align 16, !tbaa !3, !noalias !63
  store <4 x i32> splat (i32 268435455), ptr %i.bn, align 16, !tbaa !3, !noalias !63
  store <4 x i32> splat (i32 268435455), ptr %i.bo, align 16, !tbaa !3, !noalias !63
  store <4 x i32> splat (i32 268435455), ptr %i.bp, align 16, !tbaa !3, !noalias !63
  store <4 x i32> splat (i32 268435455), ptr %i.bq, align 16, !tbaa !3, !noalias !63
  store i32 268435455, ptr %i.br, align 16, !tbaa !3, !noalias !63
  store i32 268435455, ptr %i.bs, align 4, !tbaa !3, !noalias !63
  %i.ho = add i64 %.2257, 1
  %i.hp = call noundef i64 @llvm.umax.i64(i64 %i.ho, i64 4) ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %3, i64 %i.cy ; 4 uses
  %i.hr = call noundef i32 @_ZN13duckdb_brotli36BrotliFindAllStaticDictionaryMatchesEPKNS_23BrotliEncoderDictionaryEPKhmmPj(ptr noundef %i.cw, ptr noundef %i.hq, i64 noundef %i.hp, i64 noundef %i.cx, ptr noundef nonnull %i.a)
  %.not82.i = icmp eq i32 %i.hr, 0
  br i1 %.not82.i, label %_ZN13duckdb_brotliL17FindAllMatchesH10EPNS_3H10EPKNS_23BrotliEncoderDictionaryEPKhmmmmmPK19BrotliEncoderParamsPNS_13BackwardMatchE.exit, label %bb.am

bb.am:                                            ; preds = %_ZN13duckdb_brotliL22StoreAndFindMatchesH10EPNS_3H10EPKhmmmmPmPNS_13BackwardMatchE.exit
  %i.hs = call noundef i64 @llvm.umin.i64(i64 %i.cx, i64 37) ; 2 uses
  %.not83.i424 = icmp ugt i64 %i.hp, %i.hs
  br i1 %.not83.i424, label %_ZN13duckdb_brotliL17FindAllMatchesH10EPNS_3H10EPKNS_23BrotliEncoderDictionaryEPKhmmmmmPK19BrotliEncoderParamsPNS_13BackwardMatchE.exit, label %.lr.ph428

.lr.ph428:                                        ; preds = %bb.am
  %i.ht = add i64 %i.aw, %i.bz
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph428, %bb.aq
  %.0.i426 = phi i64 [ %i.hp, %.lr.ph428 ], [ %i.il, %bb.aq ] ; 5 uses
  %.5.i425 = phi ptr [ %.4.i, %.lr.ph428 ], [ %.7.i, %bb.aq ] ; 5 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0.i426
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !3, !noalias !63 ; 3 uses
  %i.hw = icmp ult i32 %i.hv, 268435455
  br i1 %i.hw, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.hx = lshr i32 %i.hv, 5
  %i.hy = zext nneg i32 %i.hx to i64
  %i.hz = add i64 %i.ht, %i.hy                    ; 2 uses
  %i.ia = load i64, ptr %i.ax, align 8, !tbaa !95, !noalias !63
  %.not84.i = icmp ugt i64 %i.hz, %i.ia
  br i1 %.not84.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ib = getelementptr inbounds nuw i8, ptr %.5.i425, i64 8
  %i.ic = and i32 %i.hv, 31
  %i.id = zext nneg i32 %i.ic to i64              ; 2 uses
  %i.ie = trunc i64 %i.hz to i32
  store i32 %i.ie, ptr %.5.i425, align 4, !tbaa !69
  %i.if = shl i64 %.0.i426, 5
  %i.ig = icmp eq i64 %.0.i426, %i.id
  %i.ih = select i1 %i.ig, i64 0, i64 %i.id
  %i.ii = or disjoint i64 %i.ih, %i.if
  %i.ij = trunc i64 %i.ii to i32
  %i.ik = getelementptr inbounds nuw i8, ptr %.5.i425, i64 4
  store i32 %i.ij, ptr %i.ik, align 4, !tbaa !71
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  %.7.i = phi ptr [ %.5.i425, %bb.an ], [ %i.ib, %bb.ap ], [ %.5.i425, %bb.ao ] ; 2 uses
  %i.il = add nuw nsw i64 %.0.i426, 1
  %exitcond = icmp eq i64 %.0.i426, %i.hs
  br i1 %exitcond, label %_ZN13duckdb_brotliL17FindAllMatchesH10EPNS_3H10EPKNS_23BrotliEncoderDictionaryEPKhmmmmmPK19BrotliEncoderParamsPNS_13BackwardMatchE.exit, label %bb.an, !llvm.loop !96

_ZN13duckdb_brotliL17FindAllMatchesH10EPNS_3H10EPKNS_23BrotliEncoderDictionaryEPKhmmmmmPK19BrotliEncoderParamsPNS_13BackwardMatchE.exit: ; preds = %bb.aq, %bb.am, %_ZN13duckdb_brotliL22StoreAndFindMatchesH10EPNS_3H10EPKhmmmmPmPNS_13BackwardMatchE.exit
  %.8.i = phi ptr [ %.4.i, %_ZN13duckdb_brotliL22StoreAndFindMatchesH10EPNS_3H10EPKhmmmmPmPNS_13BackwardMatchE.exit ], [ %.4.i, %bb.am ], [ %.7.i, %bb.aq ] ; 2 uses
  %i.im = ptrtoint ptr %.8.i to i64
  %i.in = sub i64 %i.im, %i.ay
  %i.io = ashr exact i64 %i.in, 3                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13, !noalias !63
  %i.ip = load i64, ptr %i.p, align 8, !tbaa !47  ; 2 uses
  %.not146 = icmp eq i64 %i.ip, 0
  br i1 %.not146, label %bb.bl, label %bb.ar

bb.ar:                                            ; preds = %_ZN13duckdb_brotliL17FindAllMatchesH10EPNS_3H10EPKNS_23BrotliEncoderDictionaryEPKhmmmmmPK19BrotliEncoderParamsPNS_13BackwardMatchE.exit
  %i.iq = load i64, ptr %i.ax, align 8, !tbaa !95
  %i.ir = load i64, ptr %i.q, align 8, !tbaa !46, !noalias !97
  %.0.copyload.i93.i = load i64, ptr %i.hq, align 1, !alias.scope !100
  %.neg326 = add i64 %i.ir, %i.bz
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.bf
  %.0.i150457 = phi i64 [ 0, %bb.ar ], [ %i.mk, %bb.bf ] ; 3 uses
  %.026.i456 = phi i64 [ 0, %bb.ar ], [ %i.mq, %bb.bf ] ; 3 uses
  %.027.i455 = phi i64 [ 3, %bb.ar ], [ %.128.i, %bb.bf ] ; 2 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.026.i456
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !103, !noalias !97 ; 7 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.026.i456
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !35, !noalias !97
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.0.i150457
  %i.ix = sub i64 64, %.0.i150457                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.iy = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !105, !noalias !100
  %i.ja = getelementptr inbounds nuw i8, ptr %i.it, i64 12
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !107, !noalias !100
  %i.jc = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !108, !noalias !100 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.it, i64 20
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !109, !noalias !100 ; 2 uses
  %i.jg = sub i32 64, %i.jd
  %i.jh = sub i32 32, %i.jf
  %i.ji = lshr i32 -1, %i.jh
  %i.jj = sub i32 64, %i.jb
  %i.jk = zext nneg i32 %i.jj to i64
  %i.jl = lshr i64 -1, %i.jk
  %i.jm = getelementptr inbounds nuw i8, ptr %i.it, i64 24 ; 2 uses
  %i.jn = shl nuw i32 1, %i.jf
  %i.jo = zext i32 %i.jn to i64
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.jo ; 2 uses
  %i.jq = shl nuw i32 1, %i.jd
  %i.jr = zext i32 %i.jq to i64
  %i.js = getelementptr inbounds nuw [2 x i8], ptr %i.jp, i64 %i.jr ; 2 uses
  %i.jt = and i64 %.0.copyload.i93.i, %i.jl
  %i.ju = mul i64 %i.jt, 2297779722762296275
  %i.jv = zext nneg i32 %i.jg to i64
  %i.jw = lshr i64 %i.ju, %i.jv                   ; 2 uses
  %i.jx = trunc i64 %i.jw to i32
  %i.jy = and i32 %i.ji, %i.jx
  %i.jz = and i64 %i.jw, 4294967295
  %i.ka = getelementptr inbounds nuw [2 x i8], ptr %i.jp, i64 %i.jz
  %i.kb = load i16, ptr %i.ka, align 2, !tbaa !43, !noalias !100 ; 2 uses
  %i.kc = zext i16 %i.kb to i32
  %i.kd = zext i32 %i.jy to i64
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.kd
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !3, !noalias !100
  %i.kg = add i32 %i.kf, %i.kc
  %i.kh = zext i32 %i.kg to i64
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.kh
  %.not542 = icmp eq i16 %i.kb, -1
  %i.kj = getelementptr inbounds nuw i8, ptr %i.it, i64 4
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !110, !noalias !100
  %i.kl = zext i32 %i.kk to i64
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.kl ; 2 uses
  %i.kn = load i32, ptr %i.it, align 4, !tbaa !111, !noalias !100
  %i.ko = icmp eq i32 %i.kn, -558043680
  br i1 %i.ko, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.0.copyload.i187 = load ptr, ptr %i.km, align 1, !noalias !100
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.081.i = phi ptr [ %.0.copyload.i187, %bb.at ], [ %i.km, %bb.as ] ; 2 uses
  br i1 %.not542, label %_ZN13duckdb_brotliL32FindAllCompoundDictionaryMatchesEPKNS_18PreparedDictionaryEPKhmmmmmmPNS_13BackwardMatchEm.exit, label %.lr.ph451

.lr.ph451:                                        ; preds = %bb.au
  %i.kp = zext i32 %i.iz to i64
  br label %bb.av

bb.av:                                            ; preds = %.lr.ph451, %bb.bd
  %.075.i449 = phi i64 [ 0, %.lr.ph451 ], [ %.2.i169, %bb.bd ] ; 5 uses
  %.077.i448 = phi ptr [ %i.ki, %.lr.ph451 ], [ %i.kr, %bb.bd ] ; 2 uses
  %.078.i447 = phi i64 [ %.027.i455, %.lr.ph451 ], [ %.280.i, %bb.bd ] ; 8 uses
  %.082.i446 = phi ptr [ %i.iw, %.lr.ph451 ], [ %.284.i, %bb.bd ] ; 7 uses
  %i.kq = load i32, ptr %.077.i448, align 4, !tbaa !3, !noalias !100 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.077.i448, i64 4
  %i.ks = and i32 %i.kq, 2147483647
  %i.kt = zext nneg i32 %i.ks to i64              ; 4 uses
  %i.ku = add i64 %i.iv, %i.kt
  %i.kv = sub i64 %.neg326, %i.ku                 ; 2 uses
  %i.kw = sub nsw i64 %i.kp, %i.kt
  %i.kx = call i64 @llvm.umin.i64(i64 %i.kw, i64 %i.cx) ; 4 uses
  %i.ky = icmp ugt i64 %i.kv, %i.iq
  br i1 %i.ky, label %bb.bd, label %bb.aw, !llvm.loop !112

bb.aw:                                            ; preds = %bb.av
  %i.kz = add i64 %.078.i447, %i.cy               ; 2 uses
  %i.la = icmp ule i64 %i.kz, %4
  %.not.i167 = icmp ult i64 %.078.i447, %i.kx
  %or.cond.i168 = select i1 %i.la, i1 %.not.i167, i1 false
  br i1 %or.cond.i168, label %bb.ax, label %bb.bd, !llvm.loop !112

bb.ax:                                            ; preds = %bb.aw
  %i.lb = getelementptr inbounds nuw i8, ptr %3, i64 %i.kz
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !7, !alias.scope !100
  %i.ld = getelementptr i8, ptr %.081.i, i64 %.078.i447
  %i.le = getelementptr i8, ptr %i.ld, i64 %i.kt
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !7, !noalias !100
  %.not91.i = icmp eq i8 %i.lc, %i.lf
  br i1 %.not91.i, label %bb.ay, label %bb.bd, !llvm.loop !112

bb.ay:                                            ; preds = %bb.ax
  %i.lg = getelementptr inbounds nuw i8, ptr %.081.i, i64 %i.kt ; 4 uses
  %i.lh = icmp ugt i64 %i.kx, 7
  br i1 %i.lh, label %.lr.ph434, label %.lr.ph442.preheader

.preheader331:                                    ; preds = %bb.ba
  %.not.i.i178438 = icmp eq i64 %i.lr, 0
  br i1 %.not.i.i178438, label %.critedge.i.i179, label %.lr.ph442.preheader

.lr.ph442.preheader:                              ; preds = %bb.ay, %.preheader331
  %.022.i.i173.lcssa657 = phi i64 [ %i.lr, %.preheader331 ], [ %i.kx, %bb.ay ] ; 2 uses
  %.024.i.i172.lcssa656 = phi ptr [ %i.lp, %.preheader331 ], [ %i.hq, %bb.ay ]
  %.026.i.i171.lcssa655 = phi ptr [ %i.lq, %.preheader331 ], [ %i.lg, %bb.ay ] ; 2 uses
  %scevgep586 = getelementptr i8, ptr %.026.i.i171.lcssa655, i64 %.022.i.i173.lcssa657
  br label %.lr.ph442

.lr.ph434:                                        ; preds = %bb.ay, %bb.ba
  %.022.i.i173432 = phi i64 [ %i.lr, %bb.ba ], [ %i.kx, %bb.ay ]
  %.024.i.i172431 = phi ptr [ %i.lp, %bb.ba ], [ %i.hq, %bb.ay ] ; 2 uses
  %.026.i.i171430 = phi ptr [ %i.lq, %bb.ba ], [ %i.lg, %bb.ay ] ; 3 uses
  %.0.copyload.i92.i = load i64, ptr %.024.i.i172431, align 1, !alias.scope !100 ; 2 uses
  %.0.copyload.i.i = load i64, ptr %.026.i.i171430, align 1, !noalias !100 ; 2 uses
  %.not30.i.i184 = icmp eq i64 %.0.copyload.i92.i, %.0.copyload.i.i
  br i1 %.not30.i.i184, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %.lr.ph434
  %i.li = xor i64 %.0.copyload.i.i, %.0.copyload.i92.i
  %i.lj = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.li, i1 true)
  %i.lk = ptrtoint ptr %.026.i.i171430 to i64
  %i.ll = ptrtoint ptr %i.lg to i64
  %i.lm = sub i64 %i.lk, %i.ll
  %i.ln = lshr i64 %i.lj, 3
  %i.lo = add i64 %i.lm, %i.ln
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i180

bb.ba:                                            ; preds = %.lr.ph434
  %i.lp = getelementptr inbounds nuw i8, ptr %.024.i.i172431, i64 8 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.026.i.i171430, i64 8 ; 3 uses
  %i.lr = add i64 %.022.i.i173432, -8             ; 4 uses
  %i.ls = icmp ugt i64 %i.lr, 7
  br i1 %i.ls, label %.lr.ph434, label %.preheader331, !llvm.loop !67

.lr.ph442:                                        ; preds = %.lr.ph442.preheader, %bb.bb
  %.123.i.i177441 = phi i64 [ %i.lw, %bb.bb ], [ %.022.i.i173.lcssa657, %.lr.ph442.preheader ]
  %.125.i.i176440 = phi ptr [ %i.lx, %bb.bb ], [ %.024.i.i172.lcssa656, %.lr.ph442.preheader ] ; 2 uses
  %.228.i.i175439 = phi ptr [ %i.ly, %bb.bb ], [ %.026.i.i171.lcssa655, %.lr.ph442.preheader ] ; 3 uses
  %i.lt = load i8, ptr %.228.i.i175439, align 1, !tbaa !7, !noalias !100
  %i.lu = load i8, ptr %.125.i.i176440, align 1, !tbaa !7, !alias.scope !100
  %i.lv = icmp eq i8 %i.lt, %i.lu
  br i1 %i.lv, label %bb.bb, label %.critedge.i.i179

bb.bb:                                            ; preds = %.lr.ph442
  %i.lw = add nsw i64 %.123.i.i177441, -1         ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.125.i.i176440, i64 1
  %i.ly = getelementptr inbounds nuw i8, ptr %.228.i.i175439, i64 1
  %.not.i.i178 = icmp eq i64 %i.lw, 0
  br i1 %.not.i.i178, label %.critedge.i.i179, label %.lr.ph442, !llvm.loop !68

.critedge.i.i179:                                 ; preds = %bb.bb, %.lr.ph442, %.preheader331
  %.228.i.i175.lcssa = phi ptr [ %i.lq, %.preheader331 ], [ %.228.i.i175439, %.lr.ph442 ], [ %scevgep586, %bb.bb ]
  %i.lz = ptrtoint ptr %.228.i.i175.lcssa to i64
  %i.ma = ptrtoint ptr %i.lg to i64
  %i.mb = sub i64 %i.lz, %i.ma
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i180

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i180: ; preds = %bb.az, %.critedge.i.i179
  %.2.i.i181 = phi i64 [ %i.lo, %bb.az ], [ %i.mb, %.critedge.i.i179 ] ; 3 uses
  %i.mc = icmp ugt i64 %.2.i.i181, %.078.i447
end_hunk_0
begin_hunk_1_@_ZN13duckdb_brotli38BrotliCreateHqZopfliBackwardReferencesEPNS_13MemoryManagerEmmPKhmS3_PK19BrotliEncoderParamsPNS_6HasherEPiPmPNS_7CommandESA_SA_:bb.a
  br label %.lr.ph497

.lr.ph489:                                        ; preds = %bb.ab, %bb.ad
  %.022.i.i488 = phi i64 [ %i.fo, %bb.ad ], [ %i.fd, %bb.ab ]
  %.024.i.i487 = phi ptr [ %i.fm, %bb.ad ], [ %i.fc, %bb.ab ] ; 2 uses
  %.026.i.i486 = phi ptr [ %i.fn, %bb.ad ], [ %i.fa, %bb.ab ] ; 3 uses
  %.0.copyload.i244 = load i64, ptr %.024.i.i487, align 1, !noalias !206 ; 2 uses
  %.0.copyload.i = load i64, ptr %.026.i.i486, align 1, !noalias !206 ; 2 uses
  %.not30.i.i = icmp eq i64 %.0.copyload.i244, %.0.copyload.i
  br i1 %.not30.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph489
  %i.ff = xor i64 %.0.copyload.i, %.0.copyload.i244
  %i.fg = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ff, i1 true)
  %i.fh = ptrtoint ptr %.026.i.i486 to i64
  %i.fi = ptrtoint ptr %i.fa to i64
  %i.fj = sub i64 %i.fh, %i.fi
  %i.fk = lshr i64 %i.fg, 3
  %i.fl = add i64 %i.fj, %i.fk
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i

bb.ad:                                            ; preds = %.lr.ph489
  %i.fm = getelementptr inbounds nuw i8, ptr %.024.i.i487, i64 8 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.026.i.i486, i64 8 ; 2 uses
  %i.fo = add i64 %.022.i.i488, -8                ; 3 uses
  %i.fp = icmp ugt i64 %i.fo, 7
  br i1 %i.fp, label %.lr.ph489, label %.preheader428, !llvm.loop !67

.lr.ph497:                                        ; preds = %.lr.ph497.preheader, %bb.ae
  %.123.i.i496 = phi i64 [ %i.ft, %bb.ae ], [ %.022.i.i.lcssa, %.lr.ph497.preheader ]
  %.125.i.i495 = phi ptr [ %i.fu, %bb.ae ], [ %.024.i.i.lcssa, %.lr.ph497.preheader ] ; 2 uses
  %.228.i.i494 = phi ptr [ %i.fv, %bb.ae ], [ %.026.i.i.lcssa, %.lr.ph497.preheader ] ; 3 uses
  %i.fq = load i8, ptr %.228.i.i494, align 1, !tbaa !7, !alias.scope !196, !noalias !202
  %i.fr = load i8, ptr %.125.i.i495, align 1, !tbaa !7, !alias.scope !196, !noalias !202
  %i.fs = icmp eq i8 %i.fq, %i.fr
  br i1 %i.fs, label %bb.ae, label %.critedge.i.i

bb.ae:                                            ; preds = %.lr.ph497
  %i.ft = add nsw i64 %.123.i.i496, -1            ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.125.i.i495, i64 1
  %i.fv = getelementptr inbounds nuw i8, ptr %.228.i.i494, i64 1
  %.not.i.i = icmp eq i64 %i.ft, 0
  br i1 %.not.i.i, label %.critedge.i.i, label %.lr.ph497, !llvm.loop !68

.critedge.i.i:                                    ; preds = %bb.ae, %.lr.ph497, %.preheader428
  %.228.i.i.lcssa = phi ptr [ %.026.i.i.lcssa, %.preheader428 ], [ %.228.i.i494, %.lr.ph497 ], [ %scevgep681, %bb.ae ]
  %i.fw = ptrtoint ptr %.228.i.i.lcssa to i64
  %i.fx = ptrtoint ptr %i.fa to i64
  %i.fy = sub i64 %i.fw, %i.fx
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i: ; preds = %bb.ac, %.critedge.i.i
  %.2.i.i = phi i64 [ %i.fl, %bb.ac ], [ %i.fy, %.critedge.i.i ]
  %i.fz = add i64 %.2.i.i, %i.ez                  ; 8 uses
  %.not.i241 = icmp eq ptr %.0112.i503, null
  br i1 %.not.i241, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i
  %i.ga = icmp ugt i64 %i.fz, %.4502
  br i1 %i.ga, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.gb = getelementptr inbounds nuw i8, ptr %.0112.i503, i64 8
  %i.gc = trunc i64 %i.et to i32
  store i32 %i.gc, ptr %.0112.i503, align 4, !tbaa !69, !alias.scope !198, !noalias !207
  %.tr.i.i = trunc i64 %i.fz to i32
  %i.gd = shl i32 %.tr.i.i, 5
  %i.ge = getelementptr inbounds nuw i8, ptr %.0112.i503, i64 4
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !71, !alias.scope !198, !noalias !207
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i
  %.5 = phi i64 [ %.4502, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i ], [ %i.fz, %bb.ag ], [ %.4502, %bb.af ] ; 4 uses
  %.1113.i = phi ptr [ null, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i ], [ %i.gb, %bb.ag ], [ %.0112.i503, %bb.af ] ; 4 uses
  %.not118.i = icmp ult i64 %i.fz, %i.ed
  br i1 %.not118.i, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.ee, label %bb.aj, label %_ZN13duckdb_brotliL22StoreAndFindMatchesH10EPNS_3H10EPKhmmmmPmPNS_13BackwardMatchE.exit

bb.aj:                                            ; preds = %bb.ai
  %i.gf = and i64 %.0108.i510, %i.en
  %.idx = shl nuw nsw i64 %i.gf, 3
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.idx ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !3, !noalias !206
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %.0104.i505
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !3, !noalias !206
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !3, !noalias !206
  br label %_ZN13duckdb_brotliL22StoreAndFindMatchesH10EPNS_3H10EPKhmmmmPmPNS_13BackwardMatchE.exit.sink.split

bb.ak:                                            ; preds = %bb.ah
  %i.gl = getelementptr i8, ptr %i.ef, i64 %i.fz
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !7, !alias.scope !196, !noalias !202
  %i.gn = getelementptr i8, ptr %i.fb, i64 %i.fz
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !7, !alias.scope !196, !noalias !202
  %i.gp = icmp ugt i8 %i.gm, %i.go
  br i1 %i.gp, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  br i1 %i.ee, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %.0104.i505
  store i32 %.0108.i.in504, ptr %i.gq, align 4, !tbaa !3, !noalias !206
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.gr = and i64 %.0108.i510, %i.en
  %i.gs = shl nuw nsw i64 %i.gr, 1
  %i.gt = or disjoint i64 %i.gs, 1                ; 2 uses
  br label %bb.ar

bb.ao:                                            ; preds = %bb.ak
  br i1 %i.ee, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %.0100.i506
  store i32 %.0108.i.in504, ptr %i.gu, align 4, !tbaa !3, !noalias !206
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.gv = and i64 %.0108.i510, %i.en
  %i.gw = shl nuw nsw i64 %i.gv, 1                ; 2 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.an
  %.pn.i = phi i64 [ %i.gt, %bb.an ], [ %i.gw, %bb.aq ]
  %.1105.i = phi i64 [ %i.gt, %bb.an ], [ %.0104.i505, %bb.aq ] ; 2 uses
  %.1101.i = phi i64 [ %.0100.i506, %bb.an ], [ %i.gw, %bb.aq ] ; 2 uses
  %.197.i = phi i64 [ %i.fz, %bb.an ], [ %.096.i507, %bb.aq ]
  %.195.i = phi i64 [ %.094.i508, %bb.an ], [ %i.fz, %bb.aq ]
  %.1109.in.in.i = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %.pn.i
  %.1109.in.i = load i32, ptr %.1109.in.in.i, align 4, !tbaa !3, !noalias !206 ; 2 uses
  %i.gx = add nsw i64 %.093.i509, -1
  %.0108.i = zext i32 %.1109.in.i to i64          ; 2 uses
  %i.gy = icmp eq i64 %i.ay, %.0108.i
  br i1 %i.gy, label %._crit_edge, label %.lr.ph511, !llvm.loop !94

_ZN13duckdb_brotliL22StoreAndFindMatchesH10EPNS_3H10EPKhmmmmPmPNS_13BackwardMatchE.exit.sink.split: ; preds = %bb.aa, %bb.aj
  %.0100.i506.lcssa784.sink = phi i64 [ %.0100.i506, %bb.aj ], [ %.0100.i.lcssa, %bb.aa ]
  %.sink = phi i32 [ %i.gk, %bb.aj ], [ %i.ew, %bb.aa ]
  %.2347.ph = phi i64 [ %.5, %bb.aj ], [ %.4.lcssa, %bb.aa ]
  %.4.i.ph = phi ptr [ %.1113.i, %bb.aj ], [ %.0112.i.lcssa, %bb.aa ]
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %.0100.i506.lcssa784.sink
  store i32 %.sink, ptr %i.gz, align 4, !tbaa !3, !noalias !206
  br label %_ZN13duckdb_brotliL22StoreAndFindMatchesH10EPNS_3H10EPKhmmmmPmPNS_13BackwardMatchE.exit

_ZN13duckdb_brotliL22StoreAndFindMatchesH10EPNS_3H10EPKhmmmmPmPNS_13BackwardMatchE.exit: ; preds = %_ZN13duckdb_brotliL22StoreAndFindMatchesH10EPNS_3H10EPKhmmmmPmPNS_13BackwardMatchE.exit.sink.split, %bb.ai, %._crit_edge, %.thread357
  %.2347 = phi i64 [ %.0345.lcssa, %.thread357 ], [ %.5, %bb.ai ], [ %.4.lcssa, %._crit_edge ], [ %.2347.ph, %_ZN13duckdb_brotliL22StoreAndFindMatchesH10EPNS_3H10EPKhmmmmPmPNS_13BackwardMatchE.exit.sink.split ]
  %.4.i = phi ptr [ %.073.i.lcssa, %.thread357 ], [ %.1113.i, %bb.ai ], [ %.0112.i.lcssa, %._crit_edge ], [ %.4.i.ph, %_ZN13duckdb_brotliL22StoreAndFindMatchesH10EPNS_3H10EPKhmmmmPmPNS_13BackwardMatchE.exit.sink.split ] ; 3 uses
  store <4 x i32> splat (i32 268435455), ptr %i.a, align 16, !tbaa !3, !noalias !190
  store <4 x i32> splat (i32 268435455), ptr %i.ao, align 16, !tbaa !3, !noalias !190
  store <4 x i32> splat (i32 268435455), ptr %i.ap, align 16, !tbaa !3, !noalias !190
  store <4 x i32> splat (i32 268435455), ptr %i.aq, align 16, !tbaa !3, !noalias !190
  store <4 x i32> splat (i32 268435455), ptr %i.ar, align 16, !tbaa !3, !noalias !190
  store <4 x i32> splat (i32 268435455), ptr %i.as, align 16, !tbaa !3, !noalias !190
  store <4 x i32> splat (i32 268435455), ptr %i.at, align 16, !tbaa !3, !noalias !190
  store <4 x i32> splat (i32 268435455), ptr %i.au, align 16, !tbaa !3, !noalias !190
  store <4 x i32> splat (i32 268435455), ptr %i.av, align 16, !tbaa !3, !noalias !190
  store i32 268435455, ptr %i.aw, align 16, !tbaa !3, !noalias !190
  store i32 268435455, ptr %i.ax, align 4, !tbaa !3, !noalias !190
  %i.ha = add i64 %.2347, 1
  %i.hb = call noundef i64 @llvm.umax.i64(i64 %i.ha, i64 4) ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %3, i64 %i.ck ; 4 uses
  %i.hd = call noundef i32 @_ZN13duckdb_brotli36BrotliFindAllStaticDictionaryMatchesEPKNS_23BrotliEncoderDictionaryEPKhmmPj(ptr noundef %i.ch, ptr noundef %i.hc, i64 noundef %i.hb, i64 noundef %i.bc, ptr noundef nonnull %i.a)
  %.not82.i = icmp eq i32 %i.hd, 0
  br i1 %.not82.i, label %_ZN13duckdb_brotliL17FindAllMatchesH10EPNS_3H10EPKNS_23BrotliEncoderDictionaryEPKhmmmmmPK19BrotliEncoderParamsPNS_13BackwardMatchE.exit, label %bb.as

bb.as:                                            ; preds = %_ZN13duckdb_brotliL22StoreAndFindMatchesH10EPNS_3H10EPKhmmmmPmPNS_13BackwardMatchE.exit
  %i.he = call noundef i64 @llvm.umin.i64(i64 %i.bc, i64 37) ; 2 uses
  %.not83.i522 = icmp ugt i64 %i.hb, %i.he
  br i1 %.not83.i522, label %_ZN13duckdb_brotliL17FindAllMatchesH10EPNS_3H10EPKNS_23BrotliEncoderDictionaryEPKhmmmmmPK19BrotliEncoderParamsPNS_13BackwardMatchE.exit, label %.lr.ph526

.lr.ph526:                                        ; preds = %bb.as
  %i.hf = add i64 %i.ak, %i.bb
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph526, %bb.aw
  %.0.i524 = phi i64 [ %i.hb, %.lr.ph526 ], [ %i.hx, %bb.aw ] ; 5 uses
  %.5.i523 = phi ptr [ %.4.i, %.lr.ph526 ], [ %.7.i, %bb.aw ] ; 5 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0.i524
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !3, !noalias !190 ; 3 uses
  %i.hi = icmp ult i32 %i.hh, 268435455
  br i1 %i.hi, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.hj = lshr i32 %i.hh, 5
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = add i64 %i.hf, %i.hk                    ; 2 uses
  %i.hm = load i64, ptr %i.al, align 8, !tbaa !95, !noalias !190
  %.not84.i = icmp ugt i64 %i.hl, %i.hm
  br i1 %.not84.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hn = getelementptr inbounds nuw i8, ptr %.5.i523, i64 8
  %i.ho = and i32 %i.hh, 31
  %i.hp = zext nneg i32 %i.ho to i64              ; 2 uses
  %i.hq = trunc i64 %i.hl to i32
  store i32 %i.hq, ptr %.5.i523, align 4, !tbaa !69
  %i.hr = shl i64 %.0.i524, 5
  %i.hs = icmp eq i64 %.0.i524, %i.hp
  %i.ht = select i1 %i.hs, i64 0, i64 %i.hp
  %i.hu = or disjoint i64 %i.ht, %i.hr
  %i.hv = trunc i64 %i.hu to i32
  %i.hw = getelementptr inbounds nuw i8, ptr %.5.i523, i64 4
  store i32 %i.hv, ptr %i.hw, align 4, !tbaa !71
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  %.7.i = phi ptr [ %.5.i523, %bb.at ], [ %i.hn, %bb.av ], [ %.5.i523, %bb.au ] ; 2 uses
  %i.hx = add nuw nsw i64 %.0.i524, 1
  %exitcond = icmp eq i64 %.0.i524, %i.he
  br i1 %exitcond, label %_ZN13duckdb_brotliL17FindAllMatchesH10EPNS_3H10EPKNS_23BrotliEncoderDictionaryEPKhmmmmmPK19BrotliEncoderParamsPNS_13BackwardMatchE.exit, label %bb.at, !llvm.loop !96

_ZN13duckdb_brotliL17FindAllMatchesH10EPNS_3H10EPKNS_23BrotliEncoderDictionaryEPKhmmmmmPK19BrotliEncoderParamsPNS_13BackwardMatchE.exit: ; preds = %bb.aw, %bb.as, %_ZN13duckdb_brotliL22StoreAndFindMatchesH10EPNS_3H10EPKhmmmmPmPNS_13BackwardMatchE.exit
  %.8.i = phi ptr [ %.4.i, %_ZN13duckdb_brotliL22StoreAndFindMatchesH10EPNS_3H10EPKhmmmmPmPNS_13BackwardMatchE.exit ], [ %.4.i, %bb.as ], [ %.7.i, %bb.aw ] ; 2 uses
  %i.hy = ptrtoint ptr %.8.i to i64
  %i.hz = ptrtoint ptr %i.cj to i64
  %i.ia = sub i64 %i.hy, %i.hz
  %i.ib = ashr exact i64 %i.ia, 3                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13, !noalias !190
  %i.ic = load i64, ptr %i.u, align 8, !tbaa !47  ; 2 uses
  %.not229 = icmp eq i64 %i.ic, 0
  br i1 %.not229, label %bb.br, label %bb.ax

bb.ax:                                            ; preds = %_ZN13duckdb_brotliL17FindAllMatchesH10EPNS_3H10EPKNS_23BrotliEncoderDictionaryEPKhmmmmmPK19BrotliEncoderParamsPNS_13BackwardMatchE.exit
  %i.id = load i64, ptr %i.al, align 8, !tbaa !95
  %i.ie = getelementptr i8, ptr %i.cj, i64 -512   ; 4 uses
  %i.if = load i64, ptr %i.v, align 8, !tbaa !46, !noalias !208
  %.0.copyload.i93.i = load i64, ptr %i.hc, align 1, !alias.scope !211
  %.neg422 = add i64 %i.if, %i.bb
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.bl
  %.0.i231555 = phi i64 [ 0, %bb.ax ], [ %i.ly, %bb.bl ] ; 3 uses
  %.026.i554 = phi i64 [ 0, %bb.ax ], [ %i.me, %bb.bl ] ; 3 uses
  %.027.i553 = phi i64 [ 3, %bb.ax ], [ %.128.i, %bb.bl ] ; 2 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.026.i554
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !103, !noalias !208 ; 7 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.026.i554
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !35, !noalias !208
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %.0.i231555
  %i.il = sub i64 64, %.0.i231555                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %i.im = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.in = load i32, ptr %i.im, align 4, !tbaa !105, !noalias !211
  %i.io = getelementptr inbounds nuw i8, ptr %i.ih, i64 12
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !107, !noalias !211
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !108, !noalias !211 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ih, i64 20
  %i.it = load i32, ptr %i.is, align 4, !tbaa !109, !noalias !211 ; 2 uses
  %i.iu = sub i32 64, %i.ir
  %i.iv = sub i32 32, %i.it
  %i.iw = lshr i32 -1, %i.iv
  %i.ix = sub i32 64, %i.ip
  %i.iy = zext nneg i32 %i.ix to i64
  %i.iz = lshr i64 -1, %i.iy
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ih, i64 24 ; 2 uses
  %i.jb = shl nuw i32 1, %i.it
  %i.jc = zext i32 %i.jb to i64
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.jc ; 2 uses
  %i.je = shl nuw i32 1, %i.ir
  %i.jf = zext i32 %i.je to i64
  %i.jg = getelementptr inbounds nuw [2 x i8], ptr %i.jd, i64 %i.jf ; 2 uses
  %i.jh = and i64 %.0.copyload.i93.i, %i.iz
  %i.ji = mul i64 %i.jh, 2297779722762296275
  %i.jj = zext nneg i32 %i.iu to i64
  %i.jk = lshr i64 %i.ji, %i.jj                   ; 2 uses
  %i.jl = trunc i64 %i.jk to i32
  %i.jm = and i32 %i.iw, %i.jl
  %i.jn = and i64 %i.jk, 4294967295
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %i.jd, i64 %i.jn
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !43, !noalias !211 ; 2 uses
  %i.jq = zext i16 %i.jp to i32
  %i.jr = zext i32 %i.jm to i64
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.jr
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !3, !noalias !211
  %i.ju = add i32 %i.jt, %i.jq
  %i.jv = zext i32 %i.ju to i64
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.jv
  %.not636 = icmp eq i16 %i.jp, -1
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ih, i64 4
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !110, !noalias !211
  %i.jz = zext i32 %i.jy to i64
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.jz ; 2 uses
  %i.kb = load i32, ptr %i.ih, align 4, !tbaa !111, !noalias !211
  %i.kc = icmp eq i32 %i.kb, -558043680
  br i1 %i.kc, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.0.copyload.i268 = load ptr, ptr %i.ka, align 1, !noalias !211
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.081.i = phi ptr [ %.0.copyload.i268, %bb.az ], [ %i.ka, %bb.ay ] ; 2 uses
  br i1 %.not636, label %_ZN13duckdb_brotliL32FindAllCompoundDictionaryMatchesEPKNS_18PreparedDictionaryEPKhmmmmmmPNS_13BackwardMatchEm.exit, label %.lr.ph549

.lr.ph549:                                        ; preds = %bb.ba
  %i.kd = zext i32 %i.in to i64
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph549, %bb.bj
  %.075.i547 = phi i64 [ 0, %.lr.ph549 ], [ %.2.i250, %bb.bj ] ; 5 uses
  %.077.i546 = phi ptr [ %i.jw, %.lr.ph549 ], [ %i.kf, %bb.bj ] ; 2 uses
  %.078.i545 = phi i64 [ %.027.i553, %.lr.ph549 ], [ %.280.i, %bb.bj ] ; 8 uses
  %.082.i544 = phi ptr [ %i.ik, %.lr.ph549 ], [ %.284.i, %bb.bj ] ; 7 uses
  %i.ke = load i32, ptr %.077.i546, align 4, !tbaa !3, !noalias !211 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.077.i546, i64 4
  %i.kg = and i32 %i.ke, 2147483647
  %i.kh = zext nneg i32 %i.kg to i64              ; 4 uses
  %i.ki = add i64 %i.ij, %i.kh
  %i.kj = sub i64 %.neg422, %i.ki                 ; 2 uses
  %i.kk = sub nsw i64 %i.kd, %i.kh
  %i.kl = call i64 @llvm.umin.i64(i64 %i.kk, i64 %i.bc) ; 4 uses
  %i.km = icmp ugt i64 %i.kj, %i.id
  br i1 %i.km, label %bb.bj, label %bb.bc, !llvm.loop !112

bb.bc:                                            ; preds = %bb.bb
  %i.kn = add i64 %.078.i545, %i.ck               ; 2 uses
  %i.ko = icmp ule i64 %i.kn, %4
  %.not.i248 = icmp ult i64 %.078.i545, %i.kl
  %or.cond.i249 = select i1 %i.ko, i1 %.not.i248, i1 false
  br i1 %or.cond.i249, label %bb.bd, label %bb.bj, !llvm.loop !112

bb.bd:                                            ; preds = %bb.bc
  %i.kp = getelementptr inbounds nuw i8, ptr %3, i64 %i.kn
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !7, !alias.scope !211
  %i.kr = getelementptr i8, ptr %.081.i, i64 %.078.i545
  %i.ks = getelementptr i8, ptr %i.kr, i64 %i.kh
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !7, !noalias !211
  %.not91.i = icmp eq i8 %i.kq, %i.kt
  br i1 %.not91.i, label %bb.be, label %bb.bj, !llvm.loop !112

bb.be:                                            ; preds = %bb.bd
  %i.ku = getelementptr inbounds nuw i8, ptr %.081.i, i64 %i.kh ; 4 uses
  %i.kv = icmp ugt i64 %i.kl, 7
  br i1 %i.kv, label %.lr.ph532, label %.lr.ph540.preheader

.preheader427:                                    ; preds = %bb.bg
  %.not.i.i259536 = icmp eq i64 %i.lf, 0
  br i1 %.not.i.i259536, label %.critedge.i.i260, label %.lr.ph540.preheader

.lr.ph540.preheader:                              ; preds = %bb.be, %.preheader427
  %.022.i.i254.lcssa766 = phi i64 [ %i.lf, %.preheader427 ], [ %i.kl, %bb.be ] ; 2 uses
  %.024.i.i253.lcssa765 = phi ptr [ %i.ld, %.preheader427 ], [ %i.hc, %bb.be ]
  %.026.i.i252.lcssa764 = phi ptr [ %i.le, %.preheader427 ], [ %i.ku, %bb.be ] ; 2 uses
  %scevgep682 = getelementptr i8, ptr %.026.i.i252.lcssa764, i64 %.022.i.i254.lcssa766
  br label %.lr.ph540

.lr.ph532:                                        ; preds = %bb.be, %bb.bg
  %.022.i.i254530 = phi i64 [ %i.lf, %bb.bg ], [ %i.kl, %bb.be ]
  %.024.i.i253529 = phi ptr [ %i.ld, %bb.bg ], [ %i.hc, %bb.be ] ; 2 uses
  %.026.i.i252528 = phi ptr [ %i.le, %bb.bg ], [ %i.ku, %bb.be ] ; 3 uses
  %.0.copyload.i92.i = load i64, ptr %.024.i.i253529, align 1, !alias.scope !211 ; 2 uses
  %.0.copyload.i.i = load i64, ptr %.026.i.i252528, align 1, !noalias !211 ; 2 uses
  %.not30.i.i265 = icmp eq i64 %.0.copyload.i92.i, %.0.copyload.i.i
  br i1 %.not30.i.i265, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph532
  %i.kw = xor i64 %.0.copyload.i.i, %.0.copyload.i92.i
  %i.kx = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.kw, i1 true)
  %i.ky = ptrtoint ptr %.026.i.i252528 to i64
  %i.kz = ptrtoint ptr %i.ku to i64
  %i.la = sub i64 %i.ky, %i.kz
  %i.lb = lshr i64 %i.kx, 3
  %i.lc = add i64 %i.la, %i.lb
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i261

bb.bg:                                            ; preds = %.lr.ph532
  %i.ld = getelementptr inbounds nuw i8, ptr %.024.i.i253529, i64 8 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.026.i.i252528, i64 8 ; 3 uses
  %i.lf = add i64 %.022.i.i254530, -8             ; 4 uses
  %i.lg = icmp ugt i64 %i.lf, 7
  br i1 %i.lg, label %.lr.ph532, label %.preheader427, !llvm.loop !67

.lr.ph540:                                        ; preds = %.lr.ph540.preheader, %bb.bh
  %.123.i.i258539 = phi i64 [ %i.lk, %bb.bh ], [ %.022.i.i254.lcssa766, %.lr.ph540.preheader ]
  %.125.i.i257538 = phi ptr [ %i.ll, %bb.bh ], [ %.024.i.i253.lcssa765, %.lr.ph540.preheader ] ; 2 uses
  %.228.i.i256537 = phi ptr [ %i.lm, %bb.bh ], [ %.026.i.i252.lcssa764, %.lr.ph540.preheader ] ; 3 uses
  %i.lh = load i8, ptr %.228.i.i256537, align 1, !tbaa !7, !noalias !211
  %i.li = load i8, ptr %.125.i.i257538, align 1, !tbaa !7, !alias.scope !211
  %i.lj = icmp eq i8 %i.lh, %i.li
  br i1 %i.lj, label %bb.bh, label %.critedge.i.i260

bb.bh:                                            ; preds = %.lr.ph540
  %i.lk = add nsw i64 %.123.i.i258539, -1         ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.125.i.i257538, i64 1
  %i.lm = getelementptr inbounds nuw i8, ptr %.228.i.i256537, i64 1
  %.not.i.i259 = icmp eq i64 %i.lk, 0
  br i1 %.not.i.i259, label %.critedge.i.i260, label %.lr.ph540, !llvm.loop !68

.critedge.i.i260:                                 ; preds = %bb.bh, %.lr.ph540, %.preheader427
  %.228.i.i256.lcssa = phi ptr [ %i.le, %.preheader427 ], [ %.228.i.i256537, %.lr.ph540 ], [ %scevgep682, %bb.bh ]
  %i.ln = ptrtoint ptr %.228.i.i256.lcssa to i64
  %i.lo = ptrtoint ptr %i.ku to i64
  %i.lp = sub i64 %i.ln, %i.lo
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i261

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i261: ; preds = %bb.bf, %.critedge.i.i260
end_hunk_1
begin_hunk_2_@_ZN13duckdb_brotli38BrotliCreateHqZopfliBackwardReferencesEPNS_13MemoryManagerEmmPKhmS3_PK19BrotliEncoderParamsPNS_6HasherEPiPmPNS_7CommandESA_SA_:bb.a
  %.sroa.4.0..sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %i.yy, i64 4
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.epil, align 4, !tbaa !3
  %.sroa.5.0..sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %i.yy, i64 8
  store i32 0, ptr %.sroa.5.0..sroa_idx.i.epil, align 4, !tbaa !3
  %.sroa.6.0..sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %i.yy, i64 12
  store float 1.700000e+38, ptr %.sroa.6.0..sroa_idx.i.epil, align 4, !tbaa !7
  br label %_ZN13duckdb_brotli21BrotliInitZopfliNodesEPNS_10ZopfliNodeEm.exit

_ZN13duckdb_brotli21BrotliInitZopfliNodesEPNS_10ZopfliNodeEm.exit: ; preds = %.lr.ph.i324.epil.preheader, %_ZN13duckdb_brotli21BrotliInitZopfliNodesEPNS_10ZopfliNodeEm.exit.loopexit.unr-lcssa, %bb.ct
  br i1 %i.yt, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %_ZN13duckdb_brotli21BrotliInitZopfliNodesEPNS_10ZopfliNodeEm.exit
  call fastcc void @_ZL34ZopfliCostModelSetFromLiteralCostsP15ZopfliCostModelmPKhm(ptr noundef %i.wt, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZL30ZopfliCostModelSetFromCommandsP15ZopfliCostModelmPKhmPKN13duckdb_brotli7CommandEmm.exit

bb.cv:                                            ; preds = %_ZN13duckdb_brotli21BrotliInitZopfliNodesEPNS_10ZopfliNodeEm.exit
  %i.yz = load i64, ptr %11, align 8, !tbaa !35   ; 2 uses
  %i.za = sub i64 %i.yz, %i.ww
  %.not.i325 = icmp eq i64 %i.yz, %i.ww
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6016) %i.xz, i8 0, i64 6016, i1 false)
  br i1 %.not.i325, label %vector.body890.preheader, label %.lr.ph79.i

.lr.ph79.i:                                       ; preds = %bb.cv, %._crit_edge.i
  %.07077.i = phi i64 [ %i.aaz, %._crit_edge.i ], [ 0, %bb.cv ] ; 2 uses
  %.07276.i = phi i64 [ %i.aay, %._crit_edge.i ], [ %i.yc, %bb.cv ] ; 4 uses
  %i.zb = getelementptr inbounds nuw [16 x i8], ptr %10, i64 %.07077.i ; 4 uses
  %i.zc = load i32, ptr %i.zb, align 4, !tbaa !37 ; 4 uses
  %i.zd = zext i32 %i.zc to i64                   ; 3 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zb, i64 4
  %i.zf = load i32, ptr %i.ze, align 4, !tbaa !40
  %i.zg = and i32 %i.zf, 33554431
  %i.zh = zext nneg i32 %i.zg to i64
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zb, i64 14
  %i.zj = load i16, ptr %i.zi, align 2, !tbaa !255
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zb, i64 12
  %i.zl = load i16, ptr %i.zk, align 4, !tbaa !256 ; 2 uses
  %i.zm = zext i16 %i.zl to i64
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %i.zm ; 2 uses
  %i.zo = load i32, ptr %i.zn, align 4, !tbaa !3
  %i.zp = add i32 %i.zo, 1
  store i32 %i.zp, ptr %i.zn, align 4, !tbaa !3
  %i.zq = icmp ugt i16 %i.zl, 127
  br i1 %i.zq, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %.lr.ph79.i
  %i.zr = and i16 %i.zj, 1023
  %i.zs = zext nneg i16 %i.zr to i64
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %i.yb, i64 %i.zs ; 2 uses
  %i.zu = load i32, ptr %i.zt, align 4, !tbaa !3
  %i.zv = add i32 %i.zu, 1
  store i32 %i.zv, ptr %i.zt, align 4, !tbaa !3
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %.lr.ph79.i
  %.not88.i = icmp eq i32 %i.zc, 0
  br i1 %.not88.i, label %._crit_edge.i, label %.lr.ph.i326.preheader

.lr.ph.i326.preheader:                            ; preds = %bb.cx
  %xtraiter953 = and i64 %i.zd, 1
  %i.zw = icmp eq i32 %i.zc, 1
  br i1 %i.zw, label %.lr.ph.i326.epil.preheader, label %.lr.ph.i326.preheader.new

.lr.ph.i326.preheader.new:                        ; preds = %.lr.ph.i326.preheader
  %unroll_iter956 = and i64 %i.zd, 4294967294
  br label %.lr.ph.i326

.lr.ph.i326:                                      ; preds = %.lr.ph.i326, %.lr.ph.i326.preheader.new
  %.06975.i = phi i64 [ 0, %.lr.ph.i326.preheader.new ], [ %i.aao, %.lr.ph.i326 ] ; 3 uses
  %niter957 = phi i64 [ 0, %.lr.ph.i326.preheader.new ], [ %niter957.next.1, %.lr.ph.i326 ]
  %i.zx = add i64 %.06975.i, %.07276.i
  %i.zy = and i64 %i.zx, %4
  %i.zz = getelementptr inbounds nuw i8, ptr %3, i64 %i.zy
  %i.aaa = load i8, ptr %i.zz, align 1, !tbaa !7
  %i.aab = zext i8 %i.aaa to i64
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %i.xz, i64 %i.aab ; 2 uses
  %i.aad = load i32, ptr %i.aac, align 4, !tbaa !3
  %i.aae = add i32 %i.aad, 1
  store i32 %i.aae, ptr %i.aac, align 4, !tbaa !3
  %i.aaf = or disjoint i64 %.06975.i, 1
  %i.aag = add i64 %i.aaf, %.07276.i
  %i.aah = and i64 %i.aag, %4
  %i.aai = getelementptr inbounds nuw i8, ptr %3, i64 %i.aah
  %i.aaj = load i8, ptr %i.aai, align 1, !tbaa !7
  %i.aak = zext i8 %i.aaj to i64
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %i.xz, i64 %i.aak ; 2 uses
  %i.aam = load i32, ptr %i.aal, align 4, !tbaa !3
  %i.aan = add i32 %i.aam, 1
  store i32 %i.aan, ptr %i.aal, align 4, !tbaa !3
  %i.aao = add nuw nsw i64 %.06975.i, 2           ; 2 uses
  %niter957.next.1 = add i64 %niter957, 2         ; 2 uses
  %niter957.ncmp.1 = icmp eq i64 %niter957.next.1, %unroll_iter956
  br i1 %niter957.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i326, !llvm.loop !257

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i326
  %lcmp.mod954.not = icmp eq i64 %xtraiter953, 0
  br i1 %lcmp.mod954.not, label %._crit_edge.i, label %.lr.ph.i326.epil.preheader

.lr.ph.i326.epil.preheader:                       ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i326.preheader
  %.06975.i.epil.init = phi i64 [ 0, %.lr.ph.i326.preheader ], [ %i.aao, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod955 = trunc i32 %i.zc to i1
  call void @llvm.assume(i1 %lcmp.mod955)
  %i.aap = add i64 %.06975.i.epil.init, %.07276.i
  %i.aaq = and i64 %i.aap, %4
  %i.aar = getelementptr inbounds nuw i8, ptr %3, i64 %i.aaq
  %i.aas = load i8, ptr %i.aar, align 1, !tbaa !7
  %i.aat = zext i8 %i.aas to i64
  %i.aau = getelementptr inbounds nuw [4 x i8], ptr %i.xz, i64 %i.aat ; 2 uses
  %i.aav = load i32, ptr %i.aau, align 4, !tbaa !3
  %i.aaw = add i32 %i.aav, 1
  store i32 %i.aaw, ptr %i.aau, align 4, !tbaa !3
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i326.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %bb.cx
  %i.aax = add i64 %.07276.i, %i.zd
  %i.aay = add i64 %i.aax, %i.zh
  %i.aaz = add nuw i64 %.07077.i, 1               ; 2 uses
  %exitcond91.not.i = icmp eq i64 %i.aaz, %i.za
  br i1 %exitcond91.not.i, label %vector.body890.preheader, label %.lr.ph79.i, !llvm.loop !258

vector.body890.preheader:                         ; preds = %._crit_edge.i, %bb.cv
  br label %vector.body890

vector.body890:                                   ; preds = %vector.body890, %vector.body890.preheader
  %index891 = phi i64 [ 0, %vector.body890.preheader ], [ %index.next895.1, %vector.body890 ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.body890.preheader ], [ %i.abl, %vector.body890 ]
  %vec.phi892 = phi <2 x i64> [ zeroinitializer, %vector.body890.preheader ], [ %i.abm, %vector.body890 ]
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %i.xz, i64 %index891 ; 2 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 8
  %wide.load893 = load <2 x i32>, ptr %i.aba, align 4, !tbaa !3
  %wide.load894 = load <2 x i32>, ptr %i.abb, align 4, !tbaa !3
  %i.abc = zext <2 x i32> %wide.load893 to <2 x i64>
  %i.abd = zext <2 x i32> %wide.load894 to <2 x i64>
  %i.abe = add <2 x i64> %vec.phi, %i.abc
  %i.abf = add <2 x i64> %vec.phi892, %i.abd
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %i.xz, i64 %index891 ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 16
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abg, i64 24
  %wide.load893.1 = load <2 x i32>, ptr %i.abh, align 4, !tbaa !3
  %wide.load894.1 = load <2 x i32>, ptr %i.abi, align 4, !tbaa !3
  %i.abj = zext <2 x i32> %wide.load893.1 to <2 x i64>
  %i.abk = zext <2 x i32> %wide.load894.1 to <2 x i64>
  %i.abl = add <2 x i64> %i.abe, %i.abj           ; 2 uses
  %i.abm = add <2 x i64> %i.abf, %i.abk           ; 2 uses
  %index.next895.1 = add nuw nsw i64 %index891, 8 ; 2 uses
  %i.abn = icmp eq i64 %index.next895.1, 256
  br i1 %i.abn, label %middle.block896, label %vector.body890, !llvm.loop !259

middle.block896:                                  ; preds = %vector.body890
  %bin.rdx = add <2 x i64> %i.abm, %i.abl
  %i.abo = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 3 uses
  %i.abp = icmp ult i64 %i.abo, 256
  br i1 %i.abp, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %middle.block896
  %i.abq = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.abo
  %i.abr = load double, ptr %i.abq, align 8, !tbaa !171
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit39.i.i

bb.cz:                                            ; preds = %middle.block896
  %i.abs = uitofp i64 %i.abo to double
  %i.abt = call double @log2(double noundef %i.abs) #13, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit39.i.i

_ZN13duckdb_brotliL8FastLog2Em.exit39.i.i:        ; preds = %bb.cz, %bb.cy
  %.in.i = phi double [ %i.abr, %bb.cy ], [ %i.abt, %bb.cz ]
  %i.abu = fptrunc double %.in.i to float         ; 2 uses
  %i.abv = fadd float %i.abu, 2.000000e+00
  br label %.lr.ph49.i.i

.lr.ph49.i.i:                                     ; preds = %bb.de, %_ZN13duckdb_brotliL8FastLog2Em.exit39.i.i
  %.248.i.i = phi i64 [ %i.acj, %bb.de ], [ 0, %_ZN13duckdb_brotliL8FastLog2Em.exit39.i.i ] ; 4 uses
  %i.abw = getelementptr inbounds nuw [4 x i8], ptr %i.xz, i64 %.248.i.i
  %i.abx = load i32, ptr %i.abw, align 4, !tbaa !3 ; 4 uses
  %i.aby = icmp eq i32 %i.abx, 0
  br i1 %i.aby, label %bb.da, label %bb.db

bb.da:                                            ; preds = %.lr.ph49.i.i
  %i.abz = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %.248.i.i
  store float %i.abv, ptr %i.abz, align 4, !tbaa !160
  br label %bb.de

bb.db:                                            ; preds = %.lr.ph49.i.i
  %i.aca = icmp ult i32 %i.abx, 256
  br i1 %i.aca, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.acb = zext nneg i32 %i.abx to i64
  %i.acc = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.acb
  %i.acd = load double, ptr %i.acc, align 8, !tbaa !171
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit.i.i

bb.dd:                                            ; preds = %bb.db
  %i.ace = uitofp i32 %i.abx to double
  %i.acf = call double @log2(double noundef %i.ace) #13, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit.i.i

_ZN13duckdb_brotliL8FastLog2Em.exit.i.i:          ; preds = %bb.dd, %bb.dc
  %.0.i.i.i = phi double [ %i.acd, %bb.dc ], [ %i.acf, %bb.dd ]
  %i.acg = fptrunc double %.0.i.i.i to float
  %i.ach = fsub float %i.abu, %i.acg              ; 2 uses
  %i.aci = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %.248.i.i ; 2 uses
  store float %i.ach, ptr %i.aci, align 4, !tbaa !160
  %16 = fcmp olt float %i.ach, 1.000000e+00
  br i1 %16, label %17, label %bb.de

17:                                               ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit.i.i
  store float 1.000000e+00, ptr %i.aci, align 4, !tbaa !160
  br label %bb.de

bb.de:                                            ; preds = %17, %_ZN13duckdb_brotliL8FastLog2Em.exit.i.i, %bb.da
  %i.acj = add nuw nsw i64 %.248.i.i, 1           ; 2 uses
  %exitcond54.not.i.i = icmp eq i64 %i.acj, 256
  br i1 %exitcond54.not.i.i, label %_ZL7SetCostPKjmiPf.exit.i, label %.lr.ph49.i.i, !llvm.loop !260

_ZL7SetCostPKjmiPf.exit.i:                        ; preds = %bb.de
  call fastcc void @_ZL7SetCostPKjmiPf(ptr noundef nonnull %i.ya, i64 noundef 704, i32 noundef 0, ptr noundef nonnull %i.wt)
  %i.ack = load i32, ptr %i.xy, align 8, !tbaa !55
  %i.acl = zext i32 %i.ack to i64
  %i.acm = load ptr, ptr %i.xx, align 8, !tbaa !54
  call fastcc void @_ZL7SetCostPKjmiPf(ptr noundef nonnull %i.yb, i64 noundef %i.acl, i32 noundef 0, ptr noundef %i.acm)
  br label %bb.df

bb.df:                                            ; preds = %bb.df, %_ZL7SetCostPKjmiPf.exit.i
  %.182.i = phi i64 [ 0, %_ZL7SetCostPKjmiPf.exit.i ], [ %i.adg, %bb.df ] ; 5 uses
  %.07181.i = phi float [ 1.700000e+38, %_ZL7SetCostPKjmiPf.exit.i ], [ %i.adf, %bb.df ] ; 2 uses
  %i.acn = getelementptr inbounds nuw [4 x i8], ptr %i.wt, i64 %.182.i
  %i.aco = load float, ptr %i.acn, align 4, !tbaa !160 ; 2 uses
  %i.acp = fcmp olt float %.07181.i, %i.aco
  %i.acq = select i1 %i.acp, float %.07181.i, float %i.aco ; 2 uses
  %i.acr = getelementptr inbounds nuw [4 x i8], ptr %i.wt, i64 %.182.i
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acr, i64 4
  %i.act = load float, ptr %i.acs, align 4, !tbaa !160 ; 2 uses
  %i.acu = fcmp olt float %i.acq, %i.act
  %i.acv = select i1 %i.acu, float %i.acq, float %i.act ; 2 uses
  %i.acw = getelementptr inbounds nuw [4 x i8], ptr %i.wt, i64 %.182.i
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acw, i64 8
  %i.acy = load float, ptr %i.acx, align 4, !tbaa !160 ; 2 uses
  %i.acz = fcmp olt float %i.acv, %i.acy
  %i.ada = select i1 %i.acz, float %i.acv, float %i.acy ; 2 uses
  %i.adb = getelementptr inbounds nuw [4 x i8], ptr %i.wt, i64 %.182.i
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 12
  %i.add = load float, ptr %i.adc, align 4, !tbaa !160 ; 2 uses
  %i.ade = fcmp olt float %i.ada, %i.add
  %i.adf = select i1 %i.ade, float %i.ada, float %i.add ; 2 uses
  %i.adg = add nuw nsw i64 %.182.i, 4             ; 2 uses
  %exitcond92.not.i.3 = icmp eq i64 %i.adg, 704
  br i1 %exitcond92.not.i.3, label %bb.dg, label %bb.df, !llvm.loop !261

bb.dg:                                            ; preds = %bb.df
  store float %i.adf, ptr %i.ye, align 8, !tbaa !175
  %i.adh = load ptr, ptr %i.xp, align 8, !tbaa !52 ; 4 uses
  %i.adi = load i64, ptr %i.xl, align 8, !tbaa !48 ; 5 uses
  store float 0.000000e+00, ptr %i.adh, align 4, !tbaa !160
  %.not89.i = icmp eq i64 %i.adi, 0
  br i1 %.not89.i, label %_ZL30ZopfliCostModelSetFromCommandsP15ZopfliCostModelmPKhmPKN13duckdb_brotli7CommandEmm.exit, label %.lr.ph86.i.preheader

.lr.ph86.i.preheader:                             ; preds = %bb.dg
  %xtraiter958 = and i64 %i.adi, 1
  %i.adj = icmp eq i64 %i.adi, 1
  br i1 %i.adj, label %.lr.ph86.i.epil.preheader, label %.lr.ph86.i.preheader.new

.lr.ph86.i.preheader.new:                         ; preds = %.lr.ph86.i.preheader
  %unroll_iter961 = and i64 %i.adi, -2
  br label %.lr.ph86.i

.lr.ph86.i:                                       ; preds = %.lr.ph86.i, %.lr.ph86.i.preheader.new
  %i.adk = phi float [ 0.000000e+00, %.lr.ph86.i.preheader.new ], [ %i.aeg, %.lr.ph86.i ] ; 2 uses
  %.084.i = phi float [ 0.000000e+00, %.lr.ph86.i.preheader.new ], [ %i.aek, %.lr.ph86.i ]
  %.283.i = phi i64 [ 0, %.lr.ph86.i.preheader.new ], [ %i.aeh, %.lr.ph86.i ] ; 3 uses
  %niter962 = phi i64 [ 0, %.lr.ph86.i.preheader.new ], [ %niter962.next.1, %.lr.ph86.i ]
  %i.adl = add i64 %.283.i, %2
  %i.adm = and i64 %i.adl, %4
  %i.adn = getelementptr inbounds nuw i8, ptr %3, i64 %i.adm
  %i.ado = load i8, ptr %i.adn, align 1, !tbaa !7
  %i.adp = zext i8 %i.ado to i64
  %i.adq = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %i.adp
  %i.adr = load float, ptr %i.adq, align 4, !tbaa !160
  %i.ads = fadd float %.084.i, %i.adr             ; 2 uses
  %i.adt = fadd float %i.adk, %i.ads              ; 4 uses
  %i.adu = or disjoint i64 %.283.i, 1             ; 2 uses
  %i.adv = getelementptr inbounds nuw [4 x i8], ptr %i.adh, i64 %i.adu
  store float %i.adt, ptr %i.adv, align 4, !tbaa !160
  %i.adw = fsub float %i.adt, %i.adk
  %i.adx = fsub float %i.ads, %i.adw
  %i.ady = add i64 %i.adu, %2
  %i.adz = and i64 %i.ady, %4
  %i.aea = getelementptr inbounds nuw i8, ptr %3, i64 %i.adz
  %i.aeb = load i8, ptr %i.aea, align 1, !tbaa !7
  %i.aec = zext i8 %i.aeb to i64
  %i.aed = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %i.aec
  %i.aee = load float, ptr %i.aed, align 4, !tbaa !160
  %i.aef = fadd float %i.adx, %i.aee              ; 2 uses
  %i.aeg = fadd float %i.adt, %i.aef              ; 4 uses
  %i.aeh = add nuw i64 %.283.i, 2                 ; 3 uses
  %i.aei = getelementptr inbounds nuw [4 x i8], ptr %i.adh, i64 %i.aeh
  store float %i.aeg, ptr %i.aei, align 4, !tbaa !160
  %i.aej = fsub float %i.aeg, %i.adt
  %i.aek = fsub float %i.aef, %i.aej              ; 2 uses
  %niter962.next.1 = add nuw i64 %niter962, 2     ; 2 uses
  %niter962.ncmp.1 = icmp eq i64 %niter962.next.1, %unroll_iter961
  br i1 %niter962.ncmp.1, label %_ZL30ZopfliCostModelSetFromCommandsP15ZopfliCostModelmPKhmPKN13duckdb_brotli7CommandEmm.exit.loopexit.unr-lcssa, label %.lr.ph86.i, !llvm.loop !262

_ZL30ZopfliCostModelSetFromCommandsP15ZopfliCostModelmPKhmPKN13duckdb_brotli7CommandEmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph86.i
  %lcmp.mod959.not = icmp eq i64 %xtraiter958, 0
  br i1 %lcmp.mod959.not, label %_ZL30ZopfliCostModelSetFromCommandsP15ZopfliCostModelmPKhmPKN13duckdb_brotli7CommandEmm.exit, label %.lr.ph86.i.epil.preheader

.lr.ph86.i.epil.preheader:                        ; preds = %_ZL30ZopfliCostModelSetFromCommandsP15ZopfliCostModelmPKhmPKN13duckdb_brotli7CommandEmm.exit.loopexit.unr-lcssa, %.lr.ph86.i.preheader
  %.epil.init = phi float [ 0.000000e+00, %.lr.ph86.i.preheader ], [ %i.aeg, %_ZL30ZopfliCostModelSetFromCommandsP15ZopfliCostModelmPKhmPKN13duckdb_brotli7CommandEmm.exit.loopexit.unr-lcssa ]
  %.084.i.epil.init = phi float [ 0.000000e+00, %.lr.ph86.i.preheader ], [ %i.aek, %_ZL30ZopfliCostModelSetFromCommandsP15ZopfliCostModelmPKhmPKN13duckdb_brotli7CommandEmm.exit.loopexit.unr-lcssa ]
  %.283.i.epil.init = phi i64 [ 0, %.lr.ph86.i.preheader ], [ %i.aeh, %_ZL30ZopfliCostModelSetFromCommandsP15ZopfliCostModelmPKhmPKN13duckdb_brotli7CommandEmm.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod960 = trunc i64 %i.adi to i1
  call void @llvm.assume(i1 %lcmp.mod960)
  %i.ael = add i64 %.283.i.epil.init, %2
  %i.aem = and i64 %i.ael, %4
  %i.aen = getelementptr inbounds nuw i8, ptr %3, i64 %i.aem
  %i.aeo = load i8, ptr %i.aen, align 1, !tbaa !7
  %i.aep = zext i8 %i.aeo to i64
  %i.aeq = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %i.aep
  %i.aer = load float, ptr %i.aeq, align 4, !tbaa !160
  %i.aes = fadd float %.084.i.epil.init, %i.aer
  %i.aet = fadd float %.epil.init, %i.aes
  %i.aeu = getelementptr inbounds nuw [4 x i8], ptr %i.adh, i64 %.283.i.epil.init
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 4
  store float %i.aet, ptr %i.aev, align 4, !tbaa !160
  br label %_ZL30ZopfliCostModelSetFromCommandsP15ZopfliCostModelmPKhmPKN13duckdb_brotli7CommandEmm.exit

_ZL30ZopfliCostModelSetFromCommandsP15ZopfliCostModelmPKhmPKN13duckdb_brotli7CommandEmm.exit: ; preds = %.lr.ph86.i.epil.preheader, %_ZL30ZopfliCostModelSetFromCommandsP15ZopfliCostModelmPKhmPKN13duckdb_brotli7CommandEmm.exit.loopexit.unr-lcssa, %bb.dg, %bb.cu
  store i64 %i.ww, ptr %11, align 8, !tbaa !35
  store i64 %i.wu, ptr %12, align 8, !tbaa !35
  store i64 %i.wv, ptr %9, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 16 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.aew = load i64, ptr %i.c, align 8, !tbaa !31
  %i.aex = load i32, ptr %i.e, align 8, !tbaa !10
  %i.aey = zext nneg i32 %i.aex to i64
  %i.aez = shl nuw i64 1, %i.aey
  %i.afa = add i64 %i.aez, -16                    ; 2 uses
  %i.afb = load i32, ptr %i.yf, align 4, !tbaa !45
  %i.afc = icmp slt i32 %i.afb, 11
  %i.afd = select i1 %i.afc, i64 150, i64 325
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13
  store i32 0, ptr %i.xn, align 4, !tbaa !32
  store float 0.000000e+00, ptr %i.yg, align 4, !tbaa !7
  store i64 0, ptr %i.yh, align 8, !tbaa !56
  br i1 %i.wq, label %.lr.ph76.i, label %._crit_edge.i328

.lr.ph76.i:                                       ; preds = %_ZL30ZopfliCostModelSetFromCommandsP15ZopfliCostModelmPKhmPKN13duckdb_brotli7CommandEmm.exit
  %i.afe = add i64 %i.yi, %i.aew
  %i.aff = add i64 %i.afa, %i.wr
  br label %bb.dh

bb.dh:                                            ; preds = %bb.ed, %.lr.ph76.i
  %.05375.i = phi i64 [ 0, %.lr.ph76.i ], [ %i.als, %bb.ed ] ; 4 uses
  %.05574.i = phi i64 [ 0, %.lr.ph76.i ], [ %.257.i, %bb.ed ] ; 2 uses
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %i.ws, i64 %.05375.i ; 2 uses
  %i.afh = load i32, ptr %i.afg, align 4, !tbaa !3
  %i.afi = zext i32 %i.afh to i64
  %i.afj = getelementptr inbounds nuw [8 x i8], ptr %.0202.lcssa, i64 %.05574.i
  %i.afk = call fastcc noundef i64 @_ZL11UpdateNodesmmmPKhmPK19BrotliEncoderParamsmPKimPKN13duckdb_brotli13BackwardMatchEPK15ZopfliCostModelP13StartPosQueuePNS6_10ZopfliNodeE(i64 noundef %1, i64 noundef %2, i64 noundef %.05375.i, ptr noundef %3, i64 noundef %4, ptr noundef readonly %6, i64 noundef %i.afa, ptr noundef nonnull readonly %8, i64 noundef %i.afi, ptr noundef readonly %i.afj, ptr noundef readonly %i.wt, ptr noundef %15, ptr noundef nonnull %i.xn) ; 2 uses
  %i.afl = icmp ult i64 %i.afk, 16384
  %spec.store.select.i = select i1 %i.afl, i64 0, i64 %i.afk ; 3 uses
  %i.afm = load i32, ptr %i.afg, align 4, !tbaa !3 ; 2 uses
  %i.afn = zext i32 %i.afm to i64
  %i.afo = add i64 %.05574.i, %i.afn              ; 3 uses
  %i.afp = icmp eq i32 %i.afm, 1
  br i1 %i.afp, label %bb.di, label %bb.dk

bb.di:                                            ; preds = %bb.dh
  %i.afq = getelementptr [8 x i8], ptr %.0202.lcssa, i64 %i.afo
  %i.afr = getelementptr i8, ptr %i.afq, i64 -4
  %i.afs = load i32, ptr %i.afr, align 4, !tbaa !71
  %i.aft = lshr i32 %i.afs, 5
  %i.afu = zext nneg i32 %i.aft to i64            ; 2 uses
  %i.afv = icmp samesign ult i64 %i.afd, %i.afu
  br i1 %i.afv, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.afw = call noundef i64 @llvm.umax.i64(i64 %i.afu, i64 %spec.store.select.i)
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di, %bb.dh
  %.0.i333 = phi i64 [ %i.afw, %bb.dj ], [ %spec.store.select.i, %bb.di ], [ %spec.store.select.i, %bb.dh ] ; 2 uses
  %i.afx = icmp ugt i64 %.0.i333, 1
  br i1 %i.afx, label %.lr.ph.preheader.i, label %bb.ed

.lr.ph.preheader.i:                               ; preds = %bb.dk
  %.163.i = add i64 %.0.i333, -1
  %.promoted.i = load i64, ptr %i.yh, align 8
  br label %.lr.ph.i335

.lr.ph.i335:                                      ; preds = %_ZL12EvaluateNodemmmmPKiPK15ZopfliCostModelP13StartPosQueuePN13duckdb_brotli10ZopfliNodeE.exit.i, %.lr.ph.preheader.i
  %.167.i = phi i64 [ %.1.i339, %_ZL12EvaluateNodemmmmPKiPK15ZopfliCostModelP13StartPosQueuePN13duckdb_brotli10ZopfliNodeE.exit.i ], [ %.163.i, %.lr.ph.preheader.i ]
  %.15466.i = phi i64 [ %i.afz, %_ZL12EvaluateNodemmmmPKiPK15ZopfliCostModelP13StartPosQueuePN13duckdb_brotli10ZopfliNodeE.exit.i ], [ %.05375.i, %.lr.ph.preheader.i ] ; 2 uses
  %.15665.i = phi i64 [ %i.alr, %_ZL12EvaluateNodemmmmPKiPK15ZopfliCostModelP13StartPosQueuePN13duckdb_brotli10ZopfliNodeE.exit.i ], [ %i.afo, %.lr.ph.preheader.i ] ; 2 uses
  %i.afy = phi i64 [ %i.aln, %_ZL12EvaluateNodemmmmPKiPK15ZopfliCostModelP13StartPosQueuePN13duckdb_brotli10ZopfliNodeE.exit.i ], [ %.promoted.i, %.lr.ph.preheader.i ] ; 5 uses
  %i.afz = add i64 %.15466.i, 1                   ; 10 uses
  %i.aga = add i64 %.15466.i, 4
  %.not60.i = icmp ult i64 %i.aga, %1
  br i1 %.not60.i, label %bb.dl, label %.loopexit.i

bb.dl:                                            ; preds = %.lr.ph.i335
  %i.agb = getelementptr inbounds nuw [16 x i8], ptr %i.xn, i64 %i.afz ; 4 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %i.agb, i64 12 ; 2 uses
  %i.agd = load float, ptr %i.agc, align 4, !tbaa !7 ; 3 uses
  %i.age = load i32, ptr %i.agb, align 4, !tbaa !32
  %i.agf = and i32 %i.age, 33554431               ; 2 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agb, i64 8
  %i.agh = load i32, ptr %i.agg, align 4, !tbaa !34 ; 2 uses
  %i.agi = and i32 %i.agh, 134217727
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agb, i64 4
  %i.agk = load i32, ptr %i.agj, align 4, !tbaa !36 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN13duckdb_brotli38BrotliCreateHqZopfliBackwardReferencesEPNS_13MemoryManagerEmmPKhmS3_PK19BrotliEncoderParamsPNS_6HasherEPiPmPNS_7CommandESA_SA_:bb.a
  call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.ws)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

declare void @_ZN13duckdb_brotli33BrotliEstimateBitCostsForLiteralsEmmmPKhPmPf(i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log2(double noundef) local_unnamed_addr #8

declare noundef i32 @_ZN13duckdb_brotli36BrotliFindAllStaticDictionaryMatchesEPKNS_23BrotliEncoderDictionaryEPKhmmPj(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define internal fastcc void @_ZL7SetCostPKjmiPf(ptr nofree noundef readonly captures(none) %0, i64 noundef range(i64 0, 4294967296) %1, i32 noundef range(i32 0, 2) %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #9 {
bb.a:
  %.not51 = icmp eq i64 %1, 0                     ; 2 uses
  br i1 %.not51, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp samesign ult i64 %1, 4
  br i1 %min.iters.check, label %.lr.ph.preheader81, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %1, 4294967292                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.e, %vector.body ]
  %vec.phi60 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.f, %vector.body ]
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %wide.load = load <2 x i32>, ptr %i.a, align 4, !tbaa !3
  %wide.load61 = load <2 x i32>, ptr %i.b, align 4, !tbaa !3
  %i.c = zext <2 x i32> %wide.load to <2 x i64>
  %i.d = zext <2 x i32> %wide.load61 to <2 x i64>
  %i.e = add <2 x i64> %vec.phi, %i.c             ; 2 uses
  %i.f = add <2 x i64> %vec.phi60, %i.d           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.g = icmp eq i64 %index.next, %n.vec
  br i1 %i.g, label %middle.block, label %vector.body, !llvm.loop !266

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.f, %i.e
  %i.h = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader81

.lr.ph.preheader81:                               ; preds = %.lr.ph.preheader, %middle.block
  %.043.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.03542.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.h, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader81, %.lr.ph
  %.043 = phi i64 [ %i.m, %.lr.ph ], [ %.043.ph, %.lr.ph.preheader81 ] ; 2 uses
  %.03542 = phi i64 [ %i.l, %.lr.ph ], [ %.03542.ph, %.lr.ph.preheader81 ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.043
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3
  %i.k = zext i32 %i.j to i64
  %i.l = add i64 %.03542, %i.k                    ; 2 uses
  %i.m = add nuw nsw i64 %.043, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !267

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.lcssa = phi i64 [ %i.h, %middle.block ], [ %i.l, %.lr.ph ] ; 4 uses
  %i.n = icmp ult i64 %.lcssa, 256
  br i1 %i.n, label %._crit_edge.thread, label %bb.b

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.035.lcssa59 = phi i64 [ %.lcssa, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %.035.lcssa59
  %i.p = load double, ptr %i.o, align 8, !tbaa !171
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit41

bb.b:                                             ; preds = %._crit_edge
  %i.q = uitofp i64 %.lcssa to double
  %i.r = tail call double @log2(double noundef %i.q) #13, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit41

_ZN13duckdb_brotliL8FastLog2Em.exit41:            ; preds = %._crit_edge.thread, %bb.b
  %.035.lcssa58 = phi i64 [ %.035.lcssa59, %._crit_edge.thread ], [ %.lcssa, %bb.b ] ; 3 uses
  %.0.i40 = phi double [ %i.p, %._crit_edge.thread ], [ %i.r, %bb.b ]
  %i.s = fptrunc double %.0.i40 to float
  %.not = icmp eq i32 %2, 0
  %i.t = icmp ne i64 %1, 0
  %or.cond = and i1 %.not, %i.t
  br i1 %or.cond, label %.lr.ph46.preheader, label %.loopexit

.lr.ph46.preheader:                               ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit41
  %min.iters.check63 = icmp samesign ult i64 %1, 4
  br i1 %min.iters.check63, label %.lr.ph46.preheader78, label %vector.ph64

vector.ph64:                                      ; preds = %.lr.ph46.preheader
  %n.vec65 = and i64 %1, 4294967292               ; 3 uses
  %i.u = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.035.lcssa58, i64 0
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph64
  %index67 = phi i64 [ 0, %vector.ph64 ], [ %index.next72, %vector.body66 ] ; 2 uses
  %vec.phi68 = phi <2 x i64> [ %i.u, %vector.ph64 ], [ %i.ab, %vector.body66 ]
  %vec.phi69 = phi <2 x i64> [ zeroinitializer, %vector.ph64 ], [ %i.ac, %vector.body66 ]
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index67 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %wide.load70 = load <2 x i32>, ptr %i.v, align 4, !tbaa !3
  %wide.load71 = load <2 x i32>, ptr %i.w, align 4, !tbaa !3
  %i.x = icmp eq <2 x i32> %wide.load70, zeroinitializer
  %i.y = icmp eq <2 x i32> %wide.load71, zeroinitializer
  %i.z = zext <2 x i1> %i.x to <2 x i64>
  %i.aa = zext <2 x i1> %i.y to <2 x i64>
  %i.ab = add <2 x i64> %vec.phi68, %i.z          ; 2 uses
  %i.ac = add <2 x i64> %vec.phi69, %i.aa         ; 2 uses
  %index.next72 = add nuw i64 %index67, 4         ; 2 uses
  %i.ad = icmp eq i64 %index.next72, %n.vec65
  br i1 %i.ad, label %middle.block73, label %vector.body66, !llvm.loop !268

middle.block73:                                   ; preds = %vector.body66
  %bin.rdx74 = add <2 x i64> %i.ac, %i.ab
  %i.ae = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx74) ; 2 uses
  %cmp.n75 = icmp eq i64 %1, %n.vec65
  br i1 %cmp.n75, label %.loopexit, label %.lr.ph46.preheader78

.lr.ph46.preheader78:                             ; preds = %.lr.ph46.preheader, %middle.block73
  %.145.ph = phi i64 [ 0, %.lr.ph46.preheader ], [ %n.vec65, %middle.block73 ]
  %.03244.ph = phi i64 [ %.035.lcssa58, %.lr.ph46.preheader ], [ %i.ae, %middle.block73 ]
  br label %.lr.ph46

.lr.ph46:                                         ; preds = %.lr.ph46.preheader78, %.lr.ph46
  %.145 = phi i64 [ %i.aj, %.lr.ph46 ], [ %.145.ph, %.lr.ph46.preheader78 ] ; 2 uses
  %.03244 = phi i64 [ %spec.select, %.lr.ph46 ], [ %.03244.ph, %.lr.ph46.preheader78 ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.145
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ah = icmp eq i32 %i.ag, 0
  %i.ai = zext i1 %i.ah to i64
  %spec.select = add i64 %.03244, %i.ai           ; 2 uses
  %i.aj = add nuw nsw i64 %.145, 1                ; 2 uses
  %exitcond53.not = icmp eq i64 %i.aj, %1
  br i1 %exitcond53.not, label %.loopexit, label %.lr.ph46, !llvm.loop !269

.loopexit:                                        ; preds = %.lr.ph46, %middle.block73, %_ZN13duckdb_brotliL8FastLog2Em.exit41
  %.234 = phi i64 [ %.035.lcssa58, %_ZN13duckdb_brotliL8FastLog2Em.exit41 ], [ %i.ae, %middle.block73 ], [ %spec.select, %.lr.ph46 ] ; 3 uses
  %i.ak = icmp ult i64 %.234, 256
  br i1 %i.ak, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.loopexit
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %.234
  %i.am = load double, ptr %i.al, align 8, !tbaa !171
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit39

bb.d:                                             ; preds = %.loopexit
  %i.an = uitofp i64 %.234 to double
  %i.ao = tail call double @log2(double noundef %i.an) #13, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit39

_ZN13duckdb_brotliL8FastLog2Em.exit39:            ; preds = %bb.c, %bb.d
  %.0.i38 = phi double [ %i.am, %bb.c ], [ %i.ao, %bb.d ]
  %i.ap = fptrunc double %.0.i38 to float
  %i.aq = fadd float %i.ap, 2.000000e+00
  br i1 %.not51, label %._crit_edge50, label %.lr.ph49

.lr.ph49:                                         ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit39, %bb.i
  %.248 = phi i64 [ %i.be, %bb.i ], [ 0, %_ZN13duckdb_brotliL8FastLog2Em.exit39 ] ; 4 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.248
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !3  ; 4 uses
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph49
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.248
  store float %i.aq, ptr %i.au, align 4, !tbaa !160
  br label %bb.i

bb.f:                                             ; preds = %.lr.ph49
  %i.av = icmp ult i32 %i.as, 256
  br i1 %i.av, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aw = zext nneg i32 %i.as to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.aw
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !171
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit

bb.h:                                             ; preds = %bb.f
  %i.az = uitofp i32 %i.as to double
  %i.ba = tail call double @log2(double noundef %i.az) #13, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit

_ZN13duckdb_brotliL8FastLog2Em.exit:              ; preds = %bb.g, %bb.h
  %.0.i = phi double [ %i.ay, %bb.g ], [ %i.ba, %bb.h ]
  %i.bb = fptrunc double %.0.i to float
  %i.bc = fsub float %i.s, %i.bb                  ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.248 ; 2 uses
  store float %i.bc, ptr %i.bd, align 4, !tbaa !160
  %4 = fcmp olt float %i.bc, 1.000000e+00
  br i1 %4, label %5, label %bb.i

5:                                                ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit
  store float 1.000000e+00, ptr %i.bd, align 4, !tbaa !160
  br label %bb.i

bb.i:                                             ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit, %5, %bb.e
  %i.be = add nuw nsw i64 %.248, 1                ; 2 uses
  %exitcond54.not = icmp eq i64 %i.be, %1
  br i1 %exitcond54.not, label %._crit_edge50, label %.lr.ph49, !llvm.loop !260

._crit_edge50:                                    ; preds = %bb.i, %_ZN13duckdb_brotliL8FastLog2Em.exit39
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!11, !4, i64 8}
!11 = !{!"_ZTS19BrotliEncoderParams", !12, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !13, i64 16, !13, i64 24, !4, i64 32, !4, i64 36, !14, i64 40, !15, i64 56, !16, i64 80}
!12 = !{!"_ZTS17BrotliEncoderMode", !5, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"_ZTS18BrotliHasherParams", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12}
!15 = !{!"_ZTS20BrotliDistanceParams", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !13, i64 16}
!16 = !{!"_ZTSN13duckdb_brotli23SharedEncoderDictionaryE", !4, i64 0, !17, i64 8, !18, i64 544, !4, i64 1312}
!17 = !{!"_ZTSN13duckdb_brotli18CompoundDictionaryE", !13, i64 0, !13, i64 8, !5, i64 16, !5, i64 144, !5, i64 272, !13, i64 400, !5, i64 408}
!18 = !{!"_ZTSN13duckdb_brotli27ContextualEncoderDictionaryE", !4, i64 0, !5, i64 4, !5, i64 5, !5, i64 72, !13, i64 584, !19, i64 592, !29, i64 760}
!19 = !{!"_ZTSN13duckdb_brotli23BrotliEncoderDictionaryE", !20, i64 0, !4, i64 8, !4, i64 12, !13, i64 16, !22, i64 24, !23, i64 32, !22, i64 40, !24, i64 48, !25, i64 56, !4, i64 96, !28, i64 104, !22, i64 112, !23, i64 120, !13, i64 128, !22, i64 136, !13, i64 144, !24, i64 152, !20, i64 160}
!20 = !{!"p1 _ZTSN13duckdb_brotli16BrotliDictionaryE", !21, i64 0}
!21 = !{!"any pointer", !5, i64 0}
!22 = !{!"p1 short", !21, i64 0}
!23 = !{!"p1 omnipotent char", !21, i64 0}
!24 = !{!"p1 _ZTSN13duckdb_brotli8DictWordE", !21, i64 0}
!25 = !{!"_ZTSN13duckdb_brotli10BrotliTrieE", !26, i64 0, !13, i64 8, !13, i64 16, !27, i64 24}
!26 = !{!"p1 _ZTSN13duckdb_brotli14BrotliTrieNodeE", !21, i64 0}
!27 = !{!"_ZTSN13duckdb_brotli14BrotliTrieNodeE", !5, i64 0, !5, i64 1, !5, i64 2, !4, i64 4, !4, i64 8}
!28 = !{!"p1 _ZTSN13duckdb_brotli27ContextualEncoderDictionaryE", !21, i64 0}
!29 = !{!"p1 _ZTSN13duckdb_brotli23BrotliEncoderDictionaryE", !21, i64 0}
!30 = !{!11, !13, i64 96}
!31 = !{!11, !13, i64 16}
!32 = !{!33, !4, i64 0}
!33 = !{!"_ZTSN13duckdb_brotli10ZopfliNodeE", !4, i64 0, !4, i64 4, !4, i64 8, !5, i64 12}
!34 = !{!33, !4, i64 8}
!35 = !{!13, !13, i64 0}
!36 = !{!33, !4, i64 4}
!37 = !{!38, !4, i64 0}
!38 = !{!"_ZTSN13duckdb_brotli7CommandE", !4, i64 0, !4, i64 4, !4, i64 8, !39, i64 12, !39, i64 14}
!39 = !{!"short", !5, i64 0}
!40 = !{!38, !4, i64 4}
!41 = !{!15, !4, i64 4}
!42 = !{!15, !4, i64 0}
!43 = !{!39, !39, i64 0}
!44 = distinct !{!44, !9}
!45 = !{!11, !4, i64 4}
!46 = !{!17, !13, i64 8}
!47 = !{!17, !13, i64 0}
!48 = !{!49, !13, i64 2848}
!49 = !{!"_ZTS15ZopfliCostModel", !5, i64 0, !50, i64 2816, !4, i64 2824, !50, i64 2832, !51, i64 2840, !13, i64 2848, !5, i64 2856}
!50 = !{!"p1 float", !21, i64 0}
!51 = !{!"float", !5, i64 0}
!52 = !{!49, !50, i64 2832}
!53 = !{!15, !4, i64 12}
!54 = !{!49, !50, i64 2816}
!55 = !{!49, !4, i64 2824}
!56 = !{!57, !13, i64 256}
!57 = !{!"_ZTS13StartPosQueue", !5, i64 0, !13, i64 256}
!58 = !{!11, !4, i64 624}
!59 = !{!29, !29, i64 0}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_ZN13duckdb_brotliL17FindAllMatchesH10EPNS_3H10EPKNS_23BrotliEncoderDictionaryEPKhmmmmmPK19BrotliEncoderParamsPNS_13BackwardMatchE: argument 1"}
!62 = distinct !{!62, !"_ZN13duckdb_brotliL17FindAllMatchesH10EPNS_3H10EPKNS_23BrotliEncoderDictionaryEPKhmmmmmPK19BrotliEncoderParamsPNS_13BackwardMatchE"}
!63 = !{!64, !61}
!64 = distinct !{!64, !62, !"_ZN13duckdb_brotliL17FindAllMatchesH10EPNS_3H10EPKNS_23BrotliEncoderDictionaryEPKhmmmmmPK19BrotliEncoderParamsPNS_13BackwardMatchE: argument 0"}
!65 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!66 = !{!64}
!67 = distinct !{!67, !9}
!68 = distinct !{!68, !9}
!69 = !{!70, !4, i64 0}
!70 = !{!"_ZTSN13duckdb_brotli13BackwardMatchE", !4, i64 0, !4, i64 4}
!71 = !{!70, !4, i64 4}
!72 = distinct !{!72, !9}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZN13duckdb_brotliL22StoreAndFindMatchesH10EPNS_3H10EPKhmmmmPmPNS_13BackwardMatchE: argument 0"}
!75 = distinct !{!75, !"_ZN13duckdb_brotliL22StoreAndFindMatchesH10EPNS_3H10EPKhmmmmPmPNS_13BackwardMatchE"}
!76 = !{!77}
!77 = distinct !{!77, !75, !"_ZN13duckdb_brotliL22StoreAndFindMatchesH10EPNS_3H10EPKhmmmmPmPNS_13BackwardMatchE: argument 1"}
!78 = !{!79}
!79 = distinct !{!79, !75, !"_ZN13duckdb_brotliL22StoreAndFindMatchesH10EPNS_3H10EPKhmmmmPmPNS_13BackwardMatchE: argument 3"}
!80 = !{!81, !82, i64 8}
!81 = !{!"_ZTSN13duckdb_brotli3H10E", !13, i64 0, !82, i64 8, !4, i64 16, !82, i64 24}
!82 = !{!"p1 int", !21, i64 0}
!83 = !{!77, !84, !79}
!84 = distinct !{!84, !75, !"_ZN13duckdb_brotliL22StoreAndFindMatchesH10EPNS_3H10EPKhmmmmPmPNS_13BackwardMatchE: argument 2"}
!85 = !{!81, !82, i64 24}
!86 = !{!74, !84, !79}
!87 = !{!81, !13, i64 0}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZN13duckdb_brotliL17LeftChildIndexH10EPNS_3H10Em: argument 0"}
!90 = distinct !{!90, !"_ZN13duckdb_brotliL17LeftChildIndexH10EPNS_3H10Em"}
!91 = !{!84, !79}
!92 = !{!81, !4, i64 16}
!93 = !{!74, !77, !84}
!94 = distinct !{!94, !9}
!95 = !{!11, !13, i64 72}
!96 = distinct !{!96, !9}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_ZN13duckdb_brotliL34LookupAllCompoundDictionaryMatchesEPKNS_18CompoundDictionaryEPKhmmmmmmPNS_13BackwardMatchEm: argument 0"}
!99 = distinct !{!99, !"_ZN13duckdb_brotliL34LookupAllCompoundDictionaryMatchesEPKNS_18CompoundDictionaryEPKhmmmmmmPNS_13BackwardMatchEm"}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZN13duckdb_brotliL32FindAllCompoundDictionaryMatchesEPKNS_18PreparedDictionaryEPKhmmmmmmPNS_13BackwardMatchEm: argument 0"}
!102 = distinct !{!102, !"_ZN13duckdb_brotliL32FindAllCompoundDictionaryMatchesEPKNS_18PreparedDictionaryEPKhmmmmmmPNS_13BackwardMatchEm"}
!103 = !{!104, !104, i64 0}
!104 = !{!"p1 _ZTSN13duckdb_brotli18PreparedDictionaryE", !21, i64 0}
!105 = !{!106, !4, i64 8}
!106 = !{!"_ZTSN13duckdb_brotli18PreparedDictionaryE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20}
!107 = !{!106, !4, i64 12}
!108 = !{!106, !4, i64 16}
!109 = !{!106, !4, i64 20}
!110 = !{!106, !4, i64 4}
!111 = !{!106, !4, i64 0}
!112 = distinct !{!112, !9}
!113 = distinct !{!113, !9}
!114 = distinct !{!114, !9, !115, !116}
!115 = !{!"llvm.loop.isvectorized", i32 1}
!116 = !{!"llvm.loop.unroll.runtime.disable"}
!117 = distinct !{!117, !118}
!118 = !{!"llvm.loop.unroll.disable"}
!119 = distinct !{!119, !9}
!120 = distinct !{!120, !9, !115, !116}
!121 = distinct !{!121, !118}
!122 = distinct !{!122, !9, !115}
!123 = distinct !{!123, !9, !115}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_ZN13duckdb_brotliL8StoreH10EPNS_3H10EPKhmm: argument 0"}
!126 = distinct !{!126, !"_ZN13duckdb_brotliL8StoreH10EPNS_3H10EPKhmm"}
!127 = !{!128}
!128 = distinct !{!128, !126, !"_ZN13duckdb_brotliL8StoreH10EPNS_3H10EPKhmm: argument 1"}
!129 = !{!130, !125}
!130 = distinct !{!130, !131, !"_ZN13duckdb_brotliL22StoreAndFindMatchesH10EPNS_3H10EPKhmmmmPmPNS_13BackwardMatchE: argument 0"}
!131 = distinct !{!131, !"_ZN13duckdb_brotliL22StoreAndFindMatchesH10EPNS_3H10EPKhmmmmPmPNS_13BackwardMatchE"}
!132 = !{!133, !134, !135, !128}
!133 = distinct !{!133, !131, !"_ZN13duckdb_brotliL22StoreAndFindMatchesH10EPNS_3H10EPKhmmmmPmPNS_13BackwardMatchE: argument 1"}
!134 = distinct !{!134, !131, !"_ZN13duckdb_brotliL22StoreAndFindMatchesH10EPNS_3H10EPKhmmmmPmPNS_13BackwardMatchE: argument 2"}
!135 = distinct !{!135, !131, !"_ZN13duckdb_brotliL22StoreAndFindMatchesH10EPNS_3H10EPKhmmmmPmPNS_13BackwardMatchE: argument 3"}
!136 = !{!130}
!137 = !{!133}
!138 = !{!130, !134, !135, !125}
!139 = !{!134, !135, !125}
!140 = !{!133, !128}
!141 = distinct !{!141, !9}
!142 = !{!143}
!143 = distinct !{!143, !144, !"_ZN13duckdb_brotliL8StoreH10EPNS_3H10EPKhmm: argument 0"}
!144 = distinct !{!144, !"_ZN13duckdb_brotliL8StoreH10EPNS_3H10EPKhmm"}
!145 = !{!146}
!146 = distinct !{!146, !144, !"_ZN13duckdb_brotliL8StoreH10EPNS_3H10EPKhmm: argument 1"}
!147 = !{!148, !143}
!148 = distinct !{!148, !149, !"_ZN13duckdb_brotliL22StoreAndFindMatchesH10EPNS_3H10EPKhmmmmPmPNS_13BackwardMatchE: argument 0"}
!149 = distinct !{!149, !"_ZN13duckdb_brotliL22StoreAndFindMatchesH10EPNS_3H10EPKhmmmmPmPNS_13BackwardMatchE"}
!150 = !{!151, !152, !153, !146}
!151 = distinct !{!151, !149, !"_ZN13duckdb_brotliL22StoreAndFindMatchesH10EPNS_3H10EPKhmmmmPmPNS_13BackwardMatchE: argument 1"}
!152 = distinct !{!152, !149, !"_ZN13duckdb_brotliL22StoreAndFindMatchesH10EPNS_3H10EPKhmmmmPmPNS_13BackwardMatchE: argument 2"}
!153 = distinct !{!153, !149, !"_ZN13duckdb_brotliL22StoreAndFindMatchesH10EPNS_3H10EPKhmmmmPmPNS_13BackwardMatchE: argument 3"}
!154 = !{!148}
end_hunk_3
