inline.NumInlined: 2
begin_hunk_0_@iteration_init:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.u = load <4 x i32>, ptr %i.t, align 4, !tbaa !4
  store <4 x i32> %i.u, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 64), align 16, !tbaa !4
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.w = load <4 x i32>, ptr %i.v, align 4, !tbaa !4
  store <4 x i32> %i.w, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 80), align 16, !tbaa !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.y = load <4 x i32>, ptr %i.x, align 4, !tbaa !4
  store <4 x i32> %i.y, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 96), align 16, !tbaa !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  %i.aa = load <4 x i32>, ptr %i.z, align 4, !tbaa !4
  store <4 x i32> %i.aa, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 112), align 16, !tbaa !4
  %i.ab = load i32, ptr %i.e, align 8, !tbaa !16
  %i.ac = load i32, ptr %i.f, align 8, !tbaa !17
  %i.ad = mul nsw i32 %i.ac, 3
  %i.ae = add nsw i32 %i.ad, %i.ab
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [148 x i8], ptr @sfBandIndex, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 128
  %i.ai = load <4 x i32>, ptr %i.ah, align 4, !tbaa !4
  store <4 x i32> %i.ai, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 128), align 16, !tbaa !4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 144
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4
  store i32 %i.ak, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 144), align 16, !tbaa !4
  store i32 0, ptr %1, align 8, !tbaa !18
  tail call void @compute_ath(ptr noundef nonnull %0, ptr noundef nonnull @ATH_l, ptr noundef nonnull @ATH_s)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader70
  %indvars.iv = phi i64 [ 0, %.preheader70 ], [ %indvars.iv.next.3, %bb.b ] ; 6 uses
  %i.al = trunc nuw nsw i64 %indvars.iv to i32
  %i.am = uitofp nneg i32 %i.al to double
  %i.an = tail call double @pow(double noundef %i.am, double noundef f0x3FF5555555555555) #14, !tbaa !4
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr @pow43, i64 %indvars.iv
  store double %i.an, ptr %i.ao, align 16, !tbaa !19
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ap = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.aq = uitofp nneg i32 %i.ap to double
  %i.ar = tail call double @pow(double noundef %i.aq, double noundef f0x3FF5555555555555) #14, !tbaa !4
  %i.as = getelementptr inbounds nuw [8 x i8], ptr @pow43, i64 %indvars.iv.next
  store double %i.ar, ptr %i.as, align 8, !tbaa !19
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.at = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %i.au = uitofp nneg i32 %i.at to double
  %i.av = tail call double @pow(double noundef %i.au, double noundef f0x3FF5555555555555) #14, !tbaa !4
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr @pow43, i64 %indvars.iv.next.1
  store double %i.av, ptr %i.aw, align 16, !tbaa !19
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ax = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  %i.ay = uitofp nneg i32 %i.ax to double
  %i.az = tail call double @pow(double noundef %i.ay, double noundef f0x3FF5555555555555) #14, !tbaa !4
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr @pow43, i64 %indvars.iv.next.2
  store double %i.az, ptr %i.ba, align 8, !tbaa !19
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, 8208
  br i1 %exitcond.not.3, label %.preheader68.preheader, label %bb.b, !llvm.loop !21

.preheader68.preheader:                           ; preds = %bb.b
  %.pre = load double, ptr @pow43, align 16, !tbaa !19
  br label %.preheader68

.preheader68:                                     ; preds = %.preheader68.1, %.preheader68.preheader
  %i.bb = phi double [ %.pre, %.preheader68.preheader ], [ %i.bo, %.preheader68.1 ]
  %indvars.iv85 = phi i64 [ 0, %.preheader68.preheader ], [ %indvars.iv.next86.1, %.preheader68.1 ] ; 4 uses
  %indvars.iv.next86 = or disjoint i64 %indvars.iv85, 1 ; 3 uses
  %i.bc = trunc nuw nsw i64 %indvars.iv.next86 to i32
  %i.bd = uitofp nneg i32 %i.bc to double
  %i.be = getelementptr inbounds nuw [8 x i8], ptr @pow43, i64 %indvars.iv.next86
  %i.bf = load double, ptr %i.be, align 8, !tbaa !19 ; 2 uses
  %i.bg = fadd double %i.bb, %i.bf
  %i.bh = fmul double %i.bg, 5.000000e-01
  %i.bi = tail call double @pow(double noundef %i.bh, double noundef 7.500000e-01) #14, !tbaa !4
  %i.bj = fsub double %i.bd, %i.bi
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr @adj43, i64 %indvars.iv85
  store double %i.bj, ptr %i.bk, align 16, !tbaa !19
  %exitcond88.not = icmp eq i64 %indvars.iv85, 8206
  br i1 %exitcond88.not, label %bb.c, label %.preheader68.1

.preheader68.1:                                   ; preds = %.preheader68
  %indvars.iv.next86.1 = add nuw nsw i64 %indvars.iv85, 2 ; 3 uses
  %i.bl = trunc nuw nsw i64 %indvars.iv.next86.1 to i32
  %i.bm = uitofp nneg i32 %i.bl to double
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr @pow43, i64 %indvars.iv.next86.1
  %i.bo = load double, ptr %i.bn, align 16, !tbaa !19 ; 2 uses
  %i.bp = fadd double %i.bf, %i.bo
  %i.bq = fmul double %i.bp, 5.000000e-01
  %i.br = tail call double @pow(double noundef %i.bq, double noundef 7.500000e-01) #14, !tbaa !4
  %i.bs = fsub double %i.bm, %i.br
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr @adj43, i64 %indvars.iv.next86
  store double %i.bs, ptr %i.bt, align 8, !tbaa !19
  br label %.preheader68

bb.c:                                             ; preds = %.preheader68
  store double 5.000000e-01, ptr getelementptr inbounds nuw (i8, ptr @adj43, i64 65656), align 8, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %indvars.iv89 = phi i64 [ 1, %bb.c ], [ %indvars.iv.next90.3, %bb.e ] ; 5 uses
  %i.bu = getelementptr [8 x i8], ptr @pow43, i64 %indvars.iv89 ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 -8
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !19
  %i.bx = load double, ptr %i.bu, align 8, !tbaa !19 ; 2 uses
  %i.by = fadd double %i.bw, %i.bx
  %i.bz = fmul double %i.by, 5.000000e-01
  %i.ca = tail call double @pow(double noundef %i.bz, double noundef 7.500000e-01) #14, !tbaa !4 ; 0 uses
  %i.cb = getelementptr [8 x i8], ptr @pow43, i64 %indvars.iv89
  %i.cc = getelementptr i8, ptr %i.cb, i64 8
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !19 ; 2 uses
  %i.ce = fadd double %i.bx, %i.cd
  %i.cf = fmul double %i.ce, 5.000000e-01
  %i.cg = tail call double @pow(double noundef %i.cf, double noundef 7.500000e-01) #14, !tbaa !4 ; 0 uses
  %i.ch = getelementptr [8 x i8], ptr @pow43, i64 %indvars.iv89
  %i.ci = getelementptr i8, ptr %i.ch, i64 16
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !19 ; 2 uses
  %i.ck = fadd double %i.cd, %i.cj
  %i.cl = fmul double %i.ck, 5.000000e-01
  %i.cm = tail call double @pow(double noundef %i.cl, double noundef 7.500000e-01) #14, !tbaa !4 ; 0 uses
  %indvars.iv.next90.2 = add nuw nsw i64 %indvars.iv89, 3 ; 2 uses
  %exitcond92.not.2 = icmp eq i64 %indvars.iv.next90.2, 8208
  br i1 %exitcond92.not.2, label %.preheader67, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cn = getelementptr [8 x i8], ptr @pow43, i64 %indvars.iv.next90.2
  %i.co = load double, ptr %i.cn, align 8, !tbaa !19
  %i.cp = fadd double %i.cj, %i.co
  %i.cq = fmul double %i.cp, 5.000000e-01
  %i.cr = tail call double @pow(double noundef %i.cq, double noundef 7.500000e-01) #14, !tbaa !4 ; 0 uses
  %indvars.iv.next90.3 = add nuw nsw i64 %indvars.iv89, 4
  br label %bb.d

.preheader67:                                     ; preds = %bb.d, %.preheader67
  %indvars.iv93 = phi i64 [ %indvars.iv.next94.1, %.preheader67 ], [ 0, %bb.d ] ; 5 uses
  %i.cs = trunc i64 %indvars.iv93 to i32
  %i.ct = add nsw i32 %i.cs, -210
  %i.cu = sitofp i32 %i.ct to double              ; 2 uses
  %i.cv = fmul nnan double %i.cu, -1.875000e-01
  %exp2 = tail call double @exp2(double %i.cv) #14
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr @ipow20, i64 %indvars.iv93
  store double %exp2, ptr %i.cw, align 16, !tbaa !19
  %i.cx = fmul nnan double %i.cu, 2.500000e-01
  %exp264 = tail call double @exp2(double %i.cx) #14
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr @pow20, i64 %indvars.iv93
  store double %exp264, ptr %i.cy, align 16, !tbaa !19
  %indvars.iv.next94 = or disjoint i64 %indvars.iv93, 1 ; 3 uses
  %i.cz = trunc i64 %indvars.iv.next94 to i32
  %i.da = add nsw i32 %i.cz, -210
  %i.db = sitofp i32 %i.da to double              ; 2 uses
  %i.dc = fmul nnan double %i.db, -1.875000e-01
  %exp2.1 = tail call double @exp2(double %i.dc) #14
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr @ipow20, i64 %indvars.iv.next94
  store double %exp2.1, ptr %i.dd, align 8, !tbaa !19
  %i.de = fmul nnan double %i.db, 2.500000e-01
  %exp264.1 = tail call double @exp2(double %i.de) #14
  %i.df = getelementptr inbounds nuw [8 x i8], ptr @pow20, i64 %indvars.iv.next94
  store double %exp264.1, ptr %i.df, align 8, !tbaa !19
  %indvars.iv.next94.1 = add nuw nsw i64 %indvars.iv93, 2 ; 2 uses
  %exitcond96.not.1 = icmp eq i64 %indvars.iv.next94.1, 256
  br i1 %exitcond96.not.1, label %.loopexit, label %.preheader67, !llvm.loop !23

.loopexit:                                        ; preds = %.preheader67, %bb.a
  store i32 0, ptr @convert_mdct, align 4, !tbaa !4
  store i32 0, ptr @reduce_sidechannel, align 4, !tbaa !4
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !24
  %i.di = icmp eq i32 %i.dh, 2
  br i1 %i.di, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.loopexit
  store i32 1, ptr @convert_mdct, align 4, !tbaa !4
  store i32 1, ptr @reduce_sidechannel, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.loopexit
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !25 ; 2 uses
  %i.dl = icmp sgt i32 %i.dk, 0
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !26 ; 4 uses
  %i.do = icmp sgt i32 %i.dn, 0                   ; 2 uses
  br i1 %i.dl, label %.preheader66.lr.ph, label %.preheader65

.preheader66.lr.ph:                               ; preds = %bb.g
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 48
  br i1 %i.do, label %.preheader66.us.preheader, label %._crit_edge

.preheader66.us.preheader:                        ; preds = %.preheader66.lr.ph
  %wide.trip.count104 = zext nneg i32 %i.dk to i64
  %wide.trip.count = zext nneg i32 %i.dn to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.dq = icmp eq i32 %i.dn, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod115 = trunc i32 %i.dn to i1
  br label %.preheader66.us

.preheader66.us:                                  ; preds = %.preheader66.us.preheader, %._crit_edge.us
  %indvars.iv101 = phi i64 [ 0, %.preheader66.us.preheader ], [ %indvars.iv.next102, %._crit_edge.us ] ; 2 uses
  %i.dr = getelementptr inbounds nuw [240 x i8], ptr %i.dp, i64 %indvars.iv101 ; 3 uses
  br i1 %i.dq, label %.epil.preheader, label %.preheader66.us.new

.preheader65:                                     ; preds = %bb.g
  br i1 %i.do, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %._crit_edge.us, %.preheader65
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 204
  br label %.preheader

.preheader66.us.new:                              ; preds = %.preheader66.us, %.preheader66.us.new
  %indvars.iv97 = phi i64 [ %indvars.iv.next98.1, %.preheader66.us.new ], [ 0, %.preheader66.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader66.us.new ], [ 0, %.preheader66.us ]
  %i.ds = getelementptr inbounds nuw [120 x i8], ptr %i.dr, i64 %indvars.iv97 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !27
  %i.dv = icmp eq i32 %i.du, 2                    ; 2 uses
  %spec.select = select i1 %i.dv, i32 0, i32 21
  %spec.select114 = select i1 %i.dv, i32 0, i32 12
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 80
  store i32 %spec.select, ptr %i.dw, align 8, !tbaa !30
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 84
  store i32 %spec.select114, ptr %i.dx, align 4, !tbaa !31
  %i.dy = getelementptr inbounds nuw [120 x i8], ptr %i.dr, i64 %indvars.iv97 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 144
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !27
  %i.eb = icmp eq i32 %i.ea, 2                    ; 2 uses
  %spec.select.1 = select i1 %i.eb, i32 0, i32 21
  %spec.select114.1 = select i1 %i.eb, i32 0, i32 12
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 200
  store i32 %spec.select.1, ptr %i.ec, align 8, !tbaa !30
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 204
  store i32 %spec.select114.1, ptr %i.ed, align 4, !tbaa !31
  %indvars.iv.next98.1 = add nuw nsw i64 %indvars.iv97, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader66.us.new, !llvm.loop !32

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader66.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader66.us
  %indvars.iv97.epil.init = phi i64 [ 0, %.preheader66.us ], [ %indvars.iv.next98.1, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod115)
  %i.ee = getelementptr inbounds nuw [120 x i8], ptr %i.dr, i64 %indvars.iv97.epil.init ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !27
  %i.eh = icmp eq i32 %i.eg, 2                    ; 2 uses
  %spec.select.epil = select i1 %i.eh, i32 0, i32 21
  %spec.select114.epil = select i1 %i.eh, i32 0, i32 12
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 80
  store i32 %spec.select.epil, ptr %i.ei, align 8, !tbaa !30
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 84
  store i32 %spec.select114.epil, ptr %i.ej, align 4, !tbaa !31
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %exitcond105.not = icmp eq i64 %indvars.iv.next102, %wide.trip.count104
  br i1 %exitcond105.not, label %.preheader.lr.ph, label %.preheader66.us, !llvm.loop !33

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %indvar = phi i64 [ 0, %.preheader.lr.ph ], [ %indvar.next, %.preheader ] ; 2 uses
  %i.ek = shl nuw nsw i64 %indvar, 4
  %i.el = getelementptr i8, ptr %1, i64 %i.ek
  %scevgep = getelementptr i8, ptr %i.el, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %scevgep, i8 0, i64 16, i1 false), !tbaa !4
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %indvars = trunc i64 %indvar.next to i32
  %i.em = load i32, ptr %3, align 4, !tbaa !26
  %i.en = icmp sgt i32 %i.em, %indvars
  br i1 %i.en, label %.preheader, label %._crit_edge, !llvm.loop !34

._crit_edge:                                      ; preds = %.preheader, %.preheader66.lr.ph, %.preheader65
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define dso_local void @compute_ath(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !35
  %i.c = sitofp i32 %i.b to double
  %i.d = fdiv double %i.c, 1.000000e+03           ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  br label %bb.b

..loopexit52_crit_edge:                           ; preds = %.lr.ph
  store double %., ptr %i.j, align 8, !tbaa !19
  br label %.loopexit52

.loopexit52:                                      ; preds = %..loopexit52_crit_edge, %bb.b
  %exitcond62.not = icmp eq i64 %indvars.iv.next, 21
  br i1 %exitcond62.not, label %.preheader, label %bb.b, !llvm.loop !36

bb.b:                                             ; preds = %bb.a, %.loopexit52
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %.loopexit52 ] ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr @scalefac_band, i64 %indvars.iv
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr @scalefac_band, i64 %indvars.iv.next
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  store double f0x547D42AEA2879F2E, ptr %i.j, align 8, !tbaa !19
  %i.k = icmp slt i32 %i.g, %i.i
  br i1 %i.k, label %.lr.ph, label %.loopexit52

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.54 = phi double [ %., %.lr.ph ], [ f0x547D42AEA2879F2E, %bb.b ] ; 2 uses
  %.04253 = phi i32 [ %i.ad, %.lr.ph ], [ %i.g, %bb.b ] ; 2 uses
  %i.l = sitofp i32 %.04253 to double
  %i.m = fmul double %i.d, %i.l
  %i.n = fdiv double %i.m, 1.152000e+03           ; 2 uses
  %i.o = fcmp olt double %i.n, 2.000000e-02
  %i.p = select i1 %i.o, double 2.000000e-02, double %i.n ; 3 uses
  %i.q = tail call double @pow(double noundef %i.p, double noundef -8.000000e-01) #14, !tbaa !4
  %i.r = fadd double %i.p, -3.300000e+00
  %i.s = tail call double @pow(double noundef %i.r, double noundef 2.000000e+00) #14, !tbaa !4
  %i.t = fmul double %i.s, -6.000000e-01
  %i.u = tail call double @exp(double noundef %i.t) #14, !tbaa !4
  %i.v = fmul double %i.u, -6.500000e+00
  %i.w = tail call double @llvm.fmuladd.f64(double %i.q, double 3.640000e+00, double %i.v)
  %i.x = tail call double @pow(double noundef %i.p, double noundef 4.000000e+00) #14, !tbaa !4
  %i.y = tail call double @llvm.fmuladd.f64(double %i.x, double 1.000000e-03, double %i.w)
  %i.z = load i32, ptr %i.e, align 4, !tbaa !37
  %.not.i = icmp eq i32 %i.z, 0
  %.0.v.i = select i1 %.not.i, double -1.140000e+02, double -2.000000e+02
  %.0.i = fadd double %i.y, %.0.v.i
  %i.aa = fdiv double %.0.i, 1.000000e+01
  %i.ab = tail call double @pow(double noundef 1.000000e+01, double noundef %i.aa) #14, !tbaa !4 ; 2 uses
  %i.ac = fcmp olt double %.54, %i.ab
  %. = select i1 %i.ac, double %.54, double %i.ab ; 2 uses
  %i.ad = add nsw i32 %.04253, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.ad, %i.i
  br i1 %exitcond.not, label %..loopexit52_crit_edge, label %.lr.ph, !llvm.loop !38

..loopexit_crit_edge:                             ; preds = %.lr.ph57
  store double %.48, ptr %i.ai, align 8, !tbaa !19
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %.preheader
  %exitcond67.not = icmp eq i64 %indvars.iv.next65, 12
  br i1 %exitcond67.not, label %bb.c, label %.preheader, !llvm.loop !39

.preheader:                                       ; preds = %.loopexit52, %.loopexit
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %.loopexit ], [ 0, %.loopexit52 ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 92), i64 %indvars.iv64
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4  ; 2 uses
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 92), i64 %indvars.iv.next65
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4  ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv64 ; 2 uses
  store double f0x547D42AEA2879F2E, ptr %i.ai, align 8, !tbaa !19
  %i.aj = icmp slt i32 %i.af, %i.ah
  br i1 %i.aj, label %.lr.ph57, label %.loopexit

.lr.ph57:                                         ; preds = %.preheader, %.lr.ph57
  %.4859 = phi double [ %.48, %.lr.ph57 ], [ f0x547D42AEA2879F2E, %.preheader ] ; 2 uses
  %.14356 = phi i32 [ %i.bc, %.lr.ph57 ], [ %i.af, %.preheader ] ; 2 uses
  %i.ak = sitofp i32 %.14356 to double
  %i.al = fmul double %i.d, %i.ak
  %i.am = fdiv double %i.al, 3.840000e+02         ; 2 uses
  %i.an = fcmp olt double %i.am, 2.000000e-02
  %i.ao = select i1 %i.an, double 2.000000e-02, double %i.am ; 3 uses
  %i.ap = tail call double @pow(double noundef %i.ao, double noundef -8.000000e-01) #14, !tbaa !4
  %i.aq = fadd double %i.ao, -3.300000e+00
  %i.ar = tail call double @pow(double noundef %i.aq, double noundef 2.000000e+00) #14, !tbaa !4
  %i.as = fmul double %i.ar, -6.000000e-01
  %i.at = tail call double @exp(double noundef %i.as) #14, !tbaa !4
  %i.au = fmul double %i.at, -6.500000e+00
  %i.av = tail call double @llvm.fmuladd.f64(double %i.ap, double 3.640000e+00, double %i.au)
  %i.aw = tail call double @pow(double noundef %i.ao, double noundef 4.000000e+00) #14, !tbaa !4
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.aw, double 1.000000e-03, double %i.av)
  %i.ay = load i32, ptr %i.e, align 4, !tbaa !37
  %.not.i49 = icmp eq i32 %i.ay, 0
  %.0.v.i50 = select i1 %.not.i49, double -1.140000e+02, double -2.000000e+02
  %.0.i51 = fadd double %i.ax, %.0.v.i50
  %i.az = fdiv double %.0.i51, 1.000000e+01
  %i.ba = tail call double @pow(double noundef 1.000000e+01, double noundef %i.az) #14, !tbaa !4 ; 2 uses
  %i.bb = fcmp olt double %.4859, %i.ba
  %.48 = select i1 %i.bb, double %.4859, double %i.ba ; 2 uses
  %i.bc = add nsw i32 %.14356, 1                  ; 2 uses
  %exitcond63.not = icmp eq i32 %i.bc, %i.ah
  br i1 %exitcond63.not, label %..loopexit_crit_edge, label %.lr.ph57, !llvm.loop !40

bb.c:                                             ; preds = %.loopexit
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define dso_local double @ATHformula(ptr nofree noundef readonly captures(none) %0, double noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = fcmp olt double %1, 2.000000e-02
  %i.b = select i1 %i.a, double 2.000000e-02, double %1 ; 3 uses
  %i.c = tail call double @pow(double noundef %i.b, double noundef -8.000000e-01) #14, !tbaa !4
  %i.d = fadd double %i.b, -3.300000e+00
  %i.e = tail call double @pow(double noundef %i.d, double noundef 2.000000e+00) #14, !tbaa !4
  %i.f = fmul double %i.e, -6.000000e-01
  %i.g = tail call double @exp(double noundef %i.f) #14, !tbaa !4
  %i.h = fmul double %i.g, -6.500000e+00
  %i.i = tail call double @llvm.fmuladd.f64(double %i.c, double 3.640000e+00, double %i.h)
  %i.j = tail call double @pow(double noundef %i.b, double noundef 4.000000e+00) #14, !tbaa !4
  %i.k = tail call double @llvm.fmuladd.f64(double %i.j, double 1.000000e-03, double %i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.m = load i32, ptr %i.l, align 4, !tbaa !37
  %.not = icmp eq i32 %i.m, 0
  %.0.v = select i1 %.not, double -1.140000e+02, double -2.000000e+02
  %.0 = fadd double %i.k, %.0.v
  %i.n = fdiv double %.0, 1.000000e+01
  %i.o = tail call double @pow(double noundef 1.000000e+01, double noundef %i.n) #14, !tbaa !4
  ret double %i.o
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @ms_convert(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
vector.memcheck:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4608 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4608 ; 4 uses
  %scevgep = getelementptr i8, ptr %0, i64 9216
  %scevgep15 = getelementptr i8, ptr %1, i64 9216
  %bound0 = icmp ult ptr %0, %scevgep15
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %vector.memcheck ] ; 6 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  %wide.load = load <2 x double>, ptr %i.c, align 8, !tbaa !19, !alias.scope !41 ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index
  %wide.load16 = load <2 x double>, ptr %i.d, align 8, !tbaa !19, !alias.scope !41 ; 2 uses
  %i.e = fadd <2 x double> %wide.load, %wide.load16
  %i.f = fmul <2 x double> %i.e, splat (double f0x3FE6A09E667F3BCD)
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  store <2 x double> %i.f, ptr %i.g, align 8, !tbaa !19, !alias.scope !44, !noalias !41
  %i.h = fsub <2 x double> %wide.load, %wide.load16
  %i.i = fmul <2 x double> %i.h, splat (double f0x3FE6A09E667F3BCD)
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index
  store <2 x double> %i.i, ptr %i.j, align 8, !tbaa !19, !alias.scope !44, !noalias !41
  %index.next = or disjoint i64 %index, 2         ; 4 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index.next
  %wide.load.1 = load <2 x double>, ptr %i.k, align 8, !tbaa !19, !alias.scope !41 ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index.next
  %wide.load16.1 = load <2 x double>, ptr %i.l, align 8, !tbaa !19, !alias.scope !41 ; 2 uses
  %i.m = fadd <2 x double> %wide.load.1, %wide.load16.1
  %i.n = fmul <2 x double> %i.m, splat (double f0x3FE6A09E667F3BCD)
end_hunk_0
