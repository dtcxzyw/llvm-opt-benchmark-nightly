Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/mszipd?download=true
inline.NumInlined: 22
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@inflate:bb.a
bb.bp:                                            ; preds = %bb.bo
  %i.mp = icmp eq i32 %i.mn, 0
  br i1 %i.mp, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.mq = load i8, ptr %i.p, align 8, !tbaa !21
  %.not.i268.i = icmp eq i8 %i.mq, 0
  br i1 %.not.i268.i, label %bb.br, label %zip_read_lens.exit.thread.sink.split

bb.br:                                            ; preds = %bb.bq
  %i.mr = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 1
  store i8 0, ptr %i.ms, align 1, !tbaa !32
  %i.mt = load ptr, ptr %i.n, align 8, !tbaa !15
  store i8 0, ptr %i.mt, align 1, !tbaa !32
  store i8 1, ptr %i.p, align 8, !tbaa !21
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bp
  %.0.i266.i = phi i32 [ 2, %bb.br ], [ %i.mn, %bb.bp ]
  %i.mu = load ptr, ptr %i.n, align 8, !tbaa !15  ; 3 uses
  store ptr %i.mu, ptr %i.e, align 8, !tbaa !26
  %i.mv = zext nneg i32 %.0.i266.i to i64
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mu, i64 %i.mv ; 2 uses
  store ptr %i.mw, ptr %i.g, align 8, !tbaa !25
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %.lr.ph493.i
  %.13221.i = phi ptr [ %i.mu, %bb.bs ], [ %.12220489.i, %.lr.ph493.i ] ; 2 uses
  %.13.i = phi ptr [ %i.mw, %bb.bs ], [ %.12490.i, %.lr.ph493.i ] ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.13221.i, i64 1 ; 2 uses
  %i.my = load i8, ptr %.13221.i, align 1, !tbaa !32
  %i.mz = zext i8 %i.my to i32
  %i.na = shl nuw nsw i32 %i.mz, %.7492.i
  %i.nb = or i32 %i.na, %.7191491.i               ; 2 uses
  %i.nc = add nsw i32 %.7492.i, 8                 ; 2 uses
  %i.nd = icmp slt i32 %.7492.i, -6
  br i1 %i.nd, label %.lr.ph493.i, label %._crit_edge494.i

._crit_edge494.i:                                 ; preds = %bb.bt, %.preheader294.i
  %.12220.lcssa.i = phi ptr [ %.10218.lcssa.i, %.preheader294.i ], [ %i.mx, %bb.bt ]
  %.12.lcssa.i = phi ptr [ %.10206.lcssa.i, %.preheader294.i ], [ %.13.i, %bb.bt ]
  %.7191.lcssa.i = phi i32 [ %i.lx, %.preheader294.i ], [ %i.nb, %bb.bt ] ; 2 uses
  %.7.lcssa.i = phi i32 [ %i.ly, %.preheader294.i ], [ %i.nc, %bb.bt ]
  %i.ne = and i32 %.7191.lcssa.i, 3
  %i.nf = lshr i32 %.7191.lcssa.i, 2
  %i.ng = add nsw i32 %.7.lcssa.i, -2
  %i.nh = add nuw nsw i32 %i.ne, 3
  br label %bb.cg

.lr.ph483.i:                                      ; preds = %.preheader295.i, %bb.bz
  %.8482.i = phi i32 [ %i.od, %bb.bz ], [ %i.ly, %.preheader295.i ] ; 3 uses
  %.8192481.i = phi i32 [ %i.oc, %bb.bz ], [ %i.lx, %.preheader295.i ]
  %.14480.i = phi ptr [ %.15.i, %bb.bz ], [ %.10206.lcssa.i, %.preheader295.i ] ; 2 uses
  %.14222479.i = phi ptr [ %i.ny, %bb.bz ], [ %.10218.lcssa.i, %.preheader295.i ] ; 2 uses
  %.not235.i = icmp ult ptr %.14222479.i, %.14480.i
  br i1 %.not235.i, label %bb.bz, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph483.i
  %i.ni = load ptr, ptr %0, align 8, !tbaa !17
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 16
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !31
  %i.nl = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.nm = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.nn = load i32, ptr %i.o, align 4, !tbaa !20
  %i.no = call i32 %i.nk(ptr noundef %i.nl, ptr noundef %i.nm, i32 noundef %i.nn) #7, !inline_history !42 ; 3 uses
  %i.np = icmp slt i32 %i.no, 0
  br i1 %i.np, label %zip_read_lens.exit.thread.sink.split, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.nq = icmp eq i32 %i.no, 0
  br i1 %i.nq, label %bb.bw, label %bb.by

bb.bw:                                            ; preds = %bb.bv
  %i.nr = load i8, ptr %i.p, align 8, !tbaa !21
  %.not.i272.i = icmp eq i8 %i.nr, 0
  br i1 %.not.i272.i, label %bb.bx, label %zip_read_lens.exit.thread.sink.split

bb.bx:                                            ; preds = %bb.bw
  %i.ns = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 1
  store i8 0, ptr %i.nt, align 1, !tbaa !32
  %i.nu = load ptr, ptr %i.n, align 8, !tbaa !15
  store i8 0, ptr %i.nu, align 1, !tbaa !32
  store i8 1, ptr %i.p, align 8, !tbaa !21
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bv
  %.0.i270.i = phi i32 [ 2, %bb.bx ], [ %i.no, %bb.bv ]
  %i.nv = load ptr, ptr %i.n, align 8, !tbaa !15  ; 3 uses
  store ptr %i.nv, ptr %i.e, align 8, !tbaa !26
  %i.nw = zext nneg i32 %.0.i270.i to i64
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nv, i64 %i.nw ; 2 uses
  store ptr %i.nx, ptr %i.g, align 8, !tbaa !25
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %.lr.ph483.i
  %.15223.i = phi ptr [ %i.nv, %bb.by ], [ %.14222479.i, %.lr.ph483.i ] ; 2 uses
  %.15.i = phi ptr [ %i.nx, %bb.by ], [ %.14480.i, %.lr.ph483.i ] ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.15223.i, i64 1 ; 2 uses
  %i.nz = load i8, ptr %.15223.i, align 1, !tbaa !32
  %i.oa = zext i8 %i.nz to i32
  %i.ob = shl nuw nsw i32 %i.oa, %.8482.i
  %i.oc = or i32 %i.ob, %.8192481.i               ; 2 uses
  %i.od = add nsw i32 %.8482.i, 8                 ; 2 uses
  %i.oe = icmp slt i32 %.8482.i, -5
  br i1 %i.oe, label %.lr.ph483.i, label %._crit_edge484.i

._crit_edge484.i:                                 ; preds = %bb.bz, %.preheader295.i
  %.14222.lcssa.i = phi ptr [ %.10218.lcssa.i, %.preheader295.i ], [ %i.ny, %bb.bz ]
  %.14.lcssa.i = phi ptr [ %.10206.lcssa.i, %.preheader295.i ], [ %.15.i, %bb.bz ]
  %.8192.lcssa.i = phi i32 [ %i.lx, %.preheader295.i ], [ %i.oc, %bb.bz ] ; 2 uses
  %.8.lcssa.i = phi i32 [ %i.ly, %.preheader295.i ], [ %i.od, %bb.bz ]
  %i.of = and i32 %.8192.lcssa.i, 7
  %i.og = lshr i32 %.8192.lcssa.i, 3
  %i.oh = add nsw i32 %.8.lcssa.i, -3
  %i.oi = add nuw nsw i32 %i.of, 3
  br label %bb.cg

.lr.ph473.i:                                      ; preds = %.preheader296.i, %bb.cf
  %.9472.i = phi i32 [ %i.pe, %bb.cf ], [ %i.ly, %.preheader296.i ] ; 3 uses
  %.9193471.i = phi i32 [ %i.pd, %bb.cf ], [ %i.lx, %.preheader296.i ]
  %.16470.i = phi ptr [ %.17.i, %bb.cf ], [ %.10206.lcssa.i, %.preheader296.i ] ; 2 uses
  %.16224469.i = phi ptr [ %i.oz, %bb.cf ], [ %.10218.lcssa.i, %.preheader296.i ] ; 2 uses
  %.not233.i = icmp ult ptr %.16224469.i, %.16470.i
  br i1 %.not233.i, label %bb.cf, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph473.i
  %i.oj = load ptr, ptr %0, align 8, !tbaa !17
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !31
  %i.om = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.on = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.oo = load i32, ptr %i.o, align 4, !tbaa !20
  %i.op = call i32 %i.ol(ptr noundef %i.om, ptr noundef %i.on, i32 noundef %i.oo) #7, !inline_history !42 ; 3 uses
  %i.oq = icmp slt i32 %i.op, 0
  br i1 %i.oq, label %zip_read_lens.exit.thread.sink.split, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.or = icmp eq i32 %i.op, 0
  br i1 %i.or, label %bb.cc, label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  %i.os = load i8, ptr %i.p, align 8, !tbaa !21
  %.not.i276.i = icmp eq i8 %i.os, 0
  br i1 %.not.i276.i, label %bb.cd, label %zip_read_lens.exit.thread.sink.split

bb.cd:                                            ; preds = %bb.cc
  %i.ot = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 1
  store i8 0, ptr %i.ou, align 1, !tbaa !32
  %i.ov = load ptr, ptr %i.n, align 8, !tbaa !15
  store i8 0, ptr %i.ov, align 1, !tbaa !32
  store i8 1, ptr %i.p, align 8, !tbaa !21
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cb
  %.0.i274.i = phi i32 [ 2, %bb.cd ], [ %i.op, %bb.cb ]
  %i.ow = load ptr, ptr %i.n, align 8, !tbaa !15  ; 3 uses
  store ptr %i.ow, ptr %i.e, align 8, !tbaa !26
  %i.ox = zext nneg i32 %.0.i274.i to i64
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ow, i64 %i.ox ; 2 uses
  store ptr %i.oy, ptr %i.g, align 8, !tbaa !25
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %.lr.ph473.i
  %.17225.i = phi ptr [ %i.ow, %bb.ce ], [ %.16224469.i, %.lr.ph473.i ] ; 2 uses
  %.17.i = phi ptr [ %i.oy, %bb.ce ], [ %.16470.i, %.lr.ph473.i ] ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %.17225.i, i64 1 ; 2 uses
  %i.pa = load i8, ptr %.17225.i, align 1, !tbaa !32
  %i.pb = zext i8 %i.pa to i32
  %i.pc = shl nuw nsw i32 %i.pb, %.9472.i
  %i.pd = or i32 %i.pc, %.9193471.i               ; 2 uses
  %i.pe = add nsw i32 %.9472.i, 8                 ; 2 uses
  %i.pf = icmp slt i32 %.9472.i, -1
  br i1 %i.pf, label %.lr.ph473.i, label %._crit_edge474.i

._crit_edge474.i:                                 ; preds = %bb.cf, %.preheader296.i
  %.16224.lcssa.i = phi ptr [ %.10218.lcssa.i, %.preheader296.i ], [ %i.oz, %bb.cf ]
  %.16.lcssa.i = phi ptr [ %.10206.lcssa.i, %.preheader296.i ], [ %.17.i, %bb.cf ]
  %.9193.lcssa.i = phi i32 [ %i.lx, %.preheader296.i ], [ %i.pd, %bb.cf ] ; 2 uses
  %.9.lcssa.i = phi i32 [ %i.ly, %.preheader296.i ], [ %i.pe, %bb.cf ]
  %i.pg = and i32 %.9193.lcssa.i, 127
  %i.ph = lshr i32 %.9193.lcssa.i, 7
  %i.pi = add nsw i32 %.9.lcssa.i, -7
  %i.pj = add nuw nsw i32 %i.pg, 11
  br label %bb.cg

bb.cg:                                            ; preds = %._crit_edge474.i, %._crit_edge484.i, %._crit_edge494.i
  %.18226.i = phi ptr [ %.12220.lcssa.i, %._crit_edge494.i ], [ %.14222.lcssa.i, %._crit_edge484.i ], [ %.16224.lcssa.i, %._crit_edge474.i ] ; 4 uses
  %.18.i = phi ptr [ %.12.lcssa.i, %._crit_edge494.i ], [ %.14.lcssa.i, %._crit_edge484.i ], [ %.16.lcssa.i, %._crit_edge474.i ] ; 4 uses
  %.10194.i = phi i32 [ %i.nf, %._crit_edge494.i ], [ %i.og, %._crit_edge484.i ], [ %i.ph, %._crit_edge474.i ] ; 4 uses
  %.10.i = phi i32 [ %i.ng, %._crit_edge494.i ], [ %i.oh, %._crit_edge484.i ], [ %i.pi, %._crit_edge474.i ] ; 4 uses
  %.0176.i = phi i8 [ %.0174505.i, %._crit_edge494.i ], [ 0, %._crit_edge484.i ], [ 0, %._crit_edge474.i ] ; 7 uses
  %.0.i434 = phi i32 [ %i.nh, %._crit_edge494.i ], [ %i.oi, %._crit_edge484.i ], [ %i.pj, %._crit_edge474.i ] ; 12 uses
  %i.pk = add i32 %.0.i434, %.2506.i
  %i.pl = icmp ugt i32 %i.pk, %i.kq
  br i1 %i.pl, label %zip_read_lens.exit.thread, label %iter.check1192

iter.check1192:                                   ; preds = %bb.cg
  %min.iters.check1180 = icmp ult i32 %.0.i434, 4
  %i.pm = sub nsw i32 0, %.0.i434
  %i.pn = icmp ugt i32 %.2506.i, %i.pm
  %or.cond = select i1 %min.iters.check1180, i1 true, i1 %i.pn
  br i1 %or.cond, label %.preheader.i.preheader, label %vector.main.loop.iter.check1181

vector.main.loop.iter.check1181:                  ; preds = %iter.check1192
  %min.iters.check1182 = icmp ult i32 %.0.i434, 32
  br i1 %min.iters.check1182, label %vec.epilog.ph1196, label %vector.ph1183

vector.ph1183:                                    ; preds = %vector.main.loop.iter.check1181
  %i.po = and i32 %.0.i434, 28
  %n.vec1184 = and i32 %.0.i434, -32              ; 4 uses
  %i.pp = and i32 %.0.i434, 31
  %i.pq = add i32 %.2506.i, %n.vec1184            ; 2 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %.0176.i, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body1185

vector.body1185:                                  ; preds = %vector.body1185, %vector.ph1183
  %index1186 = phi i32 [ 0, %vector.ph1183 ], [ %index.next1187, %vector.body1185 ] ; 2 uses
  %i.pr = add i32 %.2506.i, %index1186
  %i.ps = zext i32 %i.pr to i64
  %i.pt = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ps ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 16
  store <16 x i8> %broadcast.splat, ptr %i.pt, align 1, !tbaa !32
  store <16 x i8> %broadcast.splat, ptr %i.pu, align 1, !tbaa !32
  %index.next1187 = add nuw i32 %index1186, 32    ; 2 uses
  %i.pv = icmp eq i32 %index.next1187, %n.vec1184
  br i1 %i.pv, label %middle.block1188, label %vector.body1185, !llvm.loop !44

middle.block1188:                                 ; preds = %vector.body1185
  %cmp.n1189 = icmp eq i32 %.0.i434, %n.vec1184
  br i1 %cmp.n1189, label %.loopexit.i, label %vec.epilog.iter.check1194

vec.epilog.iter.check1194:                        ; preds = %middle.block1188
  %min.epilog.iters.check1195 = icmp eq i32 %i.po, 0
  br i1 %min.epilog.iters.check1195, label %.preheader.i.preheader, label %vec.epilog.ph1196, !prof !55

vec.epilog.ph1196:                                ; preds = %vector.main.loop.iter.check1181, %vec.epilog.iter.check1194
  %vec.epilog.resume.val1190 = phi i32 [ %n.vec1184, %vec.epilog.iter.check1194 ], [ 0, %vector.main.loop.iter.check1181 ]
  %n.vec1197 = and i32 %.0.i434, -4               ; 3 uses
  %i.pw = and i32 %.0.i434, 3
  %i.px = add i32 %.2506.i, %n.vec1197            ; 2 uses
  %broadcast.splatinsert1198 = insertelement <4 x i8> poison, i8 %.0176.i, i64 0
  %broadcast.splat1199 = shufflevector <4 x i8> %broadcast.splatinsert1198, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1200

vec.epilog.vector.body1200:                       ; preds = %vec.epilog.vector.body1200, %vec.epilog.ph1196
  %index1201 = phi i32 [ %vec.epilog.resume.val1190, %vec.epilog.ph1196 ], [ %index.next1202, %vec.epilog.vector.body1200 ] ; 2 uses
  %i.py = add i32 %.2506.i, %index1201
  %i.pz = zext i32 %i.py to i64
  %i.qa = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.pz
  store <4 x i8> %broadcast.splat1199, ptr %i.qa, align 1, !tbaa !32
  %index.next1202 = add nuw i32 %index1201, 4     ; 2 uses
  %i.qb = icmp eq i32 %index.next1202, %n.vec1197
  br i1 %i.qb, label %vec.epilog.middle.block1203, label %vec.epilog.vector.body1200, !llvm.loop !45

vec.epilog.middle.block1203:                      ; preds = %vec.epilog.vector.body1200
  %cmp.n1204 = icmp eq i32 %.0.i434, %n.vec1197
  br i1 %cmp.n1204, label %.loopexit.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check1192, %vec.epilog.iter.check1194, %vec.epilog.middle.block1203
  %.1500.i.ph = phi i32 [ %.0.i434, %iter.check1192 ], [ %i.pp, %vec.epilog.iter.check1194 ], [ %i.pw, %vec.epilog.middle.block1203 ] ; 4 uses
  %.3499.i.ph = phi i32 [ %.2506.i, %iter.check1192 ], [ %i.pq, %vec.epilog.iter.check1194 ], [ %i.px, %vec.epilog.middle.block1203 ] ; 2 uses
  %i.qc = add nsw i32 %.1500.i.ph, -1
  %xtraiter1305 = and i32 %.1500.i.ph, 3          ; 2 uses
  %lcmp.mod1306.not = icmp eq i32 %xtraiter1305, 0
  br i1 %lcmp.mod1306.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol

.preheader.i.prol:                                ; preds = %.preheader.i.preheader, %.preheader.i.prol
  %.1500.i.prol = phi i32 [ %i.qd, %.preheader.i.prol ], [ %.1500.i.ph, %.preheader.i.preheader ]
  %.3499.i.prol = phi i32 [ %i.qe, %.preheader.i.prol ], [ %.3499.i.ph, %.preheader.i.preheader ] ; 2 uses
  %prol.iter1307 = phi i32 [ %prol.iter1307.next, %.preheader.i.prol ], [ 0, %.preheader.i.preheader ]
  %i.qd = add i32 %.1500.i.prol, -1               ; 2 uses
  %i.qe = add i32 %.3499.i.prol, 1                ; 3 uses
  %i.qf = zext i32 %.3499.i.prol to i64
  %i.qg = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.qf
  store i8 %.0176.i, ptr %i.qg, align 1, !tbaa !32
  %prol.iter1307.next = add i32 %prol.iter1307, 1 ; 2 uses
  %prol.iter1307.cmp.not = icmp eq i32 %prol.iter1307.next, %xtraiter1305
  br i1 %prol.iter1307.cmp.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol, !llvm.loop !46

.preheader.i.prol.loopexit:                       ; preds = %.preheader.i.prol, %.preheader.i.preheader
  %.lcssa1252.unr = phi i32 [ poison, %.preheader.i.preheader ], [ %i.qe, %.preheader.i.prol ]
  %.1500.i.unr = phi i32 [ %.1500.i.ph, %.preheader.i.preheader ], [ %i.qd, %.preheader.i.prol ]
  %.3499.i.unr = phi i32 [ %.3499.i.ph, %.preheader.i.preheader ], [ %i.qe, %.preheader.i.prol ]
  %i.qh = icmp ult i32 %i.qc, 3
  br i1 %i.qh, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.prol.loopexit, %.preheader.i
  %.1500.i = phi i32 [ %i.qr, %.preheader.i ], [ %.1500.i.unr, %.preheader.i.prol.loopexit ]
  %.3499.i = phi i32 [ %i.qs, %.preheader.i ], [ %.3499.i.unr, %.preheader.i.prol.loopexit ] ; 5 uses
  %i.qi = add i32 %.3499.i, 1
  %i.qj = zext i32 %.3499.i to i64
  %i.qk = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.qj
  store i8 %.0176.i, ptr %i.qk, align 1, !tbaa !32
  %i.ql = add i32 %.3499.i, 2
  %i.qm = zext i32 %i.qi to i64
  %i.qn = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.qm
  store i8 %.0176.i, ptr %i.qn, align 1, !tbaa !32
  %i.qo = add i32 %.3499.i, 3
  %i.qp = zext i32 %i.ql to i64
  %i.qq = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.qp
  store i8 %.0176.i, ptr %i.qq, align 1, !tbaa !32
  %i.qr = add i32 %.1500.i, -4                    ; 2 uses
  %i.qs = add i32 %.3499.i, 4                     ; 2 uses
  %i.qt = zext i32 %i.qo to i64
  %i.qu = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.qt
  store i8 %.0176.i, ptr %i.qu, align 1, !tbaa !32
  %.not237.i.3 = icmp eq i32 %i.qr, 0
  br i1 %.not237.i.3, label %.loopexit.i, label %.preheader.i, !llvm.loop !47

.loopexit.i:                                      ; preds = %.preheader.i.prol.loopexit, %.preheader.i, %middle.block1188, %vec.epilog.middle.block1203, %bb.bm
  %.19227.i = phi ptr [ %.10218.lcssa.i, %bb.bm ], [ %.18226.i, %middle.block1188 ], [ %.18226.i, %vec.epilog.middle.block1203 ], [ %.18226.i, %.preheader.i ], [ %.18226.i, %.preheader.i.prol.loopexit ] ; 3 uses
  %.19.i = phi ptr [ %.10206.lcssa.i, %bb.bm ], [ %.18.i, %middle.block1188 ], [ %.18.i, %vec.epilog.middle.block1203 ], [ %.18.i, %.preheader.i ], [ %.18.i, %.preheader.i.prol.loopexit ] ; 3 uses
  %.11195.i = phi i32 [ %i.lx, %bb.bm ], [ %.10194.i, %middle.block1188 ], [ %.10194.i, %vec.epilog.middle.block1203 ], [ %.10194.i, %.preheader.i ], [ %.10194.i, %.preheader.i.prol.loopexit ] ; 3 uses
  %.11.i = phi i32 [ %i.ly, %bb.bm ], [ %.10.i, %middle.block1188 ], [ %.10.i, %vec.epilog.middle.block1203 ], [ %.10.i, %.preheader.i ], [ %.10.i, %.preheader.i.prol.loopexit ] ; 3 uses
  %.1175.i = phi i8 [ %i.ma, %bb.bm ], [ %.0174505.i, %middle.block1188 ], [ %.0174505.i, %vec.epilog.middle.block1203 ], [ %.0174505.i, %.preheader.i ], [ %.0174505.i, %.preheader.i.prol.loopexit ]
  %.4.i = phi i32 [ %i.md, %bb.bm ], [ %i.pq, %middle.block1188 ], [ %i.px, %vec.epilog.middle.block1203 ], [ %.lcssa1252.unr, %.preheader.i.prol.loopexit ], [ %i.qs, %.preheader.i ] ; 2 uses
  %i.qv = icmp ult i32 %.4.i, %i.kq
  br i1 %i.qv, label %.preheader297.i, label %bb.ch

bb.ch:                                            ; preds = %.loopexit.i
  %i.qw = load ptr, ptr %0, align 8, !tbaa !17
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 72
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !53
  %i.qz = zext nneg i32 %i.gb to i64              ; 2 uses
  call void %i.qy(ptr noundef nonnull %i.c, ptr noundef nonnull %i.q, i64 noundef %i.qz) #7, !inline_history !48
  %.not515.i = icmp eq i32 %i.fy, 31
  br i1 %.not515.i, label %._crit_edge510.i, label %.lr.ph509.preheader.i

.lr.ph509.preheader.i:                            ; preds = %bb.ch
  %i.ra = zext nneg i32 %i.fy to i64
  %i.rb = getelementptr i8, ptr %0, i64 %i.ra
  %scevgep.i = getelementptr i8, ptr %i.rb, i64 369
  %narrow.i = xor i32 %i.fy, 31
  %i.rc = zext nneg i32 %narrow.i to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i, i8 0, i64 %i.rc, i1 false), !tbaa !32
  br label %._crit_edge510.i

._crit_edge510.i:                                 ; preds = %.lr.ph509.preheader.i, %bb.ch
  %i.rd = load ptr, ptr %0, align 8, !tbaa !17
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 72
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !53
  %i.rg = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.qz
  %i.rh = zext nneg i32 %i.hd to i64
  call void %i.rf(ptr noundef nonnull %i.rg, ptr noundef nonnull %i.r, i64 noundef %i.rh) #7, !inline_history !48
  %.not516.i = icmp eq i32 %i.ha, 31
  br i1 %.not516.i, label %bb.ci, label %.lr.ph513.preheader.i

.lr.ph513.preheader.i:                            ; preds = %._crit_edge510.i
  %i.ri = zext nneg i32 %i.ha to i64
  %i.rj = getelementptr i8, ptr %0, i64 %i.ri
  %scevgep556.i = getelementptr i8, ptr %i.rj, i64 401
  %narrow578.i = xor i32 %i.ha, 31
  %i.rk = zext nneg i32 %narrow578.i to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep556.i, i8 0, i64 %i.rk, i1 false), !tbaa !32
  br label %bb.ci

zip_read_lens.exit.thread.sink.split:             ; preds = %bb.al, %bb.aj, %bb.aq, %bb.ao, %bb.aw, %bb.au, %bb.bc, %bb.ba, %bb.bi, %bb.bg, %bb.cc, %bb.ca, %bb.bw, %bb.bu, %bb.bq, %bb.bo
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 3, ptr %i.rl, align 8, !tbaa !22
  br label %zip_read_lens.exit.thread

zip_read_lens.exit.thread:                        ; preds = %._crit_edge458.i, %bb.cg, %bb.bn, %zip_read_lens.exit.thread.sink.split
  %.0228.i.ph = phi i32 [ -9, %bb.cg ], [ 3, %zip_read_lens.exit.thread.sink.split ], [ -10, %bb.bn ], [ -6, %._crit_edge458.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %.thread477

bb.ci:                                            ; preds = %.lr.ph513.preheader.i, %._crit_edge510.i
  store ptr %.19227.i, ptr %i.e, align 8, !tbaa !26
  store ptr %.19.i, ptr %i.g, align 8, !tbaa !25
  store i32 %.11195.i, ptr %i.i, align 4, !tbaa !27
  store i32 %.11.i, ptr %i.k, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %.loopexit501

.loopexit501:                                     ; preds = %.preheader500, %bb.ci
  %.10355 = phi ptr [ %.19227.i, %bb.ci ], [ %.3348.lcssa, %.preheader500 ]
  %.10342 = phi ptr [ %.19.i, %bb.ci ], [ %.3335.lcssa, %.preheader500 ]
  %.4323 = phi i32 [ %.11195.i, %bb.ci ], [ %i.ce, %.preheader500 ]
  %.4316 = phi i32 [ %.11.i, %bb.ci ], [ %i.cf, %.preheader500 ]
  %i.rm = call fastcc i32 @make_decode_table(i32 noundef 288, i32 noundef 9, ptr noundef nonnull %i.q, ptr noundef nonnull %i.s)
  %.not389 = icmp eq i32 %i.rm, 0
  br i1 %.not389, label %bb.cj, label %.thread477

bb.cj:                                            ; preds = %.loopexit501
  %i.rn = call fastcc i32 @make_decode_table(i32 noundef 32, i32 noundef 6, ptr noundef nonnull %i.r, ptr noundef nonnull %i.t)
  %.not390 = icmp eq i32 %i.rn, 0
  br i1 %.not390, label %.preheader497, label %.thread477

.preheader497:                                    ; preds = %bb.cj, %.preheader497.backedge
  %.11356 = phi ptr [ %.11356.be, %.preheader497.backedge ], [ %.10355, %bb.cj ] ; 2 uses
  %.11343 = phi ptr [ %.11343.be, %.preheader497.backedge ], [ %.10342, %bb.cj ] ; 2 uses
  %.5324 = phi i32 [ %.5324.be, %.preheader497.backedge ], [ %.4323, %bb.cj ] ; 2 uses
  %.5317 = phi i32 [ %.5317.be, %.preheader497.backedge ], [ %.4316, %bb.cj ] ; 3 uses
  %i.ro = icmp slt i32 %.5317, 16
  br i1 %i.ro, label %.lr.ph693, label %._crit_edge694

.lr.ph693:                                        ; preds = %.preheader497, %bb.cr
  %.6318691 = phi i32 [ %i.sm, %bb.cr ], [ %.5317, %.preheader497 ] ; 3 uses
  %.6325690 = phi i32 [ %i.sl, %bb.cr ], [ %.5324, %.preheader497 ]
  %.12344689 = phi ptr [ %.13, %bb.cr ], [ %.11343, %.preheader497 ] ; 2 uses
  %.12357688 = phi ptr [ %i.sh, %bb.cr ], [ %.11356, %.preheader497 ] ; 2 uses
  %.not403 = icmp ult ptr %.12357688, %.12344689
  br i1 %.not403, label %bb.cr, label %bb.ck

bb.ck:                                            ; preds = %.lr.ph693
  %i.rp = load ptr, ptr %0, align 8, !tbaa !17
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 16
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !31
  %i.rs = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.rt = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.ru = load i32, ptr %i.o, align 4, !tbaa !20
  %i.rv = call i32 %i.rr(ptr noundef %i.rs, ptr noundef %i.rt, i32 noundef %i.ru) #7, !inline_history !0 ; 3 uses
  %i.rw = icmp slt i32 %i.rv, 0
  br i1 %i.rw, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.rx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 3, ptr %i.rx, align 8, !tbaa !22
  br label %.thread477

bb.cm:                                            ; preds = %bb.ck
  %i.ry = icmp eq i32 %i.rv, 0
  br i1 %i.ry, label %bb.cn, label %bb.cq

bb.cn:                                            ; preds = %bb.cm
  %i.rz = load i8, ptr %i.p, align 8, !tbaa !21
  %.not.i437 = icmp eq i8 %i.rz, 0
  br i1 %.not.i437, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.sa = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 3, ptr %i.sa, align 8, !tbaa !22
  br label %.thread477

bb.cp:                                            ; preds = %bb.cn
  %i.sb = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 1
  store i8 0, ptr %i.sc, align 1, !tbaa !32
  %i.sd = load ptr, ptr %i.n, align 8, !tbaa !15
  store i8 0, ptr %i.sd, align 1, !tbaa !32
  store i8 1, ptr %i.p, align 8, !tbaa !21
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.cm
  %.0.i435 = phi i32 [ 2, %bb.cp ], [ %i.rv, %bb.cm ]
  %i.se = load ptr, ptr %i.n, align 8, !tbaa !15  ; 3 uses
  store ptr %i.se, ptr %i.e, align 8, !tbaa !26
end_hunk_0
begin_hunk_1_@inflate:bb.a
.lr.ph727:                                        ; preds = %.preheader487, %bb.du
  %.9726 = phi i32 [ %i.aev, %bb.du ], [ %i.ads, %.preheader487 ] ; 2 uses
  %.9328725 = phi i32 [ %i.aeu, %bb.du ], [ %i.adt, %.preheader487 ]
  %.18724 = phi ptr [ %.19, %bb.du ], [ %.16.lcssa, %.preheader487 ] ; 2 uses
  %.18363723 = phi ptr [ %i.aeq, %bb.du ], [ %.16361.lcssa, %.preheader487 ] ; 2 uses
  %.not396 = icmp ult ptr %.18363723, %.18724
  br i1 %.not396, label %bb.du, label %bb.dn

bb.dn:                                            ; preds = %.lr.ph727
  %i.ady = load ptr, ptr %0, align 8, !tbaa !17
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ady, i64 16
  %i.aea = load ptr, ptr %i.adz, align 8, !tbaa !31
  %i.aeb = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.aec = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.aed = load i32, ptr %i.o, align 4, !tbaa !20
  %i.aee = call i32 %i.aea(ptr noundef %i.aeb, ptr noundef %i.aec, i32 noundef %i.aed) #7, !inline_history !0 ; 3 uses
  %i.aef = icmp slt i32 %i.aee, 0
  br i1 %i.aef, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.aeg = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 3, ptr %i.aeg, align 8, !tbaa !22
  br label %.thread477

bb.dp:                                            ; preds = %bb.dn
  %i.aeh = icmp eq i32 %i.aee, 0
  br i1 %i.aeh, label %bb.dq, label %bb.dt

bb.dq:                                            ; preds = %bb.dp
  %i.aei = load i8, ptr %i.p, align 8, !tbaa !21
  %.not.i449 = icmp eq i8 %i.aei, 0
  br i1 %.not.i449, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.aej = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 3, ptr %i.aej, align 8, !tbaa !22
  br label %.thread477

bb.ds:                                            ; preds = %bb.dq
  %i.aek = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aek, i64 1
  store i8 0, ptr %i.ael, align 1, !tbaa !32
  %i.aem = load ptr, ptr %i.n, align 8, !tbaa !15
  store i8 0, ptr %i.aem, align 1, !tbaa !32
  store i8 1, ptr %i.p, align 8, !tbaa !21
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dp
  %.0.i447 = phi i32 [ 2, %bb.ds ], [ %i.aee, %bb.dp ]
  %i.aen = load ptr, ptr %i.n, align 8, !tbaa !15 ; 3 uses
  store ptr %i.aen, ptr %i.e, align 8, !tbaa !26
  %i.aeo = zext nneg i32 %.0.i447 to i64
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aen, i64 %i.aeo ; 2 uses
  store ptr %i.aep, ptr %i.g, align 8, !tbaa !25
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %.lr.ph727
  %.19364 = phi ptr [ %i.aen, %bb.dt ], [ %.18363723, %.lr.ph727 ] ; 2 uses
  %.19 = phi ptr [ %i.aep, %bb.dt ], [ %.18724, %.lr.ph727 ] ; 2 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %.19364, i64 1 ; 2 uses
  %i.aer = load i8, ptr %.19364, align 1, !tbaa !32
  %i.aes = zext i8 %i.aer to i32
  %i.aet = shl i32 %i.aes, %.9726
  %i.aeu = or i32 %i.aet, %.9328725               ; 2 uses
  %i.aev = add nsw i32 %.9726, 8                  ; 3 uses
  %i.aew = icmp slt i32 %i.aev, %i.adw
  br i1 %i.aew, label %.lr.ph727, label %._crit_edge728

._crit_edge728:                                   ; preds = %bb.du, %.preheader487
  %.18363.lcssa = phi ptr [ %.16361.lcssa, %.preheader487 ], [ %i.aeq, %bb.du ] ; 3 uses
  %.18.lcssa = phi ptr [ %.16.lcssa, %.preheader487 ], [ %.19, %bb.du ] ; 3 uses
  %.9328.lcssa = phi i32 [ %i.adt, %.preheader487 ], [ %i.aeu, %bb.du ] ; 2 uses
  %.9.lcssa = phi i32 [ %i.ads, %.preheader487 ], [ %i.aev, %bb.du ]
  %i.aex = zext i8 %i.adv to i64
  %i.aey = getelementptr inbounds nuw [2 x i8], ptr @lsb_bit_mask, i64 %i.aex
  %i.aez = load i16, ptr %i.aey, align 2, !tbaa !36
  %i.afa = zext i16 %i.aez to i32
  %i.afb = and i32 %.9328.lcssa, %i.afa
  %i.afc = lshr i32 %.9328.lcssa, %i.adw          ; 3 uses
  %i.afd = sub nuw nsw i32 %.9.lcssa, %i.adw      ; 3 uses
  %i.afe = getelementptr inbounds nuw [2 x i8], ptr @dist_offsets, i64 %i.adn
  %i.aff = load i16, ptr %i.afe, align 2, !tbaa !36
  %i.afg = zext i16 %i.aff to i32
  %i.afh = add nuw nsw i32 %i.afb, %i.afg         ; 2 uses
  %i.afi = load i32, ptr %i.u, align 8, !tbaa !33 ; 4 uses
  %i.afj = icmp ugt i32 %i.afh, %i.afi
  %i.afk = select i1 %i.afj, i32 32768, i32 0
  %i.afl = sub i32 %i.afi, %i.afh
  %i.afm = add i32 %i.afl, %i.afk                 ; 2 uses
  %i.afn = icmp samesign ult i32 %i.yd, 12
  br i1 %i.afn, label %.preheader, label %.preheader484

.preheader:                                       ; preds = %._crit_edge728
  %.not394742 = icmp eq i32 %i.yd, 0
  br i1 %.not394742, label %.preheader497.backedge, label %.lr.ph744

.preheader497.backedge:                           ; preds = %bb.ea, %bb.dx, %.preheader, %bb.cs, %bb.cu
  %.11356.be = phi ptr [ %.18363.lcssa, %bb.dx ], [ %.12357.lcssa, %bb.cu ], [ %.12357.lcssa, %bb.cs ], [ %.18363.lcssa, %.preheader ], [ %.18363.lcssa, %bb.ea ]
  %.11343.be = phi ptr [ %.18.lcssa, %bb.dx ], [ %.12344.lcssa, %bb.cu ], [ %.12344.lcssa, %bb.cs ], [ %.18.lcssa, %.preheader ], [ %.18.lcssa, %bb.ea ]
  %.5324.be = phi i32 [ %i.afc, %bb.dx ], [ %i.wb, %bb.cu ], [ %i.wb, %bb.cs ], [ %i.afc, %.preheader ], [ %i.afc, %bb.ea ]
  %.5317.be = phi i32 [ %i.afd, %bb.dx ], [ %i.wc, %bb.cu ], [ %i.wc, %bb.cs ], [ %i.afd, %.preheader ], [ %i.afd, %bb.ea ]
  br label %.preheader497

.lr.ph744:                                        ; preds = %.preheader, %bb.dx
  %i.afo = phi i32 [ %i.agb, %bb.dx ], [ %i.afi, %.preheader ] ; 2 uses
  %.in = phi i32 [ %i.afp, %bb.dx ], [ %i.yd, %.preheader ]
  %.0292743 = phi i32 [ %i.afx, %bb.dx ], [ %i.afm, %.preheader ] ; 2 uses
  %i.afp = add nsw i32 %.in, -1                   ; 2 uses
  %i.afq = add i32 %.0292743, 1
  %i.afr = zext i32 %.0292743 to i64
  %i.afs = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.afr
  %i.aft = load i8, ptr %i.afs, align 1, !tbaa !32
  %i.afu = add i32 %i.afo, 1                      ; 3 uses
  store i32 %i.afu, ptr %i.u, align 8, !tbaa !33
  %i.afv = zext i32 %i.afo to i64
  %i.afw = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.afv
  store i8 %i.aft, ptr %i.afw, align 1, !tbaa !32
  %i.afx = and i32 %i.afq, 32767
  %i.afy = icmp eq i32 %i.afu, 32768
  br i1 %i.afy, label %bb.dv, label %bb.dx

bb.dv:                                            ; preds = %.lr.ph744
  %i.afz = load ptr, ptr %i.w, align 8, !tbaa !24
  %i.aga = call i32 %i.afz(ptr noundef nonnull %0, i32 noundef 32768) #7
  %.not395 = icmp eq i32 %i.aga, 0
  br i1 %.not395, label %bb.dw, label %.thread477

bb.dw:                                            ; preds = %bb.dv
  store i32 0, ptr %i.u, align 8, !tbaa !33
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %.lr.ph744
  %i.agb = phi i32 [ 0, %bb.dw ], [ %i.afu, %.lr.ph744 ]
  %.not394 = icmp eq i32 %i.afp, 0
  br i1 %.not394, label %.preheader497.backedge, label %.lr.ph744

.preheader484:                                    ; preds = %._crit_edge728, %bb.ea
  %i.agc = phi i32 [ %i.aip, %bb.ea ], [ %i.afi, %._crit_edge728 ] ; 4 uses
  %.2305 = phi i32 [ %i.agl, %bb.ea ], [ %i.yd, %._crit_edge728 ] ; 3 uses
  %.1 = phi i32 [ %spec.store.select, %bb.ea ], [ %i.afm, %._crit_edge728 ] ; 4 uses
  %i.agd = add i32 %.1, %.2305
  %i.age = icmp ugt i32 %i.agd, 32768
  %i.agf = sub i32 32768, %.1
  %spec.select420 = select i1 %i.age, i32 %i.agf, i32 %.2305 ; 2 uses
  %i.agg = add i32 %spec.select420, %i.agc
  %i.agh = icmp ugt i32 %i.agg, 32768
  %i.agi = sub i32 32768, %i.agc
  %.3301 = select i1 %i.agh, i32 %i.agi, i32 %spec.select420 ; 10 uses
  %i.agj = add i32 %.3301, %i.agc                 ; 2 uses
  store i32 %i.agj, ptr %i.u, align 8, !tbaa !33
  %i.agk = add i32 %.3301, %.1                    ; 2 uses
  %i.agl = sub i32 %.2305, %.3301                 ; 2 uses
  %.not391735 = icmp eq i32 %.3301, 0
  br i1 %.not391735, label %._crit_edge741, label %iter.check

iter.check:                                       ; preds = %.preheader484
  %i.agm = zext i32 %.1 to i64                    ; 2 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.agm ; 5 uses
  %i.ago = zext i32 %i.agc to i64                 ; 2 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ago ; 5 uses
  %i.agq = zext i32 %.3301 to i64                 ; 5 uses
  %min.iters.check = icmp ult i32 %.3301, 4
  %i.agr = sub nsw i64 %i.agm, %i.ago
  %diff.check = icmp ugt i64 %i.agr, -32
  %or.cond1208 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond1208, label %.lr.ph740.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1165 = icmp ult i32 %.3301, 32
  br i1 %min.iters.check1165, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ags = and i64 %i.agq, 28
  %n.vec = and i64 %i.agq, 4294967264             ; 6 uses
  %i.agt = getelementptr i8, ptr %i.agp, i64 %n.vec
  %i.agu = getelementptr i8, ptr %i.agn, i64 %n.vec
  %i.agv = trunc nuw i64 %n.vec to i32
  %i.agw = sub i32 %.3301, %i.agv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.agp, i64 %index ; 2 uses
  %next.gep1166 = getelementptr i8, ptr %i.agn, i64 %index ; 2 uses
  %i.agx = getelementptr i8, ptr %next.gep1166, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep1166, align 1, !tbaa !32
  %wide.load1167 = load <16 x i8>, ptr %i.agx, align 1, !tbaa !32
  %i.agy = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !32
  store <16 x i8> %wide.load1167, ptr %i.agy, align 1, !tbaa !32
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.agz = icmp eq i64 %index.next, %n.vec
  br i1 %i.agz, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.agq
  br i1 %cmp.n, label %._crit_edge741.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ags, 0
  br i1 %min.epilog.iters.check, label %.lr.ph740.preheader, label %vec.epilog.ph, !prof !55

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1170 = and i64 %i.agq, 4294967292         ; 5 uses
  %i.aha = getelementptr i8, ptr %i.agp, i64 %n.vec1170
  %i.ahb = getelementptr i8, ptr %i.agn, i64 %n.vec1170
  %i.ahc = trunc nuw i64 %n.vec1170 to i32
  %i.ahd = sub i32 %.3301, %i.ahc
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1171 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1175, %vec.epilog.vector.body ] ; 3 uses
  %next.gep1172 = getelementptr i8, ptr %i.agp, i64 %index1171
  %next.gep1173 = getelementptr i8, ptr %i.agn, i64 %index1171
  %wide.load1174 = load <4 x i8>, ptr %next.gep1173, align 1, !tbaa !32
  store <4 x i8> %wide.load1174, ptr %next.gep1172, align 1, !tbaa !32
  %index.next1175 = add nuw i64 %index1171, 4     ; 2 uses
  %i.ahe = icmp eq i64 %index.next1175, %n.vec1170
  br i1 %i.ahe, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !50

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1176 = icmp eq i64 %n.vec1170, %i.agq
  br i1 %cmp.n1176, label %._crit_edge741.loopexit, label %.lr.ph740.preheader

.lr.ph740.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0738.ph = phi ptr [ %i.agp, %iter.check ], [ %i.agt, %vec.epilog.iter.check ], [ %i.aha, %vec.epilog.middle.block ] ; 2 uses
  %.0291737.ph = phi ptr [ %i.agn, %iter.check ], [ %i.agu, %vec.epilog.iter.check ], [ %i.ahb, %vec.epilog.middle.block ] ; 2 uses
  %.4302736.ph = phi i32 [ %.3301, %iter.check ], [ %i.agw, %vec.epilog.iter.check ], [ %i.ahd, %vec.epilog.middle.block ] ; 4 uses
  %i.ahf = add i32 %.4302736.ph, -1
  %xtraiter1308 = and i32 %.4302736.ph, 7         ; 2 uses
  %lcmp.mod1309.not = icmp eq i32 %xtraiter1308, 0
  br i1 %lcmp.mod1309.not, label %.lr.ph740.prol.loopexit, label %.lr.ph740.prol

.lr.ph740.prol:                                   ; preds = %.lr.ph740.preheader, %.lr.ph740.prol
  %.0738.prol = phi ptr [ %i.ahj, %.lr.ph740.prol ], [ %.0738.ph, %.lr.ph740.preheader ] ; 2 uses
  %.0291737.prol = phi ptr [ %i.ahh, %.lr.ph740.prol ], [ %.0291737.ph, %.lr.ph740.preheader ] ; 2 uses
  %.4302736.prol = phi i32 [ %i.ahg, %.lr.ph740.prol ], [ %.4302736.ph, %.lr.ph740.preheader ]
  %prol.iter1310 = phi i32 [ %prol.iter1310.next, %.lr.ph740.prol ], [ 0, %.lr.ph740.preheader ]
  %i.ahg = add i32 %.4302736.prol, -1             ; 2 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %.0291737.prol, i64 1 ; 2 uses
  %i.ahi = load i8, ptr %.0291737.prol, align 1, !tbaa !32
  %i.ahj = getelementptr inbounds nuw i8, ptr %.0738.prol, i64 1 ; 2 uses
  store i8 %i.ahi, ptr %.0738.prol, align 1, !tbaa !32
  %prol.iter1310.next = add i32 %prol.iter1310, 1 ; 2 uses
  %prol.iter1310.cmp.not = icmp eq i32 %prol.iter1310.next, %xtraiter1308
  br i1 %prol.iter1310.cmp.not, label %.lr.ph740.prol.loopexit, label %.lr.ph740.prol, !llvm.loop !51

.lr.ph740.prol.loopexit:                          ; preds = %.lr.ph740.prol, %.lr.ph740.preheader
  %.0738.unr = phi ptr [ %.0738.ph, %.lr.ph740.preheader ], [ %i.ahj, %.lr.ph740.prol ]
  %.0291737.unr = phi ptr [ %.0291737.ph, %.lr.ph740.preheader ], [ %i.ahh, %.lr.ph740.prol ]
  %.4302736.unr = phi i32 [ %.4302736.ph, %.lr.ph740.preheader ], [ %i.ahg, %.lr.ph740.prol ]
  %i.ahk = icmp ult i32 %i.ahf, 7
  br i1 %i.ahk, label %._crit_edge741.loopexit, label %.lr.ph740

.lr.ph740:                                        ; preds = %.lr.ph740.prol.loopexit, %.lr.ph740
  %.0738 = phi ptr [ %i.aij, %.lr.ph740 ], [ %.0738.unr, %.lr.ph740.prol.loopexit ] ; 9 uses
  %.0291737 = phi ptr [ %i.aih, %.lr.ph740 ], [ %.0291737.unr, %.lr.ph740.prol.loopexit ] ; 9 uses
  %.4302736 = phi i32 [ %i.aig, %.lr.ph740 ], [ %.4302736.unr, %.lr.ph740.prol.loopexit ]
  %i.ahl = getelementptr inbounds nuw i8, ptr %.0291737, i64 1
  %i.ahm = load i8, ptr %.0291737, align 1, !tbaa !32
  %i.ahn = getelementptr inbounds nuw i8, ptr %.0738, i64 1
  store i8 %i.ahm, ptr %.0738, align 1, !tbaa !32
  %i.aho = getelementptr inbounds nuw i8, ptr %.0291737, i64 2
  %i.ahp = load i8, ptr %i.ahl, align 1, !tbaa !32
  %i.ahq = getelementptr inbounds nuw i8, ptr %.0738, i64 2
  store i8 %i.ahp, ptr %i.ahn, align 1, !tbaa !32
  %i.ahr = getelementptr inbounds nuw i8, ptr %.0291737, i64 3
  %i.ahs = load i8, ptr %i.aho, align 1, !tbaa !32
  %i.aht = getelementptr inbounds nuw i8, ptr %.0738, i64 3
  store i8 %i.ahs, ptr %i.ahq, align 1, !tbaa !32
  %i.ahu = getelementptr inbounds nuw i8, ptr %.0291737, i64 4
  %i.ahv = load i8, ptr %i.ahr, align 1, !tbaa !32
  %i.ahw = getelementptr inbounds nuw i8, ptr %.0738, i64 4
  store i8 %i.ahv, ptr %i.aht, align 1, !tbaa !32
  %i.ahx = getelementptr inbounds nuw i8, ptr %.0291737, i64 5
  %i.ahy = load i8, ptr %i.ahu, align 1, !tbaa !32
  %i.ahz = getelementptr inbounds nuw i8, ptr %.0738, i64 5
  store i8 %i.ahy, ptr %i.ahw, align 1, !tbaa !32
  %i.aia = getelementptr inbounds nuw i8, ptr %.0291737, i64 6
  %i.aib = load i8, ptr %i.ahx, align 1, !tbaa !32
  %i.aic = getelementptr inbounds nuw i8, ptr %.0738, i64 6
  store i8 %i.aib, ptr %i.ahz, align 1, !tbaa !32
  %i.aid = getelementptr inbounds nuw i8, ptr %.0291737, i64 7
  %i.aie = load i8, ptr %i.aia, align 1, !tbaa !32
  %i.aif = getelementptr inbounds nuw i8, ptr %.0738, i64 7
  store i8 %i.aie, ptr %i.aic, align 1, !tbaa !32
  %i.aig = add i32 %.4302736, -8                  ; 2 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %.0291737, i64 8
  %i.aii = load i8, ptr %i.aid, align 1, !tbaa !32
  %i.aij = getelementptr inbounds nuw i8, ptr %.0738, i64 8
  store i8 %i.aii, ptr %i.aif, align 1, !tbaa !32
  %.not391.7 = icmp eq i32 %i.aig, 0
  br i1 %.not391.7, label %._crit_edge741.loopexit, label %.lr.ph740, !llvm.loop !52

._crit_edge741.loopexit:                          ; preds = %.lr.ph740.prol.loopexit, %.lr.ph740, %vec.epilog.middle.block, %middle.block
  %.pre = load i32, ptr %i.u, align 8, !tbaa !33
  br label %._crit_edge741

._crit_edge741:                                   ; preds = %._crit_edge741.loopexit, %.preheader484
  %i.aik = phi i32 [ %.pre, %._crit_edge741.loopexit ], [ %i.agj, %.preheader484 ] ; 2 uses
  %i.ail = icmp eq i32 %i.agk, 32768
  %spec.store.select = select i1 %i.ail, i32 0, i32 %i.agk
  %i.aim = icmp eq i32 %i.aik, 32768
  br i1 %i.aim, label %bb.dy, label %bb.ea

bb.dy:                                            ; preds = %._crit_edge741
  %i.ain = load ptr, ptr %i.w, align 8, !tbaa !24
  %i.aio = call i32 %i.ain(ptr noundef nonnull %0, i32 noundef 32768) #7
  %.not392 = icmp eq i32 %i.aio, 0
  br i1 %.not392, label %bb.dz, label %.thread477

bb.dz:                                            ; preds = %bb.dy
  store i32 0, ptr %i.u, align 8, !tbaa !33
  br label %bb.ea

bb.ea:                                            ; preds = %._crit_edge741, %bb.dz
  %i.aip = phi i32 [ %i.aik, %._crit_edge741 ], [ 0, %bb.dz ]
  %.not393 = icmp eq i32 %i.agl, 0
  br i1 %.not393, label %.preheader497.backedge, label %.preheader484

.loopexit498:                                     ; preds = %bb.cv, %._crit_edge766
  %.22367 = phi ptr [ %.7352.lcssa, %._crit_edge766 ], [ %.12357.lcssa, %bb.cv ] ; 2 uses
  %.22 = phi ptr [ %.7339.lcssa, %._crit_edge766 ], [ %.12344.lcssa, %bb.cv ] ; 2 uses
  %.12331 = phi i32 [ %.3322.lcssa978, %._crit_edge766 ], [ %i.wb, %bb.cv ] ; 2 uses
  %.12 = phi i32 [ 0, %._crit_edge766 ], [ %i.wc, %bb.cv ] ; 2 uses
  %.not413 = icmp eq i32 %i.ba, 0
  br i1 %.not413, label %bb.b, label %bb.eb

bb.eb:                                            ; preds = %.loopexit498
  %i.aiq = load i32, ptr %i.u, align 8, !tbaa !33 ; 2 uses
  %.not414 = icmp eq i32 %i.aiq, 0
  br i1 %.not414, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.air = load ptr, ptr %i.w, align 8, !tbaa !24
  %i.ais = call i32 %i.air(ptr noundef nonnull %0, i32 noundef %i.aiq) #7
  %.not415 = icmp eq i32 %i.ais, 0
  br i1 %.not415, label %bb.ed, label %.thread477

bb.ed:                                            ; preds = %bb.eb, %bb.ec
  store ptr %.22367, ptr %i.e, align 8, !tbaa !26
  store ptr %.22, ptr %i.g, align 8, !tbaa !25
  store i32 %.12331, ptr %i.i, align 4, !tbaa !27
  store i32 %.12, ptr %i.k, align 8, !tbaa !28
  br label %.thread477

.thread477:                                       ; preds = %bb.cj, %.loopexit501, %._crit_edge673, %.loopexit, %bb.cw, %bb.ct, %.preheader491.8, %.preheader488.11, %bb.dy, %bb.dv, %bb.dr, %bb.do, %bb.dj, %bb.dg, %bb.db, %bb.cy, %bb.co, %bb.cl, %bb.o, %bb.l, %bb.g, %bb.d, %zip_read_lens.exit.thread, %.thread, %bb.ec, %bb.ed
  %.7375 = phi i32 [ 3, %bb.dg ], [ 3, %bb.g ], [ 3, %bb.dr ], [ 0, %bb.ed ], [ %.1369.ph, %.thread ], [ -3, %bb.ec ], [ -3, %bb.dv ], [ 3, %bb.o ], [ 3, %bb.dj ], [ 3, %bb.do ], [ -12, %.loopexit ], [ 3, %bb.db ], [ 3, %bb.co ], [ -3, %bb.dy ], [ %.0228.i.ph, %zip_read_lens.exit.thread ], [ 3, %bb.d ], [ 3, %bb.l ], [ 3, %bb.cl ], [ 3, %bb.cy ], [ -3, %bb.ct ], [ -11, %bb.cw ], [ -14, %.preheader488.11 ], [ -14, %.preheader491.8 ], [ -8, %bb.cj ], [ -7, %.loopexit501 ], [ -1, %._crit_edge673 ]
  ret i32 %.7375
}

; Function Attrs: nounwind uwtable
define range(i32 -14, 12) i32 @mszipd_decompress_kwaj(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 16 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2992
  br label %bb.b

bb.b:                                             ; preds = %bb.ac, %bb.a
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !25   ; 2 uses
  %i.o = load i32, ptr %i.c, align 4, !tbaa !27
  %i.p = load i32, ptr %i.d, align 8, !tbaa !28   ; 3 uses
  %i.q = and i32 %i.p, 7
  %i.r = lshr i32 %i.o, %i.q                      ; 2 uses
  %i.s = and i32 %i.p, -8                         ; 2 uses
  %i.t = icmp slt i32 %i.p, 8
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %bb.h
  %.0176 = phi i32 [ %i.ap, %bb.h ], [ %i.s, %bb.b ] ; 3 uses
  %.090175 = phi i32 [ %i.ao, %bb.h ], [ %i.r, %bb.b ]
  %.094174 = phi ptr [ %.195, %bb.h ], [ %i.n, %bb.b ] ; 2 uses
  %.098173 = phi ptr [ %i.ak, %bb.h ], [ %i.m, %bb.b ] ; 2 uses
  %.not117 = icmp ult ptr %.098173, %.094174
  br i1 %.not117, label %bb.h, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.u = load ptr, ptr %0, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.z = load i32, ptr %i.g, align 4, !tbaa !20
  %i.aa = tail call i32 %i.w(ptr noundef %i.x, ptr noundef %i.y, i32 noundef %i.z) #7, !inline_history !0 ; 3 uses
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %.loopexit.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = icmp eq i32 %i.aa, 0
end_hunk_1
begin_hunk_2_@mszipd_decompress_kwaj:bb.a
  %i.dd = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.de = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.df = load i32, ptr %i.g, align 4, !tbaa !20
  %i.dg = tail call i32 %i.dc(ptr noundef %i.dd, ptr noundef %i.de, i32 noundef %i.df) #7, !inline_history !0 ; 3 uses
  %i.dh = icmp slt i32 %i.dg, 0
  br i1 %i.dh, label %.loopexit.sink.split, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.di = icmp eq i32 %i.dg, 0
  br i1 %i.di, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.dj = load i8, ptr %i.h, align 8, !tbaa !21
  %.not.i129 = icmp eq i8 %i.dj, 0
  br i1 %.not.i129, label %bb.x, label %.loopexit.sink.split

bb.x:                                             ; preds = %bb.w
  %i.dk = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 1
  store i8 0, ptr %i.dl, align 1, !tbaa !32
  %i.dm = load ptr, ptr %i.f, align 8, !tbaa !15
  store i8 0, ptr %i.dm, align 1, !tbaa !32
  store i8 1, ptr %i.h, align 8, !tbaa !21
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %.0.i127 = phi i32 [ 2, %bb.x ], [ %i.dg, %bb.v ]
  %i.dn = load ptr, ptr %i.f, align 8, !tbaa !15  ; 3 uses
  store ptr %i.dn, ptr %i.a, align 8, !tbaa !26
  %i.do = zext nneg i32 %.0.i127 to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.do ; 2 uses
  store ptr %i.dp, ptr %i.b, align 8, !tbaa !25
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph205
  %.7105 = phi ptr [ %i.dn, %bb.y ], [ %.6104201, %.lr.ph205 ] ; 2 uses
  %.7 = phi ptr [ %i.dp, %bb.y ], [ %.6202, %.lr.ph205 ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.7105, i64 1 ; 2 uses
  %i.dr = load i8, ptr %.7105, align 1, !tbaa !32
  %i.ds = zext i8 %i.dr to i32
  %i.dt = shl nuw nsw i32 %i.ds, %.3204
  %i.du = or i32 %i.dt, %.393203                  ; 2 uses
  %i.dv = add nuw nsw i32 %.3204, 8               ; 2 uses
  %i.dw = icmp slt i32 %.3204, 0
  br i1 %i.dw, label %.lr.ph205, label %._crit_edge206

._crit_edge206:                                   ; preds = %bb.z, %.preheader
  %.6104.lcssa = phi ptr [ %.4102.lcssa, %.preheader ], [ %i.dq, %bb.z ]
  %.6.lcssa = phi ptr [ %.4.lcssa, %.preheader ], [ %.7, %bb.z ]
  %.393.lcssa = phi i32 [ %i.cy, %.preheader ], [ %i.du, %bb.z ] ; 2 uses
  %.3.lcssa = phi i32 [ %i.cx, %.preheader ], [ %i.dv, %bb.z ]
  %i.dx = and i32 %.393.lcssa, 255
  %.not108 = icmp eq i32 %i.dx, 75
  br i1 %.not108, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %._crit_edge206
  %i.dy = add nsw i32 %.3.lcssa, -8
  %i.dz = lshr i32 %.393.lcssa, 8
  store i32 0, ptr %i.i, align 8, !tbaa !33
  store i32 0, ptr %i.j, align 8, !tbaa !29
  store ptr %.6104.lcssa, ptr %i.a, align 8, !tbaa !26
  store ptr %.6.lcssa, ptr %i.b, align 8, !tbaa !25
  store i32 %i.dz, ptr %i.c, align 4, !tbaa !27
  store i32 %i.dy, ptr %i.d, align 8, !tbaa !28
  %i.ea = tail call fastcc i32 @inflate(ptr noundef %0) ; 3 uses
  %.not109 = icmp eq i32 %i.ea, 0
  br i1 %.not109, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eb = icmp sgt i32 %i.ea, 0
  %i.ec = select i1 %i.eb, i32 %i.ea, i32 11
  br label %.loopexit.sink.split

bb.ac:                                            ; preds = %bb.aa
  %i.ed = load ptr, ptr %0, align 8, !tbaa !17
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !30
  %i.eg = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.eh = load i32, ptr %i.j, align 8, !tbaa !29
  %i.ei = tail call i32 %i.ef(ptr noundef %i.eg, ptr noundef nonnull %i.l, i32 noundef %i.eh) #7
  %i.ej = load i32, ptr %i.j, align 8, !tbaa !29
  %.not110 = icmp eq i32 %i.ei, %i.ej
  br i1 %.not110, label %bb.b, label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.ac, %bb.e, %bb.c, %bb.k, %bb.i, %bb.q, %bb.o, %bb.w, %bb.u, %bb.ab
  %.sink = phi i32 [ 3, %bb.e ], [ %i.ec, %bb.ab ], [ 3, %bb.k ], [ 3, %bb.w ], [ 3, %bb.q ], [ 3, %bb.u ], [ 3, %bb.o ], [ 3, %bb.i ], [ 3, %bb.c ], [ 4, %bb.ac ] ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sink, ptr %i.ek, align 8, !tbaa !22
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge186, %._crit_edge206, %._crit_edge196, %.loopexit.sink.split
  %.0106 = phi i32 [ %.sink, %.loopexit.sink.split ], [ 8, %._crit_edge206 ], [ 0, %._crit_edge186 ], [ 8, %._crit_edge196 ]
  ret i32 %.0106
}

; Function Attrs: nounwind uwtable
define void @mszipd_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15
  tail call void %i.c(ptr noundef %i.e) #7
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !16
  tail call void %i.f(ptr noundef nonnull %0) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 2) i32 @make_decode_table(i32 noundef range(i32 19, 289) %0, i32 noundef range(i32 6, 10) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) unnamed_addr #3 {
bb.a:
  %i.a = shl nuw nsw i32 1, %1                    ; 5 uses
  %i.b = lshr exact i32 %i.a, 1                   ; 2 uses
  %i.c = trunc nuw nsw i32 %1 to i8
  %i.d = trunc nuw nsw i32 %0 to i16              ; 2 uses
  br label %.preheader144

.preheader144:                                    ; preds = %bb.a, %bb.e
  %indvar = phi i32 [ 0, %bb.a ], [ %indvar.next, %bb.e ] ; 3 uses
  %i.e = phi i32 [ 1, %bb.a ], [ %i.bf, %bb.e ]
  %.0157 = phi i32 [ %i.b, %bb.a ], [ %i.bd, %bb.e ] ; 6 uses
  %.098156 = phi i32 [ 0, %bb.a ], [ %.2, %bb.e ]
  %.0100155 = phi i8 [ 1, %bb.a ], [ %i.be, %bb.e ] ; 4 uses
  %i.f = add i32 %indvar, 1                       ; 2 uses
  %i.g = shl nuw nsw i32 1, %i.e                  ; 5 uses
  %i.h = zext nneg i8 %.0100155 to i32
  %i.i = sub nuw nsw i32 %1, %i.h
  %i.j = add nsw i32 %.0157, -1
  %xtraiter = and i32 %i.f, 3                     ; 3 uses
  %i.k = icmp ult i32 %indvar, 3
  %unroll_iter = and i32 %i.f, -4
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod219 = icmp ne i32 %xtraiter, 0
  %xtraiter220 = and i32 %.0157, 3                ; 2 uses
  %lcmp.mod221.not = icmp eq i32 %xtraiter220, 0
  %i.l = icmp ult i32 %i.j, 3
  br label %bb.b

bb.b:                                             ; preds = %.preheader144, %.loopexit143
  %.199154 = phi i32 [ %.098156, %.preheader144 ], [ %.2, %.loopexit143 ] ; 3 uses
  %.0121153 = phi i16 [ 0, %.preheader144 ], [ %i.bb, %.loopexit143 ] ; 7 uses
  %i.m = zext nneg i16 %.0121153 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !32
  %.not138 = icmp eq i8 %i.o, %.0100155
  br i1 %.not138, label %bb.c, label %.loopexit143

bb.c:                                             ; preds = %bb.b
  %i.p = lshr i32 %.199154, %i.i                  ; 2 uses
  br i1 %i.k, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.c, %.new
  %.0110 = phi i32 [ %i.ac, %.new ], [ 0, %bb.c ]
  %.0102 = phi i32 [ %i.ad, %.new ], [ %i.p, %bb.c ] ; 5 uses
  %niter = phi i32 [ %niter.next.3, %.new ], [ 0, %bb.c ]
  %i.q = shl i32 %.0110, 3
  %i.r = shl i32 %.0102, 2
  %i.s = and i32 %i.r, 4
  %i.t = or disjoint i32 %i.q, %i.s
  %i.u = and i32 %.0102, 2
  %i.v = or disjoint i32 %i.u, %i.t
  %i.w = lshr i32 %.0102, 2
  %i.x = and i32 %i.w, 1
  %i.y = or disjoint i32 %i.x, %i.v
  %i.z = lshr i32 %.0102, 3
  %i.aa = shl i32 %i.y, 1
  %i.ab = and i32 %i.z, 1
  %i.ac = or disjoint i32 %i.ab, %i.aa            ; 3 uses
  %i.ad = lshr i32 %.0102, 4                      ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.new

.unr-lcssa:                                       ; preds = %.new
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.c
  %.0110.epil.init = phi i32 [ 0, %bb.c ], [ %i.ac, %.unr-lcssa ]
  %.0102.epil.init = phi i32 [ %i.p, %bb.c ], [ %i.ad, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod219)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.0110.epil = phi i32 [ %.0110.epil.init, %.epil.preheader ], [ %i.ag, %bb.d ]
  %.0102.epil = phi i32 [ %.0102.epil.init, %.epil.preheader ], [ %i.ah, %bb.d ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ae = shl i32 %.0110.epil, 1
  %i.af = and i32 %.0102.epil, 1
  %i.ag = or disjoint i32 %i.af, %i.ae            ; 2 uses
  %i.ah = lshr i32 %.0102.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.d, !llvm.loop !56

.epilog-lcssa:                                    ; preds = %bb.d, %.unr-lcssa
  %.lcssa217 = phi i32 [ %i.ac, %.unr-lcssa ], [ %i.ag, %bb.d ] ; 2 uses
  %i.ai = add i32 %.199154, %.0157                ; 3 uses
  %i.aj = icmp ugt i32 %i.ai, %i.a
  br i1 %i.aj, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.epilog-lcssa
  br i1 %lcmp.mod221.not, label %.preheader178.prol.loopexit, label %.preheader178.prol

.preheader178.prol:                               ; preds = %iter.check, %.preheader178.prol
  %.1111.prol = phi i32 [ %i.am, %.preheader178.prol ], [ %.lcssa217, %iter.check ] ; 2 uses
  %.1106.prol = phi i32 [ %i.an, %.preheader178.prol ], [ %.0157, %iter.check ]
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader178.prol ], [ 0, %iter.check ]
  %i.ak = zext i32 %.1111.prol to i64
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ak
  store i16 %.0121153, ptr %i.al, align 2, !tbaa !36
  %i.am = add i32 %.1111.prol, %i.g               ; 2 uses
  %i.an = add i32 %.1106.prol, -1                 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter220
  br i1 %prol.iter.cmp.not, label %.preheader178.prol.loopexit, label %.preheader178.prol, !llvm.loop !57

.preheader178.prol.loopexit:                      ; preds = %.preheader178.prol, %iter.check
  %.1111.unr = phi i32 [ %.lcssa217, %iter.check ], [ %i.am, %.preheader178.prol ]
  %.1106.unr = phi i32 [ %.0157, %iter.check ], [ %i.an, %.preheader178.prol ]
  br i1 %i.l, label %.loopexit143, label %.preheader178

.preheader178:                                    ; preds = %.preheader178.prol.loopexit, %.preheader178
  %.1111 = phi i32 [ %i.az, %.preheader178 ], [ %.1111.unr, %.preheader178.prol.loopexit ] ; 2 uses
  %.1106 = phi i32 [ %i.ba, %.preheader178 ], [ %.1106.unr, %.preheader178.prol.loopexit ]
  %i.ao = zext i32 %.1111 to i64
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ao
  store i16 %.0121153, ptr %i.ap, align 2, !tbaa !36
  %i.aq = add i32 %.1111, %i.g                    ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ar
  store i16 %.0121153, ptr %i.as, align 2, !tbaa !36
  %i.at = add i32 %i.aq, %i.g                     ; 2 uses
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.au
  store i16 %.0121153, ptr %i.av, align 2, !tbaa !36
  %i.aw = add i32 %i.at, %i.g                     ; 2 uses
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ax
  store i16 %.0121153, ptr %i.ay, align 2, !tbaa !36
  %i.az = add i32 %i.aw, %i.g
  %i.ba = add i32 %.1106, -4                      ; 2 uses
  %.not140.3 = icmp eq i32 %i.ba, 0
  br i1 %.not140.3, label %.loopexit143, label %.preheader178, !llvm.loop !58

.loopexit143:                                     ; preds = %.preheader178.prol.loopexit, %.preheader178, %bb.b
  %.2 = phi i32 [ %.199154, %bb.b ], [ %i.ai, %.preheader178 ], [ %i.ai, %.preheader178.prol.loopexit ] ; 6 uses
  %i.bb = add nuw nsw i16 %.0121153, 1            ; 2 uses
  %i.bc = icmp samesign ult i16 %i.bb, %i.d
  br i1 %i.bc, label %bb.b, label %bb.e

bb.e:                                             ; preds = %.loopexit143
  %i.bd = lshr i32 %.0157, 1
  %i.be = add nuw nsw i8 %.0100155, 1             ; 2 uses
  %i.bf = zext nneg i8 %i.be to i32
  %.not.not = icmp samesign ult i8 %.0100155, %i.c
  %indvar.next = add i32 %indvar, 1
  br i1 %.not.not, label %.preheader144, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bg = icmp eq i32 %.2, %i.a
  br i1 %i.bg, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = and i32 %.2, 65535                      ; 2 uses
  %i.bi = icmp samesign ugt i32 %i.a, %i.bh
  br i1 %i.bi, label %.preheader142.preheader, label %.preheader141.preheader

.preheader142.preheader:                          ; preds = %bb.g
  %i.bj = trunc i32 %.2 to i16
  %xtraiter224 = and i32 %1, 3                    ; 3 uses
  %unroll_iter230 = and i32 %1, 12
  %lcmp.mod226.not = icmp eq i32 %xtraiter224, 0
  %lcmp.mod229 = icmp ne i32 %xtraiter224, 0
  br label %.preheader142

.preheader142:                                    ; preds = %.preheader142.preheader, %.epilog-lcssa227
  %i.bk = phi i32 [ %i.cg, %.epilog-lcssa227 ], [ %i.bh, %.preheader142.preheader ]
  %.1122158 = phi i16 [ %i.cf, %.epilog-lcssa227 ], [ %i.bj, %.preheader142.preheader ]
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.preheader142
  %.2112 = phi i32 [ 0, %.preheader142 ], [ %i.bx, %bb.h ]
  %.1103 = phi i32 [ %i.bk, %.preheader142 ], [ %i.by, %bb.h ] ; 5 uses
  %niter231 = phi i32 [ 0, %.preheader142 ], [ %niter231.next.3, %bb.h ]
  %i.bl = shl i32 %.2112, 3
  %i.bm = shl nsw i32 %.1103, 2
  %i.bn = and i32 %i.bm, 4
  %i.bo = or disjoint i32 %i.bl, %i.bn
  %i.bp = and i32 %.1103, 2
  %i.bq = or disjoint i32 %i.bp, %i.bo
  %i.br = lshr i32 %.1103, 2
  %i.bs = and i32 %i.br, 1
  %i.bt = or disjoint i32 %i.bs, %i.bq
  %i.bu = lshr i32 %.1103, 3
  %i.bv = shl i32 %i.bt, 1
  %i.bw = and i32 %i.bu, 1
  %i.bx = or disjoint i32 %i.bw, %i.bv            ; 3 uses
  %i.by = lshr i32 %.1103, 4                      ; 2 uses
  %niter231.next.3 = add nuw nsw i32 %niter231, 4 ; 2 uses
  %niter231.ncmp.3 = icmp eq i32 %niter231.next.3, %unroll_iter230
  br i1 %niter231.ncmp.3, label %.unr-lcssa222, label %bb.h

.unr-lcssa222:                                    ; preds = %bb.h
  br i1 %lcmp.mod226.not, label %.epilog-lcssa227, label %.epil.preheader223

.epil.preheader223:                               ; preds = %.unr-lcssa222
  tail call void @llvm.assume(i1 %lcmp.mod229)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader223
  %.2112.epil = phi i32 [ %i.cb, %bb.i ], [ %i.bx, %.epil.preheader223 ]
  %.1103.epil = phi i32 [ %i.cc, %bb.i ], [ %i.by, %.epil.preheader223 ] ; 2 uses
  %epil.iter225 = phi i32 [ %epil.iter225.next, %bb.i ], [ 0, %.epil.preheader223 ]
  %i.bz = shl i32 %.2112.epil, 1
  %i.ca = and i32 %.1103.epil, 1
  %i.cb = or disjoint i32 %i.ca, %i.bz            ; 2 uses
  %i.cc = lshr i32 %.1103.epil, 1
  %epil.iter225.next = add i32 %epil.iter225, 1   ; 2 uses
  %epil.iter225.cmp.not = icmp eq i32 %epil.iter225.next, %xtraiter224
  br i1 %epil.iter225.cmp.not, label %.epilog-lcssa227, label %bb.i, !llvm.loop !59

.epilog-lcssa227:                                 ; preds = %bb.i, %.unr-lcssa222
  %.lcssa215 = phi i32 [ %i.bx, %.unr-lcssa222 ], [ %i.cb, %bb.i ]
  %i.cd = zext i32 %.lcssa215 to i64
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.cd
  store i16 -1, ptr %i.ce, align 2, !tbaa !36
  %i.cf = add nuw i16 %.1122158, 1                ; 2 uses
  %i.cg = zext i16 %i.cf to i32                   ; 2 uses
  %i.ch = icmp samesign ugt i32 %i.a, %i.cg
  br i1 %i.ch, label %.preheader142, label %.preheader141.preheader

.preheader141.preheader:                          ; preds = %.epilog-lcssa227, %bb.g
  %i.ci = shl nuw nsw i32 65536, %1               ; 2 uses
  %i.cj = shl i32 %.2, 16
  %i.ck = tail call i32 @llvm.umax.i32(i32 %i.b, i32 %0)
  %i.cl = trunc nuw nsw i32 %i.ck to i16
  %i.cm = add nuw nsw i32 %1, 1
  %xtraiter234 = and i32 %1, 3                    ; 3 uses
  %unroll_iter239 = and i32 %1, 12
  %lcmp.mod236.not = icmp eq i32 %xtraiter234, 0
  %lcmp.mod238 = icmp ne i32 %xtraiter234, 0
  br label %.preheader141.split.us.preheader

.preheader141.split.us.preheader:                 ; preds = %.split.us, %.preheader141.preheader
  %indvars.iv183 = phi i32 [ %i.cm, %.preheader141.preheader ], [ %indvars.iv.next184, %.split.us ] ; 2 uses
  %indvars.iv = phi i32 [ 1, %.preheader141.preheader ], [ %indvars.iv.next, %.split.us ] ; 2 uses
  %.1171 = phi i32 [ 32768, %.preheader141.preheader ], [ %i.ee, %.split.us ] ; 2 uses
  %.3170 = phi i32 [ %i.cj, %.preheader141.preheader ], [ %.5.us, %.split.us ]
  %.0116169 = phi i16 [ %i.cl, %.preheader141.preheader ], [ %.4120.us, %.split.us ]
  br label %.preheader141.split.us

.preheader141.split.us:                           ; preds = %.preheader141.split.us.preheader, %bb.o
  %.4166.us = phi i32 [ %.5.us, %bb.o ], [ %.3170, %.preheader141.split.us.preheader ] ; 5 uses
  %.1117165.us = phi i16 [ %.4120.us, %bb.o ], [ %.0116169, %.preheader141.split.us.preheader ] ; 2 uses
  %.2123164.us = phi i16 [ %i.dz, %bb.o ], [ 0, %.preheader141.split.us.preheader ] ; 3 uses
  %i.cn = zext nneg i16 %.2123164.us to i64
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !32
  %i.cq = zext i8 %i.cp to i32
  %.not133.us = icmp eq i32 %indvars.iv183, %i.cq
  br i1 %.not133.us, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.preheader141.split.us
  %.not134.us = icmp ult i32 %.4166.us, %i.ci
  br i1 %.not134.us, label %.new232, label %.loopexit

.new232:                                          ; preds = %bb.j
  %i.cr = lshr i32 %.4166.us, 16
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.new232
  %.3113.us = phi i32 [ 0, %.new232 ], [ %i.de, %bb.k ]
  %.2104.us = phi i32 [ %i.cr, %.new232 ], [ %i.df, %bb.k ] ; 5 uses
  %niter240 = phi i32 [ 0, %.new232 ], [ %niter240.next.3, %bb.k ]
  %i.cs = shl i32 %.3113.us, 3
  %i.ct = shl nsw i32 %.2104.us, 2
  %i.cu = and i32 %i.ct, 4
  %i.cv = or disjoint i32 %i.cs, %i.cu
  %i.cw = and i32 %.2104.us, 2
  %i.cx = or disjoint i32 %i.cw, %i.cv
  %i.cy = lshr i32 %.2104.us, 2
  %i.cz = and i32 %i.cy, 1
  %i.da = or disjoint i32 %i.cz, %i.cx
  %i.db = lshr i32 %.2104.us, 3
  %i.dc = shl i32 %i.da, 1
  %i.dd = and i32 %i.db, 1
  %i.de = or disjoint i32 %i.dd, %i.dc            ; 3 uses
  %i.df = lshr i32 %.2104.us, 4                   ; 2 uses
  %niter240.next.3 = add nuw nsw i32 %niter240, 4 ; 2 uses
  %niter240.ncmp.3 = icmp eq i32 %niter240.next.3, %unroll_iter239
  br i1 %niter240.ncmp.3, label %.preheader.us.preheader.unr-lcssa, label %bb.k

.preheader.us.preheader.unr-lcssa:                ; preds = %bb.k
  br i1 %lcmp.mod236.not, label %.preheader.us.preheader, label %.epil.preheader233

.epil.preheader233:                               ; preds = %.preheader.us.preheader.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod238)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader233
  %.3113.us.epil = phi i32 [ %i.de, %.epil.preheader233 ], [ %i.di, %bb.l ]
  %.2104.us.epil = phi i32 [ %i.df, %.epil.preheader233 ], [ %i.dj, %bb.l ] ; 2 uses
  %epil.iter235 = phi i32 [ 0, %.epil.preheader233 ], [ %epil.iter235.next, %bb.l ]
  %i.dg = shl i32 %.3113.us.epil, 1
  %i.dh = and i32 %.2104.us.epil, 1
  %i.di = or disjoint i32 %i.dh, %i.dg            ; 2 uses
  %i.dj = lshr i32 %.2104.us.epil, 1
  %epil.iter235.next = add i32 %epil.iter235, 1   ; 2 uses
  %epil.iter235.cmp.not = icmp eq i32 %epil.iter235.next, %xtraiter234
  br i1 %epil.iter235.cmp.not, label %.preheader.us.preheader, label %bb.l, !llvm.loop !60

.preheader.us.preheader:                          ; preds = %bb.l, %.preheader.us.preheader.unr-lcssa
  %.lcssa = phi i32 [ %i.de, %.preheader.us.preheader.unr-lcssa ], [ %i.di, %bb.l ]
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.n
  %.4109161.us = phi i32 [ %i.dy, %bb.n ], [ 0, %.preheader.us.preheader ] ; 2 uses
  %.4114160.us = phi i32 [ %spec.select.us, %bb.n ], [ %.lcssa, %.preheader.us.preheader ]
  %.2118159.us = phi i16 [ %.3119.us, %bb.n ], [ %.1117165.us, %.preheader.us.preheader ] ; 5 uses
  %i.dk = zext i32 %.4114160.us to i64
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.dk ; 2 uses
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !36 ; 2 uses
  %i.dn = icmp eq i16 %i.dm, -1
  br i1 %i.dn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.preheader.us
  %i.do = zext i16 %.2118159.us to i64
  %.idx.us = shl nuw nsw i64 %i.do, 2
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 %.idx.us ; 2 uses
  store i16 -1, ptr %i.dp, align 2, !tbaa !36
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 2
  store i16 -1, ptr %i.dq, align 2, !tbaa !36
  %i.dr = add i16 %.2118159.us, 1
  store i16 %.2118159.us, ptr %i.dl, align 2, !tbaa !36
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.preheader.us
  %i.ds = phi i16 [ %.2118159.us, %bb.m ], [ %i.dm, %.preheader.us ]
  %.3119.us = phi i16 [ %i.dr, %bb.m ], [ %.2118159.us, %.preheader.us ] ; 2 uses
  %i.dt = zext i16 %i.ds to i32
  %i.du = shl nuw nsw i32 %i.dt, 1
  %i.dv = sub nuw nsw i32 15, %.4109161.us
  %i.dw = lshr i32 %.4166.us, %i.dv
  %i.dx = and i32 %i.dw, 1
  %spec.select.us = or disjoint i32 %i.du, %i.dx  ; 2 uses
  %i.dy = add nuw nsw i32 %.4109161.us, 1         ; 2 uses
  %exitcond.not = icmp eq i32 %i.dy, %indvars.iv
  br i1 %exitcond.not, label %._crit_edge162.us, label %.preheader.us

bb.o:                                             ; preds = %._crit_edge162.us, %.preheader141.split.us
  %.4120.us = phi i16 [ %.1117165.us, %.preheader141.split.us ], [ %.3119.us, %._crit_edge162.us ] ; 2 uses
  %.5.us = phi i32 [ %.4166.us, %.preheader141.split.us ], [ %i.ed, %._crit_edge162.us ] ; 3 uses
  %i.dz = add nuw nsw i16 %.2123164.us, 1         ; 2 uses
  %i.ea = icmp samesign ult i16 %i.dz, %i.d
  br i1 %i.ea, label %.preheader141.split.us, label %.split.us

._crit_edge162.us:                                ; preds = %bb.n
  %i.eb = zext nneg i32 %spec.select.us to i64
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.eb
  store i16 %.2123164.us, ptr %i.ec, align 2, !tbaa !36
  %i.ed = add i32 %.4166.us, %.1171
  br label %bb.o

.split.us:                                        ; preds = %bb.o
  %i.ee = lshr i32 %.1171, 1
  %indvars.iv.next184 = add nuw nsw i32 %indvars.iv183, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond186.not = icmp eq i32 %indvars.iv.next184, 17
  br i1 %exitcond186.not, label %._crit_edge173, label %.preheader141.split.us.preheader

._crit_edge173:                                   ; preds = %.split.us
  %i.ef = icmp ne i32 %.5.us, %i.ci
  %i.eg = zext i1 %i.ef to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.epilog-lcssa, %bb.j, %bb.f, %._crit_edge173
  %.0124 = phi i32 [ %i.eg, %._crit_edge173 ], [ 1, %bb.j ], [ 0, %bb.f ], [ 1, %.epilog-lcssa ]
  ret i32 %.0124
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"mspack_system", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80}
!11 = !{!"p1 _ZTS13mspack_system", !9, i64 0}
!12 = !{!"p1 _ZTS11mspack_file", !9, i64 0}
!13 = !{!"p1 omnipotent char", !9, i64 0}
!14 = !{!"mszipd_stream", !11, i64 0, !12, i64 8, !12, i64 16, !6, i64 24, !9, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !5, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !5, i64 112, !5, i64 400, !5, i64 432, !5, i64 2736, !5, i64 2992}
!15 = !{!14, !13, i64 56}
!16 = !{!10, !9, i64 64}
!17 = !{!14, !11, i64 0}
!18 = !{!14, !12, i64 8}
!19 = !{!14, !12, i64 16}
!20 = !{!14, !6, i64 108}
!21 = !{!14, !5, i64 96}
!22 = !{!14, !6, i64 40}
!23 = !{!14, !6, i64 44}
!24 = !{!14, !9, i64 32}
!25 = !{!14, !13, i64 72}
!26 = !{!14, !13, i64 64}
!27 = !{!14, !6, i64 100}
!28 = !{!14, !6, i64 104}
!29 = !{!14, !6, i64 48}
!30 = !{!10, !9, i64 24}
!31 = !{!10, !9, i64 16}
!32 = !{!5, !5, i64 0}
!33 = !{!14, !6, i64 24}
!34 = !{!"llvm.loop.unroll.disable"}
!35 = !{!"short", !5, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!"llvm.loop.isvectorized", i32 1}
!38 = !{!10, !9, i64 56}
!39 = !{!14, !13, i64 88}
!40 = !{!14, !13, i64 80}
!41 = !{!10, !9, i64 48}
!42 = distinct !{null, null}
!43 = distinct !{!43, !34}
!44 = distinct !{!44, !37, !54}
!45 = distinct !{!45, !37, !54}
!46 = distinct !{!46, !34}
!47 = distinct !{!47, !37}
!48 = distinct !{null}
!49 = distinct !{!49, !37, !54}
!50 = distinct !{!50, !37, !54}
!51 = distinct !{!51, !34}
!52 = distinct !{!52, !37}
!53 = !{!10, !9, i64 72}
!54 = !{!"llvm.loop.unroll.runtime.disable"}
!55 = !{!"branch_weights", i32 4, i32 28}
!56 = distinct !{!56, !34}
!57 = distinct !{!57, !34}
!58 = distinct !{!58, !37}
!59 = distinct !{!59, !34}
!60 = distinct !{!60, !34}
end_hunk_2
