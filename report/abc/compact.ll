Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/compact?download=true
inline.NumInlined: 32
inline.NumDeleted: 21
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@kissat_finalize_compacting:bb.a
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !62
  %i.ec = zext i32 %spec.select.i to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.ec
  store i8 %i.eb, ptr %i.ed, align 1, !tbaa !62
  %i.ee = load ptr, ptr %i.bx, align 8, !tbaa !61 ; 2 uses
  %i.ef = zext i32 %i.dw to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !62
  %i.ei = zext i32 %i.dx to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ei
  store i8 %i.eh, ptr %i.ej, align 1, !tbaa !62
  br label %kissat_map_literal.exit.thread

kissat_map_literal.exit.thread:                   ; preds = %bb.s, %bb.r, %bb.t, %kissat_map_literal.exit
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %.not65 = icmp eq i64 %indvars.iv.next135, %i.by
  br i1 %.not65, label %._crit_edge131, label %bb.r, !llvm.loop !75

bb.u:                                             ; preds = %._crit_edge131
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !95 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !96 ; 2 uses
  %.not21.i = icmp eq ptr %i.el, %i.en
  br i1 %.not21.i, label %compact_units.exit, label %.lr.ph.i73

.lr.ph.i73:                                       ; preds = %bb.u
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !66
  br label %bb.v

bb.v:                                             ; preds = %bb.x, %.lr.ph.i73
  %.022.i = phi ptr [ %i.el, %.lr.ph.i73 ], [ %i.ex, %bb.x ] ; 2 uses
  %i.eq = load i32, ptr %.022.i, align 4, !tbaa !60 ; 2 uses
  %i.er = tail call i32 @llvm.abs.i32(i32 %i.eq, i1 true)
  %i.es = lshr i32 %i.eq, 31
  %i.et = xor i32 %i.es, %2                       ; 2 uses
  %i.eu = zext nneg i32 %i.er to i64
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.eu ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !68
  %.not20.i = icmp eq i32 %i.et, %i.ew
  br i1 %.not20.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 %i.et, ptr %i.ev, align 4, !tbaa !68
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ex = getelementptr inbounds nuw i8, ptr %.022.i, i64 4 ; 2 uses
  %.not.i74 = icmp eq ptr %i.ex, %i.en
  br i1 %.not.i74, label %compact_units.exit, label %bb.v, !llvm.loop !76

compact_units.exit:                               ; preds = %bb.x, %bb.u, %._crit_edge131
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !63
  %i.fa = zext i32 %1 to i64                      ; 5 uses
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %i.ez, i64 %i.fa
  %i.fc = zext i32 %i.d to i64                    ; 2 uses
  %i.fd = shl nuw nsw i64 %i.fc, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.fb, i8 0, i64 %i.fd, i1 false)
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !59
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.fa
  %i.fh = shl nuw nsw i64 %i.fc, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.fg, i8 0, i64 %i.fh, i1 false)
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !61
  %i.fk = shl i32 %1, 1
  %i.fl = zext i32 %i.fk to i64                   ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fl
  %i.fn = shl i32 %i.d, 1
  %i.fo = zext i32 %i.fn to i64                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fm, i8 0, i64 %i.fo, i1 false)
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !97
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.fl
  %i.fs = shl nuw nsw i64 %i.fo, 3
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.fr, i8 0, i64 %i.fs, i1 false)
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !98 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  store i32 0, ptr %i.fw, align 8, !tbaa !99
  %i.fx = load i32, ptr %i.fv, align 8, !tbaa !60 ; 2 uses
  %i.fy = icmp sgt i32 %i.fx, -1
  br i1 %i.fy, label %.lr.ph.i76, label %._crit_edge.i

.lr.ph.i76:                                       ; preds = %compact_units.exit
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !65
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 304
  br label %bb.y

._crit_edge.i:                                    ; preds = %bb.ac, %compact_units.exit
  %.035.lcssa.i = phi ptr [ %i.fv, %compact_units.exit ], [ %i.hc, %bb.ac ]
  %.034.lcssa.i = phi i32 [ -1, %compact_units.exit ], [ %.1.i.i78, %bb.ac ]
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 292
  store i32 %.034.lcssa.i, ptr %i.ge, align 4, !tbaa !100
  store i32 -1, ptr %.035.lcssa.i, align 4, !tbaa !60
  %i.gf = load i32, ptr %i.a, align 8, !tbaa !58  ; 2 uses
  %.not44.i = icmp eq i32 %i.gf, 0
  br i1 %.not44.i, label %compact_queue.exit, label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %._crit_edge.i
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.gi = zext i32 %i.gf to i64
  br label %bb.ad

bb.y:                                             ; preds = %bb.ac, %.lr.ph.i76
  %i.gj = phi i32 [ %i.fx, %.lr.ph.i76 ], [ %i.hd, %bb.ac ] ; 2 uses
  %.03442.i = phi i32 [ -1, %.lr.ph.i76 ], [ %.1.i.i78, %bb.ac ]
  %.03541.i = phi ptr [ %i.fv, %.lr.ph.i76 ], [ %i.hc, %bb.ac ]
  %i.gk = zext nneg i32 %i.gj to i64              ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.gk
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !60 ; 2 uses
  %.not.i.i77 = icmp eq i32 %i.gm, 0
  br i1 %.not.i.i77, label %map_idx.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gn = tail call i32 @llvm.abs.i32(i32 %i.gm, i1 true)
  %i.go = load ptr, ptr %i.gb, align 8, !tbaa !66
  %i.gp = zext nneg i32 %i.gn to i64
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.gp ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 6
  %i.gs = load i8, ptr %i.gr, align 2, !tbaa !87, !range !88, !noundef !89
  %i.gt = trunc nuw i8 %i.gs to i1
  br i1 %i.gt, label %map_idx.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gu = load i32, ptr %i.gq, align 4, !tbaa !68
  %i.gv = lshr i32 %i.gu, 1
  br label %map_idx.exit.i

map_idx.exit.i:                                   ; preds = %bb.aa, %bb.z, %bb.y
  %.1.i.i78 = phi i32 [ -1, %bb.y ], [ %i.gv, %bb.aa ], [ -1, %bb.z ] ; 4 uses
  %i.gw = getelementptr inbounds nuw [12 x i8], ptr %i.fu, i64 %i.gk ; 3 uses
  store i32 %.03442.i, ptr %i.gw, align 4, !tbaa !102
  %i.gx = load i32, ptr %i.fw, align 8, !tbaa !99
  %i.gy = add i32 %i.gx, 1                        ; 3 uses
  store i32 %i.gy, ptr %i.fw, align 8, !tbaa !99
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store i32 %i.gy, ptr %i.gz, align 4, !tbaa !103
  %i.ha = load i32, ptr %i.gc, align 4, !tbaa !104
  %i.hb = icmp eq i32 %i.gj, %i.ha
  br i1 %i.hb, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %map_idx.exit.i
  store i32 %.1.i.i78, ptr %i.gc, align 4, !tbaa !104
  store i32 %i.gy, ptr %i.gd, align 8, !tbaa !105
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %map_idx.exit.i
  store i32 %.1.i.i78, ptr %.03541.i, align 4, !tbaa !60
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gw, i64 4 ; 3 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !60 ; 2 uses
  %i.he = icmp sgt i32 %i.hd, -1
  br i1 %i.he, label %bb.y, label %._crit_edge.i, !llvm.loop !77

bb.ad:                                            ; preds = %map_idx.exit39.thread.i, %.lr.ph47.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph47.i ], [ %indvars.iv.next.i, %map_idx.exit39.thread.i ] ; 3 uses
  %i.hf = load ptr, ptr %i.gg, align 8, !tbaa !65
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv.i
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !60 ; 2 uses
  %.not.i37.i = icmp eq i32 %i.hh, 0
  br i1 %.not.i37.i, label %map_idx.exit39.thread.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hi = tail call i32 @llvm.abs.i32(i32 %i.hh, i1 true)
  %i.hj = load ptr, ptr %i.gh, align 8, !tbaa !66
  %i.hk = zext nneg i32 %i.hi to i64
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %i.hk ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 6
  %i.hn = load i8, ptr %i.hm, align 2, !tbaa !87, !range !88, !noundef !89
  %i.ho = trunc nuw i8 %i.hn to i1
  br i1 %i.ho, label %map_idx.exit39.thread.i, label %map_idx.exit39.i

map_idx.exit39.i:                                 ; preds = %bb.ae
  %i.hp = load i32, ptr %i.hl, align 4, !tbaa !68
  %i.hq = lshr i32 %i.hp, 1
  %i.hr = zext nneg i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [12 x i8], ptr %i.fu, i64 %i.hr
  %i.ht = getelementptr inbounds nuw [12 x i8], ptr %i.fu, i64 %indvars.iv.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.hs, ptr noundef nonnull align 4 dereferenceable(12) %i.ht, i64 12, i1 false), !tbaa.struct !106
  br label %map_idx.exit39.thread.i

map_idx.exit39.thread.i:                          ; preds = %map_idx.exit39.i, %bb.ae, %bb.ad
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i75 = icmp eq i64 %indvars.iv.next.i, %i.gi
  br i1 %.not.i75, label %compact_queue.exit, label %bb.ad, !llvm.loop !78

compact_queue.exit:                               ; preds = %map_idx.exit39.thread.i, %._crit_edge.i
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 3784 ; 2 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !107 ; 4 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 3792 ; 2 uses
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !108 ; 4 uses
  %.not22.i = icmp eq ptr %i.hv, %i.hx
  br i1 %.not22.i, label %._crit_edge.i84, label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %compact_queue.exit
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !65
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.af

._crit_edge.i84:                                  ; preds = %map_idx.exit.thread.i, %compact_queue.exit
  %.019.lcssa.i = phi ptr [ %i.hv, %compact_queue.exit ], [ %.1.i82, %map_idx.exit.thread.i ] ; 3 uses
  %i.ib = icmp eq ptr %.019.lcssa.i, %i.hx
  br i1 %i.ib, label %bb.ai, label %bb.ah

bb.af:                                            ; preds = %map_idx.exit.thread.i, %.lr.ph.i79
  %.024.i = phi ptr [ %i.hv, %.lr.ph.i79 ], [ %i.iq, %map_idx.exit.thread.i ] ; 2 uses
  %.01923.i = phi ptr [ %i.hv, %.lr.ph.i79 ], [ %.1.i82, %map_idx.exit.thread.i ] ; 4 uses
  %i.ic = load i32, ptr %.024.i, align 4, !tbaa !60
  %i.id = zext i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.id
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !60 ; 2 uses
  %.not.i.i80 = icmp eq i32 %i.if, 0
  br i1 %.not.i.i80, label %map_idx.exit.thread.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ig = tail call i32 @llvm.abs.i32(i32 %i.if, i1 true)
  %i.ih = load ptr, ptr %i.ia, align 8, !tbaa !66
  %i.ii = zext nneg i32 %i.ig to i64
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %i.ii ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 6
  %i.il = load i8, ptr %i.ik, align 2, !tbaa !87, !range !88, !noundef !89
  %i.im = trunc nuw i8 %i.il to i1
  br i1 %i.im, label %map_idx.exit.thread.i, label %map_idx.exit.i81

map_idx.exit.i81:                                 ; preds = %bb.ag
  %i.in = load i32, ptr %i.ij, align 4, !tbaa !68
  %i.io = lshr i32 %i.in, 1
  %i.ip = getelementptr inbounds nuw i8, ptr %.01923.i, i64 4
  store i32 %i.io, ptr %.01923.i, align 4, !tbaa !60
  br label %map_idx.exit.thread.i

map_idx.exit.thread.i:                            ; preds = %map_idx.exit.i81, %bb.ag, %bb.af
  %.1.i82 = phi ptr [ %i.ip, %map_idx.exit.i81 ], [ %.01923.i, %bb.ag ], [ %.01923.i, %bb.af ] ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 2 uses
  %.not.i83 = icmp eq ptr %i.iq, %i.hx
  br i1 %.not.i83, label %._crit_edge.i84, label %bb.af, !llvm.loop !79

bb.ah:                                            ; preds = %._crit_edge.i84
  store ptr %.019.lcssa.i, ptr %i.hw, align 8, !tbaa !108
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %._crit_edge.i84
  %4 = phi ptr [ %.019.lcssa.i, %bb.ah ], [ %i.hx, %._crit_edge.i84 ]
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 3800
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !109
  %i.it = icmp eq ptr %4, %i.is
  br i1 %i.it, label %compact_stack.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @kissat_shrink_stack(ptr noundef nonnull %0, ptr noundef nonnull %i.hu, i64 noundef 4) #7
  br label %compact_stack.exit

compact_stack.exit:                               ; preds = %bb.ai, %bb.aj
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  call void @kissat_resize_heap(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef %1) #7
  %i.iv = load i8, ptr %i.iu, align 8, !tbaa !110, !range !88, !noundef !89
  %i.iw = trunc nuw i8 %i.iv to i1
  br i1 %i.iw, label %bb.ak, label %.loopexit.i

bb.ak:                                            ; preds = %compact_stack.exit
  %i.ix = load i32, ptr %i.a, align 8, !tbaa !58  ; 2 uses
  %.not45.i = icmp eq i32 %i.ix, 0
  br i1 %.not45.i, label %.loopexit.i, label %.lr.ph.i85

.lr.ph.i85:                                       ; preds = %bb.ak
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.jb = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 352
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.je = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jf = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.jg = zext i32 %i.ix to i64
  br label %bb.al

bb.al:                                            ; preds = %kissat_update_heap.exit.i, %.lr.ph.i85
  %indvars.iv.i86 = phi i64 [ 0, %.lr.ph.i85 ], [ %indvars.iv.next.i89, %kissat_update_heap.exit.i ] ; 4 uses
  %i.jh = load ptr, ptr %i.iy, align 8, !tbaa !65
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %indvars.iv.i86
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !60 ; 2 uses
  %.not.i.i87 = icmp eq i32 %i.jj, 0
  br i1 %.not.i.i87, label %kissat_update_heap.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.jk = call i32 @llvm.abs.i32(i32 %i.jj, i1 true)
  %i.jl = load ptr, ptr %i.iz, align 8, !tbaa !66
  %i.jm = zext nneg i32 %i.jk to i64
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %i.jm ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 6
  %i.jp = load i8, ptr %i.jo, align 2, !tbaa !87, !range !88, !noundef !89
  %i.jq = trunc nuw i8 %i.jp to i1
  br i1 %i.jq, label %kissat_update_heap.exit.i, label %map_idx.exit.i88

map_idx.exit.i88:                                 ; preds = %bb.am
  %i.jr = load i32, ptr %i.jn, align 4, !tbaa !68
  %i.js = lshr i32 %i.jr, 1                       ; 7 uses
  %i.jt = load i32, ptr %i.ja, align 4, !tbaa !111
  %i.ju = zext i32 %i.jt to i64
  %i.jv = icmp samesign ult i64 %indvars.iv.i86, %i.ju
  br i1 %i.jv, label %kissat_get_heap_score.exit.i, label %kissat_get_heap_score.exit.thread.i

kissat_get_heap_score.exit.i:                     ; preds = %map_idx.exit.i88
  %i.jw = load ptr, ptr %i.jc, align 8, !tbaa !112
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv.i86
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !113 ; 3 uses
  %i.jz = load i32, ptr %i.jb, align 4, !tbaa !111
  %i.ka = icmp ult i32 %i.js, %i.jz
  br i1 %i.ka, label %kissat_get_heap_score.exit.i.i, label %kissat_get_heap_score.exit.thread.i.i

kissat_get_heap_score.exit.thread.i:              ; preds = %map_idx.exit.i88
  %i.kb = load i32, ptr %i.jb, align 4, !tbaa !111
  %i.kc = icmp ult i32 %i.js, %i.kb
  br i1 %i.kc, label %kissat_get_heap_score.exit.i.i, label %kissat_update_heap.exit.i

kissat_get_heap_score.exit.i.i:                   ; preds = %kissat_get_heap_score.exit.thread.i, %kissat_get_heap_score.exit.i
  %i.kd = phi double [ 0.000000e+00, %kissat_get_heap_score.exit.thread.i ], [ %i.jy, %kissat_get_heap_score.exit.i ] ; 2 uses
  %i.ke = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !112 ; 2 uses
  %i.kf = zext nneg i32 %i.js to i64              ; 2 uses
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %i.kf
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !113 ; 2 uses
  %i.ki = fcmp oeq double %i.kh, %i.kd
  br i1 %i.ki, label %kissat_update_heap.exit.i, label %bb.an

kissat_get_heap_score.exit.thread.i.i:            ; preds = %kissat_get_heap_score.exit.i
  %i.kj = fcmp oeq double %i.jy, 0.000000e+00
  br i1 %i.kj, label %kissat_update_heap.exit.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %kissat_get_heap_score.exit.thread.i.i
  %i.kk = add nuw i32 %i.js, 1
  call void @kissat_enlarge_heap(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef %i.kk) #7
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !112
  %.pre27.i.i = zext nneg i32 %i.js to i64
  br label %bb.an

bb.an:                                            ; preds = %.thread.i.i, %kissat_get_heap_score.exit.i.i
  %i.kl = phi double [ %i.kd, %kissat_get_heap_score.exit.i.i ], [ %i.jy, %.thread.i.i ] ; 4 uses
  %.pre-phi.i.i = phi i64 [ %i.kf, %kissat_get_heap_score.exit.i.i ], [ %.pre27.i.i, %.thread.i.i ] ; 2 uses
  %i.km = phi ptr [ %i.ke, %kissat_get_heap_score.exit.i.i ], [ %.pre.i.i, %.thread.i.i ] ; 4 uses
  %i.kn = phi double [ %i.kh, %kissat_get_heap_score.exit.i.i ], [ 0.000000e+00, %.thread.i.i ]
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %.pre-phi.i.i
  store double %i.kl, ptr %i.ko, align 8, !tbaa !113
  %i.kp = load i8, ptr %3, align 8, !tbaa !110, !range !88, !noundef !89
  %i.kq = trunc nuw i8 %i.kp to i1
  br i1 %i.kq, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store i8 1, ptr %3, align 8, !tbaa !110
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.kr = load i32, ptr %i.jb, align 4, !tbaa !111
  %i.ks = icmp ult i32 %i.js, %i.kr
  br i1 %i.ks, label %kissat_heap_contains.exit.i.i, label %kissat_update_heap.exit.i

kissat_heap_contains.exit.i.i:                    ; preds = %bb.ap
  %i.kt = load ptr, ptr %i.jd, align 8, !tbaa !114 ; 3 uses
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %.pre-phi.i.i ; 2 uses
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !60 ; 6 uses
  %i.kw = icmp sgt i32 %i.kv, -1
  br i1 %i.kw, label %bb.aq, label %kissat_update_heap.exit.i

bb.aq:                                            ; preds = %kissat_heap_contains.exit.i.i
  %i.kx = fcmp ogt double %i.kl, %i.kn
  %i.ky = load ptr, ptr %i.je, align 8, !tbaa !115 ; 7 uses
  br i1 %i.kx, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %.not3.i.i.i = icmp eq i32 %i.kv, 0
  br i1 %.not3.i.i.i, label %kissat_heap_contains.exit.thread.sink.split.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ar, %bb.as
  %.0274.i.i.i = phi i32 [ %i.la, %bb.as ], [ %i.kv, %bb.ar ] ; 4 uses
  %i.kz = add nsw i32 %.0274.i.i.i, -1
  %i.la = lshr i32 %i.kz, 1                       ; 3 uses
  %i.lb = zext nneg i32 %i.la to i64
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.lb
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !60 ; 2 uses
  %i.le = zext i32 %i.ld to i64                   ; 2 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %i.le
  %i.lg = load double, ptr %i.lf, align 8, !tbaa !113
  %i.lh = fcmp ult double %i.lg, %i.kl
  br i1 %i.lh, label %bb.as, label %kissat_heap_contains.exit.thread.sink.split.i.i

bb.as:                                            ; preds = %.lr.ph.i.i.i
  %i.li = zext nneg i32 %.0274.i.i.i to i64
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.li
  store i32 %i.ld, ptr %i.lj, align 4, !tbaa !60
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %i.le
  store i32 %.0274.i.i.i, ptr %i.lk, align 4, !tbaa !60
  %.not.i.i.i91 = icmp eq i32 %i.la, 0
  br i1 %.not.i.i.i91, label %kissat_heap_contains.exit.thread.sink.split.i.i, label %.lr.ph.i.i.i

bb.at:                                            ; preds = %bb.aq
  %i.ll = load ptr, ptr %i.jf, align 8, !tbaa !116
  %i.lm = ptrtoint ptr %i.ll to i64
  %i.ln = ptrtoint ptr %i.ky to i64
  %i.lo = sub i64 %i.lm, %i.ln
  %i.lp = lshr exact i64 %i.lo, 2
  %i.lq = trunc i64 %i.lp to i32                  ; 3 uses
  %i.lr = shl nuw i32 %i.kv, 1                    ; 2 uses
  %i.ls = or disjoint i32 %i.lr, 1                ; 2 uses
  %.not4.i.i.i = icmp ult i32 %i.ls, %i.lq
  br i1 %.not4.i.i.i, label %.lr.ph.i25.i.i, label %kissat_heap_contains.exit.thread.sink.split.i.i

.lr.ph.i25.i.i:                                   ; preds = %bb.at, %bb.aw
  %i.lt = phi i32 [ %i.mq, %bb.aw ], [ %i.ls, %bb.at ] ; 3 uses
  %i.lu = phi i32 [ %i.mp, %bb.aw ], [ %i.lr, %bb.at ]
  %.0495.i.i.i = phi i32 [ %.148.i.i.i, %bb.aw ], [ %i.kv, %bb.at ] ; 3 uses
  %i.lv = zext i32 %i.lt to i64
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.lv
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !60 ; 3 uses
  %i.ly = zext i32 %i.lx to i64
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %i.ly
  %i.ma = load double, ptr %i.lz, align 8, !tbaa !113 ; 3 uses
  %i.mb = add nuw i32 %i.lu, 2                    ; 3 uses
  %i.mc = icmp ult i32 %i.mb, %i.lq
  br i1 %i.mc, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.lr.ph.i25.i.i
  %i.md = zext i32 %i.mb to i64
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.md
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !60 ; 2 uses
  %i.mg = zext i32 %i.mf to i64
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %i.mg
  %i.mi = load double, ptr %i.mh, align 8, !tbaa !113 ; 2 uses
  %i.mj = fcmp ogt double %i.mi, %i.ma            ; 3 uses
  %.047.i.i.i = select i1 %i.mj, i32 %i.mb, i32 %i.lt
  %.043.i.i.i = select i1 %i.mj, i32 %i.mf, i32 %i.lx
  %.0.i.i.i = select i1 %i.mj, double %i.mi, double %i.ma
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %.lr.ph.i25.i.i
  %.148.i.i.i = phi i32 [ %.047.i.i.i, %bb.au ], [ %i.lt, %.lr.ph.i25.i.i ] ; 3 uses
  %.144.i.i.i = phi i32 [ %.043.i.i.i, %bb.au ], [ %i.lx, %.lr.ph.i25.i.i ] ; 2 uses
  %.1.i.i.i = phi double [ %.0.i.i.i, %bb.au ], [ %i.ma, %.lr.ph.i25.i.i ]
  %i.mk = fcmp ugt double %.1.i.i.i, %i.kl
  br i1 %i.mk, label %bb.aw, label %kissat_heap_contains.exit.thread.sink.split.i.i

bb.aw:                                            ; preds = %bb.av
end_hunk_0
