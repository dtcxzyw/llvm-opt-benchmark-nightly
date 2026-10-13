Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/gistsplit?download=true
inline.NumInlined: 19
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@gistSplitByKey:bb.a
  %niter = phi i64 [ 0, %.lr.ph161.preheader.new ], [ %niter.next.1, %bb.aj ]
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %indvars.iv.next
  %i.eg = load i8, ptr %i.ef, align 1, !range !4, !noundef !5
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %bb.ah, label %.lr.ph161.1

bb.ah:                                            ; preds = %.lr.ph161
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = sext i32 %.0159 to i64                  ; 2 uses
  %i.el = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.ek
  store ptr %i.ej, ptr %i.el, align 8
  %i.em = trunc i64 %indvars.iv.next to i16
  %i.en = getelementptr inbounds [2 x i8], ptr %i.eb, i64 %i.ek
  store i16 %i.em, ptr %i.en, align 2
  %i.eo = add i32 %.0159, 1
  %.pre = load ptr, ptr %i.dv, align 8
  br label %.lr.ph161.1

.lr.ph161.1:                                      ; preds = %.lr.ph161, %bb.ah
  %i.ep = phi ptr [ %.pre, %bb.ah ], [ %i.ee, %.lr.ph161 ] ; 2 uses
  %.1 = phi i32 [ %i.eo, %bb.ah ], [ %.0159, %.lr.ph161 ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %indvars.iv.next.1
  %i.er = load i8, ptr %i.eq, align 1, !range !4, !noundef !5
  %i.es = trunc nuw i8 %i.er to i1
  br i1 %i.es, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph161.1
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = sext i32 %.1 to i64                     ; 2 uses
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.ev
  store ptr %i.eu, ptr %i.ew, align 8
  %i.ex = trunc i64 %indvars.iv.next.1 to i16
  %i.ey = getelementptr inbounds [2 x i8], ptr %i.eb, i64 %i.ev
  store i16 %i.ex, ptr %i.ey, align 2
  %i.ez = add i32 %.1, 1
  %.pre.1 = load ptr, ptr %i.dv, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.lr.ph161.1
  %i.fa = phi ptr [ %.pre.1, %bb.ai ], [ %i.ep, %.lr.ph161.1 ] ; 2 uses
  %.1.1 = phi i32 [ %i.ez, %bb.ai ], [ %.1, %.lr.ph161.1 ] ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge162.loopexit.unr-lcssa, label %.lr.ph161, !llvm.loop !10

._crit_edge162.loopexit.unr-lcssa:                ; preds = %bb.aj
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge162, label %.lr.ph161.epil.preheader

.lr.ph161.epil.preheader:                         ; preds = %._crit_edge162.loopexit.unr-lcssa, %.lr.ph161.preheader
  %.epil.init = phi ptr [ %.pre191, %.lr.ph161.preheader ], [ %i.fa, %._crit_edge162.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph161.preheader ], [ %indvars.iv.next.1, %._crit_edge162.loopexit.unr-lcssa ] ; 2 uses
  %.0159.epil.init = phi i32 [ 0, %.lr.ph161.preheader ], [ %.1.1, %._crit_edge162.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod209 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod209)
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil.init, 1 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.epil.init, i64 %indvars.iv.next.epil
  %i.fc = load i8, ptr %i.fb, align 1, !range !4, !noundef !5
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %bb.ak, label %._crit_edge162

bb.ak:                                            ; preds = %.lr.ph161.epil.preheader
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil.init
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = sext i32 %.0159.epil.init to i64        ; 2 uses
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.fg
  store ptr %i.ff, ptr %i.fh, align 8
  %i.fi = trunc i64 %indvars.iv.next.epil to i16
  %i.fj = getelementptr inbounds [2 x i8], ptr %i.eb, i64 %i.fg
  store i16 %i.fi, ptr %i.fj, align 2
  %i.fk = add i32 %.0159.epil.init, 1
  br label %._crit_edge162

._crit_edge162:                                   ; preds = %._crit_edge162.loopexit.unr-lcssa, %bb.ak, %.lr.ph161.epil.preheader, %bb.ag
  %.0.lcssa = phi i32 [ 0, %bb.ag ], [ %.1.1, %._crit_edge162.loopexit.unr-lcssa ], [ %i.fk, %bb.ak ], [ %.0159.epil.init, %.lr.ph161.epil.preheader ]
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.9, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.9.0..sroa_idx, i64 20, i1 false)
  %.sroa.96.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 5 uses
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 8 ; 2 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.14, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.14.0..sroa_idx, i64 20, i1 false)
  %i.fl = tail call ptr @palloc_mul(i64 noundef 2, i64 noundef %i.f) #7 ; 3 uses
  %i.fm = load ptr, ptr %5, align 8
  %i.fn = load i32, ptr %.sroa.7.0..sroa_idx, align 8
  %i.fo = sext i32 %i.fn to i64
  %i.fp = shl nsw i64 %i.fo, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.fl, ptr align 2 %i.fm, i64 %i.fp, i1 false)
  %i.fq = tail call ptr @palloc_mul(i64 noundef 2, i64 noundef %i.f) #7 ; 3 uses
  %i.fr = load ptr, ptr %.sroa.96.0..sroa_idx, align 8
  %i.fs = load i32, ptr %.sroa.12.0..sroa_idx, align 8
  %i.ft = sext i32 %i.fs to i64
  %i.fu = shl nsw i64 %i.ft, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.fq, ptr align 2 %i.fr, i64 %i.fu, i1 false)
  %i.fv = add i32 %6, 1
  tail call void @gistSplitByKey(ptr noundef %0, ptr noundef %1, ptr noundef %i.ea, i32 noundef %.0.lcssa, ptr noundef %4, ptr noundef nonnull %5, i32 noundef %i.fv)
  %i.fw = load i32, ptr %.sroa.7.0..sroa_idx, align 8
  %i.fx = icmp sgt i32 %i.fw, 0
  br i1 %i.fx, label %.lr.ph167, label %.preheader

.preheader:                                       ; preds = %.lr.ph167, %._crit_edge162
  %.sroa.7.0.lcssa = phi i32 [ %.sroa.7.0.copyload, %._crit_edge162 ], [ %i.gh, %.lr.ph167 ]
  %i.fy = load i32, ptr %.sroa.12.0..sroa_idx, align 8
  %i.fz = icmp sgt i32 %i.fy, 0
  br i1 %i.fz, label %.lr.ph171, label %._crit_edge172

.lr.ph167:                                        ; preds = %._crit_edge162, %.lr.ph167
  %indvars.iv184 = phi i64 [ %indvars.iv.next185, %.lr.ph167 ], [ 0, %._crit_edge162 ] ; 2 uses
  %.sroa.7.0165 = phi i32 [ %i.gh, %.lr.ph167 ], [ %.sroa.7.0.copyload, %._crit_edge162 ] ; 2 uses
  %i.ga = load ptr, ptr %5, align 8
  %i.gb = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %indvars.iv184
  %i.gc = load i16, ptr %i.gb, align 2
  %i.gd = zext i16 %i.gc to i64
  %i.ge = getelementptr [2 x i8], ptr %i.eb, i64 %i.gd
  %i.gf = getelementptr i8, ptr %i.ge, i64 -2
  %i.gg = load i16, ptr %i.gf, align 2
  %i.gh = add i32 %.sroa.7.0165, 1                ; 2 uses
  %i.gi = sext i32 %.sroa.7.0165 to i64
  %i.gj = getelementptr inbounds [2 x i8], ptr %i.fl, i64 %i.gi
  store i16 %i.gg, ptr %i.gj, align 2
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %i.gk = load i32, ptr %.sroa.7.0..sroa_idx, align 8
  %i.gl = sext i32 %i.gk to i64
  %i.gm = icmp slt i64 %indvars.iv.next185, %i.gl
  br i1 %i.gm, label %.lr.ph167, label %.preheader, !llvm.loop !11

.lr.ph171:                                        ; preds = %.preheader, %.lr.ph171
  %indvars.iv187 = phi i64 [ %indvars.iv.next188, %.lr.ph171 ], [ 0, %.preheader ] ; 2 uses
  %.sroa.12.0170 = phi i32 [ %i.gu, %.lr.ph171 ], [ %.sroa.12.0.copyload, %.preheader ] ; 2 uses
  %i.gn = load ptr, ptr %.sroa.96.0..sroa_idx, align 8
  %i.go = getelementptr inbounds nuw [2 x i8], ptr %i.gn, i64 %indvars.iv187
  %i.gp = load i16, ptr %i.go, align 2
  %i.gq = zext i16 %i.gp to i64
  %i.gr = getelementptr [2 x i8], ptr %i.eb, i64 %i.gq
  %i.gs = getelementptr i8, ptr %i.gr, i64 -2
  %i.gt = load i16, ptr %i.gs, align 2
  %i.gu = add i32 %.sroa.12.0170, 1               ; 2 uses
  %i.gv = sext i32 %.sroa.12.0170 to i64
  %i.gw = getelementptr inbounds [2 x i8], ptr %i.fq, i64 %i.gv
  store i16 %i.gt, ptr %i.gw, align 2
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1 ; 2 uses
  %i.gx = load i32, ptr %.sroa.12.0..sroa_idx, align 8
  %i.gy = sext i32 %i.gx to i64
  %i.gz = icmp slt i64 %indvars.iv.next188, %i.gy
  br i1 %i.gz, label %.lr.ph171, label %._crit_edge172, !llvm.loop !12

._crit_edge172:                                   ; preds = %.lr.ph171, %.preheader
  %.sroa.12.0.lcssa = phi i32 [ %.sroa.12.0.copyload, %.preheader ], [ %i.gu, %.lr.ph171 ]
  store ptr %i.fl, ptr %5, align 8
  store i32 %.sroa.7.0.lcssa, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.9, i64 20, i1 false)
  store ptr %i.fq, ptr %.sroa.96.0..sroa_idx, align 8
  store i32 %.sroa.12.0.lcssa, ptr %.sroa.12.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.14, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  br label %gistSplitHalf.exit

gistSplitHalf.exit:                               ; preds = %bb.w, %bb.s, %bb.af, %._crit_edge172, %.thread, %bb.r
  %i.ha = icmp eq i32 %6, 0
  br i1 %i.ha, label %gistSplitHalf.exit.thread, label %bb.am

gistSplitHalf.exit.thread:                        ; preds = %bb.ad, %bb.ac, %gistSplitHalf.exit
  %i.hb = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.hc = load ptr, ptr %i.hb, align 8
  %i.hd = load i32, ptr %i.hc, align 8
  %i.he = icmp sgt i32 %i.hd, 1
  br i1 %i.he, label %bb.al, label %bb.am

bb.al:                                            ; preds = %gistSplitHalf.exit.thread
  %i.hf = getelementptr inbounds nuw i8, ptr %5, i64 640
  store ptr null, ptr %i.hf, align 8
  tail call fastcc void @gistunionsubkey(ptr noundef nonnull %4, ptr noundef %2, ptr noundef %5)
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge180, %bb.al, %gistSplitHalf.exit.thread, %gistSplitHalf.exit
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
  br i1 %.not.i, label %.lr.ph.i.us.preheader, label %.lr.ph.i.preheader61

.lr.ph.i.preheader61:                             ; preds = %.lr.ph.i.preheader
  %xtraiter = and i64 %i.k, 1
  %i.l = icmp eq i32 %i.e, 1
  br i1 %i.l, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader61.new

.lr.ph.i.preheader61.new:                         ; preds = %.lr.ph.i.preheader61
  %unroll_iter = and i64 %i.k, 2147483646
  br label %.lr.ph.i

.lr.ph.i.us.preheader:                            ; preds = %.lr.ph.i.preheader
  %xtraiter65 = and i64 %i.k, 1
  %3 = icmp eq i32 %i.e, 1
  br i1 %3, label %.lr.ph.i.us.epil.preheader.a, label %.lr.ph.i.us.preheader.new

.lr.ph.i.us.preheader.new:                        ; preds = %.lr.ph.i.us.preheader
  %unroll_iter68 = and i64 %i.k, 2147483646
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us, %.lr.ph.i.us.preheader.new
  %indvars.iv.i.us = phi i64 [ 0, %.lr.ph.i.us.preheader.new ], [ %indvars.iv.next.i.us.1, %.lr.ph.i.us ] ; 4 uses
  %niter69 = phi i64 [ 0, %.lr.ph.i.us.preheader.new ], [ %niter69.next.1, %.lr.ph.i.us ]
  %.phi.trans.insert.i.us = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.i.us
  %.pre26.i.us = load i16, ptr %.phi.trans.insert.i.us, align 2
  %.pre31.i.us = zext i16 %.pre26.i.us to i64
  %i.m = getelementptr [8 x i8], ptr %1, i64 %.pre31.i.us
  %i.n = getelementptr i8, ptr %i.m, i64 -8
  %i.o = load ptr, ptr %i.n, align 8
  %indvars.iv.next.i.us = or disjoint i64 %indvars.iv.i.us, 1 ; 2 uses
  %4 = shl i64 %indvars.iv.i.us, 32
  %5 = ashr exact i64 %4, 29
  %i.p = getelementptr inbounds i8, ptr %i.i, i64 %5
  store ptr %i.o, ptr %i.p, align 8
  %.phi.trans.insert.i.us.1.a = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.next.i.us
  %.pre26.i.us.1.a = load i16, ptr %.phi.trans.insert.i.us.1.a, align 2
  %.pre31.i.us.1.a = zext i16 %.pre26.i.us.1.a to i64
  %i.q = getelementptr [8 x i8], ptr %1, i64 %.pre31.i.us.1.a
  %i.r = getelementptr i8, ptr %i.q, i64 -8
  %i.s = load ptr, ptr %i.r, align 8
  %indvars.iv.next.i.us.1 = add nuw nsw i64 %indvars.iv.i.us, 2 ; 2 uses
  %6 = shl i64 %indvars.iv.next.i.us, 32
  %7 = ashr exact i64 %6, 29
  %i.t = getelementptr inbounds i8, ptr %i.i, i64 %7
  store ptr %i.s, ptr %i.t, align 8
  %niter69.next.1 = add i64 %niter69, 2           ; 2 uses
  %niter69.ncmp.1 = icmp eq i64 %niter69.next.1, %unroll_iter68
  br i1 %niter69.ncmp.1, label %gistunionsubkeyvec.exit.loopexit.unr-lcssa, label %.lr.ph.i.us, !llvm.loop !13

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i.preheader61.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.preheader61.new ], [ %indvars.iv.next.i.1, %bb.b ] ; 3 uses
  %.021.i = phi i32 [ 0, %.lr.ph.i.preheader61.new ], [ %.1.i.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader61.new ], [ %niter.next.1, %bb.b ]
  %.phi.trans.insert.i = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.i
  %.pre26.i = load i16, ptr %.phi.trans.insert.i, align 2
  %.pre31.i = zext i16 %.pre26.i to i64           ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 %.pre31.i
  %i.v = load i8, ptr %i.u, align 1, !range !4, !noundef !5
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %.lr.ph.i.1, label %._crit_edge25.i

._crit_edge25.i:                                  ; preds = %.lr.ph.i
  %i.x = getelementptr [8 x i8], ptr %1, i64 %.pre31.i
  %i.y = getelementptr i8, ptr %i.x, i64 -8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = add i32 %.021.i, 1
  %i.ab = sext i32 %.021.i to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ab
  store ptr %i.z, ptr %i.ac, align 8
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %._crit_edge25.i, %.lr.ph.i
  %.1.i = phi i32 [ %.021.i, %.lr.ph.i ], [ %i.aa, %._crit_edge25.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.i
  %.phi.trans.insert.i.1 = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %.pre26.i.1 = load i16, ptr %.phi.trans.insert.i.1, align 2
  %.pre31.i.1 = zext i16 %.pre26.i.1 to i64       ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 %.pre31.i.1
  %i.af = load i8, ptr %i.ae, align 1, !range !4, !noundef !5
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.b, label %._crit_edge25.i.1

._crit_edge25.i.1:                                ; preds = %.lr.ph.i.1
  %i.ah = getelementptr [8 x i8], ptr %1, i64 %.pre31.i.1
  %i.ai = getelementptr i8, ptr %i.ah, i64 -8
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = add i32 %.1.i, 1
  %i.al = sext i32 %.1.i to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.al
  store ptr %i.aj, ptr %i.am, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge25.i.1, %.lr.ph.i.1
  %.1.i.1 = phi i32 [ %.1.i, %.lr.ph.i.1 ], [ %i.ak, %._crit_edge25.i.1 ] ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %gistunionsubkeyvec.exit.loopexit62.unr-lcssa, label %.lr.ph.i, !llvm.loop !13

gistunionsubkeyvec.exit.loopexit.unr-lcssa:       ; preds = %.lr.ph.i.us
  %lcmp.mod66.not = icmp eq i64 %xtraiter65, 0
  br i1 %lcmp.mod66.not, label %gistunionsubkeyvec.exit, label %.lr.ph.i.us.epil.preheader.a

.lr.ph.i.us.epil.preheader.a:                     ; preds = %gistunionsubkeyvec.exit.loopexit.unr-lcssa, %.lr.ph.i.us.preheader
  %indvars.iv.i.us.epil.init.a = phi i64 [ 0, %.lr.ph.i.us.preheader ], [ %indvars.iv.next.i.us.1, %gistunionsubkeyvec.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod67 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod67)
  %.phi.trans.insert.i.us.epil = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.i.us.epil.init.a
  %.pre26.i.us.epil = load i16, ptr %.phi.trans.insert.i.us.epil, align 2
  %.pre31.i.us.epil = zext i16 %.pre26.i.us.epil to i64
  %i.an = getelementptr [8 x i8], ptr %1, i64 %.pre31.i.us.epil
  %i.ao = getelementptr i8, ptr %i.an, i64 -8
  %i.ap = load ptr, ptr %i.ao, align 8
  %8 = shl i64 %indvars.iv.i.us.epil.init.a, 32
  %9 = ashr exact i64 %8, 29
  %10 = getelementptr inbounds i8, ptr %i.i, i64 %9
  store ptr %i.ap, ptr %10, align 8
  br label %gistunionsubkeyvec.exit

gistunionsubkeyvec.exit.loopexit62.unr-lcssa:     ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %gistunionsubkeyvec.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %gistunionsubkeyvec.exit.loopexit62.unr-lcssa, %.lr.ph.i.preheader61
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader61 ], [ %indvars.iv.next.i.1, %gistunionsubkeyvec.exit.loopexit62.unr-lcssa ]
  %.021.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader61 ], [ %.1.i.1, %gistunionsubkeyvec.exit.loopexit62.unr-lcssa ] ; 3 uses
  %lcmp.mod64 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod64)
  %.phi.trans.insert.i.epil = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.i.epil.init
  %.pre26.i.epil = load i16, ptr %.phi.trans.insert.i.epil, align 2
  %.pre31.i.epil = zext i16 %.pre26.i.epil to i64 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 %.pre31.i.epil
  %i.ar = load i8, ptr %i.aq, align 1, !range !4, !noundef !5
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %gistunionsubkeyvec.exit, label %._crit_edge25.i.epil

._crit_edge25.i.epil:                             ; preds = %.lr.ph.i.epil.preheader
  %i.at = getelementptr [8 x i8], ptr %1, i64 %.pre31.i.epil
  %i.au = getelementptr i8, ptr %i.at, i64 -8
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = add i32 %.021.i.epil.init, 1
  %i.ax = sext i32 %.021.i.epil.init to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ax
  store ptr %i.av, ptr %i.ay, align 8
  br label %gistunionsubkeyvec.exit

gistunionsubkeyvec.exit:                          ; preds = %gistunionsubkeyvec.exit.loopexit62.unr-lcssa, %._crit_edge25.i.epil, %.lr.ph.i.epil.preheader, %.lr.ph.i.us.epil.preheader.a, %gistunionsubkeyvec.exit.loopexit.unr-lcssa, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.e, %.lr.ph.i.us.epil.preheader.a ], [ %i.e, %gistunionsubkeyvec.exit.loopexit.unr-lcssa ], [ %.1.i.1, %gistunionsubkeyvec.exit.loopexit62.unr-lcssa ], [ %.021.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.aw, %._crit_edge25.i.epil ]
  tail call void @gistMakeUnionItVec(ptr noundef %0, ptr noundef %i.i, i32 noundef %.0.lcssa.i, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #7
  tail call void @pfree(ptr noundef %i.i) #7
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ba = load ptr, ptr %i.az, align 8            ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bc = load i32, ptr %i.bb, align 8            ; 9 uses
  %i.bd = sext i32 %i.bc to i64
  %i.be = tail call ptr @palloc_mul(i64 noundef 8, i64 noundef %i.bd) #7 ; 8 uses
  %i.bf = icmp sgt i32 %i.bc, 0
  br i1 %i.bf, label %.lr.ph.i14.preheader, label %gistunionsubkeyvec.exit31

.lr.ph.i14.preheader:                             ; preds = %gistunionsubkeyvec.exit
  %.not.i20 = icmp eq ptr %i.b, null
  %i.bg = zext nneg i32 %i.bc to i64              ; 4 uses
  br i1 %.not.i20, label %.lr.ph.i14.us.preheader, label %.lr.ph.i14.preheader59

.lr.ph.i14.preheader59:                           ; preds = %.lr.ph.i14.preheader
  %xtraiter70 = and i64 %i.bg, 1
  %i.bh = icmp eq i32 %i.bc, 1
  br i1 %i.bh, label %.lr.ph.i14.epil.preheader, label %.lr.ph.i14.preheader59.new

.lr.ph.i14.preheader59.new:                       ; preds = %.lr.ph.i14.preheader59
  %unroll_iter74 = and i64 %i.bg, 2147483646
  br label %.lr.ph.i14

.lr.ph.i14.us.preheader:                          ; preds = %.lr.ph.i14.preheader
  %xtraiter76 = and i64 %i.bg, 1
  %11 = icmp eq i32 %i.bc, 1
  br i1 %11, label %.lr.ph.i14.us.epil.preheader.a, label %.lr.ph.i14.us.preheader.new

.lr.ph.i14.us.preheader.new:                      ; preds = %.lr.ph.i14.us.preheader
  %unroll_iter79 = and i64 %i.bg, 2147483646
  br label %.lr.ph.i14.us

.lr.ph.i14.us:                                    ; preds = %.lr.ph.i14.us, %.lr.ph.i14.us.preheader.new
  %indvars.iv.i18.us = phi i64 [ 0, %.lr.ph.i14.us.preheader.new ], [ %indvars.iv.next.i30.us.1, %.lr.ph.i14.us ] ; 4 uses
  %niter80 = phi i64 [ 0, %.lr.ph.i14.us.preheader.new ], [ %niter80.next.1, %.lr.ph.i14.us ]
  %.phi.trans.insert.i21.us = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %indvars.iv.i18.us
  %.pre26.i22.us = load i16, ptr %.phi.trans.insert.i21.us, align 2
  %.pre31.i23.us = zext i16 %.pre26.i22.us to i64
  %i.bi = getelementptr [8 x i8], ptr %1, i64 %.pre31.i23.us
  %i.bj = getelementptr i8, ptr %i.bi, i64 -8
  %i.bk = load ptr, ptr %i.bj, align 8
  %indvars.iv.next.i30.us = or disjoint i64 %indvars.iv.i18.us, 1 ; 2 uses
  %12 = shl i64 %indvars.iv.i18.us, 32
  %13 = ashr exact i64 %12, 29
  %i.bl = getelementptr inbounds i8, ptr %i.be, i64 %13
  store ptr %i.bk, ptr %i.bl, align 8
  %.phi.trans.insert.i21.us.1.a = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %indvars.iv.next.i30.us
  %.pre26.i22.us.1.a = load i16, ptr %.phi.trans.insert.i21.us.1.a, align 2
  %.pre31.i23.us.1.a = zext i16 %.pre26.i22.us.1.a to i64
  %i.bm = getelementptr [8 x i8], ptr %1, i64 %.pre31.i23.us.1.a
  %i.bn = getelementptr i8, ptr %i.bm, i64 -8
  %i.bo = load ptr, ptr %i.bn, align 8
  %indvars.iv.next.i30.us.1 = add nuw nsw i64 %indvars.iv.i18.us, 2 ; 2 uses
  %14 = shl i64 %indvars.iv.next.i30.us, 32
  %15 = ashr exact i64 %14, 29
  %i.bp = getelementptr inbounds i8, ptr %i.be, i64 %15
  store ptr %i.bo, ptr %i.bp, align 8
  %niter80.next.1 = add i64 %niter80, 2           ; 2 uses
  %niter80.ncmp.1 = icmp eq i64 %niter80.next.1, %unroll_iter79
  br i1 %niter80.ncmp.1, label %gistunionsubkeyvec.exit31.loopexit.unr-lcssa, label %.lr.ph.i14.us, !llvm.loop !13

.lr.ph.i14:                                       ; preds = %bb.c, %.lr.ph.i14.preheader59.new
  %indvars.iv.i18 = phi i64 [ 0, %.lr.ph.i14.preheader59.new ], [ %indvars.iv.next.i30.1, %bb.c ] ; 3 uses
  %.021.i19 = phi i32 [ 0, %.lr.ph.i14.preheader59.new ], [ %.1.i29.1, %bb.c ] ; 3 uses
  %niter75 = phi i64 [ 0, %.lr.ph.i14.preheader59.new ], [ %niter75.next.1, %bb.c ]
  %.phi.trans.insert.i21 = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %indvars.iv.i18
  %.pre26.i22 = load i16, ptr %.phi.trans.insert.i21, align 2
  %.pre31.i23 = zext i16 %.pre26.i22 to i64       ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 %.pre31.i23
  %i.br = load i8, ptr %i.bq, align 1, !range !4, !noundef !5
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %.lr.ph.i14.1, label %._crit_edge25.i24

._crit_edge25.i24:                                ; preds = %.lr.ph.i14
  %i.bt = getelementptr [8 x i8], ptr %1, i64 %.pre31.i23
  %i.bu = getelementptr i8, ptr %i.bt, i64 -8
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = add i32 %.021.i19, 1
  %i.bx = sext i32 %.021.i19 to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bx
  store ptr %i.bv, ptr %i.by, align 8
  br label %.lr.ph.i14.1

.lr.ph.i14.1:                                     ; preds = %._crit_edge25.i24, %.lr.ph.i14
  %.1.i29 = phi i32 [ %.021.i19, %.lr.ph.i14 ], [ %i.bw, %._crit_edge25.i24 ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %indvars.iv.i18
  %.phi.trans.insert.i21.1 = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  %.pre26.i22.1 = load i16, ptr %.phi.trans.insert.i21.1, align 2
  %.pre31.i23.1 = zext i16 %.pre26.i22.1 to i64   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 %.pre31.i23.1
  %i.cb = load i8, ptr %i.ca, align 1, !range !4, !noundef !5
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.c, label %._crit_edge25.i24.1

._crit_edge25.i24.1:                              ; preds = %.lr.ph.i14.1
  %i.cd = getelementptr [8 x i8], ptr %1, i64 %.pre31.i23.1
  %i.ce = getelementptr i8, ptr %i.cd, i64 -8
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = add i32 %.1.i29, 1
  %i.ch = sext i32 %.1.i29 to i64
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.ch
  store ptr %i.cf, ptr %i.ci, align 8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge25.i24.1, %.lr.ph.i14.1
  %.1.i29.1 = phi i32 [ %.1.i29, %.lr.ph.i14.1 ], [ %i.cg, %._crit_edge25.i24.1 ] ; 3 uses
  %indvars.iv.next.i30.1 = add nuw nsw i64 %indvars.iv.i18, 2 ; 2 uses
  %niter75.next.1 = add i64 %niter75, 2           ; 2 uses
  %niter75.ncmp.1 = icmp eq i64 %niter75.next.1, %unroll_iter74
  br i1 %niter75.ncmp.1, label %gistunionsubkeyvec.exit31.loopexit60.unr-lcssa, label %.lr.ph.i14, !llvm.loop !13

gistunionsubkeyvec.exit31.loopexit.unr-lcssa:     ; preds = %.lr.ph.i14.us
  %lcmp.mod77.not = icmp eq i64 %xtraiter76, 0
  br i1 %lcmp.mod77.not, label %gistunionsubkeyvec.exit31, label %.lr.ph.i14.us.epil.preheader.a

.lr.ph.i14.us.epil.preheader.a:                   ; preds = %gistunionsubkeyvec.exit31.loopexit.unr-lcssa, %.lr.ph.i14.us.preheader
  %indvars.iv.i18.us.epil.init.a = phi i64 [ 0, %.lr.ph.i14.us.preheader ], [ %indvars.iv.next.i30.us.1, %gistunionsubkeyvec.exit31.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod78 = trunc i32 %i.bc to i1
  tail call void @llvm.assume(i1 %lcmp.mod78)
  %.phi.trans.insert.i21.us.epil = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %indvars.iv.i18.us.epil.init.a
  %.pre26.i22.us.epil = load i16, ptr %.phi.trans.insert.i21.us.epil, align 2
  %.pre31.i23.us.epil = zext i16 %.pre26.i22.us.epil to i64
  %i.cj = getelementptr [8 x i8], ptr %1, i64 %.pre31.i23.us.epil
  %i.ck = getelementptr i8, ptr %i.cj, i64 -8
  %i.cl = load ptr, ptr %i.ck, align 8
  %16 = shl i64 %indvars.iv.i18.us.epil.init.a, 32
  %17 = ashr exact i64 %16, 29
  %18 = getelementptr inbounds i8, ptr %i.be, i64 %17
  store ptr %i.cl, ptr %18, align 8
  br label %gistunionsubkeyvec.exit31

gistunionsubkeyvec.exit31.loopexit60.unr-lcssa:   ; preds = %bb.c
  %lcmp.mod71.not = icmp eq i64 %xtraiter70, 0
  br i1 %lcmp.mod71.not, label %gistunionsubkeyvec.exit31, label %.lr.ph.i14.epil.preheader

.lr.ph.i14.epil.preheader:                        ; preds = %gistunionsubkeyvec.exit31.loopexit60.unr-lcssa, %.lr.ph.i14.preheader59
  %indvars.iv.i18.epil.init = phi i64 [ 0, %.lr.ph.i14.preheader59 ], [ %indvars.iv.next.i30.1, %gistunionsubkeyvec.exit31.loopexit60.unr-lcssa ]
  %.021.i19.epil.init = phi i32 [ 0, %.lr.ph.i14.preheader59 ], [ %.1.i29.1, %gistunionsubkeyvec.exit31.loopexit60.unr-lcssa ] ; 3 uses
  %lcmp.mod73 = trunc i32 %i.bc to i1
  tail call void @llvm.assume(i1 %lcmp.mod73)
  %.phi.trans.insert.i21.epil = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %indvars.iv.i18.epil.init
  %.pre26.i22.epil = load i16, ptr %.phi.trans.insert.i21.epil, align 2
  %.pre31.i23.epil = zext i16 %.pre26.i22.epil to i64 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 %.pre31.i23.epil
  %i.cn = load i8, ptr %i.cm, align 1, !range !4, !noundef !5
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %gistunionsubkeyvec.exit31, label %._crit_edge25.i24.epil

._crit_edge25.i24.epil:                           ; preds = %.lr.ph.i14.epil.preheader
  %i.cp = getelementptr [8 x i8], ptr %1, i64 %.pre31.i23.epil
  %i.cq = getelementptr i8, ptr %i.cp, i64 -8
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = add i32 %.021.i19.epil.init, 1
  %i.ct = sext i32 %.021.i19.epil.init to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.ct
  store ptr %i.cr, ptr %i.cu, align 8
  br label %gistunionsubkeyvec.exit31

gistunionsubkeyvec.exit31:                        ; preds = %gistunionsubkeyvec.exit31.loopexit60.unr-lcssa, %._crit_edge25.i24.epil, %.lr.ph.i14.epil.preheader, %.lr.ph.i14.us.epil.preheader.a, %gistunionsubkeyvec.exit31.loopexit.unr-lcssa, %gistunionsubkeyvec.exit
  %.0.lcssa.i13 = phi i32 [ 0, %gistunionsubkeyvec.exit ], [ %i.bc, %.lr.ph.i14.us.epil.preheader.a ], [ %i.bc, %gistunionsubkeyvec.exit31.loopexit.unr-lcssa ], [ %.1.i29.1, %gistunionsubkeyvec.exit31.loopexit60.unr-lcssa ], [ %.021.i19.epil.init, %.lr.ph.i14.epil.preheader ], [ %i.cs, %._crit_edge25.i24.epil ]
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 608
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 352
  tail call void @gistMakeUnionItVec(ptr noundef %0, ptr noundef %i.be, i32 noundef %.0.lcssa.i13, ptr noundef nonnull %i.cw, ptr noundef nonnull %i.cv) #7
  tail call void @pfree(ptr noundef %i.be) #7
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
  %i.bj = trunc i32 %i.ay to i16
  %umax = tail call i16 @llvm.umax.i16(i16 %i.bj, i16 2)
  %wide.trip.count = zext i16 %umax to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i
  %indvars.iv = phi i32 [ %indvars.iv.next, %bb.i ], [ 1, %.lr.ph.i ] ; 3 uses
  %.not44.i = icmp samesign ult i32 %i.bi, %indvars.iv
  %i.bk = trunc nuw i32 %indvars.iv to i16        ; 2 uses
  br i1 %.not44.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bl = load ptr, ptr %3, align 8
  %i.bm = load i32, ptr %i.ae, align 8
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [2 x i8], ptr %i.bl, i64 %i.bn
  store i16 %i.bk, ptr %i.bo, align 2
  %i.bp = load i32, ptr %i.ae, align 8
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr %i.ae, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.br = load ptr, ptr %i.bg, align 8
  %i.bs = load i32, ptr %i.bh, align 8
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [2 x i8], ptr %i.br, i64 %i.bt
  store i16 %i.bk, ptr %i.bu, align 2
  %i.bv = load i32, ptr %i.bh, align 8
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bh, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %genericPickSplit.exit, label %bb.f, !llvm.loop !14

genericPickSplit.exit:                            ; preds = %bb.i, %bb.e
  %i.bx = load i32, ptr %1, align 8
  %i.by = sext i32 %i.bx to i64
  %i.bz = shl nsw i64 %i.by, 5
  %i.ca = or disjoint i64 %i.bz, 8
  %i.cb = tail call ptr @palloc(i64 noundef %i.ca) #7 ; 4 uses
  %i.cc = load i32, ptr %i.ae, align 8            ; 2 uses
  store i32 %i.cc, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.cf = sext i32 %i.cc to i64
  %i.cg = shl nsw i64 %i.cf, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cd, ptr nonnull readonly align 8 %i.ce, i64 %i.cg, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 1576
  %i.ci = getelementptr inbounds [48 x i8], ptr %i.ch, i64 %i.e ; 2 uses
  %i.cj = load i32, ptr %i.z, align 4
  %i.ck = ptrtoint ptr %i.cb to i64               ; 2 uses
  %i.cl = ptrtoint ptr %i.c to i64                ; 2 uses
  %i.cm = call i64 @FunctionCall2Coll(ptr noundef nonnull %i.ci, i32 noundef %i.cj, i64 noundef %i.ck, i64 noundef %i.cl) #7
  store i64 %i.cm, ptr %i.r, align 8
  %i.cn = load i32, ptr %i.bh, align 8            ; 2 uses
  store i32 %i.cn, ptr %i.cb, align 8
  %i.co = load i32, ptr %i.ae, align 8
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [32 x i8], ptr %i.ce, i64 %i.cp
  %i.cr = sext i32 %i.cn to i64
  %i.cs = shl nsw i64 %i.cr, 5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cd, ptr nonnull readonly align 8 %i.cq, i64 %i.cs, i1 false)
  %i.ct = load i32, ptr %i.z, align 4
  %i.cu = call i64 @FunctionCall2Coll(ptr noundef nonnull %i.ci, i32 noundef %i.ct, i64 noundef %i.ck, i64 noundef %i.cl) #7
  store i64 %i.cu, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %bb.n

bb.j:                                             ; preds = %bb.b
  %i.cv = load ptr, ptr %3, align 8
  %i.cw = add i32 %i.af, -1
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [2 x i8], ptr %i.cv, i64 %i.cx ; 2 uses
  %i.cz = load i16, ptr %i.cy, align 2
  %i.da = icmp eq i16 %i.cz, 0
  br i1 %i.da, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.db = load i32, ptr %1, align 8
  %i.dc = trunc i32 %i.db to i16
  %i.dd = add i16 %i.dc, -1
  store i16 %i.dd, ptr %i.cy, align 2
  %.pre = load i32, ptr %i.ah, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.de = phi i32 [ %.pre, %bb.k ], [ %i.ai, %bb.j ]
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = add i32 %i.de, -1
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [2 x i8], ptr %i.dg, i64 %i.di ; 2 uses
  %i.dk = load i16, ptr %i.dj, align 2
  %i.dl = icmp eq i16 %i.dk, 0
  br i1 %i.dl, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dm = load i32, ptr %1, align 8
  %i.dn = trunc i32 %i.dm to i16
  %i.do = add i16 %i.dn, -1
  store i16 %i.do, ptr %i.dj, align 2
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %genericPickSplit.exit
  %i.dp = load i8, ptr %i.i, align 8, !range !4, !noundef !5
  %i.dq = trunc nuw i8 %i.dp to i1                ; 2 uses
  br i1 %i.dq, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dr = load i8, ptr %i.n, align 8, !range !4, !noundef !5
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %bb.p, label %bb.x

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dt = load i64, ptr %i.p, align 8
  %i.du = load i64, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #7
  store i64 %i.dt, ptr %9, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %0, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr null, ptr %i.dw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i16 0, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %9, i64 26
  store i8 0, ptr %i.dy, align 2
  store i64 %i.du, ptr %10, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %0, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr null, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i16 0, ptr %i.eb, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %10, i64 26
  store i8 0, ptr %i.ec, align 2
  %i.ed = load i64, ptr %i.r, align 8
  store i64 %i.ed, ptr %11, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store ptr %0, ptr %i.ee, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr null, ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  store i16 0, ptr %i.eg, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %11, i64 26 ; 2 uses
  store i8 0, ptr %i.eh, align 2
  %i.ei = load i64, ptr %i.v, align 8
  store i64 %i.ei, ptr %12, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store ptr %0, ptr %i.ej, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr null, ptr %i.ek, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  store i16 0, ptr %i.el, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %12, i64 26 ; 2 uses
  store i8 0, ptr %i.em, align 2
  br i1 %i.dq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.en = load i8, ptr %i.n, align 8, !range !4, !noundef !5
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %.split.i, label %bb.r

.split.i:                                         ; preds = %bb.q
  %i.ep = call float @gistpenalty(ptr noundef nonnull %5, i32 noundef %2, ptr noundef nonnull %9, i1 noundef zeroext false, ptr noundef nonnull %11, i1 noundef zeroext false) #7
  %i.eq = call float @gistpenalty(ptr noundef nonnull %5, i32 noundef %2, ptr noundef nonnull %10, i1 noundef zeroext false, ptr noundef nonnull %12, i1 noundef zeroext false) #7
  %i.er = fadd float %i.ep, %i.eq
  %i.es = call float @gistpenalty(ptr noundef nonnull %5, i32 noundef %2, ptr noundef nonnull %9, i1 noundef zeroext false, ptr noundef nonnull %12, i1 noundef zeroext false) #7
  %i.et = call float @gistpenalty(ptr noundef nonnull %5, i32 noundef %2, ptr noundef nonnull %10, i1 noundef zeroext false, ptr noundef nonnull %11, i1 noundef zeroext false) #7
  %i.eu = fadd float %i.es, %i.et
  %i.ev = fcmp ogt float %i.er, %i.eu
  br i1 %i.ev, label %bb.s, label %bb.t

bb.r:                                             ; preds = %bb.q, %bb.p
  %..i = phi ptr [ %9, %bb.q ], [ %10, %bb.p ]    ; 2 uses
  %i.ew = call float @gistpenalty(ptr noundef nonnull %5, i32 noundef %2, ptr noundef nonnull %..i, i1 noundef zeroext false, ptr noundef nonnull %11, i1 noundef zeroext false) #7
  %i.ex = call float @gistpenalty(ptr noundef nonnull %5, i32 noundef %2, ptr noundef nonnull %..i, i1 noundef zeroext false, ptr noundef nonnull %12, i1 noundef zeroext false) #7
  %i.ey = fcmp olt float %i.ew, %i.ex
  %.1.in.i = select i1 %i.ey, ptr %i.i, ptr %i.n
  %.1.i = load i8, ptr %.1.in.i, align 8, !range !4, !noundef !5
  %i.ez = icmp eq i8 %.1.i, 0
  br i1 %i.ez, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %.split.i
  %i.fa = load ptr, ptr %3, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8
  store ptr %i.fc, ptr %3, align 8
  store ptr %i.fa, ptr %i.fb, align 8
  %i.fd = load i32, ptr %i.ae, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 8
  store i32 %i.ff, ptr %i.ae, align 8
  %i.fg = and i32 %i.fd, 65535
  store i32 %i.fg, ptr %i.fe, align 8
  %i.fh = load i64, ptr %i.r, align 8             ; 2 uses
  %i.fi = load i64, ptr %i.v, align 8             ; 2 uses
  store i64 %i.fi, ptr %i.r, align 8
  store i64 %i.fh, ptr %i.v, align 8
  store i64 %i.fi, ptr %11, align 8
  store ptr %0, ptr %i.ee, align 8
  store ptr null, ptr %i.ef, align 8
  store i16 0, ptr %i.eg, align 8
  store i8 0, ptr %i.eh, align 2
  store i64 %i.fh, ptr %12, align 8
  store ptr %0, ptr %i.ej, align 8
  store ptr null, ptr %i.ek, align 8
  store i16 0, ptr %i.el, align 8
  store i8 0, ptr %i.em, align 2
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %.split.i
  %i.fj = load i8, ptr %i.i, align 8, !range !4, !noundef !5
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @gistMakeUnionKey(ptr noundef nonnull %5, i32 noundef %2, ptr noundef nonnull %9, i1 noundef zeroext false, ptr noundef nonnull %11, i1 noundef zeroext false, ptr noundef nonnull %i.r, ptr noundef nonnull %i.b) #7
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.fl = load i8, ptr %i.n, align 8, !range !4, !noundef !5
  %i.fm = trunc nuw i8 %i.fl to i1
  br i1 %i.fm, label %bb.w, label %supportSecondarySplit.exit

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
  %i.fn = load i64, ptr %i.r, align 8
  store i64 %i.fn, ptr %i.p, align 8
  %i.fo = load i64, ptr %i.v, align 8
  store i64 %i.fo, ptr %i.t, align 8
  store i8 0, ptr %i.f, align 1
  store i8 0, ptr %i.k, align 1
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 640 ; 8 uses
  store ptr null, ptr %i.fp, align 8
  %i.fq = add i32 %2, 1                           ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = load i32, ptr %i.fs, align 8
  %i.fu = icmp slt i32 %i.fq, %i.ft
  br i1 %i.fu, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  %i.fv = load i64, ptr %i.r, align 8
  %i.fw = load i64, ptr %i.v, align 8
  %i.fx = call zeroext i1 @gistKeyIsEQ(ptr noundef nonnull %5, i32 noundef %2, i64 noundef %i.fv, i64 noundef %i.fw) #7
  br i1 %i.fx, label %.critedge, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fy = load i32, ptr %1, align 8
  %i.fz = add i32 %i.fy, 1
  %i.ga = sext i32 %i.fz to i64
  %i.gb = call ptr @palloc0_mul(i64 noundef 1, i64 noundef %i.ga) #7
  store ptr %i.gb, ptr %i.fp, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  %i.gd = load i64, ptr %i.v, align 8
  store i64 %i.gd, ptr %8, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %0, ptr %i.ge, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr null, ptr %i.gf, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  store i16 0, ptr %i.gg, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %8, i64 26 ; 2 uses
  store i8 0, ptr %i.gh, align 2
  %i.gi = load i32, ptr %i.ae, align 8
  %i.gj = icmp sgt i32 %i.gi, 0
  br i1 %i.gj, label %.lr.ph.i115, label %._crit_edge.i

.lr.ph.i115:                                      ; preds = %bb.z, %bb.ab
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ab ], [ 0, %bb.z ] ; 2 uses
  %.033.i = phi i32 [ %.1.i116, %bb.ab ], [ 0, %bb.z ] ; 2 uses
  %i.gk = load ptr, ptr %3, align 8
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %i.gk, i64 %indvars.iv.i
  %i.gm = load i16, ptr %i.gl, align 2
  %i.gn = zext i16 %i.gm to i64                   ; 2 uses
  %i.go = getelementptr inbounds nuw [32 x i8], ptr %i.gc, i64 %i.gn
  %i.gp = call float @gistpenalty(ptr noundef nonnull %5, i32 noundef %2, ptr noundef nonnull %8, i1 noundef zeroext false, ptr noundef nonnull %i.go, i1 noundef zeroext false) #7
  %i.gq = fcmp oeq float %i.gp, 0.000000e+00
  br i1 %i.gq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i115
  %i.gr = load ptr, ptr %i.fp, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gn
  store i8 1, ptr %i.gs, align 1
  %i.gt = add i32 %.033.i, 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.i115
  %.1.i116 = phi i32 [ %i.gt, %bb.aa ], [ %.033.i, %.lr.ph.i115 ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.gu = load i32, ptr %i.ae, align 8
  %i.gv = sext i32 %i.gu to i64
  %i.gw = icmp slt i64 %indvars.iv.next.i, %i.gv
  br i1 %i.gw, label %.lr.ph.i115, label %._crit_edge.i, !llvm.loop !15

._crit_edge.i:                                    ; preds = %bb.ab, %bb.z
  %.0.lcssa.i = phi i32 [ 0, %bb.z ], [ %.1.i116, %bb.ab ] ; 2 uses
  %i.gx = load i64, ptr %i.r, align 8
  store i64 %i.gx, ptr %8, align 8
  store ptr %0, ptr %i.ge, align 8
  store ptr null, ptr %i.gf, align 8
  store i16 0, ptr %i.gg, align 8
  store i8 0, ptr %i.gh, align 2
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  %i.gz = load i32, ptr %i.gy, align 8            ; 2 uses
  %i.ha = icmp sgt i32 %i.gz, 0
  br i1 %i.ha, label %.lr.ph37.i, label %findDontCares.exit

.lr.ph37.i:                                       ; preds = %._crit_edge.i
  %i.hb = getelementptr inbounds nuw i8, ptr %3, i64 32
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ae, %.lr.ph37.i
  %indvars.iv41.i = phi i64 [ 0, %.lr.ph37.i ], [ %indvars.iv.next42.i, %bb.ae ] ; 2 uses
  %.235.i = phi i32 [ %.0.lcssa.i, %.lr.ph37.i ], [ %.3.i, %bb.ae ] ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %i.hc, i64 %indvars.iv41.i
  %i.he = load i16, ptr %i.hd, align 2
  %i.hf = zext i16 %i.he to i64                   ; 2 uses
  %i.hg = getelementptr inbounds nuw [32 x i8], ptr %i.gc, i64 %i.hf
  %i.hh = call float @gistpenalty(ptr noundef nonnull %5, i32 noundef %2, ptr noundef nonnull %8, i1 noundef zeroext false, ptr noundef nonnull %i.hg, i1 noundef zeroext false) #7
  %i.hi = fcmp oeq float %i.hh, 0.000000e+00
  br i1 %i.hi, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.hj = load ptr, ptr %i.fp, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hf
  store i8 1, ptr %i.hk, align 1
  %i.hl = add i32 %.235.i, 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.3.i = phi i32 [ %i.hl, %bb.ad ], [ %.235.i, %bb.ac ] ; 2 uses
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %i.hm = load i32, ptr %i.gy, align 8            ; 2 uses
  %i.hn = sext i32 %i.hm to i64
  %i.ho = icmp slt i64 %indvars.iv.next42.i, %i.hn
  br i1 %i.ho, label %bb.ac, label %findDontCares.exit, !llvm.loop !16

findDontCares.exit:                               ; preds = %bb.ae, %._crit_edge.i
  %i.hp = phi i32 [ %i.gz, %._crit_edge.i ], [ %i.hm, %bb.ae ]
  %.2.lcssa.i = phi i32 [ %.0.lcssa.i, %._crit_edge.i ], [ %.3.i, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  %i.hq = icmp sgt i32 %.2.lcssa.i, 0
  br i1 %i.hq, label %bb.af, label %.critedge

bb.af:                                            ; preds = %findDontCares.exit
  %i.hr = load ptr, ptr %3, align 8               ; 5 uses
  %i.hs = load ptr, ptr %i.fp, align 8            ; 4 uses
  %i.ht = load i32, ptr %i.ae, align 8            ; 7 uses
  %i.hu = icmp sgt i32 %i.ht, 0
  br i1 %i.hu, label %.lr.ph.preheader.i, label %removeDontCares.exit

.lr.ph.preheader.i:                               ; preds = %bb.af
  %wide.trip.count.i = zext nneg i32 %i.ht to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.hv = icmp eq i32 %i.ht, 1
  br i1 %i.hv, label %.lr.ph.i118.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph.i118

.lr.ph.i118:                                      ; preds = %bb.ak, %.lr.ph.preheader.i.new
  %indvars.iv.i119 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i121.1, %bb.ak ] ; 3 uses
  %.019.i = phi ptr [ %i.hr, %.lr.ph.preheader.i.new ], [ %.1.i120.1, %bb.ak ] ; 3 uses
  %.01517.i = phi i32 [ %i.ht, %.lr.ph.preheader.i.new ], [ %.116.i.1, %bb.ak ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %bb.ak ]
  %i.hw = getelementptr inbounds nuw [2 x i8], ptr %i.hr, i64 %indvars.iv.i119
  %i.hx = load i16, ptr %i.hw, align 2            ; 2 uses
  %i.hy = zext i16 %i.hx to i64
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hy
  %i.ia = load i8, ptr %i.hz, align 1, !range !4, !noundef !5
  %i.ib = icmp eq i8 %i.ia, 0
  br i1 %i.ib, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.i118
  store i16 %i.hx, ptr %.019.i, align 2
  %i.ic = getelementptr inbounds nuw i8, ptr %.019.i, i64 2
  br label %.lr.ph.i118.1

bb.ah:                                            ; preds = %.lr.ph.i118
  %i.id = add i32 %.01517.i, -1
  br label %.lr.ph.i118.1

.lr.ph.i118.1:                                    ; preds = %bb.ah, %bb.ag
  %.116.i = phi i32 [ %.01517.i, %bb.ag ], [ %i.id, %bb.ah ] ; 2 uses
  %.1.i120 = phi ptr [ %i.ic, %bb.ag ], [ %.019.i, %bb.ah ] ; 3 uses
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %i.hr, i64 %indvars.iv.i119
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 2
  %i.ig = load i16, ptr %i.if, align 2            ; 2 uses
  %i.ih = zext i16 %i.ig to i64
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.ih
  %i.ij = load i8, ptr %i.ii, align 1, !range !4, !noundef !5
  %i.ik = icmp eq i8 %i.ij, 0
  br i1 %i.ik, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i118.1
  %i.il = add i32 %.116.i, -1
  br label %bb.ak

bb.aj:                                            ; preds = %.lr.ph.i118.1
  store i16 %i.ig, ptr %.1.i120, align 2
  %i.im = getelementptr inbounds nuw i8, ptr %.1.i120, i64 2
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.116.i.1 = phi i32 [ %.116.i, %bb.aj ], [ %i.il, %bb.ai ] ; 3 uses
  %.1.i120.1 = phi ptr [ %i.im, %bb.aj ], [ %.1.i120, %bb.ai ] ; 2 uses
  %indvars.iv.next.i121.1 = add nuw nsw i64 %indvars.iv.i119, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %removeDontCares.exit.loopexit.unr-lcssa, label %.lr.ph.i118, !llvm.loop !17

removeDontCares.exit.loopexit.unr-lcssa:          ; preds = %bb.ak
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %removeDontCares.exit.loopexit, label %.lr.ph.i118.epil.preheader

.lr.ph.i118.epil.preheader:                       ; preds = %removeDontCares.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i119.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i121.1, %removeDontCares.exit.loopexit.unr-lcssa ]
  %.019.i.epil.init = phi ptr [ %i.hr, %.lr.ph.preheader.i ], [ %.1.i120.1, %removeDontCares.exit.loopexit.unr-lcssa ]
  %.01517.i.epil.init = phi i32 [ %i.ht, %.lr.ph.preheader.i ], [ %.116.i.1, %removeDontCares.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod10 = trunc i32 %i.ht to i1
  call void @llvm.assume(i1 %lcmp.mod10)
  %i.in = getelementptr inbounds nuw [2 x i8], ptr %i.hr, i64 %indvars.iv.i119.epil.init
  %i.io = load i16, ptr %i.in, align 2            ; 2 uses
  %i.ip = zext i16 %i.io to i64
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.ip
  %i.ir = load i8, ptr %i.iq, align 1, !range !4, !noundef !5
  %i.is = icmp eq i8 %i.ir, 0
  br i1 %i.is, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i118.epil.preheader
  %i.it = add i32 %.01517.i.epil.init, -1
  br label %removeDontCares.exit.loopexit

bb.am:                                            ; preds = %.lr.ph.i118.epil.preheader
  store i16 %i.io, ptr %.019.i.epil.init, align 2
  br label %removeDontCares.exit.loopexit

removeDontCares.exit.loopexit:                    ; preds = %bb.al, %bb.am, %removeDontCares.exit.loopexit.unr-lcssa
  %.116.i.lcssa = phi i32 [ %.116.i.1, %removeDontCares.exit.loopexit.unr-lcssa ], [ %.01517.i.epil.init, %bb.am ], [ %i.it, %bb.al ]
  %.pre149 = load ptr, ptr %i.fp, align 8
  %.pre150 = load i32, ptr %i.gy, align 8
  br label %removeDontCares.exit

removeDontCares.exit:                             ; preds = %removeDontCares.exit.loopexit, %bb.af
  %i.iu = phi i32 [ %i.hp, %bb.af ], [ %.pre150, %removeDontCares.exit.loopexit ] ; 7 uses
  %i.iv = phi ptr [ %i.hs, %bb.af ], [ %.pre149, %removeDontCares.exit.loopexit ] ; 3 uses
  %.015.lcssa.i = phi i32 [ %i.ht, %bb.af ], [ %.116.i.lcssa, %removeDontCares.exit.loopexit ] ; 2 uses
  store i32 %.015.lcssa.i, ptr %i.ae, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.ix = load ptr, ptr %i.iw, align 8            ; 5 uses
  %i.iy = icmp sgt i32 %i.iu, 0
  br i1 %i.iy, label %.lr.ph.preheader.i124, label %removeDontCares.exit134

.lr.ph.preheader.i124:                            ; preds = %removeDontCares.exit
  %wide.trip.count.i125 = zext nneg i32 %i.iu to i64 ; 2 uses
  %xtraiter11 = and i64 %wide.trip.count.i125, 1
  %i.iz = icmp eq i32 %i.iu, 1
  br i1 %i.iz, label %.lr.ph.i126.epil.preheader, label %.lr.ph.preheader.i124.new

.lr.ph.preheader.i124.new:                        ; preds = %.lr.ph.preheader.i124
  %unroll_iter15 = and i64 %wide.trip.count.i125, 2147483646
  br label %.lr.ph.i126

.lr.ph.i126:                                      ; preds = %bb.ar, %.lr.ph.preheader.i124.new
  %indvars.iv.i127 = phi i64 [ 0, %.lr.ph.preheader.i124.new ], [ %indvars.iv.next.i132.1, %bb.ar ] ; 3 uses
  %.019.i128 = phi ptr [ %i.ix, %.lr.ph.preheader.i124.new ], [ %.1.i131.1, %bb.ar ] ; 3 uses
  %.01517.i129 = phi i32 [ %i.iu, %.lr.ph.preheader.i124.new ], [ %.116.i130.1, %bb.ar ] ; 2 uses
  %niter16 = phi i64 [ 0, %.lr.ph.preheader.i124.new ], [ %niter16.next.1, %bb.ar ]
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %i.ix, i64 %indvars.iv.i127
  %i.jb = load i16, ptr %i.ja, align 2            ; 2 uses
  %i.jc = zext i16 %i.jb to i64
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.jc
  %i.je = load i8, ptr %i.jd, align 1, !range !4, !noundef !5
  %i.jf = icmp eq i8 %i.je, 0
  br i1 %i.jf, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.lr.ph.i126
  store i16 %i.jb, ptr %.019.i128, align 2
  %i.jg = getelementptr inbounds nuw i8, ptr %.019.i128, i64 2
  br label %.lr.ph.i126.1

bb.ao:                                            ; preds = %.lr.ph.i126
  %i.jh = add i32 %.01517.i129, -1
  br label %.lr.ph.i126.1

.lr.ph.i126.1:                                    ; preds = %bb.ao, %bb.an
  %.116.i130 = phi i32 [ %.01517.i129, %bb.an ], [ %i.jh, %bb.ao ] ; 2 uses
  %.1.i131 = phi ptr [ %i.jg, %bb.an ], [ %.019.i128, %bb.ao ] ; 3 uses
  %i.ji = getelementptr inbounds nuw [2 x i8], ptr %i.ix, i64 %indvars.iv.i127
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 2
  %i.jk = load i16, ptr %i.jj, align 2            ; 2 uses
  %i.jl = zext i16 %i.jk to i64
  %i.jm = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.jl
  %i.jn = load i8, ptr %i.jm, align 1, !range !4, !noundef !5
  %i.jo = icmp eq i8 %i.jn, 0
  br i1 %i.jo, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i126.1
  %i.jp = add i32 %.116.i130, -1
  br label %bb.ar

bb.aq:                                            ; preds = %.lr.ph.i126.1
  store i16 %i.jk, ptr %.1.i131, align 2
  %i.jq = getelementptr inbounds nuw i8, ptr %.1.i131, i64 2
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.116.i130.1 = phi i32 [ %.116.i130, %bb.aq ], [ %i.jp, %bb.ap ] ; 3 uses
  %.1.i131.1 = phi ptr [ %i.jq, %bb.aq ], [ %.1.i131, %bb.ap ] ; 2 uses
  %indvars.iv.next.i132.1 = add nuw nsw i64 %indvars.iv.i127, 2 ; 2 uses
  %niter16.next.1 = add i64 %niter16, 2           ; 2 uses
  %niter16.ncmp.1 = icmp eq i64 %niter16.next.1, %unroll_iter15
  br i1 %niter16.ncmp.1, label %removeDontCares.exit134.loopexit.unr-lcssa, label %.lr.ph.i126, !llvm.loop !17

removeDontCares.exit134.loopexit.unr-lcssa:       ; preds = %bb.ar
  %lcmp.mod12.not = icmp eq i64 %xtraiter11, 0
  br i1 %lcmp.mod12.not, label %removeDontCares.exit134.loopexit, label %.lr.ph.i126.epil.preheader

.lr.ph.i126.epil.preheader:                       ; preds = %removeDontCares.exit134.loopexit.unr-lcssa, %.lr.ph.preheader.i124
  %indvars.iv.i127.epil.init = phi i64 [ 0, %.lr.ph.preheader.i124 ], [ %indvars.iv.next.i132.1, %removeDontCares.exit134.loopexit.unr-lcssa ]
  %.019.i128.epil.init = phi ptr [ %i.ix, %.lr.ph.preheader.i124 ], [ %.1.i131.1, %removeDontCares.exit134.loopexit.unr-lcssa ]
  %.01517.i129.epil.init = phi i32 [ %i.iu, %.lr.ph.preheader.i124 ], [ %.116.i130.1, %removeDontCares.exit134.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod14 = trunc i32 %i.iu to i1
  call void @llvm.assume(i1 %lcmp.mod14)
  %i.jr = getelementptr inbounds nuw [2 x i8], ptr %i.ix, i64 %indvars.iv.i127.epil.init
  %i.js = load i16, ptr %i.jr, align 2            ; 2 uses
  %i.jt = zext i16 %i.js to i64
  %i.ju = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.jt
  %i.jv = load i8, ptr %i.ju, align 1, !range !4, !noundef !5
  %i.jw = icmp eq i8 %i.jv, 0
  br i1 %i.jw, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i126.epil.preheader
  %i.jx = add i32 %.01517.i129.epil.init, -1
  br label %removeDontCares.exit134.loopexit

bb.at:                                            ; preds = %.lr.ph.i126.epil.preheader
  store i16 %i.js, ptr %.019.i128.epil.init, align 2
  br label %removeDontCares.exit134.loopexit

removeDontCares.exit134.loopexit:                 ; preds = %bb.as, %bb.at, %removeDontCares.exit134.loopexit.unr-lcssa
  %.116.i130.lcssa = phi i32 [ %.116.i130.1, %removeDontCares.exit134.loopexit.unr-lcssa ], [ %.01517.i129.epil.init, %bb.at ], [ %i.jx, %bb.as ]
  %.pre151 = load i32, ptr %i.ae, align 8
  br label %removeDontCares.exit134

removeDontCares.exit134:                          ; preds = %removeDontCares.exit134.loopexit, %removeDontCares.exit
  %i.jy = phi i32 [ %.015.lcssa.i, %removeDontCares.exit ], [ %.pre151, %removeDontCares.exit134.loopexit ]
  %.015.lcssa.i123 = phi i32 [ %i.iu, %removeDontCares.exit ], [ %.116.i130.lcssa, %removeDontCares.exit134.loopexit ] ; 2 uses
  store i32 %.015.lcssa.i123, ptr %i.gy, align 8
  %i.jz = icmp eq i32 %i.jy, 0
  %i.ka = icmp eq i32 %.015.lcssa.i123, 0
  %or.cond = select i1 %i.jz, i1 true, i1 %i.ka
  br i1 %or.cond, label %bb.au, label %bb.av

bb.au:                                            ; preds = %removeDontCares.exit134
  store ptr null, ptr %i.fp, align 8
  br label %.critedge

bb.av:                                            ; preds = %removeDontCares.exit134
  call fastcc void @gistunionsubkey(ptr noundef nonnull %5, ptr noundef %4, ptr noundef nonnull %3)
  %i.kb = icmp eq i32 %.2.lcssa.i, 1
  br i1 %i.kb, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.av
  %i.kc = load i32, ptr %1, align 8               ; 2 uses
  %i.kd = icmp sgt i32 %i.kc, 1
  br i1 %i.kd, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ke = load ptr, ptr %i.fp, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph, %bb.ax
  %.0142 = phi i16 [ 1, %.lr.ph ], [ %i.kj, %bb.ax ] ; 3 uses
  %i.kf = zext i16 %.0142 to i64
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.kf
  %i.kh = load i8, ptr %i.kg, align 1, !range !4, !noundef !5
  %i.ki = trunc nuw i8 %i.kh to i1
  br i1 %i.ki, label %._crit_edge, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.kj = add i16 %.0142, 1                       ; 3 uses
  %i.kk = zext i16 %i.kj to i32
  %i.kl = icmp samesign ugt i32 %i.kc, %i.kk
  br i1 %i.kl, label %bb.aw, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.ax, %bb.aw, %.preheader
  %.0.lcssa = phi i16 [ 1, %.preheader ], [ %.0142, %bb.aw ], [ %i.kj, %bb.ax ] ; 2 uses
  %i.km = zext i16 %.0.lcssa to i64
  %i.kn = getelementptr [8 x i8], ptr %4, i64 %i.km
  %i.ko = getelementptr i8, ptr %i.kn, i64 -8
  %i.kp = load ptr, ptr %i.ko, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @gistDeCompressAtt(ptr noundef nonnull %5, ptr noundef %0, ptr noundef %i.kp, ptr noundef null, i16 noundef zeroext 0, ptr noundef nonnull %6, ptr noundef nonnull %i.a) #7
  %i.kq = load ptr, ptr %i.fr, align 8
  %i.kr = load i32, ptr %i.kq, align 8
  %i.ks = icmp slt i32 %i.fq, %i.kr
  br i1 %i.ks, label %.lr.ph.i135, label %placeOne.exit

.lr.ph.i135:                                      ; preds = %._crit_edge
  %i.kt = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %7, i64 26 ; 2 uses
  %i.kx = sext i32 %i.fq to i64
  br label %bb.az

bb.ay:                                            ; preds = %bb.az
  %indvars.iv.next.i137 = add nsw i64 %indvars.iv.i136, 1 ; 2 uses
  %i.ky = load ptr, ptr %i.fr, align 8
  %i.kz = load i32, ptr %i.ky, align 8
  %i.la = sext i32 %i.kz to i64
  %i.lb = icmp slt i64 %indvars.iv.next.i137, %i.la
  br i1 %i.lb, label %bb.az, label %placeOne.exit, !llvm.loop !19

bb.az:                                            ; preds = %bb.ay, %.lr.ph.i135
  %indvars.iv.i136 = phi i64 [ %i.kx, %.lr.ph.i135 ], [ %indvars.iv.next.i137, %bb.ay ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  %i.lc = getelementptr inbounds [8 x i8], ptr %i.o, i64 %indvars.iv.i136
  %i.ld = load i64, ptr %i.lc, align 8
  store i64 %i.ld, ptr %7, align 8
  store ptr %0, ptr %i.kt, align 8
  store ptr null, ptr %i.ku, align 8
  store i16 0, ptr %i.kv, align 8
  store i8 0, ptr %i.kw, align 2
  %i.le = getelementptr inbounds i8, ptr %i.d, i64 %indvars.iv.i136
  %i.lf = load i8, ptr %i.le, align 1, !range !4, !noundef !5
  %i.lg = trunc nuw i8 %i.lf to i1
  %i.lh = getelementptr inbounds [32 x i8], ptr %6, i64 %indvars.iv.i136 ; 2 uses
  %i.li = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.i136 ; 2 uses
  %i.lj = load i8, ptr %i.li, align 1, !range !4, !noundef !5
  %i.lk = trunc nuw i8 %i.lj to i1
  %i.ll = trunc nsw i64 %indvars.iv.i136 to i32   ; 2 uses
  %i.lm = call float @gistpenalty(ptr noundef nonnull %5, i32 noundef %i.ll, ptr noundef nonnull %7, i1 noundef zeroext %i.lg, ptr noundef nonnull %i.lh, i1 noundef zeroext %i.lk) #7 ; 2 uses
  %i.ln = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv.i136
  %i.lo = load i64, ptr %i.ln, align 8
  store i64 %i.lo, ptr %7, align 8
  store ptr %0, ptr %i.kt, align 8
  store ptr null, ptr %i.ku, align 8
  store i16 0, ptr %i.kv, align 8
  store i8 0, ptr %i.kw, align 2
  %i.lp = getelementptr inbounds i8, ptr %i.j, i64 %indvars.iv.i136
  %i.lq = load i8, ptr %i.lp, align 1, !range !4, !noundef !5
  %i.lr = trunc nuw i8 %i.lq to i1
  %i.ls = load i8, ptr %i.li, align 1, !range !4, !noundef !5
  %i.lt = trunc nuw i8 %i.ls to i1
  %i.lu = call float @gistpenalty(ptr noundef nonnull %5, i32 noundef %i.ll, ptr noundef nonnull %7, i1 noundef zeroext %i.lr, ptr noundef nonnull %i.lh, i1 noundef zeroext %i.lt) #7 ; 2 uses
  %i.lv = fcmp une float %i.lm, %i.lu
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  br i1 %i.lv, label %bb.ba, label %bb.ay

bb.ba:                                            ; preds = %bb.az
  %i.lw = fcmp ule float %i.lm, %i.lu             ; 2 uses
  %spec.select = select i1 %i.lw, i64 8, i64 40
  %spec.select138 = select i1 %i.lw, ptr %3, ptr %i.iw
  br label %placeOne.exit

placeOne.exit:                                    ; preds = %bb.ay, %bb.ba, %._crit_edge
  %.sink.i = phi i64 [ 8, %._crit_edge ], [ %spec.select, %bb.ba ], [ 8, %bb.ay ]
  %.sink51.in.i = phi ptr [ %3, %._crit_edge ], [ %spec.select138, %bb.ba ], [ %3, %bb.ay ]
  %.sink51.i = load ptr, ptr %.sink51.in.i, align 8
  %i.lx = getelementptr inbounds nuw i8, ptr %3, i64 %.sink.i ; 2 uses
  %i.ly = load i32, ptr %i.lx, align 8            ; 2 uses
  %i.lz = add i32 %i.ly, 1
  store i32 %i.lz, ptr %i.lx, align 8
  %i.ma = sext i32 %i.ly to i64
  %i.mb = getelementptr inbounds [2 x i8], ptr %.sink51.i, i64 %i.ma
  store i16 %.0.lcssa, ptr %i.mb, align 2
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
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
end_hunk_0
