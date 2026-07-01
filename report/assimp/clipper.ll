inline.NumInlined: 2352
inline.NumDeleted: 743
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN10ClipperLib19SlopesNearCollinearERKNS_8IntPointES2_S2_d:bb.a

bb.b:                                             ; preds = %bb.a
  %i.l = icmp sgt i64 %i.a, %i.b
  %i.m = load i64, ptr %2, align 8                ; 5 uses
  %i.n = icmp sge i64 %i.a, %i.m
  %i.o = xor i1 %i.l, %i.n
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i64, ptr %i.p, align 8
  %i.r = sub nsw i64 %i.h, %i.q
  %i.s = sitofp i64 %i.r to double                ; 4 uses
  %i.t = sub nsw i64 %i.m, %i.b
  %i.u = sitofp i64 %i.t to double                ; 4 uses
  %i.v = sitofp i64 %i.b to double
  %i.w = sitofp i64 %i.h to double
  %i.x = fmul nnan double %i.w, %i.u
  %i.y = tail call double @llvm.fmuladd.f64(double %i.s, double %i.v, double %i.x)
  %i.z = sitofp i64 %i.a to double
  %i.aa = sitofp i64 %i.f to double
  %i.ab = fmul nnan double %i.aa, %i.u
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.s, double %i.z, double %i.ab)
  %i.ad = fsub double %i.ac, %i.y                 ; 2 uses
  %i.ae = fmul double %i.ad, %i.ad
  %i.af = fmul nnan double %i.u, %i.u
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.s, double %i.s, double %i.af)
  %i.ah = fdiv double %i.ae, %i.ag
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.ai = icmp sgt i64 %i.b, %i.a
  %i.aj = icmp sge i64 %i.b, %i.m
  %i.ak = xor i1 %i.ai, %i.aj
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.am = load i64, ptr %i.al, align 8
  %i.an = sub nsw i64 %i.f, %i.am
  %i.ao = sitofp i64 %i.an to double              ; 4 uses
  %i.ap = sub nsw i64 %i.m, %i.a
  %i.aq = sitofp i64 %i.ap to double              ; 4 uses
  %i.ar = sitofp i64 %i.a to double
  %i.as = sitofp i64 %i.f to double
  %i.at = fmul nnan double %i.as, %i.aq
  %i.au = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.ar, double %i.at)
  %i.av = sitofp i64 %i.b to double
  %i.aw = sitofp i64 %i.h to double
  %i.ax = fmul nnan double %i.aw, %i.aq
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.av, double %i.ax)
  %i.az = fsub double %i.ay, %i.au                ; 2 uses
  %i.ba = fmul double %i.az, %i.az
  %i.bb = fmul nnan double %i.aq, %i.aq
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.ao, double %i.bb)
  %i.bd = fdiv double %i.ba, %i.bc
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.be = sitofp i64 %i.i to double               ; 4 uses
  %i.bf = sub nsw i64 %i.b, %i.a
  %i.bg = sitofp i64 %i.bf to double              ; 4 uses
  %i.bh = sitofp i64 %i.a to double
  %i.bi = sitofp i64 %i.f to double
  %i.bj = fmul nnan double %i.bi, %i.bg
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.be, double %i.bh, double %i.bj)
  %i.bl = sitofp i64 %i.m to double
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = sitofp i64 %i.bn to double
  %i.bp = fmul nnan double %i.bg, %i.bo
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.be, double %i.bl, double %i.bp)
  %i.br = fsub double %i.bq, %i.bk                ; 2 uses
  %i.bs = fmul double %i.br, %i.br
  %i.bt = fmul nnan double %i.bg, %i.bg
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.be, double %i.be, double %i.bt)
  %i.bv = fdiv double %i.bs, %i.bu
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.bw = icmp sgt i64 %i.f, %i.h
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.by = load i64, ptr %i.bx, align 8            ; 5 uses
  %i.bz = icmp sge i64 %i.f, %i.by
  %i.ca = xor i1 %i.bw, %i.bz
  br i1 %i.ca, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cb = sub nsw i64 %i.h, %i.by
  %i.cc = sitofp i64 %i.cb to double              ; 4 uses
  %i.cd = load i64, ptr %2, align 8
  %i.ce = sub nsw i64 %i.cd, %i.b
  %i.cf = sitofp i64 %i.ce to double              ; 4 uses
  %i.cg = sitofp i64 %i.b to double
  %i.ch = sitofp i64 %i.h to double
  %i.ci = fmul nnan double %i.ch, %i.cf
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.cc, double %i.cg, double %i.ci)
  %i.ck = sitofp i64 %i.a to double
  %i.cl = sitofp i64 %i.f to double
  %i.cm = fmul nnan double %i.cl, %i.cf
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.cc, double %i.ck, double %i.cm)
  %i.co = fsub double %i.cn, %i.cj                ; 2 uses
  %i.cp = fmul double %i.co, %i.co
  %i.cq = fmul nnan double %i.cf, %i.cf
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.cc, double %i.cc, double %i.cq)
  %i.cs = fdiv double %i.cp, %i.cr
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.ct = icmp sgt i64 %i.h, %i.f
  %i.cu = icmp sge i64 %i.h, %i.by
  %i.cv = xor i1 %i.ct, %i.cu
  br i1 %i.cv, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cw = sub nsw i64 %i.f, %i.by
  %i.cx = sitofp i64 %i.cw to double              ; 4 uses
  %i.cy = load i64, ptr %2, align 8
  %i.cz = sub nsw i64 %i.cy, %i.a
  %i.da = sitofp i64 %i.cz to double              ; 4 uses
  %i.db = sitofp i64 %i.a to double
  %i.dc = sitofp i64 %i.f to double
  %i.dd = fmul nnan double %i.dc, %i.da
  %i.de = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.db, double %i.dd)
  %i.df = sitofp i64 %i.b to double
  %i.dg = sitofp i64 %i.h to double
  %i.dh = fmul nnan double %i.dg, %i.da
  %i.di = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.df, double %i.dh)
  %i.dj = fsub double %i.di, %i.de                ; 2 uses
  %i.dk = fmul double %i.dj, %i.dj
  %i.dl = fmul nnan double %i.da, %i.da
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.cx, double %i.dl)
  %i.dn = fdiv double %i.dk, %i.dm
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.do = sitofp i64 %i.i to double               ; 4 uses
  %i.dp = sub nsw i64 %i.b, %i.a
  %i.dq = sitofp i64 %i.dp to double              ; 4 uses
  %i.dr = sitofp i64 %i.a to double
  %i.ds = sitofp i64 %i.f to double
  %i.dt = fmul nnan double %i.ds, %i.dq
  %i.du = tail call double @llvm.fmuladd.f64(double %i.do, double %i.dr, double %i.dt)
  %i.dv = load i64, ptr %2, align 8
  %i.dw = sitofp i64 %i.dv to double
  %i.dx = sitofp i64 %i.by to double
  %i.dy = fmul nnan double %i.dq, %i.dx
  %i.dz = tail call double @llvm.fmuladd.f64(double %i.do, double %i.dw, double %i.dy)
  %i.ea = fsub double %i.dz, %i.du                ; 2 uses
  %i.eb = fmul double %i.ea, %i.ea
  %i.ec = fmul nnan double %i.dq, %i.dq
  %i.ed = tail call double @llvm.fmuladd.f64(double %i.do, double %i.do, double %i.ec)
  %i.ee = fdiv double %i.eb, %i.ed
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.e, %bb.c
  %.pn = phi double [ %i.ah, %bb.c ], [ %i.bd, %bb.e ], [ %i.bv, %bb.f ], [ %i.cs, %bb.h ], [ %i.dn, %bb.j ], [ %i.ee, %bb.k ]
  %.0 = fcmp olt double %.pn, %3
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN10ClipperLib14PointsAreCloseENS_8IntPointES0_d(i64 %0, i64 %1, i64 %2, i64 %3, double noundef %4) local_unnamed_addr #7 {
bb.a:
  %i.a = sitofp i64 %0 to double
  %i.b = sitofp i64 %2 to double
  %i.c = fsub double %i.a, %i.b                   ; 2 uses
  %i.d = sitofp i64 %1 to double
  %i.e = sitofp i64 %3 to double
  %i.f = fsub double %i.d, %i.e                   ; 2 uses
  %i.g = fmul double %i.f, %i.f
  %i.h = tail call double @llvm.fmuladd.f64(double %i.c, double %i.c, double %i.g)
  %i.i = fcmp ole double %i.h, %4
  ret i1 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZN10ClipperLib9ExcludeOpEPNS_5OutPtE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.d, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.b, ptr %i.f, align 8
  store i32 0, ptr %i.b, align 8
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ClipperLib12CleanPolygonERKSt6vectorINS_8IntPointESaIS1_EERS3_d(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, double noundef %2) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %0, align 8                ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 7 uses
  %i.h = icmp eq ptr %i.b, %i.c
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %1, align 8                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %.not.i.i = icmp eq ptr %i.k, %i.i
  br i1 %.not.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN10ClipperLib8IntPointES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN10ClipperLib8IntPointES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.b
  store ptr %i.i, ptr %i.j, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE5clearEv.exit

bb.c:                                             ; preds = %bb.a
  %i.l = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.g, i64 40) ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  %i.n = extractvalue { i64, i1 } %i.l, 0
  %i.o = select i1 %i.m, i64 -1, i64 %i.n
  %i.p = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.o) #32 ; 10 uses
  %i.q = getelementptr inbounds [40 x i8], ptr %i.p, i64 %i.g
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.d
  %i.r = phi ptr [ %i.p, %bb.c ], [ %i.t, %bb.d ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.q
  br i1 %i.u, label %.lr.ph.preheader, label %bb.d

.lr.ph.preheader:                                 ; preds = %bb.d
  %.not137 = icmp eq i64 %i.f, 16
  br i1 %.not137, label %.lr.ph.peel, label %.lr.ph.preheader.split

.lr.ph.preheader.split:                           ; preds = %.lr.ph.preheader
  %i.v = add nsw i64 %i.g, -2
  br label %.lr.ph

.lr.ph.peel:                                      ; preds = %.lr.ph.preheader, %.lr.ph
  %i.w = phi i64 [ 0, %.lr.ph.preheader ], [ %i.am, %.lr.ph ] ; 3 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.w
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.w ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false)
  %i.aa = add nuw i64 %i.w, 1                     ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %i.g
  %i.ac = select i1 %i.ab, i64 0, i64 %i.aa
  %i.ad = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr %i.ad, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store ptr %i.y, ptr %i.af, align 8
  store i32 0, ptr %i.y, align 8
  %i.ag = fmul double %2, %2                      ; 3 uses
  %i.ah = load i32, ptr %i.p, align 8
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph78.outer, label %.critedge

.lr.ph:                                           ; preds = %.lr.ph.preheader.split, %.lr.ph
  %.06674 = phi i64 [ %i.am, %.lr.ph ], [ 0, %.lr.ph.preheader.split ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.06674
  %i.ak = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %.06674 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false)
  %i.am = add nuw i64 %.06674, 1                  ; 4 uses
  %3 = icmp eq i64 %i.am, %i.g
  %4 = select i1 %3, i64 0, i64 %i.am
  %i.an = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr %i.an, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store ptr %i.ak, ptr %i.ap, align 8
  store i32 0, ptr %i.ak, align 8
  %exitcond.not = icmp eq i64 %.06674, %i.v
  br i1 %exitcond.not, label %.lr.ph.peel, label %.lr.ph, !llvm.loop !285

.lr.ph78:                                         ; preds = %.lr.ph78.outer, %bb.i
  %.06775 = phi ptr [ %i.ar, %bb.i ], [ %.06775.ph, %.lr.ph78.outer ] ; 8 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.06775, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8            ; 10 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.06775, i64 32
  %i.at = load ptr, ptr %i.as, align 8            ; 5 uses
  %.not = icmp eq ptr %i.ar, %i.at
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.lr.ph78
  %i.au = getelementptr inbounds nuw i8, ptr %.06775, i64 8 ; 2 uses
  %.sroa.07.0.copyload = load i64, ptr %i.au, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.06775, i64 16
  %.sroa.28.0.copyload = load i64, ptr %.sroa.28.0..sroa_idx, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %.sroa.05.0.copyload = load i64, ptr %i.av, align 8
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.sroa.26.0.copyload = load i64, ptr %.sroa.26.0..sroa_idx, align 8
  %i.aw = sitofp i64 %.sroa.07.0.copyload to double
  %i.ax = sitofp i64 %.sroa.05.0.copyload to double ; 2 uses
  %i.ay = fsub double %i.aw, %i.ax                ; 2 uses
  %i.az = sitofp i64 %.sroa.28.0.copyload to double
  %i.ba = sitofp i64 %.sroa.26.0.copyload to double ; 2 uses
  %i.bb = fsub double %i.az, %i.ba                ; 2 uses
  %i.bc = fmul double %i.bb, %i.bb
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.ay, double %i.bc)
  %i.be = fcmp ugt double %i.bd, %i.ag
  br i1 %i.be, label %bb.f, label %.lr.ph78.outer.backedge

.lr.ph78.outer:                                   ; preds = %.lr.ph.peel, %.lr.ph78.outer.backedge
  %.06576.ph = phi i64 [ %i.cb, %.lr.ph78.outer.backedge ], [ %i.g, %.lr.ph.peel ] ; 3 uses
  %.06775.ph = phi ptr [ %.sink119.sink, %.lr.ph78.outer.backedge ], [ %i.p, %.lr.ph.peel ]
  br label %.lr.ph78

bb.f:                                             ; preds = %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.bf, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8
  %i.bg = sitofp i64 %.sroa.0.0.copyload to double
  %i.bh = fsub double %i.ax, %i.bg                ; 2 uses
  %i.bi = sitofp i64 %.sroa.2.0.copyload to double
  %i.bj = fsub double %i.ba, %i.bi                ; 2 uses
  %i.bk = fmul double %i.bj, %i.bj
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bh, double %i.bh, double %i.bk)
  %i.bm = fcmp ugt double %i.bl, %i.ag
  br i1 %i.bm, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %.06775, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %.06775, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8            ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.bs = load ptr, ptr %i.br, align 8            ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  store ptr %i.bs, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  store ptr %i.bq, ptr %i.bu, align 8
  store i32 0, ptr %i.bq, align 8
  %i.bv = load ptr, ptr %i.bo, align 8
  %i.bw = load ptr, ptr %i.bn, align 8
  br label %.lr.ph78.outer.backedge

bb.h:                                             ; preds = %bb.f
  %i.bx = tail call noundef zeroext i1 @_ZN10ClipperLib19SlopesNearCollinearERKNS_8IntPointES2_S2_d(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.bf, double noundef %i.ag)
  br i1 %i.bx, label %.lr.ph78.outer.backedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %.06775, align 8
  %.pre = load i32, ptr %i.ar, align 8
  %i.by = icmp eq i32 %.pre, 0
  br i1 %i.by, label %.lr.ph78, label %.critedge, !llvm.loop !287

.lr.ph78.outer.backedge:                          ; preds = %bb.h, %bb.e, %bb.g
  %.sink119.sink = phi ptr [ %i.bv, %bb.g ], [ %i.at, %bb.e ], [ %i.at, %bb.h ] ; 4 uses
  %.sink117.sink = phi ptr [ %i.bw, %bb.g ], [ %i.ar, %bb.e ], [ %i.ar, %bb.h ] ; 2 uses
  %.sink.sink = phi i64 [ -2, %bb.g ], [ -1, %bb.e ], [ -1, %bb.h ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.sink119.sink, i64 24
  store ptr %.sink117.sink, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %.sink117.sink, i64 32
  store ptr %.sink119.sink, ptr %i.ca, align 8
  store i32 0, ptr %.sink119.sink, align 8
  %i.cb = add i64 %.06576.ph, %.sink.sink
  br label %.lr.ph78.outer, !llvm.loop !287

.critedge:                                        ; preds = %.lr.ph78, %bb.i, %.lr.ph.peel
  %.067.lcssa = phi ptr [ %i.p, %.lr.ph.peel ], [ %i.ar, %bb.i ], [ %.06775, %.lr.ph78 ]
  %.065.lcssa = phi i64 [ %i.g, %.lr.ph.peel ], [ %.06576.ph, %bb.i ], [ %.06576.ph, %.lr.ph78 ] ; 5 uses
  %i.cc = icmp ult i64 %.065.lcssa, 3             ; 2 uses
  %spec.store.select = select i1 %i.cc, i64 0, i64 %.065.lcssa ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %i.cf = load ptr, ptr %1, align 8               ; 2 uses
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = ashr exact i64 %i.ci, 4                 ; 3 uses
  %i.ck = icmp ugt i64 %spec.store.select, %i.cj
  br i1 %i.ck, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.critedge
  %i.cl = sub nuw i64 %spec.store.select, %i.cj
  tail call void @_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.cl)
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE6resizeEm.exit

bb.k:                                             ; preds = %.critedge
  %i.cm = icmp ult i64 %spec.store.select, %i.cj
  br i1 %i.cm, label %bb.l, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE6resizeEm.exit

bb.l:                                             ; preds = %bb.k
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %spec.store.select ; 2 uses
  %.not.i.i72 = icmp eq ptr %i.ce, %i.cn
  br i1 %.not.i.i72, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIPN10ClipperLib8IntPointES1_EvT_S3_RSaIT0_E.exit.i.i73

_ZSt8_DestroyIPN10ClipperLib8IntPointES1_EvT_S3_RSaIT0_E.exit.i.i73: ; preds = %bb.l
  store ptr %i.cn, ptr %i.cd, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE6resizeEm.exit: ; preds = %bb.j, %bb.k, %bb.l, %_ZSt8_DestroyIPN10ClipperLib8IntPointES1_EvT_S3_RSaIT0_E.exit.i.i73
  br i1 %i.cc, label %._crit_edge86, label %.lr.ph85.preheader

.lr.ph85.preheader:                               ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE6resizeEm.exit
  %xtraiter = and i64 %.065.lcssa, 1
  %unroll_iter = and i64 %.065.lcssa, -2
  br label %.lr.ph85

.lr.ph85:                                         ; preds = %.lr.ph85, %.lr.ph85.preheader
  %.084 = phi i64 [ 0, %.lr.ph85.preheader ], [ %i.cz, %.lr.ph85 ] ; 3 uses
  %.283 = phi ptr [ %.067.lcssa, %.lr.ph85.preheader ], [ %i.cy, %.lr.ph85 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph85.preheader ], [ %niter.next.1, %.lr.ph85 ]
  %i.co = getelementptr inbounds nuw i8, ptr %.283, i64 8
  %i.cp = load ptr, ptr %1, align 8
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %.084
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %i.co, i64 16, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %.283, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8            ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %1, align 8
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %.084
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, ptr noundef nonnull align 8 dereferenceable(16) %i.ct, i64 16, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8            ; 2 uses
  %i.cz = add nuw i64 %.084, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge86.loopexit.unr-lcssa, label %.lr.ph85, !llvm.loop !288

._crit_edge86.loopexit.unr-lcssa:                 ; preds = %.lr.ph85
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge86, label %.lr.ph85.epil.preheader

.lr.ph85.epil.preheader:                          ; preds = %._crit_edge86.loopexit.unr-lcssa
  %lcmp.mod136 = trunc i64 %.065.lcssa to i1
  tail call void @llvm.assume(i1 %lcmp.mod136)
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.db = load ptr, ptr %1, align 8
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %i.cz
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, ptr noundef nonnull align 8 dereferenceable(16) %i.da, i64 16, i1 false)
  br label %._crit_edge86

._crit_edge86:                                    ; preds = %.lr.ph85.epil.preheader, %._crit_edge86.loopexit.unr-lcssa, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE6resizeEm.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.p) #33
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE5clearEv.exit

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE5clearEv.exit: ; preds = %_ZSt8_DestroyIPN10ClipperLib8IntPointES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.b, %._crit_edge86
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ClipperLib12CleanPolygonERSt6vectorINS_8IntPointESaIS1_EEd(ptr noundef nonnull align 8 dereferenceable(24) %0, double noundef %1) local_unnamed_addr #5 {
bb.a:
  tail call void @_ZN10ClipperLib12CleanPolygonERKSt6vectorINS_8IntPointESaIS1_EERS3_d(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %0, double noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ClipperLib13CleanPolygonsERKSt6vectorIS0_INS_8IntPointESaIS1_EESaIS3_EERS5_d(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, double noundef %2) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = load ptr, ptr %1, align 8                ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
end_hunk_0
