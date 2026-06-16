inline.NumInlined: 4
inline.NumDeleted: 3
begin_hunk_0_@map_cover_to_unate:bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bl = load ptr, ptr %i.ay, align 8, !tbaa !8  ; 2 uses
  %.not = icmp eq ptr %i.bl, null
  br i1 %.not, label %._crit_edge.loopexit, label %bb.e

._crit_edge.loopexit:                             ; preds = %bb.g
  %.pre.pre = load i32, ptr @cube, align 8, !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %.pre = phi i32 [ %.pre.pre, %._crit_edge.loopexit ], [ %.pre48, %bb.d ] ; 2 uses
  %i.bm = add nsw i32 %.03243, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %._crit_edge
  %.pre49 = phi i32 [ %.pre, %._crit_edge ], [ %.pre48, %bb.c ]
  %i.bn = phi i32 [ %.pre, %._crit_edge ], [ %i.ah, %bb.c ] ; 2 uses
  %.133 = phi i32 [ %i.bm, %._crit_edge ], [ %.03243, %bb.c ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bo = sext i32 %i.bn to i64
  %i.bp = icmp slt i64 %indvars.iv.next, %i.bo
  br i1 %i.bp, label %bb.c, label %._crit_edge46

._crit_edge46:                                    ; preds = %bb.h, %.preheader
  ret ptr %i.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @sf_new(...) local_unnamed_addr #2

declare ptr @set_clear(...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @map_unate_to_cover(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13
  %i.c = load i32, ptr @cube, align 8, !tbaa !17
  %i.d = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %i.b, i32 noundef %i.c) #10 ; 5 uses
  %i.e = load i32, ptr %i.a, align 4, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 %i.e, ptr %i.f, align 4, !tbaa !13
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !24
  %i.h = sext i32 %i.g to i64
  %i.i = shl nsw i64 %i.h, 2
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #11 ; 6 uses
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !24 ; 4 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 24), align 8, !tbaa !25 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.k to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.n = icmp eq i32 %i.k, 1
  br i1 %i.n, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.f ] ; 4 uses
  %.04959 = phi i32 [ 0, %.lr.ph.new ], [ %.1.1, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.f ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !4
  %.not57 = icmp eq i32 %i.p, 0
  br i1 %.not57, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = add nsw i32 %.04959, 1
  %i.r = sext i32 %.04959 to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.r
  %i.t = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.t, ptr %i.s, align 4, !tbaa !4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ %i.q, %bb.c ], [ %.04959, %bb.b ] ; 3 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4
  %.not57.1 = icmp eq i32 %i.v, 0
  br i1 %.not57.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = add nsw i32 %.1, 1
  %i.x = sext i32 %.1 to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.x
  %i.z = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.z, ptr %i.y, align 4, !tbaa !4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1.1 = phi i32 [ %i.w, %bb.e ], [ %.1, %bb.d ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.04959.epil.init = phi i32 [ 0, %.lr.ph ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod104 = trunc i32 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod104)
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.epil.init
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !4
  %.not57.epil = icmp eq i32 %i.ab, 0
  br i1 %.not57.epil, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %.epil.preheader
  %i.ac = add nsw i32 %.04959.epil.init, 1
  %i.ad = sext i32 %.04959.epil.init to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.ad
  %i.af = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.g, %.epil.preheader, %bb.a
  %.049.lcssa = phi i32 [ 0, %bb.a ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.ac, %bb.g ], [ %.04959.epil.init, %.epil.preheader ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !16 ; 3 uses
  %i.ai = load i32, ptr %i.a, align 4, !tbaa !13
  %i.aj = load i32, ptr %0, align 8, !tbaa !23
  %i.ak = mul nsw i32 %i.aj, %i.ai                ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %.idx = shl nsw i64 %i.al, 2
  %i.am = getelementptr inbounds i8, ptr %i.ah, i64 %.idx ; 2 uses
  %i.an = icmp sgt i32 %i.ak, 0
  br i1 %i.an, label %.lr.ph73, label %._crit_edge74

.lr.ph73:                                         ; preds = %._crit_edge
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !16 ; 2 uses
  %i.aq = icmp sgt i32 %.049.lcssa, 0
  br i1 %i.aq, label %.lr.ph73.split.us.preheader, label %.lr.ph73.split

.lr.ph73.split.us.preheader:                      ; preds = %.lr.ph73
  %wide.trip.count91 = zext nneg i32 %.049.lcssa to i64
  br label %.lr.ph73.split.us

.lr.ph73.split.us:                                ; preds = %.lr.ph73.split.us.preheader, %._crit_edge69.us
  %.05171.us = phi ptr [ %i.dq, %._crit_edge69.us ], [ %i.ap, %.lr.ph73.split.us.preheader ] ; 7 uses
  %.05270.us = phi ptr [ %i.dt, %._crit_edge69.us ], [ %i.ah, %.lr.ph73.split.us.preheader ] ; 2 uses
  %i.ar = load i32, ptr @cube, align 8, !tbaa !17 ; 2 uses
  %i.as = icmp slt i32 %i.ar, 33
  %i.at = add nsw i32 %i.ar, -1
  %i.au = ashr i32 %i.at, 5
  %i.av = add nsw i32 %i.au, 1
  %i.aw = select i1 %i.as, i32 1, i32 %i.av       ; 5 uses
  store i32 %i.aw, ptr %.05171.us, align 4, !tbaa !4
  %i.ax = shl nsw i32 %i.aw, 5
  %i.ay = load i32, ptr @cube, align 8, !tbaa !17
  %i.az = sub nsw i32 %i.ax, %i.ay
  %i.ba = lshr i32 -1, %i.az
  %i.bb = sext i32 %i.aw to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %.05171.us, i64 %i.bb
  store i32 %i.ba, ptr %i.bc, align 4, !tbaa !4
  %i.bd = icmp sgt i32 %i.aw, 1
  br i1 %i.bd, label %.lr.ph62.us.preheader, label %.preheader.us

.lr.ph62.us.preheader:                            ; preds = %.lr.ph73.split.us
  %i.be = add nsw i32 %i.aw, -1
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 2
  %scevgep80 = getelementptr i8, ptr %.05171.us, i64 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep80, i8 -1, i64 %i.bg, i1 false), !tbaa !4
  br label %.preheader.us

bb.h:                                             ; preds = %.preheader.us, %.loopexit.us
  %indvars.iv88 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next89, %.loopexit.us ] ; 4 uses
  %i.bh = trunc nuw nsw i64 %indvars.iv88 to i32
  %i.bi = lshr i64 %indvars.iv88, 5
  %i.bj = and i64 %i.bi, 134217727
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.05270.us, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !4
  %i.bn = and i32 %i.bh, 31
  %i.bo = shl nuw i32 1, %i.bn
  %i.bp = and i32 %i.bm, %i.bo
  %.not55.us = icmp eq i32 %i.bp, 0
  br i1 %.not55.us, label %.loopexit.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv88
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !4
  %i.bs = sext i32 %i.br to i64                   ; 2 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.dl, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !4  ; 3 uses
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.bs
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !4  ; 5 uses
  %.not5663.us = icmp sgt i32 %i.bw, %i.bu
  br i1 %.not5663.us, label %.loopexit.us, label %.lr.ph66.us.preheader

.lr.ph66.us.preheader:                            ; preds = %bb.i
  %i.bx = sext i32 %i.bw to i64                   ; 4 uses
  %1 = sext i32 %i.bu to i64                      ; 2 uses
  %2 = add nsw i64 %1, %i.bx
  %3 = and i64 %2, 1
  %lcmp.mod106.not = icmp eq i64 %3, 0
  br i1 %lcmp.mod106.not, label %.lr.ph66.us.prol, label %.lr.ph66.us.prol.loopexit

.lr.ph66.us.prol:                                 ; preds = %.lr.ph66.us.preheader
  %i.by = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !4
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.j, label %.lr.ph66.us.prol.loopexit.unr-lcssa

bb.j:                                             ; preds = %.lr.ph66.us.prol
  %i.cb = and i32 %i.bw, 31
  %i.cc = shl nuw i32 1, %i.cb
  %i.cd = xor i32 %i.cc, -1
  %i.ce = ashr i32 %i.bw, 5
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr [4 x i8], ptr %.05171.us, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 4      ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !4
  %i.cj = and i32 %i.ci, %i.cd
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !4
  br label %.lr.ph66.us.prol.loopexit.unr-lcssa

.lr.ph66.us.prol.loopexit.unr-lcssa:              ; preds = %bb.j, %.lr.ph66.us.prol
  %indvars.iv.next85.prol = add nsw i64 %i.bx, 1
  br label %.lr.ph66.us.prol.loopexit

.lr.ph66.us.prol.loopexit:                        ; preds = %.lr.ph66.us.prol.loopexit.unr-lcssa, %.lr.ph66.us.preheader
  %indvars.iv84.unr = phi i64 [ %i.bx, %.lr.ph66.us.preheader ], [ %indvars.iv.next85.prol, %.lr.ph66.us.prol.loopexit.unr-lcssa ]
  %i.ck = icmp eq i32 %i.bu, %i.bw
  br i1 %i.ck, label %.loopexit.us, label %.lr.ph66.us

.lr.ph66.us:                                      ; preds = %.lr.ph66.us.prol.loopexit, %bb.m
  %indvars.iv84 = phi i64 [ %indvars.iv.next85.1, %bb.m ], [ %indvars.iv84.unr, %.lr.ph66.us.prol.loopexit ] ; 4 uses
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %indvars.iv84
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !4
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.k, label %.lr.ph66.us.1

bb.k:                                             ; preds = %.lr.ph66.us
  %i.co = trunc nsw i64 %indvars.iv84 to i32      ; 2 uses
  %i.cp = and i32 %i.co, 31
  %i.cq = shl nuw i32 1, %i.cp
  %i.cr = xor i32 %i.cq, -1
  %i.cs = ashr i32 %i.co, 5
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr [4 x i8], ptr %.05171.us, i64 %i.ct
  %i.cv = getelementptr i8, ptr %i.cu, i64 4      ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !4
  %i.cx = and i32 %i.cw, %i.cr
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !4
  br label %.lr.ph66.us.1

.lr.ph66.us.1:                                    ; preds = %bb.k, %.lr.ph66.us
  %indvars.iv.next85 = add nsw i64 %indvars.iv84, 1 ; 2 uses
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %indvars.iv.next85
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !4
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph66.us.1
  %i.db = trunc nsw i64 %indvars.iv.next85 to i32 ; 2 uses
  %i.dc = and i32 %i.db, 31
  %i.dd = shl nuw i32 1, %i.dc
  %i.de = xor i32 %i.dd, -1
  %i.df = ashr i32 %i.db, 5
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr [4 x i8], ptr %.05171.us, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 4      ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !4
  %i.dk = and i32 %i.dj, %i.de
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph66.us.1
  %indvars.iv.next85.1 = add nsw i64 %indvars.iv84, 2 ; 2 uses
  %.not56.us.1 = icmp sgt i64 %indvars.iv.next85.1, %1
  br i1 %.not56.us.1, label %.loopexit.us, label %.lr.ph66.us

.loopexit.us:                                     ; preds = %.lr.ph66.us.prol.loopexit, %bb.m, %bb.i, %bb.h
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %exitcond92.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count91
  br i1 %exitcond92.not, label %._crit_edge69.us, label %bb.h

.preheader.us:                                    ; preds = %.lr.ph62.us.preheader, %.lr.ph73.split.us
  %i.dl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8
  %i.dm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8
  %i.dn = load ptr, ptr @cdata, align 8           ; 3 uses
  br label %bb.h

._crit_edge69.us:                                 ; preds = %.loopexit.us
  %i.do = load i32, ptr %i.d, align 8, !tbaa !23
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %.05171.us, i64 %i.dp
  %i.dr = load i32, ptr %0, align 8, !tbaa !23
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %.05270.us, i64 %i.ds ; 2 uses
  %i.du = icmp ult ptr %i.dt, %i.am
  br i1 %i.du, label %.lr.ph73.split.us, label %._crit_edge74

.lr.ph73.split:                                   ; preds = %.lr.ph73, %.preheader
  %.05171 = phi ptr [ %i.en, %.preheader ], [ %i.ap, %.lr.ph73 ] ; 4 uses
  %.05270 = phi ptr [ %i.eq, %.preheader ], [ %i.ah, %.lr.ph73 ]
  %i.dv = load i32, ptr @cube, align 8, !tbaa !17 ; 2 uses
  %i.dw = icmp slt i32 %i.dv, 33
  %i.dx = add nsw i32 %i.dv, -1
  %i.dy = ashr i32 %i.dx, 5
  %i.dz = add nsw i32 %i.dy, 1
  %i.ea = select i1 %i.dw, i32 1, i32 %i.dz       ; 5 uses
  store i32 %i.ea, ptr %.05171, align 4, !tbaa !4
  %i.eb = shl nsw i32 %i.ea, 5
  %i.ec = load i32, ptr @cube, align 8, !tbaa !17
  %i.ed = sub nsw i32 %i.eb, %i.ec
  %i.ee = lshr i32 -1, %i.ed
  %i.ef = sext i32 %i.ea to i64
  %i.eg = getelementptr inbounds [4 x i8], ptr %.05171, i64 %i.ef
  store i32 %i.ee, ptr %i.eg, align 4, !tbaa !4
  %i.eh = icmp sgt i32 %i.ea, 1
  br i1 %i.eh, label %.lr.ph62.preheader, label %.preheader

.lr.ph62.preheader:                               ; preds = %.lr.ph73.split
  %i.ei = add nsw i32 %i.ea, -1
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = shl nuw nsw i64 %i.ej, 2
  %scevgep = getelementptr i8, ptr %.05171, i64 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 -1, i64 %i.ek, i1 false), !tbaa !4
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph62.preheader, %.lr.ph73.split
  %i.el = load i32, ptr %i.d, align 8, !tbaa !23
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [4 x i8], ptr %.05171, i64 %i.em
  %i.eo = load i32, ptr %0, align 8, !tbaa !23
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [4 x i8], ptr %.05270, i64 %i.ep ; 2 uses
  %i.er = icmp ult ptr %i.eq, %i.am
  br i1 %i.er, label %.lr.ph73.split, label %._crit_edge74

._crit_edge74:                                    ; preds = %.preheader, %._crit_edge69.us, %._crit_edge
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge74
  tail call void @free(ptr noundef nonnull %i.j) #10
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge74
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @unate_compl(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !13
  %i.e = load i32, ptr %0, align 8, !tbaa !23
  %i.f = mul nsw i32 %i.e, %i.d                   ; 2 uses
  %i.g = sext i32 %i.f to i64
  %.idx = shl nsw i64 %i.g, 2
  %i.h = getelementptr inbounds i8, ptr %i.b, i64 %.idx
  %i.i = icmp sgt i32 %i.f, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.014 = phi ptr [ %i.r, %.lr.ph ], [ %i.b, %bb.a ] ; 6 uses
  %i.j = load i32, ptr %.014, align 4, !tbaa !4
  %i.k = and i32 %i.j, 65535
  store i32 %i.k, ptr %.014, align 4, !tbaa !4
  %i.l = tail call i32 (ptr, ...) @set_ord(ptr noundef nonnull %.014) #10
  %i.m = shl i32 %i.l, 16
  %i.n = load i32, ptr %.014, align 4, !tbaa !4
  %i.o = or i32 %i.n, %i.m
  store i32 %i.o, ptr %.014, align 4, !tbaa !4
  %i.p = load i32, ptr %0, align 8, !tbaa !23
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %.014, i64 %i.q ; 2 uses
  %i.s = icmp ult ptr %i.r, %i.h
  br i1 %i.s, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.t = tail call ptr @unate_complement(ptr noundef nonnull %0)
  %i.u = tail call ptr (ptr, ...) @sf_rev_contain(ptr noundef %i.t) #10
  ret ptr %i.u
}

declare i32 @set_ord(...) local_unnamed_addr #2

declare ptr @sf_rev_contain(...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @unate_complement(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 9 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13
  switch i32 %i.b, label %bb.g [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %0) #10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !22
  %i.e = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 1, i32 noundef %i.d) #10 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.h = load i32, ptr %i.e, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !13   ; 2 uses
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !13
  %i.l = mul nsw i32 %i.j, %i.h
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.m
  %i.o = load i32, ptr %i.c, align 4, !tbaa !22
  %i.p = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.n, i32 noundef %i.o) #10 ; 0 uses
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !22   ; 2 uses
  %i.u = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %i.t, i32 noundef %i.t) #10 ; 4 uses
  %i.v = load i32, ptr %i.s, align 4, !tbaa !22   ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 12 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.z = phi i32 [ %i.v, %.lr.ph ], [ %i.at, %bb.f ] ; 2 uses
  %.098119 = phi i32 [ 0, %.lr.ph ], [ %i.au, %bb.f ] ; 3 uses
  %i.aa = lshr i32 %.098119, 5
  %i.ab = add nuw nsw i32 %i.aa, 1
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.af = and i32 %.098119, 31
  %i.ag = shl nuw i32 1, %i.af                    ; 2 uses
  %i.ah = and i32 %i.ae, %i.ag
  %.not107 = icmp eq i32 %i.ah, 0
  br i1 %.not107, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = load ptr, ptr %i.x, align 8, !tbaa !16
  %i.aj = load i32, ptr %i.u, align 8, !tbaa !23
  %i.ak = load i32, ptr %i.y, align 4, !tbaa !13  ; 2 uses
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.y, align 4, !tbaa !13
  %i.am = mul nsw i32 %i.ak, %i.aj
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.an
  %i.ap = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.ao, i32 noundef %i.z) #10
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ac ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4
  %i.as = or i32 %i.ar, %i.ag
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !4
  %.pre = load i32, ptr %i.s, align 4, !tbaa !22
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.at = phi i32 [ %i.z, %bb.d ], [ %.pre, %bb.e ] ; 2 uses
  %i.au = add nuw nsw i32 %.098119, 1             ; 2 uses
  %i.av = icmp slt i32 %i.au, %i.at
  br i1 %i.av, label %bb.d, label %._crit_edge

end_hunk_0
