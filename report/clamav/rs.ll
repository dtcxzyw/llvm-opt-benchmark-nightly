inline.NumInlined: 13
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN7RSCoder6DecodeEPhiPii:bb.a

._crit_edge123.split.loopexit:                    ; preds = %._crit_edge119
  %.pre192.pre = load i32, ptr %i.c, align 4, !tbaa !8
  br label %._crit_edge123.split

._crit_edge123.split:                             ; preds = %._crit_edge123.split.loopexit, %.lr.ph
  %.pre192.a = phi i32 [ %.pre192.pre, %._crit_edge123.split.loopexit ], [ %i.d, %.lr.ph ]
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8192 ; 5 uses
  store i32 0, ptr %i.bv, align 4, !tbaa !26
  %i.bw = sub nsw i32 255, %2
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 2048 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 7168
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8196 ; 2 uses
  %i.ca = zext i32 %i.bw to i64
  br label %.preheader94

.lr.ph118:                                        ; preds = %.lr.ph122, %._crit_edge119
  %indvars.iv162 = phi i64 [ 0, %.lr.ph122 ], [ %indvars.iv.next163, %._crit_edge119 ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv162
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !12
  %i.cd = xor i32 %i.cc, -1
  %i.ce = add i32 %2, %i.cd
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [4 x i8], ptr %0, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !12
  %.fr145 = freeze i32 %i.ch                      ; 2 uses
  %i.ci = icmp eq i32 %.fr145, 0
  %i.cj = sext i32 %.fr145 to i64
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.cj
  br i1 %i.ci, label %._crit_edge119, label %.lr.ph118.split

._crit_edge119:                                   ; preds = %_ZN7RSCoder6gfMultEii.exit84, %.lr.ph118
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %exitcond166.not = icmp eq i64 %indvars.iv.next163, %wide.trip.count165
  br i1 %exitcond166.not, label %._crit_edge123.split.loopexit, label %.lr.ph118, !llvm.loop !27

.lr.ph118.split:                                  ; preds = %.lr.ph118, %_ZN7RSCoder6gfMultEii.exit84
  %indvars.iv159 = phi i64 [ %indvars.iv.next160, %_ZN7RSCoder6gfMultEii.exit84 ], [ %i.bu, %.lr.ph118 ] ; 3 uses
  %i.cl = getelementptr [4 x i8], ptr %i.br, i64 %indvars.iv159 ; 3 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 -4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !12 ; 2 uses
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %_ZN7RSCoder6gfMultEii.exit84, label %bb.f

bb.f:                                             ; preds = %.lr.ph118.split
  %i.cp = load i32, ptr %i.ck, align 4, !tbaa !12
  %i.cq = sext i32 %i.cn to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !12
  %i.ct = add nsw i32 %i.cs, %i.cp
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %0, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !12
  br label %_ZN7RSCoder6gfMultEii.exit84

_ZN7RSCoder6gfMultEii.exit84:                     ; preds = %.lr.ph118.split, %bb.f
  %i.cx = phi i32 [ %i.cw, %bb.f ], [ 0, %.lr.ph118.split ]
  %i.cy = load i32, ptr %i.cl, align 4, !tbaa !12
  %i.cz = xor i32 %i.cy, %i.cx
  store i32 %i.cz, ptr %i.cl, align 4, !tbaa !12
  %indvars.iv.next160 = add nsw i64 %indvars.iv159, -1
  %i.da = icmp sgt i64 %indvars.iv159, 1
  br i1 %i.da, label %.lr.ph118.split, label %._crit_edge119, !llvm.loop !28

.preheader94:                                     ; preds = %._crit_edge123.split, %bb.i
  %i.db = phi i32 [ 0, %._crit_edge123.split ], [ %i.fp, %bb.i ] ; 2 uses
  %i.dc = phi i32 [ %.pre192.a, %._crit_edge123.split ], [ %i.fq, %bb.i ] ; 3 uses
  %indvars.iv175 = phi i64 [ %i.ca, %._crit_edge123.split ], [ %indvars.iv.next176, %bb.i ] ; 4 uses
  %.not78124 = icmp slt i32 %i.dc, 0
  br i1 %.not78124, label %._crit_edge128.thread, label %.lr.ph127.preheader

.lr.ph127.preheader:                              ; preds = %.preheader94
  %i.dd = add nuw i32 %i.dc, 1
  %wide.trip.count170 = zext i32 %i.dd to i64
  br label %.lr.ph127

._crit_edge128:                                   ; preds = %_ZN7RSCoder6gfMultEii.exit86
  %i.de = icmp eq i32 %i.ea, 0
  br i1 %i.de, label %._crit_edge128.thread, label %bb.i

.lr.ph127:                                        ; preds = %.lr.ph127.preheader, %_ZN7RSCoder6gfMultEii.exit86
  %indvars.iv167 = phi i64 [ 0, %.lr.ph127.preheader ], [ %indvars.iv.next168, %_ZN7RSCoder6gfMultEii.exit86 ] ; 3 uses
  %.069125 = phi i32 [ 0, %.lr.ph127.preheader ], [ %i.ea, %_ZN7RSCoder6gfMultEii.exit86 ] ; 2 uses
  %i.df = mul i64 %indvars.iv167, %indvars.iv175
  %i.dg = trunc i64 %i.df to i32
  %i.dh = srem i32 %i.dg, 255
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [4 x i8], ptr %0, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !12 ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv167
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !12 ; 2 uses
  %i.dn = icmp eq i32 %i.dk, 0
  %i.do = icmp eq i32 %i.dm, 0
  %or.cond.i85 = or i1 %i.dn, %i.do
  br i1 %or.cond.i85, label %_ZN7RSCoder6gfMultEii.exit86, label %bb.g

bb.g:                                             ; preds = %.lr.ph127
  %i.dp = sext i32 %i.dk to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !12
  %i.ds = sext i32 %i.dm to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !12
  %i.dv = add nsw i32 %i.du, %i.dr
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !12
  %i.dz = xor i32 %i.dy, %.069125
  br label %_ZN7RSCoder6gfMultEii.exit86

_ZN7RSCoder6gfMultEii.exit86:                     ; preds = %.lr.ph127, %bb.g
  %i.ea = phi i32 [ %i.dz, %bb.g ], [ %.069125, %.lr.ph127 ] ; 2 uses
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 2 uses
  %exitcond171.not = icmp eq i64 %indvars.iv.next168, %wide.trip.count170
  br i1 %exitcond171.not, label %._crit_edge128, label %.lr.ph127, !llvm.loop !29

._crit_edge128.thread:                            ; preds = %.preheader94, %._crit_edge128
  %i.eb = sext i32 %i.db to i64
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.eb
  %i.ed = trunc i64 %indvars.iv175 to i32
  %i.ee = sub i32 255, %i.ed
  store i32 %i.ee, ptr %i.ec, align 4, !tbaa !12
  %i.ef = load i32, ptr %i.bv, align 4, !tbaa !26
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.eg
  store i32 0, ptr %i.eh, align 4, !tbaa !12
  %i.ei = load i32, ptr %i.c, align 4, !tbaa !8   ; 2 uses
  %.not79129 = icmp slt i32 %i.ei, 1
  br i1 %.not79129, label %._crit_edge133, label %.lr.ph132

._crit_edge133:                                   ; preds = %_ZN7RSCoder6gfMultEii.exit88, %._crit_edge128.thread
  %i.ej = phi i32 [ %i.ei, %._crit_edge128.thread ], [ %i.fn, %_ZN7RSCoder6gfMultEii.exit88 ]
  %i.ek = load i32, ptr %i.bv, align 4, !tbaa !26
  %i.el = add nsw i32 %i.ek, 1                    ; 2 uses
  store i32 %i.el, ptr %i.bv, align 4, !tbaa !26
  br label %bb.i

.lr.ph132:                                        ; preds = %._crit_edge128.thread, %_ZN7RSCoder6gfMultEii.exit88
  %indvars.iv172 = phi i64 [ %indvars.iv.next173, %_ZN7RSCoder6gfMultEii.exit88 ], [ 1, %._crit_edge128.thread ] ; 3 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv172
  %i.en = load i32, ptr %i.em, align 4, !tbaa !12 ; 2 uses
  %i.eo = add nuw nsw i64 %indvars.iv172, 4294967295
  %i.ep = mul i64 %i.eo, %indvars.iv175
  %i.eq = trunc i64 %i.ep to i32
  %i.er = srem i32 %i.eq, 255
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [4 x i8], ptr %0, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !12 ; 2 uses
  %i.ev = icmp eq i32 %i.en, 0
  %i.ew = icmp eq i32 %i.eu, 0
  %or.cond.i87 = or i1 %i.ev, %i.ew
  br i1 %or.cond.i87, label %_ZN7RSCoder6gfMultEii.exit88, label %bb.h

bb.h:                                             ; preds = %.lr.ph132
  %i.ex = sext i32 %i.en to i64
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.ex
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !12
  %i.fa = sext i32 %i.eu to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !12
  %i.fd = add nsw i32 %i.fc, %i.ez
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [4 x i8], ptr %0, i64 %i.fe
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !12
  br label %_ZN7RSCoder6gfMultEii.exit88

_ZN7RSCoder6gfMultEii.exit88:                     ; preds = %.lr.ph132, %bb.h
  %i.fh = phi i32 [ %i.fg, %bb.h ], [ 0, %.lr.ph132 ]
  %i.fi = load i32, ptr %i.bv, align 4, !tbaa !26
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.fj ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !12
  %i.fm = xor i32 %i.fl, %i.fh
  store i32 %i.fm, ptr %i.fk, align 4, !tbaa !12
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 2 ; 2 uses
  %i.fn = load i32, ptr %i.c, align 4, !tbaa !8   ; 2 uses
  %i.fo = sext i32 %i.fn to i64
  %.not79 = icmp sgt i64 %indvars.iv.next173, %i.fo
  br i1 %.not79, label %._crit_edge133, label %.lr.ph132, !llvm.loop !30

bb.i:                                             ; preds = %._crit_edge133, %._crit_edge128
  %i.fp = phi i32 [ %i.el, %._crit_edge133 ], [ %i.db, %._crit_edge128 ]
  %i.fq = phi i32 [ %i.ej, %._crit_edge133 ], [ %i.dc, %._crit_edge128 ] ; 2 uses
  %indvars.iv.next176 = add i64 %indvars.iv175, 1 ; 2 uses
  %i.fr = and i64 %indvars.iv.next176, 4294967295
  %exitcond178.not = icmp eq i64 %i.fr, 256
  br i1 %exitcond178.not, label %.loopexit95, label %.preheader94, !llvm.loop !31

.loopexit95:                                      ; preds = %bb.i, %bb.e
  %i.fs = phi i32 [ %i.d, %bb.e ], [ %i.fq, %bb.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 9224
  %i.fu = icmp sgt i32 %i.fs, 0
  br i1 %i.fu, label %.lr.ph.i.preheader, label %_ZN7RSCoder6pnMultEPiS0_S0_.exit

.lr.ph.i.preheader:                               ; preds = %.loopexit95
  %i.fv = zext nneg i32 %i.fs to i64              ; 2 uses
  %i.fw = shl nuw nsw i64 %i.fv, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 0, i64 %i.fw, i1 false), !tbaa !12
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 2048 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.i, %.lr.ph.i.preheader
  %indvars.iv179 = phi i32 [ %indvars.iv.next180, %.loopexit.i ], [ %i.fs, %.lr.ph.i.preheader ] ; 2 uses
  %indvars.iv31.i = phi i64 [ %indvars.iv.next32.i, %.loopexit.i ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %5 = tail call i32 @llvm.umax.i32(i32 %indvars.iv179, i32 1)
  %umax = zext i32 %5 to i64
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv31.i
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !12 ; 2 uses
  %.not.i.not = icmp eq i32 %i.fz, 0
  br i1 %.not.i.not, label %.loopexit.i, label %.lr.ph23.preheader.i

.lr.ph23.preheader.i:                             ; preds = %bb.j
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv31.i
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %i.ga
  br label %.lr.ph23.i

.lr.ph23.i:                                       ; preds = %_ZN7RSCoder6gfMultEii.exit.i, %.lr.ph23.preheader.i
  %indvars.iv28.i = phi i64 [ 0, %.lr.ph23.preheader.i ], [ %indvars.iv.next29.i, %_ZN7RSCoder6gfMultEii.exit.i ] ; 3 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv28.i
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !12 ; 2 uses
  %i.ge = icmp eq i32 %i.gd, 0
  br i1 %i.ge, label %_ZN7RSCoder6gfMultEii.exit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph23.i
  %i.gf = load i32, ptr %i.gb, align 4, !tbaa !12
  %i.gg = sext i32 %i.gd to i64
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %i.gg
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !12
  %i.gj = add nsw i32 %i.gi, %i.gf
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds [4 x i8], ptr %0, i64 %i.gk
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !12
  br label %_ZN7RSCoder6gfMultEii.exit.i

_ZN7RSCoder6gfMultEii.exit.i:                     ; preds = %bb.k, %.lr.ph23.i
  %i.gn = phi i32 [ %i.gm, %bb.k ], [ 0, %.lr.ph23.i ]
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv28.i ; 2 uses
  %i.go = load i32, ptr %gep.i, align 4, !tbaa !12
  %i.gp = xor i32 %i.go, %i.gn
  store i32 %i.gp, ptr %gep.i, align 4, !tbaa !12
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i, 1 ; 2 uses
  %exitcond181.not = icmp eq i64 %indvars.iv.next29.i, %umax
  br i1 %exitcond181.not, label %.loopexit.i, label %.lr.ph23.i, !llvm.loop !15

.loopexit.i:                                      ; preds = %_ZN7RSCoder6gfMultEii.exit.i, %bb.j
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1 ; 2 uses
  %indvars.iv.next180 = add i32 %indvars.iv179, -1
  %exitcond183.not = icmp eq i64 %indvars.iv.next32.i, %i.fv
  br i1 %exitcond183.not, label %_ZN7RSCoder6pnMultEPiS0_S0_.exit, label %bb.j, !llvm.loop !16

_ZN7RSCoder6pnMultEPiS0_S0_.exit:                 ; preds = %.loopexit.i, %.loopexit95
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 8192 ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !26 ; 4 uses
  %.not80 = icmp sle i32 %i.gr, %i.fs
  %i.gs = icmp sgt i32 %i.gr, 0
  %or.cond = and i1 %.not80, %i.gs
  br i1 %or.cond, label %.lr.ph143, label %.loopexit

.lr.ph143:                                        ; preds = %_ZN7RSCoder6pnMultEPiS0_S0_.exit
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 7168
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 2048 ; 5 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 8196
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph143, %bb.p
  %i.gw = phi i32 [ %i.gr, %.lr.ph143 ], [ %i.jb, %bb.p ]
  %indvars.iv189 = phi i64 [ 0, %.lr.ph143 ], [ %indvars.iv.next190, %bb.p ] ; 3 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %indvars.iv189
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !12 ; 2 uses
  %i.gz = sub nsw i32 255, %i.gy
  %i.ha = load i32, ptr %i.c, align 4, !tbaa !8   ; 2 uses
  %i.hb = icmp sgt i32 %i.ha, 0
  br i1 %i.hb, label %.lr.ph139.preheader, label %._crit_edge140

.lr.ph139.preheader:                              ; preds = %bb.l
  %wide.trip.count187 = zext nneg i32 %i.ha to i64
  br label %.lr.ph139

._crit_edge140:                                   ; preds = %_ZN7RSCoder6gfMultEii.exit91, %bb.l
  %.063.lcssa = phi i32 [ 0, %bb.l ], [ %i.hz, %_ZN7RSCoder6gfMultEii.exit91 ] ; 2 uses
  %i.hc = xor i32 %i.gy, -1
  %i.hd = add i32 %2, %i.hc                       ; 2 uses
  %or.cond82 = icmp ult i32 %i.hd, %2
  br i1 %or.cond82, label %bb.n, label %bb.p

.lr.ph139:                                        ; preds = %.lr.ph139.preheader, %_ZN7RSCoder6gfMultEii.exit91
  %indvars.iv184 = phi i64 [ 0, %.lr.ph139.preheader ], [ %indvars.iv.next185, %_ZN7RSCoder6gfMultEii.exit91 ] ; 3 uses
  %.063136 = phi i32 [ 0, %.lr.ph139.preheader ], [ %i.hz, %_ZN7RSCoder6gfMultEii.exit91 ] ; 2 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv184
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !12 ; 2 uses
  %i.hg = trunc nuw nsw i64 %indvars.iv184 to i32
  %i.hh = mul nsw i32 %i.gz, %i.hg
  %i.hi = srem i32 %i.hh, 255
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr inbounds [4 x i8], ptr %0, i64 %i.hj
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !12 ; 2 uses
  %i.hm = icmp eq i32 %i.hf, 0
  %i.hn = icmp eq i32 %i.hl, 0
  %or.cond.i90 = or i1 %i.hm, %i.hn
  br i1 %or.cond.i90, label %_ZN7RSCoder6gfMultEii.exit91, label %bb.m

bb.m:                                             ; preds = %.lr.ph139
  %i.ho = sext i32 %i.hf to i64
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.gu, i64 %i.ho
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !12
  %i.hr = sext i32 %i.hl to i64
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.gu, i64 %i.hr
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !12
  %i.hu = add nsw i32 %i.ht, %i.hq
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [4 x i8], ptr %0, i64 %i.hv
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !12
  %i.hy = xor i32 %i.hx, %.063136
  br label %_ZN7RSCoder6gfMultEii.exit91

_ZN7RSCoder6gfMultEii.exit91:                     ; preds = %.lr.ph139, %bb.m
  %i.hz = phi i32 [ %i.hy, %bb.m ], [ %.063136, %.lr.ph139 ] ; 2 uses
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %exitcond188.not = icmp eq i64 %indvars.iv.next185, %wide.trip.count187
  br i1 %exitcond188.not, label %._crit_edge140, label %.lr.ph139, !llvm.loop !32

bb.n:                                             ; preds = %._crit_edge140
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv189
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !12
  %i.ic = sext i32 %i.ib to i64
  %i.id = getelementptr inbounds [4 x i8], ptr %i.gu, i64 %i.ic
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !12
  %i.if = sub nsw i32 255, %i.ie
  %i.ig = sext i32 %i.if to i64
  %i.ih = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ig
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !12 ; 2 uses
  %i.ij = icmp eq i32 %.063.lcssa, 0
  %i.ik = icmp eq i32 %i.ii, 0
  %or.cond.i92 = or i1 %i.ij, %i.ik
  br i1 %or.cond.i92, label %_ZN7RSCoder6gfMultEii.exit93, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.il = sext i32 %.063.lcssa to i64
  %i.im = getelementptr inbounds [4 x i8], ptr %i.gu, i64 %i.il
  %i.in = load i32, ptr %i.im, align 4, !tbaa !12
  %i.io = sext i32 %i.ii to i64
  %i.ip = getelementptr inbounds [4 x i8], ptr %i.gu, i64 %i.io
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !12
  %i.ir = add nsw i32 %i.iq, %i.in
  %i.is = sext i32 %i.ir to i64
  %i.it = getelementptr inbounds [4 x i8], ptr %0, i64 %i.is
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !12
  %i.iv = trunc i32 %i.iu to i8
  br label %_ZN7RSCoder6gfMultEii.exit93

_ZN7RSCoder6gfMultEii.exit93:                     ; preds = %bb.n, %bb.o
  %i.iw = phi i8 [ %i.iv, %bb.o ], [ 0, %bb.n ]
  %i.ix = zext nneg i32 %i.hd to i64
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 %i.ix ; 2 uses
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !18
  %i.ja = xor i8 %i.iz, %i.iw
  store i8 %i.ja, ptr %i.iy, align 1, !tbaa !18
  %.pre = load i32, ptr %i.gq, align 4, !tbaa !26
  br label %bb.p

bb.p:                                             ; preds = %_ZN7RSCoder6gfMultEii.exit93, %._crit_edge140
  %i.jb = phi i32 [ %.pre, %_ZN7RSCoder6gfMultEii.exit93 ], [ %i.gw, %._crit_edge140 ] ; 3 uses
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %i.jc = sext i32 %i.jb to i64
  %i.jd = icmp slt i64 %indvars.iv.next190, %i.jc
  br i1 %i.jd, label %bb.l, label %.loopexit.loopexit, !llvm.loop !33

.loopexit.loopexit:                               ; preds = %bb.p
  %.pre193 = load i32, ptr %i.c, align 4, !tbaa !8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZN7RSCoder6pnMultEPiS0_S0_.exit
  %i.je = phi i32 [ %i.fs, %_ZN7RSCoder6pnMultEPiS0_S0_.exit ], [ %.pre193, %.loopexit.loopexit ]
  %i.jf = phi i32 [ %i.gr, %_ZN7RSCoder6pnMultEPiS0_S0_.exit ], [ %i.jb, %.loopexit.loopexit ]
  %i.jg = icmp sle i32 %i.jf, %i.je
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  br label %._crit_edge105.thread

._crit_edge105.thread:                            ; preds = %.preheader96.lr.ph, %bb.a, %._crit_edge105, %.loopexit
  %.0 = phi i1 [ %i.jg, %.loopexit ], [ true, %._crit_edge105 ], [ true, %bb.a ], [ true, %.preheader96.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !5, i64 9220}
!9 = !{!"_ZTS7RSCoder", !6, i64 0, !6, i64 2048, !6, i64 3072, !6, i64 7168, !5, i64 8192, !6, i64 8196, !5, i64 9220, !6, i64 9224, !10, i64 11272}
!10 = !{!"bool", !6, i64 0}
!11 = !{!9, !10, i64 11272}
!12 = !{!5, !5, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
!18 = !{!6, !6, i64 0}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
!24 = !{i8 0, i8 2}
!25 = !{}
!26 = !{!9, !5, i64 8192}
!27 = distinct !{!27, !14}
!28 = distinct !{!28, !14}
!29 = distinct !{!29, !14}
!30 = distinct !{!30, !14}
!31 = distinct !{!31, !14}
!32 = distinct !{!32, !14}
!33 = distinct !{!33, !14}
end_hunk_0
