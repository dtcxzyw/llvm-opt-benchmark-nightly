Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/ir_ra?download=true
inline.NumInlined: 87
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@ir_reg_alloc:bb.a
  store ptr null, ptr %i.q, align 8, !tbaa !178
  store ptr %1, ptr %i.i, align 8, !tbaa !38
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  store i32 0, ptr %i.r, align 8, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr null, ptr %i.g, align 8, !tbaa !79
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 12 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !52
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %ir_linear_scan.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 9 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !50
  %i.w = and i32 %i.v, 33554432
  %.not231.i = icmp eq i32 %i.w, 0
  br i1 %.not231.i, label %.loopexit458.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !33   ; 2 uses
  %.not232511.i = icmp eq i32 %i.y, 0
  br i1 %.not232511.i, label %.loopexit458.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !34
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %i.ab = phi i32 [ %i.af, %bb.e ], [ %i.y, %.lr.ph.preheader.i ]
  %.0215513.pn.i = phi ptr [ %.0215513.i, %bb.e ], [ %i.aa, %.lr.ph.preheader.i ]
  %.0216512.i = phi i32 [ %i.ag, %bb.e ], [ 1, %.lr.ph.preheader.i ] ; 2 uses
  %.0215513.i = getelementptr inbounds nuw i8, ptr %.0215513.pn.i, i64 52 ; 3 uses
  %i.ac = load i32, ptr %.0215513.i, align 4, !tbaa !73
  %i.ad = and i32 %i.ac, 32
  %.not275.i = icmp eq i32 %i.ad, 0
  br i1 %.not275.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.ae = call i32 @ir_gen_dessa_moves(ptr noundef nonnull %0, i32 noundef %.0216512.i, ptr noundef nonnull @ir_fix_dessa_tmps, ptr noundef nonnull %.0215513.i) ; 0 uses
  %.pre.i = load i32, ptr %i.x, align 4, !tbaa !33
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %i.af = phi i32 [ %i.ab, %.lr.ph.i ], [ %.pre.i, %bb.d ] ; 2 uses
  %i.ag = add i32 %.0216512.i, 1                  ; 2 uses
  %.not232.i = icmp ugt i32 %i.ag, %i.af
  br i1 %.not232.i, label %.loopexit458.i, label %.lr.ph.i, !llvm.loop !188

.loopexit458.i:                                   ; preds = %bb.e, %bb.c, %bb.b
  %.not233517.i = icmp eq i32 %i.j, 0
  br i1 %.not233517.i, label %._crit_edge.i, label %.lr.ph519.i

.lr.ph519.i:                                      ; preds = %.loopexit458.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.f

bb.f:                                             ; preds = %.loopexit457.i, %.lr.ph519.i
  %.0217518.i = phi i32 [ %i.j, %.lr.ph519.i ], [ %i.an, %.loopexit457.i ]
  %i.aj = load ptr, ptr %0, align 8, !tbaa !35    ; 2 uses
  %i.ak = sext i32 %.0217518.i to i64             ; 2 uses
  %i.al = getelementptr inbounds [16 x i8], ptr %i.aj, i64 %i.ak ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 12 ; 3 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !38 ; 2 uses
  %i.ao = load i8, ptr %i.al, align 8, !tbaa !38
  %i.ap = icmp eq i8 %i.ao, 68
  br i1 %i.ap, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !38
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr @ir_type_size, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !38
  %i.av = zext i8 %i.au to i64
  %i.aw = call fastcc i32 @ir_allocate_small_spill_slot(ptr noundef nonnull %0, i64 noundef %i.av) ; 4 uses
  store i32 %i.aw, ptr %i.am, align 4, !tbaa !38
  %i.ax = load ptr, ptr %i.ah, align 8, !tbaa !41
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.ak ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !42 ; 5 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.lr.ph516.preheader.i, label %.loopexit457.i

.lr.ph516.preheader.i:                            ; preds = %bb.g
  %i.bc = load ptr, ptr %i.ai, align 8, !tbaa !66
  %i.bd = load i32, ptr %i.ay, align 4, !tbaa !67
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.be ; 3 uses
  %xtraiter = and i32 %i.ba, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph516.i.prol.loopexit, label %.lr.ph516.i.prol

.lr.ph516.i.prol:                                 ; preds = %.lr.ph516.preheader.i
  %i.bg = load ptr, ptr %0, align 8, !tbaa !35
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !40
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [16 x i8], ptr %i.bg, i64 %i.bi ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !38
  %i.bl = icmp eq i8 %i.bk, 61
  br i1 %i.bl, label %bb.h, label %.lr.ph516.i.prol.loopexit.unr-lcssa

bb.h:                                             ; preds = %.lr.ph516.i.prol
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 %i.aw, ptr %i.bm, align 4, !tbaa !38
  br label %.lr.ph516.i.prol.loopexit.unr-lcssa

.lr.ph516.i.prol.loopexit.unr-lcssa:              ; preds = %bb.h, %.lr.ph516.i.prol
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bo = add nsw i32 %i.ba, -1
  br label %.lr.ph516.i.prol.loopexit

.lr.ph516.i.prol.loopexit:                        ; preds = %.lr.ph516.i.prol.loopexit.unr-lcssa, %.lr.ph516.preheader.i
  %.0202515.i.unr = phi ptr [ %i.bf, %.lr.ph516.preheader.i ], [ %i.bn, %.lr.ph516.i.prol.loopexit.unr-lcssa ]
  %.0203514.i.unr = phi i32 [ %i.ba, %.lr.ph516.preheader.i ], [ %i.bo, %.lr.ph516.i.prol.loopexit.unr-lcssa ]
  %i.bp = icmp eq i32 %i.ba, 1
  br i1 %i.bp, label %.loopexit457.i, label %.lr.ph516.i

.lr.ph516.i:                                      ; preds = %.lr.ph516.i.prol.loopexit, %bb.k
  %.0202515.i = phi ptr [ %i.cf, %bb.k ], [ %.0202515.i.unr, %.lr.ph516.i.prol.loopexit ] ; 3 uses
  %.0203514.i = phi i32 [ %i.cg, %bb.k ], [ %.0203514.i.unr, %.lr.ph516.i.prol.loopexit ] ; 2 uses
  %i.bq = load ptr, ptr %0, align 8, !tbaa !35
  %i.br = load i32, ptr %.0202515.i, align 4, !tbaa !40
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [16 x i8], ptr %i.bq, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !38
  %i.bv = icmp eq i8 %i.bu, 61
  br i1 %i.bv, label %bb.i, label %.lr.ph516.i.1

bb.i:                                             ; preds = %.lr.ph516.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  store i32 %i.aw, ptr %i.bw, align 4, !tbaa !38
  br label %.lr.ph516.i.1

.lr.ph516.i.1:                                    ; preds = %bb.i, %.lr.ph516.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.0202515.i, i64 4
  %i.by = load ptr, ptr %0, align 8, !tbaa !35
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !40
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [16 x i8], ptr %i.by, i64 %i.ca ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 8, !tbaa !38
  %i.cd = icmp eq i8 %i.cc, 61
  br i1 %i.cd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph516.i.1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  store i32 %i.aw, ptr %i.ce, align 4, !tbaa !38
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph516.i.1
  %i.cf = getelementptr inbounds nuw i8, ptr %.0202515.i, i64 8
  %i.cg = add nsw i32 %.0203514.i, -2
  %i.ch = icmp sgt i32 %.0203514.i, 2
  br i1 %i.ch, label %.lr.ph516.i, label %.loopexit457.i, !llvm.loop !189

bb.l:                                             ; preds = %bb.f
  %i.ci = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !38
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [16 x i8], ptr %i.aj, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !38 ; 5 uses
  %i.co = icmp slt i32 %i.cn, 9
  br i1 %i.co, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cp = icmp eq i32 %i.cn, 3
  %i.cq = icmp sgt i32 %i.cn, 4
  %spec.store.select.i.i = select i1 %i.cq, i32 8, i32 %i.cn
  %narrow.i.i = select i1 %i.cp, i32 4, i32 %spec.store.select.i.i
  %.0.i.i = sext i32 %narrow.i.i to i64
  %i.cr = call fastcc i32 @ir_allocate_small_spill_slot(ptr noundef nonnull %0, i64 noundef %.0.i.i)
  br label %ir_allocate_big_spill_slot.exit.i

bb.n:                                             ; preds = %bb.l
  %i.cs = load i32, ptr %i.u, align 4, !tbaa !50
  %i.ct = or i32 %i.cs, 2048
  store i32 %i.ct, ptr %i.u, align 4, !tbaa !50
  %i.cu = load i32, ptr %i.r, align 8, !tbaa !182
  %i.cv = add nsw i32 %i.cu, 15
  %i.cw = and i32 %i.cv, -16                      ; 2 uses
  %i.cx = add nuw nsw i32 %i.cn, 7
  %i.cy = and i32 %i.cx, 2147483640
  %i.cz = add nsw i32 %i.cw, %i.cy
  store i32 %i.cz, ptr %i.r, align 8, !tbaa !182
  br label %ir_allocate_big_spill_slot.exit.i

ir_allocate_big_spill_slot.exit.i:                ; preds = %bb.n, %bb.m
  %.014.i.i = phi i32 [ %i.cr, %bb.m ], [ %i.cw, %bb.n ]
  store i32 %.014.i.i, ptr %i.am, align 4, !tbaa !38
  br label %.loopexit457.i

.loopexit457.i:                                   ; preds = %.lr.ph516.i.prol.loopexit, %bb.k, %ir_allocate_big_spill_slot.exit.i, %bb.g
  %.not233.i = icmp eq i32 %i.an, 0
  br i1 %.not233.i, label %._crit_edge.i, label %bb.f, !llvm.loop !190

._crit_edge.i:                                    ; preds = %.loopexit457.i, %.loopexit458.i
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 6 uses
  %i.db = load i32, ptr %i.da, align 8, !tbaa !48 ; 6 uses
  %.not234537.i = icmp eq i32 %i.db, 0
  %.pre740.i = load ptr, ptr %i.s, align 8, !tbaa !52 ; 5 uses
  br i1 %.not234537.i, label %._crit_edge541.i, label %.lr.ph540.i

.lr.ph540.i:                                      ; preds = %._crit_edge.i
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.de = sext i32 %i.db to i64
  br label %bb.o

bb.o:                                             ; preds = %ir_ival_spill_for_fuse_load.exit.i, %.lr.ph540.i
  %indvars.iv.i = phi i64 [ %i.de, %.lr.ph540.i ], [ %indvars.iv.next.i, %ir_ival_spill_for_fuse_load.exit.i ] ; 2 uses
  %i.df = getelementptr inbounds [8 x i8], ptr %.pre740.i, i64 %indvars.iv.i
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !79 ; 8 uses
  %.not273.i = icmp eq ptr %i.dg, null
  br i1 %.not273.i, label %ir_ival_spill_for_fuse_load.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 2
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !108
  %.fr649.i = freeze i16 %i.di                    ; 3 uses
  %i.dj = and i16 %.fr649.i, 16
  %.not274.i = icmp eq i16 %i.dj, 0
  br i1 %.not274.i, label %ir_ival_spill_for_fuse_load.exit.thread.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !97
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !98 ; 4 uses
  %.not14.i.i = icmp eq ptr %i.dn, null
  br i1 %.not14.i.i, label %ir_ival_spill_for_fuse_load.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !98
  %.not15.i.i = icmp eq ptr %i.dp, null
  br i1 %.not15.i.i, label %bb.s, label %ir_ival_spill_for_fuse_load.exit.thread.i

bb.s:                                             ; preds = %bb.r
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 3
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !94
  %i.ds = and i8 %i.dr, 1
  %.not16.i.i = icmp eq i8 %i.ds, 0
  br i1 %.not16.i.i, label %bb.t, label %ir_ival_spill_for_fuse_load.exit.thread.i

bb.t:                                             ; preds = %bb.s
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !96
  %i.dv = sdiv i32 %i.du, 4
  %i.dw = load ptr, ptr %i.dc, align 8, !tbaa !65
  %i.dx = sext i32 %i.dv to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %bb.t
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.u ], [ %i.dx, %bb.t ] ; 2 uses
  %.0.in.i.i.i = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %indvars.iv.i.i.i
  %.0.i.i.i = load i32, ptr %.0.in.i.i.i, align 4, !tbaa !40 ; 2 uses
  %.not.i.i.i = icmp eq i32 %.0.i.i.i, 0
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1
  br i1 %.not.i.i.i, label %bb.u, label %ir_block_from_live_pos.exit.i.i, !llvm.loop !191

ir_block_from_live_pos.exit.i.i:                  ; preds = %bb.u
  %i.dy = load ptr, ptr %i.dd, align 8, !tbaa !34
  %i.dz = zext i32 %.0.i.i.i to i64
  %i.ea = getelementptr inbounds nuw [52 x i8], ptr %i.dy, i64 %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !38
  %.not17.i.i = icmp eq i32 %i.ec, 0
  br i1 %.not17.i.i, label %ir_ival_spill_for_fuse_load.exit.i, label %ir_ival_spill_for_fuse_load.exit.thread.i

ir_ival_spill_for_fuse_load.exit.thread.i:        ; preds = %ir_block_from_live_pos.exit.i.i, %bb.s, %bb.r, %bb.p
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !81 ; 7 uses
  %.0..0..0..0..0.402.i = load ptr, ptr %i.g, align 8, !tbaa !79 ; 8 uses
  %i.ef = icmp eq ptr %.0..0..0..0..0.402.i, null
  br i1 %i.ef, label %ir_add_to_unhandled.exit.i, label %bb.v

bb.v:                                             ; preds = %ir_ival_spill_for_fuse_load.exit.thread.i
  %i.eg = getelementptr inbounds nuw i8, ptr %.0..0..0..0..0.402.i, i64 16
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !81 ; 2 uses
  %i.ei = icmp slt i32 %i.ee, %i.eh
  br i1 %i.ei, label %ir_add_to_unhandled.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ej = icmp eq i32 %i.ee, %i.eh
  br i1 %i.ej, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.ek = and i16 %.fr649.i, 12
  %.not.i283.i = icmp eq i16 %i.ek, 0
  br i1 %.not.i283.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.el = getelementptr inbounds nuw i8, ptr %.0..0..0..0..0.402.i, i64 2
  %i.em = load i16, ptr %i.el, align 2, !tbaa !108
  %i.en = and i16 %i.em, 12
  %.not37.i.i = icmp eq i16 %i.en, 0
  br i1 %.not37.i.i, label %ir_add_to_unhandled.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !38
  %i.eq = getelementptr inbounds nuw i8, ptr %.0..0..0..0..0.402.i, i64 4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !38
  %i.es = icmp sgt i32 %i.ep, %i.er
  br i1 %i.es, label %ir_add_to_unhandled.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w
  %i.et = getelementptr inbounds nuw i8, ptr %.0..0..0..0..0.402.i, i64 56 ; 5 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !181 ; 5 uses
  %.not3845.i.i = icmp eq ptr %i.eu, null
  br i1 %.not3845.i.i, label %ir_add_to_unhandled.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.aa
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dg, i64 4 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !81 ; 3 uses
  %i.ey = icmp slt i32 %i.ee, %i.ex
  br i1 %i.ey, label %ir_add_to_unhandled.exit.i, label %.lr.ph521.i

.lr.ph521.i:                                      ; preds = %.lr.ph.i.i
  %i.ez = and i16 %.fr649.i, 12
  %.not39.i.i = icmp eq i16 %i.ez, 0
  br i1 %.not39.i.i, label %.lr.ph521.split.us.i, label %.lr.ph521.split.i

.lr.ph521.split.us.i:                             ; preds = %.lr.ph521.i, %bb.ab
  %i.fa = phi i32 [ %i.fe, %bb.ab ], [ %i.ex, %.lr.ph521.i ]
  %i.fb = phi ptr [ %i.fk, %bb.ab ], [ %i.et, %.lr.ph521.i ]
  %.0.i282520.us.i = phi ptr [ %i.fl, %bb.ab ], [ %i.eu, %.lr.ph521.i ] ; 3 uses
  %i.fc = icmp eq i32 %i.ee, %i.fa
  br i1 %i.fc, label %bb.ac, label %bb.ad

bb.ab:                                            ; preds = %bb.ad
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !81 ; 2 uses
  %i.ff = icmp slt i32 %i.ee, %i.fe
  br i1 %i.ff, label %ir_add_to_unhandled.exit.i, label %.lr.ph521.split.us.i, !llvm.loop !192

bb.ac:                                            ; preds = %.lr.ph521.split.us.i
  %i.fg = load i32, ptr %i.ev, align 4, !tbaa !38
  %i.fh = getelementptr inbounds nuw i8, ptr %.0.i282520.us.i, i64 4
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !38
  %i.fj = icmp sgt i32 %i.fg, %i.fi
  br i1 %i.fj, label %ir_add_to_unhandled.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph521.split.us.i
  %i.fk = getelementptr inbounds nuw i8, ptr %.0.i282520.us.i, i64 56 ; 4 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !181 ; 4 uses
  %.not38.i.us.i = icmp eq ptr %i.fl, null
  br i1 %.not38.i.us.i, label %.ir_add_to_unhandled.exit.loopexit_crit_edge.i, label %bb.ab, !llvm.loop !192

bb.ae:                                            ; preds = %bb.ah
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !81 ; 2 uses
  %i.fo = icmp slt i32 %i.ee, %i.fn
  br i1 %i.fo, label %ir_add_to_unhandled.exit.i, label %.lr.ph521.split.i, !llvm.loop !192

.lr.ph521.split.i:                                ; preds = %.lr.ph521.i, %bb.ae
  %i.fp = phi i32 [ %i.fn, %bb.ae ], [ %i.ex, %.lr.ph521.i ]
  %i.fq = phi ptr [ %i.fz, %bb.ae ], [ %i.et, %.lr.ph521.i ] ; 2 uses
  %.0.i282520.i = phi ptr [ %i.ga, %bb.ae ], [ %i.eu, %.lr.ph521.i ] ; 5 uses
  %i.fr = icmp eq i32 %i.ee, %i.fp
  br i1 %i.fr, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %.lr.ph521.split.i
  %i.fs = getelementptr inbounds nuw i8, ptr %.0.i282520.i, i64 2
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !108
  %i.fu = and i16 %i.ft, 12
  %.not40.i.i = icmp eq i16 %i.fu, 0
  br i1 %.not40.i.i, label %ir_add_to_unhandled.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fv = load i32, ptr %i.ev, align 4, !tbaa !38
  %i.fw = getelementptr inbounds nuw i8, ptr %.0.i282520.i, i64 4
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !38
  %i.fy = icmp sgt i32 %i.fv, %i.fx
  br i1 %i.fy, label %ir_add_to_unhandled.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph521.split.i
  %i.fz = getelementptr inbounds nuw i8, ptr %.0.i282520.i, i64 56 ; 4 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !181 ; 4 uses
  %.not38.i.i = icmp eq ptr %i.ga, null
  br i1 %.not38.i.i, label %.ir_add_to_unhandled.exit.loopexit_crit_edge.i, label %bb.ae, !llvm.loop !192

.ir_add_to_unhandled.exit.loopexit_crit_edge.i:   ; preds = %bb.ah, %bb.ad
  %.us-phi536.i = phi ptr [ %i.fk, %bb.ad ], [ %i.fz, %bb.ah ]
  br label %ir_add_to_unhandled.exit.i, !llvm.loop !192

ir_add_to_unhandled.exit.i:                       ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ac, %bb.ab, %.ir_add_to_unhandled.exit.loopexit_crit_edge.i, %.lr.ph.i.i, %bb.aa, %bb.z, %bb.y, %bb.v, %ir_ival_spill_for_fuse_load.exit.thread.i
  %.lcssa.sink.i.i = phi ptr [ null, %ir_ival_spill_for_fuse_load.exit.thread.i ], [ %.0..0..0..0..0.402.i, %bb.z ], [ %.0..0..0..0..0.402.i, %bb.y ], [ %.0..0..0..0..0.402.i, %bb.v ], [ null, %bb.aa ], [ null, %.ir_add_to_unhandled.exit.loopexit_crit_edge.i ], [ %i.eu, %.lr.ph.i.i ], [ %.0.i282520.us.i, %bb.ac ], [ %i.fl, %bb.ab ], [ %i.ga, %bb.ae ], [ %.0.i282520.i, %bb.af ], [ %.0.i282520.i, %bb.ag ]
  %.lcssa43.sink.i.i = phi ptr [ %i.g, %ir_ival_spill_for_fuse_load.exit.thread.i ], [ %i.g, %bb.z ], [ %i.g, %bb.y ], [ %i.g, %bb.v ], [ %i.et, %bb.aa ], [ %.us-phi536.i, %.ir_add_to_unhandled.exit.loopexit_crit_edge.i ], [ %i.et, %.lr.ph.i.i ], [ %i.fb, %bb.ac ], [ %i.fk, %bb.ab ], [ %i.fz, %bb.ae ], [ %i.fq, %bb.af ], [ %i.fq, %bb.ag ]
  %i.gb = getelementptr inbounds nuw i8, ptr %i.dg, i64 56
  store ptr %.lcssa.sink.i.i, ptr %i.gb, align 8, !tbaa !181
  store ptr %i.dg, ptr %.lcssa43.sink.i.i, align 8, !tbaa !79
  br label %ir_ival_spill_for_fuse_load.exit.i

ir_ival_spill_for_fuse_load.exit.i:               ; preds = %ir_add_to_unhandled.exit.i, %ir_block_from_live_pos.exit.i.i, %bb.q, %bb.o
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %.not234.i = icmp eq i64 %indvars.iv.next.i, 0
  br i1 %.not234.i, label %._crit_edge541.i, label %bb.o, !llvm.loop !193

._crit_edge541.i:                                 ; preds = %ir_ival_spill_for_fuse_load.exit.i, %._crit_edge.i
  %i.gc = load ptr, ptr %.pre740.i, align 8, !tbaa !79 ; 4 uses
  %.not235.i = icmp eq ptr %i.gc, null
  br i1 %.not235.i, label %ir_merge_to_unhandled.exit.i, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge541.i
  %.0..0..0..0..0.403.i = load ptr, ptr %i.g, align 8, !tbaa !79 ; 2 uses
  %i.gd = icmp eq ptr %.0..0..0..0..0.403.i, null
  br i1 %i.gd, label %bb.aj, label %.preheader.i.i

bb.aj:                                            ; preds = %bb.ai
  store ptr %i.gc, ptr %i.g, align 8, !tbaa !79
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %bb.aj
  %.01833.i.i = phi ptr [ %i.gc, %bb.aj ], [ %i.gf, %bb.ak ] ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.01833.i.i, i64 48
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !112 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.01833.i.i, i64 56
  store ptr %i.gf, ptr %i.gg, align 8, !tbaa !181
  %.not23.i.i = icmp eq ptr %i.gf, null
  br i1 %.not23.i.i, label %ir_merge_to_unhandled.exit.i, label %bb.ak, !llvm.loop !194

.preheaderthread-pre-split.i.i:                   ; preds = %.critedge.i285.i
  %.pr.i.i = load ptr, ptr %i.gt, align 8, !tbaa !79
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ai, %.preheaderthread-pre-split.i.i
  %i.gh = phi ptr [ %.pr.i.i, %.preheaderthread-pre-split.i.i ], [ %.0..0..0..0..0.403.i, %bb.ai ] ; 4 uses
  %.032.i.i = phi ptr [ %i.gt, %.preheaderthread-pre-split.i.i ], [ %i.g, %bb.ai ] ; 2 uses
  %.11931.i.i = phi ptr [ %i.gv, %.preheaderthread-pre-split.i.i ], [ %i.gc, %bb.ai ] ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.11931.i.i, i64 16
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !81 ; 2 uses
  %.not2125.i.i = icmp eq ptr %i.gh, null
  br i1 %.not2125.i.i, label %.critedge.i285.i, label %.lr.ph.i284.preheader.i

.lr.ph.i284.preheader.i:                          ; preds = %.preheader.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !81
  %.not22.i542.i = icmp slt i32 %i.gj, %i.gl
  br i1 %.not22.i542.i, label %.critedge.i285.i, label %.lr.ph543.i

.lr.ph.i284.i:                                    ; preds = %.lr.ph543.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !81
  %.not22.i.i = icmp slt i32 %i.gj, %i.gn
  br i1 %.not22.i.i, label %.critedge.i285.i.loopexit, label %.lr.ph543.i, !llvm.loop !195

.lr.ph543.i:                                      ; preds = %.lr.ph.i284.preheader.i, %.lr.ph.i284.i
  %i.go = phi ptr [ %i.gq, %.lr.ph.i284.i ], [ %i.gh, %.lr.ph.i284.preheader.i ] ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 56
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !79 ; 4 uses
  %.not21.i.i = icmp eq ptr %i.gq, null
  br i1 %.not21.i.i, label %..critedge.i285.loopexit_crit_edge.i, label %.lr.ph.i284.i, !llvm.loop !195

..critedge.i285.loopexit_crit_edge.i:             ; preds = %.lr.ph543.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 56
  br label %.critedge.i285.i, !llvm.loop !195

.critedge.i285.i.loopexit:                        ; preds = %.lr.ph.i284.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 56
  br label %.critedge.i285.i

.critedge.i285.i:                                 ; preds = %.critedge.i285.i.loopexit, %..critedge.i285.loopexit_crit_edge.i, %.lr.ph.i284.preheader.i, %.preheader.i.i
  %.1.lcssa.i.i = phi ptr [ %.032.i.i, %.preheader.i.i ], [ %.032.i.i, %.lr.ph.i284.preheader.i ], [ %i.gr, %..critedge.i285.loopexit_crit_edge.i ], [ %i.gs, %.critedge.i285.i.loopexit ]
  %.lcssa.i.i = phi ptr [ null, %.preheader.i.i ], [ %i.gh, %.lr.ph.i284.preheader.i ], [ null, %..critedge.i285.loopexit_crit_edge.i ], [ %i.gq, %.critedge.i285.i.loopexit ]
  %i.gt = getelementptr inbounds nuw i8, ptr %.11931.i.i, i64 56 ; 3 uses
  store ptr %.lcssa.i.i, ptr %i.gt, align 8, !tbaa !181
  store ptr %.11931.i.i, ptr %.1.lcssa.i.i, align 8, !tbaa !79
  %i.gu = getelementptr inbounds nuw i8, ptr %.11931.i.i, i64 48
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !112 ; 2 uses
  %.not.i286.i = icmp eq ptr %i.gv, null
  br i1 %.not.i286.i, label %ir_merge_to_unhandled.exit.i, label %.preheaderthread-pre-split.i.i, !llvm.loop !196

ir_merge_to_unhandled.exit.i:                     ; preds = %.critedge.i285.i, %bb.ak, %._crit_edge541.i
  %2 = sext i32 %i.db to i64                      ; 3 uses
  %i.gw = add i32 %i.db, 35
  %i.gx = call i32 @llvm.smax.i32(i32 %i.db, i32 %i.gw)
  %smax = sext i32 %i.gx to i64                   ; 2 uses
  %3 = add nsw i64 %smax, %2
  %4 = and i64 %3, 1
  %lcmp.mod697.not.not = icmp eq i64 %4, 0
  br i1 %lcmp.mod697.not.not, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %ir_merge_to_unhandled.exit.i
  %indvars.iv.next727.i.prol = add nsw i64 %2, 1  ; 3 uses
  %i.gy = getelementptr inbounds [8 x i8], ptr %.pre740.i, i64 %indvars.iv.next727.i.prol
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !79 ; 6 uses
  %.not272.i.prol = icmp eq ptr %i.gz, null
  br i1 %.not272.i.prol, label %.prol.loopexit, label %bb.al

bb.al:                                            ; preds = %.prol.preheader
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 32
  store ptr %i.ha, ptr %i.hb, align 8, !tbaa !197
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 56
  store ptr null, ptr %i.hc, align 8, !tbaa !181
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.al, %ir_merge_to_unhandled.exit.i
  %.1416.i.lcssa.unr = phi ptr [ poison, %ir_merge_to_unhandled.exit.i ], [ null, %.prol.preheader ], [ %i.gz, %bb.al ]
  %indvars.iv726.i.unr = phi i64 [ %2, %ir_merge_to_unhandled.exit.i ], [ %indvars.iv.next727.i.prol, %bb.al ], [ %indvars.iv.next727.i.prol, %.prol.preheader ]
  %.0415548.i.unr = phi ptr [ null, %ir_merge_to_unhandled.exit.i ], [ null, %.prol.preheader ], [ %i.gz, %bb.al ]
  %.not = icmp slt i32 %i.db, 2147483613
  br i1 %.not, label %ir_merge_to_unhandled.exit.i.new, label %.unr-lcssa

ir_merge_to_unhandled.exit.i.new:                 ; preds = %.prol.loopexit, %bb.ap
  %indvars.iv726.i = phi i64 [ %indvars.iv.next727.i.1, %bb.ap ], [ %indvars.iv726.i.unr, %.prol.loopexit ] ; 2 uses
  %.0415548.i = phi ptr [ %.1416.i.1, %bb.ap ], [ %.0415548.i.unr, %.prol.loopexit ] ; 2 uses
  %indvars.iv.next727.i = add nsw i64 %indvars.iv726.i, 1 ; 2 uses
  %i.hd = getelementptr inbounds [8 x i8], ptr %.pre740.i, i64 %indvars.iv.next727.i
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !79 ; 5 uses
  %.not272.i = icmp eq ptr %i.he, null
  br i1 %.not272.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %ir_merge_to_unhandled.exit.i.new
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 32
  store ptr %i.hf, ptr %i.hg, align 8, !tbaa !197
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 56
  store ptr %.0415548.i, ptr %i.hh, align 8, !tbaa !181
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %ir_merge_to_unhandled.exit.i.new
  %.1416.i = phi ptr [ %.0415548.i, %ir_merge_to_unhandled.exit.i.new ], [ %i.he, %bb.am ] ; 2 uses
  %indvars.iv.next727.i.1 = add nsw i64 %indvars.iv726.i, 2 ; 2 uses
  %i.hi = getelementptr inbounds [8 x i8], ptr %.pre740.i, i64 %indvars.iv.next727.i.1
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !79 ; 5 uses
  %.not272.i.1 = icmp eq ptr %i.hj, null
  br i1 %.not272.i.1, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 32
  store ptr %i.hk, ptr %i.hl, align 8, !tbaa !197
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 56
  store ptr %.1416.i, ptr %i.hm, align 8, !tbaa !181
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.1416.i.1 = phi ptr [ %.1416.i, %bb.an ], [ %i.hj, %bb.ao ] ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next727.i, %smax
  br i1 %exitcond.not.1, label %.unr-lcssa, label %ir_merge_to_unhandled.exit.i.new, !llvm.loop !198

.unr-lcssa:                                       ; preds = %bb.ap, %.prol.loopexit
  %.1416.i.lcssa = phi ptr [ %.1416.i.lcssa.unr, %.prol.loopexit ], [ %.1416.i.1, %bb.ap ]
  %i.hn = load i32, ptr %i.u, align 4, !tbaa !50
  %i.ho = and i32 %i.hn, -100663297
  store i32 %i.ho, ptr %i.u, align 4, !tbaa !50
  %.0..0..0..0..0.398601.i = load ptr, ptr %i.g, align 8, !tbaa !79 ; 2 uses
  %.not237602.i = icmp eq ptr %.0..0..0..0..0.398601.i, null
  br i1 %.not237602.i, label %bb.mr, label %.lr.ph608.i

.lr.ph608.i:                                      ; preds = %.unr-lcssa
  %i.hp = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.hq = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.hr = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.hs = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.ht = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.hu = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.hv = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ib = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ic = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.id = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ie = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.if = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %scevgep.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.ig = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.ih = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.ii = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.ij = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.ik = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.il = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.im = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.in = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  br label %bb.aq

bb.aq:                                            ; preds = %bb.lm, %.lr.ph608.i
  %.0735.i = phi ptr [ null, %.lr.ph608.i ], [ %.17.i, %bb.lm ] ; 3 uses
  %.0.398604.i = phi ptr [ %.0..0..0..0..0.398601.i, %.lr.ph608.i ], [ %.0..0..0..0..0.398.i, %bb.lm ] ; 32 uses
  %.2417603.i = phi ptr [ %.1416.i.lcssa, %.lr.ph608.i ], [ %.6421.lcssa.i, %bb.lm ] ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.0.398604.i, i64 16 ; 15 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.0.398604.i, i64 32
  store ptr %i.io, ptr %i.ip, align 8, !tbaa !197
  %i.iq = getelementptr inbounds nuw i8, ptr %.0.398604.i, i64 56 ; 4 uses
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !181 ; 17 uses
  store ptr %i.ir, ptr %i.g, align 8, !tbaa !79
  %i.is = load i32, ptr %i.io, align 8, !tbaa !81 ; 8 uses
  %.not255550.i = icmp eq ptr %.0735.i, null
  br i1 %.not255550.i, label %.preheader455.i, label %.lr.ph555.i

.preheader455.i:                                  ; preds = %.cont732.i, %bb.aq
  %.1736.i = phi ptr [ null, %bb.aq ], [ %.5737.i, %.cont732.i ] ; 2 uses
  %.3418.lcssa.i = phi ptr [ %.2417603.i, %bb.aq ], [ %.5420.i, %.cont732.i ] ; 3 uses
  %.not256560.i = icmp eq ptr %.3418.lcssa.i, null
  br i1 %.not256560.i, label %._crit_edge566.i, label %.lr.ph565.i

.lr.ph555.i:                                      ; preds = %bb.aq, %.cont732.i
  %.2.i = phi ptr [ %.5737.i, %.cont732.i ], [ %.0735.i, %bb.aq ] ; 2 uses
  %.0206553.i = phi ptr [ %.2208.i, %.cont732.i ], [ null, %bb.aq ] ; 6 uses
  %.0209552.i = phi ptr [ %.1210.i, %.cont732.i ], [ %.0735.i, %bb.aq ] ; 6 uses
  %.3418551.i = phi ptr [ %.5420.i, %.cont732.i ], [ %.2417603.i, %bb.aq ] ; 5 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.0209552.i, i64 32 ; 2 uses
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !197 ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 4
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !119
  %.not265.i = icmp sgt i32 %i.iw, %i.is
  br i1 %.not265.i, label %bb.at, label %.preheader448.i

.preheader448.i:                                  ; preds = %.lr.ph555.i, %bb.ar
  %.0199.i = phi ptr [ %i.iy, %bb.ar ], [ %i.iu, %.lr.ph555.i ]
  %i.ix = getelementptr inbounds nuw i8, ptr %.0199.i, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !117 ; 5 uses
  %.not266.i = icmp eq ptr %i.iy, null
  br i1 %.not266.i, label %.critedge276.i, label %bb.ar

bb.ar:                                            ; preds = %.preheader448.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 4
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !119
  %.not267.i = icmp sgt i32 %i.ja, %i.is
  br i1 %.not267.i, label %.critedge.i, label %.preheader448.i, !llvm.loop !199

.critedge276.i:                                   ; preds = %.preheader448.i
  %i.jb = getelementptr inbounds nuw i8, ptr %.0209552.i, i64 56
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !181 ; 4 uses
  %.not268.i = icmp eq ptr %.0206553.i, null
  br i1 %.not268.i, label %.cont732.i, label %bb.as, !llvm.loop !200

bb.as:                                            ; preds = %.critedge276.i
  %i.jd = getelementptr inbounds nuw i8, ptr %.0206553.i, i64 56
  store ptr %i.jc, ptr %i.jd, align 8, !tbaa !181
  br label %.cont732.i, !llvm.loop !200

.critedge.i:                                      ; preds = %bb.ar
  store ptr %i.iy, ptr %i.it, align 8, !tbaa !197
  br label %bb.at

bb.at:                                            ; preds = %.critedge.i, %.lr.ph555.i
  %.1200.i = phi ptr [ %i.iy, %.critedge.i ], [ %i.iu, %.lr.ph555.i ]
  %i.je = load i32, ptr %.1200.i, align 8, !tbaa !118
  %i.jf = icmp slt i32 %i.is, %i.je
  br i1 %i.jf, label %bb.au, label %.else733.i

bb.au:                                            ; preds = %bb.at
  %.not269.i = icmp eq ptr %.0206553.i, null
  %i.jg = getelementptr inbounds nuw i8, ptr %.0209552.i, i64 56 ; 3 uses
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !181 ; 3 uses
  br i1 %.not269.i, label %.thread934.i, label %bb.av

.thread934.i:                                     ; preds = %bb.au
  store ptr %.3418551.i, ptr %i.jg, align 8, !tbaa !181
  br label %.cont732.i

bb.av:                                            ; preds = %bb.au
  %i.ji = getelementptr inbounds nuw i8, ptr %.0206553.i, i64 56
  store ptr %i.jh, ptr %i.ji, align 8, !tbaa !181
  store ptr %.3418551.i, ptr %i.jg, align 8, !tbaa !181
  br label %.else733.i

.else733.i:                                       ; preds = %bb.av, %bb.at
  %.1207932.i = phi ptr [ %.0206553.i, %bb.av ], [ %.0209552.i, %bb.at ] ; 2 uses
  %.4419930.i = phi ptr [ %.0209552.i, %bb.av ], [ %.3418551.i, %bb.at ]
  %i.jj = getelementptr inbounds nuw i8, ptr %.1207932.i, i64 56
  %.else.val734.i = load ptr, ptr %i.jj, align 8, !tbaa !79
  br label %.cont732.i

.cont732.i:                                       ; preds = %.else733.i, %.thread934.i, %bb.as, %.critedge276.i
  %.5737.i = phi ptr [ %i.jc, %.critedge276.i ], [ %.2.i, %bb.as ], [ %i.jh, %.thread934.i ], [ %.2.i, %.else733.i ] ; 2 uses
  %.5420.i = phi ptr [ %.3418551.i, %.critedge276.i ], [ %.3418551.i, %bb.as ], [ %.0209552.i, %.thread934.i ], [ %.4419930.i, %.else733.i ] ; 2 uses
  %.1210.i = phi ptr [ %i.jc, %.critedge276.i ], [ %i.jc, %bb.as ], [ %i.jh, %.thread934.i ], [ %.else.val734.i, %.else733.i ] ; 2 uses
  %.2208.i = phi ptr [ null, %.critedge276.i ], [ %.0206553.i, %bb.as ], [ null, %.thread934.i ], [ %.1207932.i, %.else733.i ]
  %.not255.i = icmp eq ptr %.1210.i, null
  br i1 %.not255.i, label %.preheader455.i, label %.lr.ph555.i

.lr.ph565.i:                                      ; preds = %.preheader455.i, %.cont.i
  %.3564.i = phi ptr [ %.5.i, %.cont.i ], [ null, %.preheader455.i ] ; 6 uses
  %.2211563.i = phi ptr [ %.3212.i, %.cont.i ], [ %.3418.lcssa.i, %.preheader455.i ] ; 6 uses
  %.6421562.i = phi ptr [ %.9.i, %.cont.i ], [ %.3418.lcssa.i, %.preheader455.i ] ; 2 uses
  %.2211559561.i = phi ptr [ %.2211557.i, %.cont.i ], [ %.1736.i, %.preheader455.i ] ; 5 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.2211563.i, i64 32 ; 2 uses
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !197 ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 4
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !119
  %.not257.i = icmp sgt i32 %i.jn, %i.is
  br i1 %.not257.i, label %bb.ay, label %.preheader447.i

.preheader447.i:                                  ; preds = %.lr.ph565.i, %bb.aw
  %.0197.i = phi ptr [ %i.jp, %bb.aw ], [ %i.jl, %.lr.ph565.i ]
  %i.jo = getelementptr inbounds nuw i8, ptr %.0197.i, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !117 ; 5 uses
  %.not258.i = icmp eq ptr %i.jp, null
  br i1 %.not258.i, label %.critedge277.i, label %bb.aw

bb.aw:                                            ; preds = %.preheader447.i
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 4
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !119
  %.not259.i = icmp sgt i32 %i.jr, %i.is
  br i1 %.not259.i, label %.critedge2.i, label %.preheader447.i, !llvm.loop !201

.critedge277.i:                                   ; preds = %.preheader447.i
  %i.js = getelementptr inbounds nuw i8, ptr %.2211563.i, i64 56
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !181 ; 4 uses
  %.not260.i = icmp eq ptr %.3564.i, null
  br i1 %.not260.i, label %.cont.i, label %bb.ax, !llvm.loop !202

bb.ax:                                            ; preds = %.critedge277.i
  %i.ju = getelementptr inbounds nuw i8, ptr %.3564.i, i64 56
  store ptr %i.jt, ptr %i.ju, align 8, !tbaa !181
  br label %.cont.i, !llvm.loop !202

.critedge2.i:                                     ; preds = %bb.aw
  store ptr %i.jp, ptr %i.jk, align 8, !tbaa !197
  br label %bb.ay

bb.ay:                                            ; preds = %.critedge2.i, %.lr.ph565.i
  %.1198.i = phi ptr [ %i.jp, %.critedge2.i ], [ %i.jl, %.lr.ph565.i ]
  %i.jv = load i32, ptr %.1198.i, align 8, !tbaa !118
  %.not261.i = icmp slt i32 %i.is, %i.jv
  br i1 %.not261.i, label %.else.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.not262.i = icmp eq ptr %.3564.i, null
  %i.jw = getelementptr inbounds nuw i8, ptr %.2211563.i, i64 56 ; 3 uses
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !181 ; 3 uses
  br i1 %.not262.i, label %.thread431.i, label %bb.ba

.thread431.i:                                     ; preds = %bb.az
  store ptr %.2211559561.i, ptr %i.jw, align 8, !tbaa !181
  br label %.cont.i

bb.ba:                                            ; preds = %bb.az
  %i.jy = getelementptr inbounds nuw i8, ptr %.3564.i, i64 56
  store ptr %i.jx, ptr %i.jy, align 8, !tbaa !181
  store ptr %.2211559561.i, ptr %i.jw, align 8, !tbaa !181
  br label %.else.i

.else.i:                                          ; preds = %bb.ba, %bb.ay
end_hunk_0
