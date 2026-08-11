inline.NumInlined: 9
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6LibRaw13dcraw_processEv:bb.a
  %i.bq = select i1 %.not136, i32 3, i32 2
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 5456
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !104 ; 2 uses
  %i.bt = icmp slt i32 %i.bs, 0
  %spec.select = select i1 %i.bt, i32 %i.bq, i32 %i.bs ; 4 uses
  br i1 %i.aq, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 153092
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !105
  %.not137 = icmp eq i32 %i.bv, 0
  br i1 %.not137, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag, %bb.af
  invoke void @_ZN6LibRaw9adjust_blEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.ai unwind label %bb.w

bb.ai:                                            ; preds = %bb.ah
  %i.bw = invoke noundef i32 @_ZN6LibRaw23subtract_black_internalEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.aj unwind label %bb.w      ; 0 uses

bb.aj:                                            ; preds = %bb.ai, %bb.ag
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !106
  %i.bz = and i32 %i.by, 256
  %.not138 = icmp eq i32 %i.bz, 0
  br i1 %.not138, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ca = invoke noundef i32 @_ZN6LibRaw14adjust_maximumEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.al unwind label %bb.w      ; 0 uses

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 5480
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !108 ; 2 uses
  %i.cd = icmp sgt i32 %i.cc, 0
  br i1 %i.cd, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 %i.cc, ptr %i.ce, align 8, !tbaa !109
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !110
  %.not139 = icmp eq i32 %i.cg, 0
  br i1 %.not139, label %bb.ax, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 768416
  %.unpack = load i64, ptr %i.ch, align 8, !tbaa !111
  %.elt140 = getelementptr inbounds nuw i8, ptr %0, i64 768424
  %.unpack141 = load i64, ptr %.elt140, align 8, !tbaa !111
  %i.ci = icmp eq i64 %.unpack, ptrtoint (ptr @_ZN6LibRaw12x3f_load_rawEv to i64)
  %i.cj = icmp eq i64 %.unpack141, 0
  %i.ck = and i1 %i.ci, %i.cj
  br i1 %i.ck, label %.preheader191, label %.loopexit

.preheader191:                                    ; preds = %bb.ao
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.cn = load i16, ptr %i.cl, align 4, !tbaa !112
  %i.co = zext i16 %i.cn to i32
  %i.cp = load i16, ptr %i.cm, align 2, !tbaa !113
  %i.cq = zext i16 %i.cp to i32
  %i.cr = mul nuw nsw i32 %i.cq, %i.co
  %.not206 = icmp eq i32 %i.cr, 0
  br i1 %.not206, label %.loopexit, label %.preheader190.lr.ph

.preheader190.lr.ph:                              ; preds = %.preheader191
  %i.cs = load ptr, ptr %i.a, align 8, !tbaa !114
  br label %.preheader190

.preheader190:                                    ; preds = %.preheader190.lr.ph, %bb.aw
  %indvars.iv = phi i64 [ 0, %.preheader190.lr.ph ], [ %indvars.iv.next, %bb.aw ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv ; 5 uses
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !115
  %i.cv = icmp slt i16 %i.cu, 0
  br i1 %i.cv, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.preheader190
  store i16 0, ptr %i.ct, align 2, !tbaa !115
  br label %bb.aq

bb.aq:                                            ; preds = %.preheader190, %bb.ap
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 2 ; 2 uses
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !115
  %i.cy = icmp slt i16 %i.cx, 0
  br i1 %i.cy, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i16 0, ptr %i.cw, align 2, !tbaa !115
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 4 ; 2 uses
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !115
  %i.db = icmp slt i16 %i.da, 0
  br i1 %i.db, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i16 0, ptr %i.cz, align 2, !tbaa !115
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ct, i64 6 ; 2 uses
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !115
  %i.de = icmp slt i16 %i.dd, 0
  br i1 %i.de, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i16 0, ptr %i.dc, align 2, !tbaa !115
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.df = load i16, ptr %i.cl, align 4, !tbaa !112
  %i.dg = zext i16 %i.df to i64
  %i.dh = load i16, ptr %i.cm, align 2, !tbaa !113
  %i.di = zext i16 %i.dh to i64
  %i.dj = mul nuw nsw i64 %i.di, %i.dg
  %i.dk = icmp samesign ult i64 %indvars.iv.next, %i.dj
  br i1 %i.dk, label %.preheader190, label %.loopexit, !llvm.loop !116

.loopexit:                                        ; preds = %bb.aw, %.preheader191, %bb.ao
  %i.dl = load i32, ptr %i.b, align 8, !tbaa !11
  %i.dm = or i32 %i.dl, 256
  store i32 %i.dm, ptr %i.b, align 8, !tbaa !11
  br label %bb.ax

bb.ax:                                            ; preds = %.loopexit, %bb.an
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 5508
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !118
  %.not142 = icmp eq i32 %i.do, 0
  br i1 %.not142, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 5376
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !119
  %.not143 = icmp eq i32 %i.dq, 0
  br i1 %.not143, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN6LibRaw14green_matchingEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.ba unwind label %bb.w

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 768336
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !120 ; 2 uses
  %.not144 = icmp eq ptr %i.ds, null
  br i1 %.not144, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  invoke void %i.ds(ptr noundef nonnull %0)
          to label %bb.bc unwind label %bb.w

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 5536
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !121
  %.not145 = icmp eq i32 %i.du, 0
  br i1 %.not145, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN6LibRaw12scale_colorsEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.be unwind label %bb.w

bb.be:                                            ; preds = %bb.bd
  %i.dv = load i32, ptr %i.b, align 8, !tbaa !11
  %i.dw = or i32 %i.dv, 512
  store i32 %i.dw, ptr %i.b, align 8, !tbaa !11
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bc
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 768344
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !122 ; 2 uses
  %.not146 = icmp eq ptr %i.dy, null
  br i1 %.not146, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  invoke void %i.dy(ptr noundef nonnull %0)
          to label %bb.bh unwind label %bb.w

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  invoke void @_ZN6LibRaw15pre_interpolateEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.bi unwind label %bb.w

bb.bi:                                            ; preds = %bb.bh
  %i.dz = load i32, ptr %i.b, align 8, !tbaa !11
  %i.ea = or i32 %i.dz, 1024
  store i32 %i.ea, ptr %i.b, align 8, !tbaa !11
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 5512
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !123
  %spec.select170 = call i32 @llvm.smax.i32(i32 %i.ec, i32 -1)
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 5516
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !124 ; 2 uses
  %i.ef = icmp sgt i32 %i.ee, -1
  %.095 = select i1 %i.ef, i32 %i.ee, i32 1
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 5520
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !125 ; 2 uses
  %.096 = call i32 @llvm.smax.i32(i32 %i.eh, i32 0)
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 5524
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !126
  %i.ek = icmp sgt i32 %i.ej, 0
  br i1 %i.ek, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 5528
  %i.em = load float, ptr %i.el, align 8, !tbaa !127
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 5532
  %i.eo = load float, ptr %i.en, align 4, !tbaa !128
  invoke void @_ZN6LibRaw7exp_befEff(ptr noundef nonnull align 8 dereferenceable(768512) %0, float noundef %i.em, float noundef %i.eo)
          to label %bb.bk unwind label %bb.w

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 768352
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !129 ; 2 uses
  %.not147 = icmp eq ptr %i.eq, null
  br i1 %.not147, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  invoke void %i.eq(ptr noundef nonnull %0)
          to label %bb.bm unwind label %bb.w

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.er = load i32, ptr %i.ad, align 8, !tbaa !96 ; 46 uses
  %.not148 = icmp eq i32 %i.er, 0
  br i1 %.not148, label %bb.eo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 5540
  %i.et = load i32, ptr %i.es, align 4, !tbaa !130
  %.not149 = icmp eq i32 %i.et, 0
  br i1 %.not149, label %bb.bo, label %bb.eo

bb.bo:                                            ; preds = %bb.bn
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 540 ; 3 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !97 ; 2 uses
  %i.ew = icmp ugt i32 %i.er, 1000
  br i1 %i.ew, label %.preheader189, label %bb.dq

.preheader189:                                    ; preds = %bb.bo
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 381828 ; 16 uses
  %i.ey = load i16, ptr %i.bo, align 2, !tbaa !103 ; 2 uses
  %.not8.i = icmp eq i16 %i.ey, 0                 ; 8 uses
  %i.ez = zext i16 %i.ey to i32                   ; 8 uses
  %invariant.op = add i32 7, %i.ez
  br label %.preheader

.preheader:                                       ; preds = %.preheader189, %bb.dp
  %.084204 = phi i32 [ 0, %.preheader189 ], [ %i.st, %bb.dp ] ; 60 uses
  %.085203 = phi i32 [ 0, %.preheader189 ], [ %i.ss, %bb.dp ]
  %.088202 = phi i32 [ %i.ev, %.preheader189 ], [ %i.sc, %bb.dp ] ; 2 uses
  %i.fa = lshr i32 %.084204, 1                    ; 16 uses
  %i.fb = shl nuw nsw i32 %.084204, 2             ; 16 uses
  %i.fc = shl nuw nsw i32 %.084204, 1
  %i.fd = add nuw nsw i32 %i.fc, 2                ; 8 uses
  br i1 %.not8.i, label %_ZN6LibRaw5COLOREii.exit, label %_ZN6LibRaw3FCFEii.exit.i

bb.bp:                                            ; preds = %bb.dp
  %i.fe = icmp ne i32 %i.ss, 0
  br label %bb.dq

_ZN6LibRaw3FCFEii.exit.i:                         ; preds = %.preheader
  %i.ff = load i32, ptr %i.ex, align 4, !tbaa !131
  %.not.i.i = icmp eq i32 %i.ff, 0                ; 3 uses
  %.084204.sink = select i1 %.not.i.i, i32 %.084204, i32 %i.fa
  %.sink.i.i = select i1 %.not.i.i, i32 0, i32 %.084204
  %.sink11.i.i = select i1 %.not.i.i, i32 %.084204, i32 0
  %.reass = add i32 %.084204.sink, %invariant.op
  %i.fg = add nuw nsw i32 %.sink.i.i, 1
  %i.fh = lshr i32 %i.fg, 1
  %i.fi = add nuw nsw i32 %i.fh, %.sink11.i.i
  %i.fj = shl i32 %.reass, 1
  %i.fk = and i32 %i.fj, 14
  %i.fl = and i32 %i.fi, 1
  %i.fm = or disjoint i32 %i.fl, %i.fk
  %i.fn = shl nuw nsw i32 %i.fm, 1
  br label %_ZN6LibRaw5COLOREii.exit

_ZN6LibRaw5COLOREii.exit:                         ; preds = %.preheader, %_ZN6LibRaw3FCFEii.exit.i
  %.pn = phi i32 [ %i.fn, %_ZN6LibRaw3FCFEii.exit.i ], [ %i.fb, %.preheader ]
  %.0.i.in = lshr i32 %i.er, %.pn
  %.0.i = and i32 %.0.i.in, 3
  %.not153 = icmp slt i32 %.0.i, %.088202
  br i1 %.not153, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %_ZN6LibRaw5COLOREii.exit
  %i.fo = load i16, ptr %i.bo, align 2, !tbaa !103 ; 2 uses
  %.not8.i174 = icmp eq i16 %i.fo, 0
  br i1 %.not8.i174, label %_ZN6LibRaw5COLOREii.exit182, label %_ZN6LibRaw3FCFEii.exit.i176

_ZN6LibRaw3FCFEii.exit.i176:                      ; preds = %bb.bq
  %i.fp = load i32, ptr %i.ex, align 4, !tbaa !131
  %.not.i.i175 = icmp eq i32 %i.fp, 0             ; 3 uses
  %.084204.sink251 = select i1 %.not.i.i175, i32 %.084204, i32 %i.fa
  %.sink.i.i178 = select i1 %.not.i.i175, i32 0, i32 %.084204
  %.sink11.i.i179 = select i1 %.not.i.i175, i32 %.084204, i32 0
  %i.fq = add nuw i32 %.084204.sink251, 7
  %i.fr = zext i16 %i.fo to i32
  %i.fs = add i32 %i.fq, %i.fr
  %i.ft = add nuw nsw i32 %.sink.i.i178, 1
  %i.fu = lshr i32 %i.ft, 1
  %i.fv = add nuw nsw i32 %i.fu, %.sink11.i.i179
  %i.fw = shl i32 %i.fs, 1
  %i.fx = and i32 %i.fw, 14
  %i.fy = and i32 %i.fv, 1
  %i.fz = or disjoint i32 %i.fy, %i.fx
  %i.ga = shl nuw nsw i32 %i.fz, 1
  br label %_ZN6LibRaw5COLOREii.exit182

_ZN6LibRaw5COLOREii.exit182:                      ; preds = %bb.bq, %_ZN6LibRaw3FCFEii.exit.i176
  %.pn248 = phi i32 [ %i.ga, %_ZN6LibRaw3FCFEii.exit.i176 ], [ %i.fb, %bb.bq ]
  %.0.i180.in = lshr i32 %i.er, %.pn248
  %.0.i180 = and i32 %.0.i180.in, 3
  %i.gb = add nuw nsw i32 %.0.i180, 1
  br label %bb.br

bb.br:                                            ; preds = %_ZN6LibRaw5COLOREii.exit, %_ZN6LibRaw5COLOREii.exit182
  %i.gc = phi i32 [ %i.gb, %_ZN6LibRaw5COLOREii.exit182 ], [ %.088202, %_ZN6LibRaw5COLOREii.exit ] ; 2 uses
  %i.gd = shl nuw nsw i32 %.084204, 2             ; 2 uses
  %i.ge = lshr i32 %i.er, %i.gd
  %i.gf = and i32 %i.ge, 3                        ; 2 uses
  %i.gg = shl nuw nsw i32 %i.fd, 1
  %i.gh = lshr i32 %i.er, %i.gg
  %i.gi = and i32 %i.gh, 3
  %i.gj = icmp eq i32 %i.gf, %i.gi
  %i.gk = zext i1 %i.gj to i32
  %i.gl = add nsw i32 %.085203, %i.gk
  %i.gm = or disjoint i32 %i.gd, 2
  %i.gn = lshr i32 %i.er, %i.gm
  %i.go = and i32 %i.gn, 3
  %i.gp = icmp eq i32 %i.gf, %i.go
  %i.gq = zext i1 %i.gp to i32
  %i.gr = add nsw i32 %i.gl, %i.gq
  br i1 %.not8.i, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.gs = load i32, ptr %i.ex, align 4, !tbaa !131
  %.not.i.i.1 = icmp eq i32 %i.gs, 0
  br i1 %.not.i.i.1, label %bb.bt, label %_ZN6LibRaw3FCFEii.exit.i.1

bb.bt:                                            ; preds = %bb.bs
  br label %_ZN6LibRaw3FCFEii.exit.i.1

_ZN6LibRaw3FCFEii.exit.i.1:                       ; preds = %bb.bt, %bb.bs
  %i.gt = phi i32 [ -1, %bb.bt ], [ -2, %bb.bs ]
  %.084204.sink.1 = phi i32 [ %.084204, %bb.bt ], [ %i.fa, %bb.bs ]
  %.sink.i.i.1 = phi i32 [ 1, %bb.bt ], [ %.084204, %bb.bs ]
  %.sink11.i.i.1 = phi i32 [ %.084204, %bb.bt ], [ 1, %bb.bs ]
  %i.gu = add nsw i32 %.084204.sink.1, %i.gt
  %i.gv = add nsw i32 %i.gu, %i.ez
  %i.gw = add nuw nsw i32 %.sink.i.i.1, 1
  %i.gx = lshr i32 %i.gw, 1
  %i.gy = add nuw nsw i32 %i.gx, %.sink11.i.i.1
  %i.gz = shl i32 %i.gv, 1
  %i.ha = and i32 %i.gz, 14
  %i.hb = and i32 %i.gy, 1
  %i.hc = or disjoint i32 %i.hb, %i.ha
  %i.hd = shl nuw nsw i32 %i.hc, 1
  br label %_ZN6LibRaw5COLOREii.exit.1

bb.bu:                                            ; preds = %bb.br
  %i.he = or disjoint i32 %i.fb, 2
  br label %_ZN6LibRaw5COLOREii.exit.1

_ZN6LibRaw5COLOREii.exit.1:                       ; preds = %bb.bu, %_ZN6LibRaw3FCFEii.exit.i.1
  %.pn.1 = phi i32 [ %i.he, %bb.bu ], [ %i.hd, %_ZN6LibRaw3FCFEii.exit.i.1 ]
  %.0.i.in.1 = lshr i32 %i.er, %.pn.1
  %.0.i.1 = and i32 %.0.i.in.1, 3
  %.not153.1 = icmp slt i32 %.0.i.1, %i.gc
  br i1 %.not153.1, label %bb.bz, label %bb.bv

bb.bv:                                            ; preds = %_ZN6LibRaw5COLOREii.exit.1
  %i.hf = load i16, ptr %i.bo, align 2, !tbaa !103 ; 2 uses
  %.not8.i174.1 = icmp eq i16 %i.hf, 0
  br i1 %.not8.i174.1, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.hg = load i32, ptr %i.ex, align 4, !tbaa !131
  %.not.i.i175.1 = icmp eq i32 %i.hg, 0
  br i1 %.not.i.i175.1, label %bb.bx, label %_ZN6LibRaw3FCFEii.exit.i176.1

bb.bx:                                            ; preds = %bb.bw
  br label %_ZN6LibRaw3FCFEii.exit.i176.1

_ZN6LibRaw3FCFEii.exit.i176.1:                    ; preds = %bb.bx, %bb.bw
  %i.hh = phi i32 [ -1, %bb.bx ], [ -2, %bb.bw ]
  %.084204.sink251.1 = phi i32 [ %.084204, %bb.bx ], [ %i.fa, %bb.bw ]
  %.sink.i.i178.1 = phi i32 [ 1, %bb.bx ], [ %.084204, %bb.bw ]
  %.sink11.i.i179.1 = phi i32 [ %.084204, %bb.bx ], [ 1, %bb.bw ]
  %i.hi = add nsw i32 %.084204.sink251.1, %i.hh
  %i.hj = zext i16 %i.hf to i32
  %i.hk = add nsw i32 %i.hi, %i.hj
  %i.hl = add nuw nsw i32 %.sink.i.i178.1, 1
  %i.hm = lshr i32 %i.hl, 1
  %i.hn = add nuw nsw i32 %i.hm, %.sink11.i.i179.1
  %i.ho = shl i32 %i.hk, 1
  %i.hp = and i32 %i.ho, 14
  %i.hq = and i32 %i.hn, 1
  %i.hr = or disjoint i32 %i.hq, %i.hp
end_hunk_0
begin_hunk_1_@_ZN6LibRaw13dcraw_processEv:bb.a

_ZN6LibRaw3FCFEii.exit.i.6:                       ; preds = %bb.dd, %bb.dc
  %i.pj = phi i32 [ -4, %bb.dd ], [ -7, %bb.dc ]
  %.084204.sink.6 = phi i32 [ %.084204, %bb.dd ], [ %i.fa, %bb.dc ]
  %.sink.i.i.6 = phi i32 [ 6, %bb.dd ], [ %.084204, %bb.dc ]
  %.sink11.i.i.6 = phi i32 [ %.084204, %bb.dd ], [ 6, %bb.dc ]
  %i.pk = add nsw i32 %.084204.sink.6, %i.pj
  %i.pl = add nsw i32 %i.pk, %i.ez
  %i.pm = add nuw nsw i32 %.sink.i.i.6, 1
  %i.pn = lshr i32 %i.pm, 1
  %i.po = add nuw nsw i32 %i.pn, %.sink11.i.i.6
  %i.pp = shl i32 %i.pl, 1
  %i.pq = and i32 %i.pp, 14
  %i.pr = and i32 %i.po, 1
  %i.ps = or disjoint i32 %i.pr, %i.pq
  %i.pt = shl nuw nsw i32 %i.ps, 1
  br label %_ZN6LibRaw5COLOREii.exit.6

_ZN6LibRaw5COLOREii.exit.6:                       ; preds = %bb.db, %_ZN6LibRaw3FCFEii.exit.i.6
  %.pn.6 = phi i32 [ %i.pt, %_ZN6LibRaw3FCFEii.exit.i.6 ], [ %i.fb, %bb.db ]
  %.0.i.in.6 = lshr i32 %i.er, %.pn.6
  %.0.i.6 = and i32 %.0.i.in.6, 3
  %.not153.6 = icmp slt i32 %.0.i.6, %i.or
  br i1 %.not153.6, label %bb.dh, label %bb.de

bb.de:                                            ; preds = %_ZN6LibRaw5COLOREii.exit.6
  %i.pu = load i16, ptr %i.bo, align 2, !tbaa !103 ; 2 uses
  %.not8.i174.6 = icmp eq i16 %i.pu, 0
  br i1 %.not8.i174.6, label %_ZN6LibRaw5COLOREii.exit182.6, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.pv = load i32, ptr %i.ex, align 4, !tbaa !131
  %.not.i.i175.6 = icmp eq i32 %i.pv, 0
  br i1 %.not.i.i175.6, label %bb.dg, label %_ZN6LibRaw3FCFEii.exit.i176.6

bb.dg:                                            ; preds = %bb.df
  br label %_ZN6LibRaw3FCFEii.exit.i176.6

_ZN6LibRaw3FCFEii.exit.i176.6:                    ; preds = %bb.dg, %bb.df
  %i.pw = phi i32 [ -4, %bb.dg ], [ -7, %bb.df ]
  %.084204.sink251.6 = phi i32 [ %.084204, %bb.dg ], [ %i.fa, %bb.df ]
  %.sink.i.i178.6 = phi i32 [ 6, %bb.dg ], [ %.084204, %bb.df ]
  %.sink11.i.i179.6 = phi i32 [ %.084204, %bb.dg ], [ 6, %bb.df ]
  %i.px = add nsw i32 %.084204.sink251.6, %i.pw
  %i.py = zext i16 %i.pu to i32
  %i.pz = add nsw i32 %i.px, %i.py
  %i.qa = add nuw nsw i32 %.sink.i.i178.6, 1
  %i.qb = lshr i32 %i.qa, 1
  %i.qc = add nuw nsw i32 %i.qb, %.sink11.i.i179.6
  %i.qd = shl i32 %i.pz, 1
  %i.qe = and i32 %i.qd, 14
  %i.qf = and i32 %i.qc, 1
  %i.qg = or disjoint i32 %i.qf, %i.qe
  %i.qh = shl nuw nsw i32 %i.qg, 1
  br label %_ZN6LibRaw5COLOREii.exit182.6

_ZN6LibRaw5COLOREii.exit182.6:                    ; preds = %bb.de, %_ZN6LibRaw3FCFEii.exit.i176.6
  %.pn248.6 = phi i32 [ %i.qh, %_ZN6LibRaw3FCFEii.exit.i176.6 ], [ %i.fb, %bb.de ]
  %.0.i180.in.6 = lshr i32 %i.er, %.pn248.6
  %.0.i180.6 = and i32 %.0.i180.in.6, 3
  %i.qi = add nuw nsw i32 %.0.i180.6, 1
  br label %bb.dh

bb.dh:                                            ; preds = %_ZN6LibRaw5COLOREii.exit182.6, %_ZN6LibRaw5COLOREii.exit.6
  %i.qj = phi i32 [ %i.qi, %_ZN6LibRaw5COLOREii.exit182.6 ], [ %i.or, %_ZN6LibRaw5COLOREii.exit.6 ] ; 2 uses
  %i.qk = shl nuw nsw i32 %.084204, 2             ; 2 uses
  %i.ql = lshr i32 %i.er, %i.qk
  %i.qm = and i32 %i.ql, 3                        ; 2 uses
  %i.qn = shl nuw nsw i32 %i.fd, 1
  %i.qo = lshr i32 %i.er, %i.qn
  %i.qp = and i32 %i.qo, 3
  %i.qq = icmp eq i32 %i.qm, %i.qp
  %i.qr = zext i1 %i.qq to i32
  %i.qs = add nsw i32 %i.ph, %i.qr
  %i.qt = or disjoint i32 %i.qk, 2
  %i.qu = lshr i32 %i.er, %i.qt
  %i.qv = and i32 %i.qu, 3
  %i.qw = icmp eq i32 %i.qm, %i.qv
  %i.qx = zext i1 %i.qw to i32
  %i.qy = add nsw i32 %i.qs, %i.qx
  br i1 %.not8.i, label %bb.dk, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.qz = load i32, ptr %i.ex, align 4, !tbaa !131
  %.not.i.i.7 = icmp eq i32 %i.qz, 0
  br i1 %.not.i.i.7, label %bb.dj, label %_ZN6LibRaw3FCFEii.exit.i.7

bb.dj:                                            ; preds = %bb.di
  br label %_ZN6LibRaw3FCFEii.exit.i.7

_ZN6LibRaw3FCFEii.exit.i.7:                       ; preds = %bb.dj, %bb.di
  %i.ra = phi i32 [ -4, %bb.dj ], [ -8, %bb.di ]
  %.084204.sink.7 = phi i32 [ %.084204, %bb.dj ], [ %i.fa, %bb.di ]
  %.sink.i.i.7 = phi i32 [ 7, %bb.dj ], [ %.084204, %bb.di ]
  %.sink11.i.i.7 = phi i32 [ %.084204, %bb.dj ], [ 7, %bb.di ]
  %i.rb = add nsw i32 %.084204.sink.7, %i.ra
  %i.rc = add nsw i32 %i.rb, %i.ez
  %i.rd = add nuw nsw i32 %.sink.i.i.7, 1
  %i.re = lshr i32 %i.rd, 1
  %i.rf = add nuw nsw i32 %i.re, %.sink11.i.i.7
  %i.rg = shl i32 %i.rc, 1
  %i.rh = and i32 %i.rg, 14
  %i.ri = and i32 %i.rf, 1
  %i.rj = or disjoint i32 %i.ri, %i.rh
  %i.rk = shl nuw nsw i32 %i.rj, 1
  br label %_ZN6LibRaw5COLOREii.exit.7

bb.dk:                                            ; preds = %bb.dh
  %i.rl = or disjoint i32 %i.fb, 2
  br label %_ZN6LibRaw5COLOREii.exit.7

_ZN6LibRaw5COLOREii.exit.7:                       ; preds = %bb.dk, %_ZN6LibRaw3FCFEii.exit.i.7
  %.pn.7 = phi i32 [ %i.rl, %bb.dk ], [ %i.rk, %_ZN6LibRaw3FCFEii.exit.i.7 ]
  %.0.i.in.7 = lshr i32 %i.er, %.pn.7
  %.0.i.7 = and i32 %.0.i.in.7, 3
  %.not153.7 = icmp slt i32 %.0.i.7, %i.qj
  br i1 %.not153.7, label %bb.dp, label %bb.dl

bb.dl:                                            ; preds = %_ZN6LibRaw5COLOREii.exit.7
  %i.rm = load i16, ptr %i.bo, align 2, !tbaa !103 ; 2 uses
  %.not8.i174.7 = icmp eq i16 %i.rm, 0
  br i1 %.not8.i174.7, label %bb.do, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.rn = load i32, ptr %i.ex, align 4, !tbaa !131
  %.not.i.i175.7 = icmp eq i32 %i.rn, 0
  br i1 %.not.i.i175.7, label %bb.dn, label %_ZN6LibRaw3FCFEii.exit.i176.7

bb.dn:                                            ; preds = %bb.dm
  br label %_ZN6LibRaw3FCFEii.exit.i176.7

_ZN6LibRaw3FCFEii.exit.i176.7:                    ; preds = %bb.dn, %bb.dm
  %i.ro = phi i32 [ -4, %bb.dn ], [ -8, %bb.dm ]
  %.084204.sink251.7 = phi i32 [ %.084204, %bb.dn ], [ %i.fa, %bb.dm ]
  %.sink.i.i178.7 = phi i32 [ 7, %bb.dn ], [ %.084204, %bb.dm ]
  %.sink11.i.i179.7 = phi i32 [ %.084204, %bb.dn ], [ 7, %bb.dm ]
  %i.rp = add nsw i32 %.084204.sink251.7, %i.ro
  %i.rq = zext i16 %i.rm to i32
  %i.rr = add nsw i32 %i.rp, %i.rq
  %i.rs = add nuw nsw i32 %.sink.i.i178.7, 1
  %i.rt = lshr i32 %i.rs, 1
  %i.ru = add nuw nsw i32 %i.rt, %.sink11.i.i179.7
  %i.rv = shl i32 %i.rr, 1
  %i.rw = and i32 %i.rv, 14
  %i.rx = and i32 %i.ru, 1
  %i.ry = or disjoint i32 %i.rx, %i.rw
  %i.rz = shl nuw nsw i32 %i.ry, 1
  br label %_ZN6LibRaw5COLOREii.exit182.7

bb.do:                                            ; preds = %bb.dl
  %i.sa = or disjoint i32 %i.fb, 2
  br label %_ZN6LibRaw5COLOREii.exit182.7

_ZN6LibRaw5COLOREii.exit182.7:                    ; preds = %bb.do, %_ZN6LibRaw3FCFEii.exit.i176.7
  %.pn248.7 = phi i32 [ %i.sa, %bb.do ], [ %i.rz, %_ZN6LibRaw3FCFEii.exit.i176.7 ]
  %.0.i180.in.7 = lshr i32 %i.er, %.pn248.7
  %.0.i180.7 = and i32 %.0.i180.in.7, 3
  %i.sb = add nuw nsw i32 %.0.i180.7, 1
  br label %bb.dp

bb.dp:                                            ; preds = %_ZN6LibRaw5COLOREii.exit182.7, %_ZN6LibRaw5COLOREii.exit.7
  %i.sc = phi i32 [ %i.sb, %_ZN6LibRaw5COLOREii.exit182.7 ], [ %i.qj, %_ZN6LibRaw5COLOREii.exit.7 ] ; 2 uses
  %i.sd = shl i32 %.084204, 2                     ; 2 uses
  %i.se = or disjoint i32 %i.sd, 2
  %i.sf = lshr i32 %i.er, %i.se
  %i.sg = and i32 %i.sf, 3                        ; 2 uses
  %i.sh = shl nuw i32 %i.fd, 1
  %i.si = or disjoint i32 %i.sh, 2
  %i.sj = lshr i32 %i.er, %i.si
  %i.sk = and i32 %i.sj, 3
  %i.sl = icmp eq i32 %i.sg, %i.sk
  %i.sm = zext i1 %i.sl to i32
  %i.sn = add nsw i32 %i.qy, %i.sm
  %i.so = lshr i32 %i.er, %i.sd
  %i.sp = and i32 %i.so, 3
  %i.sq = icmp eq i32 %i.sg, %i.sp
  %i.sr = zext i1 %i.sq to i32
  %i.ss = add nsw i32 %i.sn, %i.sr                ; 2 uses
  %i.st = add nuw nsw i32 %.084204, 1             ; 2 uses
  %exitcond211.not = icmp eq i32 %i.st, 4
  br i1 %exitcond211.not, label %bb.bp, label %.preheader, !llvm.loop !132

bb.dq:                                            ; preds = %bb.bp, %bb.bo
  %.290 = phi i32 [ %i.sc, %bb.bp ], [ %i.ev, %bb.bo ] ; 2 uses
  %.3 = phi i1 [ %i.fe, %bb.bp ], [ false, %bb.bo ]
  %.not188 = icmp slt i32 %i.eh, 1
  br i1 %.not188, label %bb.dv, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.su = load i32, ptr %i.eu, align 4, !tbaa !97
  %i.sv = icmp eq i32 %i.su, 3
  %i.sw = icmp eq i32 %.290, 3
  %or.cond7 = select i1 %i.sv, i1 %i.sw, i1 false
  br i1 %or.cond7, label %bb.ds, label %bb.dv

bb.ds:                                            ; preds = %bb.dr
  %i.sx = icmp ugt i32 %i.er, 1000
  br i1 %i.sx, label %bb.dt, label %.thread

bb.dt:                                            ; preds = %bb.ds
  invoke void @_ZN6LibRaw4fbddEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %.096)
          to label %._crit_edge216 unwind label %bb.du

._crit_edge216:                                   ; preds = %bb.dt
  %.pr.pre = load i32, ptr %i.ad, align 8, !tbaa !96
  br label %bb.dv

bb.du:                                            ; preds = %.invoke, %bb.el, %bb.ek, %bb.ej, %bb.ei, %bb.eh, %bb.ef, %bb.ed, %bb.eb, %bb.dy, %bb.dt
  %i.sy = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTI17LibRaw_exceptions
  br label %bb.fu

bb.dv:                                            ; preds = %._crit_edge216, %bb.dr, %bb.dq
  %.pr = phi i32 [ %.pr.pre, %._crit_edge216 ], [ %i.er, %bb.dr ], [ %i.er, %bb.dq ] ; 3 uses
  %i.sz = icmp ugt i32 %.pr, 1000
  br i1 %i.sz, label %bb.dw, label %.thread

bb.dw:                                            ; preds = %bb.dv
  %i.ta = getelementptr inbounds nuw i8, ptr %0, i64 768360
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !133 ; 2 uses
  %.not150 = icmp eq ptr %i.tb, null
  br i1 %.not150, label %.thread183, label %.invoke

.thread:                                          ; preds = %bb.ds, %bb.dv
  %i.tc = phi i32 [ %.pr, %bb.dv ], [ %i.er, %bb.ds ] ; 2 uses
  %i.td = icmp eq i32 %i.tc, 9
  br i1 %i.td, label %bb.dx, label %.thread183

bb.dx:                                            ; preds = %.thread
  %i.te = getelementptr inbounds nuw i8, ptr %0, i64 768368
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !134 ; 2 uses
  %.not151 = icmp eq ptr %i.tf, null
  br i1 %.not151, label %.thread183, label %.invoke

.invoke:                                          ; preds = %bb.dx, %bb.dw
  %i.tg = phi ptr [ %i.tb, %bb.dw ], [ %i.tf, %bb.dx ]
  invoke void %i.tg(ptr noundef nonnull %0)
          to label %bb.en unwind label %bb.du

.thread183:                                       ; preds = %bb.dw, %bb.dx, %.thread
  %i.th = phi i1 [ false, %.thread ], [ true, %bb.dx ], [ false, %bb.dw ]
  %i.ti = phi i32 [ %i.tc, %.thread ], [ 9, %bb.dx ], [ %.pr, %bb.dw ] ; 2 uses
  %.not186 = phi i1 [ true, %.thread ], [ true, %bb.dx ], [ false, %bb.dw ]
  switch i32 %spec.select, label %bb.dz [
    i32 0, label %bb.dy
    i32 1, label %bb.eb
  ]

bb.dy:                                            ; preds = %.thread183
  invoke void @_ZN6LibRaw15lin_interpolateEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.en unwind label %bb.du

bb.dz:                                            ; preds = %.thread183
  %i.tj = load i32, ptr %i.eu, align 4, !tbaa !97
  %i.tk = icmp sgt i32 %i.tj, 3
  %i.tl = icmp sgt i32 %.290, 3
  %or.cond9 = select i1 %i.tk, i1 true, i1 %i.tl
  %or.cond11 = select i1 %or.cond9, i1 true, i1 %.3
  br i1 %or.cond11, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %.not152 = icmp ne i32 %i.ti, 9
  %i.tm = icmp ult i32 %i.ti, 1001
  %or.cond171 = and i1 %.not152, %i.tm
  br i1 %or.cond171, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea, %.thread183, %bb.dz
  invoke void @_ZN6LibRaw15vng_interpolateEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.en unwind label %bb.du

bb.ec:                                            ; preds = %bb.ea
  %i.tn = icmp ne i32 %spec.select, 2
  %brmerge = or i1 %i.tn, %.not186
  br i1 %brmerge, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  invoke void @_ZN6LibRaw15ppg_interpolateEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.en unwind label %bb.du

bb.ee:                                            ; preds = %bb.ec
  br i1 %i.th, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %.inv = icmp slt i32 %spec.select, 3
  %i.to = select i1 %.inv, i32 1, i32 3
  invoke void @_ZN6LibRaw18xtrans_interpolateEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.to)
          to label %bb.en unwind label %bb.du

bb.eg:                                            ; preds = %bb.ee
  switch i32 %spec.select, label %bb.el [
    i32 3, label %bb.eh
    i32 4, label %bb.ei
    i32 11, label %bb.ej
    i32 12, label %bb.ek
  ]

bb.eh:                                            ; preds = %bb.eg
  invoke void @_ZN6LibRaw15ahd_interpolateEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.en unwind label %bb.du

bb.ei:                                            ; preds = %bb.eg
  invoke void @_ZN6LibRaw3dcbEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %spec.select170, i32 noundef %.095)
          to label %bb.en unwind label %bb.du

bb.ej:                                            ; preds = %bb.eg
  invoke void @_ZN6LibRaw15dht_interpolateEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.en unwind label %bb.du

bb.ek:                                            ; preds = %bb.eg
  invoke void @_ZN6LibRaw16aahd_interpolateEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.en unwind label %bb.du

bb.el:                                            ; preds = %bb.eg
  invoke void @_ZN6LibRaw15ahd_interpolateEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.em unwind label %bb.du

bb.em:                                            ; preds = %bb.el
  %i.tp = getelementptr inbounds nuw i8, ptr %0, i64 5596 ; 2 uses
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !135
  %i.tr = or i32 %i.tq, 32768
  store i32 %i.tr, ptr %i.tp, align 4, !tbaa !135
  br label %bb.en

bb.en:                                            ; preds = %.invoke, %bb.dy, %bb.ed, %bb.eh, %bb.ej, %bb.ek, %bb.em, %bb.ei, %bb.ef, %bb.eb
  %i.ts = load i32, ptr %i.b, align 8, !tbaa !11
  %i.tt = or i32 %i.ts, 2048
  store i32 %i.tt, ptr %i.b, align 8, !tbaa !11
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.bn, %bb.bm
  %i.tu = load i32, ptr %i.ax, align 8, !tbaa !136
  %.not155 = icmp eq i32 %i.tu, 0
  br i1 %.not155, label %bb.er, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 540
  store i32 3, ptr %i.tv, align 4, !tbaa !97
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.ty = load i16, ptr %i.tw, align 4, !tbaa !112
  %i.tz = zext i16 %i.ty to i32
  %i.ua = load i16, ptr %i.tx, align 2, !tbaa !113
  %i.ub = zext i16 %i.ua to i32
  %i.uc = mul nuw nsw i32 %i.ub, %i.tz
  %.not207 = icmp eq i32 %i.uc, 0
  br i1 %.not207, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ep
  %i.ud = load ptr, ptr %i.a, align 8, !tbaa !114
  br label %bb.eq

bb.eq:                                            ; preds = %.lr.ph, %bb.eq
  %indvars.iv212 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next213, %bb.eq ] ; 2 uses
  %i.ue = getelementptr inbounds nuw [8 x i8], ptr %i.ud, i64 %indvars.iv212 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 2 ; 2 uses
  %i.ug = load i16, ptr %i.uf, align 2, !tbaa !115
  %i.uh = zext i16 %i.ug to i32
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ue, i64 6
  %i.uj = load i16, ptr %i.ui, align 2, !tbaa !115
  %i.uk = zext i16 %i.uj to i32
  %i.ul = add nuw nsw i32 %i.uk, %i.uh
  %i.um = lshr i32 %i.ul, 1
  %i.un = trunc nuw i32 %i.um to i16
  store i16 %i.un, ptr %i.uf, align 2, !tbaa !115
  %indvars.iv.next213 = add nuw nsw i64 %indvars.iv212, 1 ; 2 uses
  %i.uo = load i16, ptr %i.tw, align 4, !tbaa !112
  %i.up = zext i16 %i.uo to i64
  %i.uq = load i16, ptr %i.tx, align 2, !tbaa !113
  %i.ur = zext i16 %i.uq to i64
  %i.us = mul nuw nsw i64 %i.ur, %i.up
  %i.ut = icmp samesign ult i64 %indvars.iv.next213, %i.us
  br i1 %i.ut, label %bb.eq, label %._crit_edge, !llvm.loop !137

._crit_edge:                                      ; preds = %bb.eq, %bb.ep
  %i.uu = load i32, ptr %i.b, align 8, !tbaa !11
  %i.uv = or i32 %i.uu, 4096
  store i32 %i.uv, ptr %i.b, align 8, !tbaa !11
  br label %bb.er

bb.er:                                            ; preds = %._crit_edge, %bb.eo
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 768376
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !138 ; 2 uses
  %.not156 = icmp eq ptr %i.ux, null
  br i1 %.not156, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  invoke void %i.ux(ptr noundef nonnull %0)
          to label %bb.ey unwind label %bb.w

bb.et:                                            ; preds = %bb.er
  %i.uy = load i32, ptr %i.cf, align 8, !tbaa !110
  %.not157 = icmp eq i32 %i.uy, 0
  br i1 %.not157, label %bb.eu, label %bb.ey

bb.eu:                                            ; preds = %bb.et
  %i.uz = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.va = load i32, ptr %i.uz, align 4, !tbaa !97
  %i.vb = icmp eq i32 %i.va, 3
  br i1 %i.vb, label %bb.ev, label %bb.ey
end_hunk_1
