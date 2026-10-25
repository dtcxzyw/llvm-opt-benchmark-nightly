Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aacsbr_fixed?download=true
inline.NumInlined: 254
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 27
begin_hunk_0_@ff_aac_sbr_apply_fixed:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.v, i8 -1, i64 6, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 209076
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 209076
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !44
  %i.x = icmp eq i32 %.pre, 0
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 209076 ; 4 uses
  br i1 %i.x, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 209080 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !45
  %.not161 = icmp eq i32 %i.aa, 0
  br i1 %.not161, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !57
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ac, i32 noundef 16, ptr noundef nonnull @.str.2) #12
  store i32 0, ptr %i.y, align 4, !tbaa !44
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 209088
  store i32 0, ptr %i.ad, align 16, !tbaa !24
  store i32 0, ptr %i.z, align 8, !tbaa !45
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 209160
  store i32 32, ptr %i.ae, align 8, !tbaa !14
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 209168
  store i32 0, ptr %i.af, align 16, !tbaa !14
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 330440
  store i32 -1, ptr %i.ag, align 8, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 223768
  store i32 -1, ptr %i.ah, align 8, !tbaa !14
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 209100
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.ai, i8 -1, i64 6, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d, %bb.c, %bb.b
  %i.aj = phi ptr [ %i.y, %bb.d ], [ %i.y, %bb.c ], [ %i.y, %bb.b ], [ %i.w, %.thread ] ; 2 uses
  %.not163 = phi i1 [ true, %bb.d ], [ false, %bb.c ], [ true, %bb.b ], [ true, %.thread ]
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 209172 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !41
  %.not162 = icmp eq i32 %i.al, 0
  br i1 %.not162, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 209156
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 209160
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !14
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !14
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 209164
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 209168
  %i.ar = load i32, ptr %i.aq, align 16, !tbaa !14
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !14
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i32 0, ptr %i.ak, align 4, !tbaa !41
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br i1 %.not163, label %bb.y, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.g, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 209132
  %i.at = load i32, ptr %i.as, align 4, !tbaa !68
  %.not.i = icmp eq i32 %i.at, 0
  br i1 %.not.i, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 209284
  %i.av = load i32, ptr %i.au, align 4, !tbaa !71
  %.not138.i = icmp ne i32 %i.av, 0               ; 2 uses
  %i.aw = select i1 %.not138.i, i32 12, i32 24
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 209192 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !69 ; 2 uses
  %.not139242.i = icmp slt i32 %i.ay, 1
  br i1 %.not139242.i, label %.preheader227.i, label %.preheader229.lr.ph.i

.preheader229.lr.ph.i:                            ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 556640 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 209196
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 311792
  %i.bc = zext i1 %.not138.i to i32               ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 418464
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 312224
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 418896
  br label %.preheader229.i

.preheader229.i:                                  ; preds = %._crit_edge.i, %.preheader229.lr.ph.i
  %i.bg = phi i32 [ %i.ay, %.preheader229.lr.ph.i ], [ %i.et, %._crit_edge.i ]
  %indvars.iv275.i = phi i64 [ 1, %.preheader229.lr.ph.i ], [ %indvars.iv.next276.i, %._crit_edge.i ] ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 %indvars.iv275.i ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !13
  %i.bj = zext i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !14
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader229.i
  %i.bn = getelementptr inbounds nuw [48 x i8], ptr %i.bb, i64 %indvars.iv275.i
  %i.bo = getelementptr inbounds nuw [48 x i8], ptr %i.bd, i64 %indvars.iv275.i
  %i.bp = getelementptr inbounds nuw [384 x i8], ptr %i.be, i64 %indvars.iv275.i
  %i.bq = getelementptr inbounds nuw [384 x i8], ptr %i.bf, i64 %indvars.iv275.i
  br label %bb.l

.preheader227.i:                                  ; preds = %._crit_edge.i, %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 209208
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !72 ; 2 uses
  %.not140247.i = icmp slt i32 %i.bs, 1
  br i1 %.not140247.i, label %sbr_dequant.exit, label %.preheader226.lr.ph.i

.preheader226.lr.ph.i:                            ; preds = %.preheader227.i
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 556648 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 315680
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 422352
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 315696
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 422368
  %i.by = load i32, ptr %i.bt, align 8, !tbaa !63 ; 2 uses
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %.preheader226.preheader.i, label %sbr_dequant.exit

.preheader226.preheader.i:                        ; preds = %.preheader226.lr.ph.i
  %i.ca = add nuw i32 %i.bs, 1
  %wide.trip.count.i = zext i32 %i.ca to i64
  br label %.preheader226.i

bb.l:                                             ; preds = %av_div_sf.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %av_div_sf.exit.i ] ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv.i
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !13
  %i.cd = zext i8 %i.cc to i32
  %i.ce = shl nuw nsw i32 %i.cd, %i.bc            ; 3 uses
  %i.cf = add nuw nsw i32 %i.ce, 14
  %i.cg = and i32 %i.ce, 1
  %.not141.i = icmp eq i32 %i.cg, 0
  %..i = select i1 %.not141.i, i64 576460752303423488, i64 815238614089728000
  %i.ch = lshr i32 %i.cf, 1
  %i.ci = add nuw nsw i32 %i.ch, 1
  %i.cj = icmp samesign ugt i32 %i.ce, 117
  br i1 %i.cj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.32) #12
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.036.1.i = phi i64 [ 576460752303423488, %bb.m ], [ %..i, %bb.l ]
  %.sroa.637.0.i = phi i32 [ 1, %bb.m ], [ %i.ci, %bb.l ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bo, i64 %indvars.iv.i
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !13
  %i.cm = zext i8 %i.cl to i32
  %i.cn = sub nsw i32 %i.aw, %i.cm
  %i.co = shl nsw i32 %i.cn, %i.bc                ; 2 uses
  %i.cp = and i32 %i.co, 1
  %.not142.i = icmp eq i32 %i.cp, 0
  %.143.i = select i1 %.not142.i, i64 536870912, i64 759250125 ; 2 uses
  %i.cq = ashr i32 %i.co, 1                       ; 4 uses
  %i.cr = add nsw i32 %i.cq, 1                    ; 2 uses
  %.sroa.629.0.insert.ext.i = zext i32 %i.cr to i64
  %.sroa.629.0.insert.shift.i = shl nuw i64 %.sroa.629.0.insert.ext.i, 32 ; 2 uses
  %.sroa.09.0.extract.trunc.i.i = trunc nuw nsw i64 %.143.i to i32 ; 2 uses
  %i.cs = sub nsw i32 0, %i.cq                    ; 2 uses
  %i.ct = icmp sgt i32 %i.cq, 0
  br i1 %i.ct, label %av_normalize_sf.exit.i.i, label %bb.o

av_normalize_sf.exit.i.i:                         ; preds = %bb.n
  %i.cu = lshr i32 536870912, %i.cq
  %i.cv = add nuw nsw i32 %i.cu, %.sroa.09.0.extract.trunc.i.i
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = or disjoint i64 %.sroa.629.0.insert.shift.i, %i.cw
  br label %av_add_sf.exit.i

bb.o:                                             ; preds = %bb.n
  %i.cy = icmp samesign ult i32 %i.cs, 32
  br i1 %i.cy, label %.preheader.i30.i.i, label %av_add_sf.exit.i

.preheader.i30.i.i:                               ; preds = %bb.o
  %i.cz = lshr i32 %.sroa.09.0.extract.trunc.i.i, %i.cs ; 2 uses
  %i.da = add nuw nsw i32 %i.cz, 536870912
  %i.db = icmp samesign ugt i32 %i.cz, 536870911  ; 2 uses
  %i.dc = zext i1 %i.db to i32
  %.sroa.0.0.i24.i.i = lshr i32 %i.da, %i.dc      ; 2 uses
  %.sroa.8.0.extract.trunc.i31.i.i = select i1 %i.db, i64 2, i64 1
  %i.dd = icmp samesign ult i32 %.sroa.0.0.i24.i.i, 536870912 ; 2 uses
  %i.de = sext i1 %i.dd to i64
  %.sroa.8.0.lcssa.i33.i.i = add nsw i64 %.sroa.8.0.extract.trunc.i31.i.i, %i.de ; 2 uses
  %i.df = zext i1 %i.dd to i32
  %.sroa.0.0.lcssa.i34.i.i = shl nuw nsw i32 %.sroa.0.0.i24.i.i, %i.df
  %i.dg = shl nuw nsw i64 %.sroa.8.0.lcssa.i33.i.i, 32
  %i.dh = zext nneg i32 %.sroa.0.0.lcssa.i34.i.i to i64
  %i.di = or disjoint i64 %i.dg, %i.dh
  %i.dj = trunc nuw nsw i64 %.sroa.8.0.lcssa.i33.i.i to i32
  br label %av_add_sf.exit.i

av_add_sf.exit.i:                                 ; preds = %.preheader.i30.i.i, %bb.o, %av_normalize_sf.exit.i.i
  %.sroa.016.0.i.i = phi i64 [ 536870912, %bb.o ], [ %i.cx, %av_normalize_sf.exit.i.i ], [ %i.di, %.preheader.i30.i.i ]
  %.sroa.5.0.i.i = phi i32 [ 1, %bb.o ], [ %i.cr, %av_normalize_sf.exit.i.i ], [ %i.dj, %.preheader.i30.i.i ]
  %i.dk = shl i64 %.sroa.016.0.i.i, 32
  %i.dl = ashr exact i64 %i.dk, 32
  %i.dm = sdiv i64 %.sroa.036.1.i, %i.dl          ; 3 uses
  %i.dn = sub nsw i32 %.sroa.637.0.i, %.sroa.5.0.i.i ; 2 uses
  %i.do = add nsw i64 %i.dm, 2147483648
  %.not18.i.i = icmp ult i64 %i.do, 4294967296
  br i1 %.not18.i.i, label %av_div_sf.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %av_add_sf.exit.i, %.lr.ph.i.i
  %.020.i.i = phi i64 [ %i.dp, %.lr.ph.i.i ], [ %i.dm, %av_add_sf.exit.i ]
  %.sroa.9.019.i.i = phi i32 [ %i.dq, %.lr.ph.i.i ], [ %i.dn, %av_add_sf.exit.i ]
  %i.dp = sdiv i64 %.020.i.i, 2                   ; 3 uses
  %i.dq = add nsw i32 %.sroa.9.019.i.i, -1        ; 2 uses
  %i.dr = add nsw i64 %i.dp, 2147483648
  %.not.i.i = icmp ult i64 %i.dr, 4294967296
  br i1 %.not.i.i, label %av_div_sf.exit.i, label %.lr.ph.i.i, !llvm.loop !1

av_div_sf.exit.i:                                 ; preds = %.lr.ph.i.i, %av_add_sf.exit.i
  %.sroa.9.0.lcssa.i.i = phi i32 [ %i.dn, %av_add_sf.exit.i ], [ %i.dq, %.lr.ph.i.i ]
  %.0.lcssa.i.i = phi i64 [ %i.dm, %av_add_sf.exit.i ], [ %i.dp, %.lr.ph.i.i ]
  %.sroa.9.0.insert.ext.i.i = zext i32 %.sroa.9.0.lcssa.i.i to i64 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i = trunc nsw i64 %.0.lcssa.i.i to i32 ; 2 uses
  %i.ds = add i32 %.sroa.0.0.extract.trunc.i.i.i, 1073741824
  %i.dt = icmp slt i32 %i.ds, 1                   ; 2 uses
  %i.du = add nuw nsw i64 %.sroa.9.0.insert.ext.i.i, 1
  %i.dv = and i64 %i.du, 4294967295
  %.sroa.5.0.i.i145.i = select i1 %i.dt, i64 %i.dv, i64 %.sroa.9.0.insert.ext.i.i ; 2 uses
  %i.dw = zext i1 %i.dt to i32
  %.sroa.0.0.i.i146.i = ashr i32 %.sroa.0.0.extract.trunc.i.i.i, %i.dw ; 2 uses
  %.sroa.2.0.insert.shift.i.i.i = shl nuw i64 %.sroa.5.0.i.i145.i, 32
  %.sroa.02.0.insert.ext.i.i.i = zext i32 %.sroa.0.0.i.i146.i to i64
  %.sroa.02.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.02.0.insert.ext.i.i.i
  %.sroa.9.0.extract.trunc14.i.i = trunc nuw i64 %.sroa.5.0.i.i145.i to i32
  %i.dx = icmp eq i32 %.sroa.0.0.i.i146.i, 0
  %i.dy = icmp slt i32 %.sroa.9.0.extract.trunc14.i.i, -149
  %or.cond.i.i = select i1 %i.dx, i1 true, i1 %i.dy
  %..i.i = select i1 %or.cond.i.i, i64 -639950127104, i64 %.sroa.02.0.insert.insert.i.i.i ; 3 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.i
  store i64 %..i.i, ptr %i.dz, align 8, !tbaa !14
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.i
  %i.eb = shl i64 %..i.i, 32
  %i.ec = ashr exact i64 %i.eb, 32
  %i.ed = mul nsw i64 %i.ec, %.143.i
  %i.ee = lshr i64 %i.ed, 29
  %i.ef = add i64 %.sroa.629.0.insert.shift.i, -4294967296
  %.sroa.0.0.insert.insert.i.i = add i64 %i.ef, %..i.i
  %.sroa.0.0.extract.trunc.i.i147.i = trunc i64 %i.ee to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i.i.i = lshr i64 %.sroa.0.0.insert.insert.i.i, 32 ; 2 uses
  %i.eg = add i32 %.sroa.0.0.extract.trunc.i.i147.i, 1073741824
  %i.eh = icmp slt i32 %i.eg, 1                   ; 2 uses
  %i.ei = add nuw nsw i64 %.sroa.5.0.extract.shift.i.i.i, 1
  %i.ej = and i64 %i.ei, 4294967295
  %.sroa.5.0.i.i148.i = select i1 %i.eh, i64 %i.ej, i64 %.sroa.5.0.extract.shift.i.i.i ; 2 uses
  %i.ek = zext i1 %i.eh to i32
  %.sroa.0.0.i.i149.i = ashr i32 %.sroa.0.0.extract.trunc.i.i147.i, %i.ek ; 2 uses
  %.sroa.2.0.insert.shift.i.i150.i = shl nuw i64 %.sroa.5.0.i.i148.i, 32
  %.sroa.02.0.insert.ext.i.i151.i = zext i32 %.sroa.0.0.i.i149.i to i64
  %.sroa.02.0.insert.insert.i.i152.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i150.i, %.sroa.02.0.insert.ext.i.i151.i
  %.sroa.7.0.extract.trunc11.i.i = trunc nuw i64 %.sroa.5.0.i.i148.i to i32
  %i.el = icmp eq i32 %.sroa.0.0.i.i149.i, 0
  %i.em = icmp slt i32 %.sroa.7.0.extract.trunc11.i.i, -149
  %or.cond.i153.i = select i1 %i.el, i1 true, i1 %i.em
  %..i154.i = select i1 %or.cond.i153.i, i64 -639950127104, i64 %.sroa.02.0.insert.insert.i.i152.i
  store i64 %..i154.i, ptr %i.ea, align 8, !tbaa !14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.en = load i8, ptr %i.bh, align 1, !tbaa !13
  %i.eo = zext i8 %i.en to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !14
  %i.er = sext i32 %i.eq to i64
  %i.es = icmp slt i64 %indvars.iv.next.i, %i.er
  br i1 %i.es, label %bb.l, label %._crit_edge.loopexit.i, !llvm.loop !156

._crit_edge.loopexit.i:                           ; preds = %av_div_sf.exit.i
  %.pre.i = load i32, ptr %i.ax, align 8, !tbaa !69
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader229.i
  %i.et = phi i32 [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.bg, %.preheader229.i ] ; 2 uses
  %indvars.iv.next276.i = add nuw nsw i64 %indvars.iv275.i, 1
  %i.eu = sext i32 %i.et to i64
  %.not139.not.i = icmp slt i64 %indvars.iv275.i, %i.eu
  br i1 %.not139.not.i, label %.preheader229.i, label %.preheader227.i, !llvm.loop !157

.preheader226.i:                                  ; preds = %._crit_edge246.i, %.preheader226.preheader.i
  %i.ev = phi i32 [ %i.by, %.preheader226.preheader.i ], [ %i.hc, %._crit_edge246.i ] ; 2 uses
  %indvars.iv281.i = phi i64 [ 1, %.preheader226.preheader.i ], [ %indvars.iv.next282.i, %._crit_edge246.i ] ; 5 uses
  %i.ew = icmp sgt i32 %i.ev, 0
  br i1 %i.ew, label %.lr.ph245.i, label %._crit_edge246.i

.lr.ph245.i:                                      ; preds = %.preheader226.i
  %i.ex = getelementptr inbounds nuw [5 x i8], ptr %i.bu, i64 %indvars.iv281.i
  %i.ey = getelementptr inbounds nuw [5 x i8], ptr %i.bv, i64 %indvars.iv281.i
  %i.ez = getelementptr inbounds nuw [40 x i8], ptr %i.bw, i64 %indvars.iv281.i
  %i.fa = getelementptr inbounds nuw [40 x i8], ptr %i.bx, i64 %indvars.iv281.i
  br label %bb.p

bb.p:                                             ; preds = %av_div_sf.exit212.i, %.lr.ph245.i
  %indvars.iv278.i = phi i64 [ 0, %.lr.ph245.i ], [ %indvars.iv.next279.i, %av_div_sf.exit212.i ] ; 5 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 %indvars.iv278.i
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !13
  %i.fd = zext i8 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ey, i64 %indvars.iv278.i
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !13  ; 2 uses
  %i.fg = zext i8 %i.ff to i64
  %i.fh = shl nuw nsw i64 %i.fg, 32               ; 2 uses
  %.sroa.5.0.insert.ext.i = sub nsw i64 55834574848, %i.fh ; 3 uses
  %.sroa.09.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.ext.i, 536870912
  %.sroa.4.0.extract.shift.i.i = lshr exact i64 %.sroa.5.0.insert.ext.i, 32 ; 3 uses
  %.sroa.4.0.extract.trunc.i.i = trunc nuw i64 %.sroa.4.0.extract.shift.i.i to i32 ; 4 uses
  %.neg.i = add nsw i32 %.sroa.4.0.extract.trunc.i.i, -1
  %i.fi = sub nsw i32 1, %.sroa.4.0.extract.trunc.i.i ; 2 uses
  %i.fj = icmp sgt i32 %.sroa.4.0.extract.trunc.i.i, 32
  br i1 %i.fj, label %av_add_sf.exit193.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fk = icmp sgt i32 %.sroa.4.0.extract.trunc.i.i, 1
  br i1 %i.fk, label %.preheader.i.i179.i, label %bb.r

.preheader.i.i179.i:                              ; preds = %bb.q
  %i.fl = lshr i32 536870912, %.neg.i
  %i.fm = add nuw nsw i32 %i.fl, 536870912
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = or disjoint i64 %.sroa.5.0.insert.ext.i, %i.fn
  br label %av_add_sf.exit193.i

bb.r:                                             ; preds = %bb.q
  %i.fp = icmp samesign ult i32 %i.fi, 32
  br i1 %i.fp, label %.preheader.i30.i163.i, label %av_add_sf.exit193.i

.preheader.i30.i163.i:                            ; preds = %bb.r
  %i.fq = lshr i32 536870912, %i.fi
  %i.fr = add nuw nsw i32 %i.fq, 536870912
  %i.fs = icmp eq i8 %i.ff, 12                    ; 2 uses
  %i.ft = zext i1 %i.fs to i32
  %.sroa.0.0.i24.i161.i = lshr i32 %i.fr, %i.ft   ; 2 uses
  %.sroa.8.0.extract.trunc.i31.i165.i = select i1 %i.fs, i64 2, i64 1
  %i.fu = icmp samesign ult i32 %.sroa.0.0.i24.i161.i, 536870912 ; 2 uses
  %i.fv = sext i1 %i.fu to i64
  %.sroa.8.0.lcssa.i33.i167.i = add nsw i64 %.sroa.8.0.extract.trunc.i31.i165.i, %i.fv ; 2 uses
  %i.fw = zext i1 %i.fu to i32
  %.sroa.0.0.lcssa.i34.i168.i = shl nuw nsw i32 %.sroa.0.0.i24.i161.i, %i.fw
  %i.fx = shl nuw nsw i64 %.sroa.8.0.lcssa.i33.i167.i, 32
  %i.fy = zext nneg i32 %.sroa.0.0.lcssa.i34.i168.i to i64
  %i.fz = or disjoint i64 %i.fx, %i.fy
  br label %av_add_sf.exit193.i

av_add_sf.exit193.i:                              ; preds = %.preheader.i30.i163.i, %bb.r, %.preheader.i.i179.i, %bb.p
  %.sroa.016.0.i156.i = phi i64 [ %.sroa.09.0.insert.insert.i, %bb.p ], [ %i.fo, %.preheader.i.i179.i ], [ %i.fz, %.preheader.i30.i163.i ], [ 536870912, %bb.r ]
  %.sroa.5.0.i157.i = phi i64 [ %.sroa.4.0.extract.shift.i.i, %bb.p ], [ %.sroa.4.0.extract.shift.i.i, %.preheader.i.i179.i ], [ %.sroa.8.0.lcssa.i33.i167.i, %.preheader.i30.i163.i ], [ 1, %bb.r ]
  %i.ga = shl nuw nsw i64 %i.fd, 32
  %.sroa.4.0.insert.ext.i = sub nsw i64 34359738368, %i.ga
  %.sroa.9.0.extract.shift.i.i = lshr exact i64 %.sroa.4.0.insert.ext.i, 32
  %.sroa.9.0.extract.trunc.i.i = trunc nuw i64 %.sroa.9.0.extract.shift.i.i to i32
  %.sroa.2.0.extract.trunc.i194.i = trunc nuw i64 %.sroa.5.0.i157.i to i32
  %i.gb = shl i64 %.sroa.016.0.i156.i, 32
  %i.gc = ashr exact i64 %i.gb, 32
  %i.gd = sdiv i64 576460752303423488, %i.gc      ; 3 uses
  %i.ge = sub nsw i32 %.sroa.9.0.extract.trunc.i.i, %.sroa.2.0.extract.trunc.i194.i ; 2 uses
  %i.gf = add nsw i64 %i.gd, 2147483648
  %.not18.i195.i = icmp ult i64 %i.gf, 4294967296
  br i1 %.not18.i195.i, label %av_div_sf.exit212.i, label %.lr.ph.i196.i

.lr.ph.i196.i:                                    ; preds = %av_add_sf.exit193.i, %.lr.ph.i196.i
  %.020.i197.i = phi i64 [ %i.gg, %.lr.ph.i196.i ], [ %i.gd, %av_add_sf.exit193.i ]
  %.sroa.9.019.i198.i = phi i32 [ %i.gh, %.lr.ph.i196.i ], [ %i.ge, %av_add_sf.exit193.i ]
  %i.gg = sdiv i64 %.020.i197.i, 2                ; 3 uses
  %i.gh = add nsw i32 %.sroa.9.019.i198.i, -1     ; 2 uses
  %i.gi = add nsw i64 %i.gg, 2147483648
  %.not.i199.i = icmp ult i64 %i.gi, 4294967296
  br i1 %.not.i199.i, label %av_div_sf.exit212.i, label %.lr.ph.i196.i, !llvm.loop !1

av_div_sf.exit212.i:                              ; preds = %.lr.ph.i196.i, %av_add_sf.exit193.i
  %.sroa.9.0.lcssa.i200.i = phi i32 [ %i.ge, %av_add_sf.exit193.i ], [ %i.gh, %.lr.ph.i196.i ]
  %.0.lcssa.i201.i = phi i64 [ %i.gd, %av_add_sf.exit193.i ], [ %i.gg, %.lr.ph.i196.i ]
  %.sroa.9.0.insert.ext.i202.i = zext i32 %.sroa.9.0.lcssa.i200.i to i64 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i203.i = trunc nsw i64 %.0.lcssa.i201.i to i32 ; 2 uses
  %i.gj = add i32 %.sroa.0.0.extract.trunc.i.i203.i, 1073741824
  %i.gk = icmp slt i32 %i.gj, 1                   ; 2 uses
  %i.gl = add nuw nsw i64 %.sroa.9.0.insert.ext.i202.i, 1
  %i.gm = and i64 %i.gl, 4294967295
  %.sroa.5.0.i.i204.i = select i1 %i.gk, i64 %i.gm, i64 %.sroa.9.0.insert.ext.i202.i ; 2 uses
  %i.gn = zext i1 %i.gk to i32
  %.sroa.0.0.i.i205.i = ashr i32 %.sroa.0.0.extract.trunc.i.i203.i, %i.gn ; 2 uses
  %.sroa.2.0.insert.shift.i.i206.i = shl nuw i64 %.sroa.5.0.i.i204.i, 32
  %.sroa.02.0.insert.ext.i.i207.i = zext i32 %.sroa.0.0.i.i205.i to i64
  %.sroa.02.0.insert.insert.i.i208.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i206.i, %.sroa.02.0.insert.ext.i.i207.i
  %.sroa.9.0.extract.trunc14.i209.i = trunc nuw i64 %.sroa.5.0.i.i204.i to i32
  %i.go = icmp eq i32 %.sroa.0.0.i.i205.i, 0
  %i.gp = icmp slt i32 %.sroa.9.0.extract.trunc14.i209.i, -149
  %or.cond.i210.i = select i1 %i.go, i1 true, i1 %i.gp
  %..i211.i = select i1 %or.cond.i210.i, i64 -639950127104, i64 %.sroa.02.0.insert.insert.i.i208.i ; 3 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv278.i
  store i64 %..i211.i, ptr %i.gq, align 8, !tbaa !14
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv278.i
  %reass.sub = sub i64 %..i211.i, %i.fh
  %.sroa.0.0.insert.insert.i213.i = add i64 %reass.sub, 51539607552
  %.sroa.0.0.extract.trunc.i.i214.i = trunc i64 %..i211.i to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i.i215.i = lshr i64 %.sroa.0.0.insert.insert.i213.i, 32 ; 2 uses
  %i.gs = add i32 %.sroa.0.0.extract.trunc.i.i214.i, 1073741824
  %i.gt = icmp slt i32 %i.gs, 1                   ; 2 uses
  %i.gu = add nuw nsw i64 %.sroa.5.0.extract.shift.i.i215.i, 1
  %i.gv = and i64 %i.gu, 4294967295
  %.sroa.5.0.i.i216.i = select i1 %i.gt, i64 %i.gv, i64 %.sroa.5.0.extract.shift.i.i215.i ; 2 uses
  %i.gw = zext i1 %i.gt to i32
  %.sroa.0.0.i.i217.i = ashr i32 %.sroa.0.0.extract.trunc.i.i214.i, %i.gw ; 2 uses
  %.sroa.2.0.insert.shift.i.i218.i = shl nuw i64 %.sroa.5.0.i.i216.i, 32
  %.sroa.02.0.insert.ext.i.i219.i = zext i32 %.sroa.0.0.i.i217.i to i64
  %.sroa.02.0.insert.insert.i.i220.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i218.i, %.sroa.02.0.insert.ext.i.i219.i
  %.sroa.7.0.extract.trunc11.i221.i = trunc nuw i64 %.sroa.5.0.i.i216.i to i32
  %i.gx = icmp eq i32 %.sroa.0.0.i.i217.i, 0
  %i.gy = icmp slt i32 %.sroa.7.0.extract.trunc11.i221.i, -149
  %or.cond.i222.i = select i1 %i.gx, i1 true, i1 %i.gy
  %..i223.i = select i1 %or.cond.i222.i, i64 -639950127104, i64 %.sroa.02.0.insert.insert.i.i220.i
  store i64 %..i223.i, ptr %i.gr, align 8, !tbaa !14
  %indvars.iv.next279.i = add nuw nsw i64 %indvars.iv278.i, 1 ; 2 uses
  %i.gz = load i32, ptr %i.bt, align 8, !tbaa !63 ; 2 uses
  %i.ha = sext i32 %i.gz to i64
  %i.hb = icmp slt i64 %indvars.iv.next279.i, %i.ha
  br i1 %i.hb, label %bb.p, label %._crit_edge246.i, !llvm.loop !158

._crit_edge246.i:                                 ; preds = %av_div_sf.exit212.i, %.preheader226.i
  %i.hc = phi i32 [ %i.ev, %.preheader226.i ], [ %i.gz, %av_div_sf.exit212.i ]
  %indvars.iv.next282.i = add nuw nsw i64 %indvars.iv281.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next282.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %sbr_dequant.exit, label %.preheader226.i, !llvm.loop !159

bb.s:                                             ; preds = %bb.j, %bb.i
  %wide.trip.count303.i = phi i64 [ 2, %bb.j ], [ 1, %bb.i ]
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 209184
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 556640 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 556648
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge259.split.i, %bb.s
  %indvars.iv300.i = phi i64 [ 0, %bb.s ], [ %indvars.iv.next301.i, %._crit_edge259.split.i ] ; 2 uses
  %i.hg = getelementptr inbounds nuw [106672 x i8], ptr %i.hd, i64 %indvars.iv300.i ; 8 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8 ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !69 ; 2 uses
  %.not135252.i = icmp slt i32 %i.hi, 1
  br i1 %.not135252.i, label %.preheader225.i, label %.preheader224.lr.ph.i

.preheader224.lr.ph.i:                            ; preds = %bb.t
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 100
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !71
  %.not134.i = icmp ne i32 %i.hk, 0
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hg, i64 12
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hg, i64 102608
  %i.hn = zext i1 %.not134.i to i32
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hg, i64 103040
  br label %.preheader224.i

.preheader225.i:                                  ; preds = %._crit_edge251.i, %bb.t
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hg, i64 24
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !72 ; 2 uses
  %.not136257.i = icmp slt i32 %i.hq, 1
  br i1 %.not136257.i, label %._crit_edge259.split.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %.preheader225.i
  %i.hr = load i32, ptr %i.hf, align 8, !tbaa !63 ; 3 uses
  %i.hs = icmp sgt i32 %i.hr, 0
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hg, i64 106496
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hg, i64 106512
  br i1 %i.hs, label %.preheader.preheader.i, label %._crit_edge259.split.i

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %i.hv = add nuw i32 %i.hq, 1
  %wide.trip.count298.i = zext i32 %i.hv to i64
  %wide.trip.count293.i = zext nneg i32 %i.hr to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count293.i, 3    ; 3 uses
  %i.hw = icmp ult i32 %i.hr, 4
  %unroll_iter = and i64 %wide.trip.count293.i, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod927 = icmp ne i64 %xtraiter, 0
  br label %.preheader.i

.preheader224.i:                                  ; preds = %._crit_edge251.i, %.preheader224.lr.ph.i
  %i.hx = phi i32 [ %i.hi, %.preheader224.lr.ph.i ], [ %i.ix, %._crit_edge251.i ]
  %indvars.iv287.i = phi i64 [ 1, %.preheader224.lr.ph.i ], [ %indvars.iv.next288.i, %._crit_edge251.i ] ; 5 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hl, i64 %indvars.iv287.i ; 2 uses
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !13  ; 2 uses
  %i.ia = zext i8 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %i.ia
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !14
  %i.id = icmp sgt i32 %i.ic, 0
  br i1 %i.id, label %.lr.ph250.i, label %._crit_edge251.i

.lr.ph250.i:                                      ; preds = %.preheader224.i
  %i.ie = getelementptr inbounds nuw [48 x i8], ptr %i.hm, i64 %indvars.iv287.i
  %i.if = getelementptr inbounds nuw [384 x i8], ptr %i.ho, i64 %indvars.iv287.i
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %.lr.ph250.i
  %i.ig = phi i8 [ %i.hz, %.lr.ph250.i ], [ %i.iq, %bb.w ]
  %indvars.iv284.i = phi i64 [ 0, %.lr.ph250.i ], [ %indvars.iv.next285.i, %bb.w ] ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 %indvars.iv284.i
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !13
  %i.ij = zext i8 %i.ii to i32
  %i.ik = shl nuw nsw i32 %i.ij, %i.hn            ; 3 uses
  %i.il = add nuw nsw i32 %i.ik, 12
  %i.im = and i32 %i.ik, 1
  %.not137.i = icmp eq i32 %i.im, 0
  %.144.i = select i1 %.not137.i, i32 536870912, i32 759250125
  %i.in = lshr i32 %i.il, 1
  %i.io = add nuw nsw i32 %i.in, 1
  %i.ip = icmp samesign ugt i32 %i.ik, 119
  br i1 %i.ip, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.32) #12
  %.pre305.i = load i8, ptr %i.hy, align 1, !tbaa !13
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.iq = phi i8 [ %.pre305.i, %bb.v ], [ %i.ig, %bb.u ] ; 2 uses
  %.sroa.6.0.i = phi i32 [ 1, %bb.v ], [ %i.io, %bb.u ]
  %.sroa.0.1.i = phi i32 [ 536870912, %bb.v ], [ %.144.i, %bb.u ]
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv284.i ; 2 uses
  store i32 %.sroa.0.1.i, ptr %i.ir, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ir, i64 4
  store i32 %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !14
  %indvars.iv.next285.i = add nuw nsw i64 %indvars.iv284.i, 1 ; 2 uses
  %i.is = zext i8 %i.iq to i64
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %i.is
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !14
  %i.iv = sext i32 %i.iu to i64
  %i.iw = icmp slt i64 %indvars.iv.next285.i, %i.iv
  br i1 %i.iw, label %bb.u, label %._crit_edge251.loopexit.i, !llvm.loop !160

._crit_edge251.loopexit.i:                        ; preds = %bb.w
  %.pre306.i = load i32, ptr %i.hh, align 8, !tbaa !69
  br label %._crit_edge251.i

._crit_edge251.i:                                 ; preds = %._crit_edge251.loopexit.i, %.preheader224.i
  %i.ix = phi i32 [ %.pre306.i, %._crit_edge251.loopexit.i ], [ %i.hx, %.preheader224.i ] ; 2 uses
  %indvars.iv.next288.i = add nuw nsw i64 %indvars.iv287.i, 1
  %i.iy = sext i32 %i.ix to i64
  %.not135.not.i = icmp slt i64 %indvars.iv287.i, %i.iy
  br i1 %.not135.not.i, label %.preheader224.i, label %.preheader225.i, !llvm.loop !161

.preheader.i:                                     ; preds = %._crit_edge256.i, %.preheader.preheader.i
  %indvars.iv295.i = phi i64 [ 1, %.preheader.preheader.i ], [ %indvars.iv.next296.i, %._crit_edge256.i ] ; 3 uses
  %i.iz = getelementptr inbounds nuw [5 x i8], ptr %i.ht, i64 %indvars.iv295.i ; 5 uses
  %i.ja = getelementptr inbounds nuw [40 x i8], ptr %i.hu, i64 %indvars.iv295.i ; 5 uses
  br i1 %i.hw, label %.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %indvars.iv290.i = phi i64 [ %indvars.iv.next291.i.3, %.preheader.i.new ], [ 0, %.preheader.i ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.preheader.i.new ], [ 0, %.preheader.i ]
end_hunk_0
begin_hunk_1_@ff_aac_sbr_apply_fixed:bb.a
  store <2 x i64> %broadcast.splat, ptr %i.aed, align 4, !tbaa !14
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aee = icmp eq i64 %index.next, %n.vec
  br i1 %i.aee, label %middle.block, label %vector.body, !llvm.loop !190

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aea, %n.vec
  br i1 %cmp.n, label %.loopexit.i212, label %.lr.ph175.i.preheader

.lr.ph175.i.preheader:                            ; preds = %.lr.ph175.preheader.i, %middle.block
  %indvars.iv198.i.ph = phi i64 [ %i.adz, %.lr.ph175.preheader.i ], [ %i.aeb, %middle.block ]
  br label %.lr.ph175.i

.lr.ph175.i:                                      ; preds = %.lr.ph175.i.preheader, %.lr.ph175.i
  %indvars.iv198.i = phi i64 [ %indvars.iv.next199.i, %.lr.ph175.i ], [ %indvars.iv198.i.ph, %.lr.ph175.i.preheader ] ; 2 uses
  %i.aef = sub nsw i64 %indvars.iv198.i, %i.xn
  %i.aeg = getelementptr inbounds [8 x i8], ptr %i.aaj, i64 %i.aef
  store i64 %..i137.i, ptr %i.aeg, align 4, !tbaa !14
  %indvars.iv.next199.i = add nuw nsw i64 %indvars.iv198.i, 1 ; 2 uses
  %exitcond.not.i214 = icmp eq i64 %indvars.iv.next199.i, %wide.trip.count.i213
  br i1 %exitcond.not.i214, label %.loopexit.i212, label %.lr.ph175.i, !llvm.loop !191

sbr_env_estimate.exit:                            ; preds = %.loopexit153.i, %av_int2sf.exit.i, %.loopexit150.i, %bb.bg
  %.pr = phi i32 [ %i.zo, %.loopexit150.i ], [ %i.zq, %bb.bg ], [ %i.xo, %.loopexit153.i ], [ %i.xr, %av_int2sf.exit.i ] ; 2 uses
  %i.aeh = icmp sgt i32 %.pr, 0
  br i1 %i.aeh, label %.lr.ph1476.i, label %sbr_gain_calc.exit

.lr.ph1476.i:                                     ; preds = %sbr_env_estimate.exit
  %i.aei = getelementptr inbounds nuw i8, ptr %i.ml, i64 14584
  br label %bb.bm

bb.bm:                                            ; preds = %._crit_edge1473.i, %.lr.ph1476.i
  %i.aej = phi i32 [ %.pr, %.lr.ph1476.i ], [ %i.cbl, %._crit_edge1473.i ]
  %indvars.iv1583.i = phi i64 [ 0, %.lr.ph1476.i ], [ %indvars.iv.next1584.i, %._crit_edge1473.i ] ; 11 uses
  %i.aek = load i32, ptr %i.aei, align 8, !tbaa !14
  %i.ael = zext i32 %i.aek to i64
  %i.aem = icmp eq i64 %indvars.iv1583.i, %i.ael
  br i1 %i.aem, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.aen = load i32, ptr %i.rf, align 4, !tbaa !14
  %i.aeo = zext i32 %i.aen to i64
  %i.aep = icmp ne i64 %indvars.iv1583.i, %i.aeo
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.aeq = phi i1 [ false, %bb.bm ], [ %i.aep, %bb.bn ] ; 2 uses
  %i.aer = load i32, ptr %i.ly, align 4, !tbaa !79
  %i.aes = icmp sgt i32 %i.aer, 0
  br i1 %i.aes, label %.lr.ph1472.i, label %._crit_edge1473.i

.lr.ph1472.i:                                     ; preds = %bb.bo
  %i.aet = getelementptr inbounds nuw [384 x i8], ptr %i.lm, i64 %indvars.iv1583.i ; 3 uses
  %i.aeu = getelementptr inbounds nuw [384 x i8], ptr %i.ln, i64 %indvars.iv1583.i
  %i.aev = getelementptr inbounds nuw [384 x i8], ptr %i.ma, i64 %indvars.iv1583.i ; 4 uses
  %i.aew = getelementptr inbounds nuw [384 x i8], ptr %i.mb, i64 %indvars.iv1583.i ; 3 uses
  %i.aex = getelementptr inbounds nuw [48 x i8], ptr %i.ml, i64 %indvars.iv1583.i
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 102224
  %i.aez = getelementptr inbounds nuw [48 x i8], ptr %i.lp, i64 %indvars.iv1583.i
  %i.afa = getelementptr inbounds nuw [384 x i8], ptr %i.mc, i64 %indvars.iv1583.i ; 5 uses
  %i.afb = getelementptr inbounds nuw [384 x i8], ptr %i.lv, i64 %indvars.iv1583.i ; 4 uses
  %.pre.i228 = load i32, ptr %i.lb, align 8, !tbaa !14
  br label %bb.bp

.loopexit.i232:                                   ; preds = %bb.fu, %av_gt_sf.exit1272.thread.i
  %i.afc = phi i32 [ %i.bzk, %av_gt_sf.exit1272.thread.i ], [ %i.cbh, %bb.fu ]
  %i.afd = load i32, ptr %i.ly, align 4, !tbaa !79
  %i.afe = sext i32 %i.afd to i64
  %i.aff = icmp slt i64 %indvars.iv.next1581.i, %i.afe
  br i1 %i.aff, label %bb.bp, label %._crit_edge1473.loopexit.i, !llvm.loop !192

bb.bp:                                            ; preds = %.loopexit.i232, %.lr.ph1472.i
  %i.afg = phi i32 [ %.pre.i228, %.lr.ph1472.i ], [ %i.afc, %.loopexit.i232 ] ; 3 uses
  %indvars.iv1580.i = phi i64 [ 0, %.lr.ph1472.i ], [ %indvars.iv.next1581.i, %.loopexit.i232 ] ; 2 uses
  %i.afh = getelementptr inbounds nuw [2 x i8], ptr %i.lz, i64 %indvars.iv1580.i
  %i.afi = load i16, ptr %i.afh, align 2, !tbaa !58 ; 7 uses
  %i.afj = zext i16 %i.afi to i32                 ; 2 uses
  %indvars.iv.next1581.i = add nuw nsw i64 %indvars.iv1580.i, 1 ; 3 uses
  %i.afk = getelementptr inbounds nuw [2 x i8], ptr %i.lz, i64 %indvars.iv.next1581.i
  %i.afl = load i16, ptr %i.afk, align 2, !tbaa !58 ; 2 uses
  %i.afm = zext i16 %i.afl to i32                 ; 6 uses
  %i.afn = sub nsw i32 %i.afm, %i.afg
  %i.afo = icmp ult i16 %i.afi, %i.afl            ; 2 uses
  br i1 %i.afo, label %.lr.ph.preheader.i237, label %._crit_edge.i229

.lr.ph.preheader.i237:                            ; preds = %bb.bp
  %i.afp = sub i32 0, %i.afg
  %i.afq = sext i32 %i.afp to i64
  %i.afr = zext i16 %i.afi to i64
  %i.afs = add nsw i64 %i.afr, %i.afq
  br label %.lr.ph.i238

.lr.ph.i238:                                      ; preds = %av_add_sf.exit684.i, %.lr.ph.preheader.i237
  %indvars.iv.i239 = phi i64 [ %i.afs, %.lr.ph.preheader.i237 ], [ %indvars.iv.next.i272, %av_add_sf.exit684.i ] ; 11 uses
  %i.aft = getelementptr inbounds [8 x i8], ptr %i.aet, i64 %indvars.iv.i239
  %i.afu = getelementptr inbounds [8 x i8], ptr %i.aeu, i64 %indvars.iv.i239
  %i.afv = load i64, ptr %i.afu, align 8          ; 7 uses
  %.sroa.09.0.extract.trunc.i.i240 = trunc i64 %i.afv to i32 ; 6 uses
  %.sroa.4.0.extract.shift.i.i241 = lshr i64 %i.afv, 32 ; 7 uses
  %.sroa.4.0.extract.trunc.i.i242 = trunc nuw i64 %.sroa.4.0.extract.shift.i.i241 to i32 ; 6 uses
  %.neg1327.i = add nsw i32 %.sroa.4.0.extract.trunc.i.i242, -1 ; 3 uses
  %i.afw = sub nsw i32 1, %.sroa.4.0.extract.trunc.i.i242 ; 6 uses
  %i.afx = icmp sgt i32 %.sroa.4.0.extract.trunc.i.i242, 32 ; 3 uses
  br i1 %i.afx, label %av_add_sf.exit.i243, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph.i238
  %i.afy = icmp sgt i32 %.sroa.4.0.extract.trunc.i.i242, 1
  br i1 %i.afy, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.afz = lshr i32 536870912, %.neg1327.i
  %i.aga = add nsw i32 %i.afz, %.sroa.09.0.extract.trunc.i.i240 ; 2 uses
  %i.agb = add i32 %i.aga, 1073741824
  %i.agc = icmp slt i32 %i.agb, 1                 ; 2 uses
  %i.agd = zext i1 %i.agc to i32
  %.sroa.0.0.i.i.i288 = ashr i32 %i.aga, %i.agd   ; 4 uses
  %.not.i.i.i289 = icmp eq i32 %.sroa.0.0.i.i.i288, 0
  br i1 %.not.i.i.i289, label %av_normalize_sf.exit.i.i295, label %.preheader.i.i.i290

.preheader.i.i.i290:                              ; preds = %bb.br
  %i.age = zext i1 %i.agc to i64
  %.sroa.5.0.i.i.i291 = add nuw nsw i64 %.sroa.4.0.extract.shift.i.i241, %i.age
  %.sroa.8.0.extract.trunc.i.i.i292 = trunc nuw i64 %.sroa.5.0.i.i.i291 to i32 ; 2 uses
  %i.agf = add i32 %.sroa.0.0.i.i.i288, 536870911
  %i.agg = icmp ult i32 %i.agf, 1073741823
  br i1 %i.agg, label %.lr.ph.i.i.i298, label %._crit_edge.i.i.i293

.lr.ph.i.i.i298:                                  ; preds = %.preheader.i.i.i290, %.lr.ph.i.i.i298
  %.sroa.0.08.i.i.i299 = phi i32 [ %i.agh, %.lr.ph.i.i.i298 ], [ %.sroa.0.0.i.i.i288, %.preheader.i.i.i290 ]
  %.sroa.8.07.i.i.i300 = phi i32 [ %i.agi, %.lr.ph.i.i.i298 ], [ %.sroa.8.0.extract.trunc.i.i.i292, %.preheader.i.i.i290 ]
  %i.agh = shl nsw i32 %.sroa.0.08.i.i.i299, 1    ; 3 uses
  %i.agi = add nsw i32 %.sroa.8.07.i.i.i300, -1   ; 2 uses
  %i.agj = add nsw i32 %i.agh, 536870911
  %i.agk = icmp ult i32 %i.agj, 1073741823
  br i1 %i.agk, label %.lr.ph.i.i.i298, label %._crit_edge.i.i.i293, !llvm.loop !2

._crit_edge.i.i.i293:                             ; preds = %.lr.ph.i.i.i298, %.preheader.i.i.i290
  %.sroa.8.0.lcssa.i.i.i = phi i32 [ %.sroa.8.0.extract.trunc.i.i.i292, %.preheader.i.i.i290 ], [ %i.agi, %.lr.ph.i.i.i298 ] ; 2 uses
  %.sroa.0.0.lcssa.i.i.i = phi i32 [ %.sroa.0.0.i.i.i288, %.preheader.i.i.i290 ], [ %i.agh, %.lr.ph.i.i.i298 ]
  %i.agl = icmp slt i32 %.sroa.8.0.lcssa.i.i.i, -149
  %spec.select.i.i.i294 = tail call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i.i.i, i32 -149)
  %spec.select6.i.i.i = select i1 %i.agl, i32 0, i32 %.sroa.0.0.lcssa.i.i.i
  %i.agm = zext i32 %spec.select.i.i.i294 to i64
  %i.agn = shl nuw i64 %i.agm, 32
  %i.ago = zext i32 %spec.select6.i.i.i to i64
  %i.agp = or disjoint i64 %i.agn, %i.ago
  br label %av_normalize_sf.exit.i.i295

av_normalize_sf.exit.i.i295:                      ; preds = %._crit_edge.i.i.i293, %bb.br
  %.sroa.05.0.insert.insert.i.i.i296 = phi i64 [ -639950127104, %bb.br ], [ %i.agp, %._crit_edge.i.i.i293 ] ; 2 uses
  %.sroa.5.0.extract.shift.i.i297 = lshr i64 %.sroa.05.0.insert.insert.i.i.i296, 32
  br label %av_add_sf.exit.i243

bb.bs:                                            ; preds = %bb.bq
  %i.agq = icmp samesign ult i32 %i.afw, 32
  br i1 %i.agq, label %bb.bt, label %av_add_sf.exit.i243

bb.bt:                                            ; preds = %bb.bs
  %i.agr = ashr i32 %.sroa.09.0.extract.trunc.i.i240, %i.afw ; 2 uses
  %i.ags = add nsw i32 %i.agr, 536870912
  %i.agt = add i32 %i.agr, 1610612736
  %i.agu = icmp slt i32 %i.agt, 1                 ; 2 uses
  %i.agv = zext i1 %i.agu to i32
  %.sroa.0.0.i24.i.i273 = ashr i32 %i.ags, %i.agv ; 4 uses
  %.not.i29.i.i274 = icmp eq i32 %.sroa.0.0.i24.i.i273, 0
  br i1 %.not.i29.i.i274, label %av_normalize_sf.exit41.i.i282, label %.preheader.i30.i.i275

.preheader.i30.i.i275:                            ; preds = %bb.bt
  %.sroa.8.0.extract.trunc.i31.i.i276 = select i1 %i.agu, i32 2, i32 1 ; 2 uses
  %i.agw = add i32 %.sroa.0.0.i24.i.i273, 536870911
  %i.agx = icmp ult i32 %i.agw, 1073741823
  br i1 %i.agx, label %.lr.ph.i38.i.i285, label %._crit_edge.i32.i.i277

.lr.ph.i38.i.i285:                                ; preds = %.preheader.i30.i.i275, %.lr.ph.i38.i.i285
  %.sroa.0.08.i39.i.i286 = phi i32 [ %i.agy, %.lr.ph.i38.i.i285 ], [ %.sroa.0.0.i24.i.i273, %.preheader.i30.i.i275 ]
  %.sroa.8.07.i40.i.i287 = phi i32 [ %i.agz, %.lr.ph.i38.i.i285 ], [ %.sroa.8.0.extract.trunc.i31.i.i276, %.preheader.i30.i.i275 ]
  %i.agy = shl nsw i32 %.sroa.0.08.i39.i.i286, 1  ; 3 uses
  %i.agz = add nsw i32 %.sroa.8.07.i40.i.i287, -1 ; 2 uses
  %i.aha = add nsw i32 %i.agy, 536870911
  %i.ahb = icmp ult i32 %i.aha, 1073741823
  br i1 %i.ahb, label %.lr.ph.i38.i.i285, label %._crit_edge.i32.i.i277, !llvm.loop !2

._crit_edge.i32.i.i277:                           ; preds = %.lr.ph.i38.i.i285, %.preheader.i30.i.i275
  %.sroa.8.0.lcssa.i33.i.i278 = phi i32 [ %.sroa.8.0.extract.trunc.i31.i.i276, %.preheader.i30.i.i275 ], [ %i.agz, %.lr.ph.i38.i.i285 ] ; 2 uses
  %.sroa.0.0.lcssa.i34.i.i279 = phi i32 [ %.sroa.0.0.i24.i.i273, %.preheader.i30.i.i275 ], [ %i.agy, %.lr.ph.i38.i.i285 ]
  %i.ahc = icmp slt i32 %.sroa.8.0.lcssa.i33.i.i278, -149
  %spec.select.i35.i.i280 = tail call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i33.i.i278, i32 -149)
  %spec.select6.i36.i.i281 = select i1 %i.ahc, i32 0, i32 %.sroa.0.0.lcssa.i34.i.i279
  %i.ahd = zext i32 %spec.select.i35.i.i280 to i64
  %i.ahe = shl nuw i64 %i.ahd, 32
  %i.ahf = zext i32 %spec.select6.i36.i.i281 to i64
  %i.ahg = or disjoint i64 %i.ahe, %i.ahf
  br label %av_normalize_sf.exit41.i.i282

av_normalize_sf.exit41.i.i282:                    ; preds = %._crit_edge.i32.i.i277, %bb.bt
  %.sroa.05.0.insert.insert.i37.i.i283 = phi i64 [ -639950127104, %bb.bt ], [ %i.ahg, %._crit_edge.i32.i.i277 ] ; 2 uses
  %.sroa.5.0.extract.shift18.i.i284 = lshr i64 %.sroa.05.0.insert.insert.i37.i.i283, 32
  br label %av_add_sf.exit.i243

av_add_sf.exit.i243:                              ; preds = %av_normalize_sf.exit41.i.i282, %bb.bs, %av_normalize_sf.exit.i.i295, %.lr.ph.i238
  %.sroa.016.0.i.i244 = phi i64 [ %i.afv, %.lr.ph.i238 ], [ %.sroa.05.0.insert.insert.i.i.i296, %av_normalize_sf.exit.i.i295 ], [ %.sroa.05.0.insert.insert.i37.i.i283, %av_normalize_sf.exit41.i.i282 ], [ 536870912, %bb.bs ]
  %.sroa.5.0.i.i245 = phi i64 [ %.sroa.4.0.extract.shift.i.i241, %.lr.ph.i238 ], [ %.sroa.5.0.extract.shift.i.i297, %av_normalize_sf.exit.i.i295 ], [ %.sroa.5.0.extract.shift18.i.i284, %av_normalize_sf.exit41.i.i282 ], [ 1, %bb.bs ]
  %i.ahh = load i64, ptr %i.aft, align 8          ; 3 uses
  %.sroa.9.0.extract.shift.i.i246 = lshr i64 %i.ahh, 32
  %.sroa.9.0.extract.trunc.i.i247 = trunc nuw i64 %.sroa.9.0.extract.shift.i.i246 to i32 ; 3 uses
  %.sroa.2.0.extract.trunc.i.i = trunc nuw i64 %.sroa.5.0.i.i245 to i32
  %i.ahi = shl i64 %i.ahh, 32                     ; 2 uses
  %i.ahj = ashr exact i64 %i.ahi, 2               ; 3 uses
  %i.ahk = shl i64 %.sroa.016.0.i.i244, 32
  %i.ahl = ashr exact i64 %i.ahk, 32
  %i.ahm = sdiv i64 %i.ahj, %i.ahl                ; 3 uses
  %i.ahn = sub nsw i32 %.sroa.9.0.extract.trunc.i.i247, %.sroa.2.0.extract.trunc.i.i ; 2 uses
  %i.aho = add nsw i64 %i.ahm, 2147483648
  %.not18.i.i248 = icmp ult i64 %i.aho, 4294967296
  br i1 %.not18.i.i248, label %av_div_sf.exit.i253, label %.lr.ph.i.i249

.lr.ph.i.i249:                                    ; preds = %av_add_sf.exit.i243, %.lr.ph.i.i249
  %.020.i.i250 = phi i64 [ %i.ahp, %.lr.ph.i.i249 ], [ %i.ahm, %av_add_sf.exit.i243 ]
  %.sroa.9.019.i.i251 = phi i32 [ %i.ahq, %.lr.ph.i.i249 ], [ %i.ahn, %av_add_sf.exit.i243 ]
  %i.ahp = sdiv i64 %.020.i.i250, 2               ; 3 uses
  %i.ahq = add nsw i32 %.sroa.9.019.i.i251, -1    ; 2 uses
  %i.ahr = add nsw i64 %i.ahp, 2147483648
  %.not.i.i252 = icmp ult i64 %i.ahr, 4294967296
  br i1 %.not.i.i252, label %av_div_sf.exit.i253, label %.lr.ph.i.i249, !llvm.loop !1

av_div_sf.exit.i253:                              ; preds = %.lr.ph.i.i249, %av_add_sf.exit.i243
  %.sroa.9.0.lcssa.i.i254 = phi i32 [ %i.ahn, %av_add_sf.exit.i243 ], [ %i.ahq, %.lr.ph.i.i249 ]
  %.0.lcssa.i.i255 = phi i64 [ %i.ahm, %av_add_sf.exit.i243 ], [ %i.ahp, %.lr.ph.i.i249 ]
  %.sroa.9.0.insert.ext.i.i256 = zext i32 %.sroa.9.0.lcssa.i.i254 to i64 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i257 = trunc nsw i64 %.0.lcssa.i.i255 to i32 ; 2 uses
  %i.ahs = add i32 %.sroa.0.0.extract.trunc.i.i.i257, 1073741824
  %i.aht = icmp slt i32 %i.ahs, 1                 ; 2 uses
  %i.ahu = add nuw nsw i64 %.sroa.9.0.insert.ext.i.i256, 1
  %i.ahv = and i64 %i.ahu, 4294967295
  %.sroa.5.0.i.i307.i = select i1 %i.aht, i64 %i.ahv, i64 %.sroa.9.0.insert.ext.i.i256 ; 2 uses
  %i.ahw = zext i1 %i.aht to i32
  %.sroa.0.0.i.i308.i = ashr i32 %.sroa.0.0.extract.trunc.i.i.i257, %i.ahw ; 2 uses
  %.sroa.2.0.insert.shift.i.i.i258 = shl nuw i64 %.sroa.5.0.i.i307.i, 32
  %.sroa.02.0.insert.ext.i.i.i259 = zext i32 %.sroa.0.0.i.i308.i to i64
  %.sroa.02.0.insert.insert.i.i.i260 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i258, %.sroa.02.0.insert.ext.i.i.i259
  %.sroa.9.0.extract.trunc14.i.i261 = trunc nuw i64 %.sroa.5.0.i.i307.i to i32
  %i.ahx = icmp eq i32 %.sroa.0.0.i.i308.i, 0
  %i.ahy = icmp slt i32 %.sroa.9.0.extract.trunc14.i.i261, -149
  %or.cond.i.i262 = select i1 %i.ahx, i1 true, i1 %i.ahy
  %..i.i263 = select i1 %or.cond.i.i262, i64 -639950127104, i64 %.sroa.02.0.insert.insert.i.i.i260 ; 3 uses
  %i.ahz = getelementptr inbounds [8 x i8], ptr %i.aev, i64 %indvars.iv.i239
  %.sroa.25.0.extract.shift.i.i264 = and i64 %i.afv, -4294967296
  %i.aia = shl i64 %..i.i263, 32
  %i.aib = ashr exact i64 %i.aia, 32              ; 2 uses
  %i.aic = shl i64 %i.afv, 32
  %i.aid = ashr exact i64 %i.aic, 32              ; 2 uses
  %i.aie = mul nsw i64 %i.aib, %i.aid
  %i.aif = lshr i64 %i.aie, 29
  %i.aig = add i64 %.sroa.25.0.extract.shift.i.i264, -4294967296 ; 2 uses
  %.sroa.0.0.insert.insert.i.i265 = add i64 %..i.i263, %i.aig
  %.sroa.0.0.extract.trunc.i.i309.i = trunc i64 %i.aif to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i.i.i266 = lshr i64 %.sroa.0.0.insert.insert.i.i265, 32 ; 2 uses
  %i.aih = add i32 %.sroa.0.0.extract.trunc.i.i309.i, 1073741824
  %i.aii = icmp slt i32 %i.aih, 1                 ; 2 uses
  %i.aij = add nuw nsw i64 %.sroa.5.0.extract.shift.i.i.i266, 1
  %i.aik = and i64 %i.aij, 4294967295
  %.sroa.5.0.i.i310.i = select i1 %i.aii, i64 %i.aik, i64 %.sroa.5.0.extract.shift.i.i.i266 ; 2 uses
  %i.ail = zext i1 %i.aii to i32
  %.sroa.0.0.i.i311.i = ashr i32 %.sroa.0.0.extract.trunc.i.i309.i, %i.ail ; 2 uses
  %.sroa.2.0.insert.shift.i.i312.i = shl nuw i64 %.sroa.5.0.i.i310.i, 32
  %.sroa.02.0.insert.ext.i.i313.i = zext i32 %.sroa.0.0.i.i311.i to i64
  %.sroa.02.0.insert.insert.i.i314.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i312.i, %.sroa.02.0.insert.ext.i.i313.i
  %.sroa.7.0.extract.trunc11.i.i267 = trunc nuw i64 %.sroa.5.0.i.i310.i to i32
  %i.aim = icmp eq i32 %.sroa.0.0.i.i311.i, 0
  %i.ain = icmp slt i32 %.sroa.7.0.extract.trunc11.i.i267, -149
  %or.cond.i315.i = select i1 %i.aim, i1 true, i1 %i.ain
  %..i316.i = select i1 %or.cond.i315.i, i64 -639950127104, i64 %.sroa.02.0.insert.insert.i.i314.i ; 3 uses
  %.sroa.0.0.extract.trunc.i300.i = trunc i64 %..i316.i to i32 ; 3 uses
  %.sroa.12.0.extract.shift.i301.i = lshr i64 %..i316.i, 32 ; 2 uses
  %.sroa.12.0.extract.trunc.i302.i = trunc nuw i64 %.sroa.12.0.extract.shift.i301.i to i32 ; 2 uses
  %i.aio = icmp eq i32 %.sroa.0.0.extract.trunc.i300.i, 0
  br i1 %i.aio, label %av_sqrt_sf.exit306.i, label %bb.bu

bb.bu:                                            ; preds = %av_div_sf.exit.i253
  %i.aip = icmp slt i32 %.sroa.0.0.extract.trunc.i300.i, 0
  br i1 %i.aip, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  tail call void @abort() #13
  unreachable

bb.bw:                                            ; preds = %bb.bu
  %i.aiq = add nsw i32 %.sroa.0.0.extract.trunc.i300.i, -536870912
  %i.air = ashr i32 %i.aiq, 20
  %i.ais = and i64 %..i316.i, 1048575             ; 2 uses
  %i.ait = sext i32 %i.air to i64
  %i.aiu = getelementptr inbounds [4 x i8], ptr @av_sqrttbl_sf, i64 %i.ait ; 2 uses
  %i.aiv = load i32, ptr %i.aiu, align 4, !tbaa !14
  %i.aiw = sext i32 %i.aiv to i64
  %i.aix = sub nuw nsw i64 1048576, %i.ais
  %i.aiy = mul nsw i64 %i.aix, %i.aiw
  %i.aiz = getelementptr i8, ptr %i.aiu, i64 4
  %i.aja = load i32, ptr %i.aiz, align 4, !tbaa !14
  %i.ajb = sext i32 %i.aja to i64
  %i.ajc = mul nsw i64 %i.ais, %i.ajb
  %i.ajd = add nsw i64 %i.ajc, %i.aiy
  %i.aje = and i64 %.sroa.12.0.extract.shift.i301.i, 1
  %i.ajf = getelementptr inbounds nuw [4 x i8], ptr @av_sqr_exp_multbl_sf, i64 %i.aje
  %i.ajg = load i32, ptr %i.ajf, align 4, !tbaa !14
  %i.ajh = sext i32 %i.ajg to i64
  %i.aji = shl i64 %i.ajd, 12
  %i.ajj = add i64 %i.aji, 2147483648
  %i.ajk = ashr i64 %i.ajj, 32
  %i.ajl = mul nsw i64 %i.ajk, %i.ajh
  %i.ajm = add nsw i64 %i.ajl, 268435456
  %i.ajn = lshr i64 %i.ajm, 29
  %i.ajo = trunc i64 %i.ajn to i32                ; 2 uses
  %i.ajp = icmp sgt i32 %i.ajo, 1073741823        ; 2 uses
  %i.ajq = add nsw i32 %.sroa.12.0.extract.trunc.i302.i, -2
  %.sroa.12.0.i303.i = select i1 %i.ajp, i32 %.sroa.12.0.extract.trunc.i302.i, i32 %i.ajq
  %i.ajr = zext i1 %i.ajp to i32
  %.sroa.0.0.i304.i = lshr i32 %i.ajo, %i.ajr
  %i.ajs = ashr i32 %.sroa.12.0.i303.i, 1
  %i.ajt = add nsw i32 %i.ajs, 1
  %i.aju = zext i32 %i.ajt to i64
  %i.ajv = shl nuw i64 %i.aju, 32
  %i.ajw = zext i32 %.sroa.0.0.i304.i to i64
  %i.ajx = or disjoint i64 %i.ajv, %i.ajw
  br label %av_sqrt_sf.exit306.i

av_sqrt_sf.exit306.i:                             ; preds = %bb.bw, %av_div_sf.exit.i253
  %.sroa.012.0.insert.insert.i305.i = phi i64 [ %i.ajx, %bb.bw ], [ -639950127104, %av_div_sf.exit.i253 ]
  store i64 %.sroa.012.0.insert.insert.i305.i, ptr %i.ahz, align 8, !tbaa !14
  %i.ajy = getelementptr inbounds [8 x i8], ptr %i.aew, i64 %indvars.iv.i239
  %i.ajz = getelementptr inbounds i8, ptr %i.aey, i64 %indvars.iv.i239
  %i.aka = load i8, ptr %i.ajz, align 1, !tbaa !13 ; 2 uses
  %.not.i.i317.i = icmp eq i8 %i.aka, 0
  br i1 %.not.i.i317.i, label %av_int2sf.exit.i268, label %.preheader.i.i318.i

.preheader.i.i318.i:                              ; preds = %av_sqrt_sf.exit306.i
  %i.akb = zext i8 %i.aka to i32
  br label %.lr.ph.i.i326.i

.lr.ph.i.i326.i:                                  ; preds = %.lr.ph.i.i326.i, %.preheader.i.i318.i
  %.sroa.0.08.i.i327.i = phi i32 [ %i.akc, %.lr.ph.i.i326.i ], [ %i.akb, %.preheader.i.i318.i ]
  %.sroa.8.07.i.i328.i = phi i32 [ %i.akd, %.lr.ph.i.i326.i ], [ 30, %.preheader.i.i318.i ] ; 2 uses
  %i.akc = shl nsw i32 %.sroa.0.08.i.i327.i, 1    ; 3 uses
  %i.akd = add nsw i32 %.sroa.8.07.i.i328.i, -1   ; 2 uses
  %i.ake = add nsw i32 %i.akc, 536870911
  %i.akf = icmp ult i32 %i.ake, 1073741823
  br i1 %i.akf, label %.lr.ph.i.i326.i, label %._crit_edge.i.i319.i, !llvm.loop !2

._crit_edge.i.i319.i:                             ; preds = %.lr.ph.i.i326.i
  %i.akg = icmp slt i32 %.sroa.8.07.i.i328.i, -148
  %spec.select.i.i322.i = tail call i32 @llvm.smax.i32(i32 %i.akd, i32 -149)
  %spec.select6.i.i323.i = select i1 %i.akg, i32 0, i32 %i.akc
  %i.akh = zext i32 %spec.select.i.i322.i to i64
  %i.aki = shl nuw i64 %i.akh, 32
  %i.akj = zext i32 %spec.select6.i.i323.i to i64
  %i.akk = or disjoint i64 %i.aki, %i.akj
  br label %av_int2sf.exit.i268

av_int2sf.exit.i268:                              ; preds = %._crit_edge.i.i319.i, %av_sqrt_sf.exit306.i
  %.sroa.05.0.insert.insert.i.i325.i = phi i64 [ -639950127104, %av_sqrt_sf.exit306.i ], [ %i.akk, %._crit_edge.i.i319.i ] ; 2 uses
  %.sroa.25.0.extract.shift.i329.i = and i64 %.sroa.05.0.insert.insert.i.i325.i, -4294967296
  %i.akl = shl i64 %.sroa.05.0.insert.insert.i.i325.i, 32
  %i.akm = ashr exact i64 %i.akl, 32
  %i.akn = mul nsw i64 %i.akm, %i.aib
  %i.ako = lshr i64 %i.akn, 29
  %i.akp = add i64 %..i.i263, -4294967296
  %.sroa.0.0.insert.insert.i330.i = add i64 %i.akp, %.sroa.25.0.extract.shift.i329.i
  %.sroa.0.0.extract.trunc.i.i331.i = trunc i64 %i.ako to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i.i332.i = lshr i64 %.sroa.0.0.insert.insert.i330.i, 32 ; 2 uses
  %i.akq = add i32 %.sroa.0.0.extract.trunc.i.i331.i, 1073741824
  %i.akr = icmp slt i32 %i.akq, 1                 ; 2 uses
  %i.aks = add nuw nsw i64 %.sroa.5.0.extract.shift.i.i332.i, 1
  %i.akt = and i64 %i.aks, 4294967295
  %.sroa.5.0.i.i333.i = select i1 %i.akr, i64 %i.akt, i64 %.sroa.5.0.extract.shift.i.i332.i ; 2 uses
  %i.aku = zext i1 %i.akr to i32
  %.sroa.0.0.i.i334.i = ashr i32 %.sroa.0.0.extract.trunc.i.i331.i, %i.aku ; 2 uses
  %.sroa.2.0.insert.shift.i.i335.i = shl nuw i64 %.sroa.5.0.i.i333.i, 32
  %.sroa.02.0.insert.ext.i.i336.i = zext i32 %.sroa.0.0.i.i334.i to i64
  %.sroa.02.0.insert.insert.i.i337.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i335.i, %.sroa.02.0.insert.ext.i.i336.i
  %.sroa.7.0.extract.trunc11.i338.i = trunc nuw i64 %.sroa.5.0.i.i333.i to i32
  %i.akv = icmp eq i32 %.sroa.0.0.i.i334.i, 0
  %i.akw = icmp slt i32 %.sroa.7.0.extract.trunc11.i338.i, -149
  %or.cond.i339.i = select i1 %i.akv, i1 true, i1 %i.akw
  %..i340.i = select i1 %or.cond.i339.i, i64 -639950127104, i64 %.sroa.02.0.insert.insert.i.i337.i ; 3 uses
  %.sroa.0.0.extract.trunc.i293.i = trunc i64 %..i340.i to i32 ; 3 uses
  %.sroa.12.0.extract.shift.i294.i = lshr i64 %..i340.i, 32 ; 2 uses
  %.sroa.12.0.extract.trunc.i295.i = trunc nuw i64 %.sroa.12.0.extract.shift.i294.i to i32 ; 2 uses
  %i.akx = icmp eq i32 %.sroa.0.0.extract.trunc.i293.i, 0
  br i1 %i.akx, label %av_sqrt_sf.exit299.i, label %bb.bx

bb.bx:                                            ; preds = %av_int2sf.exit.i268
  %i.aky = icmp slt i32 %.sroa.0.0.extract.trunc.i293.i, 0
  br i1 %i.aky, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  tail call void @abort() #13
  unreachable

bb.bz:                                            ; preds = %bb.bx
  %i.akz = add nsw i32 %.sroa.0.0.extract.trunc.i293.i, -536870912
  %i.ala = ashr i32 %i.akz, 20
  %i.alb = and i64 %..i340.i, 1048575             ; 2 uses
  %i.alc = sext i32 %i.ala to i64
  %i.ald = getelementptr inbounds [4 x i8], ptr @av_sqrttbl_sf, i64 %i.alc ; 2 uses
  %i.ale = load i32, ptr %i.ald, align 4, !tbaa !14
  %i.alf = sext i32 %i.ale to i64
  %i.alg = sub nuw nsw i64 1048576, %i.alb
  %i.alh = mul nsw i64 %i.alg, %i.alf
  %i.ali = getelementptr i8, ptr %i.ald, i64 4
  %i.alj = load i32, ptr %i.ali, align 4, !tbaa !14
  %i.alk = sext i32 %i.alj to i64
  %i.all = mul nsw i64 %i.alb, %i.alk
  %i.alm = add nsw i64 %i.all, %i.alh
  %i.aln = and i64 %.sroa.12.0.extract.shift.i294.i, 1
  %i.alo = getelementptr inbounds nuw [4 x i8], ptr @av_sqr_exp_multbl_sf, i64 %i.aln
  %i.alp = load i32, ptr %i.alo, align 4, !tbaa !14
  %i.alq = sext i32 %i.alp to i64
  %i.alr = shl i64 %i.alm, 12
  %i.als = add i64 %i.alr, 2147483648
  %i.alt = ashr i64 %i.als, 32
  %i.alu = mul nsw i64 %i.alt, %i.alq
  %i.alv = add nsw i64 %i.alu, 268435456
  %i.alw = lshr i64 %i.alv, 29
  %i.alx = trunc i64 %i.alw to i32                ; 2 uses
  %i.aly = icmp sgt i32 %i.alx, 1073741823        ; 2 uses
  %i.alz = add nsw i32 %.sroa.12.0.extract.trunc.i295.i, -2
  %.sroa.12.0.i296.i = select i1 %i.aly, i32 %.sroa.12.0.extract.trunc.i295.i, i32 %i.alz
  %i.ama = zext i1 %i.aly to i32
  %.sroa.0.0.i297.i = lshr i32 %i.alx, %i.ama
  %i.amb = ashr i32 %.sroa.12.0.i296.i, 1
  %i.amc = add nsw i32 %i.amb, 1
  %i.amd = zext i32 %i.amc to i64
  %i.ame = shl nuw i64 %i.amd, 32
  %i.amf = zext i32 %.sroa.0.0.i297.i to i64
  %i.amg = or disjoint i64 %i.ame, %i.amf
  br label %av_sqrt_sf.exit299.i

av_sqrt_sf.exit299.i:                             ; preds = %bb.bz, %av_int2sf.exit.i268
  %.sroa.012.0.insert.insert.i298.i = phi i64 [ %i.amg, %bb.bz ], [ -639950127104, %av_int2sf.exit.i268 ]
  store i64 %.sroa.012.0.insert.insert.i298.i, ptr %i.ajy, align 8, !tbaa !14
  %i.amh = getelementptr inbounds i8, ptr %i.aez, i64 %indvars.iv.i239
  %i.ami = load i8, ptr %i.amh, align 1, !tbaa !13
  %.not263.i = icmp eq i8 %i.ami, 0
  br i1 %.not263.i, label %bb.ca, label %bb.ct

bb.ca:                                            ; preds = %av_sqrt_sf.exit299.i
  %i.amj = getelementptr inbounds [8 x i8], ptr %i.afb, i64 %indvars.iv.i239
  %i.amk = load i64, ptr %i.amj, align 8          ; 4 uses
  %.sroa.09.0.extract.trunc.i341.i = trunc i64 %i.amk to i32 ; 4 uses
  %.sroa.4.0.extract.shift.i342.i = lshr i64 %i.amk, 32 ; 5 uses
  %.sroa.4.0.extract.trunc.i343.i = trunc nuw i64 %.sroa.4.0.extract.shift.i342.i to i32 ; 5 uses
  %.neg1331.i = add nsw i32 %.sroa.4.0.extract.trunc.i343.i, -1 ; 2 uses
  %i.aml = sub nsw i32 1, %.sroa.4.0.extract.trunc.i343.i ; 4 uses
  %i.amm = icmp sgt i32 %.sroa.4.0.extract.trunc.i343.i, 32 ; 2 uses
  br i1 %i.aeq, label %bb.cb, label %bb.cm

bb.cb:                                            ; preds = %bb.ca
  br i1 %i.amm, label %av_add_sf.exit381.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.amn = icmp sgt i32 %.sroa.4.0.extract.trunc.i343.i, 1
  br i1 %i.amn, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.amo = lshr i32 536870912, %.neg1331.i
  %i.amp = add nsw i32 %i.amo, %.sroa.09.0.extract.trunc.i341.i ; 2 uses
  %i.amq = add i32 %i.amp, 1073741824
  %i.amr = icmp slt i32 %i.amq, 1                 ; 2 uses
  %i.ams = zext i1 %i.amr to i32
  %.sroa.0.0.i.i365.i = ashr i32 %i.amp, %i.ams   ; 4 uses
  %.not.i.i366.i = icmp eq i32 %.sroa.0.0.i.i365.i, 0
  br i1 %.not.i.i366.i, label %av_normalize_sf.exit.i375.i, label %.preheader.i.i367.i

.preheader.i.i367.i:                              ; preds = %bb.cd
  %i.amt = zext i1 %i.amr to i64
  %.sroa.5.0.i.i368.i = add nuw nsw i64 %.sroa.4.0.extract.shift.i342.i, %i.amt
  %.sroa.8.0.extract.trunc.i.i369.i = trunc nuw i64 %.sroa.5.0.i.i368.i to i32 ; 2 uses
  %i.amu = add i32 %.sroa.0.0.i.i365.i, 536870911
  %i.amv = icmp ult i32 %i.amu, 1073741823
  br i1 %i.amv, label %.lr.ph.i.i378.i, label %._crit_edge.i.i370.i

.lr.ph.i.i378.i:                                  ; preds = %.preheader.i.i367.i, %.lr.ph.i.i378.i
  %.sroa.0.08.i.i379.i = phi i32 [ %i.amw, %.lr.ph.i.i378.i ], [ %.sroa.0.0.i.i365.i, %.preheader.i.i367.i ]
  %.sroa.8.07.i.i380.i = phi i32 [ %i.amx, %.lr.ph.i.i378.i ], [ %.sroa.8.0.extract.trunc.i.i369.i, %.preheader.i.i367.i ]
  %i.amw = shl nsw i32 %.sroa.0.08.i.i379.i, 1    ; 3 uses
  %i.amx = add nsw i32 %.sroa.8.07.i.i380.i, -1   ; 2 uses
  %i.amy = add nsw i32 %i.amw, 536870911
  %i.amz = icmp ult i32 %i.amy, 1073741823
  br i1 %i.amz, label %.lr.ph.i.i378.i, label %._crit_edge.i.i370.i, !llvm.loop !2

._crit_edge.i.i370.i:                             ; preds = %.lr.ph.i.i378.i, %.preheader.i.i367.i
  %.sroa.8.0.lcssa.i.i371.i = phi i32 [ %.sroa.8.0.extract.trunc.i.i369.i, %.preheader.i.i367.i ], [ %i.amx, %.lr.ph.i.i378.i ] ; 2 uses
  %.sroa.0.0.lcssa.i.i372.i = phi i32 [ %.sroa.0.0.i.i365.i, %.preheader.i.i367.i ], [ %i.amw, %.lr.ph.i.i378.i ]
  %i.ana = icmp slt i32 %.sroa.8.0.lcssa.i.i371.i, -149
  %spec.select.i.i373.i = tail call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i.i371.i, i32 -149)
  %spec.select6.i.i374.i = select i1 %i.ana, i32 0, i32 %.sroa.0.0.lcssa.i.i372.i
  %i.anb = zext i32 %spec.select.i.i373.i to i64
  %i.anc = shl nuw i64 %i.anb, 32
  %i.and = zext i32 %spec.select6.i.i374.i to i64
  %i.ane = or disjoint i64 %i.anc, %i.and
  br label %av_normalize_sf.exit.i375.i

av_normalize_sf.exit.i375.i:                      ; preds = %._crit_edge.i.i370.i, %bb.cd
  %.sroa.05.0.insert.insert.i.i376.i = phi i64 [ -639950127104, %bb.cd ], [ %i.ane, %._crit_edge.i.i370.i ] ; 2 uses
  %.sroa.5.0.extract.shift.i377.i = lshr i64 %.sroa.05.0.insert.insert.i.i376.i, 32
  br label %av_add_sf.exit381.i

bb.ce:                                            ; preds = %bb.cc
  %i.anf = icmp samesign ult i32 %i.aml, 32
  br i1 %i.anf, label %bb.cf, label %av_add_sf.exit381.i

bb.cf:                                            ; preds = %bb.ce
  %i.ang = ashr i32 %.sroa.09.0.extract.trunc.i341.i, %i.aml ; 2 uses
  %i.anh = add nsw i32 %i.ang, 536870912
  %i.ani = add i32 %i.ang, 1610612736
  %i.anj = icmp slt i32 %i.ani, 1                 ; 2 uses
  %i.ank = zext i1 %i.anj to i32
  %.sroa.0.0.i24.i349.i = ashr i32 %i.anh, %i.ank ; 4 uses
  %.not.i29.i350.i = icmp eq i32 %.sroa.0.0.i24.i349.i, 0
  br i1 %.not.i29.i350.i, label %av_normalize_sf.exit41.i359.i, label %.preheader.i30.i351.i

.preheader.i30.i351.i:                            ; preds = %bb.cf
  %.sroa.8.0.extract.trunc.i31.i353.i = select i1 %i.anj, i32 2, i32 1 ; 2 uses
  %i.anl = add i32 %.sroa.0.0.i24.i349.i, 536870911
  %i.anm = icmp ult i32 %i.anl, 1073741823
  br i1 %i.anm, label %.lr.ph.i38.i362.i, label %._crit_edge.i32.i354.i

.lr.ph.i38.i362.i:                                ; preds = %.preheader.i30.i351.i, %.lr.ph.i38.i362.i
  %.sroa.0.08.i39.i363.i = phi i32 [ %i.ann, %.lr.ph.i38.i362.i ], [ %.sroa.0.0.i24.i349.i, %.preheader.i30.i351.i ]
  %.sroa.8.07.i40.i364.i = phi i32 [ %i.ano, %.lr.ph.i38.i362.i ], [ %.sroa.8.0.extract.trunc.i31.i353.i, %.preheader.i30.i351.i ]
  %i.ann = shl nsw i32 %.sroa.0.08.i39.i363.i, 1  ; 3 uses
  %i.ano = add nsw i32 %.sroa.8.07.i40.i364.i, -1 ; 2 uses
  %i.anp = add nsw i32 %i.ann, 536870911
  %i.anq = icmp ult i32 %i.anp, 1073741823
  br i1 %i.anq, label %.lr.ph.i38.i362.i, label %._crit_edge.i32.i354.i, !llvm.loop !2

._crit_edge.i32.i354.i:                           ; preds = %.lr.ph.i38.i362.i, %.preheader.i30.i351.i
  %.sroa.8.0.lcssa.i33.i355.i = phi i32 [ %.sroa.8.0.extract.trunc.i31.i353.i, %.preheader.i30.i351.i ], [ %i.ano, %.lr.ph.i38.i362.i ] ; 2 uses
  %.sroa.0.0.lcssa.i34.i356.i = phi i32 [ %.sroa.0.0.i24.i349.i, %.preheader.i30.i351.i ], [ %i.ann, %.lr.ph.i38.i362.i ]
  %i.anr = icmp slt i32 %.sroa.8.0.lcssa.i33.i355.i, -149
  %spec.select.i35.i357.i = tail call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i33.i355.i, i32 -149)
  %spec.select6.i36.i358.i = select i1 %i.anr, i32 0, i32 %.sroa.0.0.lcssa.i34.i356.i
  %i.ans = zext i32 %spec.select.i35.i357.i to i64
  %i.ant = shl nuw i64 %i.ans, 32
  %i.anu = zext i32 %spec.select6.i36.i358.i to i64
  %i.anv = or disjoint i64 %i.ant, %i.anu
  br label %av_normalize_sf.exit41.i359.i

av_normalize_sf.exit41.i359.i:                    ; preds = %._crit_edge.i32.i354.i, %bb.cf
  %.sroa.05.0.insert.insert.i37.i360.i = phi i64 [ -639950127104, %bb.cf ], [ %i.anv, %._crit_edge.i32.i354.i ] ; 2 uses
  %.sroa.5.0.extract.shift18.i361.i = lshr i64 %.sroa.05.0.insert.insert.i37.i360.i, 32
  br label %av_add_sf.exit381.i

av_add_sf.exit381.i:                              ; preds = %av_normalize_sf.exit41.i359.i, %bb.ce, %av_normalize_sf.exit.i375.i, %bb.cb
  %.sroa.016.0.i344.i = phi i64 [ %i.amk, %bb.cb ], [ %.sroa.05.0.insert.insert.i.i376.i, %av_normalize_sf.exit.i375.i ], [ %.sroa.05.0.insert.insert.i37.i360.i, %av_normalize_sf.exit41.i359.i ], [ 536870912, %bb.ce ]
  %.sroa.5.0.i345.i = phi i64 [ %.sroa.4.0.extract.shift.i342.i, %bb.cb ], [ %.sroa.5.0.extract.shift.i377.i, %av_normalize_sf.exit.i375.i ], [ %.sroa.5.0.extract.shift18.i361.i, %av_normalize_sf.exit41.i359.i ], [ 1, %bb.ce ]
  br i1 %i.afx, label %av_add_sf.exit422.i, label %bb.cg

bb.cg:                                            ; preds = %av_add_sf.exit381.i
  %i.anw = icmp sgt i32 %.sroa.4.0.extract.trunc.i.i242, 1
  br i1 %i.anw, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.anx = lshr i32 536870912, %.neg1327.i
  %i.any = add nsw i32 %i.anx, %.sroa.09.0.extract.trunc.i.i240 ; 2 uses
  %i.anz = add i32 %i.any, 1073741824
  %i.aoa = icmp slt i32 %i.anz, 1                 ; 2 uses
  %i.aob = zext i1 %i.aoa to i32
  %.sroa.0.0.i.i406.i = ashr i32 %i.any, %i.aob   ; 4 uses
  %.not.i.i407.i = icmp eq i32 %.sroa.0.0.i.i406.i, 0
  br i1 %.not.i.i407.i, label %av_normalize_sf.exit.i416.i, label %.preheader.i.i408.i

.preheader.i.i408.i:                              ; preds = %bb.ch
  %i.aoc = zext i1 %i.aoa to i64
  %.sroa.5.0.i.i409.i = add nuw nsw i64 %.sroa.4.0.extract.shift.i.i241, %i.aoc
  %.sroa.8.0.extract.trunc.i.i410.i = trunc nuw i64 %.sroa.5.0.i.i409.i to i32 ; 2 uses
  %i.aod = add i32 %.sroa.0.0.i.i406.i, 536870911
  %i.aoe = icmp ult i32 %i.aod, 1073741823
  br i1 %i.aoe, label %.lr.ph.i.i419.i, label %._crit_edge.i.i411.i

.lr.ph.i.i419.i:                                  ; preds = %.preheader.i.i408.i, %.lr.ph.i.i419.i
  %.sroa.0.08.i.i420.i = phi i32 [ %i.aof, %.lr.ph.i.i419.i ], [ %.sroa.0.0.i.i406.i, %.preheader.i.i408.i ]
  %.sroa.8.07.i.i421.i = phi i32 [ %i.aog, %.lr.ph.i.i419.i ], [ %.sroa.8.0.extract.trunc.i.i410.i, %.preheader.i.i408.i ]
  %i.aof = shl nsw i32 %.sroa.0.08.i.i420.i, 1    ; 3 uses
  %i.aog = add nsw i32 %.sroa.8.07.i.i421.i, -1   ; 2 uses
  %i.aoh = add nsw i32 %i.aof, 536870911
  %i.aoi = icmp ult i32 %i.aoh, 1073741823
  br i1 %i.aoi, label %.lr.ph.i.i419.i, label %._crit_edge.i.i411.i, !llvm.loop !2

._crit_edge.i.i411.i:                             ; preds = %.lr.ph.i.i419.i, %.preheader.i.i408.i
  %.sroa.8.0.lcssa.i.i412.i = phi i32 [ %.sroa.8.0.extract.trunc.i.i410.i, %.preheader.i.i408.i ], [ %i.aog, %.lr.ph.i.i419.i ] ; 2 uses
  %.sroa.0.0.lcssa.i.i413.i = phi i32 [ %.sroa.0.0.i.i406.i, %.preheader.i.i408.i ], [ %i.aof, %.lr.ph.i.i419.i ]
  %i.aoj = icmp slt i32 %.sroa.8.0.lcssa.i.i412.i, -149
  %spec.select.i.i414.i = tail call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i.i412.i, i32 -149)
  %spec.select6.i.i415.i = select i1 %i.aoj, i32 0, i32 %.sroa.0.0.lcssa.i.i413.i
  %i.aok = zext i32 %spec.select.i.i414.i to i64
  %i.aol = shl nuw i64 %i.aok, 32
  %i.aom = zext i32 %spec.select6.i.i415.i to i64
  %i.aon = or disjoint i64 %i.aol, %i.aom
  br label %av_normalize_sf.exit.i416.i

av_normalize_sf.exit.i416.i:                      ; preds = %._crit_edge.i.i411.i, %bb.ch
  %.sroa.05.0.insert.insert.i.i417.i = phi i64 [ -639950127104, %bb.ch ], [ %i.aon, %._crit_edge.i.i411.i ] ; 2 uses
  %.sroa.5.0.extract.shift.i418.i = lshr i64 %.sroa.05.0.insert.insert.i.i417.i, 32
  br label %av_add_sf.exit422.i

bb.ci:                                            ; preds = %bb.cg
  %i.aoo = icmp samesign ult i32 %i.afw, 32
  br i1 %i.aoo, label %bb.cj, label %av_add_sf.exit422.i

bb.cj:                                            ; preds = %bb.ci
  %i.aop = ashr i32 %.sroa.09.0.extract.trunc.i.i240, %i.afw ; 2 uses
  %i.aoq = add nsw i32 %i.aop, 536870912
  %i.aor = add i32 %i.aop, 1610612736
  %i.aos = icmp slt i32 %i.aor, 1                 ; 2 uses
  %i.aot = zext i1 %i.aos to i32
  %.sroa.0.0.i24.i390.i = ashr i32 %i.aoq, %i.aot ; 4 uses
  %.not.i29.i391.i = icmp eq i32 %.sroa.0.0.i24.i390.i, 0
  br i1 %.not.i29.i391.i, label %av_normalize_sf.exit41.i400.i, label %.preheader.i30.i392.i

.preheader.i30.i392.i:                            ; preds = %bb.cj
  %.sroa.8.0.extract.trunc.i31.i394.i = select i1 %i.aos, i32 2, i32 1 ; 2 uses
  %i.aou = add i32 %.sroa.0.0.i24.i390.i, 536870911
  %i.aov = icmp ult i32 %i.aou, 1073741823
  br i1 %i.aov, label %.lr.ph.i38.i403.i, label %._crit_edge.i32.i395.i

.lr.ph.i38.i403.i:                                ; preds = %.preheader.i30.i392.i, %.lr.ph.i38.i403.i
  %.sroa.0.08.i39.i404.i = phi i32 [ %i.aow, %.lr.ph.i38.i403.i ], [ %.sroa.0.0.i24.i390.i, %.preheader.i30.i392.i ]
  %.sroa.8.07.i40.i405.i = phi i32 [ %i.aox, %.lr.ph.i38.i403.i ], [ %.sroa.8.0.extract.trunc.i31.i394.i, %.preheader.i30.i392.i ]
  %i.aow = shl nsw i32 %.sroa.0.08.i39.i404.i, 1  ; 3 uses
  %i.aox = add nsw i32 %.sroa.8.07.i40.i405.i, -1 ; 2 uses
  %i.aoy = add nsw i32 %i.aow, 536870911
  %i.aoz = icmp ult i32 %i.aoy, 1073741823
  br i1 %i.aoz, label %.lr.ph.i38.i403.i, label %._crit_edge.i32.i395.i, !llvm.loop !2

._crit_edge.i32.i395.i:                           ; preds = %.lr.ph.i38.i403.i, %.preheader.i30.i392.i
  %.sroa.8.0.lcssa.i33.i396.i = phi i32 [ %.sroa.8.0.extract.trunc.i31.i394.i, %.preheader.i30.i392.i ], [ %i.aox, %.lr.ph.i38.i403.i ] ; 2 uses
  %.sroa.0.0.lcssa.i34.i397.i = phi i32 [ %.sroa.0.0.i24.i390.i, %.preheader.i30.i392.i ], [ %i.aow, %.lr.ph.i38.i403.i ]
  %i.apa = icmp slt i32 %.sroa.8.0.lcssa.i33.i396.i, -149
  %spec.select.i35.i398.i = tail call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i33.i396.i, i32 -149)
  %spec.select6.i36.i399.i = select i1 %i.apa, i32 0, i32 %.sroa.0.0.lcssa.i34.i397.i
  %i.apb = zext i32 %spec.select.i35.i398.i to i64
  %i.apc = shl nuw i64 %i.apb, 32
  %i.apd = zext i32 %spec.select6.i36.i399.i to i64
  %i.ape = or disjoint i64 %i.apc, %i.apd
  br label %av_normalize_sf.exit41.i400.i

av_normalize_sf.exit41.i400.i:                    ; preds = %._crit_edge.i32.i395.i, %bb.cj
  %.sroa.05.0.insert.insert.i37.i401.i = phi i64 [ -639950127104, %bb.cj ], [ %i.ape, %._crit_edge.i32.i395.i ] ; 2 uses
  %.sroa.5.0.extract.shift18.i402.i = lshr i64 %.sroa.05.0.insert.insert.i37.i401.i, 32
  br label %av_add_sf.exit422.i

av_add_sf.exit422.i:                              ; preds = %av_normalize_sf.exit41.i400.i, %bb.ci, %av_normalize_sf.exit.i416.i, %av_add_sf.exit381.i
  %.sroa.016.0.i385.i = phi i64 [ %i.afv, %av_add_sf.exit381.i ], [ %.sroa.05.0.insert.insert.i.i417.i, %av_normalize_sf.exit.i416.i ], [ %.sroa.05.0.insert.insert.i37.i401.i, %av_normalize_sf.exit41.i400.i ], [ 536870912, %bb.ci ]
  %.sroa.5.0.i386.i = phi i64 [ %.sroa.4.0.extract.shift.i.i241, %av_add_sf.exit381.i ], [ %.sroa.5.0.extract.shift.i418.i, %av_normalize_sf.exit.i416.i ], [ %.sroa.5.0.extract.shift18.i402.i, %av_normalize_sf.exit41.i400.i ], [ 1, %bb.ci ]
  %i.apf = shl i64 %.sroa.016.0.i344.i, 32
  %i.apg = ashr exact i64 %i.apf, 32
  %i.aph = shl i64 %.sroa.016.0.i385.i, 32
  %i.api = ashr exact i64 %i.aph, 32
  %i.apj = mul nsw i64 %i.api, %i.apg
  %i.apk = lshr i64 %i.apj, 29
  %i.apl = add nuw nsw i64 %.sroa.5.0.i386.i, %.sroa.5.0.i345.i ; 2 uses
  %.sroa.0.0.extract.trunc.i.i425.i = trunc i64 %i.apk to i32 ; 2 uses
  %i.apm = add nuw nsw i64 %i.apl, 4294967295
  %i.apn = add i32 %.sroa.0.0.extract.trunc.i.i425.i, 1073741824
  %i.apo = icmp slt i32 %i.apn, 1                 ; 2 uses
  %.sroa.5.0.i.i427.v.i = select i1 %i.apo, i64 %i.apl, i64 %i.apm ; 2 uses
  %i.app = zext i1 %i.apo to i32
  %.sroa.0.0.i.i428.i = ashr i32 %.sroa.0.0.extract.trunc.i.i425.i, %i.app ; 2 uses
  %.sroa.5.0.i.i427.i = shl i64 %.sroa.5.0.i.i427.v.i, 32
  %.sroa.02.0.insert.ext.i.i430.i = zext i32 %.sroa.0.0.i.i428.i to i64
  %.sroa.02.0.insert.insert.i.i431.i = or disjoint i64 %.sroa.5.0.i.i427.i, %.sroa.02.0.insert.ext.i.i430.i
  %.sroa.7.0.extract.trunc11.i432.i = trunc i64 %.sroa.5.0.i.i427.v.i to i32
  %i.apq = icmp eq i32 %.sroa.0.0.i.i428.i, 0
  %i.apr = icmp slt i32 %.sroa.7.0.extract.trunc11.i432.i, -149
  %or.cond.i433.i = select i1 %i.apq, i1 true, i1 %i.apr
  %..i434.i = select i1 %or.cond.i433.i, i64 -639950127104, i64 %.sroa.02.0.insert.insert.i.i431.i ; 2 uses
  %.sroa.2.0.extract.shift.i.i = lshr i64 %..i434.i, 32
  %.sroa.2.0.extract.trunc.i437.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i to i32
  %i.aps = shl i64 %..i434.i, 32
  %i.apt = ashr exact i64 %i.aps, 32
  %i.apu = sdiv i64 %i.ahj, %i.apt                ; 3 uses
  %i.apv = sub nsw i32 %.sroa.9.0.extract.trunc.i.i247, %.sroa.2.0.extract.trunc.i437.i ; 2 uses
  %i.apw = add nsw i64 %i.apu, 2147483648
  %.not18.i438.i = icmp ult i64 %i.apw, 4294967296
  br i1 %.not18.i438.i, label %av_div_sf.exit455.i, label %.lr.ph.i439.i

.lr.ph.i439.i:                                    ; preds = %av_add_sf.exit422.i, %.lr.ph.i439.i
  %.020.i440.i = phi i64 [ %i.apx, %.lr.ph.i439.i ], [ %i.apu, %av_add_sf.exit422.i ]
  %.sroa.9.019.i441.i = phi i32 [ %i.apy, %.lr.ph.i439.i ], [ %i.apv, %av_add_sf.exit422.i ]
  %i.apx = sdiv i64 %.020.i440.i, 2               ; 3 uses
  %i.apy = add nsw i32 %.sroa.9.019.i441.i, -1    ; 2 uses
  %i.apz = add nsw i64 %i.apx, 2147483648
  %.not.i442.i = icmp ult i64 %i.apz, 4294967296
  br i1 %.not.i442.i, label %av_div_sf.exit455.i, label %.lr.ph.i439.i, !llvm.loop !1

av_div_sf.exit455.i:                              ; preds = %.lr.ph.i439.i, %av_add_sf.exit422.i
  %.sroa.9.0.lcssa.i443.i = phi i32 [ %i.apv, %av_add_sf.exit422.i ], [ %i.apy, %.lr.ph.i439.i ]
  %.0.lcssa.i444.i = phi i64 [ %i.apu, %av_add_sf.exit422.i ], [ %i.apx, %.lr.ph.i439.i ]
  %.sroa.9.0.insert.ext.i445.i = zext i32 %.sroa.9.0.lcssa.i443.i to i64 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i446.i = trunc nsw i64 %.0.lcssa.i444.i to i32 ; 2 uses
  %i.aqa = add i32 %.sroa.0.0.extract.trunc.i.i446.i, 1073741824
  %i.aqb = icmp slt i32 %i.aqa, 1                 ; 2 uses
  %i.aqc = add nuw nsw i64 %.sroa.9.0.insert.ext.i445.i, 1
  %i.aqd = and i64 %i.aqc, 4294967295
  %.sroa.5.0.i.i447.i = select i1 %i.aqb, i64 %i.aqd, i64 %.sroa.9.0.insert.ext.i445.i ; 2 uses
  %i.aqe = zext i1 %i.aqb to i32
  %.sroa.0.0.i.i448.i = ashr i32 %.sroa.0.0.extract.trunc.i.i446.i, %i.aqe ; 2 uses
  %.sroa.2.0.insert.shift.i.i449.i = shl nuw i64 %.sroa.5.0.i.i447.i, 32
  %.sroa.02.0.insert.ext.i.i450.i = zext i32 %.sroa.0.0.i.i448.i to i64
  %.sroa.02.0.insert.insert.i.i451.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i449.i, %.sroa.02.0.insert.ext.i.i450.i
  %.sroa.9.0.extract.trunc14.i452.i = trunc nuw i64 %.sroa.5.0.i.i447.i to i32
  %i.aqf = icmp eq i32 %.sroa.0.0.i.i448.i, 0
  %i.aqg = icmp slt i32 %.sroa.9.0.extract.trunc14.i452.i, -149
  %or.cond.i453.i = select i1 %i.aqf, i1 true, i1 %i.aqg
  %..i454.i = select i1 %or.cond.i453.i, i64 -639950127104, i64 %.sroa.02.0.insert.insert.i.i451.i ; 2 uses
  %.sroa.0.0.extract.trunc.i286.i = trunc i64 %..i454.i to i32 ; 3 uses
  %i.aqh = icmp eq i32 %.sroa.0.0.extract.trunc.i286.i, 0
  br i1 %i.aqh, label %.thread315, label %bb.ck

bb.ck:                                            ; preds = %av_div_sf.exit455.i
  %i.aqi = icmp slt i32 %.sroa.0.0.extract.trunc.i286.i, 0
  br i1 %i.aqi, label %bb.cl, label %av_sqrt_sf.exit292.i

bb.cl:                                            ; preds = %bb.ck
  tail call void @abort() #13
  unreachable

bb.cm:                                            ; preds = %bb.ca
  br i1 %i.amm, label %av_add_sf.exit496.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.aqj = icmp sgt i32 %.sroa.4.0.extract.trunc.i343.i, 1
  br i1 %i.aqj, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.aqk = lshr i32 536870912, %.neg1331.i
  %i.aql = add nsw i32 %i.aqk, %.sroa.09.0.extract.trunc.i341.i ; 2 uses
  %i.aqm = add i32 %i.aql, 1073741824
  %i.aqn = icmp slt i32 %i.aqm, 1                 ; 2 uses
  %i.aqo = zext i1 %i.aqn to i32
  %.sroa.0.0.i.i480.i = ashr i32 %i.aql, %i.aqo   ; 4 uses
  %.not.i.i481.i = icmp eq i32 %.sroa.0.0.i.i480.i, 0
  br i1 %.not.i.i481.i, label %av_normalize_sf.exit.i490.i, label %.preheader.i.i482.i

.preheader.i.i482.i:                              ; preds = %bb.co
  %i.aqp = zext i1 %i.aqn to i64
  %.sroa.5.0.i.i483.i = add nuw nsw i64 %.sroa.4.0.extract.shift.i342.i, %i.aqp
  %.sroa.8.0.extract.trunc.i.i484.i = trunc nuw i64 %.sroa.5.0.i.i483.i to i32 ; 2 uses
  %i.aqq = add i32 %.sroa.0.0.i.i480.i, 536870911
  %i.aqr = icmp ult i32 %i.aqq, 1073741823
  br i1 %i.aqr, label %.lr.ph.i.i493.i, label %._crit_edge.i.i485.i

.lr.ph.i.i493.i:                                  ; preds = %.preheader.i.i482.i, %.lr.ph.i.i493.i
  %.sroa.0.08.i.i494.i = phi i32 [ %i.aqs, %.lr.ph.i.i493.i ], [ %.sroa.0.0.i.i480.i, %.preheader.i.i482.i ]
  %.sroa.8.07.i.i495.i = phi i32 [ %i.aqt, %.lr.ph.i.i493.i ], [ %.sroa.8.0.extract.trunc.i.i484.i, %.preheader.i.i482.i ]
  %i.aqs = shl nsw i32 %.sroa.0.08.i.i494.i, 1    ; 3 uses
  %i.aqt = add nsw i32 %.sroa.8.07.i.i495.i, -1   ; 2 uses
  %i.aqu = add nsw i32 %i.aqs, 536870911
  %i.aqv = icmp ult i32 %i.aqu, 1073741823
  br i1 %i.aqv, label %.lr.ph.i.i493.i, label %._crit_edge.i.i485.i, !llvm.loop !2

._crit_edge.i.i485.i:                             ; preds = %.lr.ph.i.i493.i, %.preheader.i.i482.i
  %.sroa.8.0.lcssa.i.i486.i = phi i32 [ %.sroa.8.0.extract.trunc.i.i484.i, %.preheader.i.i482.i ], [ %i.aqt, %.lr.ph.i.i493.i ] ; 2 uses
  %.sroa.0.0.lcssa.i.i487.i = phi i32 [ %.sroa.0.0.i.i480.i, %.preheader.i.i482.i ], [ %i.aqs, %.lr.ph.i.i493.i ]
  %i.aqw = icmp slt i32 %.sroa.8.0.lcssa.i.i486.i, -149
  %spec.select.i.i488.i = tail call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i.i486.i, i32 -149)
  %spec.select6.i.i489.i = select i1 %i.aqw, i32 0, i32 %.sroa.0.0.lcssa.i.i487.i
  %i.aqx = zext i32 %spec.select.i.i488.i to i64
  %i.aqy = shl nuw i64 %i.aqx, 32
  %i.aqz = zext i32 %spec.select6.i.i489.i to i64
  %i.ara = or disjoint i64 %i.aqy, %i.aqz
  br label %av_normalize_sf.exit.i490.i

av_normalize_sf.exit.i490.i:                      ; preds = %._crit_edge.i.i485.i, %bb.co
  %.sroa.05.0.insert.insert.i.i491.i = phi i64 [ -639950127104, %bb.co ], [ %i.ara, %._crit_edge.i.i485.i ] ; 2 uses
  %.sroa.5.0.extract.shift.i492.i = lshr i64 %.sroa.05.0.insert.insert.i.i491.i, 32
  br label %av_add_sf.exit496.i

bb.cp:                                            ; preds = %bb.cn
  %i.arb = icmp samesign ult i32 %i.aml, 32
  br i1 %i.arb, label %bb.cq, label %av_add_sf.exit496.i

bb.cq:                                            ; preds = %bb.cp
  %i.arc = ashr i32 %.sroa.09.0.extract.trunc.i341.i, %i.aml ; 2 uses
  %i.ard = add nsw i32 %i.arc, 536870912
  %i.are = add i32 %i.arc, 1610612736
  %i.arf = icmp slt i32 %i.are, 1                 ; 2 uses
  %i.arg = zext i1 %i.arf to i32
  %.sroa.0.0.i24.i464.i = ashr i32 %i.ard, %i.arg ; 4 uses
  %.not.i29.i465.i = icmp eq i32 %.sroa.0.0.i24.i464.i, 0
  br i1 %.not.i29.i465.i, label %av_normalize_sf.exit41.i474.i, label %.preheader.i30.i466.i

.preheader.i30.i466.i:                            ; preds = %bb.cq
  %.sroa.8.0.extract.trunc.i31.i468.i = select i1 %i.arf, i32 2, i32 1 ; 2 uses
  %i.arh = add i32 %.sroa.0.0.i24.i464.i, 536870911
  %i.ari = icmp ult i32 %i.arh, 1073741823
  br i1 %i.ari, label %.lr.ph.i38.i477.i, label %._crit_edge.i32.i469.i

.lr.ph.i38.i477.i:                                ; preds = %.preheader.i30.i466.i, %.lr.ph.i38.i477.i
  %.sroa.0.08.i39.i478.i = phi i32 [ %i.arj, %.lr.ph.i38.i477.i ], [ %.sroa.0.0.i24.i464.i, %.preheader.i30.i466.i ]
  %.sroa.8.07.i40.i479.i = phi i32 [ %i.ark, %.lr.ph.i38.i477.i ], [ %.sroa.8.0.extract.trunc.i31.i468.i, %.preheader.i30.i466.i ]
  %i.arj = shl nsw i32 %.sroa.0.08.i39.i478.i, 1  ; 3 uses
  %i.ark = add nsw i32 %.sroa.8.07.i40.i479.i, -1 ; 2 uses
  %i.arl = add nsw i32 %i.arj, 536870911
  %i.arm = icmp ult i32 %i.arl, 1073741823
  br i1 %i.arm, label %.lr.ph.i38.i477.i, label %._crit_edge.i32.i469.i, !llvm.loop !2

._crit_edge.i32.i469.i:                           ; preds = %.lr.ph.i38.i477.i, %.preheader.i30.i466.i
  %.sroa.8.0.lcssa.i33.i470.i = phi i32 [ %.sroa.8.0.extract.trunc.i31.i468.i, %.preheader.i30.i466.i ], [ %i.ark, %.lr.ph.i38.i477.i ] ; 2 uses
  %.sroa.0.0.lcssa.i34.i471.i = phi i32 [ %.sroa.0.0.i24.i464.i, %.preheader.i30.i466.i ], [ %i.arj, %.lr.ph.i38.i477.i ]
  %i.arn = icmp slt i32 %.sroa.8.0.lcssa.i33.i470.i, -149
  %spec.select.i35.i472.i = tail call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i33.i470.i, i32 -149)
  %spec.select6.i36.i473.i = select i1 %i.arn, i32 0, i32 %.sroa.0.0.lcssa.i34.i471.i
  %i.aro = zext i32 %spec.select.i35.i472.i to i64
  %i.arp = shl nuw i64 %i.aro, 32
  %i.arq = zext i32 %spec.select6.i36.i473.i to i64
  %i.arr = or disjoint i64 %i.arp, %i.arq
  br label %av_normalize_sf.exit41.i474.i

av_normalize_sf.exit41.i474.i:                    ; preds = %._crit_edge.i32.i469.i, %bb.cq
  %.sroa.05.0.insert.insert.i37.i475.i = phi i64 [ -639950127104, %bb.cq ], [ %i.arr, %._crit_edge.i32.i469.i ] ; 2 uses
  %.sroa.5.0.extract.shift18.i476.i = lshr i64 %.sroa.05.0.insert.insert.i37.i475.i, 32
  br label %av_add_sf.exit496.i

av_add_sf.exit496.i:                              ; preds = %av_normalize_sf.exit41.i474.i, %bb.cp, %av_normalize_sf.exit.i490.i, %bb.cm
  %.sroa.016.0.i459.i = phi i64 [ %i.amk, %bb.cm ], [ %.sroa.05.0.insert.insert.i.i491.i, %av_normalize_sf.exit.i490.i ], [ %.sroa.05.0.insert.insert.i37.i475.i, %av_normalize_sf.exit41.i474.i ], [ 536870912, %bb.cp ]
  %.sroa.5.0.i460.i = phi i64 [ %.sroa.4.0.extract.shift.i342.i, %bb.cm ], [ %.sroa.5.0.extract.shift.i492.i, %av_normalize_sf.exit.i490.i ], [ %.sroa.5.0.extract.shift18.i476.i, %av_normalize_sf.exit41.i474.i ], [ 1, %bb.cp ]
  %.sroa.2.0.extract.trunc.i500.i = trunc nuw i64 %.sroa.5.0.i460.i to i32
  %i.ars = shl i64 %.sroa.016.0.i459.i, 32
  %i.art = ashr exact i64 %i.ars, 32
  %i.aru = sdiv i64 %i.ahj, %i.art                ; 3 uses
  %i.arv = sub nsw i32 %.sroa.9.0.extract.trunc.i.i247, %.sroa.2.0.extract.trunc.i500.i ; 2 uses
  %i.arw = add nsw i64 %i.aru, 2147483648
  %.not18.i501.i = icmp ult i64 %i.arw, 4294967296
  br i1 %.not18.i501.i, label %av_div_sf.exit518.i, label %.lr.ph.i502.i

.lr.ph.i502.i:                                    ; preds = %av_add_sf.exit496.i, %.lr.ph.i502.i
  %.020.i503.i = phi i64 [ %i.arx, %.lr.ph.i502.i ], [ %i.aru, %av_add_sf.exit496.i ]
  %.sroa.9.019.i504.i = phi i32 [ %i.ary, %.lr.ph.i502.i ], [ %i.arv, %av_add_sf.exit496.i ]
  %i.arx = sdiv i64 %.020.i503.i, 2               ; 3 uses
  %i.ary = add nsw i32 %.sroa.9.019.i504.i, -1    ; 2 uses
  %i.arz = add nsw i64 %i.arx, 2147483648
  %.not.i505.i = icmp ult i64 %i.arz, 4294967296
  br i1 %.not.i505.i, label %av_div_sf.exit518.i, label %.lr.ph.i502.i, !llvm.loop !1

av_div_sf.exit518.i:                              ; preds = %.lr.ph.i502.i, %av_add_sf.exit496.i
  %.sroa.9.0.lcssa.i506.i = phi i32 [ %i.arv, %av_add_sf.exit496.i ], [ %i.ary, %.lr.ph.i502.i ]
  %.0.lcssa.i507.i = phi i64 [ %i.aru, %av_add_sf.exit496.i ], [ %i.arx, %.lr.ph.i502.i ]
  %.sroa.9.0.insert.ext.i508.i = zext i32 %.sroa.9.0.lcssa.i506.i to i64 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i509.i = trunc nsw i64 %.0.lcssa.i507.i to i32 ; 2 uses
  %i.asa = add i32 %.sroa.0.0.extract.trunc.i.i509.i, 1073741824
  %i.asb = icmp slt i32 %i.asa, 1                 ; 2 uses
  %i.asc = add nuw nsw i64 %.sroa.9.0.insert.ext.i508.i, 1
  %i.asd = and i64 %i.asc, 4294967295
  %.sroa.5.0.i.i510.i = select i1 %i.asb, i64 %i.asd, i64 %.sroa.9.0.insert.ext.i508.i ; 2 uses
  %i.ase = zext i1 %i.asb to i32
  %.sroa.0.0.i.i511.i = ashr i32 %.sroa.0.0.extract.trunc.i.i509.i, %i.ase ; 2 uses
  %.sroa.2.0.insert.shift.i.i512.i = shl nuw i64 %.sroa.5.0.i.i510.i, 32
  %.sroa.02.0.insert.ext.i.i513.i = zext i32 %.sroa.0.0.i.i511.i to i64
  %.sroa.02.0.insert.insert.i.i514.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i512.i, %.sroa.02.0.insert.ext.i.i513.i
  %.sroa.9.0.extract.trunc14.i515.i = trunc nuw i64 %.sroa.5.0.i.i510.i to i32
  %i.asf = icmp eq i32 %.sroa.0.0.i.i511.i, 0
  %i.asg = icmp slt i32 %.sroa.9.0.extract.trunc14.i515.i, -149
  %or.cond.i516.i = select i1 %i.asf, i1 true, i1 %i.asg
  %..i517.i = select i1 %or.cond.i516.i, i64 -639950127104, i64 %.sroa.02.0.insert.insert.i.i514.i ; 2 uses
  %.sroa.0.0.extract.trunc.i279.i = trunc i64 %..i517.i to i32 ; 3 uses
  %i.ash = icmp eq i32 %.sroa.0.0.extract.trunc.i279.i, 0
  br i1 %i.ash, label %.thread315, label %bb.cr

bb.cr:                                            ; preds = %av_div_sf.exit518.i
  %i.asi = icmp slt i32 %.sroa.0.0.extract.trunc.i279.i, 0
  br i1 %i.asi, label %bb.cs, label %av_sqrt_sf.exit292.i

bb.cs:                                            ; preds = %bb.cr
  tail call void @abort() #13
  unreachable

bb.ct:                                            ; preds = %av_sqrt_sf.exit299.i
  %i.asj = ashr exact i64 %i.ahi, 32
  %i.ask = mul nsw i64 %i.asj, %i.aid
  %i.asl = lshr i64 %i.ask, 29
  %.sroa.0.0.insert.insert.i520.i = add i64 %i.ahh, %i.aig
  %.sroa.0.0.extract.trunc.i.i521.i = trunc i64 %i.asl to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i.i522.i = lshr i64 %.sroa.0.0.insert.insert.i520.i, 32 ; 2 uses
  %i.asm = add i32 %.sroa.0.0.extract.trunc.i.i521.i, 1073741824
  %i.asn = icmp slt i32 %i.asm, 1                 ; 2 uses
  %i.aso = add nuw nsw i64 %.sroa.5.0.extract.shift.i.i522.i, 1
  %i.asp = and i64 %i.aso, 4294967295
  %.sroa.5.0.i.i523.i = select i1 %i.asn, i64 %i.asp, i64 %.sroa.5.0.extract.shift.i.i522.i ; 2 uses
  %i.asq = zext i1 %i.asn to i32
  %.sroa.0.0.i.i524.i = ashr i32 %.sroa.0.0.extract.trunc.i.i521.i, %i.asq ; 2 uses
  %.sroa.2.0.insert.shift.i.i525.i = shl nuw i64 %.sroa.5.0.i.i523.i, 32
  %.sroa.02.0.insert.ext.i.i526.i = zext i32 %.sroa.0.0.i.i524.i to i64
  %.sroa.02.0.insert.insert.i.i527.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i525.i, %.sroa.02.0.insert.ext.i.i526.i
  %.sroa.7.0.extract.trunc11.i528.i = trunc nuw i64 %.sroa.5.0.i.i523.i to i32
  %i.asr = icmp eq i32 %.sroa.0.0.i.i524.i, 0
  %i.ass = icmp slt i32 %.sroa.7.0.extract.trunc11.i528.i, -149
  %or.cond.i529.i = select i1 %i.asr, i1 true, i1 %i.ass
  %..i530.i = select i1 %or.cond.i529.i, i64 -639950127104, i64 %.sroa.02.0.insert.insert.i.i527.i ; 2 uses
  %i.ast = getelementptr inbounds [8 x i8], ptr %i.afb, i64 %indvars.iv.i239
  %i.asu = load i64, ptr %i.ast, align 8          ; 3 uses
  %.sroa.09.0.extract.trunc.i531.i = trunc i64 %i.asu to i32 ; 2 uses
  %.sroa.4.0.extract.shift.i532.i = lshr i64 %i.asu, 32 ; 3 uses
  %.sroa.4.0.extract.trunc.i533.i = trunc nuw i64 %.sroa.4.0.extract.shift.i532.i to i32 ; 4 uses
  %.neg1328.i = add nsw i32 %.sroa.4.0.extract.trunc.i533.i, -1
  %i.asv = sub nsw i32 1, %.sroa.4.0.extract.trunc.i533.i ; 2 uses
  %i.asw = icmp sgt i32 %.sroa.4.0.extract.trunc.i533.i, 32
  br i1 %i.asw, label %av_add_sf.exit571.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.asx = icmp sgt i32 %.sroa.4.0.extract.trunc.i533.i, 1
  br i1 %i.asx, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.asy = lshr i32 536870912, %.neg1328.i
  %i.asz = add nsw i32 %i.asy, %.sroa.09.0.extract.trunc.i531.i ; 2 uses
  %i.ata = add i32 %i.asz, 1073741824
  %i.atb = icmp slt i32 %i.ata, 1                 ; 2 uses
  %i.atc = zext i1 %i.atb to i32
  %.sroa.0.0.i.i555.i = ashr i32 %i.asz, %i.atc   ; 4 uses
  %.not.i.i556.i = icmp eq i32 %.sroa.0.0.i.i555.i, 0
  br i1 %.not.i.i556.i, label %av_normalize_sf.exit.i565.i, label %.preheader.i.i557.i

.preheader.i.i557.i:                              ; preds = %bb.cv
  %i.atd = zext i1 %i.atb to i64
  %.sroa.5.0.i.i558.i = add nuw nsw i64 %.sroa.4.0.extract.shift.i532.i, %i.atd
  %.sroa.8.0.extract.trunc.i.i559.i = trunc nuw i64 %.sroa.5.0.i.i558.i to i32 ; 2 uses
  %i.ate = add i32 %.sroa.0.0.i.i555.i, 536870911
  %i.atf = icmp ult i32 %i.ate, 1073741823
  br i1 %i.atf, label %.lr.ph.i.i568.i, label %._crit_edge.i.i560.i

.lr.ph.i.i568.i:                                  ; preds = %.preheader.i.i557.i, %.lr.ph.i.i568.i
  %.sroa.0.08.i.i569.i = phi i32 [ %i.atg, %.lr.ph.i.i568.i ], [ %.sroa.0.0.i.i555.i, %.preheader.i.i557.i ]
  %.sroa.8.07.i.i570.i = phi i32 [ %i.ath, %.lr.ph.i.i568.i ], [ %.sroa.8.0.extract.trunc.i.i559.i, %.preheader.i.i557.i ]
  %i.atg = shl nsw i32 %.sroa.0.08.i.i569.i, 1    ; 3 uses
  %i.ath = add nsw i32 %.sroa.8.07.i.i570.i, -1   ; 2 uses
  %i.ati = add nsw i32 %i.atg, 536870911
  %i.atj = icmp ult i32 %i.ati, 1073741823
  br i1 %i.atj, label %.lr.ph.i.i568.i, label %._crit_edge.i.i560.i, !llvm.loop !2

._crit_edge.i.i560.i:                             ; preds = %.lr.ph.i.i568.i, %.preheader.i.i557.i
  %.sroa.8.0.lcssa.i.i561.i = phi i32 [ %.sroa.8.0.extract.trunc.i.i559.i, %.preheader.i.i557.i ], [ %i.ath, %.lr.ph.i.i568.i ] ; 2 uses
  %.sroa.0.0.lcssa.i.i562.i = phi i32 [ %.sroa.0.0.i.i555.i, %.preheader.i.i557.i ], [ %i.atg, %.lr.ph.i.i568.i ]
  %i.atk = icmp slt i32 %.sroa.8.0.lcssa.i.i561.i, -149
  %spec.select.i.i563.i = tail call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i.i561.i, i32 -149)
  %spec.select6.i.i564.i = select i1 %i.atk, i32 0, i32 %.sroa.0.0.lcssa.i.i562.i
  %i.atl = zext i32 %spec.select.i.i563.i to i64
  %i.atm = shl nuw i64 %i.atl, 32
  %i.atn = zext i32 %spec.select6.i.i564.i to i64
  %i.ato = or disjoint i64 %i.atm, %i.atn
  br label %av_normalize_sf.exit.i565.i

av_normalize_sf.exit.i565.i:                      ; preds = %._crit_edge.i.i560.i, %bb.cv
  %.sroa.05.0.insert.insert.i.i566.i = phi i64 [ -639950127104, %bb.cv ], [ %i.ato, %._crit_edge.i.i560.i ] ; 2 uses
  %.sroa.5.0.extract.shift.i567.i = lshr i64 %.sroa.05.0.insert.insert.i.i566.i, 32
  br label %av_add_sf.exit571.i

bb.cw:                                            ; preds = %bb.cu
  %i.atp = icmp samesign ult i32 %i.asv, 32
  br i1 %i.atp, label %bb.cx, label %av_add_sf.exit571.i

bb.cx:                                            ; preds = %bb.cw
  %i.atq = ashr i32 %.sroa.09.0.extract.trunc.i531.i, %i.asv ; 2 uses
  %i.atr = add nsw i32 %i.atq, 536870912
  %i.ats = add i32 %i.atq, 1610612736
  %i.att = icmp slt i32 %i.ats, 1                 ; 2 uses
  %i.atu = zext i1 %i.att to i32
  %.sroa.0.0.i24.i539.i = ashr i32 %i.atr, %i.atu ; 4 uses
  %.not.i29.i540.i = icmp eq i32 %.sroa.0.0.i24.i539.i, 0
  br i1 %.not.i29.i540.i, label %av_normalize_sf.exit41.i549.i, label %.preheader.i30.i541.i

.preheader.i30.i541.i:                            ; preds = %bb.cx
  %.sroa.8.0.extract.trunc.i31.i543.i = select i1 %i.att, i32 2, i32 1 ; 2 uses
  %i.atv = add i32 %.sroa.0.0.i24.i539.i, 536870911
  %i.atw = icmp ult i32 %i.atv, 1073741823
  br i1 %i.atw, label %.lr.ph.i38.i552.i, label %._crit_edge.i32.i544.i

.lr.ph.i38.i552.i:                                ; preds = %.preheader.i30.i541.i, %.lr.ph.i38.i552.i
  %.sroa.0.08.i39.i553.i = phi i32 [ %i.atx, %.lr.ph.i38.i552.i ], [ %.sroa.0.0.i24.i539.i, %.preheader.i30.i541.i ]
  %.sroa.8.07.i40.i554.i = phi i32 [ %i.aty, %.lr.ph.i38.i552.i ], [ %.sroa.8.0.extract.trunc.i31.i543.i, %.preheader.i30.i541.i ]
  %i.atx = shl nsw i32 %.sroa.0.08.i39.i553.i, 1  ; 3 uses
  %i.aty = add nsw i32 %.sroa.8.07.i40.i554.i, -1 ; 2 uses
  %i.atz = add nsw i32 %i.atx, 536870911
  %i.aua = icmp ult i32 %i.atz, 1073741823
  br i1 %i.aua, label %.lr.ph.i38.i552.i, label %._crit_edge.i32.i544.i, !llvm.loop !2

._crit_edge.i32.i544.i:                           ; preds = %.lr.ph.i38.i552.i, %.preheader.i30.i541.i
  %.sroa.8.0.lcssa.i33.i545.i = phi i32 [ %.sroa.8.0.extract.trunc.i31.i543.i, %.preheader.i30.i541.i ], [ %i.aty, %.lr.ph.i38.i552.i ] ; 2 uses
  %.sroa.0.0.lcssa.i34.i546.i = phi i32 [ %.sroa.0.0.i24.i539.i, %.preheader.i30.i541.i ], [ %i.atx, %.lr.ph.i38.i552.i ]
  %i.aub = icmp slt i32 %.sroa.8.0.lcssa.i33.i545.i, -149
  %spec.select.i35.i547.i = tail call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i33.i545.i, i32 -149)
  %spec.select6.i36.i548.i = select i1 %i.aub, i32 0, i32 %.sroa.0.0.lcssa.i34.i546.i
  %i.auc = zext i32 %spec.select.i35.i547.i to i64
  %i.aud = shl nuw i64 %i.auc, 32
  %i.aue = zext i32 %spec.select6.i36.i548.i to i64
  %i.auf = or disjoint i64 %i.aud, %i.aue
  br label %av_normalize_sf.exit41.i549.i

av_normalize_sf.exit41.i549.i:                    ; preds = %._crit_edge.i32.i544.i, %bb.cx
  %.sroa.05.0.insert.insert.i37.i550.i = phi i64 [ -639950127104, %bb.cx ], [ %i.auf, %._crit_edge.i32.i544.i ] ; 2 uses
  %.sroa.5.0.extract.shift18.i551.i = lshr i64 %.sroa.05.0.insert.insert.i37.i550.i, 32
  br label %av_add_sf.exit571.i

av_add_sf.exit571.i:                              ; preds = %av_normalize_sf.exit41.i549.i, %bb.cw, %av_normalize_sf.exit.i565.i, %bb.ct
  %.sroa.016.0.i534.i = phi i64 [ %i.asu, %bb.ct ], [ %.sroa.05.0.insert.insert.i.i566.i, %av_normalize_sf.exit.i565.i ], [ %.sroa.05.0.insert.insert.i37.i550.i, %av_normalize_sf.exit41.i549.i ], [ 536870912, %bb.cw ]
  %.sroa.5.0.i535.i = phi i64 [ %.sroa.4.0.extract.shift.i532.i, %bb.ct ], [ %.sroa.5.0.extract.shift.i567.i, %av_normalize_sf.exit.i565.i ], [ %.sroa.5.0.extract.shift18.i551.i, %av_normalize_sf.exit41.i549.i ], [ 1, %bb.cw ]
  br i1 %i.afx, label %av_add_sf.exit612.i, label %bb.cy

bb.cy:                                            ; preds = %av_add_sf.exit571.i
  %i.aug = icmp sgt i32 %.sroa.4.0.extract.trunc.i.i242, 1
  br i1 %i.aug, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.auh = lshr i32 536870912, %.neg1327.i
  %i.aui = add nsw i32 %i.auh, %.sroa.09.0.extract.trunc.i.i240 ; 2 uses
  %i.auj = add i32 %i.aui, 1073741824
  %i.auk = icmp slt i32 %i.auj, 1                 ; 2 uses
  %i.aul = zext i1 %i.auk to i32
  %.sroa.0.0.i.i596.i = ashr i32 %i.aui, %i.aul   ; 4 uses
  %.not.i.i597.i = icmp eq i32 %.sroa.0.0.i.i596.i, 0
  br i1 %.not.i.i597.i, label %av_normalize_sf.exit.i606.i, label %.preheader.i.i598.i

.preheader.i.i598.i:                              ; preds = %bb.cz
  %i.aum = zext i1 %i.auk to i64
  %.sroa.5.0.i.i599.i = add nuw nsw i64 %.sroa.4.0.extract.shift.i.i241, %i.aum
  %.sroa.8.0.extract.trunc.i.i600.i = trunc nuw i64 %.sroa.5.0.i.i599.i to i32 ; 2 uses
  %i.aun = add i32 %.sroa.0.0.i.i596.i, 536870911
  %i.auo = icmp ult i32 %i.aun, 1073741823
  br i1 %i.auo, label %.lr.ph.i.i609.i, label %._crit_edge.i.i601.i

.lr.ph.i.i609.i:                                  ; preds = %.preheader.i.i598.i, %.lr.ph.i.i609.i
  %.sroa.0.08.i.i610.i = phi i32 [ %i.aup, %.lr.ph.i.i609.i ], [ %.sroa.0.0.i.i596.i, %.preheader.i.i598.i ]
  %.sroa.8.07.i.i611.i = phi i32 [ %i.auq, %.lr.ph.i.i609.i ], [ %.sroa.8.0.extract.trunc.i.i600.i, %.preheader.i.i598.i ]
  %i.aup = shl nsw i32 %.sroa.0.08.i.i610.i, 1    ; 3 uses
  %i.auq = add nsw i32 %.sroa.8.07.i.i611.i, -1   ; 2 uses
  %i.aur = add nsw i32 %i.aup, 536870911
  %i.aus = icmp ult i32 %i.aur, 1073741823
  br i1 %i.aus, label %.lr.ph.i.i609.i, label %._crit_edge.i.i601.i, !llvm.loop !2

._crit_edge.i.i601.i:                             ; preds = %.lr.ph.i.i609.i, %.preheader.i.i598.i
  %.sroa.8.0.lcssa.i.i602.i = phi i32 [ %.sroa.8.0.extract.trunc.i.i600.i, %.preheader.i.i598.i ], [ %i.auq, %.lr.ph.i.i609.i ] ; 2 uses
  %.sroa.0.0.lcssa.i.i603.i = phi i32 [ %.sroa.0.0.i.i596.i, %.preheader.i.i598.i ], [ %i.aup, %.lr.ph.i.i609.i ]
  %i.aut = icmp slt i32 %.sroa.8.0.lcssa.i.i602.i, -149
  %spec.select.i.i604.i = tail call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i.i602.i, i32 -149)
  %spec.select6.i.i605.i = select i1 %i.aut, i32 0, i32 %.sroa.0.0.lcssa.i.i603.i
  %i.auu = zext i32 %spec.select.i.i604.i to i64
  %i.auv = shl nuw i64 %i.auu, 32
  %i.auw = zext i32 %spec.select6.i.i605.i to i64
  %i.aux = or disjoint i64 %i.auv, %i.auw
  br label %av_normalize_sf.exit.i606.i

av_normalize_sf.exit.i606.i:                      ; preds = %._crit_edge.i.i601.i, %bb.cz
  %.sroa.05.0.insert.insert.i.i607.i = phi i64 [ -639950127104, %bb.cz ], [ %i.aux, %._crit_edge.i.i601.i ] ; 2 uses
  %.sroa.5.0.extract.shift.i608.i = lshr i64 %.sroa.05.0.insert.insert.i.i607.i, 32
  br label %av_add_sf.exit612.i

bb.da:                                            ; preds = %bb.cy
  %i.auy = icmp samesign ult i32 %i.afw, 32
  br i1 %i.auy, label %bb.db, label %av_add_sf.exit612.i

bb.db:                                            ; preds = %bb.da
  %i.auz = ashr i32 %.sroa.09.0.extract.trunc.i.i240, %i.afw ; 2 uses
  %i.ava = add nsw i32 %i.auz, 536870912
  %i.avb = add i32 %i.auz, 1610612736
  %i.avc = icmp slt i32 %i.avb, 1                 ; 2 uses
  %i.avd = zext i1 %i.avc to i32
  %.sroa.0.0.i24.i580.i = ashr i32 %i.ava, %i.avd ; 4 uses
  %.not.i29.i581.i = icmp eq i32 %.sroa.0.0.i24.i580.i, 0
  br i1 %.not.i29.i581.i, label %av_normalize_sf.exit41.i590.i, label %.preheader.i30.i582.i

.preheader.i30.i582.i:                            ; preds = %bb.db
  %.sroa.8.0.extract.trunc.i31.i584.i = select i1 %i.avc, i32 2, i32 1 ; 2 uses
  %i.ave = add i32 %.sroa.0.0.i24.i580.i, 536870911
  %i.avf = icmp ult i32 %i.ave, 1073741823
  br i1 %i.avf, label %.lr.ph.i38.i593.i, label %._crit_edge.i32.i585.i

.lr.ph.i38.i593.i:                                ; preds = %.preheader.i30.i582.i, %.lr.ph.i38.i593.i
  %.sroa.0.08.i39.i594.i = phi i32 [ %i.avg, %.lr.ph.i38.i593.i ], [ %.sroa.0.0.i24.i580.i, %.preheader.i30.i582.i ]
  %.sroa.8.07.i40.i595.i = phi i32 [ %i.avh, %.lr.ph.i38.i593.i ], [ %.sroa.8.0.extract.trunc.i31.i584.i, %.preheader.i30.i582.i ]
  %i.avg = shl nsw i32 %.sroa.0.08.i39.i594.i, 1  ; 3 uses
  %i.avh = add nsw i32 %.sroa.8.07.i40.i595.i, -1 ; 2 uses
  %i.avi = add nsw i32 %i.avg, 536870911
  %i.avj = icmp ult i32 %i.avi, 1073741823
  br i1 %i.avj, label %.lr.ph.i38.i593.i, label %._crit_edge.i32.i585.i, !llvm.loop !2

._crit_edge.i32.i585.i:                           ; preds = %.lr.ph.i38.i593.i, %.preheader.i30.i582.i
  %.sroa.8.0.lcssa.i33.i586.i = phi i32 [ %.sroa.8.0.extract.trunc.i31.i584.i, %.preheader.i30.i582.i ], [ %i.avh, %.lr.ph.i38.i593.i ] ; 2 uses
  %.sroa.0.0.lcssa.i34.i587.i = phi i32 [ %.sroa.0.0.i24.i580.i, %.preheader.i30.i582.i ], [ %i.avg, %.lr.ph.i38.i593.i ]
  %i.avk = icmp slt i32 %.sroa.8.0.lcssa.i33.i586.i, -149
  %spec.select.i35.i588.i = tail call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i33.i586.i, i32 -149)
  %spec.select6.i36.i589.i = select i1 %i.avk, i32 0, i32 %.sroa.0.0.lcssa.i34.i587.i
  %i.avl = zext i32 %spec.select.i35.i588.i to i64
  %i.avm = shl nuw i64 %i.avl, 32
  %i.avn = zext i32 %spec.select6.i36.i589.i to i64
  %i.avo = or disjoint i64 %i.avm, %i.avn
  br label %av_normalize_sf.exit41.i590.i

av_normalize_sf.exit41.i590.i:                    ; preds = %._crit_edge.i32.i585.i, %bb.db
  %.sroa.05.0.insert.insert.i37.i591.i = phi i64 [ -639950127104, %bb.db ], [ %i.avo, %._crit_edge.i32.i585.i ] ; 2 uses
  %.sroa.5.0.extract.shift18.i592.i = lshr i64 %.sroa.05.0.insert.insert.i37.i591.i, 32
  br label %av_add_sf.exit612.i

av_add_sf.exit612.i:                              ; preds = %av_normalize_sf.exit41.i590.i, %bb.da, %av_normalize_sf.exit.i606.i, %av_add_sf.exit571.i
  %.sroa.016.0.i575.i = phi i64 [ %i.afv, %av_add_sf.exit571.i ], [ %.sroa.05.0.insert.insert.i.i607.i, %av_normalize_sf.exit.i606.i ], [ %.sroa.05.0.insert.insert.i37.i591.i, %av_normalize_sf.exit41.i590.i ], [ 536870912, %bb.da ]
  %.sroa.5.0.i576.i = phi i64 [ %.sroa.4.0.extract.shift.i.i241, %av_add_sf.exit571.i ], [ %.sroa.5.0.extract.shift.i608.i, %av_normalize_sf.exit.i606.i ], [ %.sroa.5.0.extract.shift18.i592.i, %av_normalize_sf.exit41.i590.i ], [ 1, %bb.da ]
  %i.avp = shl i64 %.sroa.016.0.i534.i, 32
  %i.avq = ashr exact i64 %i.avp, 32
  %i.avr = shl i64 %.sroa.016.0.i575.i, 32
  %i.avs = ashr exact i64 %i.avr, 32
  %i.avt = mul nsw i64 %i.avs, %i.avq
  %i.avu = lshr i64 %i.avt, 29
  %i.avv = add nuw nsw i64 %.sroa.5.0.i576.i, %.sroa.5.0.i535.i ; 2 uses
  %.sroa.0.0.extract.trunc.i.i615.i = trunc i64 %i.avu to i32 ; 2 uses
  %i.avw = add nuw nsw i64 %i.avv, 4294967295
  %i.avx = add i32 %.sroa.0.0.extract.trunc.i.i615.i, 1073741824
  %i.avy = icmp slt i32 %i.avx, 1                 ; 2 uses
  %.sroa.5.0.i.i617.v.i = select i1 %i.avy, i64 %i.avv, i64 %i.avw ; 2 uses
  %i.avz = zext i1 %i.avy to i32
  %.sroa.0.0.i.i618.i = ashr i32 %.sroa.0.0.extract.trunc.i.i615.i, %i.avz ; 2 uses
  %.sroa.5.0.i.i617.i = shl i64 %.sroa.5.0.i.i617.v.i, 32
  %.sroa.02.0.insert.ext.i.i620.i = zext i32 %.sroa.0.0.i.i618.i to i64
  %.sroa.02.0.insert.insert.i.i621.i = or disjoint i64 %.sroa.5.0.i.i617.i, %.sroa.02.0.insert.ext.i.i620.i
  %.sroa.7.0.extract.trunc11.i622.i = trunc i64 %.sroa.5.0.i.i617.v.i to i32
  %i.awa = icmp eq i32 %.sroa.0.0.i.i618.i, 0
  %i.awb = icmp slt i32 %.sroa.7.0.extract.trunc11.i622.i, -149
  %or.cond.i623.i = select i1 %i.awa, i1 true, i1 %i.awb
  %..i624.i = select i1 %or.cond.i623.i, i64 -639950127104, i64 %.sroa.02.0.insert.insert.i.i621.i ; 2 uses
  %.sroa.9.0.extract.shift.i625.i = lshr i64 %..i530.i, 32
  %.sroa.9.0.extract.trunc.i626.i = trunc nuw i64 %.sroa.9.0.extract.shift.i625.i to i32
  %.sroa.2.0.extract.shift.i627.i = lshr i64 %..i624.i, 32
  %.sroa.2.0.extract.trunc.i628.i = trunc nuw i64 %.sroa.2.0.extract.shift.i627.i to i32
  %i.awc = shl i64 %..i530.i, 32
  %i.awd = ashr exact i64 %i.awc, 2
  %i.awe = shl i64 %..i624.i, 32
  %i.awf = ashr exact i64 %i.awe, 32
  %i.awg = sdiv i64 %i.awd, %i.awf                ; 3 uses
  %i.awh = sub nsw i32 %.sroa.9.0.extract.trunc.i626.i, %.sroa.2.0.extract.trunc.i628.i ; 2 uses
  %i.awi = add nsw i64 %i.awg, 2147483648
  %.not18.i629.i = icmp ult i64 %i.awi, 4294967296
  br i1 %.not18.i629.i, label %av_div_sf.exit646.i, label %.lr.ph.i630.i

.lr.ph.i630.i:                                    ; preds = %av_add_sf.exit612.i, %.lr.ph.i630.i
  %.020.i631.i = phi i64 [ %i.awj, %.lr.ph.i630.i ], [ %i.awg, %av_add_sf.exit612.i ]
  %.sroa.9.019.i632.i = phi i32 [ %i.awk, %.lr.ph.i630.i ], [ %i.awh, %av_add_sf.exit612.i ]
  %i.awj = sdiv i64 %.020.i631.i, 2               ; 3 uses
  %i.awk = add nsw i32 %.sroa.9.019.i632.i, -1    ; 2 uses
  %i.awl = add nsw i64 %i.awj, 2147483648
  %.not.i633.i = icmp ult i64 %i.awl, 4294967296
  br i1 %.not.i633.i, label %av_div_sf.exit646.i, label %.lr.ph.i630.i, !llvm.loop !1

av_div_sf.exit646.i:                              ; preds = %.lr.ph.i630.i, %av_add_sf.exit612.i
  %.sroa.9.0.lcssa.i634.i = phi i32 [ %i.awh, %av_add_sf.exit612.i ], [ %i.awk, %.lr.ph.i630.i ]
  %.0.lcssa.i635.i = phi i64 [ %i.awg, %av_add_sf.exit612.i ], [ %i.awj, %.lr.ph.i630.i ]
  %.sroa.9.0.insert.ext.i636.i = zext i32 %.sroa.9.0.lcssa.i634.i to i64 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i637.i = trunc nsw i64 %.0.lcssa.i635.i to i32 ; 2 uses
  %i.awm = add i32 %.sroa.0.0.extract.trunc.i.i637.i, 1073741824
  %i.awn = icmp slt i32 %i.awm, 1                 ; 2 uses
  %i.awo = add nuw nsw i64 %.sroa.9.0.insert.ext.i636.i, 1
  %i.awp = and i64 %i.awo, 4294967295
  %.sroa.5.0.i.i638.i = select i1 %i.awn, i64 %i.awp, i64 %.sroa.9.0.insert.ext.i636.i ; 2 uses
  %i.awq = zext i1 %i.awn to i32
  %.sroa.0.0.i.i639.i = ashr i32 %.sroa.0.0.extract.trunc.i.i637.i, %i.awq ; 2 uses
  %.sroa.2.0.insert.shift.i.i640.i = shl nuw i64 %.sroa.5.0.i.i638.i, 32
  %.sroa.02.0.insert.ext.i.i641.i = zext i32 %.sroa.0.0.i.i639.i to i64
  %.sroa.02.0.insert.insert.i.i642.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i640.i, %.sroa.02.0.insert.ext.i.i641.i
  %.sroa.9.0.extract.trunc14.i643.i = trunc nuw i64 %.sroa.5.0.i.i638.i to i32
  %i.awr = icmp eq i32 %.sroa.0.0.i.i639.i, 0
  %i.aws = icmp slt i32 %.sroa.9.0.extract.trunc14.i643.i, -149
  %or.cond.i644.i = select i1 %i.awr, i1 true, i1 %i.aws
  %..i645.i = select i1 %or.cond.i644.i, i64 -639950127104, i64 %.sroa.02.0.insert.insert.i.i642.i ; 2 uses
  %.sroa.0.0.extract.trunc.i272.i = trunc i64 %..i645.i to i32 ; 3 uses
  %i.awt = icmp eq i32 %.sroa.0.0.extract.trunc.i272.i, 0
  br i1 %i.awt, label %.thread315, label %bb.dc

bb.dc:                                            ; preds = %av_div_sf.exit646.i
  %i.awu = icmp slt i32 %.sroa.0.0.extract.trunc.i272.i, 0
  br i1 %i.awu, label %bb.dd, label %av_sqrt_sf.exit292.i

bb.dd:                                            ; preds = %bb.dc
  tail call void @abort() #13
  unreachable

.thread315:                                       ; preds = %av_div_sf.exit518.i, %av_div_sf.exit455.i, %av_div_sf.exit646.i
  %i.awv = getelementptr inbounds [8 x i8], ptr %i.afa, i64 %indvars.iv.i239
  br label %bb.dh

av_sqrt_sf.exit292.i:                             ; preds = %bb.ck, %bb.cr, %bb.dc
  %.sroa.0.0.extract.trunc.i272.sink.i = phi i32 [ %.sroa.0.0.extract.trunc.i279.i, %bb.cr ], [ %.sroa.0.0.extract.trunc.i286.i, %bb.ck ], [ %.sroa.0.0.extract.trunc.i272.i, %bb.dc ]
  %..i645.sink.i = phi i64 [ %..i517.i, %bb.cr ], [ %..i454.i, %bb.ck ], [ %..i645.i, %bb.dc ] ; 2 uses
  %.sroa.12.0.extract.shift.i273.sink.i = lshr i64 %..i645.sink.i, 32 ; 2 uses
  %.sroa.12.0.extract.trunc.i274.sink1818.i = trunc nuw i64 %.sroa.12.0.extract.shift.i273.sink.i to i32 ; 2 uses
  %i.aww = add nsw i32 %.sroa.0.0.extract.trunc.i272.sink.i, -536870912
  %i.awx = ashr i32 %i.aww, 20
  %i.awy = and i64 %..i645.sink.i, 1048575        ; 2 uses
  %i.awz = sext i32 %i.awx to i64
  %i.axa = getelementptr inbounds [4 x i8], ptr @av_sqrttbl_sf, i64 %i.awz ; 2 uses
  %i.axb = load i32, ptr %i.axa, align 4, !tbaa !14
  %i.axc = sext i32 %i.axb to i64
  %i.axd = sub nuw nsw i64 1048576, %i.awy
  %i.axe = mul nsw i64 %i.axd, %i.axc
  %i.axf = getelementptr i8, ptr %i.axa, i64 4
  %i.axg = load i32, ptr %i.axf, align 4, !tbaa !14
  %i.axh = sext i32 %i.axg to i64
  %i.axi = mul nsw i64 %i.awy, %i.axh
  %i.axj = add nsw i64 %i.axi, %i.axe
  %i.axk = and i64 %.sroa.12.0.extract.shift.i273.sink.i, 1
  %i.axl = getelementptr inbounds nuw [4 x i8], ptr @av_sqr_exp_multbl_sf, i64 %i.axk
  %i.axm = load i32, ptr %i.axl, align 4, !tbaa !14
  %i.axn = sext i32 %i.axm to i64
  %i.axo = shl i64 %i.axj, 12
  %i.axp = add i64 %i.axo, 2147483648
  %i.axq = ashr i64 %i.axp, 32
  %i.axr = mul nsw i64 %i.axq, %i.axn
  %i.axs = add nsw i64 %i.axr, 268435456
  %i.axt = lshr i64 %i.axs, 29
  %i.axu = trunc i64 %i.axt to i32                ; 2 uses
  %i.axv = icmp sgt i32 %i.axu, 1073741823        ; 2 uses
  %i.axw = add nsw i32 %.sroa.12.0.extract.trunc.i274.sink1818.i, -2
  %.sroa.12.0.i275.i = select i1 %i.axv, i32 %.sroa.12.0.extract.trunc.i274.sink1818.i, i32 %i.axw
  %i.axx = zext i1 %i.axv to i32
  %.sroa.0.0.i276.i = lshr i32 %i.axu, %i.axx     ; 3 uses
  %i.axy = ashr i32 %.sroa.12.0.i275.i, 1         ; 6 uses
  %i.axz = add nsw i32 %i.axy, 1                  ; 2 uses
  %i.aya = zext i32 %i.axz to i64                 ; 2 uses
  %i.ayb = shl nuw i64 %i.aya, 32
  %i.ayc = zext i32 %.sroa.0.0.i276.i to i64
  %i.ayd = or disjoint i64 %i.ayb, %i.ayc
  %i.aye = getelementptr inbounds [8 x i8], ptr %i.afa, i64 %indvars.iv.i239 ; 4 uses
  %i.ayf = add nsw i32 %i.axy, 150
  %i.ayg = icmp slt i32 %i.axy, -181
  br i1 %i.ayg, label %av_add_sf.exit684.i, label %bb.de

bb.de:                                            ; preds = %av_sqrt_sf.exit292.i
  %i.ayh = icmp slt i32 %i.axy, -150
  br i1 %i.ayh, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.ayi = sub nuw nsw i32 -150, %i.axy
  %i.ayj = ashr i32 %.sroa.0.0.i276.i, %i.ayi     ; 2 uses
  %i.ayk = add nsw i32 %i.ayj, 536870912
  %i.ayl = add i32 %i.ayj, 1610612736
  %i.aym = icmp slt i32 %i.ayl, 1                 ; 2 uses
  %i.ayn = zext i1 %i.aym to i32
  %.sroa.0.0.i.i668.i = ashr i32 %i.ayk, %i.ayn   ; 4 uses
  %.not.i.i669.i = icmp eq i32 %.sroa.0.0.i.i668.i, 0
  br i1 %.not.i.i669.i, label %av_normalize_sf.exit.i678.i, label %.preheader.i.i670.i

.preheader.i.i670.i:                              ; preds = %bb.df
  %.sroa.8.0.extract.trunc.i.i672.i = select i1 %i.aym, i32 -148, i32 -149 ; 2 uses
  %i.ayo = add nsw i32 %.sroa.0.0.i.i668.i, 536870911
  %i.ayp = icmp ult i32 %i.ayo, 1073741823
  br i1 %i.ayp, label %.lr.ph.i.i681.i, label %._crit_edge.i.i673.i

.lr.ph.i.i681.i:                                  ; preds = %.preheader.i.i670.i, %.lr.ph.i.i681.i
  %.sroa.0.08.i.i682.i = phi i32 [ %i.ayq, %.lr.ph.i.i681.i ], [ %.sroa.0.0.i.i668.i, %.preheader.i.i670.i ]
  %.sroa.8.07.i.i683.i = phi i32 [ %i.ayr, %.lr.ph.i.i681.i ], [ %.sroa.8.0.extract.trunc.i.i672.i, %.preheader.i.i670.i ]
  %i.ayq = shl nsw i32 %.sroa.0.08.i.i682.i, 1    ; 3 uses
  %i.ayr = add nsw i32 %.sroa.8.07.i.i683.i, -1   ; 2 uses
  %i.ays = add nsw i32 %i.ayq, 536870911
  %i.ayt = icmp ult i32 %i.ays, 1073741823
  br i1 %i.ayt, label %.lr.ph.i.i681.i, label %._crit_edge.i.i673.i, !llvm.loop !2

._crit_edge.i.i673.i:                             ; preds = %.lr.ph.i.i681.i, %.preheader.i.i670.i
  %.sroa.8.0.lcssa.i.i674.i = phi i32 [ %.sroa.8.0.extract.trunc.i.i672.i, %.preheader.i.i670.i ], [ %i.ayr, %.lr.ph.i.i681.i ] ; 2 uses
  %.sroa.0.0.lcssa.i.i675.i = phi i32 [ %.sroa.0.0.i.i668.i, %.preheader.i.i670.i ], [ %i.ayq, %.lr.ph.i.i681.i ]
  %i.ayu = icmp slt i32 %.sroa.8.0.lcssa.i.i674.i, -149
  %spec.select.i.i676.i = tail call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i.i674.i, i32 -149)
  %spec.select6.i.i677.i = select i1 %i.ayu, i32 0, i32 %.sroa.0.0.lcssa.i.i675.i
  %i.ayv = zext i32 %spec.select.i.i676.i to i64
  %i.ayw = shl nuw i64 %i.ayv, 32
  %i.ayx = zext i32 %spec.select6.i.i677.i to i64
  %i.ayy = or disjoint i64 %i.ayw, %i.ayx
  br label %av_normalize_sf.exit.i678.i

av_normalize_sf.exit.i678.i:                      ; preds = %._crit_edge.i.i673.i, %bb.df
  %.sroa.05.0.insert.insert.i.i679.i = phi i64 [ -639950127104, %bb.df ], [ %i.ayy, %._crit_edge.i.i673.i ] ; 2 uses
  %.sroa.5.0.extract.shift.i680.i = lshr i64 %.sroa.05.0.insert.insert.i.i679.i, 32
  br label %av_add_sf.exit684.i

bb.dg:                                            ; preds = %bb.de
  %i.ayz = icmp slt i32 %i.axy, -118
  br i1 %i.ayz, label %bb.dh, label %av_add_sf.exit684.i

bb.dh:                                            ; preds = %.thread315, %bb.dg
  %i.aza = phi i32 [ 0, %.thread315 ], [ %i.ayf, %bb.dg ]
  %.sroa.414.0.extract.shift.i.i270307313320 = phi i32 [ -149, %.thread315 ], [ %i.axz, %bb.dg ]
  %.sroa.012.0.extract.trunc.i.i269306314319 = phi i32 [ 0, %.thread315 ], [ %.sroa.0.0.i276.i, %bb.dg ]
  %i.azb = phi ptr [ %i.awv, %.thread315 ], [ %i.aye, %bb.dg ]
  %i.azc = lshr i32 536870912, %i.aza
  %i.azd = add nsw i32 %.sroa.012.0.extract.trunc.i.i269306314319, %i.azc ; 2 uses
  %i.aze = add i32 %i.azd, 1073741824
  %i.azf = icmp slt i32 %i.aze, 1
  %i.azg = zext i1 %i.azf to i32                  ; 2 uses
  %.sroa.0.0.i24.i652.i = ashr i32 %i.azd, %i.azg ; 4 uses
  %.not.i29.i653.i = icmp eq i32 %.sroa.0.0.i24.i652.i, 0
  br i1 %.not.i29.i653.i, label %av_normalize_sf.exit41.i662.i, label %.preheader.i30.i654.i

.preheader.i30.i654.i:                            ; preds = %bb.dh
  %.sroa.5.0.i23.i655.i = add nuw nsw i32 %.sroa.414.0.extract.shift.i.i270307313320, %i.azg ; 2 uses
  %i.azh = add i32 %.sroa.0.0.i24.i652.i, 536870911
  %i.azi = icmp ult i32 %i.azh, 1073741823
  br i1 %i.azi, label %.lr.ph.i38.i665.i, label %._crit_edge.i32.i657.i

.lr.ph.i38.i665.i:                                ; preds = %.preheader.i30.i654.i, %.lr.ph.i38.i665.i
  %.sroa.0.08.i39.i666.i = phi i32 [ %i.azj, %.lr.ph.i38.i665.i ], [ %.sroa.0.0.i24.i652.i, %.preheader.i30.i654.i ]
  %.sroa.8.07.i40.i667.i = phi i32 [ %i.azk, %.lr.ph.i38.i665.i ], [ %.sroa.5.0.i23.i655.i, %.preheader.i30.i654.i ]
  %i.azj = shl nsw i32 %.sroa.0.08.i39.i666.i, 1  ; 3 uses
  %i.azk = add nsw i32 %.sroa.8.07.i40.i667.i, -1 ; 2 uses
  %i.azl = add nsw i32 %i.azj, 536870911
  %i.azm = icmp ult i32 %i.azl, 1073741823
  br i1 %i.azm, label %.lr.ph.i38.i665.i, label %._crit_edge.i32.i657.i, !llvm.loop !2

._crit_edge.i32.i657.i:                           ; preds = %.lr.ph.i38.i665.i, %.preheader.i30.i654.i
  %.sroa.8.0.lcssa.i33.i658.i = phi i32 [ %.sroa.5.0.i23.i655.i, %.preheader.i30.i654.i ], [ %i.azk, %.lr.ph.i38.i665.i ] ; 2 uses
  %.sroa.0.0.lcssa.i34.i659.i = phi i32 [ %.sroa.0.0.i24.i652.i, %.preheader.i30.i654.i ], [ %i.azj, %.lr.ph.i38.i665.i ]
  %i.azn = icmp slt i32 %.sroa.8.0.lcssa.i33.i658.i, -149
  %spec.select.i35.i660.i = tail call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i33.i658.i, i32 -149)
  %spec.select6.i36.i661.i = select i1 %i.azn, i32 0, i32 %.sroa.0.0.lcssa.i34.i659.i
  %i.azo = zext i32 %spec.select.i35.i660.i to i64
  %i.azp = shl nuw i64 %i.azo, 32
  %i.azq = zext i32 %spec.select6.i36.i661.i to i64
  %i.azr = or disjoint i64 %i.azp, %i.azq
  br label %av_normalize_sf.exit41.i662.i

av_normalize_sf.exit41.i662.i:                    ; preds = %._crit_edge.i32.i657.i, %bb.dh
  %.sroa.05.0.insert.insert.i37.i663.i = phi i64 [ -639950127104, %bb.dh ], [ %i.azr, %._crit_edge.i32.i657.i ] ; 2 uses
  %.sroa.5.0.extract.shift18.i664.i = lshr i64 %.sroa.05.0.insert.insert.i37.i663.i, 32
  br label %av_add_sf.exit684.i

av_add_sf.exit684.i:                              ; preds = %av_normalize_sf.exit41.i662.i, %bb.dg, %av_normalize_sf.exit.i678.i, %av_sqrt_sf.exit292.i
  %i.azs = phi ptr [ %i.aye, %av_sqrt_sf.exit292.i ], [ %i.aye, %av_normalize_sf.exit.i678.i ], [ %i.azb, %av_normalize_sf.exit41.i662.i ], [ %i.aye, %bb.dg ]
  %.sroa.016.0.i647.i = phi i64 [ 536870912, %av_sqrt_sf.exit292.i ], [ %.sroa.05.0.insert.insert.i.i679.i, %av_normalize_sf.exit.i678.i ], [ %.sroa.05.0.insert.insert.i37.i663.i, %av_normalize_sf.exit41.i662.i ], [ %i.ayd, %bb.dg ]
  %.sroa.5.0.i648.i = phi i64 [ 4294967147, %av_sqrt_sf.exit292.i ], [ %.sroa.5.0.extract.shift.i680.i, %av_normalize_sf.exit.i678.i ], [ %.sroa.5.0.extract.shift18.i664.i, %av_normalize_sf.exit41.i662.i ], [ %i.aya, %bb.dg ]
  %.sroa.5.0.insert.shift.i649.i = shl nuw i64 %.sroa.5.0.i648.i, 32
  %.sroa.016.0.insert.ext.i650.i = and i64 %.sroa.016.0.i647.i, 4294967295
  %.sroa.016.0.insert.insert.i651.i = or disjoint i64 %.sroa.5.0.insert.shift.i649.i, %.sroa.016.0.insert.ext.i650.i
  store i64 %.sroa.016.0.insert.insert.i651.i, ptr %i.azs, align 8, !tbaa !14
  %indvars.iv.next.i272 = add nsw i64 %indvars.iv.i239, 1 ; 2 uses
  %i.azt = load i32, ptr %i.lb, align 8, !tbaa !14 ; 2 uses
  %i.azu = sub nsw i32 %i.afm, %i.azt             ; 2 uses
  %i.azv = sext i32 %i.azu to i64
  %i.azw = icmp slt i64 %indvars.iv.next.i272, %i.azv
  br i1 %i.azw, label %.lr.ph.i238, label %._crit_edge.i229, !llvm.loop !193

._crit_edge.i229:                                 ; preds = %av_add_sf.exit684.i, %bb.bp
  %.pn.i = phi i32 [ %i.afg, %bb.bp ], [ %i.azt, %av_add_sf.exit684.i ] ; 5 uses
  %.lcssa1370.i = phi i32 [ %i.afn, %bb.bp ], [ %i.azu, %av_add_sf.exit684.i ] ; 2 uses
  %.pre-phi.i230 = sub nsw i32 %i.afj, %.pn.i     ; 2 uses
  %i.azx = icmp slt i32 %.pre-phi.i230, %.lcssa1370.i
  br i1 %i.azx, label %.lr.ph1450.preheader.i, label %.thread1658.i

.thread1658.i:                                    ; preds = %._crit_edge.i229
  %i.azy = load i32, ptr %i.md, align 16, !tbaa !47
  br label %av_add_sf.exit854.i

.lr.ph1450.preheader.i:                           ; preds = %._crit_edge.i229
  %i.azz = sub i32 0, %.pn.i
  %i.baa = sext i32 %i.azz to i64
  %i.bab = zext i16 %i.afi to i64
  %i.bac = add nsw i64 %i.baa, %i.bab
  %wide.trip.count.i234 = sext i32 %.lcssa1370.i to i64
  br label %.lr.ph1450.i

.lr.ph1450.i:                                     ; preds = %av_add_sf.exit772.i, %.lr.ph1450.preheader.i
  %indvars.iv1566.i = phi i64 [ %i.bac, %.lr.ph1450.preheader.i ], [ %indvars.iv.next1567.i, %av_add_sf.exit772.i ] ; 3 uses
  %.sroa.047.01447.i = phi i64 [ -639950127104, %.lr.ph1450.preheader.i ], [ %.sroa.016.0.insert.insert.i695.i, %av_add_sf.exit772.i ] ; 3 uses
  %.sroa.10.01446.i = phi i64 [ -639950127104, %.lr.ph1450.preheader.i ], [ %.sroa.016.0.insert.insert.i739.i, %av_add_sf.exit772.i ] ; 3 uses
  %i.bad = getelementptr inbounds [8 x i8], ptr %i.aet, i64 %indvars.iv1566.i
  %i.bae = load i64, ptr %i.bad, align 8          ; 3 uses
  %.sroa.012.0.extract.trunc.i685.i = trunc i64 %.sroa.047.01447.i to i32 ; 2 uses
  %.sroa.414.0.extract.shift.i686.i = lshr i64 %.sroa.047.01447.i, 32 ; 3 uses
  %.sroa.414.0.extract.trunc.i687.i = trunc nuw i64 %.sroa.414.0.extract.shift.i686.i to i32
  %.sroa.09.0.extract.trunc.i688.i = trunc i64 %i.bae to i32 ; 2 uses
  %.sroa.4.0.extract.shift.i689.i = lshr i64 %i.bae, 32 ; 3 uses
  %.sroa.4.0.extract.trunc.i690.i = trunc nuw i64 %.sroa.4.0.extract.shift.i689.i to i32
  %i.baf = sub nsw i32 %.sroa.414.0.extract.trunc.i687.i, %.sroa.4.0.extract.trunc.i690.i ; 5 uses
  %i.bag = icmp slt i32 %i.baf, -31
  br i1 %i.bag, label %av_add_sf.exit728.i, label %bb.di

bb.di:                                            ; preds = %.lr.ph1450.i
  %i.bah = icmp slt i32 %i.baf, 0
  br i1 %i.bah, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.bai = sub nsw i32 0, %i.baf
  %i.baj = ashr i32 %.sroa.012.0.extract.trunc.i685.i, %i.bai
  %i.bak = add nsw i32 %i.baj, %.sroa.09.0.extract.trunc.i688.i ; 2 uses
  %i.bal = add i32 %i.bak, 1073741824
  %i.bam = icmp slt i32 %i.bal, 1                 ; 2 uses
  %i.ban = zext i1 %i.bam to i32
  %.sroa.0.0.i.i712.i = ashr i32 %i.bak, %i.ban   ; 4 uses
  %.not.i.i713.i = icmp eq i32 %.sroa.0.0.i.i712.i, 0
  br i1 %.not.i.i713.i, label %av_normalize_sf.exit.i722.i, label %.preheader.i.i714.i

.preheader.i.i714.i:                              ; preds = %bb.dj
  %i.bao = zext i1 %i.bam to i64
  %.sroa.5.0.i.i715.i = add nuw nsw i64 %.sroa.4.0.extract.shift.i689.i, %i.bao
  %.sroa.8.0.extract.trunc.i.i716.i = trunc i64 %.sroa.5.0.i.i715.i to i32 ; 2 uses
  %i.bap = add i32 %.sroa.0.0.i.i712.i, 536870911
  %i.baq = icmp ult i32 %i.bap, 1073741823
  br i1 %i.baq, label %.lr.ph.i.i725.i, label %._crit_edge.i.i717.i

.lr.ph.i.i725.i:                                  ; preds = %.preheader.i.i714.i, %.lr.ph.i.i725.i
  %.sroa.0.08.i.i726.i = phi i32 [ %i.bar, %.lr.ph.i.i725.i ], [ %.sroa.0.0.i.i712.i, %.preheader.i.i714.i ]
  %.sroa.8.07.i.i727.i = phi i32 [ %i.bas, %.lr.ph.i.i725.i ], [ %.sroa.8.0.extract.trunc.i.i716.i, %.preheader.i.i714.i ]
  %i.bar = shl nsw i32 %.sroa.0.08.i.i726.i, 1    ; 3 uses
  %i.bas = add nsw i32 %.sroa.8.07.i.i727.i, -1   ; 2 uses
  %i.bat = add nsw i32 %i.bar, 536870911
  %i.bau = icmp ult i32 %i.bat, 1073741823
  br i1 %i.bau, label %.lr.ph.i.i725.i, label %._crit_edge.i.i717.i, !llvm.loop !2

._crit_edge.i.i717.i:                             ; preds = %.lr.ph.i.i725.i, %.preheader.i.i714.i
  %.sroa.8.0.lcssa.i.i718.i = phi i32 [ %.sroa.8.0.extract.trunc.i.i716.i, %.preheader.i.i714.i ], [ %i.bas, %.lr.ph.i.i725.i ] ; 2 uses
  %.sroa.0.0.lcssa.i.i719.i = phi i32 [ %.sroa.0.0.i.i712.i, %.preheader.i.i714.i ], [ %i.bar, %.lr.ph.i.i725.i ]
  %i.bav = icmp slt i32 %.sroa.8.0.lcssa.i.i718.i, -149
  %spec.select.i.i720.i = tail call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i.i718.i, i32 -149)
  %spec.select6.i.i721.i = select i1 %i.bav, i32 0, i32 %.sroa.0.0.lcssa.i.i719.i
  %i.baw = zext i32 %spec.select.i.i720.i to i64
  %i.bax = shl nuw i64 %i.baw, 32
  %i.bay = zext i32 %spec.select6.i.i721.i to i64
  %i.baz = or disjoint i64 %i.bax, %i.bay
  br label %av_normalize_sf.exit.i722.i

av_normalize_sf.exit.i722.i:                      ; preds = %._crit_edge.i.i717.i, %bb.dj
  %.sroa.05.0.insert.insert.i.i723.i = phi i64 [ -639950127104, %bb.dj ], [ %i.baz, %._crit_edge.i.i717.i ] ; 2 uses
  %.sroa.5.0.extract.shift.i724.i = lshr i64 %.sroa.05.0.insert.insert.i.i723.i, 32
  br label %av_add_sf.exit728.i

bb.dk:                                            ; preds = %bb.di
  %i.bba = icmp samesign ult i32 %i.baf, 32
  br i1 %i.bba, label %bb.dl, label %av_add_sf.exit728.i

bb.dl:                                            ; preds = %bb.dk
  %i.bbb = ashr i32 %.sroa.09.0.extract.trunc.i688.i, %i.baf
  %i.bbc = add nsw i32 %i.bbb, %.sroa.012.0.extract.trunc.i685.i ; 2 uses
  %i.bbd = add i32 %i.bbc, 1073741824
  %i.bbe = icmp slt i32 %i.bbd, 1                 ; 2 uses
  %i.bbf = zext i1 %i.bbe to i32
  %.sroa.0.0.i24.i696.i = ashr i32 %i.bbc, %i.bbf ; 4 uses
  %.not.i29.i697.i = icmp eq i32 %.sroa.0.0.i24.i696.i, 0
  br i1 %.not.i29.i697.i, label %av_normalize_sf.exit41.i706.i, label %.preheader.i30.i698.i

.preheader.i30.i698.i:                            ; preds = %bb.dl
  %i.bbg = zext i1 %i.bbe to i64
  %.sroa.5.0.i23.i699.i = add nuw nsw i64 %.sroa.414.0.extract.shift.i686.i, %i.bbg
  %.sroa.8.0.extract.trunc.i31.i700.i = trunc i64 %.sroa.5.0.i23.i699.i to i32 ; 2 uses
  %i.bbh = add i32 %.sroa.0.0.i24.i696.i, 536870911
  %i.bbi = icmp ult i32 %i.bbh, 1073741823
  br i1 %i.bbi, label %.lr.ph.i38.i709.i, label %._crit_edge.i32.i701.i

.lr.ph.i38.i709.i:                                ; preds = %.preheader.i30.i698.i, %.lr.ph.i38.i709.i
  %.sroa.0.08.i39.i710.i = phi i32 [ %i.bbj, %.lr.ph.i38.i709.i ], [ %.sroa.0.0.i24.i696.i, %.preheader.i30.i698.i ]
  %.sroa.8.07.i40.i711.i = phi i32 [ %i.bbk, %.lr.ph.i38.i709.i ], [ %.sroa.8.0.extract.trunc.i31.i700.i, %.preheader.i30.i698.i ]
  %i.bbj = shl nsw i32 %.sroa.0.08.i39.i710.i, 1  ; 3 uses
  %i.bbk = add nsw i32 %.sroa.8.07.i40.i711.i, -1 ; 2 uses
  %i.bbl = add nsw i32 %i.bbj, 536870911
  %i.bbm = icmp ult i32 %i.bbl, 1073741823
  br i1 %i.bbm, label %.lr.ph.i38.i709.i, label %._crit_edge.i32.i701.i, !llvm.loop !2

._crit_edge.i32.i701.i:                           ; preds = %.lr.ph.i38.i709.i, %.preheader.i30.i698.i
  %.sroa.8.0.lcssa.i33.i702.i = phi i32 [ %.sroa.8.0.extract.trunc.i31.i700.i, %.preheader.i30.i698.i ], [ %i.bbk, %.lr.ph.i38.i709.i ] ; 2 uses
  %.sroa.0.0.lcssa.i34.i703.i = phi i32 [ %.sroa.0.0.i24.i696.i, %.preheader.i30.i698.i ], [ %i.bbj, %.lr.ph.i38.i709.i ]
  %i.bbn = icmp slt i32 %.sroa.8.0.lcssa.i33.i702.i, -149
  %spec.select.i35.i704.i = tail call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i33.i702.i, i32 -149)
  %spec.select6.i36.i705.i = select i1 %i.bbn, i32 0, i32 %.sroa.0.0.lcssa.i34.i703.i
  %i.bbo = zext i32 %spec.select.i35.i704.i to i64
  %i.bbp = shl nuw i64 %i.bbo, 32
  %i.bbq = zext i32 %spec.select6.i36.i705.i to i64
  %i.bbr = or disjoint i64 %i.bbp, %i.bbq
  br label %av_normalize_sf.exit41.i706.i

av_normalize_sf.exit41.i706.i:                    ; preds = %._crit_edge.i32.i701.i, %bb.dl
  %.sroa.05.0.insert.insert.i37.i707.i = phi i64 [ -639950127104, %bb.dl ], [ %i.bbr, %._crit_edge.i32.i701.i ] ; 2 uses
  %.sroa.5.0.extract.shift18.i708.i = lshr i64 %.sroa.05.0.insert.insert.i37.i707.i, 32
  br label %av_add_sf.exit728.i

av_add_sf.exit728.i:                              ; preds = %av_normalize_sf.exit41.i706.i, %bb.dk, %av_normalize_sf.exit.i722.i, %.lr.ph1450.i
  %.sroa.016.0.i691.i = phi i64 [ %i.bae, %.lr.ph1450.i ], [ %.sroa.05.0.insert.insert.i.i723.i, %av_normalize_sf.exit.i722.i ], [ %.sroa.05.0.insert.insert.i37.i707.i, %av_normalize_sf.exit41.i706.i ], [ %.sroa.047.01447.i, %bb.dk ] ; 2 uses
  %.sroa.5.0.i692.i = phi i64 [ %.sroa.4.0.extract.shift.i689.i, %.lr.ph1450.i ], [ %.sroa.5.0.extract.shift.i724.i, %av_normalize_sf.exit.i722.i ], [ %.sroa.5.0.extract.shift18.i708.i, %av_normalize_sf.exit41.i706.i ], [ %.sroa.414.0.extract.shift.i686.i, %bb.dk ] ; 5 uses
  %.sroa.5.0.insert.shift.i693.i = shl nuw i64 %.sroa.5.0.i692.i, 32
  %.sroa.016.0.insert.ext.i694.i = and i64 %.sroa.016.0.i691.i, 4294967295
  %.sroa.016.0.insert.insert.i695.i = or disjoint i64 %.sroa.5.0.insert.shift.i693.i, %.sroa.016.0.insert.ext.i694.i ; 2 uses
  %i.bbs = getelementptr inbounds [8 x i8], ptr %i.afb, i64 %indvars.iv1566.i
  %i.bbt = load i64, ptr %i.bbs, align 8          ; 3 uses
  %.sroa.012.0.extract.trunc.i729.i = trunc i64 %.sroa.10.01446.i to i32 ; 2 uses
  %.sroa.414.0.extract.shift.i730.i = lshr i64 %.sroa.10.01446.i, 32 ; 3 uses
  %.sroa.414.0.extract.trunc.i731.i = trunc nuw i64 %.sroa.414.0.extract.shift.i730.i to i32
  %.sroa.09.0.extract.trunc.i732.i = trunc i64 %i.bbt to i32 ; 2 uses
  %.sroa.4.0.extract.shift.i733.i = lshr i64 %i.bbt, 32 ; 3 uses
  %.sroa.4.0.extract.trunc.i734.i = trunc nuw i64 %.sroa.4.0.extract.shift.i733.i to i32
  %i.bbu = sub nsw i32 %.sroa.414.0.extract.trunc.i731.i, %.sroa.4.0.extract.trunc.i734.i ; 5 uses
  %i.bbv = icmp slt i32 %i.bbu, -31
  br i1 %i.bbv, label %av_add_sf.exit772.i, label %bb.dm

bb.dm:                                            ; preds = %av_add_sf.exit728.i
  %i.bbw = icmp slt i32 %i.bbu, 0
  br i1 %i.bbw, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.bbx = sub nsw i32 0, %i.bbu
  %i.bby = ashr i32 %.sroa.012.0.extract.trunc.i729.i, %i.bbx
  %i.bbz = add nsw i32 %i.bby, %.sroa.09.0.extract.trunc.i732.i ; 2 uses
  %i.bca = add i32 %i.bbz, 1073741824
  %i.bcb = icmp slt i32 %i.bca, 1                 ; 2 uses
  %i.bcc = zext i1 %i.bcb to i32
  %.sroa.0.0.i.i756.i = ashr i32 %i.bbz, %i.bcc   ; 4 uses
  %.not.i.i757.i = icmp eq i32 %.sroa.0.0.i.i756.i, 0
  br i1 %.not.i.i757.i, label %av_normalize_sf.exit.i766.i, label %.preheader.i.i758.i

.preheader.i.i758.i:                              ; preds = %bb.dn
  %i.bcd = zext i1 %i.bcb to i64
  %.sroa.5.0.i.i759.i = add nuw nsw i64 %.sroa.4.0.extract.shift.i733.i, %i.bcd
  %.sroa.8.0.extract.trunc.i.i760.i = trunc i64 %.sroa.5.0.i.i759.i to i32 ; 2 uses
  %i.bce = add i32 %.sroa.0.0.i.i756.i, 536870911
  %i.bcf = icmp ult i32 %i.bce, 1073741823
  br i1 %i.bcf, label %.lr.ph.i.i769.i, label %._crit_edge.i.i761.i

.lr.ph.i.i769.i:                                  ; preds = %.preheader.i.i758.i, %.lr.ph.i.i769.i
  %.sroa.0.08.i.i770.i = phi i32 [ %i.bcg, %.lr.ph.i.i769.i ], [ %.sroa.0.0.i.i756.i, %.preheader.i.i758.i ]
  %.sroa.8.07.i.i771.i = phi i32 [ %i.bch, %.lr.ph.i.i769.i ], [ %.sroa.8.0.extract.trunc.i.i760.i, %.preheader.i.i758.i ]
  %i.bcg = shl nsw i32 %.sroa.0.08.i.i770.i, 1    ; 3 uses
  %i.bch = add nsw i32 %.sroa.8.07.i.i771.i, -1   ; 2 uses
  %i.bci = add nsw i32 %i.bcg, 536870911
  %i.bcj = icmp ult i32 %i.bci, 1073741823
  br i1 %i.bcj, label %.lr.ph.i.i769.i, label %._crit_edge.i.i761.i, !llvm.loop !2

._crit_edge.i.i761.i:                             ; preds = %.lr.ph.i.i769.i, %.preheader.i.i758.i
  %.sroa.8.0.lcssa.i.i762.i = phi i32 [ %.sroa.8.0.extract.trunc.i.i760.i, %.preheader.i.i758.i ], [ %i.bch, %.lr.ph.i.i769.i ] ; 2 uses
  %.sroa.0.0.lcssa.i.i763.i = phi i32 [ %.sroa.0.0.i.i756.i, %.preheader.i.i758.i ], [ %i.bcg, %.lr.ph.i.i769.i ]
  %i.bck = icmp slt i32 %.sroa.8.0.lcssa.i.i762.i, -149
  %spec.select.i.i764.i = tail call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i.i762.i, i32 -149)
  %spec.select6.i.i765.i = select i1 %i.bck, i32 0, i32 %.sroa.0.0.lcssa.i.i763.i
  %i.bcl = zext i32 %spec.select.i.i764.i to i64
  %i.bcm = shl nuw i64 %i.bcl, 32
  %i.bcn = zext i32 %spec.select6.i.i765.i to i64
  %i.bco = or disjoint i64 %i.bcm, %i.bcn
  br label %av_normalize_sf.exit.i766.i

av_normalize_sf.exit.i766.i:                      ; preds = %._crit_edge.i.i761.i, %bb.dn
  %.sroa.05.0.insert.insert.i.i767.i = phi i64 [ -639950127104, %bb.dn ], [ %i.bco, %._crit_edge.i.i761.i ] ; 2 uses
  %.sroa.5.0.extract.shift.i768.i = lshr i64 %.sroa.05.0.insert.insert.i.i767.i, 32
  br label %av_add_sf.exit772.i

bb.do:                                            ; preds = %bb.dm
  %i.bcp = icmp samesign ult i32 %i.bbu, 32
  br i1 %i.bcp, label %bb.dp, label %av_add_sf.exit772.i

bb.dp:                                            ; preds = %bb.do
  %i.bcq = ashr i32 %.sroa.09.0.extract.trunc.i732.i, %i.bbu
  %i.bcr = add nsw i32 %i.bcq, %.sroa.012.0.extract.trunc.i729.i ; 2 uses
  %i.bcs = add i32 %i.bcr, 1073741824
  %i.bct = icmp slt i32 %i.bcs, 1                 ; 2 uses
  %i.bcu = zext i1 %i.bct to i32
  %.sroa.0.0.i24.i740.i = ashr i32 %i.bcr, %i.bcu ; 4 uses
  %.not.i29.i741.i = icmp eq i32 %.sroa.0.0.i24.i740.i, 0
  br i1 %.not.i29.i741.i, label %av_normalize_sf.exit41.i750.i, label %.preheader.i30.i742.i

.preheader.i30.i742.i:                            ; preds = %bb.dp
  %i.bcv = zext i1 %i.bct to i64
  %.sroa.5.0.i23.i743.i = add nuw nsw i64 %.sroa.414.0.extract.shift.i730.i, %i.bcv
  %.sroa.8.0.extract.trunc.i31.i744.i = trunc i64 %.sroa.5.0.i23.i743.i to i32 ; 2 uses
  %i.bcw = add i32 %.sroa.0.0.i24.i740.i, 536870911
  %i.bcx = icmp ult i32 %i.bcw, 1073741823
  br i1 %i.bcx, label %.lr.ph.i38.i753.i, label %._crit_edge.i32.i745.i

.lr.ph.i38.i753.i:                                ; preds = %.preheader.i30.i742.i, %.lr.ph.i38.i753.i
  %.sroa.0.08.i39.i754.i = phi i32 [ %i.bcy, %.lr.ph.i38.i753.i ], [ %.sroa.0.0.i24.i740.i, %.preheader.i30.i742.i ]
  %.sroa.8.07.i40.i755.i = phi i32 [ %i.bcz, %.lr.ph.i38.i753.i ], [ %.sroa.8.0.extract.trunc.i31.i744.i, %.preheader.i30.i742.i ]
  %i.bcy = shl nsw i32 %.sroa.0.08.i39.i754.i, 1  ; 3 uses
  %i.bcz = add nsw i32 %.sroa.8.07.i40.i755.i, -1 ; 2 uses
  %i.bda = add nsw i32 %i.bcy, 536870911
  %i.bdb = icmp ult i32 %i.bda, 1073741823
  br i1 %i.bdb, label %.lr.ph.i38.i753.i, label %._crit_edge.i32.i745.i, !llvm.loop !2

._crit_edge.i32.i745.i:                           ; preds = %.lr.ph.i38.i753.i, %.preheader.i30.i742.i
  %.sroa.8.0.lcssa.i33.i746.i = phi i32 [ %.sroa.8.0.extract.trunc.i31.i744.i, %.preheader.i30.i742.i ], [ %i.bcz, %.lr.ph.i38.i753.i ] ; 2 uses
  %.sroa.0.0.lcssa.i34.i747.i = phi i32 [ %.sroa.0.0.i24.i740.i, %.preheader.i30.i742.i ], [ %i.bcy, %.lr.ph.i38.i753.i ]
  %i.bdc = icmp slt i32 %.sroa.8.0.lcssa.i33.i746.i, -149
  %spec.select.i35.i748.i = tail call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i33.i746.i, i32 -149)
  %spec.select6.i36.i749.i = select i1 %i.bdc, i32 0, i32 %.sroa.0.0.lcssa.i34.i747.i
  %i.bdd = zext i32 %spec.select.i35.i748.i to i64
  %i.bde = shl nuw i64 %i.bdd, 32
  %i.bdf = zext i32 %spec.select6.i36.i749.i to i64
  %i.bdg = or disjoint i64 %i.bde, %i.bdf
  br label %av_normalize_sf.exit41.i750.i

av_normalize_sf.exit41.i750.i:                    ; preds = %._crit_edge.i32.i745.i, %bb.dp
  %.sroa.05.0.insert.insert.i37.i751.i = phi i64 [ -639950127104, %bb.dp ], [ %i.bdg, %._crit_edge.i32.i745.i ] ; 2 uses
  %.sroa.5.0.extract.shift18.i752.i = lshr i64 %.sroa.05.0.insert.insert.i37.i751.i, 32
  br label %av_add_sf.exit772.i

av_add_sf.exit772.i:                              ; preds = %av_normalize_sf.exit41.i750.i, %bb.do, %av_normalize_sf.exit.i766.i, %av_add_sf.exit728.i
  %.sroa.016.0.i735.i = phi i64 [ %i.bbt, %av_add_sf.exit728.i ], [ %.sroa.05.0.insert.insert.i.i767.i, %av_normalize_sf.exit.i766.i ], [ %.sroa.05.0.insert.insert.i37.i751.i, %av_normalize_sf.exit41.i750.i ], [ %.sroa.10.01446.i, %bb.do ] ; 2 uses
  %.sroa.5.0.i736.i = phi i64 [ %.sroa.4.0.extract.shift.i733.i, %av_add_sf.exit728.i ], [ %.sroa.5.0.extract.shift.i768.i, %av_normalize_sf.exit.i766.i ], [ %.sroa.5.0.extract.shift18.i752.i, %av_normalize_sf.exit41.i750.i ], [ %.sroa.414.0.extract.shift.i730.i, %bb.do ] ; 5 uses
  %.sroa.5.0.insert.shift.i737.i = shl nuw i64 %.sroa.5.0.i736.i, 32
  %.sroa.016.0.insert.ext.i738.i = and i64 %.sroa.016.0.i735.i, 4294967295
  %.sroa.016.0.insert.insert.i739.i = or disjoint i64 %.sroa.5.0.insert.shift.i737.i, %.sroa.016.0.insert.ext.i738.i ; 2 uses
  %indvars.iv.next1567.i = add nsw i64 %indvars.iv1566.i, 1 ; 2 uses
  %exitcond.not.i235 = icmp eq i64 %indvars.iv.next1567.i, %wide.trip.count.i234
  br i1 %exitcond.not.i235, label %._crit_edge1451.i, label %.lr.ph1450.i, !llvm.loop !194

._crit_edge1451.i:                                ; preds = %av_add_sf.exit772.i
  %i.bdh = load i32, ptr %i.md, align 16, !tbaa !47 ; 4 uses
  %.sroa.09.0.extract.trunc.i773.i = trunc i64 %.sroa.016.0.i691.i to i32 ; 2 uses
  %.sroa.4.0.extract.trunc.i775.i = trunc nuw i64 %.sroa.5.0.i692.i to i32 ; 4 uses
  %.neg.i236 = add nsw i32 %.sroa.4.0.extract.trunc.i775.i, 16
  %i.bdi = sub nuw nsw i32 -16, %.sroa.4.0.extract.trunc.i775.i
  %i.bdj = icmp sgt i32 %.sroa.4.0.extract.trunc.i775.i, 15
  br i1 %i.bdj, label %av_add_sf.exit813.i, label %bb.dq

bb.dq:                                            ; preds = %._crit_edge1451.i
  %i.bdk = icmp sgt i32 %.sroa.4.0.extract.trunc.i775.i, -16
  br i1 %i.bdk, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.bdl = lshr i32 703687442, %.neg.i236
  %i.bdm = add nsw i32 %i.bdl, %.sroa.09.0.extract.trunc.i773.i ; 2 uses
  %i.bdn = add i32 %i.bdm, 1073741824
  %i.bdo = icmp slt i32 %i.bdn, 1                 ; 2 uses
  %i.bdp = zext i1 %i.bdo to i32
  %.sroa.0.0.i.i797.i = ashr i32 %i.bdm, %i.bdp   ; 4 uses
  %.not.i.i798.i = icmp eq i32 %.sroa.0.0.i.i797.i, 0
  br i1 %.not.i.i798.i, label %av_normalize_sf.exit.i807.i, label %.preheader.i.i799.i

.preheader.i.i799.i:                              ; preds = %bb.dr
  %i.bdq = zext i1 %i.bdo to i64
  %.sroa.5.0.i.i800.i = add nuw nsw i64 %.sroa.5.0.i692.i, %i.bdq
  %.sroa.8.0.extract.trunc.i.i801.i = trunc i64 %.sroa.5.0.i.i800.i to i32 ; 2 uses
  %i.bdr = add i32 %.sroa.0.0.i.i797.i, 536870911
  %i.bds = icmp ult i32 %i.bdr, 1073741823
  br i1 %i.bds, label %.lr.ph.i.i810.i, label %._crit_edge.i.i802.i

.lr.ph.i.i810.i:                                  ; preds = %.preheader.i.i799.i, %.lr.ph.i.i810.i
  %.sroa.0.08.i.i811.i = phi i32 [ %i.bdt, %.lr.ph.i.i810.i ], [ %.sroa.0.0.i.i797.i, %.preheader.i.i799.i ]
  %.sroa.8.07.i.i812.i = phi i32 [ %i.bdu, %.lr.ph.i.i810.i ], [ %.sroa.8.0.extract.trunc.i.i801.i, %.preheader.i.i799.i ]
  %i.bdt = shl nsw i32 %.sroa.0.08.i.i811.i, 1    ; 3 uses
  %i.bdu = add nsw i32 %.sroa.8.07.i.i812.i, -1   ; 2 uses
  %i.bdv = add nsw i32 %i.bdt, 536870911
  %i.bdw = icmp ult i32 %i.bdv, 1073741823
  br i1 %i.bdw, label %.lr.ph.i.i810.i, label %._crit_edge.i.i802.i, !llvm.loop !2

._crit_edge.i.i802.i:                             ; preds = %.lr.ph.i.i810.i, %.preheader.i.i799.i
  %.sroa.8.0.lcssa.i.i803.i = phi i32 [ %.sroa.8.0.extract.trunc.i.i801.i, %.preheader.i.i799.i ], [ %i.bdu, %.lr.ph.i.i810.i ] ; 2 uses
  %.sroa.0.0.lcssa.i.i804.i = phi i32 [ %.sroa.0.0.i.i797.i, %.preheader.i.i799.i ], [ %i.bdt, %.lr.ph.i.i810.i ]
  %i.bdx = icmp slt i32 %.sroa.8.0.lcssa.i.i803.i, -149
  %spec.select.i.i805.i = tail call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i.i803.i, i32 -149)
  %spec.select6.i.i806.i = select i1 %i.bdx, i32 0, i32 %.sroa.0.0.lcssa.i.i804.i
  %i.bdy = zext i32 %spec.select.i.i805.i to i64
  %i.bdz = shl nuw i64 %i.bdy, 32
  %i.bea = zext i32 %spec.select6.i.i806.i to i64
  %i.beb = or disjoint i64 %i.bdz, %i.bea
  br label %av_normalize_sf.exit.i807.i

av_normalize_sf.exit.i807.i:                      ; preds = %._crit_edge.i.i802.i, %bb.dr
  %.sroa.05.0.insert.insert.i.i808.i = phi i64 [ -639950127104, %bb.dr ], [ %i.beb, %._crit_edge.i.i802.i ] ; 2 uses
  %.sroa.5.0.extract.shift.i809.i = lshr i64 %.sroa.05.0.insert.insert.i.i808.i, 32
  br label %av_add_sf.exit813.i

bb.ds:                                            ; preds = %bb.dq
  %i.bec = icmp samesign ugt i64 %.sroa.5.0.i692.i, 4294967248
  br i1 %i.bec, label %bb.dt, label %av_add_sf.exit813.i

bb.dt:                                            ; preds = %bb.ds
  %i.bed = ashr i32 %.sroa.09.0.extract.trunc.i773.i, %i.bdi ; 2 uses
  %i.bee = add nsw i32 %i.bed, 703687442
  %i.bef = add i32 %i.bed, 1777429266
  %i.beg = icmp slt i32 %i.bef, 1                 ; 2 uses
  %i.beh = zext i1 %i.beg to i32
  %.sroa.0.0.i24.i781.i = ashr i32 %i.bee, %i.beh ; 4 uses
  %.not.i29.i782.i = icmp eq i32 %.sroa.0.0.i24.i781.i, 0
  br i1 %.not.i29.i782.i, label %av_normalize_sf.exit41.i791.i, label %.preheader.i30.i783.i

.preheader.i30.i783.i:                            ; preds = %bb.dt
  %.sroa.8.0.extract.trunc.i31.i785.i = select i1 %i.beg, i32 -15, i32 -16 ; 2 uses
  %i.bei = add i32 %.sroa.0.0.i24.i781.i, 536870911
  %i.bej = icmp ult i32 %i.bei, 1073741823
  br i1 %i.bej, label %.lr.ph.i38.i794.i, label %._crit_edge.i32.i786.i

.lr.ph.i38.i794.i:                                ; preds = %.preheader.i30.i783.i, %.lr.ph.i38.i794.i
  %.sroa.0.08.i39.i795.i = phi i32 [ %i.bek, %.lr.ph.i38.i794.i ], [ %.sroa.0.0.i24.i781.i, %.preheader.i30.i783.i ]
  %.sroa.8.07.i40.i796.i = phi i32 [ %i.bel, %.lr.ph.i38.i794.i ], [ %.sroa.8.0.extract.trunc.i31.i785.i, %.preheader.i30.i783.i ]
  %i.bek = shl nsw i32 %.sroa.0.08.i39.i795.i, 1  ; 3 uses
  %i.bel = add nsw i32 %.sroa.8.07.i40.i796.i, -1 ; 2 uses
  %i.bem = add nsw i32 %i.bek, 536870911
  %i.ben = icmp ult i32 %i.bem, 1073741823
  br i1 %i.ben, label %.lr.ph.i38.i794.i, label %._crit_edge.i32.i786.i, !llvm.loop !2

._crit_edge.i32.i786.i:                           ; preds = %.lr.ph.i38.i794.i, %.preheader.i30.i783.i
  %.sroa.8.0.lcssa.i33.i787.i = phi i32 [ %.sroa.8.0.extract.trunc.i31.i785.i, %.preheader.i30.i783.i ], [ %i.bel, %.lr.ph.i38.i794.i ] ; 2 uses
  %.sroa.0.0.lcssa.i34.i788.i = phi i32 [ %.sroa.0.0.i24.i781.i, %.preheader.i30.i783.i ], [ %i.bek, %.lr.ph.i38.i794.i ]
  %i.beo = icmp slt i32 %.sroa.8.0.lcssa.i33.i787.i, -149
  %spec.select.i35.i789.i = tail call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i33.i787.i, i32 -149)
  %spec.select6.i36.i790.i = select i1 %i.beo, i32 0, i32 %.sroa.0.0.lcssa.i34.i788.i
  %i.bep = zext i32 %spec.select.i35.i789.i to i64
  %i.beq = shl nuw i64 %i.bep, 32
  %i.ber = zext i32 %spec.select6.i36.i790.i to i64
  %i.bes = or disjoint i64 %i.beq, %i.ber
  br label %av_normalize_sf.exit41.i791.i

av_normalize_sf.exit41.i791.i:                    ; preds = %._crit_edge.i32.i786.i, %bb.dt
  %.sroa.05.0.insert.insert.i37.i792.i = phi i64 [ -639950127104, %bb.dt ], [ %i.bes, %._crit_edge.i32.i786.i ] ; 2 uses
  %.sroa.5.0.extract.shift18.i793.i = lshr i64 %.sroa.05.0.insert.insert.i37.i792.i, 32
  br label %av_add_sf.exit813.i

av_add_sf.exit813.i:                              ; preds = %av_normalize_sf.exit41.i791.i, %bb.ds, %av_normalize_sf.exit.i807.i, %._crit_edge1451.i
  %.sroa.016.0.i776.i = phi i64 [ %.sroa.016.0.insert.insert.i695.i, %._crit_edge1451.i ], [ %.sroa.05.0.insert.insert.i.i808.i, %av_normalize_sf.exit.i807.i ], [ %.sroa.05.0.insert.insert.i37.i792.i, %av_normalize_sf.exit41.i791.i ], [ 703687442, %bb.ds ] ; 4 uses
  %.sroa.5.0.i777.i = phi i64 [ %.sroa.5.0.i692.i, %._crit_edge1451.i ], [ %.sroa.5.0.extract.shift.i809.i, %av_normalize_sf.exit.i807.i ], [ %.sroa.5.0.extract.shift18.i793.i, %av_normalize_sf.exit41.i791.i ], [ 4294967280, %bb.ds ] ; 4 uses
  %.sroa.09.0.extract.trunc.i814.i = trunc i64 %.sroa.016.0.i735.i to i32 ; 2 uses
  %.sroa.4.0.extract.trunc.i816.i = trunc nuw i64 %.sroa.5.0.i736.i to i32 ; 4 uses
  %.neg1324.i = add nsw i32 %.sroa.4.0.extract.trunc.i816.i, 16
  %i.bet = sub nuw nsw i32 -16, %.sroa.4.0.extract.trunc.i816.i
  %i.beu = icmp sgt i32 %.sroa.4.0.extract.trunc.i816.i, 15
  br i1 %i.beu, label %av_add_sf.exit854.i, label %bb.du

bb.du:                                            ; preds = %av_add_sf.exit813.i
  %i.bev = icmp sgt i32 %.sroa.4.0.extract.trunc.i816.i, -16
  br i1 %i.bev, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.bew = lshr i32 703687442, %.neg1324.i
  %i.bex = add nsw i32 %i.bew, %.sroa.09.0.extract.trunc.i814.i ; 2 uses
  %i.bey = add i32 %i.bex, 1073741824
  %i.bez = icmp slt i32 %i.bey, 1                 ; 2 uses
  %i.bfa = zext i1 %i.bez to i32
  %.sroa.0.0.i.i838.i = ashr i32 %i.bex, %i.bfa   ; 4 uses
  %.not.i.i839.i = icmp eq i32 %.sroa.0.0.i.i838.i, 0
  br i1 %.not.i.i839.i, label %av_normalize_sf.exit.i848.i, label %.preheader.i.i840.i

.preheader.i.i840.i:                              ; preds = %bb.dv
  %i.bfb = zext i1 %i.bez to i64
  %.sroa.5.0.i.i841.i = add nuw nsw i64 %.sroa.5.0.i736.i, %i.bfb
  %.sroa.8.0.extract.trunc.i.i842.i = trunc i64 %.sroa.5.0.i.i841.i to i32 ; 2 uses
  %i.bfc = add i32 %.sroa.0.0.i.i838.i, 536870911
  %i.bfd = icmp ult i32 %i.bfc, 1073741823
  br i1 %i.bfd, label %.lr.ph.i.i851.i, label %._crit_edge.i.i843.i

.lr.ph.i.i851.i:                                  ; preds = %.preheader.i.i840.i, %.lr.ph.i.i851.i
  %.sroa.0.08.i.i852.i = phi i32 [ %i.bfe, %.lr.ph.i.i851.i ], [ %.sroa.0.0.i.i838.i, %.preheader.i.i840.i ]
  %.sroa.8.07.i.i853.i = phi i32 [ %i.bff, %.lr.ph.i.i851.i ], [ %.sroa.8.0.extract.trunc.i.i842.i, %.preheader.i.i840.i ]
  %i.bfe = shl nsw i32 %.sroa.0.08.i.i852.i, 1    ; 3 uses
  %i.bff = add nsw i32 %.sroa.8.07.i.i853.i, -1   ; 2 uses
  %i.bfg = add nsw i32 %i.bfe, 536870911
  %i.bfh = icmp ult i32 %i.bfg, 1073741823
  br i1 %i.bfh, label %.lr.ph.i.i851.i, label %._crit_edge.i.i843.i, !llvm.loop !2

._crit_edge.i.i843.i:                             ; preds = %.lr.ph.i.i851.i, %.preheader.i.i840.i
  %.sroa.8.0.lcssa.i.i844.i = phi i32 [ %.sroa.8.0.extract.trunc.i.i842.i, %.preheader.i.i840.i ], [ %i.bff, %.lr.ph.i.i851.i ] ; 2 uses
  %.sroa.0.0.lcssa.i.i845.i = phi i32 [ %.sroa.0.0.i.i838.i, %.preheader.i.i840.i ], [ %i.bfe, %.lr.ph.i.i851.i ]
  %i.bfi = icmp slt i32 %.sroa.8.0.lcssa.i.i844.i, -149
  %spec.select.i.i846.i = tail call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i.i844.i, i32 -149)
  %spec.select6.i.i847.i = select i1 %i.bfi, i32 0, i32 %.sroa.0.0.lcssa.i.i845.i
  %i.bfj = zext i32 %spec.select.i.i846.i to i64
  %i.bfk = shl nuw i64 %i.bfj, 32
  %i.bfl = zext i32 %spec.select6.i.i847.i to i64
  %i.bfm = or disjoint i64 %i.bfk, %i.bfl
  br label %av_normalize_sf.exit.i848.i

av_normalize_sf.exit.i848.i:                      ; preds = %._crit_edge.i.i843.i, %bb.dv
  %.sroa.05.0.insert.insert.i.i849.i = phi i64 [ -639950127104, %bb.dv ], [ %i.bfm, %._crit_edge.i.i843.i ] ; 2 uses
  %.sroa.5.0.extract.shift.i850.i = lshr i64 %.sroa.05.0.insert.insert.i.i849.i, 32
  br label %av_add_sf.exit854.i

bb.dw:                                            ; preds = %bb.du
  %i.bfn = icmp samesign ugt i64 %.sroa.5.0.i736.i, 4294967248
  br i1 %i.bfn, label %bb.dx, label %av_add_sf.exit854.i

bb.dx:                                            ; preds = %bb.dw
  %i.bfo = ashr i32 %.sroa.09.0.extract.trunc.i814.i, %i.bet ; 2 uses
  %i.bfp = add nsw i32 %i.bfo, 703687442
  %i.bfq = add i32 %i.bfo, 1777429266
  %i.bfr = icmp slt i32 %i.bfq, 1                 ; 2 uses
  %i.bfs = zext i1 %i.bfr to i32
  %.sroa.0.0.i24.i822.i = ashr i32 %i.bfp, %i.bfs ; 4 uses
  %.not.i29.i823.i = icmp eq i32 %.sroa.0.0.i24.i822.i, 0
  br i1 %.not.i29.i823.i, label %av_normalize_sf.exit41.i832.i, label %.preheader.i30.i824.i

.preheader.i30.i824.i:                            ; preds = %bb.dx
  %.sroa.8.0.extract.trunc.i31.i826.i = select i1 %i.bfr, i32 -15, i32 -16 ; 2 uses
  %i.bft = add i32 %.sroa.0.0.i24.i822.i, 536870911
  %i.bfu = icmp ult i32 %i.bft, 1073741823
  br i1 %i.bfu, label %.lr.ph.i38.i835.i, label %._crit_edge.i32.i827.i

.lr.ph.i38.i835.i:                                ; preds = %.preheader.i30.i824.i, %.lr.ph.i38.i835.i
  %.sroa.0.08.i39.i836.i = phi i32 [ %i.bfv, %.lr.ph.i38.i835.i ], [ %.sroa.0.0.i24.i822.i, %.preheader.i30.i824.i ]
  %.sroa.8.07.i40.i837.i = phi i32 [ %i.bfw, %.lr.ph.i38.i835.i ], [ %.sroa.8.0.extract.trunc.i31.i826.i, %.preheader.i30.i824.i ]
  %i.bfv = shl nsw i32 %.sroa.0.08.i39.i836.i, 1  ; 3 uses
  %i.bfw = add nsw i32 %.sroa.8.07.i40.i837.i, -1 ; 2 uses
  %i.bfx = add nsw i32 %i.bfv, 536870911
  %i.bfy = icmp ult i32 %i.bfx, 1073741823
  br i1 %i.bfy, label %.lr.ph.i38.i835.i, label %._crit_edge.i32.i827.i, !llvm.loop !2

._crit_edge.i32.i827.i:                           ; preds = %.lr.ph.i38.i835.i, %.preheader.i30.i824.i
  %.sroa.8.0.lcssa.i33.i828.i = phi i32 [ %.sroa.8.0.extract.trunc.i31.i826.i, %.preheader.i30.i824.i ], [ %i.bfw, %.lr.ph.i38.i835.i ] ; 2 uses
  %.sroa.0.0.lcssa.i34.i829.i = phi i32 [ %.sroa.0.0.i24.i822.i, %.preheader.i30.i824.i ], [ %i.bfv, %.lr.ph.i38.i835.i ]
  %i.bfz = icmp slt i32 %.sroa.8.0.lcssa.i33.i828.i, -149
  %spec.select.i35.i830.i = tail call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i33.i828.i, i32 -149)
  %spec.select6.i36.i831.i = select i1 %i.bfz, i32 0, i32 %.sroa.0.0.lcssa.i34.i829.i
  %i.bga = zext i32 %spec.select.i35.i830.i to i64
  %i.bgb = shl nuw i64 %i.bga, 32
  %i.bgc = zext i32 %spec.select6.i36.i831.i to i64
  %i.bgd = or disjoint i64 %i.bgb, %i.bgc
  br label %av_normalize_sf.exit41.i832.i

av_normalize_sf.exit41.i832.i:                    ; preds = %._crit_edge.i32.i827.i, %bb.dx
  %.sroa.05.0.insert.insert.i37.i833.i = phi i64 [ -639950127104, %bb.dx ], [ %i.bgd, %._crit_edge.i32.i827.i ] ; 2 uses
  %.sroa.5.0.extract.shift18.i834.i = lshr i64 %.sroa.05.0.insert.insert.i37.i833.i, 32
  br label %av_add_sf.exit854.i

av_add_sf.exit854.i:                              ; preds = %av_normalize_sf.exit41.i832.i, %bb.dw, %av_normalize_sf.exit.i848.i, %av_add_sf.exit813.i, %.thread1658.i
  %.sroa.5.0.i7771643.i = phi i64 [ %.sroa.5.0.i777.i, %av_add_sf.exit813.i ], [ %.sroa.5.0.i777.i, %av_normalize_sf.exit.i848.i ], [ %.sroa.5.0.i777.i, %av_normalize_sf.exit41.i832.i ], [ %.sroa.5.0.i777.i, %bb.dw ], [ 4294967280, %.thread1658.i ]
  %.sroa.016.0.i7761641.i = phi i64 [ %.sroa.016.0.i776.i, %av_add_sf.exit813.i ], [ %.sroa.016.0.i776.i, %av_normalize_sf.exit.i848.i ], [ %.sroa.016.0.i776.i, %av_normalize_sf.exit41.i832.i ], [ %.sroa.016.0.i776.i, %bb.dw ], [ 703687442, %.thread1658.i ]
  %.pn1837.in.i = phi i32 [ %i.bdh, %av_add_sf.exit813.i ], [ %i.bdh, %av_normalize_sf.exit.i848.i ], [ %i.bdh, %av_normalize_sf.exit41.i832.i ], [ %i.bdh, %bb.dw ], [ %i.azy, %.thread1658.i ]
  %.sroa.016.0.i817.i = phi i64 [ %.sroa.016.0.insert.insert.i739.i, %av_add_sf.exit813.i ], [ %.sroa.05.0.insert.insert.i.i849.i, %av_normalize_sf.exit.i848.i ], [ %.sroa.05.0.insert.insert.i37.i833.i, %av_normalize_sf.exit41.i832.i ], [ 703687442, %bb.dw ], [ 703687442, %.thread1658.i ]
  %.sroa.5.0.i818.i = phi i64 [ %.sroa.5.0.i736.i, %av_add_sf.exit813.i ], [ %.sroa.5.0.extract.shift.i850.i, %av_normalize_sf.exit.i848.i ], [ %.sroa.5.0.extract.shift18.i834.i, %av_normalize_sf.exit41.i832.i ], [ 4294967280, %bb.dw ], [ 4294967280, %.thread1658.i ]
  %.pn1837.i = zext i32 %.pn1837.in.i to i64
  %i.bge = getelementptr inbounds nuw [8 x i8], ptr @sbr_gain_calc.limgain, i64 %.pn1837.i
  %.sroa.9.0.extract.trunc.i856.i = trunc nuw i64 %.sroa.5.0.i7771643.i to i32
  %.sroa.2.0.extract.trunc.i858.i = trunc nuw i64 %.sroa.5.0.i818.i to i32
  %i.bgf = shl i64 %.sroa.016.0.i7761641.i, 32
  %i.bgg = ashr exact i64 %i.bgf, 2
  %i.bgh = shl i64 %.sroa.016.0.i817.i, 32
  %i.bgi = ashr exact i64 %i.bgh, 32
  %i.bgj = sdiv i64 %i.bgg, %i.bgi                ; 3 uses
  %i.bgk = sub nsw i32 %.sroa.9.0.extract.trunc.i856.i, %.sroa.2.0.extract.trunc.i858.i ; 2 uses
  %i.bgl = add nsw i64 %i.bgj, 2147483648
  %.not18.i859.i = icmp ult i64 %i.bgl, 4294967296
  br i1 %.not18.i859.i, label %av_div_sf.exit876.i, label %.lr.ph.i860.i

.lr.ph.i860.i:                                    ; preds = %av_add_sf.exit854.i, %.lr.ph.i860.i
  %.020.i861.i = phi i64 [ %i.bgm, %.lr.ph.i860.i ], [ %i.bgj, %av_add_sf.exit854.i ]
  %.sroa.9.019.i862.i = phi i32 [ %i.bgn, %.lr.ph.i860.i ], [ %i.bgk, %av_add_sf.exit854.i ]
  %i.bgm = sdiv i64 %.020.i861.i, 2               ; 3 uses
  %i.bgn = add nsw i32 %.sroa.9.019.i862.i, -1    ; 2 uses
  %i.bgo = add nsw i64 %i.bgm, 2147483648
  %.not.i863.i = icmp ult i64 %i.bgo, 4294967296
  br i1 %.not.i863.i, label %av_div_sf.exit876.i, label %.lr.ph.i860.i, !llvm.loop !1

av_div_sf.exit876.i:                              ; preds = %.lr.ph.i860.i, %av_add_sf.exit854.i
  %.sroa.9.0.lcssa.i864.i = phi i32 [ %i.bgk, %av_add_sf.exit854.i ], [ %i.bgn, %.lr.ph.i860.i ]
  %.0.lcssa.i865.i = phi i64 [ %i.bgj, %av_add_sf.exit854.i ], [ %i.bgm, %.lr.ph.i860.i ]
  %.sroa.9.0.insert.ext.i866.i = zext i32 %.sroa.9.0.lcssa.i864.i to i64 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i867.i = trunc nsw i64 %.0.lcssa.i865.i to i32 ; 2 uses
  %i.bgp = add i32 %.sroa.0.0.extract.trunc.i.i867.i, 1073741824
  %i.bgq = icmp slt i32 %i.bgp, 1                 ; 2 uses
  %i.bgr = add nuw nsw i64 %.sroa.9.0.insert.ext.i866.i, 1
  %i.bgs = and i64 %i.bgr, 4294967295
  %.sroa.5.0.i.i868.i = select i1 %i.bgq, i64 %i.bgs, i64 %.sroa.9.0.insert.ext.i866.i ; 2 uses
  %i.bgt = zext i1 %i.bgq to i32
  %.sroa.0.0.i.i869.i = ashr i32 %.sroa.0.0.extract.trunc.i.i867.i, %i.bgt ; 2 uses
  %.sroa.2.0.insert.shift.i.i870.i = shl nuw i64 %.sroa.5.0.i.i868.i, 32
  %.sroa.02.0.insert.ext.i.i871.i = zext i32 %.sroa.0.0.i.i869.i to i64
  %.sroa.02.0.insert.insert.i.i872.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i870.i, %.sroa.02.0.insert.ext.i.i871.i
  %.sroa.9.0.extract.trunc14.i873.i = trunc nuw i64 %.sroa.5.0.i.i868.i to i32
  %i.bgu = icmp eq i32 %.sroa.0.0.i.i869.i, 0
  %i.bgv = icmp slt i32 %.sroa.9.0.extract.trunc14.i873.i, -149
  %or.cond.i874.i = select i1 %i.bgu, i1 true, i1 %i.bgv
  %..i875.i = select i1 %or.cond.i874.i, i64 -639950127104, i64 %.sroa.02.0.insert.insert.i.i872.i ; 3 uses
  %.sroa.0.0.extract.trunc.i265.i = trunc i64 %..i875.i to i32 ; 3 uses
  %.sroa.12.0.extract.shift.i266.i = lshr i64 %..i875.i, 32 ; 2 uses
  %.sroa.12.0.extract.trunc.i267.i = trunc nuw i64 %.sroa.12.0.extract.shift.i266.i to i32 ; 2 uses
  %i.bgw = icmp eq i32 %.sroa.0.0.extract.trunc.i265.i, 0
  br i1 %i.bgw, label %av_sqrt_sf.exit271.i, label %bb.dy

bb.dy:                                            ; preds = %av_div_sf.exit876.i
  %i.bgx = icmp slt i32 %.sroa.0.0.extract.trunc.i265.i, 0
  br i1 %i.bgx, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  tail call void @abort() #13
  unreachable

bb.ea:                                            ; preds = %bb.dy
  %i.bgy = add nsw i32 %.sroa.0.0.extract.trunc.i265.i, -536870912
  %i.bgz = ashr i32 %i.bgy, 20
  %i.bha = and i64 %..i875.i, 1048575             ; 2 uses
  %i.bhb = sext i32 %i.bgz to i64
  %i.bhc = getelementptr inbounds [4 x i8], ptr @av_sqrttbl_sf, i64 %i.bhb ; 2 uses
  %i.bhd = load i32, ptr %i.bhc, align 4, !tbaa !14
  %i.bhe = sext i32 %i.bhd to i64
  %i.bhf = sub nuw nsw i64 1048576, %i.bha
  %i.bhg = mul nsw i64 %i.bhf, %i.bhe
  %i.bhh = getelementptr i8, ptr %i.bhc, i64 4
  %i.bhi = load i32, ptr %i.bhh, align 4, !tbaa !14
  %i.bhj = sext i32 %i.bhi to i64
  %i.bhk = mul nsw i64 %i.bha, %i.bhj
  %i.bhl = add nsw i64 %i.bhk, %i.bhg
  %i.bhm = and i64 %.sroa.12.0.extract.shift.i266.i, 1
  %i.bhn = getelementptr inbounds nuw [4 x i8], ptr @av_sqr_exp_multbl_sf, i64 %i.bhm
  %i.bho = load i32, ptr %i.bhn, align 4, !tbaa !14
  %i.bhp = sext i32 %i.bho to i64
  %i.bhq = shl i64 %i.bhl, 12
  %i.bhr = add i64 %i.bhq, 2147483648
  %i.bhs = ashr i64 %i.bhr, 32
  %i.bht = mul nsw i64 %i.bhs, %i.bhp
  %i.bhu = add nsw i64 %i.bht, 268435456
  %i.bhv = lshr i64 %i.bhu, 29
  %i.bhw = trunc i64 %i.bhv to i32                ; 2 uses
  %i.bhx = icmp sgt i32 %i.bhw, 1073741823        ; 2 uses
  %i.bhy = add nsw i32 %.sroa.12.0.extract.trunc.i267.i, -2
  %.sroa.12.0.i268.i = select i1 %i.bhx, i32 %.sroa.12.0.extract.trunc.i267.i, i32 %i.bhy
  %i.bhz = zext i1 %i.bhx to i32
  %.sroa.0.0.i269.i = lshr i32 %i.bhw, %i.bhz
  %i.bia = ashr i32 %.sroa.12.0.i268.i, 1
  %i.bib = add nsw i32 %i.bia, 1
  %i.bic = zext i32 %i.bib to i64
  %i.bid = shl nuw i64 %i.bic, 32
  %i.bie = zext i32 %.sroa.0.0.i269.i to i64
  %i.bif = or disjoint i64 %i.bid, %i.bie
  br label %av_sqrt_sf.exit271.i

av_sqrt_sf.exit271.i:                             ; preds = %bb.ea, %av_div_sf.exit876.i
  %.sroa.012.0.insert.insert.i270.i = phi i64 [ %i.bif, %bb.ea ], [ -639950127104, %av_div_sf.exit876.i ] ; 2 uses
  %i.big = load i64, ptr %i.bge, align 8          ; 2 uses
  %.sroa.25.0.extract.shift.i877.i = and i64 %.sroa.012.0.insert.insert.i270.i, -4294967296
  %i.bih = shl i64 %i.big, 32
  %i.bii = ashr exact i64 %i.bih, 32
  %i.bij = shl i64 %.sroa.012.0.insert.insert.i270.i, 32
  %i.bik = ashr exact i64 %i.bij, 32
  %i.bil = mul nsw i64 %i.bii, %i.bik
  %i.bim = lshr i64 %i.bil, 29
  %i.bin = add i64 %i.big, -4294967296
  %.sroa.0.0.insert.insert.i878.i = add i64 %i.bin, %.sroa.25.0.extract.shift.i877.i
  %.sroa.0.0.extract.trunc.i.i879.i = trunc i64 %i.bim to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i.i880.i = lshr i64 %.sroa.0.0.insert.insert.i878.i, 32 ; 2 uses
  %i.bio = add i32 %.sroa.0.0.extract.trunc.i.i879.i, 1073741824
  %i.bip = icmp slt i32 %i.bio, 1                 ; 2 uses
  %i.biq = add nuw nsw i64 %.sroa.5.0.extract.shift.i.i880.i, 1
  %i.bir = and i64 %i.biq, 4294967295
  %.sroa.5.0.i.i881.i = select i1 %i.bip, i64 %i.bir, i64 %.sroa.5.0.extract.shift.i.i880.i ; 2 uses
  %i.bis = zext i1 %i.bip to i32
  %.sroa.0.0.i.i882.i = ashr i32 %.sroa.0.0.extract.trunc.i.i879.i, %i.bis ; 2 uses
  %.sroa.2.0.insert.shift.i.i883.i = shl nuw i64 %.sroa.5.0.i.i881.i, 32
  %.sroa.02.0.insert.ext.i.i884.i = zext i32 %.sroa.0.0.i.i882.i to i64
  %.sroa.02.0.insert.insert.i.i885.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i883.i, %.sroa.02.0.insert.ext.i.i884.i
  %.sroa.7.0.extract.trunc11.i886.i = trunc nuw i64 %.sroa.5.0.i.i881.i to i32
  %i.bit = icmp eq i32 %.sroa.0.0.i.i882.i, 0
  %i.biu = icmp slt i32 %.sroa.7.0.extract.trunc11.i886.i, -149
  %or.cond.i887.i = select i1 %i.bit, i1 true, i1 %i.biu
  %..i888.i = select i1 %or.cond.i887.i, i64 -639950127104, i64 %.sroa.02.0.insert.insert.i.i885.i
  %..i888.fr.i = freeze i64 %..i888.i             ; 4 uses
  %.sroa.07.0.extract.trunc.i.i = trunc i64 %..i888.fr.i to i32 ; 3 uses
  %.sroa.410.0.extract.shift.i.i = lshr i64 %..i888.fr.i, 32
  %.sroa.410.0.extract.trunc.i.i = trunc nuw i64 %.sroa.410.0.extract.shift.i.i to i32 ; 4 uses
  %i.biv = add nsw i32 %.sroa.410.0.extract.trunc.i.i, -17
  %i.biw = icmp slt i32 %.sroa.410.0.extract.trunc.i.i, -14
  br i1 %i.biw, label %av_gt_sf.exit.thread.i, label %bb.eb

bb.eb:                                            ; preds = %av_sqrt_sf.exit271.i
  %i.bix = icmp slt i32 %.sroa.410.0.extract.trunc.i.i, 17
  br i1 %i.bix, label %av_gt_sf.exit.i, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.biy = icmp ult i64 %..i888.fr.i, 210453397504
  br i1 %i.biy, label %.split1663.i, label %.split.i

.split1663.i:                                     ; preds = %bb.ec
  %i.biz = lshr i32 819200000, %i.biv
  %.fr.i = freeze i32 %i.biz
  %i.bja = icmp slt i32 %.fr.i, %.sroa.07.0.extract.trunc.i.i
  br i1 %i.bja, label %bb.ed, label %av_gt_sf.exit.thread.i

.split.i:                                         ; preds = %bb.ec
  %i.bjb = icmp sgt i32 %.sroa.07.0.extract.trunc.i.i, 0
  br i1 %i.bjb, label %bb.ed, label %av_gt_sf.exit.thread.i

av_gt_sf.exit.i:                                  ; preds = %bb.eb
  %i.bjc = sub nsw i32 17, %.sroa.410.0.extract.trunc.i.i
  %i.bjd = ashr i32 %.sroa.07.0.extract.trunc.i.i, %i.bjc
  %.fr1838.i = freeze i32 %i.bjd
  %i.bje = icmp sgt i32 %.fr1838.i, 819200000
  br i1 %i.bje, label %bb.ed, label %av_gt_sf.exit.thread.i

av_gt_sf.exit.thread.i:                           ; preds = %av_gt_sf.exit.i, %.split.i, %.split1663.i, %av_sqrt_sf.exit271.i
  br label %bb.ed

bb.ed:                                            ; preds = %av_gt_sf.exit.thread.i, %av_gt_sf.exit.i, %.split.i, %.split1663.i
  %i.bjf = phi i64 [ %..i888.fr.i, %av_gt_sf.exit.thread.i ], [ 73833644032, %av_gt_sf.exit.i ], [ 73833644032, %.split.i ], [ 73833644032, %.split1663.i ] ; 5 uses
  %i.bjg = sub nsw i32 %i.afm, %.pn.i
  br i1 %i.afo, label %.lr.ph1456.i, label %._crit_edge1457.i

.lr.ph1456.i:                                     ; preds = %bb.ed
  %.sroa.25.0.extract.shift.i889.i = and i64 %i.bjf, -4294967296
  %i.bjh = shl i64 %i.bjf, 32
  %i.bji = ashr exact i64 %i.bjh, 32
  %i.bjj = add i64 %.sroa.25.0.extract.shift.i889.i, -4294967296
  %.sroa.0.0.extract.trunc.i934.i = trunc i64 %i.bjf to i32 ; 3 uses
  %.sroa.4.0.extract.shift.i935.i = lshr i64 %i.bjf, 32
  %.sroa.4.0.extract.trunc.i936.i = trunc nuw i64 %.sroa.4.0.extract.shift.i935.i to i32
  %i.bjk = icmp sgt i32 %.sroa.0.0.extract.trunc.i934.i, -1
  %i.bjl = sub i32 0, %.pn.i
  %i.bjm = sext i32 %i.bjl to i64
  %i.bjn = zext i16 %i.afi to i64
  %i.bjo = add nsw i64 %i.bjm, %i.bjn
  br label %bb.ee

bb.ee:                                            ; preds = %bb.em, %.lr.ph1456.i
  %indvars.iv1569.i = phi i64 [ %i.bjo, %.lr.ph1456.i ], [ %indvars.iv.next1570.i, %bb.em ] ; 3 uses
  %i.bjp = getelementptr inbounds [8 x i8], ptr %i.aev, i64 %indvars.iv1569.i ; 2 uses
  %i.bjq = load i64, ptr %i.bjp, align 8          ; 4 uses
  %i.bjr = shl i64 %i.bjq, 32
  %i.bjs = ashr exact i64 %i.bjr, 32
  %i.bjt = mul nsw i64 %i.bjs, %i.bji
  %i.bju = lshr i64 %i.bjt, 29
  %.sroa.0.0.insert.insert.i890.i = add i64 %i.bjj, %i.bjq
  %.sroa.0.0.extract.trunc.i.i891.i = trunc i64 %i.bju to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i.i892.i = lshr i64 %.sroa.0.0.insert.insert.i890.i, 32 ; 2 uses
  %i.bjv = add i32 %.sroa.0.0.extract.trunc.i.i891.i, 1073741824
  %i.bjw = icmp slt i32 %i.bjv, 1                 ; 2 uses
  %i.bjx = add nuw nsw i64 %.sroa.5.0.extract.shift.i.i892.i, 1
  %i.bjy = and i64 %i.bjx, 4294967295
  %.sroa.5.0.i.i893.i = select i1 %i.bjw, i64 %i.bjy, i64 %.sroa.5.0.extract.shift.i.i892.i ; 2 uses
  %i.bjz = zext i1 %i.bjw to i32
  %.sroa.0.0.i.i894.i = ashr i32 %.sroa.0.0.extract.trunc.i.i891.i, %i.bjz ; 2 uses
end_hunk_1
begin_hunk_2_@ff_aac_sbr_apply_fixed:bb.a

.preheader.i.i1149.i:                             ; preds = %bb.fb
  %i.bsz = zext i1 %i.bsx to i64
  %.sroa.5.0.i.i1150.i = add nuw nsw i64 %.sroa.4.0.extract.shift.i1124.i, %i.bsz
  %.sroa.8.0.extract.trunc.i.i1151.i = trunc i64 %.sroa.5.0.i.i1150.i to i32 ; 2 uses
  %i.bta = add i32 %.sroa.0.0.i.i1147.i, 536870911
  %i.btb = icmp ult i32 %i.bta, 1073741823
  br i1 %i.btb, label %.lr.ph.i.i1160.i, label %._crit_edge.i.i1152.i

.lr.ph.i.i1160.i:                                 ; preds = %.preheader.i.i1149.i, %.lr.ph.i.i1160.i
  %.sroa.0.08.i.i1161.i = phi i32 [ %i.btc, %.lr.ph.i.i1160.i ], [ %.sroa.0.0.i.i1147.i, %.preheader.i.i1149.i ]
  %.sroa.8.07.i.i1162.i = phi i32 [ %i.btd, %.lr.ph.i.i1160.i ], [ %.sroa.8.0.extract.trunc.i.i1151.i, %.preheader.i.i1149.i ]
  %i.btc = shl nsw i32 %.sroa.0.08.i.i1161.i, 1   ; 3 uses
  %i.btd = add nsw i32 %.sroa.8.07.i.i1162.i, -1  ; 2 uses
  %i.bte = add nsw i32 %i.btc, 536870911
  %i.btf = icmp ult i32 %i.bte, 1073741823
  br i1 %i.btf, label %.lr.ph.i.i1160.i, label %._crit_edge.i.i1152.i, !llvm.loop !2

._crit_edge.i.i1152.i:                            ; preds = %.lr.ph.i.i1160.i, %.preheader.i.i1149.i
  %.sroa.8.0.lcssa.i.i1153.i = phi i32 [ %.sroa.8.0.extract.trunc.i.i1151.i, %.preheader.i.i1149.i ], [ %i.btd, %.lr.ph.i.i1160.i ] ; 2 uses
  %.sroa.0.0.lcssa.i.i1154.i = phi i32 [ %.sroa.0.0.i.i1147.i, %.preheader.i.i1149.i ], [ %i.btc, %.lr.ph.i.i1160.i ]
  %i.btg = icmp slt i32 %.sroa.8.0.lcssa.i.i1153.i, -149
  %spec.select.i.i1155.i = tail call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i.i1153.i, i32 -149)
  %spec.select6.i.i1156.i = select i1 %i.btg, i32 0, i32 %.sroa.0.0.lcssa.i.i1154.i
  %i.bth = zext i32 %spec.select.i.i1155.i to i64
  %i.bti = shl nuw i64 %i.bth, 32
  %i.btj = zext i32 %spec.select6.i.i1156.i to i64
  %i.btk = or disjoint i64 %i.bti, %i.btj
  br label %av_normalize_sf.exit.i1157.i

av_normalize_sf.exit.i1157.i:                     ; preds = %._crit_edge.i.i1152.i, %bb.fb
  %.sroa.05.0.insert.insert.i.i1158.i = phi i64 [ -639950127104, %bb.fb ], [ %i.btk, %._crit_edge.i.i1152.i ] ; 2 uses
  %.sroa.5.0.extract.shift.i1159.i = lshr i64 %.sroa.05.0.insert.insert.i.i1158.i, 32
  br label %av_add_sf.exit1163.i

bb.fc:                                            ; preds = %bb.fa
  %i.btl = icmp samesign ult i32 %i.bsq, 32
  br i1 %i.btl, label %bb.fd, label %av_add_sf.exit1163.i

bb.fd:                                            ; preds = %bb.fc
  %i.btm = ashr i32 %.sroa.09.0.extract.trunc.i1123.i, %i.bsq
  %i.btn = add nsw i32 %i.btm, %.sroa.012.0.extract.trunc.i1120.i ; 2 uses
  %i.bto = add i32 %i.btn, 1073741824
  %i.btp = icmp slt i32 %i.bto, 1                 ; 2 uses
  %i.btq = zext i1 %i.btp to i32
  %.sroa.0.0.i24.i1131.i = ashr i32 %i.btn, %i.btq ; 4 uses
  %.not.i29.i1132.i = icmp eq i32 %.sroa.0.0.i24.i1131.i, 0
  br i1 %.not.i29.i1132.i, label %av_normalize_sf.exit41.i1141.i, label %.preheader.i30.i1133.i

.preheader.i30.i1133.i:                           ; preds = %bb.fd
  %i.btr = zext i1 %i.btp to i64
  %.sroa.5.0.i23.i1134.i = add nuw nsw i64 %.sroa.5.0.i1071.i, %i.btr
  %.sroa.8.0.extract.trunc.i31.i1135.i = trunc i64 %.sroa.5.0.i23.i1134.i to i32 ; 2 uses
  %i.bts = add i32 %.sroa.0.0.i24.i1131.i, 536870911
  %i.btt = icmp ult i32 %i.bts, 1073741823
  br i1 %i.btt, label %.lr.ph.i38.i1144.i, label %._crit_edge.i32.i1136.i

.lr.ph.i38.i1144.i:                               ; preds = %.preheader.i30.i1133.i, %.lr.ph.i38.i1144.i
  %.sroa.0.08.i39.i1145.i = phi i32 [ %i.btu, %.lr.ph.i38.i1144.i ], [ %.sroa.0.0.i24.i1131.i, %.preheader.i30.i1133.i ]
  %.sroa.8.07.i40.i1146.i = phi i32 [ %i.btv, %.lr.ph.i38.i1144.i ], [ %.sroa.8.0.extract.trunc.i31.i1135.i, %.preheader.i30.i1133.i ]
  %i.btu = shl nsw i32 %.sroa.0.08.i39.i1145.i, 1 ; 3 uses
  %i.btv = add nsw i32 %.sroa.8.07.i40.i1146.i, -1 ; 2 uses
  %i.btw = add nsw i32 %i.btu, 536870911
  %i.btx = icmp ult i32 %i.btw, 1073741823
  br i1 %i.btx, label %.lr.ph.i38.i1144.i, label %._crit_edge.i32.i1136.i, !llvm.loop !2

._crit_edge.i32.i1136.i:                          ; preds = %.lr.ph.i38.i1144.i, %.preheader.i30.i1133.i
  %.sroa.8.0.lcssa.i33.i1137.i = phi i32 [ %.sroa.8.0.extract.trunc.i31.i1135.i, %.preheader.i30.i1133.i ], [ %i.btv, %.lr.ph.i38.i1144.i ] ; 2 uses
  %.sroa.0.0.lcssa.i34.i1138.i = phi i32 [ %.sroa.0.0.i24.i1131.i, %.preheader.i30.i1133.i ], [ %i.btu, %.lr.ph.i38.i1144.i ]
  %i.bty = icmp slt i32 %.sroa.8.0.lcssa.i33.i1137.i, -149
  %spec.select.i35.i1139.i = tail call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i33.i1137.i, i32 -149)
  %spec.select6.i36.i1140.i = select i1 %i.bty, i32 0, i32 %.sroa.0.0.lcssa.i34.i1138.i
  %i.btz = zext i32 %spec.select.i35.i1139.i to i64
  %i.bua = shl nuw i64 %i.btz, 32
  %i.bub = zext i32 %spec.select6.i36.i1140.i to i64
  %i.buc = or disjoint i64 %i.bua, %i.bub
  br label %av_normalize_sf.exit41.i1141.i

av_normalize_sf.exit41.i1141.i:                   ; preds = %._crit_edge.i32.i1136.i, %bb.fd
  %.sroa.05.0.insert.insert.i37.i1142.i = phi i64 [ -639950127104, %bb.fd ], [ %i.buc, %._crit_edge.i32.i1136.i ] ; 2 uses
  %.sroa.5.0.extract.shift18.i1143.i = lshr i64 %.sroa.05.0.insert.insert.i37.i1142.i, 32
  br label %av_add_sf.exit1163.i

av_add_sf.exit1163.i:                             ; preds = %av_normalize_sf.exit41.i1141.i, %bb.fc, %av_normalize_sf.exit.i1157.i, %bb.ez
  %.sroa.016.0.i1126.i = phi i64 [ %..i1119.i, %bb.ez ], [ %.sroa.05.0.insert.insert.i.i1158.i, %av_normalize_sf.exit.i1157.i ], [ %.sroa.05.0.insert.insert.i37.i1142.i, %av_normalize_sf.exit41.i1141.i ], [ %.sroa.016.0.insert.insert.i1074.i, %bb.fc ]
  %.sroa.5.0.i1127.i = phi i64 [ %.sroa.4.0.extract.shift.i1124.i, %bb.ez ], [ %.sroa.5.0.extract.shift.i1159.i, %av_normalize_sf.exit.i1157.i ], [ %.sroa.5.0.extract.shift18.i1143.i, %av_normalize_sf.exit41.i1141.i ], [ %.sroa.5.0.i1071.i, %bb.fc ]
  %.sroa.5.0.insert.shift.i1128.i = shl nuw i64 %.sroa.5.0.i1127.i, 32
  %.sroa.016.0.insert.ext.i1129.i = and i64 %.sroa.016.0.i1126.i, 4294967295
  %.sroa.016.0.insert.insert.i1130.i = or disjoint i64 %.sroa.5.0.insert.shift.i1128.i, %.sroa.016.0.insert.ext.i1129.i
  br label %bb.fe

bb.fe:                                            ; preds = %av_add_sf.exit1163.i, %av_add_sf.exit1107.i
  %.sroa.10.2.i = phi i64 [ %.sroa.016.0.insert.insert.i1074.i, %av_add_sf.exit1107.i ], [ %.sroa.016.0.insert.insert.i1130.i, %av_add_sf.exit1163.i ] ; 5 uses
  %indvars.iv.next1573.i = add nsw i64 %indvars.iv1572.i, 1 ; 2 uses
  %exitcond1576.not.i = icmp eq i64 %indvars.iv.next1573.i, %wide.trip.count1575.i
  br i1 %exitcond1576.not.i, label %._crit_edge1465.i, label %.lr.ph1464.i, !llvm.loop !196

._crit_edge1465.i:                                ; preds = %bb.fe
  %.sroa.09.0.extract.trunc.i1164.i = trunc i64 %.sroa.016.0.i946.i to i32 ; 2 uses
  %.sroa.4.0.extract.trunc.i1166.i = trunc nuw i64 %.sroa.5.0.i947.i to i32 ; 4 uses
  %.neg1325.i = add nsw i32 %.sroa.4.0.extract.trunc.i1166.i, 16
  %i.bud = sub nuw nsw i32 -16, %.sroa.4.0.extract.trunc.i1166.i
  %i.bue = icmp sgt i32 %.sroa.4.0.extract.trunc.i1166.i, 15
  br i1 %i.bue, label %av_add_sf.exit1204.i, label %bb.ff

bb.ff:                                            ; preds = %._crit_edge1465.i
  %i.buf = icmp sgt i32 %.sroa.4.0.extract.trunc.i1166.i, -16
  br i1 %i.buf, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.bug = lshr i32 703687442, %.neg1325.i
  %i.buh = add nsw i32 %i.bug, %.sroa.09.0.extract.trunc.i1164.i ; 2 uses
  %i.bui = add i32 %i.buh, 1073741824
  %i.buj = icmp slt i32 %i.bui, 1                 ; 2 uses
  %i.buk = zext i1 %i.buj to i32
  %.sroa.0.0.i.i1188.i = ashr i32 %i.buh, %i.buk  ; 4 uses
  %.not.i.i1189.i = icmp eq i32 %.sroa.0.0.i.i1188.i, 0
  br i1 %.not.i.i1189.i, label %av_normalize_sf.exit.i1198.i, label %.preheader.i.i1190.i

.preheader.i.i1190.i:                             ; preds = %bb.fg
  %i.bul = zext i1 %i.buj to i64
  %.sroa.5.0.i.i1191.i = add nuw nsw i64 %.sroa.5.0.i947.i, %i.bul
  %.sroa.8.0.extract.trunc.i.i1192.i = trunc i64 %.sroa.5.0.i.i1191.i to i32 ; 2 uses
  %i.bum = add i32 %.sroa.0.0.i.i1188.i, 536870911
  %i.bun = icmp ult i32 %i.bum, 1073741823
  br i1 %i.bun, label %.lr.ph.i.i1201.i, label %._crit_edge.i.i1193.i

.lr.ph.i.i1201.i:                                 ; preds = %.preheader.i.i1190.i, %.lr.ph.i.i1201.i
  %.sroa.0.08.i.i1202.i = phi i32 [ %i.buo, %.lr.ph.i.i1201.i ], [ %.sroa.0.0.i.i1188.i, %.preheader.i.i1190.i ]
  %.sroa.8.07.i.i1203.i = phi i32 [ %i.bup, %.lr.ph.i.i1201.i ], [ %.sroa.8.0.extract.trunc.i.i1192.i, %.preheader.i.i1190.i ]
  %i.buo = shl nsw i32 %.sroa.0.08.i.i1202.i, 1   ; 3 uses
  %i.bup = add nsw i32 %.sroa.8.07.i.i1203.i, -1  ; 2 uses
  %i.buq = add nsw i32 %i.buo, 536870911
  %i.bur = icmp ult i32 %i.buq, 1073741823
  br i1 %i.bur, label %.lr.ph.i.i1201.i, label %._crit_edge.i.i1193.i, !llvm.loop !2

._crit_edge.i.i1193.i:                            ; preds = %.lr.ph.i.i1201.i, %.preheader.i.i1190.i
  %.sroa.8.0.lcssa.i.i1194.i = phi i32 [ %.sroa.8.0.extract.trunc.i.i1192.i, %.preheader.i.i1190.i ], [ %i.bup, %.lr.ph.i.i1201.i ] ; 2 uses
  %.sroa.0.0.lcssa.i.i1195.i = phi i32 [ %.sroa.0.0.i.i1188.i, %.preheader.i.i1190.i ], [ %i.buo, %.lr.ph.i.i1201.i ]
  %i.bus = icmp slt i32 %.sroa.8.0.lcssa.i.i1194.i, -149
  %spec.select.i.i1196.i = tail call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i.i1194.i, i32 -149)
  %spec.select6.i.i1197.i = select i1 %i.bus, i32 0, i32 %.sroa.0.0.lcssa.i.i1195.i
  %i.but = zext i32 %spec.select.i.i1196.i to i64
  %i.buu = shl nuw i64 %i.but, 32
  %i.buv = zext i32 %spec.select6.i.i1197.i to i64
  %i.buw = or disjoint i64 %i.buu, %i.buv
  br label %av_normalize_sf.exit.i1198.i

av_normalize_sf.exit.i1198.i:                     ; preds = %._crit_edge.i.i1193.i, %bb.fg
  %.sroa.05.0.insert.insert.i.i1199.i = phi i64 [ -639950127104, %bb.fg ], [ %i.buw, %._crit_edge.i.i1193.i ] ; 2 uses
  %.sroa.5.0.extract.shift.i1200.i = lshr i64 %.sroa.05.0.insert.insert.i.i1199.i, 32
  br label %av_add_sf.exit1204.i

bb.fh:                                            ; preds = %bb.ff
  %i.bux = icmp samesign ugt i64 %.sroa.5.0.i947.i, 4294967248
  br i1 %i.bux, label %bb.fi, label %av_add_sf.exit1204.i

bb.fi:                                            ; preds = %bb.fh
  %i.buy = ashr i32 %.sroa.09.0.extract.trunc.i1164.i, %i.bud ; 2 uses
  %i.buz = add nsw i32 %i.buy, 703687442
  %i.bva = add i32 %i.buy, 1777429266
  %i.bvb = icmp slt i32 %i.bva, 1                 ; 2 uses
  %i.bvc = zext i1 %i.bvb to i32
  %.sroa.0.0.i24.i1172.i = ashr i32 %i.buz, %i.bvc ; 4 uses
  %.not.i29.i1173.i = icmp eq i32 %.sroa.0.0.i24.i1172.i, 0
  br i1 %.not.i29.i1173.i, label %av_normalize_sf.exit41.i1182.i, label %.preheader.i30.i1174.i

.preheader.i30.i1174.i:                           ; preds = %bb.fi
  %.sroa.8.0.extract.trunc.i31.i1176.i = select i1 %i.bvb, i32 -15, i32 -16 ; 2 uses
  %i.bvd = add i32 %.sroa.0.0.i24.i1172.i, 536870911
  %i.bve = icmp ult i32 %i.bvd, 1073741823
  br i1 %i.bve, label %.lr.ph.i38.i1185.i, label %._crit_edge.i32.i1177.i

.lr.ph.i38.i1185.i:                               ; preds = %.preheader.i30.i1174.i, %.lr.ph.i38.i1185.i
  %.sroa.0.08.i39.i1186.i = phi i32 [ %i.bvf, %.lr.ph.i38.i1185.i ], [ %.sroa.0.0.i24.i1172.i, %.preheader.i30.i1174.i ]
  %.sroa.8.07.i40.i1187.i = phi i32 [ %i.bvg, %.lr.ph.i38.i1185.i ], [ %.sroa.8.0.extract.trunc.i31.i1176.i, %.preheader.i30.i1174.i ]
  %i.bvf = shl nsw i32 %.sroa.0.08.i39.i1186.i, 1 ; 3 uses
  %i.bvg = add nsw i32 %.sroa.8.07.i40.i1187.i, -1 ; 2 uses
  %i.bvh = add nsw i32 %i.bvf, 536870911
  %i.bvi = icmp ult i32 %i.bvh, 1073741823
  br i1 %i.bvi, label %.lr.ph.i38.i1185.i, label %._crit_edge.i32.i1177.i, !llvm.loop !2

._crit_edge.i32.i1177.i:                          ; preds = %.lr.ph.i38.i1185.i, %.preheader.i30.i1174.i
  %.sroa.8.0.lcssa.i33.i1178.i = phi i32 [ %.sroa.8.0.extract.trunc.i31.i1176.i, %.preheader.i30.i1174.i ], [ %i.bvg, %.lr.ph.i38.i1185.i ] ; 2 uses
  %.sroa.0.0.lcssa.i34.i1179.i = phi i32 [ %.sroa.0.0.i24.i1172.i, %.preheader.i30.i1174.i ], [ %i.bvf, %.lr.ph.i38.i1185.i ]
  %i.bvj = icmp slt i32 %.sroa.8.0.lcssa.i33.i1178.i, -149
  %spec.select.i35.i1180.i = tail call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i33.i1178.i, i32 -149)
  %spec.select6.i36.i1181.i = select i1 %i.bvj, i32 0, i32 %.sroa.0.0.lcssa.i34.i1179.i
  %i.bvk = zext i32 %spec.select.i35.i1180.i to i64
  %i.bvl = shl nuw i64 %i.bvk, 32
  %i.bvm = zext i32 %spec.select6.i36.i1181.i to i64
  %i.bvn = or disjoint i64 %i.bvl, %i.bvm
  br label %av_normalize_sf.exit41.i1182.i

av_normalize_sf.exit41.i1182.i:                   ; preds = %._crit_edge.i32.i1177.i, %bb.fi
  %.sroa.05.0.insert.insert.i37.i1183.i = phi i64 [ -639950127104, %bb.fi ], [ %i.bvn, %._crit_edge.i32.i1177.i ] ; 2 uses
  %.sroa.5.0.extract.shift18.i1184.i = lshr i64 %.sroa.05.0.insert.insert.i37.i1183.i, 32
  br label %av_add_sf.exit1204.i

av_add_sf.exit1204.i:                             ; preds = %av_normalize_sf.exit41.i1182.i, %bb.fh, %av_normalize_sf.exit.i1198.i, %._crit_edge1465.i
  %.sroa.016.0.i1167.i = phi i64 [ %.sroa.016.0.insert.insert.i950.i, %._crit_edge1465.i ], [ %.sroa.05.0.insert.insert.i.i1199.i, %av_normalize_sf.exit.i1198.i ], [ %.sroa.05.0.insert.insert.i37.i1183.i, %av_normalize_sf.exit41.i1182.i ], [ 703687442, %bb.fh ] ; 4 uses
  %.sroa.5.0.i1168.i = phi i64 [ %.sroa.5.0.i947.i, %._crit_edge1465.i ], [ %.sroa.5.0.extract.shift.i1200.i, %av_normalize_sf.exit.i1198.i ], [ %.sroa.5.0.extract.shift18.i1184.i, %av_normalize_sf.exit41.i1182.i ], [ 4294967280, %bb.fh ] ; 4 uses
  %.sroa.09.0.extract.trunc.i1205.i = trunc i64 %.sroa.10.2.i to i32 ; 2 uses
  %.sroa.4.0.extract.shift.i1206.i = lshr i64 %.sroa.10.2.i, 32 ; 3 uses
  %.sroa.4.0.extract.trunc.i1207.i = trunc nuw i64 %.sroa.4.0.extract.shift.i1206.i to i32 ; 4 uses
  %.neg1326.i = add nsw i32 %.sroa.4.0.extract.trunc.i1207.i, 16
  %i.bvo = sub nuw nsw i32 -16, %.sroa.4.0.extract.trunc.i1207.i
  %i.bvp = icmp sgt i32 %.sroa.4.0.extract.trunc.i1207.i, 15
  br i1 %i.bvp, label %av_add_sf.exit1245.i, label %bb.fj

bb.fj:                                            ; preds = %av_add_sf.exit1204.i
  %i.bvq = icmp sgt i32 %.sroa.4.0.extract.trunc.i1207.i, -16
  br i1 %i.bvq, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  %i.bvr = lshr i32 703687442, %.neg1326.i
  %i.bvs = add nsw i32 %i.bvr, %.sroa.09.0.extract.trunc.i1205.i ; 2 uses
  %i.bvt = add i32 %i.bvs, 1073741824
  %i.bvu = icmp slt i32 %i.bvt, 1                 ; 2 uses
  %i.bvv = zext i1 %i.bvu to i32
  %.sroa.0.0.i.i1229.i = ashr i32 %i.bvs, %i.bvv  ; 4 uses
  %.not.i.i1230.i = icmp eq i32 %.sroa.0.0.i.i1229.i, 0
  br i1 %.not.i.i1230.i, label %av_normalize_sf.exit.i1239.i, label %.preheader.i.i1231.i

.preheader.i.i1231.i:                             ; preds = %bb.fk
  %i.bvw = zext i1 %i.bvu to i64
  %.sroa.5.0.i.i1232.i = add nuw nsw i64 %.sroa.4.0.extract.shift.i1206.i, %i.bvw
  %.sroa.8.0.extract.trunc.i.i1233.i = trunc i64 %.sroa.5.0.i.i1232.i to i32 ; 2 uses
  %i.bvx = add i32 %.sroa.0.0.i.i1229.i, 536870911
  %i.bvy = icmp ult i32 %i.bvx, 1073741823
  br i1 %i.bvy, label %.lr.ph.i.i1242.i, label %._crit_edge.i.i1234.i

.lr.ph.i.i1242.i:                                 ; preds = %.preheader.i.i1231.i, %.lr.ph.i.i1242.i
  %.sroa.0.08.i.i1243.i = phi i32 [ %i.bvz, %.lr.ph.i.i1242.i ], [ %.sroa.0.0.i.i1229.i, %.preheader.i.i1231.i ]
  %.sroa.8.07.i.i1244.i = phi i32 [ %i.bwa, %.lr.ph.i.i1242.i ], [ %.sroa.8.0.extract.trunc.i.i1233.i, %.preheader.i.i1231.i ]
  %i.bvz = shl nsw i32 %.sroa.0.08.i.i1243.i, 1   ; 3 uses
  %i.bwa = add nsw i32 %.sroa.8.07.i.i1244.i, -1  ; 2 uses
  %i.bwb = add nsw i32 %i.bvz, 536870911
  %i.bwc = icmp ult i32 %i.bwb, 1073741823
  br i1 %i.bwc, label %.lr.ph.i.i1242.i, label %._crit_edge.i.i1234.i, !llvm.loop !2

._crit_edge.i.i1234.i:                            ; preds = %.lr.ph.i.i1242.i, %.preheader.i.i1231.i
  %.sroa.8.0.lcssa.i.i1235.i = phi i32 [ %.sroa.8.0.extract.trunc.i.i1233.i, %.preheader.i.i1231.i ], [ %i.bwa, %.lr.ph.i.i1242.i ] ; 2 uses
  %.sroa.0.0.lcssa.i.i1236.i = phi i32 [ %.sroa.0.0.i.i1229.i, %.preheader.i.i1231.i ], [ %i.bvz, %.lr.ph.i.i1242.i ]
  %i.bwd = icmp slt i32 %.sroa.8.0.lcssa.i.i1235.i, -149
  %spec.select.i.i1237.i = tail call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i.i1235.i, i32 -149)
  %spec.select6.i.i1238.i = select i1 %i.bwd, i32 0, i32 %.sroa.0.0.lcssa.i.i1236.i
  %i.bwe = zext i32 %spec.select.i.i1237.i to i64
  %i.bwf = shl nuw i64 %i.bwe, 32
  %i.bwg = zext i32 %spec.select6.i.i1238.i to i64
  %i.bwh = or disjoint i64 %i.bwf, %i.bwg
  br label %av_normalize_sf.exit.i1239.i

av_normalize_sf.exit.i1239.i:                     ; preds = %._crit_edge.i.i1234.i, %bb.fk
  %.sroa.05.0.insert.insert.i.i1240.i = phi i64 [ -639950127104, %bb.fk ], [ %i.bwh, %._crit_edge.i.i1234.i ] ; 2 uses
  %.sroa.5.0.extract.shift.i1241.i = lshr i64 %.sroa.05.0.insert.insert.i.i1240.i, 32
  br label %av_add_sf.exit1245.i

bb.fl:                                            ; preds = %bb.fj
  %i.bwi = icmp ugt i64 %.sroa.10.2.i, -201863462913
  br i1 %i.bwi, label %bb.fm, label %av_add_sf.exit1245.i

bb.fm:                                            ; preds = %bb.fl
  %i.bwj = ashr i32 %.sroa.09.0.extract.trunc.i1205.i, %i.bvo ; 2 uses
  %i.bwk = add nsw i32 %i.bwj, 703687442
  %i.bwl = add i32 %i.bwj, 1777429266
  %i.bwm = icmp slt i32 %i.bwl, 1                 ; 2 uses
  %i.bwn = zext i1 %i.bwm to i32
  %.sroa.0.0.i24.i1213.i = ashr i32 %i.bwk, %i.bwn ; 4 uses
  %.not.i29.i1214.i = icmp eq i32 %.sroa.0.0.i24.i1213.i, 0
  br i1 %.not.i29.i1214.i, label %av_normalize_sf.exit41.i1223.i, label %.preheader.i30.i1215.i

.preheader.i30.i1215.i:                           ; preds = %bb.fm
  %.sroa.8.0.extract.trunc.i31.i1217.i = select i1 %i.bwm, i32 -15, i32 -16 ; 2 uses
  %i.bwo = add i32 %.sroa.0.0.i24.i1213.i, 536870911
  %i.bwp = icmp ult i32 %i.bwo, 1073741823
  br i1 %i.bwp, label %.lr.ph.i38.i1226.i, label %._crit_edge.i32.i1218.i

.lr.ph.i38.i1226.i:                               ; preds = %.preheader.i30.i1215.i, %.lr.ph.i38.i1226.i
  %.sroa.0.08.i39.i1227.i = phi i32 [ %i.bwq, %.lr.ph.i38.i1226.i ], [ %.sroa.0.0.i24.i1213.i, %.preheader.i30.i1215.i ]
  %.sroa.8.07.i40.i1228.i = phi i32 [ %i.bwr, %.lr.ph.i38.i1226.i ], [ %.sroa.8.0.extract.trunc.i31.i1217.i, %.preheader.i30.i1215.i ]
  %i.bwq = shl nsw i32 %.sroa.0.08.i39.i1227.i, 1 ; 3 uses
  %i.bwr = add nsw i32 %.sroa.8.07.i40.i1228.i, -1 ; 2 uses
  %i.bws = add nsw i32 %i.bwq, 536870911
  %i.bwt = icmp ult i32 %i.bws, 1073741823
  br i1 %i.bwt, label %.lr.ph.i38.i1226.i, label %._crit_edge.i32.i1218.i, !llvm.loop !2

._crit_edge.i32.i1218.i:                          ; preds = %.lr.ph.i38.i1226.i, %.preheader.i30.i1215.i
  %.sroa.8.0.lcssa.i33.i1219.i = phi i32 [ %.sroa.8.0.extract.trunc.i31.i1217.i, %.preheader.i30.i1215.i ], [ %i.bwr, %.lr.ph.i38.i1226.i ] ; 2 uses
  %.sroa.0.0.lcssa.i34.i1220.i = phi i32 [ %.sroa.0.0.i24.i1213.i, %.preheader.i30.i1215.i ], [ %i.bwq, %.lr.ph.i38.i1226.i ]
  %i.bwu = icmp slt i32 %.sroa.8.0.lcssa.i33.i1219.i, -149
  %spec.select.i35.i1221.i = tail call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i33.i1219.i, i32 -149)
  %spec.select6.i36.i1222.i = select i1 %i.bwu, i32 0, i32 %.sroa.0.0.lcssa.i34.i1220.i
  %i.bwv = zext i32 %spec.select.i35.i1221.i to i64
  %i.bww = shl nuw i64 %i.bwv, 32
  %i.bwx = zext i32 %spec.select6.i36.i1222.i to i64
  %i.bwy = or disjoint i64 %i.bww, %i.bwx
  br label %av_normalize_sf.exit41.i1223.i

av_normalize_sf.exit41.i1223.i:                   ; preds = %._crit_edge.i32.i1218.i, %bb.fm
  %.sroa.05.0.insert.insert.i37.i1224.i = phi i64 [ -639950127104, %bb.fm ], [ %i.bwy, %._crit_edge.i32.i1218.i ] ; 2 uses
  %.sroa.5.0.extract.shift18.i1225.i = lshr i64 %.sroa.05.0.insert.insert.i37.i1224.i, 32
  br label %av_add_sf.exit1245.i

av_add_sf.exit1245.i:                             ; preds = %av_normalize_sf.exit41.i1223.i, %bb.fl, %av_normalize_sf.exit.i1239.i, %av_add_sf.exit1204.i, %._crit_edge1457.i
  %.sroa.5.0.i11681704.i = phi i64 [ %.sroa.5.0.i1168.i, %av_add_sf.exit1204.i ], [ %.sroa.5.0.i1168.i, %av_normalize_sf.exit.i1239.i ], [ %.sroa.5.0.i1168.i, %av_normalize_sf.exit41.i1223.i ], [ %.sroa.5.0.i1168.i, %bb.fl ], [ 4294967280, %._crit_edge1457.i ]
  %.sroa.016.0.i11671702.i = phi i64 [ %.sroa.016.0.i1167.i, %av_add_sf.exit1204.i ], [ %.sroa.016.0.i1167.i, %av_normalize_sf.exit.i1239.i ], [ %.sroa.016.0.i1167.i, %av_normalize_sf.exit41.i1223.i ], [ %.sroa.016.0.i1167.i, %bb.fl ], [ 703687442, %._crit_edge1457.i ]
  %.sroa.016.0.i1208.i = phi i64 [ %.sroa.10.2.i, %av_add_sf.exit1204.i ], [ %.sroa.05.0.insert.insert.i.i1240.i, %av_normalize_sf.exit.i1239.i ], [ %.sroa.05.0.insert.insert.i37.i1224.i, %av_normalize_sf.exit41.i1223.i ], [ 703687442, %bb.fl ], [ 703687442, %._crit_edge1457.i ]
  %.sroa.5.0.i1209.i = phi i64 [ %.sroa.4.0.extract.shift.i1206.i, %av_add_sf.exit1204.i ], [ %.sroa.5.0.extract.shift.i1241.i, %av_normalize_sf.exit.i1239.i ], [ %.sroa.5.0.extract.shift18.i1225.i, %av_normalize_sf.exit41.i1223.i ], [ 4294967280, %bb.fl ], [ 4294967280, %._crit_edge1457.i ]
  %.sroa.9.0.extract.trunc.i1247.i = trunc nuw i64 %.sroa.5.0.i11681704.i to i32
  %.sroa.2.0.extract.trunc.i1249.i = trunc nuw i64 %.sroa.5.0.i1209.i to i32
  %i.bwz = shl i64 %.sroa.016.0.i11671702.i, 32
  %i.bxa = ashr exact i64 %i.bwz, 2
  %i.bxb = shl i64 %.sroa.016.0.i1208.i, 32
  %i.bxc = ashr exact i64 %i.bxb, 32
  %i.bxd = sdiv i64 %i.bxa, %i.bxc                ; 3 uses
  %i.bxe = sub nsw i32 %.sroa.9.0.extract.trunc.i1247.i, %.sroa.2.0.extract.trunc.i1249.i ; 2 uses
  %i.bxf = add nsw i64 %i.bxd, 2147483648
  %.not18.i1250.i = icmp ult i64 %i.bxf, 4294967296
  br i1 %.not18.i1250.i, label %av_div_sf.exit1267.i, label %.lr.ph.i1251.i

.lr.ph.i1251.i:                                   ; preds = %av_add_sf.exit1245.i, %.lr.ph.i1251.i
  %.020.i1252.i = phi i64 [ %i.bxg, %.lr.ph.i1251.i ], [ %i.bxd, %av_add_sf.exit1245.i ]
  %.sroa.9.019.i1253.i = phi i32 [ %i.bxh, %.lr.ph.i1251.i ], [ %i.bxe, %av_add_sf.exit1245.i ]
  %i.bxg = sdiv i64 %.020.i1252.i, 2              ; 3 uses
  %i.bxh = add nsw i32 %.sroa.9.019.i1253.i, -1   ; 2 uses
  %i.bxi = add nsw i64 %i.bxg, 2147483648
  %.not.i1254.i = icmp ult i64 %i.bxi, 4294967296
  br i1 %.not.i1254.i, label %av_div_sf.exit1267.i, label %.lr.ph.i1251.i, !llvm.loop !1

av_div_sf.exit1267.i:                             ; preds = %.lr.ph.i1251.i, %av_add_sf.exit1245.i
  %.sroa.9.0.lcssa.i1255.i = phi i32 [ %i.bxe, %av_add_sf.exit1245.i ], [ %i.bxh, %.lr.ph.i1251.i ]
  %.0.lcssa.i1256.i = phi i64 [ %i.bxd, %av_add_sf.exit1245.i ], [ %i.bxg, %.lr.ph.i1251.i ]
  %.sroa.9.0.insert.ext.i1257.i = zext i32 %.sroa.9.0.lcssa.i1255.i to i64 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i1258.i = trunc nsw i64 %.0.lcssa.i1256.i to i32 ; 2 uses
  %i.bxj = add i32 %.sroa.0.0.extract.trunc.i.i1258.i, 1073741824
  %i.bxk = icmp slt i32 %i.bxj, 1                 ; 2 uses
  %i.bxl = add nuw nsw i64 %.sroa.9.0.insert.ext.i1257.i, 1
  %i.bxm = and i64 %i.bxl, 4294967295
  %.sroa.5.0.i.i1259.i = select i1 %i.bxk, i64 %i.bxm, i64 %.sroa.9.0.insert.ext.i1257.i ; 2 uses
  %i.bxn = zext i1 %i.bxk to i32
  %.sroa.0.0.i.i1260.i = ashr i32 %.sroa.0.0.extract.trunc.i.i1258.i, %i.bxn ; 2 uses
  %.sroa.2.0.insert.shift.i.i1261.i = shl nuw i64 %.sroa.5.0.i.i1259.i, 32
  %.sroa.02.0.insert.ext.i.i1262.i = zext i32 %.sroa.0.0.i.i1260.i to i64
  %.sroa.02.0.insert.insert.i.i1263.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i1261.i, %.sroa.02.0.insert.ext.i.i1262.i
  %.sroa.9.0.extract.trunc14.i1264.i = trunc nuw i64 %.sroa.5.0.i.i1259.i to i32
  %i.bxo = icmp eq i32 %.sroa.0.0.i.i1260.i, 0
  %i.bxp = icmp slt i32 %.sroa.9.0.extract.trunc14.i1264.i, -149
  %or.cond.i1265.i = select i1 %i.bxo, i1 true, i1 %i.bxp
  %..i1266.i = select i1 %or.cond.i1265.i, i64 -639950127104, i64 %.sroa.02.0.insert.insert.i.i1263.i ; 3 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %..i1266.i to i32 ; 3 uses
  %.sroa.12.0.extract.shift.i.i = lshr i64 %..i1266.i, 32 ; 2 uses
  %.sroa.12.0.extract.trunc.i.i = trunc nuw i64 %.sroa.12.0.extract.shift.i.i to i32 ; 2 uses
  %i.bxq = icmp eq i32 %.sroa.0.0.extract.trunc.i.i, 0
  br i1 %i.bxq, label %av_gt_sf.exit1272.thread.i, label %bb.fn

bb.fn:                                            ; preds = %av_div_sf.exit1267.i
  %i.bxr = icmp slt i32 %.sroa.0.0.extract.trunc.i.i, 0
  br i1 %i.bxr, label %bb.fo, label %av_sqrt_sf.exit.i

bb.fo:                                            ; preds = %bb.fn
  tail call void @abort() #13
  unreachable

av_sqrt_sf.exit.i:                                ; preds = %bb.fn
  %i.bxs = add nsw i32 %.sroa.0.0.extract.trunc.i.i, -536870912
  %i.bxt = ashr i32 %i.bxs, 20
  %i.bxu = and i64 %..i1266.i, 1048575            ; 2 uses
  %i.bxv = sext i32 %i.bxt to i64
  %i.bxw = getelementptr inbounds [4 x i8], ptr @av_sqrttbl_sf, i64 %i.bxv ; 2 uses
  %i.bxx = load i32, ptr %i.bxw, align 4, !tbaa !14
  %i.bxy = sext i32 %i.bxx to i64
  %i.bxz = sub nuw nsw i64 1048576, %i.bxu
  %i.bya = mul nsw i64 %i.bxz, %i.bxy
  %i.byb = getelementptr i8, ptr %i.bxw, i64 4
  %i.byc = load i32, ptr %i.byb, align 4, !tbaa !14
  %i.byd = sext i32 %i.byc to i64
  %i.bye = mul nsw i64 %i.bxu, %i.byd
  %i.byf = add nsw i64 %i.bye, %i.bya
  %i.byg = and i64 %.sroa.12.0.extract.shift.i.i, 1
  %i.byh = getelementptr inbounds nuw [4 x i8], ptr @av_sqr_exp_multbl_sf, i64 %i.byg
  %i.byi = load i32, ptr %i.byh, align 4, !tbaa !14
  %i.byj = sext i32 %i.byi to i64
  %i.byk = shl i64 %i.byf, 12
  %i.byl = add i64 %i.byk, 2147483648
  %i.bym = ashr i64 %i.byl, 32
  %i.byn = mul nsw i64 %i.bym, %i.byj
  %i.byo = add nsw i64 %i.byn, 268435456
  %i.byp = lshr i64 %i.byo, 29
  %i.byq = trunc i64 %i.byp to i32                ; 2 uses
  %i.byr = icmp sgt i32 %i.byq, 1073741823        ; 2 uses
  %i.bys = add nsw i32 %.sroa.12.0.extract.trunc.i.i, -2
  %.sroa.12.0.i.i = select i1 %i.byr, i32 %.sroa.12.0.extract.trunc.i.i, i32 %i.bys
  %i.byt = zext i1 %i.byr to i32
  %.sroa.0.0.i.i = lshr i32 %i.byq, %i.byt        ; 4 uses
  %i.byu = ashr i32 %.sroa.12.0.i.i, 1            ; 6 uses
  %i.byv = add nsw i32 %i.byu, 1
  %i.byw = zext i32 %i.byv to i64
  %i.byx = shl nuw i64 %i.byw, 32
  %i.byy = zext i32 %.sroa.0.0.i.i to i64
  %i.byz = or disjoint i64 %i.byx, %i.byy         ; 2 uses
  %i.bza = icmp slt i32 %i.byu, -31
  br i1 %i.bza, label %av_gt_sf.exit1272.thread.i, label %bb.fp

bb.fp:                                            ; preds = %av_sqrt_sf.exit.i
  %i.bzb = icmp slt i32 %i.byu, 0
  br i1 %i.bzb, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  %i.bzc = sub nsw i32 0, %i.byu
  %i.bzd = ashr i32 %.sroa.0.0.i.i, %i.bzc
  %i.bze = icmp sgt i32 %i.bzd, 850883053
  br label %av_gt_sf.exit1272.i

bb.fr:                                            ; preds = %bb.fp
  %i.bzf = icmp samesign ult i32 %i.byu, 32
  br i1 %i.bzf, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.bzg = lshr i32 850883053, %i.byu
  %i.bzh = icmp slt i32 %i.bzg, %.sroa.0.0.i.i
  br label %av_gt_sf.exit1272.i

bb.ft:                                            ; preds = %bb.fr
  %i.bzi = icmp sgt i32 %.sroa.0.0.i.i, 0
  br label %av_gt_sf.exit1272.i

av_gt_sf.exit1272.i:                              ; preds = %bb.ft, %bb.fs, %bb.fq
  %.0.i1271.in.i = phi i1 [ %i.bzi, %bb.ft ], [ %i.bze, %bb.fq ], [ %i.bzh, %bb.fs ]
  %.0.i1271.in.fr.i = freeze i1 %.0.i1271.in.i
  %spec.select.i231 = select i1 %.0.i1271.in.fr.i, i64 5145850349, i64 %i.byz
  br label %av_gt_sf.exit1272.thread.i

av_gt_sf.exit1272.thread.i:                       ; preds = %av_gt_sf.exit1272.i, %av_sqrt_sf.exit.i, %av_div_sf.exit1267.i
  %i.bzj = phi i64 [ %spec.select.i231, %av_gt_sf.exit1272.i ], [ -639950127104, %av_div_sf.exit1267.i ], [ %i.byz, %av_sqrt_sf.exit.i ] ; 2 uses
  %i.bzk = load i32, ptr %i.lb, align 8, !tbaa !14 ; 2 uses
  %i.bzl = sub nsw i32 %i.afm, %i.bzk
  %i.bzm = icmp slt i32 %.pre-phi1589.i, %i.bzl
  br i1 %i.bzm, label %.lr.ph1469.i, label %.loopexit.i232

.lr.ph1469.i:                                     ; preds = %av_gt_sf.exit1272.thread.i
  %.sroa.25.0.extract.shift.i1273.i = and i64 %i.bzj, -4294967296
  %i.bzn = shl i64 %i.bzj, 32
  %i.bzo = ashr exact i64 %i.bzn, 32              ; 3 uses
  %i.bzp = add i64 %.sroa.25.0.extract.shift.i1273.i, -4294967296 ; 3 uses
  %i.bzq = sub i32 0, %.lcssa1415.i
  %i.bzr = sext i32 %i.bzq to i64
  %i.bzs = zext i16 %i.afi to i64
  %i.bzt = add nsw i64 %i.bzr, %i.bzs
  br label %bb.fu

bb.fu:                                            ; preds = %bb.fu, %.lr.ph1469.i
  %indvars.iv1577.i = phi i64 [ %i.bzt, %.lr.ph1469.i ], [ %indvars.iv.next1578.i, %bb.fu ] ; 4 uses
  %i.bzu = getelementptr inbounds [8 x i8], ptr %i.afa, i64 %indvars.iv1577.i ; 2 uses
  %i.bzv = load i64, ptr %i.bzu, align 8          ; 2 uses
  %i.bzw = shl i64 %i.bzv, 32
  %i.bzx = ashr exact i64 %i.bzw, 32
  %i.bzy = mul nsw i64 %i.bzx, %i.bzo
  %i.bzz = lshr i64 %i.bzy, 29
  %.sroa.0.0.insert.insert.i1274.i = add i64 %i.bzv, %i.bzp
  %.sroa.0.0.extract.trunc.i.i1275.i = trunc i64 %i.bzz to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i.i1276.i = lshr i64 %.sroa.0.0.insert.insert.i1274.i, 32 ; 2 uses
  %i.caa = add i32 %.sroa.0.0.extract.trunc.i.i1275.i, 1073741824
  %i.cab = icmp slt i32 %i.caa, 1                 ; 2 uses
  %i.cac = add nuw nsw i64 %.sroa.5.0.extract.shift.i.i1276.i, 1
  %i.cad = and i64 %i.cac, 4294967295
  %.sroa.5.0.i.i1277.i = select i1 %i.cab, i64 %i.cad, i64 %.sroa.5.0.extract.shift.i.i1276.i ; 2 uses
  %i.cae = zext i1 %i.cab to i32
  %.sroa.0.0.i.i1278.i = ashr i32 %.sroa.0.0.extract.trunc.i.i1275.i, %i.cae ; 2 uses
  %.sroa.2.0.insert.shift.i.i1279.i = shl nuw i64 %.sroa.5.0.i.i1277.i, 32
  %.sroa.02.0.insert.ext.i.i1280.i = zext i32 %.sroa.0.0.i.i1278.i to i64
  %.sroa.02.0.insert.insert.i.i1281.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i1279.i, %.sroa.02.0.insert.ext.i.i1280.i
  %.sroa.7.0.extract.trunc11.i1282.i = trunc nuw i64 %.sroa.5.0.i.i1277.i to i32
  %i.caf = icmp eq i32 %.sroa.0.0.i.i1278.i, 0
  %i.cag = icmp slt i32 %.sroa.7.0.extract.trunc11.i1282.i, -149
  %or.cond.i1283.i = select i1 %i.caf, i1 true, i1 %i.cag
  %..i1284.i = select i1 %or.cond.i1283.i, i64 -639950127104, i64 %.sroa.02.0.insert.insert.i.i1281.i
  store i64 %..i1284.i, ptr %i.bzu, align 8, !tbaa !14
  %i.cah = getelementptr inbounds [8 x i8], ptr %i.aev, i64 %indvars.iv1577.i ; 2 uses
  %i.cai = load i64, ptr %i.cah, align 8          ; 2 uses
  %i.caj = shl i64 %i.cai, 32
  %i.cak = ashr exact i64 %i.caj, 32
  %i.cal = mul nsw i64 %i.cak, %i.bzo
  %i.cam = lshr i64 %i.cal, 29
  %.sroa.0.0.insert.insert.i1286.i = add i64 %i.cai, %i.bzp
  %.sroa.0.0.extract.trunc.i.i1287.i = trunc i64 %i.cam to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i.i1288.i = lshr i64 %.sroa.0.0.insert.insert.i1286.i, 32 ; 2 uses
  %i.can = add i32 %.sroa.0.0.extract.trunc.i.i1287.i, 1073741824
  %i.cao = icmp slt i32 %i.can, 1                 ; 2 uses
  %i.cap = add nuw nsw i64 %.sroa.5.0.extract.shift.i.i1288.i, 1
  %i.caq = and i64 %i.cap, 4294967295
  %.sroa.5.0.i.i1289.i = select i1 %i.cao, i64 %i.caq, i64 %.sroa.5.0.extract.shift.i.i1288.i ; 2 uses
  %i.car = zext i1 %i.cao to i32
  %.sroa.0.0.i.i1290.i = ashr i32 %.sroa.0.0.extract.trunc.i.i1287.i, %i.car ; 2 uses
  %.sroa.2.0.insert.shift.i.i1291.i = shl nuw i64 %.sroa.5.0.i.i1289.i, 32
  %.sroa.02.0.insert.ext.i.i1292.i = zext i32 %.sroa.0.0.i.i1290.i to i64
  %.sroa.02.0.insert.insert.i.i1293.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i1291.i, %.sroa.02.0.insert.ext.i.i1292.i
  %.sroa.7.0.extract.trunc11.i1294.i = trunc nuw i64 %.sroa.5.0.i.i1289.i to i32
  %i.cas = icmp eq i32 %.sroa.0.0.i.i1290.i, 0
  %i.cat = icmp slt i32 %.sroa.7.0.extract.trunc11.i1294.i, -149
  %or.cond.i1295.i = select i1 %i.cas, i1 true, i1 %i.cat
  %..i1296.i = select i1 %or.cond.i1295.i, i64 -639950127104, i64 %.sroa.02.0.insert.insert.i.i1293.i
  store i64 %..i1296.i, ptr %i.cah, align 8, !tbaa !14
  %i.cau = getelementptr inbounds [8 x i8], ptr %i.aew, i64 %indvars.iv1577.i ; 2 uses
  %i.cav = load i64, ptr %i.cau, align 8          ; 2 uses
  %i.caw = shl i64 %i.cav, 32
  %i.cax = ashr exact i64 %i.caw, 32
  %i.cay = mul nsw i64 %i.cax, %i.bzo
end_hunk_2
begin_hunk_3_@sbr_hf_inverse_filter:bb.a
  %i.vk = add i32 %i.vj, 1073741824
  %i.vl = icmp slt i32 %i.vk, 1                   ; 2 uses
  %i.vm = zext i1 %i.vl to i32
  %.sroa.0.0.i24.i697 = ashr i32 %i.vj, %i.vm     ; 4 uses
  %.not.i29.i698 = icmp eq i32 %.sroa.0.0.i24.i697, 0
  br i1 %.not.i29.i698, label %av_normalize_sf.exit41.i707, label %.preheader.i30.i699

.preheader.i30.i699:                              ; preds = %bb.as
  %i.vn = zext i1 %i.vl to i64
  %.sroa.5.0.i23.i700 = add nuw nsw i64 %.sroa.414.0.extract.shift.i687, %i.vn
  %.sroa.8.0.extract.trunc.i31.i701 = trunc i64 %.sroa.5.0.i23.i700 to i32 ; 2 uses
  %i.vo = add i32 %.sroa.0.0.i24.i697, 536870911
  %i.vp = icmp ult i32 %i.vo, 1073741823
  br i1 %i.vp, label %.lr.ph.i38.i710, label %._crit_edge.i32.i702

.lr.ph.i38.i710:                                  ; preds = %.preheader.i30.i699, %.lr.ph.i38.i710
  %.sroa.0.08.i39.i711 = phi i32 [ %i.vq, %.lr.ph.i38.i710 ], [ %.sroa.0.0.i24.i697, %.preheader.i30.i699 ]
  %.sroa.8.07.i40.i712 = phi i32 [ %i.vr, %.lr.ph.i38.i710 ], [ %.sroa.8.0.extract.trunc.i31.i701, %.preheader.i30.i699 ]
  %i.vq = shl nsw i32 %.sroa.0.08.i39.i711, 1     ; 3 uses
  %i.vr = add nsw i32 %.sroa.8.07.i40.i712, -1    ; 2 uses
  %i.vs = add nsw i32 %i.vq, 536870911
  %i.vt = icmp ult i32 %i.vs, 1073741823
  br i1 %i.vt, label %.lr.ph.i38.i710, label %._crit_edge.i32.i702, !llvm.loop !2

._crit_edge.i32.i702:                             ; preds = %.lr.ph.i38.i710, %.preheader.i30.i699
  %.sroa.8.0.lcssa.i33.i703 = phi i32 [ %.sroa.8.0.extract.trunc.i31.i701, %.preheader.i30.i699 ], [ %i.vr, %.lr.ph.i38.i710 ] ; 2 uses
  %.sroa.0.0.lcssa.i34.i704 = phi i32 [ %.sroa.0.0.i24.i697, %.preheader.i30.i699 ], [ %i.vq, %.lr.ph.i38.i710 ]
  %i.vu = icmp slt i32 %.sroa.8.0.lcssa.i33.i703, -149
  %spec.select.i35.i705 = call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i33.i703, i32 -149)
  %spec.select6.i36.i706 = select i1 %i.vu, i32 0, i32 %.sroa.0.0.lcssa.i34.i704
  %i.vv = zext i32 %spec.select.i35.i705 to i64
  %i.vw = shl nuw i64 %i.vv, 32
  %i.vx = zext i32 %spec.select6.i36.i706 to i64
  %i.vy = or disjoint i64 %i.vw, %i.vx
  br label %av_normalize_sf.exit41.i707

av_normalize_sf.exit41.i707:                      ; preds = %._crit_edge.i32.i702, %bb.as
  %.sroa.05.0.insert.insert.i37.i708 = phi i64 [ -639950127104, %bb.as ], [ %i.vy, %._crit_edge.i32.i702 ] ; 2 uses
  %.sroa.5.0.extract.shift18.i709 = lshr i64 %.sroa.05.0.insert.insert.i37.i708, 32
  br label %av_add_sf.exit729

av_add_sf.exit729:                                ; preds = %av_sub_sf.exit685, %av_normalize_sf.exit.i723, %bb.ar, %av_normalize_sf.exit41.i707
  %.sroa.016.0.i692 = phi i64 [ %.sroa.016.0.insert.insert.i.i652, %av_sub_sf.exit685 ], [ %.sroa.05.0.insert.insert.i.i724, %av_normalize_sf.exit.i723 ], [ %.sroa.05.0.insert.insert.i37.i708, %av_normalize_sf.exit41.i707 ], [ %i.ul, %bb.ar ]
  %.sroa.5.0.i693 = phi i64 [ %.sroa.5.0.i.i649, %av_sub_sf.exit685 ], [ %.sroa.5.0.extract.shift.i725, %av_normalize_sf.exit.i723 ], [ %.sroa.5.0.extract.shift18.i709, %av_normalize_sf.exit41.i707 ], [ %.sroa.414.0.extract.shift.i687, %bb.ar ]
  %.sroa.9.0.extract.trunc.i730 = trunc nuw i64 %.sroa.5.0.i581 to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %i.m, 32
  %.sroa.2.0.extract.trunc.i731 = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32 ; 2 uses
  %.neg789 = mul i64 %.sroa.016.0.i580, -4294967296
  %i.vz = ashr exact i64 %.neg789, 2
  %i.wa = sdiv i64 %i.vz, %i.q                    ; 3 uses
  %i.wb = sub nsw i32 %.sroa.9.0.extract.trunc.i730, %.sroa.2.0.extract.trunc.i731 ; 2 uses
  %i.wc = add nsw i64 %i.wa, 2147483648
  %.not18.i732 = icmp ult i64 %i.wc, 4294967296
  br i1 %.not18.i732, label %av_div_sf.exit749, label %.lr.ph.i733

.lr.ph.i733:                                      ; preds = %av_add_sf.exit729, %.lr.ph.i733
  %.020.i734 = phi i64 [ %i.wd, %.lr.ph.i733 ], [ %i.wa, %av_add_sf.exit729 ]
  %.sroa.9.019.i735 = phi i32 [ %i.we, %.lr.ph.i733 ], [ %i.wb, %av_add_sf.exit729 ]
  %i.wd = sdiv i64 %.020.i734, 2                  ; 3 uses
  %i.we = add nsw i32 %.sroa.9.019.i735, -1       ; 2 uses
  %i.wf = add nsw i64 %i.wd, 2147483648
  %.not.i736 = icmp ult i64 %i.wf, 4294967296
  br i1 %.not.i736, label %av_div_sf.exit749, label %.lr.ph.i733, !llvm.loop !1

av_div_sf.exit749:                                ; preds = %.lr.ph.i733, %av_add_sf.exit729
  %.sroa.9.0.lcssa.i737 = phi i32 [ %i.wb, %av_add_sf.exit729 ], [ %i.we, %.lr.ph.i733 ]
  %.0.lcssa.i738 = phi i64 [ %i.wa, %av_add_sf.exit729 ], [ %i.wd, %.lr.ph.i733 ]
  %.sroa.9.0.insert.ext.i739 = zext i32 %.sroa.9.0.lcssa.i737 to i64 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i740 = trunc nsw i64 %.0.lcssa.i738 to i32 ; 2 uses
  %i.wg = add i32 %.sroa.0.0.extract.trunc.i.i740, 1073741824
  %i.wh = icmp slt i32 %i.wg, 1                   ; 2 uses
  %i.wi = add nuw nsw i64 %.sroa.9.0.insert.ext.i739, 1
  %i.wj = and i64 %i.wi, 4294967295
  %.sroa.5.0.i.i741 = select i1 %i.wh, i64 %i.wj, i64 %.sroa.9.0.insert.ext.i739 ; 2 uses
  %i.wk = zext i1 %i.wh to i32
  %.sroa.0.0.i.i742 = ashr i32 %.sroa.0.0.extract.trunc.i.i740, %i.wk ; 2 uses
  %.sroa.2.0.insert.shift.i.i743 = shl nuw i64 %.sroa.5.0.i.i741, 32
  %.sroa.02.0.insert.ext.i.i744 = zext i32 %.sroa.0.0.i.i742 to i64
  %.sroa.02.0.insert.insert.i.i745 = or disjoint i64 %.sroa.2.0.insert.shift.i.i743, %.sroa.02.0.insert.ext.i.i744
  %.sroa.9.0.extract.trunc14.i746 = trunc nuw i64 %.sroa.5.0.i.i741 to i32
  %i.wl = icmp eq i32 %.sroa.0.0.i.i742, 0
  %i.wm = icmp slt i32 %.sroa.9.0.extract.trunc14.i746, -149
  %or.cond.i747 = select i1 %i.wl, i1 true, i1 %i.wm
  %..i748 = select i1 %or.cond.i747, i64 -639950127104, i64 %.sroa.02.0.insert.insert.i.i745 ; 2 uses
  %.sroa.075.0.extract.trunc = trunc i64 %..i748 to i32 ; 2 uses
  %.sroa.677.0.extract.shift = lshr i64 %..i748, 32
  %.sroa.677.0.extract.trunc = trunc nuw i64 %.sroa.677.0.extract.shift to i32 ; 6 uses
  %.sroa.9.0.extract.trunc.i751 = trunc nuw i64 %.sroa.5.0.i693 to i32
  %.neg792 = mul i64 %.sroa.016.0.i692, -4294967296
  %i.wn = ashr exact i64 %.neg792, 2
  %i.wo = sdiv i64 %i.wn, %i.q                    ; 3 uses
  %i.wp = sub nsw i32 %.sroa.9.0.extract.trunc.i751, %.sroa.2.0.extract.trunc.i731 ; 2 uses
  %i.wq = add nsw i64 %i.wo, 2147483648
  %.not18.i754 = icmp ult i64 %i.wq, 4294967296
  br i1 %.not18.i754, label %.loopexit, label %.lr.ph.i755

.lr.ph.i755:                                      ; preds = %av_div_sf.exit749, %.lr.ph.i755
  %.020.i756 = phi i64 [ %i.wr, %.lr.ph.i755 ], [ %i.wo, %av_div_sf.exit749 ]
  %.sroa.9.019.i757 = phi i32 [ %i.ws, %.lr.ph.i755 ], [ %i.wp, %av_div_sf.exit749 ]
  %i.wr = sdiv i64 %.020.i756, 2                  ; 3 uses
  %i.ws = add nsw i32 %.sroa.9.019.i757, -1       ; 2 uses
  %i.wt = add nsw i64 %i.wr, 2147483648
  %.not.i758 = icmp ult i64 %i.wt, 4294967296
  br i1 %.not.i758, label %.loopexit, label %.lr.ph.i755, !llvm.loop !1

.loopexit:                                        ; preds = %.lr.ph.i755, %av_div_sf.exit749
  %.sroa.9.0.lcssa.i759 = phi i32 [ %i.wp, %av_div_sf.exit749 ], [ %i.ws, %.lr.ph.i755 ]
  %.0.lcssa.i760 = phi i64 [ %i.wo, %av_div_sf.exit749 ], [ %i.wr, %.lr.ph.i755 ]
  %.sroa.9.0.insert.ext.i761 = zext i32 %.sroa.9.0.lcssa.i759 to i64 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i762 = trunc nsw i64 %.0.lcssa.i760 to i32 ; 2 uses
  %i.wu = add i32 %.sroa.0.0.extract.trunc.i.i762, 1073741824
  %i.wv = icmp slt i32 %i.wu, 1                   ; 2 uses
  %i.ww = add nuw nsw i64 %.sroa.9.0.insert.ext.i761, 1
  %i.wx = and i64 %i.ww, 4294967295
  %.sroa.5.0.i.i763 = select i1 %i.wv, i64 %i.wx, i64 %.sroa.9.0.insert.ext.i761 ; 2 uses
  %i.wy = zext i1 %i.wv to i32
  %.sroa.0.0.i.i764 = ashr i32 %.sroa.0.0.extract.trunc.i.i762, %i.wy ; 2 uses
  %.sroa.2.0.insert.shift.i.i765 = shl nuw i64 %.sroa.5.0.i.i763, 32
  %.sroa.02.0.insert.ext.i.i766 = zext i32 %.sroa.0.0.i.i764 to i64
  %.sroa.02.0.insert.insert.i.i767 = or disjoint i64 %.sroa.2.0.insert.shift.i.i765, %.sroa.02.0.insert.ext.i.i766
  %.sroa.9.0.extract.trunc14.i768 = trunc nuw i64 %.sroa.5.0.i.i763 to i32
  %i.wz = icmp eq i32 %.sroa.0.0.i.i764, 0
  %i.xa = icmp slt i32 %.sroa.9.0.extract.trunc14.i768, -149
  %or.cond.i769 = select i1 %i.wz, i1 true, i1 %i.xa
  %..i770 = select i1 %or.cond.i769, i64 -639950127104, i64 %.sroa.02.0.insert.insert.i.i767 ; 2 uses
  %.sroa.072.0.extract.trunc = trunc i64 %..i770 to i32 ; 4 uses
  %.sroa.674.0.extract.shift = lshr i64 %..i770, 32
  %.sroa.674.0.extract.trunc = trunc nuw i64 %.sroa.674.0.extract.shift to i32 ; 4 uses
  %i.xb = icmp sgt i32 %.sroa.677.0.extract.trunc, 2
  br i1 %i.xb, label %.thread782, label %bb.at

bb.at:                                            ; preds = %.loopexit
  %i.xc = icmp slt i32 %.sroa.677.0.extract.trunc, -29
  br i1 %i.xc, label %.thread782, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.xd = icmp sgt i32 %.sroa.677.0.extract.trunc, 0
  br i1 %i.xd, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %.neg = add nsw i32 %.sroa.677.0.extract.trunc, -1
  %i.xe = shl nsw i32 %.sroa.075.0.extract.trunc, %.neg
  br label %.thread782

bb.aw:                                            ; preds = %bb.au
  %i.xf = sub nsw i32 1, %.sroa.677.0.extract.trunc
  %i.xg = sub nsw i32 0, %.sroa.677.0.extract.trunc
  %i.xh = shl nuw nsw i32 1, %i.xg
  %i.xi = add nsw i32 %i.xh, %.sroa.075.0.extract.trunc
  %i.xj = ashr i32 %i.xi, %i.xf
  br label %.thread782

.thread782:                                       ; preds = %bb.at, %bb.ab, %.loopexit, %bb.aw, %bb.av
  %.sink = phi i32 [ 2147483647, %.loopexit ], [ %i.xj, %bb.aw ], [ %i.xe, %bb.av ], [ 0, %bb.ab ], [ 0, %bb.at ]
  %.sroa.674.0778 = phi i32 [ %.sroa.674.0.extract.trunc, %.loopexit ], [ %.sroa.674.0.extract.trunc, %bb.aw ], [ %.sroa.674.0.extract.trunc, %bb.av ], [ -149, %bb.ab ], [ %.sroa.674.0.extract.trunc, %bb.at ] ; 6 uses
  %.sroa.072.0776 = phi i32 [ %.sroa.072.0.extract.trunc, %.loopexit ], [ %.sroa.072.0.extract.trunc, %bb.aw ], [ %.sroa.072.0.extract.trunc, %bb.av ], [ 0, %bb.ab ], [ %.sroa.072.0.extract.trunc, %bb.at ] ; 2 uses
  %i.xk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  store i32 %.sink, ptr %i.xk, align 4, !tbaa !14
  %i.xl = icmp sgt i32 %.sroa.674.0778, 2
  br i1 %i.xl, label %bb.bb, label %bb.ax

bb.ax:                                            ; preds = %.thread782
  %i.xm = icmp slt i32 %.sroa.674.0778, -29
  br i1 %i.xm, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.xn = icmp sgt i32 %.sroa.674.0778, 0
  br i1 %i.xn, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %.neg188 = add nsw i32 %.sroa.674.0778, -1
  %i.xo = shl nsw i32 %.sroa.072.0776, %.neg188
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.xp = sub nsw i32 1, %.sroa.674.0778
  %i.xq = sub nsw i32 0, %.sroa.674.0778
  %i.xr = shl nuw nsw i32 1, %i.xq
  %i.xs = add nsw i32 %.sroa.072.0776, %i.xr
  %i.xt = ashr i32 %i.xs, %i.xp
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ax, %.thread782, %bb.ba, %bb.az
  %.sink953 = phi i32 [ 2147483647, %.thread782 ], [ %i.xt, %bb.ba ], [ %i.xo, %bb.az ], [ 0, %bb.ax ]
  %i.xu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 4
  store i32 %.sink953, ptr %i.xv, align 4, !tbaa !14
  %i.xw = icmp sgt i32 %.sroa.866.0, 2
  br i1 %i.xw, label %bb.bg, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.xx = icmp slt i32 %.sroa.866.0, -29
  br i1 %i.xx, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.xy = icmp sgt i32 %.sroa.866.0, 0
  br i1 %i.xy, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %.neg189 = add nsw i32 %.sroa.866.0, -1
  %i.xz = shl nsw i32 %.sroa.059.0, %.neg189      ; 2 uses
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.ya = sub nsw i32 1, %.sroa.866.0
  %i.yb = sub nsw i32 0, %.sroa.866.0
  %i.yc = shl nuw nsw i32 1, %i.yb
  %i.yd = add nsw i32 %i.yc, %.sroa.059.0
  %i.ye = ashr i32 %i.yd, %i.ya                   ; 2 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bc, %bb.bb, %bb.bf, %bb.be
  %.sink956 = phi i32 [ 2147483647, %bb.bb ], [ %i.ye, %bb.bf ], [ %i.xz, %bb.be ], [ 0, %bb.bc ]
  %6 = phi i32 [ 2147483646, %bb.bb ], [ %i.ye, %bb.bf ], [ %i.xz, %bb.be ], [ 0, %bb.bc ]
  %i.yf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  store i32 %.sink956, ptr %i.yf, align 4, !tbaa !14
  %i.yg = icmp sgt i32 %.sroa.8.0, 2
  br i1 %i.yg, label %bb.bl, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.yh = icmp slt i32 %.sroa.8.0, -29
  br i1 %i.yh, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.yi = icmp sgt i32 %.sroa.8.0, 0
  br i1 %i.yi, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %.neg190 = add nsw i32 %.sroa.8.0, -1
  %i.yj = shl nsw i32 %.sroa.047.0, %.neg190      ; 2 uses
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.yk = sub nsw i32 1, %.sroa.8.0
  %i.yl = sub nsw i32 0, %.sroa.8.0
  %i.ym = shl nuw nsw i32 1, %i.yl
  %i.yn = add nsw i32 %i.ym, %.sroa.047.0
  %i.yo = ashr i32 %i.yn, %i.yk                   ; 2 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bh, %bb.bg, %bb.bk, %bb.bj
  %.sink958 = phi i32 [ 2147483647, %bb.bg ], [ %i.yo, %bb.bk ], [ %i.yj, %bb.bj ], [ 0, %bb.bh ]
  %7 = phi i32 [ 2147483646, %bb.bg ], [ %i.yo, %bb.bk ], [ %i.yj, %bb.bj ], [ 0, %bb.bh ]
  %i.yp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 4
  store i32 %.sink958, ptr %i.yq, align 4, !tbaa !14
  %i.yr = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 3 uses
  %i.ys = ashr i32 %6, 1
  %i.yt = sext i32 %i.ys to i64                   ; 2 uses
  %i.yu = mul nsw i64 %i.yt, %i.yt
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yr, i64 4 ; 2 uses
  %i.yw = ashr i32 %7, 1
  %i.yx = sext i32 %i.yw to i64                   ; 2 uses
  %i.yy = mul nsw i64 %i.yx, %i.yx
  %i.yz = add nuw nsw i64 %i.yy, %i.yu
  %i.za = icmp samesign ugt i64 %i.yz, 1152921503533105151
  br i1 %i.za, label %.thread, label %bb.bm

.thread:                                          ; preds = %bb.bl
  store i32 0, ptr %i.yr, align 4, !tbaa !14
  store i32 0, ptr %i.yv, align 4, !tbaa !14
  %i.zb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  store i32 0, ptr %i.zb, align 4, !tbaa !14
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 4
  store i32 0, ptr %i.zc, align 4, !tbaa !14
  br label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !14
  %.phi.trans.insert893 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 4
  %.pre894 = load i32, ptr %.phi.trans.insert893, align 4, !tbaa !14
  %i.zd = ashr i32 %.pre, 1
  %i.ze = sext i32 %i.zd to i64                   ; 2 uses
  %i.zf = mul nsw i64 %i.ze, %i.ze
  %i.zg = ashr i32 %.pre894, 1
  %i.zh = sext i32 %i.zg to i64                   ; 2 uses
  %i.zi = mul nsw i64 %i.zh, %i.zh
  %i.zj = add nuw nsw i64 %i.zi, %i.zf
  %i.zk = icmp samesign ugt i64 %i.zj, 1152921503533105151
  br i1 %i.zk, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.zl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 4
  store i32 0, ptr %i.yr, align 4, !tbaa !14
  store i32 0, ptr %i.yv, align 4, !tbaa !14
  store i32 0, ptr %i.zl, align 4, !tbaa !14
  store i32 0, ptr %i.zm, align 4, !tbaa !14
  br label %bb.bo

bb.bo:                                            ; preds = %.thread, %bb.bn, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !269

._crit_edge:                                      ; preds = %bb.bo, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !59}
!1 = distinct !{!1, !59}
!2 = distinct !{!2, !59}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"override-stack-alignment", i32 16}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!8, !8, i64 0}
!14 = !{!9, !9, i64 0}
!15 = !{!"SpectrumParameters", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5}
!16 = !{!"PSCommonContext", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !8, i64 52, !8, i64 76, !8, i64 246, !8, i64 416, !8, i64 586, !9, i64 756, !9, i64 760}
!17 = !{!"PSDSPContext", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !8, i64 48}
!18 = !{!"PSContext", !16, i64 0, !8, i64 768, !8, i64 2528, !8, i64 36016, !8, i64 80416, !8, i64 80560, !8, i64 80704, !8, i64 80848, !8, i64 82480, !8, i64 84112, !8, i64 85744, !8, i64 87376, !8, i64 110672, !8, i64 133968, !8, i64 134002, !17, i64 134040}
!19 = !{!"p1 _ZTS11AVTXContext", !12, i64 0}
!20 = !{!"SBRDSPContext", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !8, i64 80}
!21 = !{!"AACSBRContext", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!22 = !{!"SpectralBandReplication", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !15, i64 28, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !8, i64 64, !8, i64 84, !8, i64 92, !9, i64 100, !9, i64 104, !8, i64 112, !18, i64 213456, !8, i64 347568, !9, i64 347576, !9, i64 347580, !8, i64 347584, !8, i64 347682, !8, i64 347732, !8, i64 347830, !8, i64 347842, !9, i64 347904, !8, i64 347908, !8, i64 347914, !8, i64 347920, !8, i64 358160, !8, i64 378640, !8, i64 417552, !8, i64 418064, !8, i64 418576, !8, i64 421648, !8, i64 424720, !8, i64 425104, !8, i64 428176, !8, i64 431248, !8, i64 434320, !8, i64 437392, !19, i64 438672, !12, i64 438680, !19, i64 438688, !12, i64 438696, !20, i64 438704, !21, i64 438816}
!23 = !{!22, !9, i64 12}
!24 = !{!22, !9, i64 16}
!25 = !{!"SBRData", !9, i64 0, !9, i64 4, !9, i64 8, !8, i64 12, !9, i64 24, !8, i64 28, !8, i64 37, !8, i64 39, !8, i64 49, !9, i64 100, !8, i64 112, !8, i64 9328, !9, i64 14576, !8, i64 14580, !8, i64 14588, !8, i64 14608, !9, i64 30992, !8, i64 31008, !8, i64 69920, !8, i64 86048, !8, i64 102176, !8, i64 102608, !8, i64 103040, !8, i64 106496, !8, i64 106512, !8, i64 106632, !8, i64 106641, !8, i64 106642, !9, i64 106648, !9, i64 106652, !8, i64 106656, !8, i64 106662}
!26 = !{!"float", !8, i64 0}
!27 = !{!12, !12, i64 0}
!28 = !{!"p1 omnipotent char", !12, i64 0}
!29 = !{!"GetBitContext", !28, i64 0, !9, i64 8, !9, i64 12, !9, i64 16}
!30 = !{!29, !9, i64 8}
!31 = !{!29, !9, i64 16}
!32 = !{!22, !9, i64 24}
!33 = !{!22, !9, i64 0}
!34 = !{!"MPEG4AudioConfig", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48}
!35 = !{!"AVChannelLayout", !9, i64 0, !9, i64 4, !8, i64 8, !12, i64 16}
!36 = !{!"short", !8, i64 0}
!37 = !{!"", !8, i64 0, !8, i64 2, !8, i64 3842, !8, i64 3844, !9, i64 7684}
!38 = !{!"AACUSACConfig", !8, i64 0, !36, i64 2, !36, i64 4, !8, i64 8, !9, i64 4616, !37, i64 4620}
!39 = !{!"OutputConfiguration", !34, i64 0, !8, i64 52, !9, i64 820, !35, i64 824, !9, i64 848, !38, i64 856}
!40 = !{!39, !9, i64 28}
!41 = !{!22, !9, i64 100}
!42 = !{!29, !28, i64 0}
!43 = !{!22, !9, i64 44}
!44 = !{!22, !9, i64 4}
!45 = !{!22, !9, i64 8}
!46 = !{!22, !9, i64 36}
!47 = !{!22, !9, i64 48}
!48 = !{!22, !9, i64 52}
!49 = !{!22, !9, i64 56}
!50 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!51 = !{!"p1 _ZTS14AVCodecContext", !12, i64 0}
!52 = !{!"AACDecDSP", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112}
!53 = !{!"AACDecProc", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40}
!54 = !{!"p1 _ZTS7AVFrame", !12, i64 0}
!55 = !{!"DynamicRangeControl", !9, i64 0, !8, i64 4, !8, i64 72, !8, i64 140, !9, i64 396, !9, i64 400, !8, i64 404, !9, i64 472}
!56 = !{!"AACDecContext", !50, i64 0, !51, i64 8, !52, i64 16, !53, i64 136, !54, i64 184, !9, i64 192, !55, i64 196, !8, i64 672, !8, i64 2720, !9, i64 4768, !9, i64 4772, !8, i64 4784, !8, i64 8880, !19, i64 9392, !19, i64 9400, !19, i64 9408, !19, i64 9416, !19, i64 9424, !19, i64 9432, !19, i64 9440, !19, i64 9448, !19, i64 9456, !12, i64 9464, !12, i64 9472, !12, i64 9480, !12, i64 9488, !12, i64 9496, !12, i64 9504, !12, i64 9512, !12, i64 9520, !12, i64 9528, !8, i64 9536, !9, i64 9544, !8, i64 9552, !9, i64 10064, !9, i64 10068, !9, i64 10072, !9, i64 10076, !9, i64 10080, !8, i64 10088, !9, i64 36424, !9, i64 36428, !9, i64 36432, !9, i64 36436, !9, i64 36440}
!57 = !{!56, !51, i64 8}
!58 = !{!36, !36, i64 0}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"llvm.loop.unroll.disable"}
!61 = !{!"llvm.loop.isvectorized", i32 1}
!62 = !{!"llvm.loop.unroll.runtime.disable"}
!63 = !{!22, !9, i64 347576}
!64 = !{!22, !9, i64 347904}
!65 = !{!"llvm.loop.peeled.count", i32 1}
!66 = !{!25, !9, i64 106648}
!67 = !{!25, !9, i64 4}
!68 = !{!22, !9, i64 60}
!69 = !{!25, !9, i64 8}
!70 = !{!25, !8, i64 106641}
!71 = !{!25, !9, i64 100}
!72 = !{!25, !9, i64 24}
!73 = !{!25, !9, i64 0}
!74 = !{!39, !9, i64 40}
!75 = !{!"SoftFloat", !9, i64 0, !9, i64 4}
!76 = !{!75, !9, i64 4}
!77 = !{!75, !9, i64 0}
!78 = !{!"AVFixedDSPContext", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48}
!79 = !{!22, !9, i64 347580}
!80 = !{!"p1 _ZTS14ChannelElement", !12, i64 0}
!81 = !{!80, !80, i64 0}
!82 = !{!25, !9, i64 14576}
!83 = !{!26, !26, i64 0}
!84 = distinct !{!84, !59}
!85 = distinct !{!85, !59}
!86 = distinct !{!86, !59}
!87 = distinct !{!87, !59}
!88 = distinct !{!88, !59}
!89 = distinct !{!89, !59}
!90 = distinct !{!90, !60}
!91 = distinct !{!91, !59, !61, !62}
!92 = distinct !{!92, !59, !61, !62}
!93 = distinct !{!93, !59, !62, !61}
!94 = distinct !{!94, !59}
!95 = distinct !{!95, !59}
!96 = distinct !{!96, !59}
!97 = distinct !{!97, !59}
!98 = distinct !{!98, !59}
!99 = distinct !{!99, !59}
!100 = distinct !{!100, !59}
!101 = distinct !{!101, !59}
!102 = distinct !{!102, !59}
!103 = distinct !{!103, !59, !61, !62}
!104 = distinct !{!104, !59, !62, !61}
!105 = distinct !{!105, !59}
!106 = distinct !{!106, !59}
!107 = distinct !{!107, !59}
end_hunk_3
