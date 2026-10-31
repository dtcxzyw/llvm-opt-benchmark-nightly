Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuklear/original/unity?download=true
inline.NumInlined: 1904
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 145
begin_hunk_0_@nk_font_atlas_add_compressed:bb.a
  store <4 x i8> %wide.load240, ptr %next.gep239, align 1, !tbaa !56
  %index.next241 = add nuw i64 %index237, 4       ; 2 uses
  %i.mm = icmp eq i64 %index.next241, %n.vec235
  br i1 %i.mm, label %vec.epilog.middle.block242, label %vec.epilog.vector.body236, !llvm.loop !922

vec.epilog.middle.block242:                       ; preds = %vec.epilog.vector.body236
  %cmp.n243 = icmp eq i64 %n.vec235, %i.lh
  br i1 %cmp.n243, label %nk_decompress_token.exit.thread.sink.split.i, label %.preheader.i68.i.i.preheader

.preheader.i68.i.i.preheader:                     ; preds = %iter.check229, %vec.epilog.iter.check230, %vec.epilog.middle.block242
  %.09.i69.i.i.ph = phi i32 [ %i.lg, %iter.check229 ], [ %i.mc, %vec.epilog.iter.check230 ], [ %i.mj, %vec.epilog.middle.block242 ] ; 4 uses
  %.048.i70.i.i.ph = phi ptr [ %i.lx, %iter.check229 ], [ %i.md, %vec.epilog.iter.check230 ], [ %i.mk, %vec.epilog.middle.block242 ] ; 2 uses
  %.ph323 = phi ptr [ %.sink.i64.i, %iter.check229 ], [ %i.me, %vec.epilog.iter.check230 ], [ %i.ml, %vec.epilog.middle.block242 ] ; 2 uses
  %i.mn = add nsw i32 %.09.i69.i.i.ph, -1
  %xtraiter338 = and i32 %.09.i69.i.i.ph, 7       ; 2 uses
  %lcmp.mod339.not = icmp eq i32 %xtraiter338, 0
  br i1 %lcmp.mod339.not, label %.preheader.i68.i.i.prol.loopexit, label %.preheader.i68.i.i.prol

.preheader.i68.i.i.prol:                          ; preds = %.preheader.i68.i.i.preheader, %.preheader.i68.i.i.prol
  %.09.i69.i.i.prol = phi i32 [ %i.mp, %.preheader.i68.i.i.prol ], [ %.09.i69.i.i.ph, %.preheader.i68.i.i.preheader ]
  %.048.i70.i.i.prol = phi ptr [ %i.mq, %.preheader.i68.i.i.prol ], [ %.048.i70.i.i.ph, %.preheader.i68.i.i.preheader ] ; 2 uses
  %i.mo = phi ptr [ %i.ms, %.preheader.i68.i.i.prol ], [ %.ph323, %.preheader.i68.i.i.preheader ] ; 2 uses
  %prol.iter340 = phi i32 [ %prol.iter340.next, %.preheader.i68.i.i.prol ], [ 0, %.preheader.i68.i.i.preheader ]
  %i.mp = add nsw i32 %.09.i69.i.i.prol, -1       ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.048.i70.i.i.prol, i64 1 ; 2 uses
  %i.mr = load i8, ptr %.048.i70.i.i.prol, align 1, !tbaa !56
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mo, i64 1 ; 3 uses
  store i8 %i.mr, ptr %i.mo, align 1, !tbaa !56
  %prol.iter340.next = add i32 %prol.iter340, 1   ; 2 uses
  %prol.iter340.cmp.not = icmp eq i32 %prol.iter340.next, %xtraiter338
  br i1 %prol.iter340.cmp.not, label %.preheader.i68.i.i.prol.loopexit, label %.preheader.i68.i.i.prol, !llvm.loop !923

.preheader.i68.i.i.prol.loopexit:                 ; preds = %.preheader.i68.i.i.prol, %.preheader.i68.i.i.preheader
  %.lcssa330.unr = phi ptr [ poison, %.preheader.i68.i.i.preheader ], [ %i.ms, %.preheader.i68.i.i.prol ]
  %.09.i69.i.i.unr = phi i32 [ %.09.i69.i.i.ph, %.preheader.i68.i.i.preheader ], [ %i.mp, %.preheader.i68.i.i.prol ]
  %.048.i70.i.i.unr = phi ptr [ %.048.i70.i.i.ph, %.preheader.i68.i.i.preheader ], [ %i.mq, %.preheader.i68.i.i.prol ]
  %.unr341 = phi ptr [ %.ph323, %.preheader.i68.i.i.preheader ], [ %i.ms, %.preheader.i68.i.i.prol ]
  %i.mt = icmp ult i32 %i.mn, 7
  br i1 %i.mt, label %nk_decompress_token.exit.thread.sink.split.i, label %.preheader.i68.i.i

.preheader.i68.i.i:                               ; preds = %.preheader.i68.i.i.prol.loopexit, %.preheader.i68.i.i
  %.09.i69.i.i = phi i32 [ %i.nq, %.preheader.i68.i.i ], [ %.09.i69.i.i.unr, %.preheader.i68.i.i.prol.loopexit ]
  %.048.i70.i.i = phi ptr [ %i.nr, %.preheader.i68.i.i ], [ %.048.i70.i.i.unr, %.preheader.i68.i.i.prol.loopexit ] ; 9 uses
  %i.mu = phi ptr [ %i.nt, %.preheader.i68.i.i ], [ %.unr341, %.preheader.i68.i.i.prol.loopexit ] ; 9 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.048.i70.i.i, i64 1
  %i.mw = load i8, ptr %.048.i70.i.i, align 1, !tbaa !56
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mu, i64 1
  store i8 %i.mw, ptr %i.mu, align 1, !tbaa !56
  %i.my = getelementptr inbounds nuw i8, ptr %.048.i70.i.i, i64 2
  %i.mz = load i8, ptr %i.mv, align 1, !tbaa !56
  %i.na = getelementptr inbounds nuw i8, ptr %i.mu, i64 2
  store i8 %i.mz, ptr %i.mx, align 1, !tbaa !56
  %i.nb = getelementptr inbounds nuw i8, ptr %.048.i70.i.i, i64 3
  %i.nc = load i8, ptr %i.my, align 1, !tbaa !56
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mu, i64 3
  store i8 %i.nc, ptr %i.na, align 1, !tbaa !56
  %i.ne = getelementptr inbounds nuw i8, ptr %.048.i70.i.i, i64 4
  %i.nf = load i8, ptr %i.nb, align 1, !tbaa !56
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mu, i64 4
  store i8 %i.nf, ptr %i.nd, align 1, !tbaa !56
  %i.nh = getelementptr inbounds nuw i8, ptr %.048.i70.i.i, i64 5
  %i.ni = load i8, ptr %i.ne, align 1, !tbaa !56
  %i.nj = getelementptr inbounds nuw i8, ptr %i.mu, i64 5
  store i8 %i.ni, ptr %i.ng, align 1, !tbaa !56
  %i.nk = getelementptr inbounds nuw i8, ptr %.048.i70.i.i, i64 6
  %i.nl = load i8, ptr %i.nh, align 1, !tbaa !56
  %i.nm = getelementptr inbounds nuw i8, ptr %i.mu, i64 6
  store i8 %i.nl, ptr %i.nj, align 1, !tbaa !56
  %i.nn = getelementptr inbounds nuw i8, ptr %.048.i70.i.i, i64 7
  %i.no = load i8, ptr %i.nk, align 1, !tbaa !56
  %i.np = getelementptr inbounds nuw i8, ptr %i.mu, i64 7
  store i8 %i.no, ptr %i.nm, align 1, !tbaa !56
  %i.nq = add nsw i32 %.09.i69.i.i, -8            ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.048.i70.i.i, i64 8
  %i.ns = load i8, ptr %i.nn, align 1, !tbaa !56
  %i.nt = getelementptr inbounds nuw i8, ptr %i.mu, i64 8 ; 2 uses
  store i8 %i.ns, ptr %i.np, align 1, !tbaa !56
  %.not.i71.i.i.7 = icmp eq i32 %i.nq, 0
  br i1 %.not.i71.i.i.7, label %nk_decompress_token.exit.thread.sink.split.i, label %.preheader.i68.i.i, !llvm.loop !924

bb.z:                                             ; preds = %bb.w
  %i.nu = icmp samesign ugt i8 %i.ba, 7
  br i1 %i.nu, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.nv = getelementptr inbounds nuw i8, ptr %.036.i, i64 2 ; 2 uses
  %i.nw = shl nuw nsw i32 %i.bb, 8
  %i.nx = getelementptr inbounds nuw i8, ptr %.036.i, i64 1 ; 2 uses
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !56  ; 3 uses
  %i.nz = zext i8 %i.ny to i32
  %i.oa = or disjoint i32 %i.nw, %i.nz
  %i.ob = add nsw i32 %i.oa, -2047
  %i.oc = zext nneg i32 %i.ob to i64              ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %.sink.i64.i, i64 %i.oc ; 3 uses
  %i.oe = icmp ugt ptr %i.od, %i.ax
  br i1 %i.oe, label %nk__lit.exit75.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.of = icmp ult ptr %i.nv, %1
  br i1 %i.of, label %nk__lit.exit75.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.og = tail call fastcc ptr @nk_memcopy(ptr noundef %.sink.i64.i, ptr noundef nonnull %i.nv, i64 noundef %i.oc) ; 0 uses
  %.pre.i.i = load i8, ptr %.036.i, align 1, !tbaa !56
  %.pre98.i.i = load i8, ptr %i.nx, align 1, !tbaa !56
  br label %nk__lit.exit75.i.i

nk__lit.exit75.i.i:                               ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.oh = phi i8 [ %.pre98.i.i, %bb.ac ], [ %i.ny, %bb.aa ], [ %i.ny, %bb.ab ]
  %i.oi = phi i8 [ %.pre.i.i, %bb.ac ], [ %i.ba, %bb.aa ], [ %i.ba, %bb.ab ]
  %.sink.i74.i.i = phi ptr [ %i.od, %bb.ac ], [ %i.od, %bb.aa ], [ %i.az, %bb.ab ] ; 2 uses
  store ptr %.sink.i74.i.i, ptr @nk__dout, align 8, !tbaa !60
  %i.oj = zext i8 %i.oi to i64
  %i.ok = shl nuw nsw i64 %i.oj, 8
  %i.ol = zext i8 %i.oh to i64
  %i.om = getelementptr i8, ptr %.036.i, i64 %i.ok
  %i.on = getelementptr i8, ptr %i.om, i64 %i.ol
  %i.oo = getelementptr i8, ptr %i.on, i64 -2045
  br label %nk_decompress_token.exit.i

bb.ad:                                            ; preds = %bb.z
  switch i8 %i.ba, label %nk_decompress.exit [
    i8 7, label %bb.ae
    i8 6, label %bb.ah
    i8 4, label %bb.aj
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.op = getelementptr inbounds nuw i8, ptr %.036.i, i64 3 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %.036.i, i64 1 ; 2 uses
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !56
  %i.os = zext i8 %i.or to i64
  %i.ot = shl nuw nsw i64 %i.os, 8                ; 3 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %.036.i, i64 2 ; 2 uses
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !56
  %i.ow = zext i8 %i.ov to i64                    ; 3 uses
  %i.ox = or disjoint i64 %i.ot, %i.ow
  %i.oy = add nuw nsw i64 %i.ox, 1                ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %.sink.i64.i, i64 %i.oy ; 3 uses
  %i.pa = icmp ugt ptr %i.oz, %i.ax
  br i1 %i.pa, label %nk__lit.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.pb = icmp ult ptr %i.op, %1
  br i1 %i.pb, label %nk__lit.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.pc = tail call fastcc ptr @nk_memcopy(ptr noundef %.sink.i64.i, ptr noundef nonnull %i.op, i64 noundef %i.oy) ; 0 uses
  %.pre.i = load i8, ptr %i.oq, align 1, !tbaa !56
  %.pre79.i = load i8, ptr %i.ou, align 1, !tbaa !56
  %.pre81.i = zext i8 %.pre.i to i64
  %.pre82.i = shl nuw nsw i64 %.pre81.i, 8
  %.pre84.i = zext i8 %.pre79.i to i64
  br label %nk__lit.exit.i

nk__lit.exit.i:                                   ; preds = %bb.ag, %bb.af, %bb.ae
  %.pre-phi85.i = phi i64 [ %i.ow, %bb.af ], [ %i.ow, %bb.ae ], [ %.pre84.i, %bb.ag ]
  %.pre-phi83.i = phi i64 [ %i.ot, %bb.af ], [ %i.ot, %bb.ae ], [ %.pre82.i, %bb.ag ]
  %.sink.i.i = phi ptr [ %i.az, %bb.af ], [ %i.oz, %bb.ae ], [ %i.oz, %bb.ag ] ; 2 uses
  store ptr %.sink.i.i, ptr @nk__dout, align 8, !tbaa !60
  %i.pd = getelementptr inbounds nuw i8, ptr %.036.i, i64 %.pre-phi83.i
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 %.pre-phi85.i
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 4
  br label %nk_decompress_token.exit.i

bb.ah:                                            ; preds = %bb.ad
  %i.pg = getelementptr inbounds nuw i8, ptr %.036.i, i64 4
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !56  ; 3 uses
  %i.pi = zext i8 %i.ph to i32
  %i.pj = add nuw nsw i32 %i.pi, 1                ; 5 uses
  %i.pk = zext nneg i32 %i.pj to i64              ; 6 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %.sink.i64.i, i64 %i.pk ; 2 uses
  %i.pm = icmp ugt ptr %i.pl, %i.ax
  br i1 %i.pm, label %nk_decompress_token.exit.thread.sink.split.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.pn = getelementptr inbounds nuw i8, ptr %.036.i, i64 1
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !56
  %i.pp = zext i8 %i.po to i64
  %i.pq = shl nuw nsw i64 %i.pp, 16               ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %.036.i, i64 2
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !56
  %i.pt = zext i8 %i.ps to i64
  %i.pu = shl nuw nsw i64 %i.pt, 8                ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %.036.i, i64 3
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !56
  %i.px = zext i8 %i.pw to i64                    ; 2 uses
  %i.py = or disjoint i64 %i.pq, %i.px
  %i.pz = or disjoint i64 %i.py, %i.pu
  %i.qa = xor i64 %i.pz, -1
  %i.qb = getelementptr inbounds i8, ptr %.sink.i64.i, i64 %i.qa ; 22 uses
  %i.qc = icmp ult ptr %i.qb, %i.t
  br i1 %i.qc, label %nk_decompress_token.exit.thread.sink.split.i, label %iter.check263

iter.check263:                                    ; preds = %bb.ai
  %min.iters.check249 = icmp ult i8 %i.ph, 3
  br i1 %min.iters.check249, label %.preheader.i76.i.i.preheader, label %vector.memcheck247

vector.memcheck247:                               ; preds = %iter.check263
  %i.qd = or disjoint i64 %i.pq, %i.pu
  %i.qe = or disjoint i64 %i.qd, 1
  %6 = add nuw nsw i64 %i.qe, %i.px
  %diff.check248 = icmp samesign ult i64 %6, 32
  br i1 %diff.check248, label %.preheader.i76.i.i.preheader, label %vector.main.loop.iter.check250

vector.main.loop.iter.check250:                   ; preds = %vector.memcheck247
  %min.iters.check251 = icmp ult i8 %i.ph, 31
  br i1 %min.iters.check251, label %vec.epilog.ph267, label %vector.ph252

vector.ph252:                                     ; preds = %vector.main.loop.iter.check250
  %i.qf = and i64 %i.pk, 28
  %n.vec253 = and i64 %i.pk, 480                  ; 12 uses
  %i.qg = trunc nuw nsw i64 %n.vec253 to i32
  %i.qh = sub nsw i32 %i.pj, %i.qg
  %i.qi = getelementptr i8, ptr %i.qb, i64 %n.vec253
  %i.qj = getelementptr i8, ptr %.sink.i64.i, i64 %n.vec253 ; 2 uses
  %i.qk = getelementptr i8, ptr %i.qb, i64 16
  %wide.load258 = load <16 x i8>, ptr %i.qb, align 1, !tbaa !56
  %wide.load259 = load <16 x i8>, ptr %i.qk, align 1, !tbaa !56
  %i.ql = getelementptr i8, ptr %.sink.i64.i, i64 16
  store <16 x i8> %wide.load258, ptr %.sink.i64.i, align 1, !tbaa !56
  store <16 x i8> %wide.load259, ptr %i.ql, align 1, !tbaa !56
  %i.qm = icmp eq i64 %n.vec253, 32
  br i1 %i.qm, label %middle.block261, label %vector.body254.1

vector.body254.1:                                 ; preds = %vector.ph252
  %next.gep256.1 = getelementptr i8, ptr %i.qb, i64 32
  %next.gep257.1 = getelementptr i8, ptr %.sink.i64.i, i64 32
  %i.qn = getelementptr i8, ptr %i.qb, i64 48
  %wide.load258.1 = load <16 x i8>, ptr %next.gep256.1, align 1, !tbaa !56
  %wide.load259.1 = load <16 x i8>, ptr %i.qn, align 1, !tbaa !56
  %i.qo = getelementptr i8, ptr %.sink.i64.i, i64 48
  store <16 x i8> %wide.load258.1, ptr %next.gep257.1, align 1, !tbaa !56
  store <16 x i8> %wide.load259.1, ptr %i.qo, align 1, !tbaa !56
  %i.qp = icmp eq i64 %n.vec253, 64
  br i1 %i.qp, label %middle.block261, label %vector.body254.2

vector.body254.2:                                 ; preds = %vector.body254.1
  %next.gep256.2 = getelementptr i8, ptr %i.qb, i64 64
  %next.gep257.2 = getelementptr i8, ptr %.sink.i64.i, i64 64
  %i.qq = getelementptr i8, ptr %i.qb, i64 80
  %wide.load258.2 = load <16 x i8>, ptr %next.gep256.2, align 1, !tbaa !56
  %wide.load259.2 = load <16 x i8>, ptr %i.qq, align 1, !tbaa !56
  %i.qr = getelementptr i8, ptr %.sink.i64.i, i64 80
  store <16 x i8> %wide.load258.2, ptr %next.gep257.2, align 1, !tbaa !56
  store <16 x i8> %wide.load259.2, ptr %i.qr, align 1, !tbaa !56
  %i.qs = icmp eq i64 %n.vec253, 96
  br i1 %i.qs, label %middle.block261, label %vector.body254.3

vector.body254.3:                                 ; preds = %vector.body254.2
  %next.gep256.3 = getelementptr i8, ptr %i.qb, i64 96
  %next.gep257.3 = getelementptr i8, ptr %.sink.i64.i, i64 96
  %i.qt = getelementptr i8, ptr %i.qb, i64 112
  %wide.load258.3 = load <16 x i8>, ptr %next.gep256.3, align 1, !tbaa !56
  %wide.load259.3 = load <16 x i8>, ptr %i.qt, align 1, !tbaa !56
  %i.qu = getelementptr i8, ptr %.sink.i64.i, i64 112
  store <16 x i8> %wide.load258.3, ptr %next.gep257.3, align 1, !tbaa !56
  store <16 x i8> %wide.load259.3, ptr %i.qu, align 1, !tbaa !56
  %i.qv = icmp eq i64 %n.vec253, 128
  br i1 %i.qv, label %middle.block261, label %vector.body254.4

vector.body254.4:                                 ; preds = %vector.body254.3
  %next.gep256.4 = getelementptr i8, ptr %i.qb, i64 128
  %next.gep257.4 = getelementptr i8, ptr %.sink.i64.i, i64 128
  %i.qw = getelementptr i8, ptr %i.qb, i64 144
  %wide.load258.4 = load <16 x i8>, ptr %next.gep256.4, align 1, !tbaa !56
  %wide.load259.4 = load <16 x i8>, ptr %i.qw, align 1, !tbaa !56
  %i.qx = getelementptr i8, ptr %.sink.i64.i, i64 144
  store <16 x i8> %wide.load258.4, ptr %next.gep257.4, align 1, !tbaa !56
  store <16 x i8> %wide.load259.4, ptr %i.qx, align 1, !tbaa !56
  %i.qy = icmp eq i64 %n.vec253, 160
  br i1 %i.qy, label %middle.block261, label %vector.body254.5

vector.body254.5:                                 ; preds = %vector.body254.4
  %next.gep256.5 = getelementptr i8, ptr %i.qb, i64 160
  %next.gep257.5 = getelementptr i8, ptr %.sink.i64.i, i64 160
  %i.qz = getelementptr i8, ptr %i.qb, i64 176
  %wide.load258.5 = load <16 x i8>, ptr %next.gep256.5, align 1, !tbaa !56
  %wide.load259.5 = load <16 x i8>, ptr %i.qz, align 1, !tbaa !56
  %i.ra = getelementptr i8, ptr %.sink.i64.i, i64 176
  store <16 x i8> %wide.load258.5, ptr %next.gep257.5, align 1, !tbaa !56
  store <16 x i8> %wide.load259.5, ptr %i.ra, align 1, !tbaa !56
  %i.rb = icmp eq i64 %n.vec253, 192
  br i1 %i.rb, label %middle.block261, label %vector.body254.6

vector.body254.6:                                 ; preds = %vector.body254.5
  %next.gep256.6 = getelementptr i8, ptr %i.qb, i64 192
  %next.gep257.6 = getelementptr i8, ptr %.sink.i64.i, i64 192
  %i.rc = getelementptr i8, ptr %i.qb, i64 208
  %wide.load258.6 = load <16 x i8>, ptr %next.gep256.6, align 1, !tbaa !56
  %wide.load259.6 = load <16 x i8>, ptr %i.rc, align 1, !tbaa !56
  %i.rd = getelementptr i8, ptr %.sink.i64.i, i64 208
  store <16 x i8> %wide.load258.6, ptr %next.gep257.6, align 1, !tbaa !56
  store <16 x i8> %wide.load259.6, ptr %i.rd, align 1, !tbaa !56
  %i.re = icmp eq i64 %n.vec253, 224
  br i1 %i.re, label %middle.block261, label %vector.body254.7

vector.body254.7:                                 ; preds = %vector.body254.6
  %next.gep256.7 = getelementptr i8, ptr %i.qb, i64 224
  %next.gep257.7 = getelementptr i8, ptr %.sink.i64.i, i64 224
  %i.rf = getelementptr i8, ptr %i.qb, i64 240
  %wide.load258.7 = load <16 x i8>, ptr %next.gep256.7, align 1, !tbaa !56
  %wide.load259.7 = load <16 x i8>, ptr %i.rf, align 1, !tbaa !56
  %i.rg = getelementptr i8, ptr %.sink.i64.i, i64 240
  store <16 x i8> %wide.load258.7, ptr %next.gep257.7, align 1, !tbaa !56
  store <16 x i8> %wide.load259.7, ptr %i.rg, align 1, !tbaa !56
  br label %middle.block261

middle.block261:                                  ; preds = %vector.body254.7, %vector.body254.6, %vector.body254.5, %vector.body254.4, %vector.body254.3, %vector.body254.2, %vector.body254.1, %vector.ph252
  %cmp.n262 = icmp eq i64 %n.vec253, %i.pk
  br i1 %cmp.n262, label %nk_decompress_token.exit.thread.sink.split.i, label %vec.epilog.iter.check264

vec.epilog.iter.check264:                         ; preds = %middle.block261
  %min.epilog.iters.check266 = icmp eq i64 %i.qf, 0
  br i1 %min.epilog.iters.check266, label %.preheader.i76.i.i.preheader, label %vec.epilog.ph267, !prof !82

vec.epilog.ph267:                                 ; preds = %vector.main.loop.iter.check250, %vec.epilog.iter.check264
  %vec.epilog.resume.val268 = phi i64 [ %n.vec253, %vec.epilog.iter.check264 ], [ 0, %vector.main.loop.iter.check250 ]
  %n.vec269 = and i64 %i.pk, 508                  ; 5 uses
  %i.rh = trunc nuw nsw i64 %n.vec269 to i32
  %i.ri = sub nsw i32 %i.pj, %i.rh
  %i.rj = getelementptr i8, ptr %i.qb, i64 %n.vec269
  %i.rk = getelementptr i8, ptr %.sink.i64.i, i64 %n.vec269 ; 2 uses
  br label %vec.epilog.vector.body270

vec.epilog.vector.body270:                        ; preds = %vec.epilog.vector.body270, %vec.epilog.ph267
  %index271 = phi i64 [ %vec.epilog.resume.val268, %vec.epilog.ph267 ], [ %index.next275, %vec.epilog.vector.body270 ] ; 3 uses
  %next.gep272 = getelementptr i8, ptr %i.qb, i64 %index271
  %next.gep273 = getelementptr i8, ptr %.sink.i64.i, i64 %index271
  %wide.load274 = load <4 x i8>, ptr %next.gep272, align 1, !tbaa !56
  store <4 x i8> %wide.load274, ptr %next.gep273, align 1, !tbaa !56
  %index.next275 = add nuw i64 %index271, 4       ; 2 uses
  %i.rl = icmp eq i64 %index.next275, %n.vec269
  br i1 %i.rl, label %vec.epilog.middle.block276, label %vec.epilog.vector.body270, !llvm.loop !925

vec.epilog.middle.block276:                       ; preds = %vec.epilog.vector.body270
  %cmp.n277 = icmp eq i64 %n.vec269, %i.pk
  br i1 %cmp.n277, label %nk_decompress_token.exit.thread.sink.split.i, label %.preheader.i76.i.i.preheader

.preheader.i76.i.i.preheader:                     ; preds = %iter.check263, %vector.memcheck247, %vec.epilog.iter.check264, %vec.epilog.middle.block276
  %.09.i77.i.i.ph = phi i32 [ %i.pj, %iter.check263 ], [ %i.pj, %vector.memcheck247 ], [ %i.qh, %vec.epilog.iter.check264 ], [ %i.ri, %vec.epilog.middle.block276 ] ; 4 uses
  %.048.i78.i.i.ph = phi ptr [ %i.qb, %iter.check263 ], [ %i.qb, %vector.memcheck247 ], [ %i.qi, %vec.epilog.iter.check264 ], [ %i.rj, %vec.epilog.middle.block276 ] ; 2 uses
  %.ph325 = phi ptr [ %.sink.i64.i, %iter.check263 ], [ %.sink.i64.i, %vector.memcheck247 ], [ %i.qj, %vec.epilog.iter.check264 ], [ %i.rk, %vec.epilog.middle.block276 ] ; 2 uses
  %i.rm = add nsw i32 %.09.i77.i.i.ph, -1
  %xtraiter334 = and i32 %.09.i77.i.i.ph, 7       ; 2 uses
  %lcmp.mod335.not = icmp eq i32 %xtraiter334, 0
  br i1 %lcmp.mod335.not, label %.preheader.i76.i.i.prol.loopexit, label %.preheader.i76.i.i.prol

.preheader.i76.i.i.prol:                          ; preds = %.preheader.i76.i.i.preheader, %.preheader.i76.i.i.prol
  %.09.i77.i.i.prol = phi i32 [ %i.ro, %.preheader.i76.i.i.prol ], [ %.09.i77.i.i.ph, %.preheader.i76.i.i.preheader ]
  %.048.i78.i.i.prol = phi ptr [ %i.rp, %.preheader.i76.i.i.prol ], [ %.048.i78.i.i.ph, %.preheader.i76.i.i.preheader ] ; 2 uses
  %i.rn = phi ptr [ %i.rr, %.preheader.i76.i.i.prol ], [ %.ph325, %.preheader.i76.i.i.preheader ] ; 2 uses
  %prol.iter336 = phi i32 [ %prol.iter336.next, %.preheader.i76.i.i.prol ], [ 0, %.preheader.i76.i.i.preheader ]
  %i.ro = add nsw i32 %.09.i77.i.i.prol, -1       ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %.048.i78.i.i.prol, i64 1 ; 2 uses
  %i.rq = load i8, ptr %.048.i78.i.i.prol, align 1, !tbaa !56
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rn, i64 1 ; 3 uses
  store i8 %i.rq, ptr %i.rn, align 1, !tbaa !56
  %prol.iter336.next = add i32 %prol.iter336, 1   ; 2 uses
  %prol.iter336.cmp.not = icmp eq i32 %prol.iter336.next, %xtraiter334
  br i1 %prol.iter336.cmp.not, label %.preheader.i76.i.i.prol.loopexit, label %.preheader.i76.i.i.prol, !llvm.loop !926

.preheader.i76.i.i.prol.loopexit:                 ; preds = %.preheader.i76.i.i.prol, %.preheader.i76.i.i.preheader
  %.lcssa329.unr = phi ptr [ poison, %.preheader.i76.i.i.preheader ], [ %i.rr, %.preheader.i76.i.i.prol ]
  %.09.i77.i.i.unr = phi i32 [ %.09.i77.i.i.ph, %.preheader.i76.i.i.preheader ], [ %i.ro, %.preheader.i76.i.i.prol ]
  %.048.i78.i.i.unr = phi ptr [ %.048.i78.i.i.ph, %.preheader.i76.i.i.preheader ], [ %i.rp, %.preheader.i76.i.i.prol ]
  %.unr337 = phi ptr [ %.ph325, %.preheader.i76.i.i.preheader ], [ %i.rr, %.preheader.i76.i.i.prol ]
  %i.rs = icmp ult i32 %i.rm, 7
  br i1 %i.rs, label %nk_decompress_token.exit.thread.sink.split.i, label %.preheader.i76.i.i

.preheader.i76.i.i:                               ; preds = %.preheader.i76.i.i.prol.loopexit, %.preheader.i76.i.i
  %.09.i77.i.i = phi i32 [ %i.sp, %.preheader.i76.i.i ], [ %.09.i77.i.i.unr, %.preheader.i76.i.i.prol.loopexit ]
  %.048.i78.i.i = phi ptr [ %i.sq, %.preheader.i76.i.i ], [ %.048.i78.i.i.unr, %.preheader.i76.i.i.prol.loopexit ] ; 9 uses
  %i.rt = phi ptr [ %i.ss, %.preheader.i76.i.i ], [ %.unr337, %.preheader.i76.i.i.prol.loopexit ] ; 9 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %.048.i78.i.i, i64 1
  %i.rv = load i8, ptr %.048.i78.i.i, align 1, !tbaa !56
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rt, i64 1
  store i8 %i.rv, ptr %i.rt, align 1, !tbaa !56
  %i.rx = getelementptr inbounds nuw i8, ptr %.048.i78.i.i, i64 2
  %i.ry = load i8, ptr %i.ru, align 1, !tbaa !56
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rt, i64 2
  store i8 %i.ry, ptr %i.rw, align 1, !tbaa !56
  %i.sa = getelementptr inbounds nuw i8, ptr %.048.i78.i.i, i64 3
  %i.sb = load i8, ptr %i.rx, align 1, !tbaa !56
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rt, i64 3
  store i8 %i.sb, ptr %i.rz, align 1, !tbaa !56
  %i.sd = getelementptr inbounds nuw i8, ptr %.048.i78.i.i, i64 4
  %i.se = load i8, ptr %i.sa, align 1, !tbaa !56
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rt, i64 4
  store i8 %i.se, ptr %i.sc, align 1, !tbaa !56
  %i.sg = getelementptr inbounds nuw i8, ptr %.048.i78.i.i, i64 5
  %i.sh = load i8, ptr %i.sd, align 1, !tbaa !56
  %i.si = getelementptr inbounds nuw i8, ptr %i.rt, i64 5
  store i8 %i.sh, ptr %i.sf, align 1, !tbaa !56
  %i.sj = getelementptr inbounds nuw i8, ptr %.048.i78.i.i, i64 6
  %i.sk = load i8, ptr %i.sg, align 1, !tbaa !56
  %i.sl = getelementptr inbounds nuw i8, ptr %i.rt, i64 6
  store i8 %i.sk, ptr %i.si, align 1, !tbaa !56
  %i.sm = getelementptr inbounds nuw i8, ptr %.048.i78.i.i, i64 7
  %i.sn = load i8, ptr %i.sj, align 1, !tbaa !56
  %i.so = getelementptr inbounds nuw i8, ptr %i.rt, i64 7
  store i8 %i.sn, ptr %i.sl, align 1, !tbaa !56
  %i.sp = add nsw i32 %.09.i77.i.i, -8            ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %.048.i78.i.i, i64 8
  %i.sr = load i8, ptr %i.sm, align 1, !tbaa !56
  %i.ss = getelementptr inbounds nuw i8, ptr %i.rt, i64 8 ; 2 uses
  store i8 %i.sr, ptr %i.so, align 1, !tbaa !56
  %.not.i79.i.i.7 = icmp eq i32 %i.sp, 0
  br i1 %.not.i79.i.i.7, label %nk_decompress_token.exit.thread.sink.split.i, label %.preheader.i76.i.i, !llvm.loop !927

bb.aj:                                            ; preds = %bb.ad
  %i.st = getelementptr inbounds nuw i8, ptr %.036.i, i64 4
  %i.su = load i8, ptr %i.st, align 1, !tbaa !56
  %i.sv = zext i8 %i.su to i32
  %i.sw = shl nuw nsw i32 %i.sv, 8
  %i.sx = getelementptr inbounds nuw i8, ptr %.036.i, i64 5
  %i.sy = load i8, ptr %i.sx, align 1, !tbaa !56
  %i.sz = zext i8 %i.sy to i32
  %i.ta = or disjoint i32 %i.sw, %i.sz            ; 3 uses
  %i.tb = add nuw nsw i32 %i.ta, 1                ; 5 uses
  %i.tc = zext nneg i32 %i.tb to i64              ; 6 uses
  %i.td = getelementptr inbounds nuw i8, ptr %.sink.i64.i, i64 %i.tc ; 2 uses
  %i.te = icmp ugt ptr %i.td, %i.ax
  br i1 %i.te, label %nk_decompress_token.exit.thread.sink.split.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.tf = getelementptr inbounds nuw i8, ptr %.036.i, i64 1
  %i.tg = load i8, ptr %i.tf, align 1, !tbaa !56
  %i.th = zext i8 %i.tg to i64
  %i.ti = shl nuw nsw i64 %i.th, 16               ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %.036.i, i64 2
  %i.tk = load i8, ptr %i.tj, align 1, !tbaa !56
  %i.tl = zext i8 %i.tk to i64
  %i.tm = shl nuw nsw i64 %i.tl, 8                ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %.036.i, i64 3
  %i.to = load i8, ptr %i.tn, align 1, !tbaa !56
  %i.tp = zext i8 %i.to to i64                    ; 2 uses
  %i.tq = or disjoint i64 %i.ti, %i.tp
  %i.tr = or disjoint i64 %i.tq, %i.tm
  %i.ts = xor i64 %i.tr, -1
  %i.tt = getelementptr inbounds i8, ptr %.sink.i64.i, i64 %i.ts ; 7 uses
  %i.tu = icmp ult ptr %i.tt, %i.t
  br i1 %i.tu, label %nk_decompress_token.exit.thread.sink.split.i, label %iter.check297

iter.check297:                                    ; preds = %bb.ak
  %min.iters.check283 = icmp samesign ult i32 %i.ta, 3
  br i1 %min.iters.check283, label %.preheader.i82.i.i.preheader, label %vector.memcheck281

vector.memcheck281:                               ; preds = %iter.check297
  %i.tv = or disjoint i64 %i.ti, %i.tm
  %i.tw = or disjoint i64 %i.tv, 1
  %7 = add nuw nsw i64 %i.tw, %i.tp
  %diff.check282 = icmp samesign ult i64 %7, 32
  br i1 %diff.check282, label %.preheader.i82.i.i.preheader, label %vector.main.loop.iter.check284

vector.main.loop.iter.check284:                   ; preds = %vector.memcheck281
  %min.iters.check285 = icmp samesign ult i32 %i.ta, 31
  br i1 %min.iters.check285, label %vec.epilog.ph301, label %vector.ph286

vector.ph286:                                     ; preds = %vector.main.loop.iter.check284
  %i.tx = and i64 %i.tc, 28
  %n.vec287 = and i64 %i.tc, 131040               ; 6 uses
  %i.ty = trunc nuw nsw i64 %n.vec287 to i32
  %i.tz = sub nsw i32 %i.tb, %i.ty
  %i.ua = getelementptr i8, ptr %i.tt, i64 %n.vec287
  %i.ub = getelementptr i8, ptr %.sink.i64.i, i64 %n.vec287 ; 2 uses
  br label %vector.body288

vector.body288:                                   ; preds = %vector.ph286, %vector.body288
  %index289 = phi i64 [ 0, %vector.ph286 ], [ %index.next294, %vector.body288 ] ; 3 uses
  %next.gep290 = getelementptr i8, ptr %i.tt, i64 %index289 ; 2 uses
  %next.gep291 = getelementptr i8, ptr %.sink.i64.i, i64 %index289 ; 2 uses
  %i.uc = getelementptr i8, ptr %next.gep290, i64 16
  %wide.load292 = load <16 x i8>, ptr %next.gep290, align 1, !tbaa !56
  %wide.load293 = load <16 x i8>, ptr %i.uc, align 1, !tbaa !56
  %i.ud = getelementptr i8, ptr %next.gep291, i64 16
  store <16 x i8> %wide.load292, ptr %next.gep291, align 1, !tbaa !56
  store <16 x i8> %wide.load293, ptr %i.ud, align 1, !tbaa !56
  %index.next294 = add nuw i64 %index289, 32      ; 2 uses
  %i.ue = icmp eq i64 %index.next294, %n.vec287
  br i1 %i.ue, label %middle.block295, label %vector.body288, !llvm.loop !928

middle.block295:                                  ; preds = %vector.body288
  %cmp.n296 = icmp eq i64 %n.vec287, %i.tc
  br i1 %cmp.n296, label %nk_decompress_token.exit.thread.sink.split.i, label %vec.epilog.iter.check298

vec.epilog.iter.check298:                         ; preds = %middle.block295
  %min.epilog.iters.check300 = icmp eq i64 %i.tx, 0
  br i1 %min.epilog.iters.check300, label %.preheader.i82.i.i.preheader, label %vec.epilog.ph301, !prof !82

vec.epilog.ph301:                                 ; preds = %vector.main.loop.iter.check284, %vec.epilog.iter.check298
  %vec.epilog.resume.val302 = phi i64 [ %n.vec287, %vec.epilog.iter.check298 ], [ 0, %vector.main.loop.iter.check284 ]
  %n.vec303 = and i64 %i.tc, 131068               ; 5 uses
  %i.uf = trunc nuw nsw i64 %n.vec303 to i32
  %i.ug = sub nsw i32 %i.tb, %i.uf
  %i.uh = getelementptr i8, ptr %i.tt, i64 %n.vec303
  %i.ui = getelementptr i8, ptr %.sink.i64.i, i64 %n.vec303 ; 2 uses
  br label %vec.epilog.vector.body304

vec.epilog.vector.body304:                        ; preds = %vec.epilog.vector.body304, %vec.epilog.ph301
  %index305 = phi i64 [ %vec.epilog.resume.val302, %vec.epilog.ph301 ], [ %index.next309, %vec.epilog.vector.body304 ] ; 3 uses
  %next.gep306 = getelementptr i8, ptr %i.tt, i64 %index305
  %next.gep307 = getelementptr i8, ptr %.sink.i64.i, i64 %index305
  %wide.load308 = load <4 x i8>, ptr %next.gep306, align 1, !tbaa !56
  store <4 x i8> %wide.load308, ptr %next.gep307, align 1, !tbaa !56
  %index.next309 = add nuw i64 %index305, 4       ; 2 uses
  %i.uj = icmp eq i64 %index.next309, %n.vec303
  br i1 %i.uj, label %vec.epilog.middle.block310, label %vec.epilog.vector.body304, !llvm.loop !929

vec.epilog.middle.block310:                       ; preds = %vec.epilog.vector.body304
  %cmp.n311 = icmp eq i64 %n.vec303, %i.tc
  br i1 %cmp.n311, label %nk_decompress_token.exit.thread.sink.split.i, label %.preheader.i82.i.i.preheader

.preheader.i82.i.i.preheader:                     ; preds = %iter.check297, %vector.memcheck281, %vec.epilog.iter.check298, %vec.epilog.middle.block310
  %.09.i83.i.i.ph = phi i32 [ %i.tb, %iter.check297 ], [ %i.tb, %vector.memcheck281 ], [ %i.tz, %vec.epilog.iter.check298 ], [ %i.ug, %vec.epilog.middle.block310 ] ; 4 uses
  %.048.i84.i.i.ph = phi ptr [ %i.tt, %iter.check297 ], [ %i.tt, %vector.memcheck281 ], [ %i.ua, %vec.epilog.iter.check298 ], [ %i.uh, %vec.epilog.middle.block310 ] ; 2 uses
  %.ph327 = phi ptr [ %.sink.i64.i, %iter.check297 ], [ %.sink.i64.i, %vector.memcheck281 ], [ %i.ub, %vec.epilog.iter.check298 ], [ %i.ui, %vec.epilog.middle.block310 ] ; 2 uses
  %i.uk = add nsw i32 %.09.i83.i.i.ph, -1
  %xtraiter = and i32 %.09.i83.i.i.ph, 7          ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i82.i.i.prol.loopexit, label %.preheader.i82.i.i.prol

.preheader.i82.i.i.prol:                          ; preds = %.preheader.i82.i.i.preheader, %.preheader.i82.i.i.prol
  %.09.i83.i.i.prol = phi i32 [ %i.um, %.preheader.i82.i.i.prol ], [ %.09.i83.i.i.ph, %.preheader.i82.i.i.preheader ]
  %.048.i84.i.i.prol = phi ptr [ %i.un, %.preheader.i82.i.i.prol ], [ %.048.i84.i.i.ph, %.preheader.i82.i.i.preheader ] ; 2 uses
  %i.ul = phi ptr [ %i.up, %.preheader.i82.i.i.prol ], [ %.ph327, %.preheader.i82.i.i.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader.i82.i.i.prol ], [ 0, %.preheader.i82.i.i.preheader ]
  %i.um = add nsw i32 %.09.i83.i.i.prol, -1       ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %.048.i84.i.i.prol, i64 1 ; 2 uses
  %i.uo = load i8, ptr %.048.i84.i.i.prol, align 1, !tbaa !56
  %i.up = getelementptr inbounds nuw i8, ptr %i.ul, i64 1 ; 3 uses
  store i8 %i.uo, ptr %i.ul, align 1, !tbaa !56
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i82.i.i.prol.loopexit, label %.preheader.i82.i.i.prol, !llvm.loop !930

.preheader.i82.i.i.prol.loopexit:                 ; preds = %.preheader.i82.i.i.prol, %.preheader.i82.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.preheader.i82.i.i.preheader ], [ %i.up, %.preheader.i82.i.i.prol ]
  %.09.i83.i.i.unr = phi i32 [ %.09.i83.i.i.ph, %.preheader.i82.i.i.preheader ], [ %i.um, %.preheader.i82.i.i.prol ]
  %.048.i84.i.i.unr = phi ptr [ %.048.i84.i.i.ph, %.preheader.i82.i.i.preheader ], [ %i.un, %.preheader.i82.i.i.prol ]
  %.unr = phi ptr [ %.ph327, %.preheader.i82.i.i.preheader ], [ %i.up, %.preheader.i82.i.i.prol ]
  %i.uq = icmp ult i32 %i.uk, 7
  br i1 %i.uq, label %nk_decompress_token.exit.thread.sink.split.i, label %.preheader.i82.i.i

.preheader.i82.i.i:                               ; preds = %.preheader.i82.i.i.prol.loopexit, %.preheader.i82.i.i
  %.09.i83.i.i = phi i32 [ %i.vn, %.preheader.i82.i.i ], [ %.09.i83.i.i.unr, %.preheader.i82.i.i.prol.loopexit ]
  %.048.i84.i.i = phi ptr [ %i.vo, %.preheader.i82.i.i ], [ %.048.i84.i.i.unr, %.preheader.i82.i.i.prol.loopexit ] ; 9 uses
  %i.ur = phi ptr [ %i.vq, %.preheader.i82.i.i ], [ %.unr, %.preheader.i82.i.i.prol.loopexit ] ; 9 uses
  %i.us = getelementptr inbounds nuw i8, ptr %.048.i84.i.i, i64 1
  %i.ut = load i8, ptr %.048.i84.i.i, align 1, !tbaa !56
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ur, i64 1
  store i8 %i.ut, ptr %i.ur, align 1, !tbaa !56
  %i.uv = getelementptr inbounds nuw i8, ptr %.048.i84.i.i, i64 2
  %i.uw = load i8, ptr %i.us, align 1, !tbaa !56
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ur, i64 2
  store i8 %i.uw, ptr %i.uu, align 1, !tbaa !56
  %i.uy = getelementptr inbounds nuw i8, ptr %.048.i84.i.i, i64 3
  %i.uz = load i8, ptr %i.uv, align 1, !tbaa !56
  %i.va = getelementptr inbounds nuw i8, ptr %i.ur, i64 3
  store i8 %i.uz, ptr %i.ux, align 1, !tbaa !56
  %i.vb = getelementptr inbounds nuw i8, ptr %.048.i84.i.i, i64 4
  %i.vc = load i8, ptr %i.uy, align 1, !tbaa !56
  %i.vd = getelementptr inbounds nuw i8, ptr %i.ur, i64 4
  store i8 %i.vc, ptr %i.va, align 1, !tbaa !56
  %i.ve = getelementptr inbounds nuw i8, ptr %.048.i84.i.i, i64 5
  %i.vf = load i8, ptr %i.vb, align 1, !tbaa !56
  %i.vg = getelementptr inbounds nuw i8, ptr %i.ur, i64 5
  store i8 %i.vf, ptr %i.vd, align 1, !tbaa !56
  %i.vh = getelementptr inbounds nuw i8, ptr %.048.i84.i.i, i64 6
  %i.vi = load i8, ptr %i.ve, align 1, !tbaa !56
  %i.vj = getelementptr inbounds nuw i8, ptr %i.ur, i64 6
  store i8 %i.vi, ptr %i.vg, align 1, !tbaa !56
  %i.vk = getelementptr inbounds nuw i8, ptr %.048.i84.i.i, i64 7
  %i.vl = load i8, ptr %i.vh, align 1, !tbaa !56
  %i.vm = getelementptr inbounds nuw i8, ptr %i.ur, i64 7
  store i8 %i.vl, ptr %i.vj, align 1, !tbaa !56
  %i.vn = add nsw i32 %.09.i83.i.i, -8            ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %.048.i84.i.i, i64 8
  %i.vp = load i8, ptr %i.vk, align 1, !tbaa !56
  %i.vq = getelementptr inbounds nuw i8, ptr %i.ur, i64 8 ; 2 uses
  store i8 %i.vp, ptr %i.vm, align 1, !tbaa !56
  %.not.i85.i.i.7 = icmp eq i32 %i.vn, 0
  br i1 %.not.i85.i.i.7, label %nk_decompress_token.exit.thread.sink.split.i, label %.preheader.i82.i.i, !llvm.loop !931

nk_decompress_token.exit.i:                       ; preds = %nk__lit.exit.i, %nk__lit.exit75.i.i, %nk__lit.exit.i.i
  %.sink.i66.i = phi ptr [ %.sink.i.i, %nk__lit.exit.i ], [ %.sink.i74.i.i, %nk__lit.exit75.i.i ], [ %.sink.i.i.i, %nk__lit.exit.i.i ]
  %.0.i.i = phi ptr [ %i.pf, %nk__lit.exit.i ], [ %i.oo, %nk__lit.exit75.i.i ], [ %i.hk, %nk__lit.exit.i.i ] ; 2 uses
  %i.vr = icmp eq ptr %.0.i.i, %.036.i
  br i1 %i.vr, label %nk_decompress.exit, label %nk_decompress_token.exit.thread.i

nk_decompress_token.exit.thread.sink.split.i:     ; preds = %.preheader.i82.i.i.prol.loopexit, %.preheader.i82.i.i, %.preheader.i76.i.i.prol.loopexit, %.preheader.i76.i.i, %.preheader.i68.i.i.prol.loopexit, %.preheader.i68.i.i, %.preheader.i62.i.i.prol.loopexit, %.preheader.i62.i.i, %.preheader.i56.i.i.prol.loopexit, %.preheader.i56.i.i, %.preheader.i.i.i.prol.loopexit, %.preheader.i.i.i, %middle.block295, %vec.epilog.middle.block310, %middle.block261, %vec.epilog.middle.block276, %middle.block227, %vec.epilog.middle.block242, %middle.block193, %vec.epilog.middle.block208, %middle.block159, %vec.epilog.middle.block174, %middle.block, %vec.epilog.middle.block, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.y, %bb.x, %bb.v, %bb.u, %bb.p, %bb.o, %bb.m, %bb.l
  %.lcssa.sink.i86.i.sink.i = phi ptr [ %i.ss, %.preheader.i76.i.i ], [ %i.nt, %.preheader.i68.i.i ], [ %i.kw, %.preheader.i62.i.i ], [ %i.gz, %.preheader.i56.i.i ], [ %i.ds, %.preheader.i.i.i ], [ %i.bg, %bb.l ], [ %i.az, %bb.m ], [ %i.dz, %bb.o ], [ %i.az, %bb.p ], [ %i.hr, %bb.u ], [ %i.az, %bb.v ], [ %i.li, %bb.x ], [ %i.az, %bb.y ], [ %i.pl, %bb.ah ], [ %i.az, %bb.ai ], [ %i.td, %bb.aj ], [ %i.az, %bb.ak ], [ %i.ck, %vec.epilog.middle.block ], [ %i.bv, %middle.block ], [ %i.fr, %vec.epilog.middle.block174 ], [ %i.eq, %middle.block159 ], [ %i.jo, %vec.epilog.middle.block208 ], [ %i.in, %middle.block193 ], [ %i.ml, %vec.epilog.middle.block242 ], [ %i.me, %middle.block227 ], [ %i.rk, %vec.epilog.middle.block276 ], [ %i.qj, %middle.block261 ], [ %i.ui, %vec.epilog.middle.block310 ], [ %i.ub, %middle.block295 ], [ %.lcssa333.unr, %.preheader.i.i.i.prol.loopexit ], [ %.lcssa332.unr, %.preheader.i56.i.i.prol.loopexit ], [ %.lcssa331.unr, %.preheader.i62.i.i.prol.loopexit ], [ %.lcssa330.unr, %.preheader.i68.i.i.prol.loopexit ], [ %.lcssa329.unr, %.preheader.i76.i.i.prol.loopexit ], [ %.lcssa.unr, %.preheader.i82.i.i.prol.loopexit ], [ %i.vq, %.preheader.i82.i.i ] ; 2 uses
  %.sink.i = phi i64 [ 5, %.preheader.i76.i.i.prol.loopexit ], [ 5, %.preheader.i68.i.i.prol.loopexit ], [ 4, %.preheader.i62.i.i.prol.loopexit ], [ 3, %.preheader.i56.i.i.prol.loopexit ], [ 2, %.preheader.i.i.i.prol.loopexit ], [ 2, %bb.l ], [ 2, %bb.m ], [ 3, %bb.o ], [ 3, %bb.p ], [ 4, %bb.u ], [ 4, %bb.v ], [ 5, %bb.x ], [ 5, %bb.y ], [ 5, %bb.ah ], [ 5, %bb.ai ], [ 6, %bb.aj ], [ 6, %bb.ak ], [ 2, %vec.epilog.middle.block ], [ 2, %middle.block ], [ 3, %vec.epilog.middle.block174 ], [ 3, %middle.block159 ], [ 4, %vec.epilog.middle.block208 ], [ 4, %middle.block193 ], [ 5, %vec.epilog.middle.block242 ], [ 5, %middle.block227 ], [ 5, %vec.epilog.middle.block276 ], [ 5, %middle.block261 ], [ 6, %vec.epilog.middle.block310 ], [ 6, %middle.block295 ], [ 2, %.preheader.i.i.i ], [ 3, %.preheader.i56.i.i ], [ 4, %.preheader.i62.i.i ], [ 5, %.preheader.i68.i.i ], [ 5, %.preheader.i76.i.i ], [ 6, %.preheader.i82.i.i ], [ 6, %.preheader.i82.i.i.prol.loopexit ]
  store ptr %.lcssa.sink.i86.i.sink.i, ptr @nk__dout, align 8, !tbaa !60
  %i.vs = getelementptr inbounds nuw i8, ptr %.036.i, i64 %.sink.i
  br label %nk_decompress_token.exit.thread.i

nk_decompress_token.exit.thread.i:                ; preds = %nk_decompress_token.exit.thread.sink.split.i, %nk_decompress_token.exit.i
  %.sink.i65.i = phi ptr [ %.sink.i66.i, %nk_decompress_token.exit.i ], [ %.lcssa.sink.i86.i.sink.i, %nk_decompress_token.exit.thread.sink.split.i ] ; 2 uses
  %.0.i44.i = phi ptr [ %.0.i.i, %nk_decompress_token.exit.i ], [ %i.vs, %nk_decompress_token.exit.thread.sink.split.i ]
  %.not51.i = icmp ugt ptr %.sink.i65.i, %i.ax
  br i1 %.not51.i, label %nk_decompress.exit, label %bb.j

nk_decompress.exit:                               ; preds = %nk_decompress_token.exit.thread.i, %nk_decompress_token.exit.i, %bb.ad, %bb.g, %bb.h
  %.not30 = icmp eq ptr %4, null
  br i1 %.not30, label %bb.am, label %bb.al

bb.al:                                            ; preds = %nk_decompress.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef nonnull align 8 dereferenceable(88) %4, i64 88, i1 false), !tbaa.struct !365
  br label %bb.an

bb.am:                                            ; preds = %nk_decompress.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(27) %5, i8 0, i64 27, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6.0..sroa_idx, i8 0, i64 3, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 27
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 1, !tbaa !56
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i8 3, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !56
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 36
  store i32 0, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !55
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !54
  %.sroa.832.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr @nk_font_default_glyph_ranges.ranges, ptr %.sroa.832.0..sroa_idx, align 8, !tbaa !363
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr null, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !364
  %.sroa.933.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i32 63, ptr %.sroa.933.0..sroa_idx, align 8, !tbaa !55
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.10.0..sroa_idx, i8 0, i64 20, i1 false)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.vt = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.t, ptr %i.vt, align 8, !tbaa !352
  %i.vu = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.r, ptr %i.vu, align 8, !tbaa !353
  %i.vv = getelementptr inbounds nuw i8, ptr %5, i64 32
  store float %3, ptr %i.vv, align 8, !tbaa !339
  %i.vw = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 1, ptr %i.vw, align 8, !tbaa !360
  %i.vx = call ptr @nk_font_atlas_add(ptr noundef nonnull %0, ptr noundef nonnull %5)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.f, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.an
  %.0 = phi ptr [ %i.vx, %bb.an ], [ null, %bb.a ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @nk_font_atlas_add_compressed_base85(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, float noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #17 {
end_hunk_0
