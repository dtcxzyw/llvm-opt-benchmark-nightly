inline.NumInlined: 638
inline.NumDeleted: 115
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 11
begin_hunk_0_@Str_ManNormalize_rec:bb.a
  br i1 %i.eh, label %.lr.ph257, label %.critedge10

.lr.ph257:                                        ; preds = %.critedge
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 984 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.el = getelementptr i8, ptr %0, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.val179346 = load ptr, ptr %i.d, align 8, !tbaa !48 ; 2 uses
  %.not160347 = icmp eq ptr %.val179346, null
  br i1 %.not160347, label %.critedge4, label %.lr.ph349

.lr.ph349:                                        ; preds = %.lr.ph257
  %.val188345 = load ptr, ptr %i.eg, align 8, !tbaa !38
  %i.en = load i32, ptr %.val188345, align 4, !tbaa !40
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [12 x i8], ptr %.val179346, i64 %i.eo
  br label %bb.u

bb.t:                                             ; preds = %.critedge8
  %.val188 = load ptr, ptr %i.eg, align 8, !tbaa !38
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.val188, i64 %indvars.iv.next280
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !40
  %.val179 = load ptr, ptr %i.d, align 8, !tbaa !48 ; 2 uses
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [12 x i8], ptr %.val179, i64 %i.es
  %.not160 = icmp eq ptr %.val179, null
  br i1 %.not160, label %.critedge4, label %bb.u, !llvm.loop !95

bb.u:                                             ; preds = %.lr.ph349, %bb.t
  %i.eu = phi ptr [ %i.ep, %.lr.ph349 ], [ %i.et, %bb.t ] ; 6 uses
  %indvars.iv279348 = phi i64 [ 0, %.lr.ph349 ], [ %indvars.iv.next280, %bb.t ]
  %i.ev = load ptr, ptr %i.ei, align 8, !tbaa !91 ; 2 uses
  %i.ew = load i64, ptr %i.eu, align 4
  %i.ex = or i64 %i.ew, 1073741824
  store i64 %i.ex, ptr %i.eu, align 4
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  store i32 0, ptr %i.ey, align 4, !tbaa !47
  tail call void @Str_MuxStructCollect_rec(ptr noundef nonnull %1, ptr noundef nonnull %i.eu, ptr noundef %i.ev)
  %i.ez = load i64, ptr %i.eu, align 4
  %i.fa = and i64 %i.ez, -1073741825
  store i64 %i.fa, ptr %i.eu, align 4
  %i.fb = load ptr, ptr %i.ei, align 8, !tbaa !91 ; 3 uses
  %i.fc = getelementptr i8, ptr %i.fb, i64 4
  %.val169243 = load i32, ptr %i.fc, align 4, !tbaa !47 ; 2 uses
  %i.fd = icmp sgt i32 %.val169243, 0
  br i1 %i.fd, label %.lr.ph246.preheader, label %.critedge8

.lr.ph246.preheader:                              ; preds = %bb.u
  %.val178336 = load ptr, ptr %i.d, align 8, !tbaa !48 ; 3 uses
  %.not162337 = icmp eq ptr %.val178336, null
  br i1 %.not162337, label %.critedge6, label %.lr.ph340

.lr.ph340:                                        ; preds = %.lr.ph246.preheader
  %i.fe = getelementptr i8, ptr %i.fb, i64 8
  %.val187335 = load ptr, ptr %i.fe, align 8, !tbaa !38
  %i.ff = load i32, ptr %.val187335, align 4, !tbaa !40
  %i.fg = sext i32 %i.ff to i64                   ; 2 uses
  %i.fh = getelementptr inbounds [12 x i8], ptr %.val178336, i64 %i.fg
  br label %bb.v

.lr.ph246:                                        ; preds = %bb.y
  %i.fi = getelementptr i8, ptr %i.gz, i64 8
  %.val187 = load ptr, ptr %i.fi, align 8, !tbaa !38
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %.val187, i64 %indvars.iv.next272
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !40
  %.val178 = load ptr, ptr %i.d, align 8, !tbaa !48 ; 3 uses
  %i.fl = sext i32 %i.fk to i64                   ; 2 uses
  %i.fm = getelementptr inbounds [12 x i8], ptr %.val178, i64 %i.fl
  %.not162 = icmp eq ptr %.val178, null
  br i1 %.not162, label %.critedge6, label %bb.v, !llvm.loop !96

bb.v:                                             ; preds = %.lr.ph340, %.lr.ph246
  %i.fn = phi ptr [ %i.fh, %.lr.ph340 ], [ %i.fm, %.lr.ph246 ] ; 4 uses
  %i.fo = phi i64 [ %i.fg, %.lr.ph340 ], [ %i.fl, %.lr.ph246 ]
  %.val178339 = phi ptr [ %.val178336, %.lr.ph340 ], [ %.val178, %.lr.ph246 ]
  %indvars.iv271338 = phi i64 [ 0, %.lr.ph340 ], [ %indvars.iv.next272, %.lr.ph246 ]
  %i.fp = load i64, ptr %i.fn, align 4            ; 4 uses
  %i.fq = and i64 %i.fp, 536870911
  %i.fr = sub nsw i64 0, %i.fq
  %i.fs = getelementptr inbounds [12 x i8], ptr %i.fn, i64 %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !56
  %i.fv = trunc i64 %i.fp to i32
  %i.fw = lshr i32 %i.fv, 29
  %i.fx = and i32 %i.fw, 1
  %i.fy = xor i32 %i.fx, %i.fu                    ; 2 uses
  store i32 %i.fy, ptr %i.a, align 4, !tbaa !40
  %i.fz = lshr i64 %i.fp, 32
  %i.ga = and i64 %i.fz, 536870911
  %i.gb = sub nsw i64 0, %i.ga
  %i.gc = getelementptr inbounds [12 x i8], ptr %i.fn, i64 %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !56
  %i.gf = lshr i64 %i.fp, 61
  %i.gg = trunc nuw nsw i64 %i.gf to i32
  %i.gh = and i32 %i.gg, 1
  %i.gi = xor i32 %i.gh, %i.ge                    ; 2 uses
  store i32 %i.gi, ptr %i.ej, align 4, !tbaa !40
  %i.gj = load ptr, ptr %i.e, align 8, !tbaa !55  ; 2 uses
  %.not.i.i205 = icmp eq ptr %i.gj, null
  br i1 %.not.i.i205, label %Gia_ObjFanin2Copy.exit209, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gk = shl nsw i64 %i.fo, 2
  %i.gl = getelementptr inbounds i8, ptr %i.gj, i64 %i.gk
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !40 ; 2 uses
  %i.gn = ashr i32 %i.gm, 1
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr inbounds [12 x i8], ptr %.val178339, i64 %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = and i32 %i.gm, 1
  br label %Gia_ObjFanin2Copy.exit209

Gia_ObjFanin2Copy.exit209:                        ; preds = %bb.v, %bb.w
  %.in.i208 = phi ptr [ %i.gq, %bb.w ], [ inttoptr (i64 8 to ptr), %bb.v ]
  %i.gs = phi i32 [ %i.gr, %bb.w ], [ 0, %bb.v ]
  %i.gt = load i32, ptr %.in.i208, align 4, !tbaa !56 ; 2 uses
  %i.gu = xor i32 %i.gt, %i.gs                    ; 2 uses
  store i32 %i.gu, ptr %i.ek, align 4, !tbaa !40
  %i.gv = and i32 %i.gu, 1
  %.not164 = icmp eq i32 %i.gv, 0
  br i1 %.not164, label %bb.y, label %bb.x

bb.x:                                             ; preds = %Gia_ObjFanin2Copy.exit209
  %i.gw = and i32 %i.gt, -2
  store i32 %i.gw, ptr %i.ek, align 4, !tbaa !40
  store i32 %i.gi, ptr %i.a, align 4, !tbaa !40
  store i32 %i.fy, ptr %i.ej, align 4, !tbaa !40
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %Gia_ObjFanin2Copy.exit209
  %i.gx = call fastcc i32 @Str_ObjCreate(ptr noundef %0, i32 noundef 5, i32 noundef 3, ptr noundef nonnull %i.a)
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store i32 %i.gx, ptr %i.gy, align 4, !tbaa !56
  %indvars.iv.next272 = add nuw nsw i64 %indvars.iv271338, 1 ; 3 uses
  %i.gz = load ptr, ptr %i.ei, align 8, !tbaa !91 ; 4 uses
  %i.ha = getelementptr i8, ptr %i.gz, i64 4
  %.val169 = load i32, ptr %i.ha, align 4, !tbaa !47 ; 3 uses
  %i.hb = sext i32 %.val169 to i64
  %i.hc = icmp slt i64 %indvars.iv.next272, %i.hb
  br i1 %i.hc, label %.lr.ph246, label %..critedge6_crit_edge, !llvm.loop !96

..critedge6_crit_edge:                            ; preds = %bb.y
  br label %.critedge6, !llvm.loop !96

.critedge6:                                       ; preds = %.lr.ph246, %..critedge6_crit_edge, %.lr.ph246.preheader
  %.lcssa = phi ptr [ %i.gz, %..critedge6_crit_edge ], [ %i.fb, %.lr.ph246.preheader ], [ %i.gz, %.lr.ph246 ]
  %.val169.lcssa = phi i32 [ %.val169, %..critedge6_crit_edge ], [ %.val169243, %.lr.ph246.preheader ], [ %.val169, %.lr.ph246 ] ; 4 uses
  %i.hd = icmp sgt i32 %.val169.lcssa, 0
  br i1 %i.hd, label %.lr.ph252, label %.critedge8

.lr.ph252:                                        ; preds = %.critedge6
  %.val177 = load ptr, ptr %i.d, align 8, !tbaa !48 ; 4 uses
  %.not163 = icmp eq ptr %.val177, null
  br i1 %.not163, label %.critedge8, label %.lr.ph252.split

.lr.ph252.split:                                  ; preds = %.lr.ph252
  %i.he = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.hf = getelementptr i8, ptr %.lcssa, i64 8
  %.val186 = load ptr, ptr %i.hf, align 8, !tbaa !38 ; 3 uses
  %i.hg = load i32, ptr %i.he, align 4, !tbaa !56
  %i.hh = ashr i32 %i.hg, 1                       ; 3 uses
  %.val194 = load ptr, ptr %i.el, align 8, !tbaa !35 ; 3 uses
  %wide.trip.count277 = zext nneg i32 %.val169.lcssa to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count277, 1
  %i.hi = icmp eq i32 %.val169.lcssa, 1
  br i1 %i.hi, label %.epil.preheader, label %.lr.ph252.split.new

.lr.ph252.split.new:                              ; preds = %.lr.ph252.split
  %unroll_iter = and i64 %wide.trip.count277, 2147483646
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph252.split.new
  %indvars.iv274 = phi i64 [ 0, %.lr.ph252.split.new ], [ %indvars.iv.next275.1, %bb.z ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph252.split.new ], [ %niter.next.1, %bb.z ]
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %.val186, i64 %indvars.iv274
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !40
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [12 x i8], ptr %.val177, i64 %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !56
  %i.hp = ashr i32 %i.ho, 1
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds [16 x i8], ptr %.val194, i64 %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  store i32 %i.hh, ptr %i.hs, align 4, !tbaa !97
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %.val186, i64 %indvars.iv274
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 4
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !40
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr inbounds [12 x i8], ptr %.val177, i64 %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !56
  %i.ia = ashr i32 %i.hz, 1
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds [16 x i8], ptr %.val194, i64 %i.ib
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  store i32 %i.hh, ptr %i.id, align 4, !tbaa !97
  %indvars.iv.next275.1 = add nuw nsw i64 %indvars.iv274, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge8.loopexit.unr-lcssa, label %bb.z, !llvm.loop !98

.critedge8.loopexit.unr-lcssa:                    ; preds = %bb.z
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge8, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge8.loopexit.unr-lcssa, %.lr.ph252.split
  %indvars.iv274.epil.init = phi i64 [ 0, %.lr.ph252.split ], [ %indvars.iv.next275.1, %.critedge8.loopexit.unr-lcssa ]
  %lcmp.mod360 = trunc i32 %.val169.lcssa to i1
  tail call void @llvm.assume(i1 %lcmp.mod360)
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %.val186, i64 %indvars.iv274.epil.init
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !40
  %i.ig = sext i32 %i.if to i64
  %i.ih = getelementptr inbounds [12 x i8], ptr %.val177, i64 %i.ig
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !56
  %i.ik = ashr i32 %i.ij, 1
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds [16 x i8], ptr %.val194, i64 %i.il
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  store i32 %i.hh, ptr %i.in, align 4, !tbaa !97
  br label %.critedge8

.critedge8:                                       ; preds = %.epil.preheader, %.critedge8.loopexit.unr-lcssa, %bb.u, %.lr.ph252, %.critedge6
  %i.io = load i32, ptr %i.em, align 8, !tbaa !99
  %i.ip = add nsw i32 %i.io, 1
  store i32 %i.ip, ptr %i.em, align 8, !tbaa !99
  %indvars.iv.next280 = add nuw nsw i64 %indvars.iv279348, 1 ; 3 uses
  %.val170 = load i32, ptr %i.cb, align 4, !tbaa !47 ; 3 uses
  %i.iq = sext i32 %.val170 to i64
  %i.ir = icmp slt i64 %indvars.iv.next280, %i.iq
  br i1 %i.ir, label %bb.t, label %.critedge8..critedge4_crit_edge, !llvm.loop !95

.critedge8..critedge4_crit_edge:                  ; preds = %.critedge8
  br label %.critedge4, !llvm.loop !95

.critedge4:                                       ; preds = %bb.t, %.critedge8..critedge4_crit_edge, %.lr.ph257
  %.val170.lcssa = phi i32 [ %.val170254, %.lr.ph257 ], [ %.val170, %.critedge8..critedge4_crit_edge ], [ %.val170, %bb.t ] ; 5 uses
  %.val200 = load ptr, ptr %i.eg, align 8, !tbaa !38 ; 4 uses
  %.val176 = load ptr, ptr %i.d, align 8, !tbaa !48
  %.val176.fr = freeze ptr %.val176               ; 5 uses
  %.not161 = icmp eq ptr %.val176.fr, null
  %i.is = icmp slt i32 %.val170.lcssa, 1
  %or.cond261 = or i1 %i.is, %.not161
  br i1 %or.cond261, label %.critedge10, label %.lr.ph263.split.preheader

.lr.ph263.split.preheader:                        ; preds = %.critedge4
  %i.it = zext nneg i32 %.val170.lcssa to i64
  %i.iu = getelementptr [4 x i8], ptr %.val200, i64 %i.it
  %i.iv = getelementptr i8, ptr %i.iu, i64 -4
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !40
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr inbounds [12 x i8], ptr %.val176.fr, i64 %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !56
  %i.jb = ashr i32 %i.ja, 1                       ; 3 uses
  %i.jc = getelementptr i8, ptr %0, i64 8
  %.val193 = load ptr, ptr %i.jc, align 8, !tbaa !35 ; 3 uses
  %wide.trip.count285 = zext nneg i32 %.val170.lcssa to i64 ; 2 uses
  %xtraiter361 = and i64 %wide.trip.count285, 1
  %i.jd = icmp eq i32 %.val170.lcssa, 1
  br i1 %i.jd, label %.lr.ph263.split.epil.preheader, label %.lr.ph263.split.preheader.new

.lr.ph263.split.preheader.new:                    ; preds = %.lr.ph263.split.preheader
  %unroll_iter364 = and i64 %wide.trip.count285, 2147483646
  br label %.lr.ph263.split

.lr.ph263.split:                                  ; preds = %.lr.ph263.split, %.lr.ph263.split.preheader.new
  %indvars.iv282 = phi i64 [ 0, %.lr.ph263.split.preheader.new ], [ %indvars.iv.next283.1, %.lr.ph263.split ] ; 3 uses
  %niter365 = phi i64 [ 0, %.lr.ph263.split.preheader.new ], [ %niter365.next.1, %.lr.ph263.split ]
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %.val200, i64 %indvars.iv282
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !40
  %i.jg = sext i32 %i.jf to i64
  %i.jh = getelementptr inbounds [12 x i8], ptr %.val176.fr, i64 %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !56
  %i.jk = ashr i32 %i.jj, 1
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr inbounds [16 x i8], ptr %.val193, i64 %i.jl
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  store i32 %i.jb, ptr %i.jn, align 4, !tbaa !97
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %.val200, i64 %indvars.iv282
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 4
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !40
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr inbounds [12 x i8], ptr %.val176.fr, i64 %i.jr
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !56
  %i.jv = ashr i32 %i.ju, 1
  %i.jw = sext i32 %i.jv to i64
  %i.jx = getelementptr inbounds [16 x i8], ptr %.val193, i64 %i.jw
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  store i32 %i.jb, ptr %i.jy, align 4, !tbaa !97
  %indvars.iv.next283.1 = add nuw nsw i64 %indvars.iv282, 2 ; 2 uses
  %niter365.next.1 = add i64 %niter365, 2         ; 2 uses
  %niter365.ncmp.1 = icmp eq i64 %niter365.next.1, %unroll_iter364
  br i1 %niter365.ncmp.1, label %.critedge10.loopexit.unr-lcssa, label %.lr.ph263.split, !llvm.loop !100

.critedge10.loopexit.unr-lcssa:                   ; preds = %.lr.ph263.split
  %lcmp.mod362.not = icmp eq i64 %xtraiter361, 0
  br i1 %lcmp.mod362.not, label %.critedge10, label %.lr.ph263.split.epil.preheader

.lr.ph263.split.epil.preheader:                   ; preds = %.critedge10.loopexit.unr-lcssa, %.lr.ph263.split.preheader
  %indvars.iv282.epil.init = phi i64 [ 0, %.lr.ph263.split.preheader ], [ %indvars.iv.next283.1, %.critedge10.loopexit.unr-lcssa ]
  %lcmp.mod363 = trunc i32 %.val170.lcssa to i1
  tail call void @llvm.assume(i1 %lcmp.mod363)
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %.val200, i64 %indvars.iv282.epil.init
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !40
  %i.kb = sext i32 %i.ka to i64
  %i.kc = getelementptr inbounds [12 x i8], ptr %.val176.fr, i64 %i.kb
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !56
  %i.kf = ashr i32 %i.ke, 1
  %i.kg = sext i32 %i.kf to i64
  %i.kh = getelementptr inbounds [16 x i8], ptr %.val193, i64 %i.kg
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  store i32 %i.jb, ptr %i.ki, align 4, !tbaa !97
  br label %.critedge10

.critedge10:                                      ; preds = %.lr.ph263.split.epil.preheader, %.critedge10.loopexit.unr-lcssa, %bb.i, %.critedge, %.critedge4
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !101
  %i.kl = add nsw i32 %i.kk, 1
  store i32 %i.kl, ptr %i.kj, align 4, !tbaa !101
  br label %bb.aa

bb.aa:                                            ; preds = %.critedge10, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.bd

Gia_ObjIsMux.exit.thread:                         ; preds = %bb.b, %Gia_ObjIsMux.exit
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 984 ; 7 uses
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !91 ; 2 uses
  %i.ko = icmp eq ptr %i.kn, null
  br i1 %i.ko, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %Gia_ObjIsMux.exit.thread
  %i.kp = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 4 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 4
  store i32 0, ptr %i.kq, align 4, !tbaa !47
  store i32 100, ptr %i.kp, align 8, !tbaa !49
  %i.kr = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #31
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  store ptr %i.kr, ptr %i.ks, align 8, !tbaa !38
  store ptr %i.kp, ptr %i.km, align 8, !tbaa !91
  br label %bb.ad

bb.ac:                                            ; preds = %Gia_ObjIsMux.exit.thread
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kn, i64 4
  store i32 0, ptr %i.kt, align 4, !tbaa !47
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.val.i210 = load i64, ptr %2, align 4          ; 5 uses
  %i.ku = and i64 %.val.i210, 2147483648
  %.not.i.i.i = icmp ne i64 %i.ku, 0
  %i.kv = and i64 %.val.i210, 536870911           ; 3 uses
  %i.kw = icmp eq i64 %i.kv, 536870911
  %narrow.i.not.i.i = or i1 %.not.i.i.i, %i.kw
  br i1 %narrow.i.not.i.i, label %Gia_ManSuperCollect.exit, label %Gia_ObjIsXor.exit.i

Gia_ObjIsXor.exit.i:                              ; preds = %bb.ad
  %i.kx = trunc i64 %.val.i210 to i32
  %i.ky = and i32 %i.kx, 536870911                ; 2 uses
  %i.kz = lshr i64 %.val.i210, 32
  %i.la = trunc nuw i64 %i.kz to i32
  %i.lb = and i32 %i.la, 536870911                ; 2 uses
  %.not.i211 = icmp samesign ult i32 %i.ky, %i.lb
  br i1 %.not.i211, label %bb.ae, label %bb.ar

bb.ae:                                            ; preds = %Gia_ObjIsXor.exit.i
  %i.lc = sub nsw i64 0, %i.kv
  %i.ld = getelementptr inbounds [12 x i8], ptr %2, i64 %i.lc
  tail call fastcc void @Gia_ManSuperCollectXor_rec(ptr noundef nonnull %1, ptr noundef nonnull %i.ld)
  %i.le = load i64, ptr %2, align 4
  %i.lf = lshr i64 %i.le, 32
  %i.lg = and i64 %i.lf, 536870911
  %i.lh = sub nsw i64 0, %i.lg
  %i.li = getelementptr inbounds [12 x i8], ptr %2, i64 %i.lh
  tail call fastcc void @Gia_ManSuperCollectXor_rec(ptr noundef nonnull %1, ptr noundef nonnull %i.li)
  %i.lj = load ptr, ptr %i.km, align 8, !tbaa !91 ; 2 uses
  %i.lk = getelementptr i8, ptr %i.lj, i64 4
  %.val21.i = load i32, ptr %i.lk, align 4, !tbaa !47
  %i.ll = getelementptr i8, ptr %i.lj, i64 8
  %.val22.i = load ptr, ptr %i.ll, align 8, !tbaa !38
  %i.lm = sext i32 %.val21.i to i64
  tail call void @qsort(ptr noundef %.val22.i, i64 noundef %i.lm, i64 noundef 4, ptr noundef nonnull @Vec_IntSortCompare1) #29
  %i.ln = load ptr, ptr %i.km, align 8, !tbaa !91 ; 6 uses
  %i.lo = getelementptr i8, ptr %i.ln, i64 4      ; 6 uses
  %.val2934.i.i = load i32, ptr %i.lo, align 4, !tbaa !47 ; 2 uses
  %i.lp = icmp sgt i32 %.val2934.i.i, 0
  br i1 %i.lp, label %.lr.ph.i.i, label %.critedge.thread.i.i

.critedge.thread.i.i:                             ; preds = %bb.ae
  store i32 0, ptr %i.lo, align 4, !tbaa !47
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %.pre.i212 = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !38
  br label %bb.al

.lr.ph.i.i:                                       ; preds = %bb.ae
  %i.lq = getelementptr i8, ptr %i.ln, i64 8
  %.val31.i.i = load ptr, ptr %i.lq, align 8, !tbaa !38 ; 5 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ak, %.lr.ph.i.i
  %.val2941.i.i = phi i32 [ %.val2934.i.i, %.lr.ph.i.i ], [ %.val29.i.i, %bb.ak ] ; 3 uses
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.ak ] ; 2 uses
  %.038.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.1.i.i, %bb.ak ] ; 4 uses
  %.02237.i.i = phi i32 [ -1, %.lr.ph.i.i ], [ %.123.i.i, %bb.ak ] ; 3 uses
  %.02436.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.125.i.i, %bb.ak ] ; 5 uses
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %.val31.i.i, i64 %indvars.iv.i.i
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !40 ; 4 uses
  switch i32 %i.ls, label %bb.ah [
    i32 0, label %bb.ak
    i32 1, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af
  %i.lt = xor i32 %.038.i.i, 1
  br label %bb.ak

bb.ah:                                            ; preds = %bb.af
  %.not28.i.i = icmp eq i32 %.02237.i.i, %i.ls
  br i1 %.not28.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.lu = add nsw i32 %.02436.i.i, 1
  %i.lv = sext i32 %.02436.i.i to i64
  %i.lw = getelementptr inbounds [4 x i8], ptr %.val31.i.i, i64 %i.lv
  store i32 %i.ls, ptr %i.lw, align 4, !tbaa !40
  %.val29.pre.i.i = load i32, ptr %i.lo, align 4, !tbaa !47
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.lx = add nsw i32 %.02436.i.i, -1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ag, %bb.af
  %.val29.i.i = phi i32 [ %.val2941.i.i, %bb.af ], [ %.val2941.i.i, %bb.ag ], [ %.val29.pre.i.i, %bb.ai ], [ %.val2941.i.i, %bb.aj ] ; 2 uses
  %.125.i.i = phi i32 [ %.02436.i.i, %bb.af ], [ %.02436.i.i, %bb.ag ], [ %i.lu, %bb.ai ], [ %i.lx, %bb.aj ] ; 3 uses
  %.123.i.i = phi i32 [ %.02237.i.i, %bb.af ], [ %.02237.i.i, %bb.ag ], [ %i.ls, %bb.ai ], [ -1, %bb.aj ]
  %.1.i.i = phi i32 [ %.038.i.i, %bb.af ], [ %i.lt, %bb.ag ], [ %.038.i.i, %bb.ai ], [ %.038.i.i, %bb.aj ] ; 3 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ly = sext i32 %.val29.i.i to i64
  %i.lz = icmp slt i64 %indvars.iv.next.i.i, %i.ly
  br i1 %i.lz, label %bb.af, label %.critedge.i.i, !llvm.loop !102

.critedge.i.i:                                    ; preds = %bb.ak
  store i32 %.125.i.i, ptr %i.lo, align 4, !tbaa !47
  %i.ma = icmp eq i32 %.125.i.i, 0
  br i1 %i.ma, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %.critedge.i.i, %.critedge.thread.i.i
  %i.mb = phi ptr [ %.pre.i212, %.critedge.thread.i.i ], [ %.val31.i.i, %.critedge.i.i ] ; 3 uses
  %.0.lcssa48.i.i = phi i32 [ 0, %.critedge.thread.i.i ], [ %.1.i.i, %.critedge.i.i ]
  %i.mc = load i32, ptr %i.ln, align 8, !tbaa !49
  %i.md = icmp eq i32 %i.mc, 0
  %i.me = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  br i1 %i.md, label %bb.am, label %Vec_IntPush.exit.i.i

bb.am:                                            ; preds = %bb.al
  %.not9.i.i.i.i = icmp eq ptr %i.mb, null
  br i1 %.not9.i.i.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.mf = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.mb, i64 noundef 64) #32
  %.pre43.pre.i.i = load i32, ptr %i.lo, align 4, !tbaa !47
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

bb.ao:                                            ; preds = %bb.am
  %i.mg = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #31
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

Vec_IntGrow.exit11.sink.split.i.i.i:              ; preds = %bb.ao, %bb.an
  %.pre43.i.i = phi i32 [ %.pre43.pre.i.i, %bb.an ], [ 0, %bb.ao ]
  %i.mh = phi ptr [ %i.mf, %bb.an ], [ %i.mg, %bb.ao ] ; 2 uses
  store ptr %i.mh, ptr %i.me, align 8, !tbaa !38
  store i32 16, ptr %i.ln, align 8, !tbaa !49
  br label %Vec_IntPush.exit.i.i

Vec_IntPush.exit.i.i:                             ; preds = %Vec_IntGrow.exit11.sink.split.i.i.i, %bb.al
  %i.mi = phi i32 [ %.pre43.i.i, %Vec_IntGrow.exit11.sink.split.i.i.i ], [ 0, %bb.al ] ; 2 uses
  %i.mj = phi ptr [ %i.mh, %Vec_IntGrow.exit11.sink.split.i.i.i ], [ %i.mb, %bb.al ]
  %i.mk = add nsw i32 %i.mi, 1
  store i32 %i.mk, ptr %i.lo, align 4, !tbaa !47
  %i.ml = sext i32 %i.mi to i64
  %i.mm = getelementptr inbounds [4 x i8], ptr %i.mj, i64 %i.ml
  store i32 %.0.lcssa48.i.i, ptr %i.mm, align 4, !tbaa !40
  br label %Gia_ManSuperCollect.exit

bb.ap:                                            ; preds = %.critedge.i.i
  %.not.i.i213 = icmp eq i32 %.1.i.i, 0
  br i1 %.not.i.i213, label %Gia_ManSuperCollect.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
end_hunk_0
begin_hunk_1_@Str_MuxToGia_rec:bb.a
Gia_ObjIsMuxId.exit.i:                            ; preds = %bb.c
  %i.aa = getelementptr inbounds [4 x i8], ptr %.val44.i, i64 %i.v
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !40 ; 2 uses
  %.not2.i = icmp eq i32 %i.ab, 0
  br i1 %.not2.i, label %Gia_ObjIsMuxId.exit.thread.i, label %Gia_ObjFaninId2.exit.i

Gia_ObjFaninId2.exit.i:                           ; preds = %Gia_ObjIsMuxId.exit.i
  %i.ac = getelementptr i8, ptr %0, i64 32
  %.val37.i = load ptr, ptr %i.ac, align 8, !tbaa !48
  %i.ad = getelementptr inbounds [12 x i8], ptr %.val37.i, i64 %i.v
  %.val47.i = load i64, ptr %i.ad, align 4        ; 2 uses
  %i.ae = trunc i64 %.val47.i to i32
  %i.af = and i32 %i.ae, 536870911
  %i.ag = sub nsw i32 %i.r, %i.af
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !40 ; 2 uses
  %i.ak = lshr i64 %.val47.i, 32
  %i.al = trunc nuw i64 %i.ak to i32
  %i.am = and i32 %i.al, 536870911
  %i.an = sub nsw i32 %i.r, %i.am
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !40 ; 2 uses
  %i.ar = ashr i32 %i.ab, 1
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !40 ; 2 uses
  %i.av = ashr i32 %i.aj, 4                       ; 2 uses
  %i.aw = ashr i32 %i.aq, 4                       ; 2 uses
  %i.ax = tail call noundef i32 @llvm.smax.i32(i32 %i.av, i32 %i.aw) ; 2 uses
  %i.ay = ashr i32 %i.au, 4                       ; 2 uses
  %i.az = tail call noundef i32 @llvm.smax.i32(i32 %i.ax, i32 %i.ay) ; 3 uses
  %i.ba = icmp eq i32 %i.az, %i.av
  %i.bb = and i32 %i.aj, 15
  %i.bc = select i1 %i.ba, i32 %i.bb, i32 1
  %i.bd = icmp eq i32 %i.az, %i.aw
  %i.be = and i32 %i.aq, 15
  %i.bf = select i1 %i.bd, i32 %i.be, i32 1
  %.not.i52.i = icmp slt i32 %i.ay, %i.ax
  %i.bg = and i32 %i.au, 15
  %i.bh = select i1 %.not.i52.i, i32 1, i32 %i.bg
  %i.bi = add nuw nsw i32 %i.bf, %i.bh
  %i.bj = add nuw nsw i32 %i.bi, %i.bc            ; 2 uses
  %i.bk = shl nsw i32 %i.az, 4
  %i.bl = icmp sgt i32 %i.bj, %i.t
  %i.bm = select i1 %i.bl, i32 19, i32 %i.bj
  %i.bn = add nsw i32 %i.bm, %i.bk
  br label %bb.d

Gia_ObjIsMuxId.exit.thread.i:                     ; preds = %Gia_ObjIsMuxId.exit.i, %bb.c
  %i.bo = getelementptr i8, ptr %0, i64 32
  %.val35.i = load ptr, ptr %i.bo, align 8, !tbaa !48
  %i.bp = getelementptr inbounds [12 x i8], ptr %.val35.i, i64 %i.v
  %.val46.i = load i64, ptr %i.bp, align 4        ; 2 uses
  %i.bq = trunc i64 %.val46.i to i32
  %i.br = and i32 %i.bq, 536870911
  %i.bs = sub nsw i32 %i.r, %i.br
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !40 ; 2 uses
  %i.bw = lshr i64 %.val46.i, 32
  %i.bx = trunc nuw i64 %i.bw to i32
  %i.by = and i32 %i.bx, 536870911
  %i.bz = sub nsw i32 %i.r, %i.by
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !40 ; 2 uses
  %i.cd = ashr i32 %i.bv, 4                       ; 3 uses
  %i.ce = ashr i32 %i.cc, 4                       ; 3 uses
  %i.cf = tail call noundef i32 @llvm.smax.i32(i32 %i.cd, i32 %i.ce)
  %.not.i53.i = icmp slt i32 %i.cd, %i.ce
  %i.cg = and i32 %i.bv, 15
  %i.ch = select i1 %.not.i53.i, i32 1, i32 %i.cg
  %.not13.i.i = icmp slt i32 %i.ce, %i.cd
  %i.ci = and i32 %i.cc, 15
  %i.cj = select i1 %.not13.i.i, i32 1, i32 %i.ci
  %i.ck = add nuw nsw i32 %i.ch, %i.cj            ; 2 uses
  %i.cl = shl nsw i32 %i.cf, 4
  %i.cm = icmp sgt i32 %i.ck, %i.t
  %i.cn = select i1 %i.cm, i32 18, i32 %i.ck
  %i.co = add nsw i32 %i.cn, %i.cl
  br label %bb.d

bb.d:                                             ; preds = %Gia_ObjIsMuxId.exit.thread.i, %Gia_ObjFaninId2.exit.i
  %.0.i = phi i32 [ %i.bn, %Gia_ObjFaninId2.exit.i ], [ %i.co, %Gia_ObjIsMuxId.exit.thread.i ]
  store i32 %.0.i, ptr %i.w, align 4, !tbaa !40
  br label %Str_ObjDelay.exit

Str_ObjDelay.exit:                                ; preds = %bb.d, %bb.b, %bb.a
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !157
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !153
  %i.ct = icmp sgt i32 %i.cs, 0
  %i.cu = zext i1 %i.ct to i32
  %i.cv = xor i32 %i.cq, %i.cu
  ret i32 %i.cv
}

; Function Attrs: nounwind uwtable
define void @Str_MuxChangeOnce(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr noundef %5, ptr nofree noundef readonly captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %4, null
  %.pre = sext i32 %3 to i64                      ; 2 uses
  br i1 %.not, label %._crit_edge129, label %bb.b

._crit_edge129:                                   ; preds = %bb.a
  %.pre130 = sext i32 %2 to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds [4 x i8], ptr %1, i64 %.pre
  %i.b = load i32, ptr %i.a, align 4, !tbaa !40
  %i.c = ashr i32 %i.b, 1
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [64 x i8], ptr %0, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(64) %i.e, i64 64, i1 false), !tbaa.struct !159
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.g = sext i32 %2 to i64                       ; 2 uses
  %i.h = getelementptr [4 x i8], ptr %1, i64 %i.g ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !40
  %i.k = ashr i32 %i.j, 1
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [64 x i8], ptr %0, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.f, ptr noundef nonnull align 4 dereferenceable(64) %i.m, i64 64, i1 false), !tbaa.struct !159
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.o = load i32, ptr %i.h, align 4, !tbaa !40
  %i.p = ashr i32 %i.o, 1
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [64 x i8], ptr %0, i64 %i.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.n, ptr noundef nonnull align 4 dereferenceable(64) %i.r, i64 64, i1 false), !tbaa.struct !159
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge129, %bb.b
  %.pre-phi131 = phi i64 [ %.pre130, %._crit_edge129 ], [ %i.g, %bb.b ] ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %1, i64 %.pre
  %i.t = load i32, ptr %i.s, align 4, !tbaa !40   ; 2 uses
  %i.u = ashr i32 %i.t, 1
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [64 x i8], ptr %0, i64 %i.v
  %i.x = add nsw i32 %2, 1                        ; 2 uses
  %i.y = sext i32 %i.x to i64                     ; 4 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %1, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !40  ; 2 uses
  %i.ab = ashr i32 %i.aa, 1
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [64 x i8], ptr %0, i64 %i.ac
  %i.ae = getelementptr inbounds [4 x i8], ptr %1, i64 %.pre-phi131 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !40 ; 2 uses
  %i.ag = ashr i32 %i.af, 1
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [64 x i8], ptr %0, i64 %i.ah ; 4 uses
  %i.aj = and i32 %i.t, 1
  %i.ak = and i32 %i.aa, 1
  %i.al = and i32 %i.af, 1                        ; 2 uses
  %i.am = icmp slt i32 %i.x, %3                   ; 2 uses
  br i1 %i.am, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.an = xor i32 %2, -1
  %i.ao = add i32 %3, %i.an                       ; 3 uses
  %i.ap = add i32 %3, -2
  %xtraiter = and i32 %i.ao, 1
  %i.aq = icmp eq i32 %i.ap, %2
  br i1 %i.aq, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.ao, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ %i.y, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.0107 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.bn, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ar = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !40 ; 2 uses
  %i.at = ashr i32 %i.as, 1
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [64 x i8], ptr %0, i64 %i.au
  %i.aw = and i32 %i.as, 1
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 20
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !153
  %i.bb = xor i32 %i.ba, %.0107
  %i.bc = getelementptr [4 x i8], ptr %1, i64 %indvars.iv
  %i.bd = getelementptr i8, ptr %i.bc, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !40 ; 2 uses
  %i.bf = ashr i32 %i.be, 1
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [64 x i8], ptr %0, i64 %i.bg
  %i.bi = and i32 %i.be, 1
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 20
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !153
  %i.bn = xor i32 %i.bm, %i.bb                    ; 3 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !160

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ %i.y, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.0107.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.bn, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod139 = trunc i32 %i.ao to i1
  tail call void @llvm.assume(i1 %lcmp.mod139)
  %i.bo = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !40 ; 2 uses
  %i.bq = ashr i32 %i.bp, 1
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [64 x i8], ptr %0, i64 %i.br
  %i.bt = and i32 %i.bp, 1
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 20
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !153
  %i.by = xor i32 %i.bx, %.0107.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.c
  %.0.lcssa = phi i32 [ 0, %bb.c ], [ %i.bn, %._crit_edge.loopexit.unr-lcssa ], [ %i.by, %.lr.ph.epil.preheader ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.ca = xor i32 %i.al, 1
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %i.cb ; 4 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !148
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 4 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !153
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ci = zext nneg i32 %i.aj to i64
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %i.ci ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !148
  store i32 %i.ck, ptr %i.cc, align 4, !tbaa !148
  store i32 0, ptr %i.ce, align 4, !tbaa !153
  %i.cl = load i32, ptr %i.ai, align 4, !tbaa !151
  store i32 %i.cl, ptr %i.cj, align 4, !tbaa !148
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.cn = zext nneg i32 %i.ak to i64
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.cm, i64 %i.cn ; 3 uses
  store i32 %i.cd, ptr %i.co, align 4, !tbaa !148
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !153
  %i.cr = xor i32 %i.cq, %i.cf
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !153
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.ct = load <2 x i32>, ptr %i.cg, align 4, !tbaa !40
  store <2 x i32> %i.ct, ptr %i.cs, align 4, !tbaa !40
  br i1 %i.am, label %.lr.ph110, label %._crit_edge111

.lr.ph110:                                        ; preds = %._crit_edge
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ai, i64 56 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !154
  %.promoted = load i32, ptr %i.cu, align 4, !tbaa !150
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph110, %bb.d
  %indvars.iv119 = phi i64 [ %i.y, %.lr.ph110 ], [ %indvars.iv.next120, %bb.d ] ; 2 uses
  %i.cx = phi i32 [ %.promoted, %.lr.ph110 ], [ %i.dq, %bb.d ] ; 2 uses
  %i.cy = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv119
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !40
  %i.da = ashr i32 %i.cz, 1
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [64 x i8], ptr %0, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 56
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !150 ; 2 uses
  %i.df = ashr i32 %i.cx, 4                       ; 3 uses
  %i.dg = ashr i32 %i.de, 4                       ; 3 uses
  %i.dh = tail call noundef i32 @llvm.smax.i32(i32 %i.df, i32 %i.dg)
  %.not.i = icmp slt i32 %i.df, %i.dg
  %i.di = and i32 %i.cx, 15
  %i.dj = select i1 %.not.i, i32 1, i32 %i.di
  %.not13.i = icmp slt i32 %i.dg, %i.df
  %i.dk = and i32 %i.de, 15
  %i.dl = select i1 %.not13.i, i32 1, i32 %i.dk
  %i.dm = add nuw nsw i32 %i.dj, %i.dl            ; 2 uses
  %i.dn = shl nsw i32 %i.dh, 4
  %i.do = icmp sgt i32 %i.dm, %i.cw
  %i.dp = select i1 %i.do, i32 18, i32 %i.dm
  %i.dq = add nsw i32 %i.dp, %i.dn                ; 2 uses
  store i32 %i.dq, ptr %i.cu, align 4, !tbaa !150
  %indvars.iv.next120 = add nsw i64 %indvars.iv119, 1 ; 2 uses
  %lftr.wideiv122 = trunc i64 %indvars.iv.next120 to i32
  %exitcond123.not = icmp eq i32 %3, %lftr.wideiv122
  br i1 %exitcond123.not, label %._crit_edge111, label %bb.d, !llvm.loop !161

._crit_edge111:                                   ; preds = %bb.d, %._crit_edge
  %i.dr = icmp eq ptr %5, null
  br i1 %i.dr, label %bb.h, label %.preheader

.preheader:                                       ; preds = %._crit_edge111
  %i.ds = icmp slt i32 %2, %3
  br i1 %i.ds, label %.lr.ph114, label %._crit_edge115

.lr.ph114:                                        ; preds = %.preheader
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.du = getelementptr i8, ptr %6, i64 8
  %i.dv = getelementptr i8, ptr %5, i64 40
  %i.dw = getelementptr i8, ptr %5, i64 32        ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph114, %Str_ObjDelay.exit
  %indvars.iv124 = phi i64 [ %.pre-phi131, %.lr.ph114 ], [ %indvars.iv.next125, %Str_ObjDelay.exit ] ; 2 uses
  %.098113 = phi i32 [ 1, %.lr.ph114 ], [ %i.eh, %Str_ObjDelay.exit ]
  %i.dx = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv124
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !40 ; 2 uses
  %i.dz = ashr i32 %i.dy, 1
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds [64 x i8], ptr %0, i64 %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 60
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !157
  %i.ee = and i32 %i.dy, 1
  %i.ef = xor i32 %i.ed, %i.ee
  %i.eg = xor i32 %i.ef, 1
  %i.eh = tail call i32 @Gia_ManHashAnd(ptr noundef nonnull %5, i32 noundef %.098113, i32 noundef %i.eg) #29 ; 3 uses
  %i.ei = ashr i32 %i.eh, 1                       ; 5 uses
  %i.ej = load i32, ptr %i.dt, align 4, !tbaa !154 ; 2 uses
  %.val = load ptr, ptr %i.du, align 8, !tbaa !38 ; 6 uses
  %i.ek = sext i32 %i.ei to i64                   ; 4 uses
  %i.el = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.ek ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !40
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %bb.f, label %Str_ObjDelay.exit

bb.f:                                             ; preds = %bb.e
  %.val44.i = load ptr, ptr %i.dv, align 8, !tbaa !55 ; 2 uses
  %.not.i.i = icmp eq ptr %.val44.i, null
  br i1 %.not.i.i, label %Gia_ObjIsMuxId.exit.thread.i, label %Gia_ObjIsMuxId.exit.i

Gia_ObjIsMuxId.exit.i:                            ; preds = %bb.f
  %i.eo = getelementptr inbounds [4 x i8], ptr %.val44.i, i64 %i.ek
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !40 ; 2 uses
  %.not2.i = icmp eq i32 %i.ep, 0
  br i1 %.not2.i, label %Gia_ObjIsMuxId.exit.thread.i, label %Gia_ObjFaninId2.exit.i

Gia_ObjFaninId2.exit.i:                           ; preds = %Gia_ObjIsMuxId.exit.i
  %.val37.i = load ptr, ptr %i.dw, align 8, !tbaa !48
  %i.eq = getelementptr inbounds [12 x i8], ptr %.val37.i, i64 %i.ek
  %.val47.i = load i64, ptr %i.eq, align 4        ; 2 uses
  %i.er = trunc i64 %.val47.i to i32
  %i.es = and i32 %i.er, 536870911
  %i.et = sub nsw i32 %i.ei, %i.es
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !40 ; 2 uses
  %i.ex = lshr i64 %.val47.i, 32
  %i.ey = trunc nuw i64 %i.ex to i32
  %i.ez = and i32 %i.ey, 536870911
  %i.fa = sub nsw i32 %i.ei, %i.ez
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !40 ; 2 uses
  %i.fe = ashr i32 %i.ep, 1
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !40 ; 2 uses
  %i.fi = ashr i32 %i.ew, 4                       ; 2 uses
  %i.fj = ashr i32 %i.fd, 4                       ; 2 uses
  %i.fk = tail call noundef i32 @llvm.smax.i32(i32 %i.fi, i32 %i.fj) ; 2 uses
  %i.fl = ashr i32 %i.fh, 4                       ; 2 uses
  %i.fm = tail call noundef i32 @llvm.smax.i32(i32 %i.fk, i32 %i.fl) ; 3 uses
  %i.fn = icmp eq i32 %i.fm, %i.fi
  %i.fo = and i32 %i.ew, 15
  %i.fp = select i1 %i.fn, i32 %i.fo, i32 1
  %i.fq = icmp eq i32 %i.fm, %i.fj
  %i.fr = and i32 %i.fd, 15
  %i.fs = select i1 %i.fq, i32 %i.fr, i32 1
  %.not.i52.i = icmp slt i32 %i.fl, %i.fk
  %i.ft = and i32 %i.fh, 15
  %i.fu = select i1 %.not.i52.i, i32 1, i32 %i.ft
  %i.fv = add nuw nsw i32 %i.fs, %i.fu
  %i.fw = add nuw nsw i32 %i.fv, %i.fp            ; 2 uses
  %i.fx = shl nsw i32 %i.fm, 4
  %i.fy = icmp sgt i32 %i.fw, %i.ej
  %i.fz = select i1 %i.fy, i32 19, i32 %i.fw
  %i.ga = add nsw i32 %i.fz, %i.fx
  br label %bb.g

Gia_ObjIsMuxId.exit.thread.i:                     ; preds = %Gia_ObjIsMuxId.exit.i, %bb.f
  %.val35.i = load ptr, ptr %i.dw, align 8, !tbaa !48
  %i.gb = getelementptr inbounds [12 x i8], ptr %.val35.i, i64 %i.ek
  %.val46.i = load i64, ptr %i.gb, align 4        ; 2 uses
  %i.gc = trunc i64 %.val46.i to i32
  %i.gd = and i32 %i.gc, 536870911
  %i.ge = sub nsw i32 %i.ei, %i.gd
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !40 ; 2 uses
  %i.gi = lshr i64 %.val46.i, 32
  %i.gj = trunc nuw i64 %i.gi to i32
  %i.gk = and i32 %i.gj, 536870911
  %i.gl = sub nsw i32 %i.ei, %i.gk
  %i.gm = sext i32 %i.gl to i64
end_hunk_1
begin_hunk_2_@Str_MuxFindBranching:bb.a
  %i.d = load i32, ptr %i.c, align 4, !tbaa !148  ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %.loopexit, label %.sink.split

.sink.split:                                      ; preds = %bb.a, %.sink.split.backedge
  %.120.sink25 = phi ptr [ %.120.sink25.be, %.sink.split.backedge ], [ %0, %bb.a ] ; 2 uses
  %.sink22 = phi i32 [ %.sink22.be, %.sink.split.backedge ], [ %i.d, %bb.a ]
  %i.f = load i32, ptr %.120.sink25, align 4, !tbaa !151
  %i.g = sext i32 %i.f to i64
  %i.h = sub nsw i64 0, %i.g
  %i.i = getelementptr inbounds [64 x i8], ptr %.120.sink25, i64 %i.h
  %i.j = zext nneg i32 %.sink22 to i64
  %i.k = getelementptr inbounds nuw [64 x i8], ptr %i.i, i64 %i.j
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.e
  %.0 = phi ptr [ %i.x, %bb.e ], [ %i.k, %.sink.split ] ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.m = load i32, ptr %i.l, align 4, !tbaa !148  ; 2 uses
  %i.n = icmp slt i32 %i.m, 1
  %i.o = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.p = load i32, ptr %i.o, align 4, !tbaa !148  ; 3 uses
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = icmp slt i32 %i.p, 1
  br i1 %i.q, label %.loopexit, label %.sink.split.backedge

.sink.split.backedge:                             ; preds = %bb.e, %bb.c
  %.120.sink25.be = phi ptr [ %.0, %bb.c ], [ %i.x, %bb.e ]
  %.sink22.be = phi i32 [ %i.p, %bb.c ], [ %.pre, %bb.e ]
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.r = icmp sgt i32 %i.p, 0
  br i1 %i.r, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr %.0, align 4, !tbaa !151
  %i.t = sext i32 %i.s to i64
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [64 x i8], ptr %.0, i64 %i.u
  %i.w = zext nneg i32 %i.m to i64
  %i.x = getelementptr inbounds nuw [64 x i8], ptr %i.v, i64 %i.w ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !148 ; 2 uses
  %i.y = icmp sgt i32 %.pre, 0
  br i1 %i.y, label %.sink.split.backedge, label %bb.b

.loopexit:                                        ; preds = %bb.c, %bb.d, %bb.a
  %.013 = phi ptr [ null, %bb.a ], [ %.0, %bb.d ], [ null, %bb.c ]
  ret ptr %.013
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Str_MuxTryOnce(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [10000 x i32], align 16           ; 7 uses
  %7 = alloca [3 x %struct.Str_Mux_t_], align 16  ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.c = tail call i32 @Str_MuxDelayEdge_rec(ptr noundef %3, i32 noundef %4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i32 0, ptr %i.b, align 4, !tbaa !40
  %i.d = call i32 @Str_MuxFindPathEdge_rec(ptr noundef %3, i32 noundef %4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %6, 0                       ; 4 uses
  %.pre = load i32, ptr %i.b, align 4, !tbaa !40  ; 5 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %3, align 4, !tbaa !151
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.f, i32 noundef %.pre) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = icmp sgt i32 %.pre, 0
  br i1 %i.h, label %.lr.ph70, label %._crit_edge71.thread

.lr.ph70:                                         ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 128 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.l = add nsw i32 %.pre, -2
  %i.m = zext nneg i32 %.pre to i64
  %wide.trip.count84 = zext nneg i32 %.pre to i64 ; 2 uses
  %invariant.op = add nsw i64 %i.m, -2
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph70, %._crit_edge
  %indvars.iv81 = phi i64 [ 0, %.lr.ph70 ], [ %indvars.iv.next82.pre-phi, %._crit_edge ] ; 5 uses
  %indvars.iv77 = phi i32 [ %i.l, %.lr.ph70 ], [ %indvars.iv.next78, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ 2, %.lr.ph70 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.068 = phi i32 [ 0, %.lr.ph70 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.05067 = phi i32 [ -1, %.lr.ph70 ], [ %.151.lcssa, %._crit_edge ] ; 2 uses
  %.05465 = phi i32 [ %i.c, %.lr.ph70 ], [ %.155.lcssa, %._crit_edge ] ; 2 uses
  %i.n = icmp slt i64 %indvars.iv81, %invariant.op
  br i1 %i.n, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.e
  %.pre86 = add nuw nsw i64 %indvars.iv81, 1
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.o = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv81 ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !40   ; 2 uses
  %i.r = ashr i32 %i.q, 1
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [64 x i8], ptr %2, i64 %i.s ; 3 uses
  %i.u = load i32, ptr %i.o, align 4, !tbaa !40   ; 2 uses
  %i.v = ashr i32 %i.u, 1
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [64 x i8], ptr %2, i64 %i.w ; 5 uses
  %i.y = add nuw nsw i64 %indvars.iv81, 1         ; 3 uses
  %i.z = and i32 %i.q, 1
  %i.aa = and i32 %i.u, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ac = xor i32 %i.aa, 1
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.ad ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ai = zext nneg i32 %i.z to i64
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.ai ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 56 ; 2 uses
  %i.an = trunc nuw nsw i64 %indvars.iv81 to i32  ; 2 uses
  %i.ao = shl i32 %i.an, 16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph, %bb.k
  %indvars.iv75 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next76, %bb.k ] ; 6 uses
  %.15161 = phi i32 [ %.05067, %.lr.ph ], [ %.2, %bb.k ] ; 2 uses
  %.15559 = phi i32 [ %.05465, %.lr.ph ], [ %.256, %bb.k ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv75
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !40 ; 2 uses
  %i.ar = ashr i32 %i.aq, 1
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [64 x i8], ptr %2, i64 %i.as ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %7, ptr noundef nonnull align 4 dereferenceable(64) %i.at, i64 64, i1 false), !tbaa.struct !159
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.i, ptr noundef nonnull align 4 dereferenceable(64) %i.t, i64 64, i1 false), !tbaa.struct !159
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.j, ptr noundef nonnull align 4 dereferenceable(64) %i.x, i64 64, i1 false), !tbaa.struct !159
  %i.au = and i32 %i.aq, 1
  %i.av = icmp samesign ult i64 %i.y, %indvars.iv75
  %i.aw = load i32, ptr %i.ae, align 4, !tbaa !148
  %i.ax = load i32, ptr %i.af, align 4, !tbaa !153
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.az = zext nneg i32 %i.au to i64
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !148
  store i32 %i.bb, ptr %i.ae, align 4, !tbaa !148
  store i32 0, ptr %i.af, align 4, !tbaa !153
  %i.bc = load i32, ptr %i.x, align 4, !tbaa !151
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !148
  store i32 %i.aw, ptr %i.aj, align 4, !tbaa !148
  %i.bd = load i32, ptr %i.ak, align 4, !tbaa !153
  %i.be = xor i32 %i.bd, %i.ax
  store i32 %i.be, ptr %i.ak, align 4, !tbaa !153
  %i.bf = load <2 x i32>, ptr %i.ag, align 4, !tbaa !40
  store <2 x i32> %i.bf, ptr %i.al, align 4, !tbaa !40
  br i1 %i.av, label %.lr.ph110.i, label %Str_MuxChangeOnce.exit

.lr.ph110.i:                                      ; preds = %._crit_edge.i
  %i.bg = load i32, ptr %i.k, align 4, !tbaa !154
  %.promoted.i = load i32, ptr %i.am, align 4, !tbaa !150
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph110.i
  %indvars.iv119.i = phi i64 [ %i.y, %.lr.ph110.i ], [ %indvars.iv.next120.i, %bb.f ] ; 2 uses
  %i.bh = phi i32 [ %.promoted.i, %.lr.ph110.i ], [ %i.ca, %bb.f ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv119.i
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !40
  %i.bk = ashr i32 %i.bj, 1
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [64 x i8], ptr %2, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !150 ; 2 uses
  %i.bp = ashr i32 %i.bh, 4                       ; 3 uses
  %i.bq = ashr i32 %i.bo, 4                       ; 3 uses
  %i.br = tail call noundef i32 @llvm.smax.i32(i32 %i.bp, i32 %i.bq)
  %.not.i.i = icmp slt i32 %i.bp, %i.bq
  %i.bs = and i32 %i.bh, 15
  %i.bt = select i1 %.not.i.i, i32 1, i32 %i.bs
  %.not13.i.i = icmp slt i32 %i.bq, %i.bp
  %i.bu = and i32 %i.bo, 15
  %i.bv = select i1 %.not13.i.i, i32 1, i32 %i.bu
  %i.bw = add nuw nsw i32 %i.bt, %i.bv            ; 2 uses
  %i.bx = shl nsw i32 %i.br, 4
  %i.by = icmp sgt i32 %i.bw, %i.bg
  %i.bz = select i1 %i.by, i32 18, i32 %i.bw
  %i.ca = add nsw i32 %i.bz, %i.bx                ; 2 uses
  store i32 %i.ca, ptr %i.am, align 4, !tbaa !150
  %indvars.iv.next120.i = add nuw nsw i64 %indvars.iv119.i, 1 ; 2 uses
  %8 = and i64 %indvars.iv.next120.i, 4294967295
  %exitcond = icmp eq i64 %8, %indvars.iv75
  br i1 %exitcond, label %Str_MuxChangeOnce.exit, label %bb.f, !llvm.loop !161

Str_MuxChangeOnce.exit:                           ; preds = %bb.f, %._crit_edge.i
  %i.cb = tail call i32 @Str_MuxDelayEdge_rec(ptr noundef %3, i32 noundef %4) ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.at, ptr noundef nonnull readonly align 16 dereferenceable(64) %7, i64 64, i1 false), !tbaa.struct !159
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(64) %i.i, i64 64, i1 false), !tbaa.struct !159
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.x, ptr noundef nonnull readonly align 16 dereferenceable(64) %i.j, i64 64, i1 false), !tbaa.struct !159
  %i.cc = icmp sgt i32 %.15559, %i.cb
  br i1 %i.cc, label %bb.h, label %bb.g

bb.g:                                             ; preds = %Str_MuxChangeOnce.exit
  %i.cd = icmp sgt i32 %.15161, 0
  %i.ce = icmp eq i32 %.15559, %i.cb
  %or.cond = select i1 %i.cd, i1 %i.ce, i1 false
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %Str_MuxChangeOnce.exit
  %i.cf = trunc nuw nsw i64 %indvars.iv75 to i32
  %i.cg = or i32 %i.ao, %i.cf
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.256 = phi i32 [ %i.cb, %bb.h ], [ %.15559, %bb.g ] ; 3 uses
  %.2 = phi i32 [ %i.cg, %bb.h ], [ %.15161, %bb.g ] ; 2 uses
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ch = trunc nuw nsw i64 %indvars.iv75 to i32
  %i.ci = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.an, i32 noundef %i.ch, i32 noundef %i.cb, i32 noundef %.256) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %exitcond80.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count84
  br i1 %exitcond80.not, label %._crit_edge.loopexit, label %._crit_edge.i, !llvm.loop !164

._crit_edge.loopexit:                             ; preds = %bb.k
  %i.cj = add i32 %.068, %indvars.iv77
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %._crit_edge.loopexit
  %indvars.iv.next82.pre-phi = phi i64 [ %.pre86, %.._crit_edge_crit_edge ], [ %i.y, %._crit_edge.loopexit ] ; 2 uses
  %.155.lcssa = phi i32 [ %.05465, %.._crit_edge_crit_edge ], [ %.256, %._crit_edge.loopexit ] ; 2 uses
  %.151.lcssa = phi i32 [ %.05067, %.._crit_edge_crit_edge ], [ %.2, %._crit_edge.loopexit ] ; 4 uses
  %.1.lcssa = phi i32 [ %.068, %.._crit_edge_crit_edge ], [ %i.cj, %._crit_edge.loopexit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next78 = add i32 %indvars.iv77, -1
  %exitcond85.not = icmp eq i64 %indvars.iv.next82.pre-phi, %wide.trip.count84
  br i1 %exitcond85.not, label %._crit_edge71, label %bb.e, !llvm.loop !165

._crit_edge71:                                    ; preds = %._crit_edge
  %i.ck = icmp eq i32 %.151.lcssa, -1
  br i1 %i.ck, label %._crit_edge71.thread, label %bb.m

._crit_edge71.thread:                             ; preds = %bb.d, %._crit_edge71
  br i1 %.not, label %.critedge, label %bb.l

bb.l:                                             ; preds = %._crit_edge71.thread
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %.critedge

bb.m:                                             ; preds = %._crit_edge71
  %i.cl = ashr i32 %.151.lcssa, 16                ; 2 uses
  %i.cm = and i32 %.151.lcssa, 65535              ; 2 uses
  call void @Str_MuxChangeOnce(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %i.cl, i32 noundef %i.cm, ptr noundef null, ptr noundef %0, ptr noundef %5)
  br i1 %.not, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cn = load i32, ptr %3, align 4, !tbaa !151
  %i.co = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.cn, i32 noundef %i.cl, i32 noundef %i.cm, i32 noundef %.1.lcssa, i32 noundef %i.c, i32 noundef %.155.lcssa) ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.n, %bb.m, %._crit_edge71.thread, %bb.l, %bb.a
  %.057 = phi i32 [ 0, %._crit_edge71.thread ], [ 0, %bb.a ], [ 0, %bb.l ], [ 1, %bb.m ], [ 1, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i32 %.057
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Str_MuxRestruct_rec(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = sext i32 %4 to i64
  %i.c = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !148  ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %.thread, label %.sink.split

.sink.split:                                      ; preds = %bb.a, %.sink.split.backedge
  %.120.i.sink45 = phi ptr [ %.120.i.sink45.be, %.sink.split.backedge ], [ %3, %bb.a ] ; 2 uses
  %.sink42 = phi i32 [ %.sink42.be, %.sink.split.backedge ], [ %i.d, %bb.a ]
  %i.f = load i32, ptr %.120.i.sink45, align 4, !tbaa !151
  %i.g = sext i32 %i.f to i64
  %i.h = sub nsw i64 0, %i.g
  %i.i = getelementptr inbounds [64 x i8], ptr %.120.i.sink45, i64 %i.h
  %i.j = zext nneg i32 %.sink42 to i64
  %i.k = getelementptr inbounds nuw [64 x i8], ptr %i.i, i64 %i.j
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.e
  %.0.i = phi ptr [ %i.x, %bb.e ], [ %i.k, %.sink.split ] ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.m = load i32, ptr %i.l, align 4, !tbaa !148  ; 2 uses
  %i.n = icmp slt i32 %i.m, 1
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.p = load i32, ptr %i.o, align 4, !tbaa !148  ; 3 uses
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = icmp slt i32 %i.p, 1
  br i1 %i.q, label %.thread, label %.sink.split.backedge

.sink.split.backedge:                             ; preds = %bb.e, %bb.c
  %.120.i.sink45.be = phi ptr [ %.0.i, %bb.c ], [ %i.x, %bb.e ]
  %.sink42.be = phi i32 [ %i.p, %bb.c ], [ %.pre.i, %bb.e ]
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.r = icmp sgt i32 %i.p, 0
  br i1 %i.r, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr %.0.i, align 4, !tbaa !151
  %i.t = sext i32 %i.s to i64
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [64 x i8], ptr %.0.i, i64 %i.u
  %i.w = zext nneg i32 %i.m to i64
  %i.x = getelementptr inbounds nuw [64 x i8], ptr %i.v, i64 %i.w ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !148 ; 2 uses
  %i.y = icmp sgt i32 %.pre.i, 0
  br i1 %i.y, label %.sink.split.backedge, label %bb.b

bb.f:                                             ; preds = %bb.d
  %i.z = tail call i32 @Str_MuxRestruct_rec(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %.0.i, i32 noundef 0, ptr noundef %5, i32 noundef %6)
  %i.aa = tail call i32 @Str_MuxRestruct_rec(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %.0.i, i32 noundef 1, ptr noundef %5, i32 noundef %6)
  %i.ab = or i32 %i.aa, %i.z
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.a, %bb.f
  %.1 = phi i32 [ %i.ab, %bb.f ], [ 0, %bb.a ], [ 0, %bb.c ]
  %i.ac = tail call i32 @Str_MuxTryOnce(ptr noundef %0, ptr poison, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6)
  %i.ad = or i32 %i.ac, %.1
  ret i32 %i.ad
}

; Function Attrs: nounwind uwtable
define i32 @Str_MuxRestructure2(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca [10000 x %struct.Str_Mux_t_], align 16 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.a = icmp sgt i32 %3, 9999
  br i1 %i.a, label %.loopexit.thread, label %.peel.begin

.peel.begin:                                      ; preds = %bb.a
  call void @Str_MuxCreate(ptr noundef nonnull %7, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5)
  %i.b = call i32 @Str_MuxDelayEdge_rec(ptr noundef nonnull %7, i32 noundef 0)
  %i.c = call i32 @Str_MuxRestruct_rec(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %7, i32 noundef 0, ptr noundef %4, i32 noundef %6)
  %.not.peel = icmp eq i32 %i.c, 0
  br i1 %.not.peel, label %.loopexit.thread, label %.peel.next

.peel.next:                                       ; preds = %.peel.begin, %.peel.next
  %i.d = call i32 @Str_MuxRestruct_rec(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %7, i32 noundef 0, ptr noundef %4, i32 noundef %6)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.loopexit, label %.peel.next, !llvm.loop !166

.loopexit:                                        ; preds = %.peel.next
  %i.e = call i32 @Str_MuxDelayEdge_rec(ptr noundef nonnull %7, i32 noundef 0)
  %i.f = sub i32 %i.b, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !168
  %i.i = add nsw i32 %i.f, %i.h
  store i32 %i.i, ptr %i.g, align 8, !tbaa !168
  %i.j = call i32 @Str_MuxToGia_rec(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 0, ptr noundef %4)
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.peel.begin, %bb.a, %.loopexit
  %.017 = phi i32 [ -1, %bb.a ], [ %i.j, %.loopexit ], [ -1, %.peel.begin ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  ret i32 %.017
}

; Function Attrs: nounwind uwtable
define i32 @Str_MuxRestructure1(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca [10000 x %struct.Str_Mux_t_], align 16 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.a = icmp sgt i32 %3, 9999
  br i1 %i.a, label %.loopexit.thread, label %.peel.begin

.peel.begin:                                      ; preds = %bb.a
  call void @Str_MuxCreate(ptr noundef nonnull %7, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5)
  %i.b = call i32 @Str_MuxDelayEdge_rec(ptr noundef nonnull %7, i32 noundef 0)
  %i.c = call i32 @Str_MuxTryOnce(ptr noundef %0, ptr poison, ptr noundef nonnull %7, ptr noundef nonnull %7, i32 noundef 0, ptr noundef %4, i32 noundef %6)
  %.not.peel = icmp eq i32 %i.c, 0
  br i1 %.not.peel, label %.loopexit.thread, label %.peel.next

end_hunk_2
