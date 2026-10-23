Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/bmvvideo?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@decode_frame:bb.a

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u ; 2 uses
  store ptr %i.ad, ptr %i.e, align 8, !tbaa !51
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.promoted = phi ptr [ %i.ad, %bb.f ], [ %i.s, %bb.d ] ; 2 uses
  %i.ae = and i32 %i.h, 8
  %.not78 = icmp eq i32 %i.ae, 0
  br i1 %.not78, label %.loopexit87, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.ag = ptrtoint ptr %.promoted to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !50
  %i.al = add nsw i32 %i.ak, -768
  %i.am = sext i32 %i.al to i64
  %i.an = icmp sgt i64 %i.ai, %i.am
  br i1 %i.an, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 275216 ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.5) #7
  br label %bb.ax

bb.j:                                             ; preds = %bb.j, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %bb.j ] ; 3 uses
  %i.ap = phi ptr [ %.promoted, %.preheader ], [ %i.bf, %bb.j ] ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 3 ; 2 uses
  store ptr %i.aq, ptr %i.e, align 8, !tbaa !48
  %i.ar = load i8, ptr %i.ap, align 1, !tbaa !49
  %i.as = zext i8 %i.ar to i32
  %i.at = shl nuw nsw i32 %i.as, 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !49
  %i.aw = zext i8 %i.av to i32
  %i.ax = shl nuw nsw i32 %i.aw, 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !49
  %i.ba = zext i8 %i.az to i32
  %i.bb = or disjoint i32 %i.at, %i.ax
  %i.bc = or disjoint i32 %i.bb, %i.ba
  %i.bd = or disjoint i32 %i.bc, -16777216
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !52
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ap, i64 6 ; 2 uses
  store ptr %i.bf, ptr %i.e, align 8, !tbaa !48
  %i.bg = load i8, ptr %i.aq, align 1, !tbaa !49
  %i.bh = zext i8 %i.bg to i32
  %i.bi = shl nuw nsw i32 %i.bh, 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !49
  %i.bl = zext i8 %i.bk to i32
  %i.bm = shl nuw nsw i32 %i.bl, 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ap, i64 5
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !49
  %i.bp = zext i8 %i.bo to i32
  %i.bq = or disjoint i32 %i.bi, %i.bm
  %i.br = or disjoint i32 %i.bq, %i.bp
  %i.bs = or disjoint i32 %i.br, -16777216
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i32 %i.bs, ptr %i.bu, align 4, !tbaa !52
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 256
  br i1 %exitcond.not.1, label %.loopexit87, label %bb.j, !llvm.loop !36

.loopexit87:                                      ; preds = %bb.j, %bb.g
  %i.bv = and i32 %i.h, 4
  %.not79 = icmp eq i32 %i.bv, 0
  br i1 %.not79, label %bb.n, label %bb.k

bb.k:                                             ; preds = %.loopexit87
  %i.bw = load ptr, ptr %i.e, align 8, !tbaa !51  ; 3 uses
  %i.bx = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !50
  %i.cd = add nsw i32 %i.cc, -2
  %i.ce = sext i32 %i.cd to i64
  %i.cf = icmp sgt i64 %i.ca, %i.ce
  br i1 %i.cf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.6) #7
  br label %bb.ax

bb.m:                                             ; preds = %bb.k
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  store ptr %i.cg, ptr %i.e, align 8, !tbaa !48
  %i.ch = load i16, ptr %i.bw, align 1, !tbaa !49
  %i.ci = sext i16 %i.ch to i32
  br label %bb.o

bb.n:                                             ; preds = %.loopexit87
  %i.cj = and i32 %i.h, 3
  %i.ck = icmp eq i32 %i.cj, 3
  %. = select i1 %i.ck, i32 -640, i32 0
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.070 = phi i32 [ %i.ci, %bb.m ], [ %., %bb.n ] ; 5 uses
  %i.cl = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #7 ; 2 uses
  %i.cm = icmp slt i32 %i.cl, 0
  br i1 %i.cm, label %bb.ax, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cn = load ptr, ptr %i.e, align 8, !tbaa !51  ; 11 uses
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !50
  %i.cq = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.cr = ptrtoint ptr %i.cn to i64               ; 2 uses
  %i.cs = ptrtoint ptr %i.cq to i64
  %.neg = sub i64 %i.cs, %i.cr
  %i.ct = trunc i64 %.neg to i32
  %i.cu = add i32 %i.cp, %i.ct                    ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.cw = sext i32 %i.cu to i64
  %i.cx = getelementptr inbounds i8, ptr %i.cn, i64 %i.cw ; 10 uses
  %i.cy = icmp ult i32 %.070, -639                ; 8 uses
  %i.cz = icmp slt i32 %i.cu, 1
  br i1 %i.cz, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.da = load ptr, ptr %i.cv, align 8, !tbaa !33 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 274560 ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %i.cx, i64 -1
  %i.dd = getelementptr inbounds i8, ptr %i.da, i64 -1
  %.0172.i = select i1 %i.cy, ptr %i.cn, ptr %i.dc
  %.0169.idx.i = select i1 %i.cy, i64 0, i64 274559
  %.0169.i = getelementptr inbounds nuw i8, ptr %i.da, i64 %.0169.idx.i
  %.0168.i = select i1 %i.cy, ptr %i.db, ptr %i.dd ; 2 uses
  %.v.i = select i1 %i.cy, i64 1, i64 -1          ; 8 uses
  %i.de = ptrtoint ptr %.0168.i to i64
  %.in.in.v.i = select i1 %i.cy, i64 -1, i64 1
  %i.df = ptrtoint ptr %i.cx to i64
  %i.dg = ptrtoint ptr %i.da to i64               ; 2 uses
  %i.dh = tail call i32 @llvm.abs.i32(i32 range(i32 -32768, 32768) %.070, i1 true)
  %invariant.smax.i = zext nneg i32 %i.dh to i64  ; 2 uses
  %i.di = ptrtoint ptr %i.db to i64               ; 2 uses
  %i.dj = sext i32 %.070 to i64                   ; 2 uses
  %invariant.op = sub i64 640, %i.dg
  %invariant.op174 = sub i64 640, %i.dg
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.i, %bb.q
  %.0179.i = phi i32 [ 0, %bb.q ], [ %.1180241.i, %.loopexit.i ] ; 11 uses
  %.0176.i = phi i32 [ %i.cu, %bb.q ], [ %.1177242.i, %.loopexit.i ]
  %.1173.i = phi ptr [ %.0172.i, %bb.q ], [ %.5.i, %.loopexit.i ] ; 10 uses
  %.1170.i = phi ptr [ %.0169.i, %bb.q ], [ %.2171.i, %.loopexit.i ] ; 18 uses
  %.0162.i = phi i32 [ 0, %bb.q ], [ %spec.select216.i, %.loopexit.i ] ; 2 uses
  %i.dk = icmp ne i32 %.0162.i, 0
  %i.dl = icmp ne i32 %.0176.i, 4
  %or.cond.not.i = and i1 %i.dl, %i.dk
  br i1 %or.cond.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dm = icmp uge ptr %.1173.i, %i.cn
  %.not.i = icmp ult ptr %.1173.i, %i.cx
  %or.cond214.i = select i1 %i.dm, i1 %.not.i, i1 false
  br i1 %or.cond214.i, label %.thread292.i, label %.loopexit

bb.t:                                             ; preds = %bb.r
  %i.dn = and i32 %.0179.i, 12
  %.not204.i = icmp eq i32 %i.dn, 0
  br i1 %.not204.i, label %.preheader255.preheader.i, label %.thread235.i

.thread292.i:                                     ; preds = %bb.s
  %i.do = load i8, ptr %.1173.i, align 1, !tbaa !49
  %i.dp = zext i8 %i.do to i32                    ; 3 uses
  %i.dq = and i32 %i.dp, 12
  %.not204294.i = icmp eq i32 %i.dq, 0
  br i1 %.not204294.i, label %.preheader255.preheader.thread.i, label %.thread.i

.preheader255.preheader.i:                        ; preds = %bb.t
  %i.dr = icmp uge ptr %.1173.i, %i.cn
  %.not206.peel.i = icmp ult ptr %.1173.i, %i.cx
  %or.cond215.peel.i = select i1 %i.dr, i1 %.not206.peel.i, i1 false
  br i1 %or.cond215.peel.i, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %.preheader255.preheader.i
  %i.ds = load i8, ptr %.1173.i, align 1, !tbaa !49
  %i.dt = zext i8 %i.ds to i32                    ; 2 uses
  %i.du = shl nuw nsw i32 %i.dt, 2
  %i.dv = or i32 %i.du, %.0179.i                  ; 2 uses
  %i.dw = and i32 %i.dt, 12
  %.not207.peel.i = icmp eq i32 %i.dw, 0
  br i1 %.not207.peel.i, label %.preheader255.preheader.thread.i, label %.thread.i

.preheader255.preheader.thread.i:                 ; preds = %bb.u, %.thread292.i
  %.2184.peel.i = phi i32 [ %i.dv, %bb.u ], [ %i.dp, %.thread292.i ] ; 2 uses
  %.1.peel.i = phi i32 [ 4, %bb.u ], [ 2, %.thread292.i ] ; 25 uses
  %notmask.peel.i = shl nsw i32 -1, %.1.peel.i    ; 2 uses
  %i.dx = xor i32 %notmask.peel.i, -1
  %i.dy = lshr i32 %.2184.peel.i, 2
  %i.dz = and i32 %notmask.peel.i, %i.dy
  %i.ea = and i32 %.2184.peel.i, %i.dx
  %i.eb = or disjoint i32 %i.dz, %i.ea            ; 3 uses
  %i.ec = getelementptr inbounds i8, ptr %.1173.i, i64 %.v.i ; 6 uses
  %i.ed = shl nuw nsw i32 12, %.1.peel.i
  %i.ee = and i32 %i.eb, %i.ed
  %.not208.peel.i = icmp eq i32 %i.ee, 0
  br i1 %.not208.peel.i, label %.preheader255.i.preheader, label %.thread230.i

.preheader255.i:                                  ; preds = %bb.ag
  %i.ef = add nuw nsw i32 %.1.peel.i, 4
  %i.eg = icmp uge ptr %i.hs, %i.cn
  %.not206.i.1 = icmp ult ptr %i.hs, %i.cx
  %or.cond215.i.1 = select i1 %i.eg, i1 %.not206.i.1, i1 false
  br i1 %or.cond215.i.1, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %.preheader255.i
  %i.eh = add nuw nsw i32 %.1.peel.i, 6
  %i.ei = load i8, ptr %i.hs, align 1, !tbaa !49
  %i.ej = zext i8 %i.ei to i32                    ; 2 uses
  %i.ek = shl nuw nsw i32 %i.ej, %i.eh
  %i.el = or i32 %i.ek, %i.hr                     ; 3 uses
  %i.em = and i32 %i.ej, 12
  %.not207.i.1 = icmp eq i32 %i.em, 0
  br i1 %.not207.i.1, label %bb.w, label %.thread.loopexit.loopexit.i

bb.w:                                             ; preds = %bb.v
  %notmask.i.1 = shl nsw i32 -256, %.1.peel.i     ; 2 uses
  %i.en = xor i32 %notmask.i.1, -1
  %i.eo = lshr i32 %i.el, 2
  %i.ep = and i32 %i.eo, %notmask.i.1
  %i.eq = and i32 %i.el, %i.en
  %i.er = or disjoint i32 %i.ep, %i.eq            ; 3 uses
  %i.es = getelementptr inbounds i8, ptr %i.hs, i64 %.v.i ; 6 uses
  %i.et = shl nuw nsw i32 3072, %.1.peel.i
  %i.eu = and i32 %i.er, %i.et
  %.not208.i.1 = icmp eq i32 %i.eu, 0
  br i1 %.not208.i.1, label %.preheader255.i.1, label %.thread230.i, !llvm.loop !37

.preheader255.i.1:                                ; preds = %bb.w
  %i.ev = or disjoint i32 %.1.peel.i, 8
  %i.ew = icmp uge ptr %i.es, %i.cn
  %.not206.i.2 = icmp ult ptr %i.es, %i.cx
  %or.cond215.i.2 = select i1 %i.ew, i1 %.not206.i.2, i1 false
  br i1 %or.cond215.i.2, label %bb.x, label %.loopexit

bb.x:                                             ; preds = %.preheader255.i.1
  %i.ex = add nuw nsw i32 %.1.peel.i, 10
  %i.ey = load i8, ptr %i.es, align 1, !tbaa !49
  %i.ez = zext i8 %i.ey to i32                    ; 2 uses
  %i.fa = shl nuw i32 %i.ez, %i.ex
  %i.fb = or i32 %i.fa, %i.er                     ; 3 uses
  %i.fc = and i32 %i.ez, 12
  %.not207.i.2 = icmp eq i32 %i.fc, 0
  br i1 %.not207.i.2, label %bb.y, label %.thread.loopexit.loopexit.i

bb.y:                                             ; preds = %bb.x
  %notmask.i.2 = shl nsw i32 -4096, %.1.peel.i    ; 2 uses
  %i.fd = xor i32 %notmask.i.2, -1
  %i.fe = lshr i32 %i.fb, 2
  %i.ff = and i32 %i.fe, %notmask.i.2
  %i.fg = and i32 %i.fb, %i.fd
  %i.fh = or disjoint i32 %i.ff, %i.fg            ; 3 uses
  %i.fi = getelementptr inbounds i8, ptr %i.es, i64 %.v.i ; 6 uses
  %i.fj = shl nuw nsw i32 49152, %.1.peel.i
  %i.fk = and i32 %i.fh, %i.fj
  %.not208.i.2 = icmp eq i32 %i.fk, 0
  br i1 %.not208.i.2, label %.preheader255.i.2, label %.thread230.i, !llvm.loop !37

.preheader255.i.2:                                ; preds = %bb.y
  %i.fl = add nuw nsw i32 %.1.peel.i, 12
  %i.fm = icmp uge ptr %i.fi, %i.cn
  %.not206.i.3 = icmp ult ptr %i.fi, %i.cx
  %or.cond215.i.3 = select i1 %i.fm, i1 %.not206.i.3, i1 false
  br i1 %or.cond215.i.3, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %.preheader255.i.2
  %i.fn = add nuw nsw i32 %.1.peel.i, 14
  %i.fo = load i8, ptr %i.fi, align 1, !tbaa !49
  %i.fp = zext i8 %i.fo to i32                    ; 2 uses
  %i.fq = shl nuw i32 %i.fp, %i.fn
  %i.fr = or i32 %i.fq, %i.fh                     ; 3 uses
  %i.fs = and i32 %i.fp, 12
  %.not207.i.3 = icmp eq i32 %i.fs, 0
  br i1 %.not207.i.3, label %bb.aa, label %.thread.loopexit.loopexit.i

bb.aa:                                            ; preds = %bb.z
  %notmask.i.3 = shl nsw i32 -65536, %.1.peel.i   ; 2 uses
  %i.ft = xor i32 %notmask.i.3, -1
  %i.fu = lshr i32 %i.fr, 2
  %i.fv = and i32 %i.fu, %notmask.i.3
  %i.fw = and i32 %i.fr, %i.ft
  %i.fx = or disjoint i32 %i.fv, %i.fw            ; 3 uses
  %i.fy = getelementptr inbounds i8, ptr %i.fi, i64 %.v.i ; 6 uses
  %i.fz = shl nuw nsw i32 786432, %.1.peel.i
  %i.ga = and i32 %i.fx, %i.fz
  %.not208.i.3 = icmp eq i32 %i.ga, 0
  br i1 %.not208.i.3, label %.preheader255.i.3, label %.thread230.i, !llvm.loop !37

.preheader255.i.3:                                ; preds = %bb.aa
  %i.gb = or disjoint i32 %.1.peel.i, 16          ; 2 uses
  %i.gc = icmp uge ptr %i.fy, %i.cn
  %.not206.i.4 = icmp ult ptr %i.fy, %i.cx
  %or.cond215.i.4 = select i1 %i.gc, i1 %.not206.i.4, i1 false
  br i1 %or.cond215.i.4, label %bb.ab, label %.loopexit

bb.ab:                                            ; preds = %.preheader255.i.3
  %i.gd = add nuw nsw i32 %.1.peel.i, 18
  %i.ge = load i8, ptr %i.fy, align 1, !tbaa !49
  %i.gf = zext i8 %i.ge to i32                    ; 2 uses
  %i.gg = shl nuw i32 %i.gf, %i.gd
  %i.gh = or i32 %i.gg, %i.fx                     ; 3 uses
  %i.gi = and i32 %i.gf, 12
  %.not207.i.4 = icmp eq i32 %i.gi, 0
  br i1 %.not207.i.4, label %bb.ac, label %.thread.loopexit.loopexit.i

bb.ac:                                            ; preds = %bb.ab
  %notmask.i.4 = shl nsw i32 -1048576, %.1.peel.i ; 2 uses
  %i.gj = xor i32 %notmask.i.4, -1
  %i.gk = lshr i32 %i.gh, 2
  %i.gl = and i32 %i.gk, %notmask.i.4
  %i.gm = and i32 %i.gh, %i.gj
  %i.gn = or disjoint i32 %i.gl, %i.gm            ; 3 uses
  %i.go = getelementptr inbounds i8, ptr %i.fy, i64 %.v.i ; 6 uses
  %i.gp = shl nuw nsw i32 12582912, %.1.peel.i
  %i.gq = and i32 %i.gn, %i.gp
  %.not208.i.4 = icmp eq i32 %i.gq, 0
  br i1 %.not208.i.4, label %.preheader255.i.4, label %.thread230.i, !llvm.loop !37

.preheader255.i.4:                                ; preds = %bb.ac
  %i.gr = add nuw nsw i32 %.1.peel.i, 20
  %i.gs = icmp samesign ugt i32 %i.gb, 18
  br i1 %i.gs, label %.loopexit, label %.preheader255.i.preheader.5

.preheader255.i.preheader.5:                      ; preds = %.preheader255.i.4
  %i.gt = icmp uge ptr %i.go, %i.cn
  %.not206.i.5 = icmp ult ptr %i.go, %i.cx
  %or.cond215.i.5 = select i1 %i.gt, i1 %.not206.i.5, i1 false
  br i1 %or.cond215.i.5, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %.preheader255.i.preheader.5
  %i.gu = add nuw nsw i32 %.1.peel.i, 22
  %i.gv = load i8, ptr %i.go, align 1, !tbaa !49
  %i.gw = zext i8 %i.gv to i32                    ; 2 uses
  %i.gx = shl nuw i32 %i.gw, %i.gu
  %i.gy = or i32 %i.gx, %i.gn                     ; 3 uses
  %i.gz = and i32 %i.gw, 12
  %.not207.i.5 = icmp eq i32 %i.gz, 0
  br i1 %.not207.i.5, label %bb.ae, label %.thread.loopexit.loopexit.i

bb.ae:                                            ; preds = %bb.ad
  %notmask.i.5 = shl nsw i32 -16777216, %.1.peel.i ; 2 uses
  %i.ha = xor i32 %notmask.i.5, -1
  %i.hb = lshr i32 %i.gy, 2
  %i.hc = and i32 %i.hb, %notmask.i.5
  %i.hd = and i32 %i.gy, %i.ha
  %i.he = or disjoint i32 %i.hc, %i.hd            ; 2 uses
  %i.hf = getelementptr inbounds i8, ptr %i.go, i64 %.v.i
  %.not208.i.5 = icmp samesign ult i32 %i.he, 268435456
  br i1 %.not208.i.5, label %.loopexit, label %.thread230.i, !llvm.loop !37

.preheader255.i.preheader:                        ; preds = %.preheader255.preheader.thread.i
  %i.hg = icmp uge ptr %i.ec, %i.cn
  %.not206.i = icmp ult ptr %i.ec, %i.cx
  %or.cond215.i = select i1 %i.hg, i1 %.not206.i, i1 false
  br i1 %or.cond215.i, label %bb.af, label %.loopexit

bb.af:                                            ; preds = %.preheader255.i.preheader
  %i.hh = add nuw nsw i32 %.1.peel.i, 2
  %i.hi = load i8, ptr %i.ec, align 1, !tbaa !49
  %i.hj = zext i8 %i.hi to i32                    ; 2 uses
  %i.hk = shl nuw nsw i32 %i.hj, %i.hh
  %i.hl = or i32 %i.hk, %i.eb                     ; 3 uses
  %i.hm = and i32 %i.hj, 12
  %.not207.i = icmp eq i32 %i.hm, 0
  br i1 %.not207.i, label %bb.ag, label %.thread.loopexit.loopexit.i

bb.ag:                                            ; preds = %bb.af
  %notmask.i = shl nsw i32 -16, %.1.peel.i        ; 2 uses
  %i.hn = xor i32 %notmask.i, -1
  %i.ho = lshr i32 %i.hl, 2
  %i.hp = and i32 %i.ho, %notmask.i
  %i.hq = and i32 %i.hl, %i.hn
  %i.hr = or disjoint i32 %i.hp, %i.hq            ; 3 uses
  %i.hs = getelementptr inbounds i8, ptr %i.ec, i64 %.v.i ; 6 uses
  %i.ht = shl nuw nsw i32 192, %.1.peel.i
  %i.hu = and i32 %i.hr, %i.ht
  %.not208.i = icmp eq i32 %i.hu, 0
  br i1 %.not208.i, label %.preheader255.i, label %.thread230.i, !llvm.loop !37

.thread.loopexit.loopexit.i:                      ; preds = %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.af
  %.0.i131.lcssa172 = phi i32 [ %.1.peel.i, %bb.af ], [ %i.ef, %bb.v ], [ %i.ev, %bb.x ], [ %i.fl, %bb.z ], [ %i.gb, %bb.ab ], [ %i.gr, %bb.ad ]
  %.2174.i130.lcssa170 = phi ptr [ %i.ec, %bb.af ], [ %i.hs, %bb.v ], [ %i.es, %bb.x ], [ %i.fi, %bb.z ], [ %i.fy, %bb.ab ], [ %i.go, %bb.ad ]
  %.lcssa = phi i32 [ %i.hl, %bb.af ], [ %i.el, %bb.v ], [ %i.fb, %bb.x ], [ %i.fr, %bb.z ], [ %i.gh, %bb.ab ], [ %i.gy, %bb.ad ]
  %i.hv = add nuw nsw i32 %.0.i131.lcssa172, 6
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.loopexit.loopexit.i, %bb.u, %.thread292.i
  %.2229.i = phi i32 [ %i.hv, %.thread.loopexit.loopexit.i ], [ 6, %bb.u ], [ 4, %.thread292.i ] ; 2 uses
  %.3175228.i = phi ptr [ %.2174.i130.lcssa170, %.thread.loopexit.loopexit.i ], [ %.1173.i, %bb.u ], [ %.1173.i, %.thread292.i ]
  %.3185227.i = phi i32 [ %.lcssa, %.thread.loopexit.loopexit.i ], [ %i.dv, %bb.u ], [ %i.dp, %.thread292.i ] ; 2 uses
  %i.hw = lshr i32 %.3185227.i, %.2229.i
  %notmask212.i = shl nsw i32 -1, %.2229.i
  %i.hx = xor i32 %notmask212.i, -1
  %i.hy = and i32 %.3185227.i, %i.hx
  %i.hz = getelementptr inbounds i8, ptr %.3175228.i, i64 %.v.i
  br label %.thread230.i

.thread230.i:                                     ; preds = %bb.ag, %bb.w, %bb.y, %bb.aa, %bb.ac, %bb.ae, %.thread.i, %.preheader255.preheader.thread.i
  %.4186.i = phi i32 [ %i.hy, %.thread.i ], [ %i.eb, %.preheader255.preheader.thread.i ], [ %i.hr, %bb.ag ], [ %i.er, %bb.w ], [ %i.fh, %bb.y ], [ %i.fx, %bb.aa ], [ %i.gn, %bb.ac ], [ %i.he, %bb.ae ] ; 2 uses
  %.1180.i = phi i32 [ %i.hw, %.thread.i ], [ %.0179.i, %.preheader255.preheader.thread.i ], [ %.0179.i, %bb.ae ], [ %.0179.i, %bb.ac ], [ %.0179.i, %bb.aa ], [ %.0179.i, %bb.y ], [ %.0179.i, %bb.w ], [ %.0179.i, %bb.ag ]
  %.1177.i = phi i32 [ 0, %.thread.i ], [ 4, %.preheader255.preheader.thread.i ], [ 4, %bb.ae ], [ 4, %bb.ac ], [ 4, %bb.aa ], [ 4, %bb.y ], [ 4, %bb.w ], [ 4, %bb.ag ]
  %.4.i = phi ptr [ %i.hz, %.thread.i ], [ %i.ec, %.preheader255.preheader.thread.i ], [ %i.hs, %bb.ag ], [ %i.es, %bb.w ], [ %i.fi, %bb.y ], [ %i.fy, %bb.aa ], [ %i.go, %bb.ac ], [ %i.hf, %bb.ae ]
  %i.ia = icmp samesign ugt i32 %.4186.i, 3
  br i1 %i.ia, label %.thread235.i, label %bb.ah

bb.ah:                                            ; preds = %.thread230.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 140) #7
  tail call void @abort() #8
  unreachable

.thread235.i:                                     ; preds = %.thread230.i, %bb.t
  %.4243.i = phi ptr [ %.4.i, %.thread230.i ], [ %.1173.i, %bb.t ] ; 10 uses
  %.1177242.i = phi i32 [ %.1177.i, %.thread230.i ], [ 4, %bb.t ]
  %.1180241.i = phi i32 [ %.1180.i, %.thread230.i ], [ %.0179.i, %bb.t ]
  %.4186240.i = phi i32 [ %.4186.i, %.thread230.i ], [ %.0179.i, %bb.t ] ; 2 uses
  %i.ib = lshr i32 %.4186240.i, 1                 ; 2 uses
  %i.ic = add nsw i32 %i.ib, -1                   ; 5 uses
  %i.id = and i32 %.4186240.i, 1
  %i.ie = add nuw nsw i32 %.0162.i, 1
  %i.if = add nuw nsw i32 %i.ie, %i.id            ; 3 uses
  %i.ig = icmp sgt i32 %i.if, 3
  %i.ih = add nsw i32 %i.if, -3
  %spec.select216.i = select i1 %i.ig, i32 %i.ih, i32 %i.if ; 2 uses
  %i.ii = ptrtoint ptr %.1170.i to i64            ; 3 uses
  %i.ij = sub i64 %i.de, %i.ii
  %i.ik = tail call i64 @llvm.abs.i64(i64 %i.ij, i1 true)
  %i.il = zext nneg i32 %i.ic to i64              ; 24 uses
  %i.im = icmp samesign ult i64 %i.ik, %i.il
  br i1 %i.im, label %.loopexit, label %bb.ai

bb.ai:                                            ; preds = %.thread235.i
  switch i32 %spec.select216.i, label %default.unreachable.i [
    i32 1, label %bb.aj
    i32 2, label %bb.ao
    i32 3, label %bb.at
  ]

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.cy, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %.reass268.reass.i.reass.reass = add i64 %i.ii, %invariant.op174
  %or.cond218.i = icmp slt i64 %.reass268.reass.i.reass.reass, %invariant.smax.i
  br i1 %or.cond218.i, label %.loopexit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.in = sub i64 %i.di, %i.ii                    ; 2 uses
  %i.io = add nsw i32 %i.ic, %.070
  %i.ip = sext i32 %i.io to i64
  %i.iq = icmp slt i64 %i.in, %i.ip
  %i.ir = icmp slt i64 %i.in, %i.il
  %or.cond219.i = or i1 %i.ir, %i.iq
  br i1 %or.cond219.i, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.al
  %invariant.gep309.i = getelementptr i8, ptr %.1170.i, i64 %i.dj ; 7 uses
  %min.iters.check = icmp ult i32 %i.ic, 4
  br i1 %min.iters.check, label %.lr.ph265.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check132 = icmp ult i32 %i.ic, 32
  br i1 %min.iters.check132, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.is = and i64 %i.il, 28
  %n.vec = and i64 %i.il, 2147483616              ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.it = getelementptr i8, ptr %invariant.gep309.i, i64 %index ; 2 uses
  %i.iu = getelementptr i8, ptr %i.it, i64 16
  %wide.load = load <16 x i8>, ptr %i.it, align 1, !tbaa !49
  %wide.load133 = load <16 x i8>, ptr %i.iu, align 1, !tbaa !49
  %i.iv = getelementptr inbounds nuw i8, ptr %.1170.i, i64 %index ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  store <16 x i8> %wide.load, ptr %i.iv, align 1, !tbaa !49
  store <16 x i8> %wide.load133, ptr %i.iw, align 1, !tbaa !49
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ix = icmp eq i64 %index.next, %n.vec
  br i1 %i.ix, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.il
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.is, 0
  br i1 %min.epilog.iters.check, label %.lr.ph265.i.preheader, label %vec.epilog.ph, !prof !57

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec134 = and i64 %i.il, 2147483644           ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index135 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next137, %vec.epilog.vector.body ] ; 3 uses
  %i.iy = getelementptr i8, ptr %invariant.gep309.i, i64 %index135
  %wide.load136 = load <4 x i8>, ptr %i.iy, align 1, !tbaa !49
  %i.iz = getelementptr inbounds nuw i8, ptr %.1170.i, i64 %index135
  store <4 x i8> %wide.load136, ptr %i.iz, align 1, !tbaa !49
  %index.next137 = add nuw i64 %index135, 4       ; 2 uses
  %i.ja = icmp eq i64 %index.next137, %n.vec134
  br i1 %i.ja, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !39

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n138 = icmp eq i64 %n.vec134, %i.il
  br i1 %cmp.n138, label %._crit_edge.i, label %.lr.ph265.i.preheader

.lr.ph265.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv282.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec134, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.il, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph265.i.prol.loopexit, label %.lr.ph265.i.prol

.lr.ph265.i.prol:                                 ; preds = %.lr.ph265.i.preheader, %.lr.ph265.i.prol
  %indvars.iv282.i.prol = phi i64 [ %indvars.iv.next283.i.prol, %.lr.ph265.i.prol ], [ %indvars.iv282.i.ph, %.lr.ph265.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph265.i.prol ], [ 0, %.lr.ph265.i.preheader ]
  %gep310.i.prol = getelementptr i8, ptr %invariant.gep309.i, i64 %indvars.iv282.i.prol
  %i.jb = load i8, ptr %gep310.i.prol, align 1, !tbaa !49
  %i.jc = getelementptr inbounds nuw i8, ptr %.1170.i, i64 %indvars.iv282.i.prol
  store i8 %i.jb, ptr %i.jc, align 1, !tbaa !49
  %indvars.iv.next283.i.prol = add nuw nsw i64 %indvars.iv282.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph265.i.prol.loopexit, label %.lr.ph265.i.prol, !llvm.loop !40

.lr.ph265.i.prol.loopexit:                        ; preds = %.lr.ph265.i.prol, %.lr.ph265.i.preheader
  %indvars.iv282.i.unr = phi i64 [ %indvars.iv282.i.ph, %.lr.ph265.i.preheader ], [ %indvars.iv.next283.i.prol, %.lr.ph265.i.prol ]
  %i.jd = sub nsw i64 %indvars.iv282.i.ph, %i.il
  %i.je = icmp ugt i64 %i.jd, -4
  br i1 %i.je, label %._crit_edge.i, label %.lr.ph265.i

.lr.ph265.i:                                      ; preds = %.lr.ph265.i.prol.loopexit, %.lr.ph265.i
  %indvars.iv282.i = phi i64 [ %indvars.iv.next283.i.3, %.lr.ph265.i ], [ %indvars.iv282.i.unr, %.lr.ph265.i.prol.loopexit ] ; 6 uses
  %gep310.i = getelementptr i8, ptr %invariant.gep309.i, i64 %indvars.iv282.i
  %i.jf = load i8, ptr %gep310.i, align 1, !tbaa !49
  %i.jg = getelementptr inbounds nuw i8, ptr %.1170.i, i64 %indvars.iv282.i
  store i8 %i.jf, ptr %i.jg, align 1, !tbaa !49
  %indvars.iv.next283.i = add nuw nsw i64 %indvars.iv282.i, 1 ; 2 uses
  %gep310.i.1 = getelementptr i8, ptr %invariant.gep309.i, i64 %indvars.iv.next283.i
  %i.jh = load i8, ptr %gep310.i.1, align 1, !tbaa !49
  %i.ji = getelementptr inbounds nuw i8, ptr %.1170.i, i64 %indvars.iv.next283.i
  store i8 %i.jh, ptr %i.ji, align 1, !tbaa !49
end_hunk_0
