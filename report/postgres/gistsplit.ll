inline.NumInlined: 19
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@gistSplitByKey:bb.a
  br label %gistSplitHalf.exit

bb.s:                                             ; preds = %bb.q
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i32 0, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  store i32 0, ptr %i.cb, align 8
  %i.cc = tail call ptr @palloc(i64 noundef %i.g) #7
  store ptr %i.cc, ptr %5, align 8
  %i.cd = tail call ptr @palloc(i64 noundef %i.g) #7
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store ptr %i.cd, ptr %i.ce, align 8
  br i1 %.not155, label %gistSplitHalf.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s
  %i.cf = lshr i32 %3, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %.lr.ph.i
  %.018.i = phi i32 [ 1, %.lr.ph.i ], [ %i.cq, %bb.w ] ; 4 uses
  %i.cg = icmp samesign ult i32 %.018.i, %i.cf
  %i.ch = trunc i32 %.018.i to i16
  br i1 %i.cg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ci = load ptr, ptr %i.ce, align 8
  %i.cj = load i32, ptr %i.cb, align 8            ; 2 uses
  %i.ck = add i32 %i.cj, 1
  store i32 %i.ck, ptr %i.cb, align 8
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.cl = load ptr, ptr %5, align 8
  %i.cm = load i32, ptr %i.ca, align 8            ; 2 uses
  %i.cn = add i32 %i.cm, 1
  store i32 %i.cn, ptr %i.ca, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sink.i = phi i32 [ %i.cj, %bb.u ], [ %i.cm, %bb.v ]
  %.sink20.i = phi ptr [ %i.ci, %bb.u ], [ %i.cl, %bb.v ]
  %i.co = sext i32 %.sink.i to i64
  %i.cp = getelementptr inbounds [2 x i8], ptr %.sink20.i, i64 %i.co
  store i16 %i.ch, ptr %i.cp, align 2
  %i.cq = add nuw nsw i32 %.018.i, 1
  %exitcond.i = icmp eq i32 %.018.i, %3
  br i1 %exitcond.i, label %gistSplitHalf.exit, label %bb.t, !llvm.loop !8

bb.x:                                             ; preds = %._crit_edge
  %i.cr = icmp sgt i32 %.1146, 0
  br i1 %i.cr, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.h, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  store i32 %.1146, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 608
  %i.cv = sext i32 %6 to i64
  %i.cw = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  store i8 1, ptr %i.cw, align 1
  %i.cx = tail call ptr @palloc(i64 noundef %i.g) #7
  store ptr %i.cx, ptr %5, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i32 0, ptr %i.cy, align 8
  br label %.lr.ph179

.lr.ph179:                                        ; preds = %bb.y, %bb.ac
  %.0141177 = phi i32 [ %.1142, %bb.ac ], [ 0, %bb.y ] ; 4 uses
  %.1144175 = phi i32 [ %i.dn, %bb.ac ], [ 1, %bb.y ] ; 4 uses
  %i.cz = load i32, ptr %i.ct, align 8
  %i.da = icmp slt i32 %.0141177, %i.cz
  br i1 %i.da, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %.lr.ph179
  %i.db = sext i32 %.0141177 to i64
  %i.dc = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.db
  %i.dd = load i16, ptr %i.dc, align 2
  %i.de = zext i16 %i.dd to i32
  %i.df = icmp eq i32 %.1144175, %i.de
  br i1 %i.df, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dg = add nsw i32 %.0141177, 1
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z, %.lr.ph179
  %i.dh = trunc i32 %.1144175 to i16
  %i.di = load ptr, ptr %5, align 8
  %i.dj = load i32, ptr %i.cy, align 8            ; 2 uses
  %i.dk = add i32 %i.dj, 1
  store i32 %i.dk, ptr %i.cy, align 8
  %i.dl = sext i32 %i.dj to i64
  %i.dm = getelementptr inbounds [2 x i8], ptr %i.di, i64 %i.dl
  store i16 %i.dh, ptr %i.dm, align 2
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %.1142 = phi i32 [ %i.dg, %bb.aa ], [ %.0141177, %bb.ab ]
  %i.dn = add nuw nsw i32 %.1144175, 1
  %exitcond190 = icmp eq i32 %.1144175, %3
  br i1 %exitcond190, label %._crit_edge180, label %.lr.ph179, !llvm.loop !9

._crit_edge180:                                   ; preds = %bb.ac
  %cond = icmp eq i32 %6, 0
  br i1 %cond, label %bb.ad, label %bb.an

bb.ad:                                            ; preds = %._crit_edge180
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = load i32, ptr %i.dp, align 8
  %i.dr = icmp eq i32 %i.dq, 1
  br i1 %i.dr, label %bb.ae, label %gistSplitHalf.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 640
  store ptr null, ptr %i.ds, align 8
  tail call fastcc void @gistunionsubkey(ptr noundef nonnull %4, ptr noundef %2, ptr noundef nonnull %5)
  br label %gistSplitHalf.exit.thread

.thread:                                          ; preds = %._crit_edge.thread, %bb.x
  %i.dt = tail call fastcc zeroext i1 @gistUserPicksplit(ptr noundef %0, ptr noundef nonnull %i.e, i32 noundef %6, ptr noundef %5, ptr noundef %2, ptr noundef %4)
  br i1 %i.dt, label %bb.af, label %gistSplitHalf.exit

bb.af:                                            ; preds = %.thread
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 640 ; 4 uses
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dx = add i32 %6, 1
  tail call void @gistSplitByKey(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %5, i32 noundef %i.dx)
  br label %gistSplitHalf.exit

bb.ah:                                            ; preds = %bb.af
  %i.dy = shl nsw i64 %i.f, 3
  %i.dz = tail call ptr @palloc(i64 noundef %i.dy) #7 ; 4 uses
  %i.ea = tail call ptr @palloc(i64 noundef %i.g) #7 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  %i.eb = icmp sgt i32 %3, 0
  br i1 %i.eb, label %.lr.ph161.preheader, label %._crit_edge162

.lr.ph161.preheader:                              ; preds = %bb.ah
  %wide.trip.count = zext nneg i32 %3 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ec = icmp eq i32 %3, 1
  br i1 %i.ec, label %.lr.ph161.epil.preheader, label %.lr.ph161.preheader.new

.lr.ph161.preheader.new:                          ; preds = %.lr.ph161.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph161

.lr.ph161:                                        ; preds = %bb.ak, %.lr.ph161.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph161.preheader.new ], [ %indvars.iv.next.1, %bb.ak ] ; 3 uses
  %.0159 = phi i32 [ 0, %.lr.ph161.preheader.new ], [ %.1.1, %bb.ak ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph161.preheader.new ], [ %niter.next.1, %bb.ak ]
  %i.ed = load ptr, ptr %i.du, align 8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %indvars.iv.next
  %i.ef = load i8, ptr %i.ee, align 1, !range !4, !noundef !5
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %bb.ai, label %.lr.ph161.1

bb.ai:                                            ; preds = %.lr.ph161
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = sext i32 %.0159 to i64                  ; 2 uses
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %i.ej
  store ptr %i.ei, ptr %i.ek, align 8
  %i.el = trunc i64 %indvars.iv.next to i16
  %i.em = getelementptr inbounds [2 x i8], ptr %i.ea, i64 %i.ej
  store i16 %i.el, ptr %i.em, align 2
  %i.en = add i32 %.0159, 1
  br label %.lr.ph161.1

.lr.ph161.1:                                      ; preds = %.lr.ph161, %bb.ai
  %.1 = phi i32 [ %i.en, %bb.ai ], [ %.0159, %.lr.ph161 ] ; 3 uses
  %i.eo = load ptr, ptr %i.du, align 8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %indvars.iv.next.1
  %i.eq = load i8, ptr %i.ep, align 1, !range !4, !noundef !5
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.lr.ph161.1
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = sext i32 %.1 to i64                     ; 2 uses
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %i.eu
  store ptr %i.et, ptr %i.ev, align 8
  %i.ew = trunc i64 %indvars.iv.next.1 to i16
  %i.ex = getelementptr inbounds [2 x i8], ptr %i.ea, i64 %i.eu
  store i16 %i.ew, ptr %i.ex, align 2
  %i.ey = add i32 %.1, 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.lr.ph161.1
  %.1.1 = phi i32 [ %i.ey, %bb.aj ], [ %.1, %.lr.ph161.1 ] ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge162.loopexit.unr-lcssa, label %.lr.ph161, !llvm.loop !10

._crit_edge162.loopexit.unr-lcssa:                ; preds = %bb.ak
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge162, label %.lr.ph161.epil.preheader

.lr.ph161.epil.preheader:                         ; preds = %._crit_edge162.loopexit.unr-lcssa, %.lr.ph161.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph161.preheader ], [ %indvars.iv.next.1, %._crit_edge162.loopexit.unr-lcssa ] ; 2 uses
  %.0159.epil.init = phi i32 [ 0, %.lr.ph161.preheader ], [ %.1.1, %._crit_edge162.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod205 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod205)
  %i.ez = load ptr, ptr %i.du, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil.init, 1 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %indvars.iv.next.epil
  %i.fb = load i8, ptr %i.fa, align 1, !range !4, !noundef !5
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %bb.al, label %._crit_edge162

bb.al:                                            ; preds = %.lr.ph161.epil.preheader
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil.init
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = sext i32 %.0159.epil.init to i64        ; 2 uses
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %i.ff
  store ptr %i.fe, ptr %i.fg, align 8
  %i.fh = trunc i64 %indvars.iv.next.epil to i16
  %i.fi = getelementptr inbounds [2 x i8], ptr %i.ea, i64 %i.ff
  store i16 %i.fh, ptr %i.fi, align 2
  %i.fj = add i32 %.0159.epil.init, 1
  br label %._crit_edge162

._crit_edge162:                                   ; preds = %._crit_edge162.loopexit.unr-lcssa, %bb.al, %.lr.ph161.epil.preheader, %bb.ah
  %.0.lcssa = phi i32 [ 0, %bb.ah ], [ %.1.1, %._crit_edge162.loopexit.unr-lcssa ], [ %i.fj, %bb.al ], [ %.0159.epil.init, %.lr.ph161.epil.preheader ]
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.9, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.9.0..sroa_idx, i64 20, i1 false)
  %.sroa.96.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 5 uses
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 8 ; 2 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.14, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.14.0..sroa_idx, i64 20, i1 false)
  %i.fk = tail call ptr @palloc_mul(i64 noundef 2, i64 noundef %i.f) #7 ; 3 uses
  %i.fl = load ptr, ptr %5, align 8
  %i.fm = load i32, ptr %.sroa.7.0..sroa_idx, align 8
  %i.fn = sext i32 %i.fm to i64
  %i.fo = shl nsw i64 %i.fn, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.fk, ptr align 2 %i.fl, i64 %i.fo, i1 false)
  %i.fp = tail call ptr @palloc_mul(i64 noundef 2, i64 noundef %i.f) #7 ; 3 uses
  %i.fq = load ptr, ptr %.sroa.96.0..sroa_idx, align 8
  %i.fr = load i32, ptr %.sroa.12.0..sroa_idx, align 8
  %i.fs = sext i32 %i.fr to i64
  %i.ft = shl nsw i64 %i.fs, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.fp, ptr align 2 %i.fq, i64 %i.ft, i1 false)
  %i.fu = add i32 %6, 1
  tail call void @gistSplitByKey(ptr noundef %0, ptr noundef %1, ptr noundef %i.dz, i32 noundef %.0.lcssa, ptr noundef %4, ptr noundef nonnull %5, i32 noundef %i.fu)
  %i.fv = load i32, ptr %.sroa.7.0..sroa_idx, align 8
  %i.fw = icmp sgt i32 %i.fv, 0
  br i1 %i.fw, label %.lr.ph167, label %.preheader

.preheader:                                       ; preds = %.lr.ph167, %._crit_edge162
  %.sroa.7.0.lcssa = phi i32 [ %.sroa.7.0.copyload, %._crit_edge162 ], [ %i.gg, %.lr.ph167 ]
  %i.fx = load i32, ptr %.sroa.12.0..sroa_idx, align 8
  %i.fy = icmp sgt i32 %i.fx, 0
  br i1 %i.fy, label %.lr.ph171, label %._crit_edge172

.lr.ph167:                                        ; preds = %._crit_edge162, %.lr.ph167
  %indvars.iv184 = phi i64 [ %indvars.iv.next185, %.lr.ph167 ], [ 0, %._crit_edge162 ] ; 2 uses
  %.sroa.7.0165 = phi i32 [ %i.gg, %.lr.ph167 ], [ %.sroa.7.0.copyload, %._crit_edge162 ] ; 2 uses
  %i.fz = load ptr, ptr %5, align 8
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.fz, i64 %indvars.iv184
  %i.gb = load i16, ptr %i.ga, align 2
  %i.gc = zext i16 %i.gb to i64
  %i.gd = getelementptr [2 x i8], ptr %i.ea, i64 %i.gc
  %i.ge = getelementptr i8, ptr %i.gd, i64 -2
  %i.gf = load i16, ptr %i.ge, align 2
  %i.gg = add i32 %.sroa.7.0165, 1                ; 2 uses
  %i.gh = sext i32 %.sroa.7.0165 to i64
  %i.gi = getelementptr inbounds [2 x i8], ptr %i.fk, i64 %i.gh
  store i16 %i.gf, ptr %i.gi, align 2
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %i.gj = load i32, ptr %.sroa.7.0..sroa_idx, align 8
  %i.gk = sext i32 %i.gj to i64
  %i.gl = icmp slt i64 %indvars.iv.next185, %i.gk
  br i1 %i.gl, label %.lr.ph167, label %.preheader, !llvm.loop !11

.lr.ph171:                                        ; preds = %.preheader, %.lr.ph171
  %indvars.iv187 = phi i64 [ %indvars.iv.next188, %.lr.ph171 ], [ 0, %.preheader ] ; 2 uses
  %.sroa.12.0170 = phi i32 [ %i.gt, %.lr.ph171 ], [ %.sroa.12.0.copyload, %.preheader ] ; 2 uses
  %i.gm = load ptr, ptr %.sroa.96.0..sroa_idx, align 8
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %i.gm, i64 %indvars.iv187
  %i.go = load i16, ptr %i.gn, align 2
  %i.gp = zext i16 %i.go to i64
  %i.gq = getelementptr [2 x i8], ptr %i.ea, i64 %i.gp
  %i.gr = getelementptr i8, ptr %i.gq, i64 -2
  %i.gs = load i16, ptr %i.gr, align 2
  %i.gt = add i32 %.sroa.12.0170, 1               ; 2 uses
  %i.gu = sext i32 %.sroa.12.0170 to i64
  %i.gv = getelementptr inbounds [2 x i8], ptr %i.fp, i64 %i.gu
  store i16 %i.gs, ptr %i.gv, align 2
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1 ; 2 uses
  %i.gw = load i32, ptr %.sroa.12.0..sroa_idx, align 8
  %i.gx = sext i32 %i.gw to i64
  %i.gy = icmp slt i64 %indvars.iv.next188, %i.gx
  br i1 %i.gy, label %.lr.ph171, label %._crit_edge172, !llvm.loop !12

._crit_edge172:                                   ; preds = %.lr.ph171, %.preheader
  %.sroa.12.0.lcssa = phi i32 [ %.sroa.12.0.copyload, %.preheader ], [ %i.gt, %.lr.ph171 ]
  store ptr %i.fk, ptr %5, align 8
  store i32 %.sroa.7.0.lcssa, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.9, i64 20, i1 false)
  store ptr %i.fp, ptr %.sroa.96.0..sroa_idx, align 8
  store i32 %.sroa.12.0.lcssa, ptr %.sroa.12.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.14, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  br label %gistSplitHalf.exit

gistSplitHalf.exit:                               ; preds = %bb.w, %bb.s, %bb.ag, %._crit_edge172, %.thread, %bb.r
  %i.gz = icmp eq i32 %6, 0
  br i1 %i.gz, label %gistSplitHalf.exit.thread, label %bb.an

gistSplitHalf.exit.thread:                        ; preds = %bb.ae, %bb.ad, %gistSplitHalf.exit
  %i.ha = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.hb = load ptr, ptr %i.ha, align 8
  %i.hc = load i32, ptr %i.hb, align 8
  %i.hd = icmp sgt i32 %i.hc, 1
  br i1 %i.hd, label %bb.am, label %bb.an

bb.am:                                            ; preds = %gistSplitHalf.exit.thread
  %i.he = getelementptr inbounds nuw i8, ptr %5, i64 640
  store ptr null, ptr %i.he, align 8
  tail call fastcc void @gistunionsubkey(ptr noundef nonnull %4, ptr noundef %2, ptr noundef %5)
  br label %bb.an

bb.an:                                            ; preds = %._crit_edge180, %bb.am, %gistSplitHalf.exit.thread, %gistSplitHalf.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @palloc(i64 noundef) local_unnamed_addr #2

declare void @gistdentryinit(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @gistunionsubkey(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 640
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %i.c = load ptr, ptr %2, align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i32, ptr %i.d, align 8              ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 320
  %i.h = sext i32 %i.e to i64
  %i.i = tail call ptr @palloc_mul(i64 noundef 8, i64 noundef %i.h) #7 ; 8 uses
  %i.j = icmp sgt i32 %i.e, 0
  br i1 %i.j, label %.lr.ph.i.preheader, label %gistunionsubkeyvec.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %.not.i = icmp eq ptr %i.b, null
  %i.k = zext nneg i32 %i.e to i64                ; 4 uses
  br i1 %.not.i, label %.lr.ph.i.us.preheader, label %.lr.ph.i.preheader58

.lr.ph.i.preheader58:                             ; preds = %.lr.ph.i.preheader
  %xtraiter = and i64 %i.k, 1
  %i.l = icmp eq i32 %i.e, 1
  br i1 %i.l, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader58.new

.lr.ph.i.preheader58.new:                         ; preds = %.lr.ph.i.preheader58
  %unroll_iter = and i64 %i.k, 2147483646
  br label %.lr.ph.i

.lr.ph.i.us.preheader:                            ; preds = %.lr.ph.i.preheader
  %xtraiter62 = and i64 %i.k, 1
  %i.m = icmp eq i32 %i.e, 1
  br i1 %i.m, label %.lr.ph.i.us.epil.preheader, label %.lr.ph.i.us.preheader.new

.lr.ph.i.us.preheader.new:                        ; preds = %.lr.ph.i.us.preheader
  %unroll_iter65 = and i64 %i.k, 2147483646
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us, %.lr.ph.i.us.preheader.new
  %indvars.iv.i.us = phi i64 [ 0, %.lr.ph.i.us.preheader.new ], [ %indvars.iv.next.i.us.1, %.lr.ph.i.us ] ; 4 uses
  %niter66 = phi i64 [ 0, %.lr.ph.i.us.preheader.new ], [ %niter66.next.1, %.lr.ph.i.us ]
  %.phi.trans.insert.i.us = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.i.us
  %.pre24.i.us = load i16, ptr %.phi.trans.insert.i.us, align 2
  %.pre26.i.us = zext i16 %.pre24.i.us to i64
  %i.n = getelementptr [8 x i8], ptr %1, i64 %.pre26.i.us
  %i.o = getelementptr i8, ptr %i.n, i64 -8
  %i.p = load ptr, ptr %i.o, align 8
  %indvars.iv.next.i.us = or disjoint i64 %indvars.iv.i.us, 1 ; 2 uses
  %sext = shl i64 %indvars.iv.i.us, 32
  %i.q = ashr exact i64 %sext, 29
  %i.r = getelementptr inbounds i8, ptr %i.i, i64 %i.q
  store ptr %i.p, ptr %i.r, align 8
  %.phi.trans.insert.i.us.1 = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.next.i.us
  %.pre24.i.us.1 = load i16, ptr %.phi.trans.insert.i.us.1, align 2
  %.pre26.i.us.1 = zext i16 %.pre24.i.us.1 to i64
  %i.s = getelementptr [8 x i8], ptr %1, i64 %.pre26.i.us.1
  %i.t = getelementptr i8, ptr %i.s, i64 -8
  %i.u = load ptr, ptr %i.t, align 8
  %indvars.iv.next.i.us.1 = add nuw nsw i64 %indvars.iv.i.us, 2 ; 2 uses
  %sext.1 = shl i64 %indvars.iv.next.i.us, 32
  %i.v = ashr exact i64 %sext.1, 29
  %i.w = getelementptr inbounds i8, ptr %i.i, i64 %i.v
  store ptr %i.u, ptr %i.w, align 8
  %niter66.next.1 = add i64 %niter66, 2           ; 2 uses
  %niter66.ncmp.1 = icmp eq i64 %niter66.next.1, %unroll_iter65
  br i1 %niter66.ncmp.1, label %gistunionsubkeyvec.exit.loopexit.unr-lcssa, label %.lr.ph.i.us, !llvm.loop !13

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i.preheader58.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.preheader58.new ], [ %indvars.iv.next.i.1, %bb.b ] ; 3 uses
  %.021.i = phi i32 [ 0, %.lr.ph.i.preheader58.new ], [ %.1.i.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader58.new ], [ %niter.next.1, %bb.b ]
  %.phi.trans.insert.i = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.i
  %.pre24.i = load i16, ptr %.phi.trans.insert.i, align 2
  %.pre26.i = zext i16 %.pre24.i to i64           ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 %.pre26.i
  %i.y = load i8, ptr %i.x, align 1, !range !4, !noundef !5
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %.lr.ph.i.1, label %._crit_edge23.i

._crit_edge23.i:                                  ; preds = %.lr.ph.i
  %i.aa = getelementptr [8 x i8], ptr %1, i64 %.pre26.i
  %i.ab = getelementptr i8, ptr %i.aa, i64 -8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = add i32 %.021.i, 1
  %i.ae = sext i32 %.021.i to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ae
  store ptr %i.ac, ptr %i.af, align 8
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %._crit_edge23.i, %.lr.ph.i
  %.1.i = phi i32 [ %.021.i, %.lr.ph.i ], [ %i.ad, %._crit_edge23.i ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.i
  %.phi.trans.insert.i.1 = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %.pre24.i.1 = load i16, ptr %.phi.trans.insert.i.1, align 2
  %.pre26.i.1 = zext i16 %.pre24.i.1 to i64       ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 %.pre26.i.1
  %i.ai = load i8, ptr %i.ah, align 1, !range !4, !noundef !5
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.b, label %._crit_edge23.i.1

._crit_edge23.i.1:                                ; preds = %.lr.ph.i.1
  %i.ak = getelementptr [8 x i8], ptr %1, i64 %.pre26.i.1
  %i.al = getelementptr i8, ptr %i.ak, i64 -8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = add i32 %.1.i, 1
  %i.ao = sext i32 %.1.i to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ao
  store ptr %i.am, ptr %i.ap, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge23.i.1, %.lr.ph.i.1
  %.1.i.1 = phi i32 [ %.1.i, %.lr.ph.i.1 ], [ %i.an, %._crit_edge23.i.1 ] ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %gistunionsubkeyvec.exit.loopexit59.unr-lcssa, label %.lr.ph.i, !llvm.loop !13

gistunionsubkeyvec.exit.loopexit.unr-lcssa:       ; preds = %.lr.ph.i.us
  %lcmp.mod63.not = icmp eq i64 %xtraiter62, 0
  br i1 %lcmp.mod63.not, label %gistunionsubkeyvec.exit, label %.lr.ph.i.us.epil.preheader

.lr.ph.i.us.epil.preheader:                       ; preds = %gistunionsubkeyvec.exit.loopexit.unr-lcssa, %.lr.ph.i.us.preheader
  %indvars.iv.i.us.epil.init = phi i64 [ 0, %.lr.ph.i.us.preheader ], [ %indvars.iv.next.i.us.1, %gistunionsubkeyvec.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod64 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod64)
  %.phi.trans.insert.i.us.epil = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.i.us.epil.init
  %.pre24.i.us.epil = load i16, ptr %.phi.trans.insert.i.us.epil, align 2
  %.pre26.i.us.epil = zext i16 %.pre24.i.us.epil to i64
  %i.aq = getelementptr [8 x i8], ptr %1, i64 %.pre26.i.us.epil
  %i.ar = getelementptr i8, ptr %i.aq, i64 -8
  %i.as = load ptr, ptr %i.ar, align 8
  %sext.epil = shl i64 %indvars.iv.i.us.epil.init, 32
  %i.at = ashr exact i64 %sext.epil, 29
  %i.au = getelementptr inbounds i8, ptr %i.i, i64 %i.at
  store ptr %i.as, ptr %i.au, align 8
  br label %gistunionsubkeyvec.exit

gistunionsubkeyvec.exit.loopexit59.unr-lcssa:     ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %gistunionsubkeyvec.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %gistunionsubkeyvec.exit.loopexit59.unr-lcssa, %.lr.ph.i.preheader58
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader58 ], [ %indvars.iv.next.i.1, %gistunionsubkeyvec.exit.loopexit59.unr-lcssa ]
  %.021.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader58 ], [ %.1.i.1, %gistunionsubkeyvec.exit.loopexit59.unr-lcssa ] ; 3 uses
  %lcmp.mod61 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod61)
  %.phi.trans.insert.i.epil = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.i.epil.init
  %.pre24.i.epil = load i16, ptr %.phi.trans.insert.i.epil, align 2
  %.pre26.i.epil = zext i16 %.pre24.i.epil to i64 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 %.pre26.i.epil
  %i.aw = load i8, ptr %i.av, align 1, !range !4, !noundef !5
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %gistunionsubkeyvec.exit, label %._crit_edge23.i.epil

._crit_edge23.i.epil:                             ; preds = %.lr.ph.i.epil.preheader
  %i.ay = getelementptr [8 x i8], ptr %1, i64 %.pre26.i.epil
  %i.az = getelementptr i8, ptr %i.ay, i64 -8
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = add i32 %.021.i.epil.init, 1
  %i.bc = sext i32 %.021.i.epil.init to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.bc
  store ptr %i.ba, ptr %i.bd, align 8
  br label %gistunionsubkeyvec.exit

gistunionsubkeyvec.exit:                          ; preds = %gistunionsubkeyvec.exit.loopexit59.unr-lcssa, %._crit_edge23.i.epil, %.lr.ph.i.epil.preheader, %.lr.ph.i.us.epil.preheader, %gistunionsubkeyvec.exit.loopexit.unr-lcssa, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.e, %.lr.ph.i.us.epil.preheader ], [ %i.e, %gistunionsubkeyvec.exit.loopexit.unr-lcssa ], [ %.1.i.1, %gistunionsubkeyvec.exit.loopexit59.unr-lcssa ], [ %.021.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.bb, %._crit_edge23.i.epil ]
  tail call void @gistMakeUnionItVec(ptr noundef %0, ptr noundef %i.i, i32 noundef %.0.lcssa.i, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #7
  tail call void @pfree(ptr noundef %i.i) #7
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bf = load ptr, ptr %i.be, align 8            ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bh = load i32, ptr %i.bg, align 8            ; 9 uses
  %i.bi = sext i32 %i.bh to i64
  %i.bj = tail call ptr @palloc_mul(i64 noundef 8, i64 noundef %i.bi) #7 ; 8 uses
  %i.bk = icmp sgt i32 %i.bh, 0
  br i1 %i.bk, label %.lr.ph.i14.preheader, label %gistunionsubkeyvec.exit26

.lr.ph.i14.preheader:                             ; preds = %gistunionsubkeyvec.exit
  %.not.i17 = icmp eq ptr %i.b, null
  %i.bl = zext nneg i32 %i.bh to i64              ; 4 uses
  br i1 %.not.i17, label %.lr.ph.i14.us.preheader, label %.lr.ph.i14.preheader56

.lr.ph.i14.preheader56:                           ; preds = %.lr.ph.i14.preheader
  %xtraiter67 = and i64 %i.bl, 1
  %i.bm = icmp eq i32 %i.bh, 1
  br i1 %i.bm, label %.lr.ph.i14.epil.preheader, label %.lr.ph.i14.preheader56.new

.lr.ph.i14.preheader56.new:                       ; preds = %.lr.ph.i14.preheader56
  %unroll_iter71 = and i64 %i.bl, 2147483646
  br label %.lr.ph.i14

.lr.ph.i14.us.preheader:                          ; preds = %.lr.ph.i14.preheader
  %xtraiter73 = and i64 %i.bl, 1
  %i.bn = icmp eq i32 %i.bh, 1
  br i1 %i.bn, label %.lr.ph.i14.us.epil.preheader, label %.lr.ph.i14.us.preheader.new

.lr.ph.i14.us.preheader.new:                      ; preds = %.lr.ph.i14.us.preheader
  %unroll_iter76 = and i64 %i.bl, 2147483646
  br label %.lr.ph.i14.us

.lr.ph.i14.us:                                    ; preds = %.lr.ph.i14.us, %.lr.ph.i14.us.preheader.new
  %indvars.iv.i15.us = phi i64 [ 0, %.lr.ph.i14.us.preheader.new ], [ %indvars.iv.next.i25.us.1, %.lr.ph.i14.us ] ; 4 uses
  %niter77 = phi i64 [ 0, %.lr.ph.i14.us.preheader.new ], [ %niter77.next.1, %.lr.ph.i14.us ]
  %.phi.trans.insert.i19.us = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %indvars.iv.i15.us
  %.pre24.i20.us = load i16, ptr %.phi.trans.insert.i19.us, align 2
  %.pre26.i21.us = zext i16 %.pre24.i20.us to i64
  %i.bo = getelementptr [8 x i8], ptr %1, i64 %.pre26.i21.us
  %i.bp = getelementptr i8, ptr %i.bo, i64 -8
  %i.bq = load ptr, ptr %i.bp, align 8
  %indvars.iv.next.i25.us = or disjoint i64 %indvars.iv.i15.us, 1 ; 2 uses
  %sext49 = shl i64 %indvars.iv.i15.us, 32
  %i.br = ashr exact i64 %sext49, 29
  %i.bs = getelementptr inbounds i8, ptr %i.bj, i64 %i.br
  store ptr %i.bq, ptr %i.bs, align 8
  %.phi.trans.insert.i19.us.1 = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %indvars.iv.next.i25.us
  %.pre24.i20.us.1 = load i16, ptr %.phi.trans.insert.i19.us.1, align 2
  %.pre26.i21.us.1 = zext i16 %.pre24.i20.us.1 to i64
  %i.bt = getelementptr [8 x i8], ptr %1, i64 %.pre26.i21.us.1
  %i.bu = getelementptr i8, ptr %i.bt, i64 -8
  %i.bv = load ptr, ptr %i.bu, align 8
  %indvars.iv.next.i25.us.1 = add nuw nsw i64 %indvars.iv.i15.us, 2 ; 2 uses
  %sext49.1 = shl i64 %indvars.iv.next.i25.us, 32
  %i.bw = ashr exact i64 %sext49.1, 29
  %i.bx = getelementptr inbounds i8, ptr %i.bj, i64 %i.bw
  store ptr %i.bv, ptr %i.bx, align 8
  %niter77.next.1 = add i64 %niter77, 2           ; 2 uses
  %niter77.ncmp.1 = icmp eq i64 %niter77.next.1, %unroll_iter76
  br i1 %niter77.ncmp.1, label %gistunionsubkeyvec.exit26.loopexit.unr-lcssa, label %.lr.ph.i14.us, !llvm.loop !13

.lr.ph.i14:                                       ; preds = %bb.c, %.lr.ph.i14.preheader56.new
  %indvars.iv.i15 = phi i64 [ 0, %.lr.ph.i14.preheader56.new ], [ %indvars.iv.next.i25.1, %bb.c ] ; 3 uses
  %.021.i16 = phi i32 [ 0, %.lr.ph.i14.preheader56.new ], [ %.1.i24.1, %bb.c ] ; 3 uses
  %niter72 = phi i64 [ 0, %.lr.ph.i14.preheader56.new ], [ %niter72.next.1, %bb.c ]
  %.phi.trans.insert.i19 = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %indvars.iv.i15
  %.pre24.i20 = load i16, ptr %.phi.trans.insert.i19, align 2
  %.pre26.i21 = zext i16 %.pre24.i20 to i64       ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 %.pre26.i21
  %i.bz = load i8, ptr %i.by, align 1, !range !4, !noundef !5
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %.lr.ph.i14.1, label %._crit_edge23.i22

._crit_edge23.i22:                                ; preds = %.lr.ph.i14
  %i.cb = getelementptr [8 x i8], ptr %1, i64 %.pre26.i21
  %i.cc = getelementptr i8, ptr %i.cb, i64 -8
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = add i32 %.021.i16, 1
  %i.cf = sext i32 %.021.i16 to i64
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.cf
  store ptr %i.cd, ptr %i.cg, align 8
  br label %.lr.ph.i14.1

.lr.ph.i14.1:                                     ; preds = %._crit_edge23.i22, %.lr.ph.i14
  %.1.i24 = phi i32 [ %.021.i16, %.lr.ph.i14 ], [ %i.ce, %._crit_edge23.i22 ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %indvars.iv.i15
  %.phi.trans.insert.i19.1 = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  %.pre24.i20.1 = load i16, ptr %.phi.trans.insert.i19.1, align 2
  %.pre26.i21.1 = zext i16 %.pre24.i20.1 to i64   ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 %.pre26.i21.1
  %i.cj = load i8, ptr %i.ci, align 1, !range !4, !noundef !5
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.c, label %._crit_edge23.i22.1

._crit_edge23.i22.1:                              ; preds = %.lr.ph.i14.1
  %i.cl = getelementptr [8 x i8], ptr %1, i64 %.pre26.i21.1
  %i.cm = getelementptr i8, ptr %i.cl, i64 -8
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = add i32 %.1.i24, 1
  %i.cp = sext i32 %.1.i24 to i64
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.cp
  store ptr %i.cn, ptr %i.cq, align 8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge23.i22.1, %.lr.ph.i14.1
  %.1.i24.1 = phi i32 [ %.1.i24, %.lr.ph.i14.1 ], [ %i.co, %._crit_edge23.i22.1 ] ; 3 uses
  %indvars.iv.next.i25.1 = add nuw nsw i64 %indvars.iv.i15, 2 ; 2 uses
  %niter72.next.1 = add i64 %niter72, 2           ; 2 uses
  %niter72.ncmp.1 = icmp eq i64 %niter72.next.1, %unroll_iter71
  br i1 %niter72.ncmp.1, label %gistunionsubkeyvec.exit26.loopexit57.unr-lcssa, label %.lr.ph.i14, !llvm.loop !13

gistunionsubkeyvec.exit26.loopexit.unr-lcssa:     ; preds = %.lr.ph.i14.us
  %lcmp.mod74.not = icmp eq i64 %xtraiter73, 0
  br i1 %lcmp.mod74.not, label %gistunionsubkeyvec.exit26, label %.lr.ph.i14.us.epil.preheader

.lr.ph.i14.us.epil.preheader:                     ; preds = %gistunionsubkeyvec.exit26.loopexit.unr-lcssa, %.lr.ph.i14.us.preheader
  %indvars.iv.i15.us.epil.init = phi i64 [ 0, %.lr.ph.i14.us.preheader ], [ %indvars.iv.next.i25.us.1, %gistunionsubkeyvec.exit26.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod75 = trunc i32 %i.bh to i1
  tail call void @llvm.assume(i1 %lcmp.mod75)
  %.phi.trans.insert.i19.us.epil = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %indvars.iv.i15.us.epil.init
  %.pre24.i20.us.epil = load i16, ptr %.phi.trans.insert.i19.us.epil, align 2
  %.pre26.i21.us.epil = zext i16 %.pre24.i20.us.epil to i64
  %i.cr = getelementptr [8 x i8], ptr %1, i64 %.pre26.i21.us.epil
  %i.cs = getelementptr i8, ptr %i.cr, i64 -8
  %i.ct = load ptr, ptr %i.cs, align 8
  %sext49.epil = shl i64 %indvars.iv.i15.us.epil.init, 32
  %i.cu = ashr exact i64 %sext49.epil, 29
  %i.cv = getelementptr inbounds i8, ptr %i.bj, i64 %i.cu
  store ptr %i.ct, ptr %i.cv, align 8
  br label %gistunionsubkeyvec.exit26

gistunionsubkeyvec.exit26.loopexit57.unr-lcssa:   ; preds = %bb.c
  %lcmp.mod68.not = icmp eq i64 %xtraiter67, 0
  br i1 %lcmp.mod68.not, label %gistunionsubkeyvec.exit26, label %.lr.ph.i14.epil.preheader

.lr.ph.i14.epil.preheader:                        ; preds = %gistunionsubkeyvec.exit26.loopexit57.unr-lcssa, %.lr.ph.i14.preheader56
  %indvars.iv.i15.epil.init = phi i64 [ 0, %.lr.ph.i14.preheader56 ], [ %indvars.iv.next.i25.1, %gistunionsubkeyvec.exit26.loopexit57.unr-lcssa ]
  %.021.i16.epil.init = phi i32 [ 0, %.lr.ph.i14.preheader56 ], [ %.1.i24.1, %gistunionsubkeyvec.exit26.loopexit57.unr-lcssa ] ; 3 uses
  %lcmp.mod70 = trunc i32 %i.bh to i1
  tail call void @llvm.assume(i1 %lcmp.mod70)
  %.phi.trans.insert.i19.epil = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %indvars.iv.i15.epil.init
  %.pre24.i20.epil = load i16, ptr %.phi.trans.insert.i19.epil, align 2
  %.pre26.i21.epil = zext i16 %.pre24.i20.epil to i64 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 %.pre26.i21.epil
  %i.cx = load i8, ptr %i.cw, align 1, !range !4, !noundef !5
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %gistunionsubkeyvec.exit26, label %._crit_edge23.i22.epil

._crit_edge23.i22.epil:                           ; preds = %.lr.ph.i14.epil.preheader
  %i.cz = getelementptr [8 x i8], ptr %1, i64 %.pre26.i21.epil
  %i.da = getelementptr i8, ptr %i.cz, i64 -8
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = add i32 %.021.i16.epil.init, 1
  %i.dd = sext i32 %.021.i16.epil.init to i64
  %i.de = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.dd
  store ptr %i.db, ptr %i.de, align 8
  br label %gistunionsubkeyvec.exit26

gistunionsubkeyvec.exit26:                        ; preds = %gistunionsubkeyvec.exit26.loopexit57.unr-lcssa, %._crit_edge23.i22.epil, %.lr.ph.i14.epil.preheader, %.lr.ph.i14.us.epil.preheader, %gistunionsubkeyvec.exit26.loopexit.unr-lcssa, %gistunionsubkeyvec.exit
  %.0.lcssa.i13 = phi i32 [ 0, %gistunionsubkeyvec.exit ], [ %i.bh, %.lr.ph.i14.us.epil.preheader ], [ %i.bh, %gistunionsubkeyvec.exit26.loopexit.unr-lcssa ], [ %.1.i24.1, %gistunionsubkeyvec.exit26.loopexit57.unr-lcssa ], [ %.021.i16.epil.init, %.lr.ph.i14.epil.preheader ], [ %i.dc, %._crit_edge23.i22.epil ]
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 608
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 352
  tail call void @gistMakeUnionItVec(ptr noundef %0, ptr noundef %i.bj, i32 noundef %.0.lcssa.i13, ptr noundef nonnull %i.dg, ptr noundef nonnull %i.df) #7
  tail call void @pfree(ptr noundef %i.bj) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @gistUserPicksplit(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %6 = alloca [32 x %struct.GISTENTRY], align 16  ; 4 uses
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %7 = alloca %struct.GISTENTRY, align 8          ; 10 uses
  %8 = alloca %struct.GISTENTRY, align 8          ; 10 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %9 = alloca %struct.GISTENTRY, align 8          ; 11 uses
  %10 = alloca %struct.GISTENTRY, align 8         ; 11 uses
  %11 = alloca %struct.GISTENTRY, align 8         ; 12 uses
  %12 = alloca %struct.GISTENTRY, align 8         ; 12 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 320 ; 2 uses
  %i.e = sext i32 %2 to i64                       ; 7 uses
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 %i.e ; 3 uses
  %i.g = load i8, ptr %i.f, align 1, !range !4, !noundef !5
  %i.h = xor i8 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 6 uses
  store i8 %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 608 ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 %i.e ; 3 uses
  %i.l = load i8, ptr %i.k, align 1, !range !4, !noundef !5
  %i.m = xor i8 %i.l, 1
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 7 uses
  store i8 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.e ; 4 uses
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  store i64 %i.q, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 352 ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.e ; 4 uses
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 10 uses
  store i64 %i.u, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 7720
  %i.x = getelementptr inbounds [48 x i8], ptr %i.w, i64 %i.e
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 13864
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.e ; 3 uses
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = ptrtoint ptr %1 to i64
  %i.ac = ptrtoint ptr %3 to i64
  %i.ad = tail call i64 @FunctionCall2Coll(ptr noundef nonnull %i.x, i32 noundef %i.aa, i64 noundef %i.ab, i64 noundef %i.ac) #7 ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 14 uses
  %i.af = load i32, ptr %i.ae, align 8            ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8            ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ak = tail call zeroext i1 @errstart(i32 noundef 14, ptr noundef null) #7
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.al = tail call i32 @errcode(i32 noundef 2600) #7 ; 0 uses
  %i.am = add i32 %2, 1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.2, i32 noundef %i.am, ptr noundef nonnull %i.ap) #7 ; 0 uses
  %i.ar = tail call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.3) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef 448, ptr noundef nonnull @__func__.gistUserPicksplit) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.as = load i8, ptr %i.f, align 1, !range !4, !noundef !5
  %i.at = xor i8 %i.as, 1
  store i8 %i.at, ptr %i.i, align 8
  %i.au = load i8, ptr %i.k, align 1, !range !4, !noundef !5
  %i.av = xor i8 %i.au, 1
  store i8 %i.av, ptr %i.n, align 8
  %i.aw = load i64, ptr %i.p, align 8
  store i64 %i.aw, ptr %i.r, align 8
  %i.ax = load i64, ptr %i.t, align 8
  store i64 %i.ax, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.ay = load i32, ptr %1, align 8               ; 2 uses
  %i.az = add i32 %i.ay, 65535
  %i.ba = and i32 %i.az, 65535                    ; 3 uses
  %i.bb = shl nuw nsw i32 %i.ba, 1
  %i.bc = add nuw nsw i32 %i.bb, 4                ; 2 uses
  store i32 %i.bc, ptr %i.c, align 4
  %i.bd = zext nneg i32 %i.bc to i64              ; 2 uses
  %i.be = tail call ptr @palloc(i64 noundef %i.bd) #7
  store ptr %i.be, ptr %3, align 8
  %i.bf = tail call ptr @palloc(i64 noundef %i.bd) #7
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %i.bf, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 5 uses
  store i32 0, ptr %i.bh, align 8
  store i32 0, ptr %i.ae, align 8
  %.not45.i = icmp eq i32 %i.ba, 0
  br i1 %.not45.i, label %genericPickSplit.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.bi = lshr i32 %i.ba, 1
  %13 = trunc i32 %i.ay to i16
  %umax = tail call i16 @llvm.umax.i16(i16 %13, i16 2)
  %wide.trip.count = zext i16 %umax to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i
  %indvars.iv = phi i32 [ %indvars.iv.next, %bb.i ], [ 1, %.lr.ph.i ] ; 3 uses
  %.not44.i = icmp samesign ult i32 %i.bi, %indvars.iv
  %i.bj = trunc nuw i32 %indvars.iv to i16        ; 2 uses
  br i1 %.not44.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bk = load ptr, ptr %3, align 8
  %i.bl = load i32, ptr %i.ae, align 8
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [2 x i8], ptr %i.bk, i64 %i.bm
  store i16 %i.bj, ptr %i.bn, align 2
  %i.bo = load i32, ptr %i.ae, align 8
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.ae, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bq = load ptr, ptr %i.bg, align 8
  %i.br = load i32, ptr %i.bh, align 8
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [2 x i8], ptr %i.bq, i64 %i.bs
  store i16 %i.bj, ptr %i.bt, align 2
  %i.bu = load i32, ptr %i.bh, align 8
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bh, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %genericPickSplit.exit, label %bb.f, !llvm.loop !14

genericPickSplit.exit:                            ; preds = %bb.i, %bb.e
  %i.bw = load i32, ptr %1, align 8
  %i.bx = sext i32 %i.bw to i64
  %i.by = shl nsw i64 %i.bx, 5
  %i.bz = or disjoint i64 %i.by, 8
  %i.ca = tail call ptr @palloc(i64 noundef %i.bz) #7 ; 4 uses
  %i.cb = load i32, ptr %i.ae, align 8            ; 2 uses
  store i32 %i.cb, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ce = sext i32 %i.cb to i64
  %i.cf = shl nsw i64 %i.ce, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cc, ptr nonnull readonly align 8 %i.cd, i64 %i.cf, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 1576
  %i.ch = getelementptr inbounds [48 x i8], ptr %i.cg, i64 %i.e ; 2 uses
  %i.ci = load i32, ptr %i.z, align 4
  %i.cj = ptrtoint ptr %i.ca to i64               ; 2 uses
  %i.ck = ptrtoint ptr %i.c to i64                ; 2 uses
  %i.cl = call i64 @FunctionCall2Coll(ptr noundef nonnull %i.ch, i32 noundef %i.ci, i64 noundef %i.cj, i64 noundef %i.ck) #7
  store i64 %i.cl, ptr %i.r, align 8
  %i.cm = load i32, ptr %i.bh, align 8            ; 2 uses
  store i32 %i.cm, ptr %i.ca, align 8
  %i.cn = load i32, ptr %i.ae, align 8
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [32 x i8], ptr %i.cd, i64 %i.co
  %i.cq = sext i32 %i.cm to i64
  %i.cr = shl nsw i64 %i.cq, 5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cc, ptr nonnull readonly align 8 %i.cp, i64 %i.cr, i1 false)
  %i.cs = load i32, ptr %i.z, align 4
  %i.ct = call i64 @FunctionCall2Coll(ptr noundef nonnull %i.ch, i32 noundef %i.cs, i64 noundef %i.cj, i64 noundef %i.ck) #7
  store i64 %i.ct, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %bb.n

bb.j:                                             ; preds = %bb.b
  %i.cu = load ptr, ptr %3, align 8
  %i.cv = add i32 %i.af, -1
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [2 x i8], ptr %i.cu, i64 %i.cw ; 2 uses
  %i.cy = load i16, ptr %i.cx, align 2
  %i.cz = icmp eq i16 %i.cy, 0
  br i1 %i.cz, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.da = load i32, ptr %1, align 8
  %i.db = trunc i32 %i.da to i16
  %i.dc = add i16 %i.db, -1
  store i16 %i.dc, ptr %i.cx, align 2
  %.pre = load i32, ptr %i.ah, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.dd = phi i32 [ %.pre, %bb.k ], [ %i.ai, %bb.j ]
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = add i32 %i.dd, -1
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [2 x i8], ptr %i.df, i64 %i.dh ; 2 uses
  %i.dj = load i16, ptr %i.di, align 2
  %i.dk = icmp eq i16 %i.dj, 0
  br i1 %i.dk, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dl = load i32, ptr %1, align 8
  %i.dm = trunc i32 %i.dl to i16
  %i.dn = add i16 %i.dm, -1
  store i16 %i.dn, ptr %i.di, align 2
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %genericPickSplit.exit
  %i.do = load i8, ptr %i.i, align 8, !range !4, !noundef !5
  %i.dp = trunc nuw i8 %i.do to i1                ; 2 uses
  br i1 %i.dp, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dq = load i8, ptr %i.n, align 8, !range !4, !noundef !5
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %bb.p, label %bb.x

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ds = load i64, ptr %i.p, align 8
  %i.dt = load i64, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #7
  store i64 %i.ds, ptr %9, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %0, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr null, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i16 0, ptr %i.dw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %9, i64 26
  store i8 0, ptr %i.dx, align 2
  store i64 %i.dt, ptr %10, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %0, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr null, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i16 0, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %10, i64 26
  store i8 0, ptr %i.eb, align 2
  %i.ec = load i64, ptr %i.r, align 8
  store i64 %i.ec, ptr %11, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store ptr %0, ptr %i.ed, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr null, ptr %i.ee, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  store i16 0, ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %11, i64 26 ; 2 uses
  store i8 0, ptr %i.eg, align 2
  %i.eh = load i64, ptr %i.v, align 8
  store i64 %i.eh, ptr %12, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store ptr %0, ptr %i.ei, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr null, ptr %i.ej, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  store i16 0, ptr %i.ek, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %12, i64 26 ; 2 uses
  store i8 0, ptr %i.el, align 2
  br i1 %i.dp, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.em = load i8, ptr %i.n, align 8, !range !4, !noundef !5
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %.split.i, label %bb.r

.split.i:                                         ; preds = %bb.q
  %i.eo = call float @gistpenalty(ptr noundef nonnull %5, i32 noundef %2, ptr noundef nonnull %9, i1 noundef zeroext false, ptr noundef nonnull %11, i1 noundef zeroext false) #7
  %i.ep = call float @gistpenalty(ptr noundef nonnull %5, i32 noundef %2, ptr noundef nonnull %10, i1 noundef zeroext false, ptr noundef nonnull %12, i1 noundef zeroext false) #7
  %i.eq = fadd float %i.eo, %i.ep
  %i.er = call float @gistpenalty(ptr noundef nonnull %5, i32 noundef %2, ptr noundef nonnull %9, i1 noundef zeroext false, ptr noundef nonnull %12, i1 noundef zeroext false) #7
  %i.es = call float @gistpenalty(ptr noundef nonnull %5, i32 noundef %2, ptr noundef nonnull %10, i1 noundef zeroext false, ptr noundef nonnull %11, i1 noundef zeroext false) #7
  %i.et = fadd float %i.er, %i.es
  %i.eu = fcmp ogt float %i.eq, %i.et
  br i1 %i.eu, label %bb.s, label %bb.t

bb.r:                                             ; preds = %bb.q, %bb.p
  %..i = phi ptr [ %9, %bb.q ], [ %10, %bb.p ]    ; 2 uses
  %i.ev = call float @gistpenalty(ptr noundef nonnull %5, i32 noundef %2, ptr noundef nonnull %..i, i1 noundef zeroext false, ptr noundef nonnull %11, i1 noundef zeroext false) #7
  %i.ew = call float @gistpenalty(ptr noundef nonnull %5, i32 noundef %2, ptr noundef nonnull %..i, i1 noundef zeroext false, ptr noundef nonnull %12, i1 noundef zeroext false) #7
  %i.ex = fcmp olt float %i.ev, %i.ew
  %.1.in.i = select i1 %i.ex, ptr %i.i, ptr %i.n
  %.1.i = load i8, ptr %.1.in.i, align 8, !range !4, !noundef !5
  %i.ey = icmp eq i8 %.1.i, 0
  br i1 %i.ey, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %.split.i
  %i.ez = load ptr, ptr %3, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8
  store ptr %i.fb, ptr %3, align 8
  store ptr %i.ez, ptr %i.fa, align 8
  %i.fc = load i32, ptr %i.ae, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 8
  store i32 %i.fe, ptr %i.ae, align 8
  %i.ff = and i32 %i.fc, 65535
  store i32 %i.ff, ptr %i.fd, align 8
  %i.fg = load i64, ptr %i.r, align 8             ; 2 uses
  %i.fh = load i64, ptr %i.v, align 8             ; 2 uses
  store i64 %i.fh, ptr %i.r, align 8
  store i64 %i.fg, ptr %i.v, align 8
  store i64 %i.fh, ptr %11, align 8
  store ptr %0, ptr %i.ed, align 8
  store ptr null, ptr %i.ee, align 8
  store i16 0, ptr %i.ef, align 8
  store i8 0, ptr %i.eg, align 2
  store i64 %i.fg, ptr %12, align 8
  store ptr %0, ptr %i.ei, align 8
  store ptr null, ptr %i.ej, align 8
  store i16 0, ptr %i.ek, align 8
  store i8 0, ptr %i.el, align 2
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %.split.i
  %i.fi = load i8, ptr %i.i, align 8, !range !4, !noundef !5
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @gistMakeUnionKey(ptr noundef nonnull %5, i32 noundef %2, ptr noundef nonnull %9, i1 noundef zeroext false, ptr noundef nonnull %11, i1 noundef zeroext false, ptr noundef nonnull %i.r, ptr noundef nonnull %i.b) #7
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.fk = load i8, ptr %i.n, align 8, !range !4, !noundef !5
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %bb.w, label %supportSecondarySplit.exit

bb.w:                                             ; preds = %bb.v
  call void @gistMakeUnionKey(ptr noundef nonnull %5, i32 noundef %2, ptr noundef nonnull %10, i1 noundef zeroext false, ptr noundef nonnull %12, i1 noundef zeroext false, ptr noundef nonnull %i.v, ptr noundef nonnull %i.b) #7
  br label %supportSecondarySplit.exit

supportSecondarySplit.exit:                       ; preds = %bb.v, %bb.w
  store i8 0, ptr %i.n, align 8
  store i8 0, ptr %i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %bb.x

bb.x:                                             ; preds = %supportSecondarySplit.exit, %bb.o
  %i.fm = load i64, ptr %i.r, align 8
  store i64 %i.fm, ptr %i.p, align 8
  %i.fn = load i64, ptr %i.v, align 8
  store i64 %i.fn, ptr %i.t, align 8
  store i8 0, ptr %i.f, align 1
  store i8 0, ptr %i.k, align 1
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 640 ; 8 uses
  store ptr null, ptr %i.fo, align 8
  %i.fp = add i32 %2, 1                           ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = load i32, ptr %i.fr, align 8
  %i.ft = icmp slt i32 %i.fp, %i.fs
  br i1 %i.ft, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  %i.fu = load i64, ptr %i.r, align 8
  %i.fv = load i64, ptr %i.v, align 8
  %i.fw = call zeroext i1 @gistKeyIsEQ(ptr noundef nonnull %5, i32 noundef %2, i64 noundef %i.fu, i64 noundef %i.fv) #7
  br i1 %i.fw, label %.critedge, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fx = load i32, ptr %1, align 8
  %i.fy = add i32 %i.fx, 1
  %i.fz = sext i32 %i.fy to i64
  %i.ga = call ptr @palloc0_mul(i64 noundef 1, i64 noundef %i.fz) #7
  store ptr %i.ga, ptr %i.fo, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  %i.gc = load i64, ptr %i.v, align 8
  store i64 %i.gc, ptr %8, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %0, ptr %i.gd, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr null, ptr %i.ge, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  store i16 0, ptr %i.gf, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %8, i64 26 ; 2 uses
  store i8 0, ptr %i.gg, align 2
  %i.gh = load i32, ptr %i.ae, align 8
  %i.gi = icmp sgt i32 %i.gh, 0
  br i1 %i.gi, label %.lr.ph.i115, label %._crit_edge.i

.lr.ph.i115:                                      ; preds = %bb.z, %bb.ab
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ab ], [ 0, %bb.z ] ; 2 uses
  %.033.i = phi i32 [ %.1.i116, %bb.ab ], [ 0, %bb.z ] ; 2 uses
  %i.gj = load ptr, ptr %3, align 8
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %i.gj, i64 %indvars.iv.i
  %i.gl = load i16, ptr %i.gk, align 2
  %i.gm = zext i16 %i.gl to i64                   ; 2 uses
  %i.gn = getelementptr inbounds nuw [32 x i8], ptr %i.gb, i64 %i.gm
  %i.go = call float @gistpenalty(ptr noundef nonnull %5, i32 noundef %2, ptr noundef nonnull %8, i1 noundef zeroext false, ptr noundef nonnull %i.gn, i1 noundef zeroext false) #7
  %i.gp = fcmp oeq float %i.go, 0.000000e+00
  br i1 %i.gp, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i115
  %i.gq = load ptr, ptr %i.fo, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gm
  store i8 1, ptr %i.gr, align 1
  %i.gs = add i32 %.033.i, 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.i115
  %.1.i116 = phi i32 [ %i.gs, %bb.aa ], [ %.033.i, %.lr.ph.i115 ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.gt = load i32, ptr %i.ae, align 8
  %i.gu = sext i32 %i.gt to i64
  %i.gv = icmp slt i64 %indvars.iv.next.i, %i.gu
  br i1 %i.gv, label %.lr.ph.i115, label %._crit_edge.i, !llvm.loop !15

._crit_edge.i:                                    ; preds = %bb.ab, %bb.z
  %.0.lcssa.i = phi i32 [ 0, %bb.z ], [ %.1.i116, %bb.ab ] ; 2 uses
  %i.gw = load i64, ptr %i.r, align 8
  store i64 %i.gw, ptr %8, align 8
  store ptr %0, ptr %i.gd, align 8
  store ptr null, ptr %i.ge, align 8
  store i16 0, ptr %i.gf, align 8
  store i8 0, ptr %i.gg, align 2
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  %i.gy = load i32, ptr %i.gx, align 8            ; 2 uses
  %i.gz = icmp sgt i32 %i.gy, 0
  br i1 %i.gz, label %.lr.ph37.i, label %findDontCares.exit

.lr.ph37.i:                                       ; preds = %._crit_edge.i
  %i.ha = getelementptr inbounds nuw i8, ptr %3, i64 32
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ae, %.lr.ph37.i
  %indvars.iv41.i = phi i64 [ 0, %.lr.ph37.i ], [ %indvars.iv.next42.i, %bb.ae ] ; 2 uses
  %.235.i = phi i32 [ %.0.lcssa.i, %.lr.ph37.i ], [ %.3.i, %bb.ae ] ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %i.hb, i64 %indvars.iv41.i
  %i.hd = load i16, ptr %i.hc, align 2
  %i.he = zext i16 %i.hd to i64                   ; 2 uses
  %i.hf = getelementptr inbounds nuw [32 x i8], ptr %i.gb, i64 %i.he
  %i.hg = call float @gistpenalty(ptr noundef nonnull %5, i32 noundef %2, ptr noundef nonnull %8, i1 noundef zeroext false, ptr noundef nonnull %i.hf, i1 noundef zeroext false) #7
  %i.hh = fcmp oeq float %i.hg, 0.000000e+00
  br i1 %i.hh, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.hi = load ptr, ptr %i.fo, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.he
  store i8 1, ptr %i.hj, align 1
  %i.hk = add i32 %.235.i, 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.3.i = phi i32 [ %i.hk, %bb.ad ], [ %.235.i, %bb.ac ] ; 2 uses
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %i.hl = load i32, ptr %i.gx, align 8            ; 2 uses
  %i.hm = sext i32 %i.hl to i64
  %i.hn = icmp slt i64 %indvars.iv.next42.i, %i.hm
  br i1 %i.hn, label %bb.ac, label %findDontCares.exit, !llvm.loop !16

findDontCares.exit:                               ; preds = %bb.ae, %._crit_edge.i
  %i.ho = phi i32 [ %i.gy, %._crit_edge.i ], [ %i.hl, %bb.ae ]
  %.2.lcssa.i = phi i32 [ %.0.lcssa.i, %._crit_edge.i ], [ %.3.i, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  %i.hp = icmp sgt i32 %.2.lcssa.i, 0
  br i1 %i.hp, label %bb.af, label %.critedge

bb.af:                                            ; preds = %findDontCares.exit
  %i.hq = load ptr, ptr %3, align 8               ; 5 uses
  %i.hr = load ptr, ptr %i.fo, align 8            ; 4 uses
  %i.hs = load i32, ptr %i.ae, align 8            ; 7 uses
  %i.ht = icmp sgt i32 %i.hs, 0
  br i1 %i.ht, label %.lr.ph.preheader.i, label %removeDontCares.exit

.lr.ph.preheader.i:                               ; preds = %bb.af
  %wide.trip.count.i = zext nneg i32 %i.hs to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.hu = icmp eq i32 %i.hs, 1
  br i1 %i.hu, label %.lr.ph.i118.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph.i118

.lr.ph.i118:                                      ; preds = %bb.ak, %.lr.ph.preheader.i.new
  %indvars.iv.i119 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i121.1, %bb.ak ] ; 3 uses
  %.019.i = phi ptr [ %i.hq, %.lr.ph.preheader.i.new ], [ %.1.i120.1, %bb.ak ] ; 3 uses
  %.01517.i = phi i32 [ %i.hs, %.lr.ph.preheader.i.new ], [ %.116.i.1, %bb.ak ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %bb.ak ]
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %i.hq, i64 %indvars.iv.i119
  %i.hw = load i16, ptr %i.hv, align 2            ; 2 uses
  %i.hx = zext i16 %i.hw to i64
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.hx
  %i.hz = load i8, ptr %i.hy, align 1, !range !4, !noundef !5
  %i.ia = icmp eq i8 %i.hz, 0
  br i1 %i.ia, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.i118
  store i16 %i.hw, ptr %.019.i, align 2
  %i.ib = getelementptr inbounds nuw i8, ptr %.019.i, i64 2
  br label %.lr.ph.i118.1

bb.ah:                                            ; preds = %.lr.ph.i118
  %i.ic = add i32 %.01517.i, -1
  br label %.lr.ph.i118.1

.lr.ph.i118.1:                                    ; preds = %bb.ah, %bb.ag
  %.116.i = phi i32 [ %.01517.i, %bb.ag ], [ %i.ic, %bb.ah ] ; 2 uses
  %.1.i120 = phi ptr [ %i.ib, %bb.ag ], [ %.019.i, %bb.ah ] ; 3 uses
  %i.id = getelementptr inbounds nuw [2 x i8], ptr %i.hq, i64 %indvars.iv.i119
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 2
  %i.if = load i16, ptr %i.ie, align 2            ; 2 uses
  %i.ig = zext i16 %i.if to i64
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.ig
  %i.ii = load i8, ptr %i.ih, align 1, !range !4, !noundef !5
  %i.ij = icmp eq i8 %i.ii, 0
  br i1 %i.ij, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i118.1
  %i.ik = add i32 %.116.i, -1
  br label %bb.ak

bb.aj:                                            ; preds = %.lr.ph.i118.1
  store i16 %i.if, ptr %.1.i120, align 2
  %i.il = getelementptr inbounds nuw i8, ptr %.1.i120, i64 2
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.116.i.1 = phi i32 [ %.116.i, %bb.aj ], [ %i.ik, %bb.ai ] ; 3 uses
  %.1.i120.1 = phi ptr [ %i.il, %bb.aj ], [ %.1.i120, %bb.ai ] ; 2 uses
  %indvars.iv.next.i121.1 = add nuw nsw i64 %indvars.iv.i119, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %removeDontCares.exit.loopexit.unr-lcssa, label %.lr.ph.i118, !llvm.loop !17

removeDontCares.exit.loopexit.unr-lcssa:          ; preds = %bb.ak
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %removeDontCares.exit.loopexit, label %.lr.ph.i118.epil.preheader

.lr.ph.i118.epil.preheader:                       ; preds = %removeDontCares.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i119.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i121.1, %removeDontCares.exit.loopexit.unr-lcssa ]
  %.019.i.epil.init = phi ptr [ %i.hq, %.lr.ph.preheader.i ], [ %.1.i120.1, %removeDontCares.exit.loopexit.unr-lcssa ]
  %.01517.i.epil.init = phi i32 [ %i.hs, %.lr.ph.preheader.i ], [ %.116.i.1, %removeDontCares.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod2 = trunc i32 %i.hs to i1
  call void @llvm.assume(i1 %lcmp.mod2)
  %i.im = getelementptr inbounds nuw [2 x i8], ptr %i.hq, i64 %indvars.iv.i119.epil.init
  %i.in = load i16, ptr %i.im, align 2            ; 2 uses
  %i.io = zext i16 %i.in to i64
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.io
  %i.iq = load i8, ptr %i.ip, align 1, !range !4, !noundef !5
  %i.ir = icmp eq i8 %i.iq, 0
  br i1 %i.ir, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i118.epil.preheader
  %i.is = add i32 %.01517.i.epil.init, -1
  br label %removeDontCares.exit.loopexit

bb.am:                                            ; preds = %.lr.ph.i118.epil.preheader
  store i16 %i.in, ptr %.019.i.epil.init, align 2
  br label %removeDontCares.exit.loopexit

removeDontCares.exit.loopexit:                    ; preds = %bb.al, %bb.am, %removeDontCares.exit.loopexit.unr-lcssa
  %.116.i.lcssa = phi i32 [ %.116.i.1, %removeDontCares.exit.loopexit.unr-lcssa ], [ %.01517.i.epil.init, %bb.am ], [ %i.is, %bb.al ]
  %.pre144 = load ptr, ptr %i.fo, align 8
  %.pre145 = load i32, ptr %i.gx, align 8
  br label %removeDontCares.exit

removeDontCares.exit:                             ; preds = %removeDontCares.exit.loopexit, %bb.af
  %i.it = phi i32 [ %i.ho, %bb.af ], [ %.pre145, %removeDontCares.exit.loopexit ] ; 7 uses
  %i.iu = phi ptr [ %i.hr, %bb.af ], [ %.pre144, %removeDontCares.exit.loopexit ] ; 3 uses
  %.015.lcssa.i = phi i32 [ %i.hs, %bb.af ], [ %.116.i.lcssa, %removeDontCares.exit.loopexit ] ; 2 uses
  store i32 %.015.lcssa.i, ptr %i.ae, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.iw = load ptr, ptr %i.iv, align 8            ; 5 uses
  %i.ix = icmp sgt i32 %i.it, 0
  br i1 %i.ix, label %.lr.ph.preheader.i124, label %removeDontCares.exit134

.lr.ph.preheader.i124:                            ; preds = %removeDontCares.exit
  %wide.trip.count.i125 = zext nneg i32 %i.it to i64 ; 2 uses
  %xtraiter3 = and i64 %wide.trip.count.i125, 1
  %i.iy = icmp eq i32 %i.it, 1
  br i1 %i.iy, label %.lr.ph.i126.epil.preheader, label %.lr.ph.preheader.i124.new

.lr.ph.preheader.i124.new:                        ; preds = %.lr.ph.preheader.i124
  %unroll_iter7 = and i64 %wide.trip.count.i125, 2147483646
  br label %.lr.ph.i126

.lr.ph.i126:                                      ; preds = %bb.ar, %.lr.ph.preheader.i124.new
  %indvars.iv.i127 = phi i64 [ 0, %.lr.ph.preheader.i124.new ], [ %indvars.iv.next.i132.1, %bb.ar ] ; 3 uses
  %.019.i128 = phi ptr [ %i.iw, %.lr.ph.preheader.i124.new ], [ %.1.i131.1, %bb.ar ] ; 3 uses
  %.01517.i129 = phi i32 [ %i.it, %.lr.ph.preheader.i124.new ], [ %.116.i130.1, %bb.ar ] ; 2 uses
  %niter8 = phi i64 [ 0, %.lr.ph.preheader.i124.new ], [ %niter8.next.1, %bb.ar ]
  %i.iz = getelementptr inbounds nuw [2 x i8], ptr %i.iw, i64 %indvars.iv.i127
  %i.ja = load i16, ptr %i.iz, align 2            ; 2 uses
  %i.jb = zext i16 %i.ja to i64
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.jb
  %i.jd = load i8, ptr %i.jc, align 1, !range !4, !noundef !5
  %i.je = icmp eq i8 %i.jd, 0
  br i1 %i.je, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.lr.ph.i126
  store i16 %i.ja, ptr %.019.i128, align 2
  %i.jf = getelementptr inbounds nuw i8, ptr %.019.i128, i64 2
  br label %.lr.ph.i126.1

bb.ao:                                            ; preds = %.lr.ph.i126
  %i.jg = add i32 %.01517.i129, -1
  br label %.lr.ph.i126.1

.lr.ph.i126.1:                                    ; preds = %bb.ao, %bb.an
  %.116.i130 = phi i32 [ %.01517.i129, %bb.an ], [ %i.jg, %bb.ao ] ; 2 uses
  %.1.i131 = phi ptr [ %i.jf, %bb.an ], [ %.019.i128, %bb.ao ] ; 3 uses
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %i.iw, i64 %indvars.iv.i127
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 2
  %i.jj = load i16, ptr %i.ji, align 2            ; 2 uses
  %i.jk = zext i16 %i.jj to i64
  %i.jl = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.jk
  %i.jm = load i8, ptr %i.jl, align 1, !range !4, !noundef !5
  %i.jn = icmp eq i8 %i.jm, 0
  br i1 %i.jn, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i126.1
  %i.jo = add i32 %.116.i130, -1
  br label %bb.ar

bb.aq:                                            ; preds = %.lr.ph.i126.1
  store i16 %i.jj, ptr %.1.i131, align 2
  %i.jp = getelementptr inbounds nuw i8, ptr %.1.i131, i64 2
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.116.i130.1 = phi i32 [ %.116.i130, %bb.aq ], [ %i.jo, %bb.ap ] ; 3 uses
  %.1.i131.1 = phi ptr [ %i.jp, %bb.aq ], [ %.1.i131, %bb.ap ] ; 2 uses
  %indvars.iv.next.i132.1 = add nuw nsw i64 %indvars.iv.i127, 2 ; 2 uses
  %niter8.next.1 = add i64 %niter8, 2             ; 2 uses
  %niter8.ncmp.1 = icmp eq i64 %niter8.next.1, %unroll_iter7
  br i1 %niter8.ncmp.1, label %removeDontCares.exit134.loopexit.unr-lcssa, label %.lr.ph.i126, !llvm.loop !17

removeDontCares.exit134.loopexit.unr-lcssa:       ; preds = %bb.ar
  %lcmp.mod4.not = icmp eq i64 %xtraiter3, 0
  br i1 %lcmp.mod4.not, label %removeDontCares.exit134.loopexit, label %.lr.ph.i126.epil.preheader

.lr.ph.i126.epil.preheader:                       ; preds = %removeDontCares.exit134.loopexit.unr-lcssa, %.lr.ph.preheader.i124
  %indvars.iv.i127.epil.init = phi i64 [ 0, %.lr.ph.preheader.i124 ], [ %indvars.iv.next.i132.1, %removeDontCares.exit134.loopexit.unr-lcssa ]
  %.019.i128.epil.init = phi ptr [ %i.iw, %.lr.ph.preheader.i124 ], [ %.1.i131.1, %removeDontCares.exit134.loopexit.unr-lcssa ]
  %.01517.i129.epil.init = phi i32 [ %i.it, %.lr.ph.preheader.i124 ], [ %.116.i130.1, %removeDontCares.exit134.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod6 = trunc i32 %i.it to i1
  call void @llvm.assume(i1 %lcmp.mod6)
  %i.jq = getelementptr inbounds nuw [2 x i8], ptr %i.iw, i64 %indvars.iv.i127.epil.init
  %i.jr = load i16, ptr %i.jq, align 2            ; 2 uses
  %i.js = zext i16 %i.jr to i64
  %i.jt = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.js
  %i.ju = load i8, ptr %i.jt, align 1, !range !4, !noundef !5
  %i.jv = icmp eq i8 %i.ju, 0
  br i1 %i.jv, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i126.epil.preheader
  %i.jw = add i32 %.01517.i129.epil.init, -1
  br label %removeDontCares.exit134.loopexit

bb.at:                                            ; preds = %.lr.ph.i126.epil.preheader
  store i16 %i.jr, ptr %.019.i128.epil.init, align 2
  br label %removeDontCares.exit134.loopexit

removeDontCares.exit134.loopexit:                 ; preds = %bb.as, %bb.at, %removeDontCares.exit134.loopexit.unr-lcssa
  %.116.i130.lcssa = phi i32 [ %.116.i130.1, %removeDontCares.exit134.loopexit.unr-lcssa ], [ %.01517.i129.epil.init, %bb.at ], [ %i.jw, %bb.as ]
  %.pre146 = load i32, ptr %i.ae, align 8
  br label %removeDontCares.exit134

removeDontCares.exit134:                          ; preds = %removeDontCares.exit134.loopexit, %removeDontCares.exit
  %i.jx = phi i32 [ %.015.lcssa.i, %removeDontCares.exit ], [ %.pre146, %removeDontCares.exit134.loopexit ]
  %.015.lcssa.i123 = phi i32 [ %i.it, %removeDontCares.exit ], [ %.116.i130.lcssa, %removeDontCares.exit134.loopexit ] ; 2 uses
  store i32 %.015.lcssa.i123, ptr %i.gx, align 8
  %i.jy = icmp eq i32 %i.jx, 0
  %i.jz = icmp eq i32 %.015.lcssa.i123, 0
  %or.cond = select i1 %i.jy, i1 true, i1 %i.jz
  br i1 %or.cond, label %bb.au, label %bb.av

bb.au:                                            ; preds = %removeDontCares.exit134
  store ptr null, ptr %i.fo, align 8
  br label %.critedge

bb.av:                                            ; preds = %removeDontCares.exit134
  call fastcc void @gistunionsubkey(ptr noundef nonnull %5, ptr noundef %4, ptr noundef nonnull %3)
  %i.ka = icmp eq i32 %.2.lcssa.i, 1
  br i1 %i.ka, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.av
  %i.kb = load i32, ptr %1, align 8               ; 2 uses
  %i.kc = icmp sgt i32 %i.kb, 1
  br i1 %i.kc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.kd = load ptr, ptr %i.fo, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph, %bb.ax
  %.0140 = phi i16 [ 1, %.lr.ph ], [ %i.ki, %bb.ax ] ; 3 uses
  %i.ke = zext i16 %.0140 to i64
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.ke
  %i.kg = load i8, ptr %i.kf, align 1, !range !4, !noundef !5
  %i.kh = trunc nuw i8 %i.kg to i1
  br i1 %i.kh, label %._crit_edge, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ki = add i16 %.0140, 1                       ; 3 uses
  %i.kj = zext i16 %i.ki to i32
  %i.kk = icmp samesign ugt i32 %i.kb, %i.kj
  br i1 %i.kk, label %bb.aw, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.ax, %bb.aw, %.preheader
  %.0.lcssa = phi i16 [ 1, %.preheader ], [ %.0140, %bb.aw ], [ %i.ki, %bb.ax ] ; 2 uses
  %i.kl = zext i16 %.0.lcssa to i64
  %i.km = getelementptr [8 x i8], ptr %4, i64 %i.kl
  %i.kn = getelementptr i8, ptr %i.km, i64 -8
  %i.ko = load ptr, ptr %i.kn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @gistDeCompressAtt(ptr noundef nonnull %5, ptr noundef %0, ptr noundef %i.ko, ptr noundef null, i16 noundef zeroext 0, ptr noundef nonnull %6, ptr noundef nonnull %i.a) #7
  %i.kp = load ptr, ptr %i.fq, align 8
  %i.kq = load i32, ptr %i.kp, align 8
  %i.kr = icmp slt i32 %i.fp, %i.kq
  br i1 %i.kr, label %.lr.ph.i135, label %placeOne.exit

.lr.ph.i135:                                      ; preds = %._crit_edge
  %i.ks = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %7, i64 26 ; 2 uses
  %i.kw = sext i32 %i.fp to i64
  br label %bb.az

bb.ay:                                            ; preds = %bb.az
  %indvars.iv.next.i138 = add nsw i64 %indvars.iv.i136, 1 ; 2 uses
  %i.kx = load ptr, ptr %i.fq, align 8
  %i.ky = load i32, ptr %i.kx, align 8
  %i.kz = sext i32 %i.ky to i64
  %i.la = icmp slt i64 %indvars.iv.next.i138, %i.kz
  br i1 %i.la, label %bb.az, label %._crit_edge.i137, !llvm.loop !19

bb.az:                                            ; preds = %bb.ay, %.lr.ph.i135
  %indvars.iv.i136 = phi i64 [ %i.kw, %.lr.ph.i135 ], [ %indvars.iv.next.i138, %bb.ay ] ; 8 uses
  %.03540.i = phi i1 [ true, %.lr.ph.i135 ], [ %.2.i, %bb.ay ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  %i.lb = getelementptr inbounds [8 x i8], ptr %i.o, i64 %indvars.iv.i136
  %i.lc = load i64, ptr %i.lb, align 8
  store i64 %i.lc, ptr %7, align 8
  store ptr %0, ptr %i.ks, align 8
  store ptr null, ptr %i.kt, align 8
  store i16 0, ptr %i.ku, align 8
  store i8 0, ptr %i.kv, align 2
  %i.ld = getelementptr inbounds i8, ptr %i.d, i64 %indvars.iv.i136
  %i.le = load i8, ptr %i.ld, align 1, !range !4, !noundef !5
  %i.lf = trunc nuw i8 %i.le to i1
  %i.lg = getelementptr inbounds [32 x i8], ptr %6, i64 %indvars.iv.i136 ; 2 uses
  %i.lh = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.i136 ; 2 uses
  %i.li = load i8, ptr %i.lh, align 1, !range !4, !noundef !5
  %i.lj = trunc nuw i8 %i.li to i1
  %i.lk = trunc nsw i64 %indvars.iv.i136 to i32   ; 2 uses
  %i.ll = call float @gistpenalty(ptr noundef nonnull %5, i32 noundef %i.lk, ptr noundef nonnull %7, i1 noundef zeroext %i.lf, ptr noundef nonnull %i.lg, i1 noundef zeroext %i.lj) #7 ; 2 uses
  %i.lm = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv.i136
  %i.ln = load i64, ptr %i.lm, align 8
  store i64 %i.ln, ptr %7, align 8
  store ptr %0, ptr %i.ks, align 8
  store ptr null, ptr %i.kt, align 8
  store i16 0, ptr %i.ku, align 8
  store i8 0, ptr %i.kv, align 2
  %i.lo = getelementptr inbounds i8, ptr %i.j, i64 %indvars.iv.i136
  %i.lp = load i8, ptr %i.lo, align 1, !range !4, !noundef !5
  %i.lq = trunc nuw i8 %i.lp to i1
  %i.lr = load i8, ptr %i.lh, align 1, !range !4, !noundef !5
  %i.ls = trunc nuw i8 %i.lr to i1
  %i.lt = call float @gistpenalty(ptr noundef nonnull %5, i32 noundef %i.lk, ptr noundef nonnull %7, i1 noundef zeroext %i.lq, ptr noundef nonnull %i.lg, i1 noundef zeroext %i.ls) #7 ; 2 uses
  %i.lu = fcmp oeq float %i.ll, %i.lt
  %i.lv = fcmp ule float %i.ll, %i.lt
  %.2.i = select i1 %i.lv, i1 %.03540.i, i1 false ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  br i1 %i.lu, label %bb.ay, label %._crit_edge.i137

._crit_edge.i137:                                 ; preds = %bb.az, %bb.ay
  %spec.select = select i1 %.2.i, i64 8, i64 40
  %spec.select139 = select i1 %.2.i, ptr %3, ptr %i.iv
  br label %placeOne.exit

placeOne.exit:                                    ; preds = %._crit_edge.i137, %._crit_edge
  %.sink.i = phi i64 [ 8, %._crit_edge ], [ %spec.select, %._crit_edge.i137 ]
  %.sink43.in.i = phi ptr [ %3, %._crit_edge ], [ %spec.select139, %._crit_edge.i137 ]
  %.sink43.i = load ptr, ptr %.sink43.in.i, align 8
  %i.lw = getelementptr inbounds nuw i8, ptr %3, i64 %.sink.i ; 2 uses
  %i.lx = load i32, ptr %i.lw, align 8            ; 2 uses
  %i.ly = add i32 %i.lx, 1
  store i32 %i.ly, ptr %i.lw, align 8
  %i.lz = sext i32 %i.lx to i64
  %i.ma = getelementptr inbounds [2 x i8], ptr %.sink43.i, i64 %i.lz
  store i16 %.0.lcssa, ptr %i.ma, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  br label %.critedge

.critedge:                                        ; preds = %bb.y, %bb.au, %bb.av, %bb.x, %findDontCares.exit, %placeOne.exit
  %.1 = phi i1 [ false, %bb.x ], [ false, %placeOne.exit ], [ false, %findDontCares.exit ], [ true, %bb.av ], [ true, %bb.au ], [ true, %bb.y ]
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @palloc_mul(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @nocache_index_getattr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i1 @errstart(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #2

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @gistMakeUnionItVec(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @pfree(ptr noundef) local_unnamed_addr #2

declare i64 @FunctionCall2Coll(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @errcode(i32 noundef) local_unnamed_addr #2

declare i32 @errmsg(ptr noundef, ...) local_unnamed_addr #2

declare i32 @errhint(ptr noundef, ...) local_unnamed_addr #2

declare zeroext i1 @gistKeyIsEQ(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @palloc0_mul(i64 noundef, i64 noundef) local_unnamed_addr #2

declare float @gistpenalty(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @gistMakeUnionKey(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @gistDeCompressAtt(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{i8 0, i8 2}
!5 = !{}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
end_hunk_0
