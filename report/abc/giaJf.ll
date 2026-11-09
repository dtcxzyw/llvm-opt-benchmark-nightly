Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaJf?download=true
inline.NumInlined: 687
inline.NumDeleted: 148
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 31
begin_hunk_0_@Jf_ObjComputeCuts:bb.a
  %niter1032.next.3 = add i64 %niter1032, 4       ; 2 uses
  %niter1032.ncmp.3 = icmp eq i64 %niter1032.next.3, %unroll_iter1031
  br i1 %niter1032.ncmp.3, label %Jf_CutGetSign.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !198

Jf_CutGetSign.exit.loopexit.unr-lcssa:            ; preds = %.lr.ph.i
  %lcmp.mod1028.not = icmp eq i64 %xtraiter1026, 0
  br i1 %lcmp.mod1028.not, label %Jf_CutGetSign.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %Jf_CutGetSign.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %Jf_CutGetSign.exit.loopexit.unr-lcssa ]
  %.068.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.cq, %Jf_CutGetSign.exit.loopexit.unr-lcssa ]
  %lcmp.mod1030 = icmp ne i64 %xtraiter1026, 0
  call void @llvm.assume(i1 %lcmp.mod1030)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.068.i.epil = phi i64 [ %.068.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.cx, %.lr.ph.i.epil ]
  %epil.iter1027 = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter1027.next, %.lr.ph.i.epil ]
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.0185517, i64 %indvars.iv.i.epil
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !24
  %i.ct = lshr i32 %i.cs, 1
  %i.cu = and i32 %i.ct, 63
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = shl nuw i64 1, %i.cv
  %i.cx = or i64 %i.cw, %.068.i.epil              ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter1027.next = add i64 %epil.iter1027, 1 ; 2 uses
  %epil.iter1027.cmp.not = icmp eq i64 %epil.iter1027.next, %xtraiter1026
  br i1 %epil.iter1027.cmp.not, label %Jf_CutGetSign.exit, label %.lr.ph.i.epil, !llvm.loop !199

Jf_CutGetSign.exit:                               ; preds = %Jf_CutGetSign.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %.lr.ph520
  %.06.lcssa.i = phi i64 [ 0, %.lr.ph520 ], [ %i.cq, %Jf_CutGetSign.exit.loopexit.unr-lcssa ], [ %i.cx, %.lr.ph.i.epil ]
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv617
  store i64 %.06.lcssa.i, ptr %i.cy, align 8, !tbaa !17
  %indvars.iv.next618 = add nuw nsw i64 %indvars.iv617, 1 ; 2 uses
  %i.cz = zext nneg i32 %i.bh to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.0185517, i64 %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %exitcond621.not = icmp eq i64 %indvars.iv.next618, %wide.trip.count620
  br i1 %exitcond621.not, label %._crit_edge521, label %.lr.ph520, !llvm.loop !200

._crit_edge521:                                   ; preds = %Jf_CutGetSign.exit, %._crit_edge
  %i.dc = lshr i64 %.val217, 32
  %i.dd = and i64 %i.dc, 536870911
  %i.de = sub nsw i64 %i.n, %i.dd
  %sext441 = shl i64 %i.de, 32
  %i.df = ashr exact i64 %sext441, 30
  %i.dg = getelementptr inbounds i8, ptr %.val.i, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !24 ; 2 uses
  %i.di = ashr i32 %i.dh, %.val.i.i
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.dj
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !81
  %i.dm = and i32 %i.dh, %.val4.i.i
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.dn ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4 ; 2 uses
  %i.dq = load i32, ptr %i.do, align 4, !tbaa !24 ; 5 uses
  %i.dr = icmp sgt i32 %i.dq, 0
  br i1 %i.dr, label %.lr.ph526.preheader, label %._crit_edge527.thread

.lr.ph526.preheader:                              ; preds = %._crit_edge521
  %wide.trip.count625 = zext nneg i32 %i.dq to i64
  br label %.lr.ph526

.lr.ph526:                                        ; preds = %.lr.ph526.preheader, %Jf_CutGetSign.exit248
  %indvars.iv622 = phi i64 [ 0, %.lr.ph526.preheader ], [ %indvars.iv.next623, %Jf_CutGetSign.exit248 ] ; 2 uses
  %.0183523 = phi ptr [ %i.dp, %.lr.ph526.preheader ], [ %i.fm, %Jf_CutGetSign.exit248 ] ; 7 uses
  %.val.i238 = load i32, ptr %.0183523, align 4, !tbaa !24 ; 2 uses
  %i.ds = and i32 %.val.i238, 15                  ; 2 uses
  %.not7.i239 = icmp eq i32 %i.ds, 0
  br i1 %.not7.i239, label %Jf_CutGetSign.exit248, label %.lr.ph.preheader.i240

.lr.ph.preheader.i240:                            ; preds = %.lr.ph526
  %i.dt = and i32 %.val.i238, 15                  ; 2 uses
  %i.du = zext nneg i32 %i.dt to i64              ; 2 uses
  %xtraiter1033 = and i64 %i.du, 3                ; 3 uses
  %i.dv = add nsw i32 %i.dt, -1
  %i.dw = icmp ult i32 %i.dv, 3
  br i1 %i.dw, label %.lr.ph.i242.epil.preheader, label %.lr.ph.preheader.i240.new

.lr.ph.preheader.i240.new:                        ; preds = %.lr.ph.preheader.i240
  %unroll_iter1038 = and i64 %i.du, 12
  br label %.lr.ph.i242

.lr.ph.i242:                                      ; preds = %.lr.ph.i242, %.lr.ph.preheader.i240.new
  %indvars.iv.i243 = phi i64 [ 1, %.lr.ph.preheader.i240.new ], [ %indvars.iv.next.i245.3, %.lr.ph.i242 ] ; 5 uses
  %.068.i244 = phi i64 [ 0, %.lr.ph.preheader.i240.new ], [ %i.fb, %.lr.ph.i242 ]
  %niter1039 = phi i64 [ 0, %.lr.ph.preheader.i240.new ], [ %niter1039.next.3, %.lr.ph.i242 ]
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %.0183523, i64 %indvars.iv.i243
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !24
  %i.dz = lshr i32 %i.dy, 1
  %i.ea = and i32 %i.dz, 63
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = shl nuw i64 1, %i.eb
  %i.ed = or i64 %i.ec, %.068.i244
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %.0183523, i64 %indvars.iv.i243
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !24
  %i.eh = lshr i32 %i.eg, 1
  %i.ei = and i32 %i.eh, 63
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = shl nuw i64 1, %i.ej
  %i.el = or i64 %i.ek, %i.ed
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %.0183523, i64 %indvars.iv.i243
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !24
  %i.ep = lshr i32 %i.eo, 1
  %i.eq = and i32 %i.ep, 63
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = shl nuw i64 1, %i.er
  %i.et = or i64 %i.es, %i.el
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.0183523, i64 %indvars.iv.i243
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 12
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !24
  %i.ex = lshr i32 %i.ew, 1
  %i.ey = and i32 %i.ex, 63
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = shl nuw i64 1, %i.ez
  %i.fb = or i64 %i.fa, %i.et                     ; 3 uses
  %indvars.iv.next.i245.3 = add nuw nsw i64 %indvars.iv.i243, 4 ; 2 uses
  %niter1039.next.3 = add i64 %niter1039, 4       ; 2 uses
  %niter1039.ncmp.3 = icmp eq i64 %niter1039.next.3, %unroll_iter1038
  br i1 %niter1039.ncmp.3, label %Jf_CutGetSign.exit248.loopexit.unr-lcssa, label %.lr.ph.i242, !llvm.loop !198

Jf_CutGetSign.exit248.loopexit.unr-lcssa:         ; preds = %.lr.ph.i242
  %lcmp.mod1035.not = icmp eq i64 %xtraiter1033, 0
  br i1 %lcmp.mod1035.not, label %Jf_CutGetSign.exit248, label %.lr.ph.i242.epil.preheader

.lr.ph.i242.epil.preheader:                       ; preds = %Jf_CutGetSign.exit248.loopexit.unr-lcssa, %.lr.ph.preheader.i240
  %indvars.iv.i243.epil.init = phi i64 [ 1, %.lr.ph.preheader.i240 ], [ %indvars.iv.next.i245.3, %Jf_CutGetSign.exit248.loopexit.unr-lcssa ]
  %.068.i244.epil.init = phi i64 [ 0, %.lr.ph.preheader.i240 ], [ %i.fb, %Jf_CutGetSign.exit248.loopexit.unr-lcssa ]
  %lcmp.mod1037 = icmp ne i64 %xtraiter1033, 0
  call void @llvm.assume(i1 %lcmp.mod1037)
  br label %.lr.ph.i242.epil

.lr.ph.i242.epil:                                 ; preds = %.lr.ph.i242.epil, %.lr.ph.i242.epil.preheader
  %indvars.iv.i243.epil = phi i64 [ %indvars.iv.i243.epil.init, %.lr.ph.i242.epil.preheader ], [ %indvars.iv.next.i245.epil, %.lr.ph.i242.epil ] ; 2 uses
  %.068.i244.epil = phi i64 [ %.068.i244.epil.init, %.lr.ph.i242.epil.preheader ], [ %i.fi, %.lr.ph.i242.epil ]
  %epil.iter1034 = phi i64 [ 0, %.lr.ph.i242.epil.preheader ], [ %epil.iter1034.next, %.lr.ph.i242.epil ]
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.0183523, i64 %indvars.iv.i243.epil
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !24
  %i.fe = lshr i32 %i.fd, 1
  %i.ff = and i32 %i.fe, 63
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = shl nuw i64 1, %i.fg
  %i.fi = or i64 %i.fh, %.068.i244.epil           ; 2 uses
  %indvars.iv.next.i245.epil = add nuw nsw i64 %indvars.iv.i243.epil, 1
  %epil.iter1034.next = add i64 %epil.iter1034, 1 ; 2 uses
  %epil.iter1034.cmp.not = icmp eq i64 %epil.iter1034.next, %xtraiter1033
  br i1 %epil.iter1034.cmp.not, label %Jf_CutGetSign.exit248, label %.lr.ph.i242.epil, !llvm.loop !201

Jf_CutGetSign.exit248:                            ; preds = %Jf_CutGetSign.exit248.loopexit.unr-lcssa, %.lr.ph.i242.epil, %.lr.ph526
  %.06.lcssa.i247 = phi i64 [ 0, %.lr.ph526 ], [ %i.fb, %Jf_CutGetSign.exit248.loopexit.unr-lcssa ], [ %i.fi, %.lr.ph.i242.epil ]
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv622
  store i64 %.06.lcssa.i247, ptr %i.fj, align 8, !tbaa !17
  %indvars.iv.next623 = add nuw nsw i64 %indvars.iv622, 1 ; 2 uses
  %i.fk = zext nneg i32 %i.ds to i64
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %.0183523, i64 %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  %exitcond626.not = icmp eq i64 %indvars.iv.next623, %wide.trip.count625
  br i1 %exitcond626.not, label %._crit_edge527, label %.lr.ph526, !llvm.loop !202

._crit_edge527:                                   ; preds = %Jf_CutGetSign.exit248
  %i.fn = mul nsw i32 %i.dq, %i.bf
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !17
  %i.fr = add i64 %i.fq, %i.fo
  store i64 %i.fr, ptr %i.fp, align 8, !tbaa !17
  br i1 %i.bg, label %.preheader.lr.ph, label %._crit_edge542

._crit_edge527.thread:                            ; preds = %._crit_edge521
  %i.fs = mul nsw i32 %i.dq, %i.bf
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !17
  %i.fw = add i64 %i.fv, %i.ft
  store i64 %i.fw, ptr %i.fu, align 8, !tbaa !17
  br label %._crit_edge542

.preheader.lr.ph:                                 ; preds = %._crit_edge527
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fz = getelementptr i8, ptr %0, i64 24
  %i.ga = icmp eq i32 %i.f, 0                     ; 4 uses
  %wide.trip.count.i279 = zext nneg i32 %i.f to i64 ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.gc = getelementptr i8, ptr %0, i64 64
  %i.gd = getelementptr i8, ptr %0, i64 96
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge537
  %i.gf = phi i32 [ %i.ahf, %._crit_edge537 ], [ %i.bf, %.preheader.lr.ph ]
  %i.gg = phi i32 [ %i.ahg, %._crit_edge537 ], [ %i.dq, %.preheader.lr.ph ] ; 2 uses
  %indvars.iv642 = phi i64 [ %indvars.iv.next643, %._crit_edge537 ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.0541 = phi i32 [ %.1.lcssa, %._crit_edge537 ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.1186539 = phi ptr [ %i.ahk, %._crit_edge537 ], [ %i.be, %.preheader.lr.ph ] ; 13 uses
  %.1186539904 = ptrtoaddr ptr %.1186539 to i64   ; 2 uses
  %i.gh = icmp sgt i32 %i.gg, 0
  br i1 %i.gh, label %.lr.ph536, label %._crit_edge537

.lr.ph536:                                        ; preds = %.preheader
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv642
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !17
  %i.gk = getelementptr inbounds nuw i8, ptr %.1186539, i64 4 ; 18 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph536, %Jf_ObjAddCutToStore.exit
  %indvars.iv639 = phi i64 [ 0, %.lr.ph536 ], [ %indvars.iv.next640, %Jf_ObjAddCutToStore.exit ] ; 2 uses
  %.1532 = phi i32 [ %.0541, %.lr.ph536 ], [ %.2, %Jf_ObjAddCutToStore.exit ] ; 38 uses
  %.1184529 = phi ptr [ %i.dp, %.lr.ph536 ], [ %i.ahb, %Jf_ObjAddCutToStore.exit ] ; 11 uses
  %.1184529898 = ptrtoaddr ptr %.1184529 to i64   ; 2 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv639
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !17
  %i.gn = or i64 %i.gm, %i.gj                     ; 4 uses
  %i.go = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gn)
  %i.gp = trunc nuw nsw i64 %i.go to i32
  %i.gq = icmp slt i32 %i.f, %i.gp
  br i1 %i.gq, label %Jf_ObjAddCutToStore.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.gr = load i64, ptr %i.fx, align 8, !tbaa !17
  %i.gs = add i64 %i.gr, 1
  store i64 %i.gs, ptr %i.fx, align 8, !tbaa !17
  %i.gt = load ptr, ptr %i.d, align 8, !tbaa !70  ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 88
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !87
  %.not202 = icmp eq i32 %i.gv, 0
  br i1 %.not202, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.gw = sext i32 %.1532 to i64
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.gw
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !112 ; 5 uses
  %i.gz = ptrtoaddr ptr %i.gy to i64              ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %.val104.i = load i32, ptr %.1186539, align 4, !tbaa !24
  %i.hb = and i32 %.val104.i, 15                  ; 7 uses
  %.val.i249 = load i32, ptr %.1184529, align 4, !tbaa !24
  %i.hc = and i32 %.val.i249, 15                  ; 7 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.1184529, i64 4 ; 8 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.gy, i64 28 ; 16 uses
  %i.hf = icmp eq i32 %i.hb, %i.f
  %i.hg = icmp eq i32 %i.hc, %i.f
  %or.cond.i = select i1 %i.hf, i1 %i.hg, i1 false
  br i1 %or.cond.i, label %.preheader.i, label %bb.f

.preheader.i:                                     ; preds = %bb.d
  br i1 %i.ga, label %.loopexit458, label %.lr.ph123.i

.lr.ph123.i:                                      ; preds = %.preheader.i, %bb.e
  %indvars.iv150.i = phi i64 [ %indvars.iv.next151.i, %bb.e ], [ 0, %.preheader.i ] ; 4 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv150.i
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !24 ; 2 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv150.i
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !24
  %.not103.i = icmp eq i32 %i.hi, %i.hk
  br i1 %.not103.i, label %bb.e, label %Jf_ObjAddCutToStore.exit

bb.e:                                             ; preds = %.lr.ph123.i
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv150.i
  store i32 %i.hi, ptr %i.hl, align 4, !tbaa !24
  %indvars.iv.next151.i = add nuw nsw i64 %indvars.iv150.i, 1 ; 2 uses
  %exitcond155.not.i = icmp eq i64 %indvars.iv.next151.i, %wide.trip.count.i279
  br i1 %exitcond155.not.i, label %.loopexit458, label %.lr.ph123.i, !llvm.loop !203

bb.f:                                             ; preds = %bb.d
  %i.hm = icmp eq i32 %i.hb, 0
  br i1 %i.hm, label %.loopexit109.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.hn = icmp eq i32 %i.hc, 0
  br i1 %i.hn, label %.loopexit110.i, label %.preheader107.i

.preheader107.i:                                  ; preds = %bb.g
  br i1 %i.ga, label %Jf_ObjAddCutToStore.exit, label %.lr.ph.i252

.lr.ph.i252:                                      ; preds = %.preheader107.i, %bb.m
  %indvars.iv.i253 = phi i64 [ %indvars.iv.next.pre-phi.i, %bb.m ], [ 0, %.preheader107.i ] ; 8 uses
  %.079112.i = phi i32 [ %.180.i, %bb.m ], [ 0, %.preheader107.i ] ; 5 uses
  %.184111.i = phi i32 [ %.285.i, %bb.m ], [ 0, %.preheader107.i ] ; 5 uses
  %i.ho = sext i32 %.184111.i to i64
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.gk, i64 %i.ho
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !24 ; 4 uses
  %i.hr = sext i32 %.079112.i to i64
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.hd, i64 %i.hr
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !24 ; 3 uses
  %i.hu = icmp slt i32 %i.hq, %i.ht
  br i1 %i.hu, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i252
  %i.hv = add nsw i32 %.184111.i, 1               ; 2 uses
  %i.hw = add nuw nsw i64 %indvars.iv.i253, 1     ; 2 uses
  %i.hx = getelementptr inbounds [4 x i8], ptr %i.he, i64 %indvars.iv.i253
  store i32 %i.hq, ptr %i.hx, align 4, !tbaa !24
  %.not102.i = icmp slt i32 %i.hv, %i.hb
  br i1 %.not102.i, label %bb.m, label %.loopexit109.loopexit.split.loop.exit.i

bb.i:                                             ; preds = %.lr.ph.i252
  %i.hy = icmp sgt i32 %i.hq, %i.ht
  br i1 %i.hy, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.hz = add nsw i32 %.079112.i, 1               ; 2 uses
  %i.ia = add nuw nsw i64 %indvars.iv.i253, 1     ; 2 uses
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.he, i64 %indvars.iv.i253
  store i32 %i.ht, ptr %i.ib, align 4, !tbaa !24
  %.not101.i = icmp slt i32 %i.hz, %i.hc
  br i1 %.not101.i, label %bb.m, label %.loopexit110.loopexit.split.loop.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ic = add nsw i32 %.184111.i, 1               ; 3 uses
  %i.id = getelementptr inbounds [4 x i8], ptr %i.he, i64 %indvars.iv.i253
  store i32 %i.hq, ptr %i.id, align 4, !tbaa !24
  %i.ie = add nsw i32 %.079112.i, 1               ; 3 uses
  %.not.i = icmp slt i32 %i.ic, %i.hb
  br i1 %.not.i, label %bb.l, label %.loopexit109.loopexit.split.loop.exit171.i

bb.l:                                             ; preds = %bb.k
  %.not100.i = icmp slt i32 %i.ie, %i.hc
  br i1 %.not100.i, label %._crit_edge156.i, label %.loopexit110.loopexit.split.loop.exit168.i

._crit_edge156.i:                                 ; preds = %bb.l
  %.pre.i = add nuw nsw i64 %indvars.iv.i253, 1
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge156.i, %bb.j, %bb.h
  %indvars.iv.next.pre-phi.i = phi i64 [ %.pre.i, %._crit_edge156.i ], [ %i.ia, %bb.j ], [ %i.hw, %bb.h ] ; 2 uses
  %.285.i = phi i32 [ %i.ic, %._crit_edge156.i ], [ %.184111.i, %bb.j ], [ %i.hv, %bb.h ]
  %.180.i = phi i32 [ %i.ie, %._crit_edge156.i ], [ %i.hz, %bb.j ], [ %.079112.i, %bb.h ]
  %exitcond.i = icmp eq i64 %indvars.iv.next.pre-phi.i, %wide.trip.count.i279
  br i1 %exitcond.i, label %Jf_ObjAddCutToStore.exit, label %.lr.ph.i252

.loopexit110.loopexit.split.loop.exit.i:          ; preds = %bb.j
  %i.if = trunc nuw nsw i64 %i.ia to i32
  br label %.loopexit110.i

.loopexit110.loopexit.split.loop.exit168.i:       ; preds = %bb.l
  %indvars.le.i = trunc i64 %indvars.iv.i253 to i32
  %i.ig = add nuw nsw i32 %indvars.le.i, 1
  br label %.loopexit110.i

.loopexit110.i:                                   ; preds = %.loopexit110.loopexit.split.loop.exit168.i, %.loopexit110.loopexit.split.loop.exit.i, %bb.g
  %.386.i = phi i32 [ 0, %bb.g ], [ %.184111.i, %.loopexit110.loopexit.split.loop.exit.i ], [ %i.ic, %.loopexit110.loopexit.split.loop.exit168.i ] ; 3 uses
  %.2.i = phi i32 [ 0, %bb.g ], [ %i.if, %.loopexit110.loopexit.split.loop.exit.i ], [ %i.ig, %.loopexit110.loopexit.split.loop.exit168.i ] ; 3 uses
  %i.ih = add nsw i32 %.2.i, %i.hb
  %i.ii = add nsw i32 %.386.i, %i.f
  %i.ij = icmp sgt i32 %i.ih, %i.ii
  br i1 %i.ij, label %Jf_ObjAddCutToStore.exit, label %.preheader106.i

.preheader106.i:                                  ; preds = %.loopexit110.i
  %i.ik = icmp slt i32 %.386.i, %i.hb
  br i1 %i.ik, label %.lr.ph116.preheader.i, label %.loopexit458

.lr.ph116.preheader.i:                            ; preds = %.preheader106.i
  %i.il = zext i32 %.2.i to i64                   ; 5 uses
  %i.im = sext i32 %.386.i to i64                 ; 6 uses
  %wide.trip.count137.i = zext nneg i32 %i.hb to i64 ; 4 uses
  %i.in = sub nsw i64 %wide.trip.count137.i, %i.im ; 3 uses
  %min.iters.check906 = icmp ult i64 %i.in, 8
  br i1 %min.iters.check906, label %.lr.ph116.i.preheader, label %vector.memcheck907

vector.memcheck907:                               ; preds = %.lr.ph116.preheader.i
  %i.io = shl nuw nsw i64 %i.il, 2
  %i.ip = shl nsw i64 %i.im, 2
  %4 = add i64 %i.io, %i.gz
  %i.iq = add i64 %i.ip, %.1186539904
  %i.ir = sub i64 %4, %i.iq
  %i.is = add i64 %i.ir, 23
  %diff.check908 = icmp ult i64 %i.is, 31
  br i1 %diff.check908, label %.lr.ph116.i.preheader, label %vector.ph909

vector.ph909:                                     ; preds = %vector.memcheck907
  %n.vec910 = and i64 %i.in, -8                   ; 4 uses
  %i.it = add nsw i64 %n.vec910, %i.im
  %i.iu = add nsw i64 %n.vec910, %i.il            ; 2 uses
  %invariant.gep1140 = getelementptr [4 x i8], ptr %i.gk, i64 %i.im
  %invariant.gep1142 = getelementptr [4 x i8], ptr %i.he, i64 %i.il
  br label %vector.body911

vector.body911:                                   ; preds = %vector.body911, %vector.ph909
  %index912 = phi i64 [ 0, %vector.ph909 ], [ %index.next915, %vector.body911 ] ; 3 uses
  %gep1141 = getelementptr [4 x i8], ptr %invariant.gep1140, i64 %index912 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %gep1141, i64 16
  %wide.load913 = load <4 x i32>, ptr %gep1141, align 4, !tbaa !24
  %wide.load914 = load <4 x i32>, ptr %i.iv, align 4, !tbaa !24
  %gep1143 = getelementptr [4 x i8], ptr %invariant.gep1142, i64 %index912 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %gep1143, i64 16
  store <4 x i32> %wide.load913, ptr %gep1143, align 4, !tbaa !24
  store <4 x i32> %wide.load914, ptr %i.iw, align 4, !tbaa !24
  %index.next915 = add nuw i64 %index912, 8       ; 2 uses
  %i.ix = icmp eq i64 %index.next915, %n.vec910
  br i1 %i.ix, label %middle.block916, label %vector.body911, !llvm.loop !204

middle.block916:                                  ; preds = %vector.body911
  %cmp.n917 = icmp eq i64 %i.in, %n.vec910
  br i1 %cmp.n917, label %._crit_edge.loopexit.i, label %.lr.ph116.i.preheader

.lr.ph116.i.preheader:                            ; preds = %vector.memcheck907, %.lr.ph116.preheader.i, %middle.block916
  %indvars.iv131.i.ph = phi i64 [ %i.im, %vector.memcheck907 ], [ %i.im, %.lr.ph116.preheader.i ], [ %i.it, %middle.block916 ] ; 4 uses
  %indvars.iv129.i.ph = phi i64 [ %i.il, %vector.memcheck907 ], [ %i.il, %.lr.ph116.preheader.i ], [ %i.iu, %middle.block916 ] ; 2 uses
  %i.iy = sub nsw i64 %wide.trip.count137.i, %indvars.iv131.i.ph
  %xtraiter1059 = and i64 %i.iy, 3                ; 2 uses
  %lcmp.mod1060.not = icmp eq i64 %xtraiter1059, 0
  br i1 %lcmp.mod1060.not, label %.lr.ph116.i.prol.loopexit, label %.lr.ph116.i.prol

.lr.ph116.i.prol:                                 ; preds = %.lr.ph116.i.preheader, %.lr.ph116.i.prol
  %indvars.iv131.i.prol = phi i64 [ %indvars.iv.next132.i.prol, %.lr.ph116.i.prol ], [ %indvars.iv131.i.ph, %.lr.ph116.i.preheader ] ; 2 uses
  %indvars.iv129.i.prol = phi i64 [ %indvars.iv.next130.i.prol, %.lr.ph116.i.prol ], [ %indvars.iv129.i.ph, %.lr.ph116.i.preheader ] ; 2 uses
  %prol.iter1061 = phi i64 [ %prol.iter1061.next, %.lr.ph116.i.prol ], [ 0, %.lr.ph116.i.preheader ]
  %indvars.iv.next132.i.prol = add nsw i64 %indvars.iv131.i.prol, 1 ; 2 uses
  %i.iz = getelementptr inbounds [4 x i8], ptr %i.gk, i64 %indvars.iv131.i.prol
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !24
  %indvars.iv.next130.i.prol = add nuw nsw i64 %indvars.iv129.i.prol, 1 ; 3 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv129.i.prol
  store i32 %i.ja, ptr %i.jb, align 4, !tbaa !24
  %prol.iter1061.next = add i64 %prol.iter1061, 1 ; 2 uses
  %prol.iter1061.cmp.not = icmp eq i64 %prol.iter1061.next, %xtraiter1059
  br i1 %prol.iter1061.cmp.not, label %.lr.ph116.i.prol.loopexit, label %.lr.ph116.i.prol, !llvm.loop !205

.lr.ph116.i.prol.loopexit:                        ; preds = %.lr.ph116.i.prol, %.lr.ph116.i.preheader
  %indvars.iv.next130.i.lcssa1014.unr = phi i64 [ poison, %.lr.ph116.i.preheader ], [ %indvars.iv.next130.i.prol, %.lr.ph116.i.prol ]
  %indvars.iv131.i.unr = phi i64 [ %indvars.iv131.i.ph, %.lr.ph116.i.preheader ], [ %indvars.iv.next132.i.prol, %.lr.ph116.i.prol ]
  %indvars.iv129.i.unr = phi i64 [ %indvars.iv129.i.ph, %.lr.ph116.i.preheader ], [ %indvars.iv.next130.i.prol, %.lr.ph116.i.prol ]
  %i.jc = sub nsw i64 %indvars.iv131.i.ph, %wide.trip.count137.i
  %i.jd = icmp ugt i64 %i.jc, -4
  br i1 %i.jd, label %._crit_edge.loopexit.i, label %.lr.ph116.i

.lr.ph116.i:                                      ; preds = %.lr.ph116.i.prol.loopexit, %.lr.ph116.i
  %indvars.iv131.i = phi i64 [ %indvars.iv.next132.i.3, %.lr.ph116.i ], [ %indvars.iv131.i.unr, %.lr.ph116.i.prol.loopexit ] ; 5 uses
  %indvars.iv129.i = phi i64 [ %indvars.iv.next130.i.3, %.lr.ph116.i ], [ %indvars.iv129.i.unr, %.lr.ph116.i.prol.loopexit ] ; 5 uses
  %i.je = getelementptr inbounds [4 x i8], ptr %i.gk, i64 %indvars.iv131.i
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !24
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv129.i
  store i32 %i.jf, ptr %i.jg, align 4, !tbaa !24
  %i.jh = getelementptr [4 x i8], ptr %i.gk, i64 %indvars.iv131.i
  %i.ji = getelementptr i8, ptr %i.jh, i64 4
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !24
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv129.i
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 4
  store i32 %i.jj, ptr %i.jl, align 4, !tbaa !24
  %i.jm = getelementptr [4 x i8], ptr %i.gk, i64 %indvars.iv131.i
  %i.jn = getelementptr i8, ptr %i.jm, i64 8
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !24
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv129.i
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  store i32 %i.jo, ptr %i.jq, align 4, !tbaa !24
  %indvars.iv.next132.i.3 = add nsw i64 %indvars.iv131.i, 4 ; 2 uses
  %i.jr = getelementptr [4 x i8], ptr %i.gk, i64 %indvars.iv131.i
  %i.js = getelementptr i8, ptr %i.jr, i64 12
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !24
  %indvars.iv.next130.i.3 = add nuw nsw i64 %indvars.iv129.i, 4 ; 2 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv129.i
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 12
  store i32 %i.jt, ptr %i.jv, align 4, !tbaa !24
  %exitcond138.not.i.3 = icmp eq i64 %indvars.iv.next132.i.3, %wide.trip.count137.i
  br i1 %exitcond138.not.i.3, label %._crit_edge.loopexit.i, label %.lr.ph116.i, !llvm.loop !206

._crit_edge.loopexit.i:                           ; preds = %.lr.ph116.i.prol.loopexit, %.lr.ph116.i, %middle.block916
  %indvars.iv.next130.i.lcssa = phi i64 [ %i.iu, %middle.block916 ], [ %indvars.iv.next130.i.lcssa1014.unr, %.lr.ph116.i.prol.loopexit ], [ %indvars.iv.next130.i.3, %.lr.ph116.i ]
  %i.jw = trunc nuw nsw i64 %indvars.iv.next130.i.lcssa to i32
  br label %.loopexit458

.loopexit109.loopexit.split.loop.exit.i:          ; preds = %bb.h
  %i.jx = trunc nuw nsw i64 %i.hw to i32
  br label %.loopexit109.i

.loopexit109.loopexit.split.loop.exit171.i:       ; preds = %bb.k
  %indvars.le176.i = trunc i64 %indvars.iv.i253 to i32
  %i.jy = add nuw nsw i32 %indvars.le176.i, 1
  br label %.loopexit109.i

.loopexit109.i:                                   ; preds = %.loopexit109.loopexit.split.loop.exit171.i, %.loopexit109.loopexit.split.loop.exit.i, %bb.f
  %.281.i = phi i32 [ 0, %bb.f ], [ %.079112.i, %.loopexit109.loopexit.split.loop.exit.i ], [ %i.ie, %.loopexit109.loopexit.split.loop.exit171.i ] ; 3 uses
  %.4.i = phi i32 [ 0, %bb.f ], [ %i.jx, %.loopexit109.loopexit.split.loop.exit.i ], [ %i.jy, %.loopexit109.loopexit.split.loop.exit171.i ] ; 3 uses
  %i.jz = add nsw i32 %.4.i, %i.hc
  %i.ka = add nsw i32 %.281.i, %i.f
  %i.kb = icmp sgt i32 %i.jz, %i.ka
  br i1 %i.kb, label %Jf_ObjAddCutToStore.exit, label %.preheader105.i

.preheader105.i:                                  ; preds = %.loopexit109.i
  %i.kc = icmp slt i32 %.281.i, %i.hc
  br i1 %i.kc, label %.lr.ph119.preheader.i, label %.loopexit458

.lr.ph119.preheader.i:                            ; preds = %.preheader105.i
  %i.kd = zext i32 %.4.i to i64                   ; 5 uses
  %i.ke = sext i32 %.281.i to i64                 ; 6 uses
  %wide.trip.count148.i = zext nneg i32 %i.hc to i64 ; 4 uses
  %i.kf = sub nsw i64 %wide.trip.count148.i, %i.ke ; 3 uses
  %min.iters.check = icmp ult i64 %i.kf, 8
  br i1 %min.iters.check, label %.lr.ph119.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph119.preheader.i
  %i.kg = shl nuw nsw i64 %i.kd, 2
  %i.kh = shl nsw i64 %i.ke, 2
  %i.ki = add i64 %i.kg, %i.gz
  %i.kj = add i64 %i.kh, %.1184529898
  %i.kk = sub i64 %i.ki, %i.kj
  %i.kl = add i64 %i.kk, 23
  %diff.check = icmp ult i64 %i.kl, 31
  br i1 %diff.check, label %.lr.ph119.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.kf, -8                      ; 4 uses
  %i.km = add nsw i64 %n.vec, %i.ke
  %i.kn = add nsw i64 %n.vec, %i.kd               ; 2 uses
  %invariant.gep1144 = getelementptr [4 x i8], ptr %i.hd, i64 %i.ke
  %invariant.gep1146 = getelementptr [4 x i8], ptr %i.he, i64 %i.kd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep1145 = getelementptr [4 x i8], ptr %invariant.gep1144, i64 %index ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %gep1145, i64 16
  %wide.load = load <4 x i32>, ptr %gep1145, align 4, !tbaa !24
  %wide.load899 = load <4 x i32>, ptr %i.ko, align 4, !tbaa !24
  %gep1147 = getelementptr [4 x i8], ptr %invariant.gep1146, i64 %index ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %gep1147, i64 16
  store <4 x i32> %wide.load, ptr %gep1147, align 4, !tbaa !24
  store <4 x i32> %wide.load899, ptr %i.kp, align 4, !tbaa !24
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kq = icmp eq i64 %index.next, %n.vec
  br i1 %i.kq, label %middle.block, label %vector.body, !llvm.loop !207

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kf, %n.vec
  br i1 %cmp.n, label %._crit_edge120.loopexit.i, label %.lr.ph119.i.preheader

.lr.ph119.i.preheader:                            ; preds = %vector.memcheck, %.lr.ph119.preheader.i, %middle.block
  %indvars.iv142.i.ph = phi i64 [ %i.ke, %vector.memcheck ], [ %i.ke, %.lr.ph119.preheader.i ], [ %i.km, %middle.block ] ; 4 uses
  %indvars.iv140.i.ph = phi i64 [ %i.kd, %vector.memcheck ], [ %i.kd, %.lr.ph119.preheader.i ], [ %i.kn, %middle.block ] ; 2 uses
  %i.kr = sub nsw i64 %wide.trip.count148.i, %indvars.iv142.i.ph
  %xtraiter1062 = and i64 %i.kr, 3                ; 2 uses
  %lcmp.mod1063.not = icmp eq i64 %xtraiter1062, 0
  br i1 %lcmp.mod1063.not, label %.lr.ph119.i.prol.loopexit, label %.lr.ph119.i.prol

.lr.ph119.i.prol:                                 ; preds = %.lr.ph119.i.preheader, %.lr.ph119.i.prol
  %indvars.iv142.i.prol = phi i64 [ %indvars.iv.next143.i.prol, %.lr.ph119.i.prol ], [ %indvars.iv142.i.ph, %.lr.ph119.i.preheader ] ; 2 uses
  %indvars.iv140.i.prol = phi i64 [ %indvars.iv.next141.i.prol, %.lr.ph119.i.prol ], [ %indvars.iv140.i.ph, %.lr.ph119.i.preheader ] ; 2 uses
  %prol.iter1064 = phi i64 [ %prol.iter1064.next, %.lr.ph119.i.prol ], [ 0, %.lr.ph119.i.preheader ]
  %indvars.iv.next143.i.prol = add nsw i64 %indvars.iv142.i.prol, 1 ; 2 uses
  %i.ks = getelementptr inbounds [4 x i8], ptr %i.hd, i64 %indvars.iv142.i.prol
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !24
  %indvars.iv.next141.i.prol = add nuw nsw i64 %indvars.iv140.i.prol, 1 ; 3 uses
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv140.i.prol
  store i32 %i.kt, ptr %i.ku, align 4, !tbaa !24
  %prol.iter1064.next = add i64 %prol.iter1064, 1 ; 2 uses
  %prol.iter1064.cmp.not = icmp eq i64 %prol.iter1064.next, %xtraiter1062
  br i1 %prol.iter1064.cmp.not, label %.lr.ph119.i.prol.loopexit, label %.lr.ph119.i.prol, !llvm.loop !208

.lr.ph119.i.prol.loopexit:                        ; preds = %.lr.ph119.i.prol, %.lr.ph119.i.preheader
  %indvars.iv.next141.i.lcssa1015.unr = phi i64 [ poison, %.lr.ph119.i.preheader ], [ %indvars.iv.next141.i.prol, %.lr.ph119.i.prol ]
  %indvars.iv142.i.unr = phi i64 [ %indvars.iv142.i.ph, %.lr.ph119.i.preheader ], [ %indvars.iv.next143.i.prol, %.lr.ph119.i.prol ]
  %indvars.iv140.i.unr = phi i64 [ %indvars.iv140.i.ph, %.lr.ph119.i.preheader ], [ %indvars.iv.next141.i.prol, %.lr.ph119.i.prol ]
  %i.kv = sub nsw i64 %indvars.iv142.i.ph, %wide.trip.count148.i
  %i.kw = icmp ugt i64 %i.kv, -4
  br i1 %i.kw, label %._crit_edge120.loopexit.i, label %.lr.ph119.i

.lr.ph119.i:                                      ; preds = %.lr.ph119.i.prol.loopexit, %.lr.ph119.i
  %indvars.iv142.i = phi i64 [ %indvars.iv.next143.i.3, %.lr.ph119.i ], [ %indvars.iv142.i.unr, %.lr.ph119.i.prol.loopexit ] ; 5 uses
  %indvars.iv140.i = phi i64 [ %indvars.iv.next141.i.3, %.lr.ph119.i ], [ %indvars.iv140.i.unr, %.lr.ph119.i.prol.loopexit ] ; 5 uses
  %i.kx = getelementptr inbounds [4 x i8], ptr %i.hd, i64 %indvars.iv142.i
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !24
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv140.i
  store i32 %i.ky, ptr %i.kz, align 4, !tbaa !24
  %i.la = getelementptr [4 x i8], ptr %i.hd, i64 %indvars.iv142.i
  %i.lb = getelementptr i8, ptr %i.la, i64 4
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !24
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv140.i
end_hunk_0
begin_hunk_1_@Jf_ObjComputeCuts:bb.a
  br label %.lr.ph.i266

.lr.ph.i266:                                      ; preds = %.lr.ph.i266, %.lr.ph.preheader.i264.new
  %indvars.iv.i267 = phi i64 [ 1, %.lr.ph.preheader.i264.new ], [ %indvars.iv.next.i269.3, %.lr.ph.i266 ] ; 5 uses
  %.068.i268 = phi i64 [ 0, %.lr.ph.preheader.i264.new ], [ %i.pq, %.lr.ph.i266 ]
  %niter1046 = phi i64 [ 0, %.lr.ph.preheader.i264.new ], [ %niter1046.next.3, %.lr.ph.i266 ]
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %indvars.iv.i267
  %i.on = load i32, ptr %i.om, align 4, !tbaa !24
  %i.oo = lshr i32 %i.on, 1
  %i.op = and i32 %i.oo, 63
  %i.oq = zext nneg i32 %i.op to i64
  %i.or = shl nuw i64 1, %i.oq
  %i.os = or i64 %i.or, %.068.i268
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %indvars.iv.i267
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 4
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !24
  %i.ow = lshr i32 %i.ov, 1
  %i.ox = and i32 %i.ow, 63
  %i.oy = zext nneg i32 %i.ox to i64
  %i.oz = shl nuw i64 1, %i.oy
  %i.pa = or i64 %i.oz, %i.os
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %indvars.iv.i267
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !24
  %i.pe = lshr i32 %i.pd, 1
  %i.pf = and i32 %i.pe, 63
  %i.pg = zext nneg i32 %i.pf to i64
  %i.ph = shl nuw i64 1, %i.pg
  %i.pi = or i64 %i.ph, %i.pa
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %indvars.iv.i267
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 12
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !24
  %i.pm = lshr i32 %i.pl, 1
  %i.pn = and i32 %i.pm, 63
  %i.po = zext nneg i32 %i.pn to i64
  %i.pp = shl nuw i64 1, %i.po
  %i.pq = or i64 %i.pp, %i.pi                     ; 3 uses
  %indvars.iv.next.i269.3 = add nuw nsw i64 %indvars.iv.i267, 4 ; 2 uses
  %niter1046.next.3 = add i64 %niter1046, 4       ; 2 uses
  %niter1046.ncmp.3 = icmp eq i64 %niter1046.next.3, %unroll_iter1045
  br i1 %niter1046.ncmp.3, label %Jf_CutGetSign.exit273.loopexit.unr-lcssa, label %.lr.ph.i266, !llvm.loop !198

Jf_CutGetSign.exit273.loopexit.unr-lcssa:         ; preds = %.lr.ph.i266
  %lcmp.mod1042.not = icmp eq i64 %xtraiter1040, 0
  br i1 %lcmp.mod1042.not, label %Jf_CutGetSign.exit273, label %.lr.ph.i266.epil.preheader

.lr.ph.i266.epil.preheader:                       ; preds = %Jf_CutGetSign.exit273.loopexit.unr-lcssa, %.lr.ph.preheader.i264
  %indvars.iv.i267.epil.init = phi i64 [ 1, %.lr.ph.preheader.i264 ], [ %indvars.iv.next.i269.3, %Jf_CutGetSign.exit273.loopexit.unr-lcssa ]
  %.068.i268.epil.init = phi i64 [ 0, %.lr.ph.preheader.i264 ], [ %i.pq, %Jf_CutGetSign.exit273.loopexit.unr-lcssa ]
  %lcmp.mod1044 = icmp ne i64 %xtraiter1040, 0
  call void @llvm.assume(i1 %lcmp.mod1044)
  br label %.lr.ph.i266.epil

.lr.ph.i266.epil:                                 ; preds = %.lr.ph.i266.epil, %.lr.ph.i266.epil.preheader
  %indvars.iv.i267.epil = phi i64 [ %indvars.iv.i267.epil.init, %.lr.ph.i266.epil.preheader ], [ %indvars.iv.next.i269.epil, %.lr.ph.i266.epil ] ; 2 uses
  %.068.i268.epil = phi i64 [ %.068.i268.epil.init, %.lr.ph.i266.epil.preheader ], [ %i.px, %.lr.ph.i266.epil ]
  %epil.iter1041 = phi i64 [ 0, %.lr.ph.i266.epil.preheader ], [ %epil.iter1041.next, %.lr.ph.i266.epil ]
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %indvars.iv.i267.epil
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !24
  %i.pt = lshr i32 %i.ps, 1
  %i.pu = and i32 %i.pt, 63
  %i.pv = zext nneg i32 %i.pu to i64
  %i.pw = shl nuw i64 1, %i.pv
  %i.px = or i64 %i.pw, %.068.i268.epil           ; 2 uses
  %indvars.iv.next.i269.epil = add nuw nsw i64 %indvars.iv.i267.epil, 1
  %epil.iter1041.next = add i64 %epil.iter1041, 1 ; 2 uses
  %epil.iter1041.cmp.not = icmp eq i64 %epil.iter1041.next, %xtraiter1040
  br i1 %epil.iter1041.cmp.not, label %Jf_CutGetSign.exit273, label %.lr.ph.i266.epil, !llvm.loop !211

Jf_CutGetSign.exit273:                            ; preds = %Jf_CutGetSign.exit273.loopexit.unr-lcssa, %.lr.ph.i266.epil, %bb.z
  %.06.lcssa.i272 = phi i64 [ 0, %bb.z ], [ %i.pq, %Jf_CutGetSign.exit273.loopexit.unr-lcssa ], [ %i.px, %.lr.ph.i266.epil ]
  store i64 %.06.lcssa.i272, ptr %i.lu, align 8, !tbaa !114
  br label %bb.an

bb.aa:                                            ; preds = %bb.n
  %i.py = getelementptr inbounds nuw i8, ptr %.1184529, i64 4 ; 8 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.lu, i64 28 ; 16 uses
  %i.qa = icmp eq i32 %i.lx, %i.f
  %i.qb = icmp eq i32 %i.ly, %i.f
  %or.cond.i276 = select i1 %i.qa, i1 %i.qb, i1 false
  br i1 %or.cond.i276, label %.preheader.i329, label %bb.ac

.preheader.i329:                                  ; preds = %bb.aa
  br i1 %i.ga, label %.loopexit461, label %.lr.ph123.i333

.lr.ph123.i333:                                   ; preds = %.preheader.i329, %bb.ab
  %indvars.iv150.i334 = phi i64 [ %indvars.iv.next151.i336, %bb.ab ], [ 0, %.preheader.i329 ] ; 4 uses
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv150.i334
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !24 ; 2 uses
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %indvars.iv150.i334
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !24
  %.not103.i335 = icmp eq i32 %i.qd, %i.qf
  br i1 %.not103.i335, label %bb.ab, label %Jf_ObjAddCutToStore.exit

bb.ab:                                            ; preds = %.lr.ph123.i333
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.pz, i64 %indvars.iv150.i334
  store i32 %i.qd, ptr %i.qg, align 4, !tbaa !24
  %indvars.iv.next151.i336 = add nuw nsw i64 %indvars.iv150.i334, 1 ; 2 uses
  %exitcond155.not.i337 = icmp eq i64 %indvars.iv.next151.i336, %wide.trip.count.i279
  br i1 %exitcond155.not.i337, label %.loopexit461, label %.lr.ph123.i333, !llvm.loop !203

bb.ac:                                            ; preds = %bb.aa
  %i.qh = icmp eq i32 %i.lx, 0
  br i1 %i.qh, label %.loopexit109.i287, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.qi = icmp eq i32 %i.ly, 0
  br i1 %i.qi, label %.loopexit110.i306, label %.preheader107.i277

.preheader107.i277:                               ; preds = %bb.ad
  br i1 %i.ga, label %Jf_ObjAddCutToStore.exit, label %.lr.ph.i280

.lr.ph.i280:                                      ; preds = %.preheader107.i277, %bb.aj
  %indvars.iv.i281 = phi i64 [ %indvars.iv.next.pre-phi.i321, %bb.aj ], [ 0, %.preheader107.i277 ] ; 8 uses
  %.079112.i282 = phi i32 [ %.180.i323, %bb.aj ], [ 0, %.preheader107.i277 ] ; 5 uses
  %.184111.i283 = phi i32 [ %.285.i322, %bb.aj ], [ 0, %.preheader107.i277 ] ; 5 uses
  %i.qj = sext i32 %.184111.i283 to i64
  %i.qk = getelementptr inbounds [4 x i8], ptr %i.gk, i64 %i.qj
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !24 ; 4 uses
  %i.qm = sext i32 %.079112.i282 to i64
  %i.qn = getelementptr inbounds [4 x i8], ptr %i.py, i64 %i.qm
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !24 ; 3 uses
  %i.qp = icmp slt i32 %i.ql, %i.qo
  br i1 %i.qp, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph.i280
  %i.qq = add nsw i32 %.184111.i283, 1            ; 2 uses
  %i.qr = add nuw nsw i64 %indvars.iv.i281, 1     ; 2 uses
  %i.qs = getelementptr inbounds [4 x i8], ptr %i.pz, i64 %indvars.iv.i281
  store i32 %i.ql, ptr %i.qs, align 4, !tbaa !24
  %.not102.i327 = icmp slt i32 %i.qq, %i.lx
  br i1 %.not102.i327, label %bb.aj, label %.loopexit109.loopexit.split.loop.exit.i328

bb.af:                                            ; preds = %.lr.ph.i280
  %i.qt = icmp sgt i32 %i.ql, %i.qo
  br i1 %i.qt, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.qu = add nsw i32 %.079112.i282, 1            ; 2 uses
  %i.qv = add nuw nsw i64 %indvars.iv.i281, 1     ; 2 uses
  %i.qw = getelementptr inbounds [4 x i8], ptr %i.pz, i64 %indvars.iv.i281
  store i32 %i.qo, ptr %i.qw, align 4, !tbaa !24
  %.not101.i325 = icmp slt i32 %i.qu, %i.ly
  br i1 %.not101.i325, label %bb.aj, label %.loopexit110.loopexit.split.loop.exit.i326

bb.ah:                                            ; preds = %bb.af
  %i.qx = add nsw i32 %.184111.i283, 1            ; 3 uses
  %i.qy = getelementptr inbounds [4 x i8], ptr %i.pz, i64 %indvars.iv.i281
  store i32 %i.ql, ptr %i.qy, align 4, !tbaa !24
  %i.qz = add nsw i32 %.079112.i282, 1            ; 3 uses
  %.not.i284 = icmp slt i32 %i.qx, %i.lx
  br i1 %.not.i284, label %bb.ai, label %.loopexit109.loopexit.split.loop.exit171.i285

bb.ai:                                            ; preds = %bb.ah
  %.not100.i303 = icmp slt i32 %i.qz, %i.ly
  br i1 %.not100.i303, label %._crit_edge156.i319, label %.loopexit110.loopexit.split.loop.exit168.i304

._crit_edge156.i319:                              ; preds = %bb.ai
  %.pre.i320 = add nuw nsw i64 %indvars.iv.i281, 1
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge156.i319, %bb.ag, %bb.ae
  %indvars.iv.next.pre-phi.i321 = phi i64 [ %.pre.i320, %._crit_edge156.i319 ], [ %i.qv, %bb.ag ], [ %i.qr, %bb.ae ] ; 2 uses
  %.285.i322 = phi i32 [ %i.qx, %._crit_edge156.i319 ], [ %.184111.i283, %bb.ag ], [ %i.qq, %bb.ae ]
  %.180.i323 = phi i32 [ %i.qz, %._crit_edge156.i319 ], [ %i.qu, %bb.ag ], [ %.079112.i282, %bb.ae ]
  %exitcond.i324 = icmp eq i64 %indvars.iv.next.pre-phi.i321, %wide.trip.count.i279
  br i1 %exitcond.i324, label %Jf_ObjAddCutToStore.exit, label %.lr.ph.i280

.loopexit110.loopexit.split.loop.exit.i326:       ; preds = %bb.ag
  %i.ra = trunc nuw nsw i64 %i.qv to i32
  br label %.loopexit110.i306

.loopexit110.loopexit.split.loop.exit168.i304:    ; preds = %bb.ai
  %indvars.le.i305 = trunc i64 %indvars.iv.i281 to i32
  %i.rb = add nuw nsw i32 %indvars.le.i305, 1
  br label %.loopexit110.i306

.loopexit110.i306:                                ; preds = %.loopexit110.loopexit.split.loop.exit168.i304, %.loopexit110.loopexit.split.loop.exit.i326, %bb.ad
  %.386.i307 = phi i32 [ 0, %bb.ad ], [ %.184111.i283, %.loopexit110.loopexit.split.loop.exit.i326 ], [ %i.qx, %.loopexit110.loopexit.split.loop.exit168.i304 ] ; 3 uses
  %.2.i308 = phi i32 [ 0, %bb.ad ], [ %i.ra, %.loopexit110.loopexit.split.loop.exit.i326 ], [ %i.rb, %.loopexit110.loopexit.split.loop.exit168.i304 ] ; 3 uses
  %i.rc = add nsw i32 %.2.i308, %i.lx
  %i.rd = add nsw i32 %.386.i307, %i.f
  %i.re = icmp sgt i32 %i.rc, %i.rd
  br i1 %i.re, label %Jf_ObjAddCutToStore.exit, label %.preheader106.i309

.preheader106.i309:                               ; preds = %.loopexit110.i306
  %i.rf = icmp slt i32 %.386.i307, %i.lx
  br i1 %i.rf, label %.lr.ph116.preheader.i310, label %.loopexit461

.lr.ph116.preheader.i310:                         ; preds = %.preheader106.i309
  %i.rg = zext i32 %.2.i308 to i64                ; 5 uses
  %i.rh = sext i32 %.386.i307 to i64              ; 6 uses
  %wide.trip.count137.i311 = zext nneg i32 %i.lx to i64 ; 4 uses
  %i.ri = sub nsw i64 %wide.trip.count137.i311, %i.rh ; 3 uses
  %min.iters.check940 = icmp ult i64 %i.ri, 8
  br i1 %min.iters.check940, label %.lr.ph116.i312.preheader, label %vector.memcheck941

vector.memcheck941:                               ; preds = %.lr.ph116.preheader.i310
  %i.rj = shl nuw nsw i64 %i.rg, 2
  %i.rk = shl nsw i64 %i.rh, 2
  %5 = add i64 %i.rj, %i.lv
  %i.rl = add i64 %i.rk, %.1186539904
  %i.rm = sub i64 %5, %i.rl
  %i.rn = add i64 %i.rm, 23
  %diff.check942 = icmp ult i64 %i.rn, 31
  br i1 %diff.check942, label %.lr.ph116.i312.preheader, label %vector.ph943

vector.ph943:                                     ; preds = %vector.memcheck941
  %n.vec944 = and i64 %i.ri, -8                   ; 4 uses
  %i.ro = add nsw i64 %n.vec944, %i.rh
  %i.rp = add nsw i64 %n.vec944, %i.rg            ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.gk, i64 %i.rh
  %invariant.gep1134 = getelementptr [4 x i8], ptr %i.pz, i64 %i.rg
  br label %vector.body945

vector.body945:                                   ; preds = %vector.body945, %vector.ph943
  %index946 = phi i64 [ 0, %vector.ph943 ], [ %index.next949, %vector.body945 ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index946 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load947 = load <4 x i32>, ptr %gep, align 4, !tbaa !24
  %wide.load948 = load <4 x i32>, ptr %i.rq, align 4, !tbaa !24
  %gep1135 = getelementptr [4 x i8], ptr %invariant.gep1134, i64 %index946 ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %gep1135, i64 16
  store <4 x i32> %wide.load947, ptr %gep1135, align 4, !tbaa !24
  store <4 x i32> %wide.load948, ptr %i.rr, align 4, !tbaa !24
  %index.next949 = add nuw i64 %index946, 8       ; 2 uses
  %i.rs = icmp eq i64 %index.next949, %n.vec944
  br i1 %i.rs, label %middle.block950, label %vector.body945, !llvm.loop !212

middle.block950:                                  ; preds = %vector.body945
  %cmp.n951 = icmp eq i64 %i.ri, %n.vec944
  br i1 %cmp.n951, label %._crit_edge.loopexit.i318, label %.lr.ph116.i312.preheader

.lr.ph116.i312.preheader:                         ; preds = %vector.memcheck941, %.lr.ph116.preheader.i310, %middle.block950
  %indvars.iv131.i313.ph = phi i64 [ %i.rh, %vector.memcheck941 ], [ %i.rh, %.lr.ph116.preheader.i310 ], [ %i.ro, %middle.block950 ] ; 4 uses
  %indvars.iv129.i314.ph = phi i64 [ %i.rg, %vector.memcheck941 ], [ %i.rg, %.lr.ph116.preheader.i310 ], [ %i.rp, %middle.block950 ] ; 2 uses
  %i.rt = sub nsw i64 %wide.trip.count137.i311, %indvars.iv131.i313.ph
  %xtraiter1047 = and i64 %i.rt, 3                ; 2 uses
  %lcmp.mod1048.not = icmp eq i64 %xtraiter1047, 0
  br i1 %lcmp.mod1048.not, label %.lr.ph116.i312.prol.loopexit, label %.lr.ph116.i312.prol

.lr.ph116.i312.prol:                              ; preds = %.lr.ph116.i312.preheader, %.lr.ph116.i312.prol
  %indvars.iv131.i313.prol = phi i64 [ %indvars.iv.next132.i315.prol, %.lr.ph116.i312.prol ], [ %indvars.iv131.i313.ph, %.lr.ph116.i312.preheader ] ; 2 uses
  %indvars.iv129.i314.prol = phi i64 [ %indvars.iv.next130.i316.prol, %.lr.ph116.i312.prol ], [ %indvars.iv129.i314.ph, %.lr.ph116.i312.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph116.i312.prol ], [ 0, %.lr.ph116.i312.preheader ]
  %indvars.iv.next132.i315.prol = add nsw i64 %indvars.iv131.i313.prol, 1 ; 2 uses
  %i.ru = getelementptr inbounds [4 x i8], ptr %i.gk, i64 %indvars.iv131.i313.prol
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !24
  %indvars.iv.next130.i316.prol = add nuw nsw i64 %indvars.iv129.i314.prol, 1 ; 3 uses
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.pz, i64 %indvars.iv129.i314.prol
  store i32 %i.rv, ptr %i.rw, align 4, !tbaa !24
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1047
  br i1 %prol.iter.cmp.not, label %.lr.ph116.i312.prol.loopexit, label %.lr.ph116.i312.prol, !llvm.loop !213

.lr.ph116.i312.prol.loopexit:                     ; preds = %.lr.ph116.i312.prol, %.lr.ph116.i312.preheader
  %indvars.iv.next130.i316.lcssa993.unr = phi i64 [ poison, %.lr.ph116.i312.preheader ], [ %indvars.iv.next130.i316.prol, %.lr.ph116.i312.prol ]
  %indvars.iv131.i313.unr = phi i64 [ %indvars.iv131.i313.ph, %.lr.ph116.i312.preheader ], [ %indvars.iv.next132.i315.prol, %.lr.ph116.i312.prol ]
  %indvars.iv129.i314.unr = phi i64 [ %indvars.iv129.i314.ph, %.lr.ph116.i312.preheader ], [ %indvars.iv.next130.i316.prol, %.lr.ph116.i312.prol ]
  %i.rx = sub nsw i64 %indvars.iv131.i313.ph, %wide.trip.count137.i311
  %i.ry = icmp ugt i64 %i.rx, -4
  br i1 %i.ry, label %._crit_edge.loopexit.i318, label %.lr.ph116.i312

.lr.ph116.i312:                                   ; preds = %.lr.ph116.i312.prol.loopexit, %.lr.ph116.i312
  %indvars.iv131.i313 = phi i64 [ %indvars.iv.next132.i315.3, %.lr.ph116.i312 ], [ %indvars.iv131.i313.unr, %.lr.ph116.i312.prol.loopexit ] ; 5 uses
  %indvars.iv129.i314 = phi i64 [ %indvars.iv.next130.i316.3, %.lr.ph116.i312 ], [ %indvars.iv129.i314.unr, %.lr.ph116.i312.prol.loopexit ] ; 5 uses
  %i.rz = getelementptr inbounds [4 x i8], ptr %i.gk, i64 %indvars.iv131.i313
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !24
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.pz, i64 %indvars.iv129.i314
  store i32 %i.sa, ptr %i.sb, align 4, !tbaa !24
  %i.sc = getelementptr [4 x i8], ptr %i.gk, i64 %indvars.iv131.i313
  %i.sd = getelementptr i8, ptr %i.sc, i64 4
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !24
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.pz, i64 %indvars.iv129.i314
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 4
  store i32 %i.se, ptr %i.sg, align 4, !tbaa !24
  %i.sh = getelementptr [4 x i8], ptr %i.gk, i64 %indvars.iv131.i313
  %i.si = getelementptr i8, ptr %i.sh, i64 8
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !24
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.pz, i64 %indvars.iv129.i314
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  store i32 %i.sj, ptr %i.sl, align 4, !tbaa !24
  %indvars.iv.next132.i315.3 = add nsw i64 %indvars.iv131.i313, 4 ; 2 uses
  %i.sm = getelementptr [4 x i8], ptr %i.gk, i64 %indvars.iv131.i313
  %i.sn = getelementptr i8, ptr %i.sm, i64 12
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !24
  %indvars.iv.next130.i316.3 = add nuw nsw i64 %indvars.iv129.i314, 4 ; 2 uses
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.pz, i64 %indvars.iv129.i314
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 12
  store i32 %i.so, ptr %i.sq, align 4, !tbaa !24
  %exitcond138.not.i317.3 = icmp eq i64 %indvars.iv.next132.i315.3, %wide.trip.count137.i311
  br i1 %exitcond138.not.i317.3, label %._crit_edge.loopexit.i318, label %.lr.ph116.i312, !llvm.loop !214

._crit_edge.loopexit.i318:                        ; preds = %.lr.ph116.i312.prol.loopexit, %.lr.ph116.i312, %middle.block950
  %indvars.iv.next130.i316.lcssa = phi i64 [ %i.rp, %middle.block950 ], [ %indvars.iv.next130.i316.lcssa993.unr, %.lr.ph116.i312.prol.loopexit ], [ %indvars.iv.next130.i316.3, %.lr.ph116.i312 ]
  %i.sr = trunc nuw nsw i64 %indvars.iv.next130.i316.lcssa to i32
  br label %.loopexit461

.loopexit109.loopexit.split.loop.exit.i328:       ; preds = %bb.ae
  %i.ss = trunc nuw nsw i64 %i.qr to i32
  br label %.loopexit109.i287

.loopexit109.loopexit.split.loop.exit171.i285:    ; preds = %bb.ah
  %indvars.le176.i286 = trunc i64 %indvars.iv.i281 to i32
  %i.st = add nuw nsw i32 %indvars.le176.i286, 1
  br label %.loopexit109.i287

.loopexit109.i287:                                ; preds = %.loopexit109.loopexit.split.loop.exit171.i285, %.loopexit109.loopexit.split.loop.exit.i328, %bb.ac
  %.281.i288 = phi i32 [ 0, %bb.ac ], [ %.079112.i282, %.loopexit109.loopexit.split.loop.exit.i328 ], [ %i.qz, %.loopexit109.loopexit.split.loop.exit171.i285 ] ; 3 uses
  %.4.i289 = phi i32 [ 0, %bb.ac ], [ %i.ss, %.loopexit109.loopexit.split.loop.exit.i328 ], [ %i.st, %.loopexit109.loopexit.split.loop.exit171.i285 ] ; 3 uses
  %i.su = add nsw i32 %.4.i289, %i.ly
  %i.sv = add nsw i32 %.281.i288, %i.f
  %i.sw = icmp sgt i32 %i.su, %i.sv
  br i1 %i.sw, label %Jf_ObjAddCutToStore.exit, label %.preheader105.i290

.preheader105.i290:                               ; preds = %.loopexit109.i287
  %i.sx = icmp slt i32 %.281.i288, %i.ly
  br i1 %i.sx, label %.lr.ph119.preheader.i294, label %.loopexit461

.lr.ph119.preheader.i294:                         ; preds = %.preheader105.i290
  %i.sy = zext i32 %.4.i289 to i64                ; 5 uses
  %i.sz = sext i32 %.281.i288 to i64              ; 6 uses
  %wide.trip.count148.i295 = zext nneg i32 %i.ly to i64 ; 4 uses
  %i.ta = sub nsw i64 %wide.trip.count148.i295, %i.sz ; 3 uses
  %min.iters.check923 = icmp ult i64 %i.ta, 8
  br i1 %min.iters.check923, label %.lr.ph119.i296.preheader, label %vector.memcheck924

vector.memcheck924:                               ; preds = %.lr.ph119.preheader.i294
  %i.tb = shl nuw nsw i64 %i.sy, 2
  %i.tc = shl nsw i64 %i.sz, 2
  %i.td = add i64 %i.tb, %i.lv
  %i.te = add i64 %i.tc, %.1184529898
  %i.tf = sub i64 %i.td, %i.te
  %i.tg = add i64 %i.tf, 23
  %diff.check925 = icmp ult i64 %i.tg, 31
  br i1 %diff.check925, label %.lr.ph119.i296.preheader, label %vector.ph926

vector.ph926:                                     ; preds = %vector.memcheck924
  %n.vec927 = and i64 %i.ta, -8                   ; 4 uses
  %i.th = add nsw i64 %n.vec927, %i.sz
  %i.ti = add nsw i64 %n.vec927, %i.sy            ; 2 uses
  %invariant.gep1136 = getelementptr [4 x i8], ptr %i.py, i64 %i.sz
  %invariant.gep1138 = getelementptr [4 x i8], ptr %i.pz, i64 %i.sy
  br label %vector.body928

vector.body928:                                   ; preds = %vector.body928, %vector.ph926
  %index929 = phi i64 [ 0, %vector.ph926 ], [ %index.next932, %vector.body928 ] ; 3 uses
  %gep1137 = getelementptr [4 x i8], ptr %invariant.gep1136, i64 %index929 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %gep1137, i64 16
  %wide.load930 = load <4 x i32>, ptr %gep1137, align 4, !tbaa !24
  %wide.load931 = load <4 x i32>, ptr %i.tj, align 4, !tbaa !24
  %gep1139 = getelementptr [4 x i8], ptr %invariant.gep1138, i64 %index929 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %gep1139, i64 16
  store <4 x i32> %wide.load930, ptr %gep1139, align 4, !tbaa !24
  store <4 x i32> %wide.load931, ptr %i.tk, align 4, !tbaa !24
  %index.next932 = add nuw i64 %index929, 8       ; 2 uses
  %i.tl = icmp eq i64 %index.next932, %n.vec927
  br i1 %i.tl, label %middle.block933, label %vector.body928, !llvm.loop !215

middle.block933:                                  ; preds = %vector.body928
  %cmp.n934 = icmp eq i64 %i.ta, %n.vec927
  br i1 %cmp.n934, label %._crit_edge120.loopexit.i302, label %.lr.ph119.i296.preheader

.lr.ph119.i296.preheader:                         ; preds = %vector.memcheck924, %.lr.ph119.preheader.i294, %middle.block933
  %indvars.iv142.i297.ph = phi i64 [ %i.sz, %vector.memcheck924 ], [ %i.sz, %.lr.ph119.preheader.i294 ], [ %i.th, %middle.block933 ] ; 4 uses
  %indvars.iv140.i298.ph = phi i64 [ %i.sy, %vector.memcheck924 ], [ %i.sy, %.lr.ph119.preheader.i294 ], [ %i.ti, %middle.block933 ] ; 2 uses
  %i.tm = sub nsw i64 %wide.trip.count148.i295, %indvars.iv142.i297.ph
  %xtraiter1049 = and i64 %i.tm, 3                ; 2 uses
  %lcmp.mod1050.not = icmp eq i64 %xtraiter1049, 0
  br i1 %lcmp.mod1050.not, label %.lr.ph119.i296.prol.loopexit, label %.lr.ph119.i296.prol

.lr.ph119.i296.prol:                              ; preds = %.lr.ph119.i296.preheader, %.lr.ph119.i296.prol
  %indvars.iv142.i297.prol = phi i64 [ %indvars.iv.next143.i299.prol, %.lr.ph119.i296.prol ], [ %indvars.iv142.i297.ph, %.lr.ph119.i296.preheader ] ; 2 uses
  %indvars.iv140.i298.prol = phi i64 [ %indvars.iv.next141.i300.prol, %.lr.ph119.i296.prol ], [ %indvars.iv140.i298.ph, %.lr.ph119.i296.preheader ] ; 2 uses
  %prol.iter1051 = phi i64 [ %prol.iter1051.next, %.lr.ph119.i296.prol ], [ 0, %.lr.ph119.i296.preheader ]
  %indvars.iv.next143.i299.prol = add nsw i64 %indvars.iv142.i297.prol, 1 ; 2 uses
  %i.tn = getelementptr inbounds [4 x i8], ptr %i.py, i64 %indvars.iv142.i297.prol
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !24
  %indvars.iv.next141.i300.prol = add nuw nsw i64 %indvars.iv140.i298.prol, 1 ; 3 uses
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.pz, i64 %indvars.iv140.i298.prol
  store i32 %i.to, ptr %i.tp, align 4, !tbaa !24
  %prol.iter1051.next = add i64 %prol.iter1051, 1 ; 2 uses
  %prol.iter1051.cmp.not = icmp eq i64 %prol.iter1051.next, %xtraiter1049
  br i1 %prol.iter1051.cmp.not, label %.lr.ph119.i296.prol.loopexit, label %.lr.ph119.i296.prol, !llvm.loop !216

.lr.ph119.i296.prol.loopexit:                     ; preds = %.lr.ph119.i296.prol, %.lr.ph119.i296.preheader
  %indvars.iv.next141.i300.lcssa994.unr = phi i64 [ poison, %.lr.ph119.i296.preheader ], [ %indvars.iv.next141.i300.prol, %.lr.ph119.i296.prol ]
  %indvars.iv142.i297.unr = phi i64 [ %indvars.iv142.i297.ph, %.lr.ph119.i296.preheader ], [ %indvars.iv.next143.i299.prol, %.lr.ph119.i296.prol ]
  %indvars.iv140.i298.unr = phi i64 [ %indvars.iv140.i298.ph, %.lr.ph119.i296.preheader ], [ %indvars.iv.next141.i300.prol, %.lr.ph119.i296.prol ]
  %i.tq = sub nsw i64 %indvars.iv142.i297.ph, %wide.trip.count148.i295
  %i.tr = icmp ugt i64 %i.tq, -4
  br i1 %i.tr, label %._crit_edge120.loopexit.i302, label %.lr.ph119.i296

.lr.ph119.i296:                                   ; preds = %.lr.ph119.i296.prol.loopexit, %.lr.ph119.i296
  %indvars.iv142.i297 = phi i64 [ %indvars.iv.next143.i299.3, %.lr.ph119.i296 ], [ %indvars.iv142.i297.unr, %.lr.ph119.i296.prol.loopexit ] ; 5 uses
  %indvars.iv140.i298 = phi i64 [ %indvars.iv.next141.i300.3, %.lr.ph119.i296 ], [ %indvars.iv140.i298.unr, %.lr.ph119.i296.prol.loopexit ] ; 5 uses
  %i.ts = getelementptr inbounds [4 x i8], ptr %i.py, i64 %indvars.iv142.i297
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !24
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.pz, i64 %indvars.iv140.i298
  store i32 %i.tt, ptr %i.tu, align 4, !tbaa !24
  %i.tv = getelementptr [4 x i8], ptr %i.py, i64 %indvars.iv142.i297
  %i.tw = getelementptr i8, ptr %i.tv, i64 4
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !24
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.pz, i64 %indvars.iv140.i298
end_hunk_1
