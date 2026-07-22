inline.NumInlined: 12
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 15
begin_hunk_0_@enlarge:bb.a
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.l
  %i.m = load ptr, ptr %0, align 8, !tbaa !11
  %i.n = mul nsw i32 %i.i, %.07782
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 %i.o
  %i.q = sext i32 %i.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %gep, ptr align 1 %i.p, i64 %i.q, i1 false)
  %i.r = add nuw nsw i32 %.07782, 1               ; 2 uses
  %i.s = load i32, ptr %3, align 4, !tbaa !4
  %i.t = icmp slt i32 %i.r, %i.s
  br i1 %i.t, label %bb.b, label %.preheader81, !llvm.loop !25

.preheader.lr.ph:                                 ; preds = %bb.c
  %i.u = shl nuw nsw i32 %4, 1                    ; 5 uses
  %.pre = load i32, ptr %3, align 4, !tbaa !4
  %invariant.op = sub nsw i32 0, %i.u
  br label %.preheader

bb.c:                                             ; preds = %.lr.ph84, %bb.c
  %.183 = phi i32 [ 0, %.lr.ph84 ], [ %i.at, %bb.c ] ; 4 uses
  %i.v = xor i32 %.183, -1                        ; 2 uses
  %i.w = add nsw i32 %4, %i.v
  %i.x = load i32, ptr %2, align 4, !tbaa !4      ; 3 uses
  %i.y = add nsw i32 %i.x, %i.f
  %i.z = mul nsw i32 %i.y, %i.w
  %i.aa = sext i32 %i.z to i64
  %gep86 = getelementptr i8, ptr %invariant.gep85, i64 %i.aa
  %i.ab = load ptr, ptr %0, align 8, !tbaa !11
  %i.ac = mul nsw i32 %i.x, %.183
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds i8, ptr %i.ab, i64 %i.ad
  %i.af = sext i32 %i.x to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %gep86, ptr align 1 %i.ae, i64 %i.af, i1 false)
  %i.ag = load i32, ptr %3, align 4, !tbaa !4     ; 2 uses
  %i.ah = add nuw i32 %.183, %4
  %i.ai = add i32 %i.ah, %i.ag
  %i.aj = load i32, ptr %2, align 4, !tbaa !4     ; 3 uses
  %i.ak = add nsw i32 %i.aj, %i.f
  %i.al = mul nsw i32 %i.ai, %i.ak
  %i.am = sext i32 %i.al to i64
  %gep88 = getelementptr i8, ptr %invariant.gep85, i64 %i.am
  %i.an = load ptr, ptr %0, align 8, !tbaa !11
  %i.ao = add i32 %i.ag, %i.v
  %i.ap = mul nsw i32 %i.ao, %i.aj
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds i8, ptr %i.an, i64 %i.aq
  %i.as = sext i32 %i.aj to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %gep88, ptr align 1 %i.ar, i64 %i.as, i1 false)
  %i.at = add nuw nsw i32 %.183, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.at, %4
  br i1 %exitcond.not, label %.preheader.lr.ph, label %bb.c, !llvm.loop !26

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.au = phi i32 [ %.pre, %.preheader.lr.ph ], [ %i.by, %._crit_edge ] ; 2 uses
  %.291 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.bz, %._crit_edge ] ; 4 uses
  %i.av = icmp sgt i32 %i.au, %invariant.op
  br i1 %i.av, label %.lr.ph90, label %._crit_edge

.lr.ph90:                                         ; preds = %.preheader
  %i.aw = xor i32 %.291, -1                       ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph90, %bb.d
  %.089 = phi i32 [ 0, %.lr.ph90 ], [ %i.bu, %bb.d ] ; 3 uses
  %i.ax = load i32, ptr %2, align 4, !tbaa !4
  %i.ay = add nsw i32 %i.ax, %i.u
  %i.az = mul nsw i32 %i.ay, %.089
  %i.ba = add nsw i32 %i.az, %4                   ; 2 uses
  %i.bb = add nsw i32 %i.ba, %.291
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds i8, ptr %1, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !18
  %i.bf = add i32 %i.ba, %i.aw
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %1, i64 %i.bg
  store i8 %i.be, ptr %i.bh, align 1, !tbaa !18
  %i.bi = load i32, ptr %2, align 4, !tbaa !4     ; 2 uses
  %i.bj = add nsw i32 %i.bi, %i.u
  %i.bk = mul nsw i32 %i.bj, %.089
  %i.bl = add i32 %i.bi, %4
  %i.bm = add i32 %i.bl, %i.bk                    ; 2 uses
  %i.bn = add i32 %i.bm, %i.aw
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds i8, ptr %1, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !18
  %i.br = add nsw i32 %i.bm, %.291
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds i8, ptr %1, i64 %i.bs
  store i8 %i.bq, ptr %i.bt, align 1, !tbaa !18
  %i.bu = add nuw nsw i32 %.089, 1                ; 2 uses
  %i.bv = load i32, ptr %3, align 4, !tbaa !4     ; 2 uses
  %i.bw = add nsw i32 %i.bv, %i.u
  %i.bx = icmp slt i32 %i.bu, %i.bw
  br i1 %i.bx, label %bb.d, label %._crit_edge, !llvm.loop !27

._crit_edge:                                      ; preds = %bb.d, %.preheader
  %i.by = phi i32 [ %i.au, %.preheader ], [ %i.bv, %bb.d ]
  %i.bz = add nuw nsw i32 %.291, 1                ; 2 uses
  %exitcond93.not = icmp eq i32 %i.bz, %4
  br i1 %exitcond93.not, label %._crit_edge92, label %.preheader, !llvm.loop !28

._crit_edge92:                                    ; preds = %._crit_edge, %.preheader81
  %.pre-phi = phi i32 [ %i.f, %.preheader81 ], [ %i.u, %._crit_edge ] ; 2 uses
  %i.ca = load i32, ptr %2, align 4, !tbaa !4
  %i.cb = add nsw i32 %i.ca, %.pre-phi
  store i32 %i.cb, ptr %2, align 4, !tbaa !4
  %i.cc = load i32, ptr %3, align 4, !tbaa !4
  %i.cd = add nsw i32 %i.cc, %.pre-phi
  store i32 %i.cd, ptr %3, align 4, !tbaa !4
  store ptr %1, ptr %0, align 8, !tbaa !11
  ret i32 undef
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nofree nounwind uwtable
define dso_local void @susan_smoothing(i32 noundef %0, ptr noundef %1, double noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = fptrunc double %2 to float               ; 3 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !11
  store i32 %3, ptr %i.b, align 4, !tbaa !4
  store i32 %4, ptr %i.c, align 4, !tbaa !4
  %i.e = icmp eq i32 %0, 0                        ; 2 uses
  %i.f = fpext float %i.d to double               ; 2 uses
  %i.g = fmul double %i.f, 1.500000e+00
  %i.h = fptosi double %i.g to i32                ; 4 uses
  %i.i = add nsw i32 %i.h, 1                      ; 2 uses
  %.0173 = select i1 %i.e, i32 %i.i, i32 1        ; 18 uses
  %i.j = fcmp ogt double %2, f0x402E000010000000
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, double noundef %i.f) ; 0 uses
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  %puts206 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.14) ; 0 uses
  tail call void @exit(i32 noundef 0) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = shl nsw i32 %.0173, 1                    ; 5 uses
  %i.m = or disjoint i32 %i.l, 1                  ; 3 uses
  %.not = icmp slt i32 %i.l, %3
  %.not199 = icmp slt i32 %i.l, %4
  %or.cond = and i1 %.not, %.not199
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef %.0173, i32 noundef %3, i32 noundef %4) ; 0 uses
  tail call void @exit(i32 noundef 0) #20
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = add nsw i32 %i.l, %3
  %i.p = add nsw i32 %i.l, %4
  %i.q = mul nsw i32 %i.o, %i.p
  %i.r = sext i32 %i.q to i64
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #23
  %i.t = call i32 @enlarge(ptr noundef nonnull %i.a, ptr noundef %i.s, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef %.0173) ; 0 uses
  br i1 %i.e, label %bb.f, label %.preheader261

.preheader261:                                    ; preds = %bb.e
  %i.u = load i32, ptr %i.c, align 4, !tbaa !4    ; 2 uses
  %i.v = icmp sgt i32 %i.u, 2
  %i.w = load i32, ptr %i.b, align 4              ; 2 uses
  %i.x = icmp sgt i32 %i.w, 2
  %or.cond346 = select i1 %i.v, i1 %i.x, i1 false
  br i1 %or.cond346, label %.preheader260, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.y = load i32, ptr %i.b, align 4, !tbaa !4    ; 2 uses
  %i.z = sub nsw i32 %i.y, %i.m
  %i.aa = mul nsw i32 %i.m, %i.m
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = tail call noalias ptr @malloc(i64 noundef %i.ab) #23 ; 2 uses
  %i.ad = fneg float %i.d
  %i.ae = fmul float %i.d, %i.ad
  %i.af = xor i32 %i.h, -1                        ; 5 uses
  %.not200273 = icmp slt i32 %i.i, %i.af          ; 2 uses
  br i1 %.not200273, label %.preheader258, label %.preheader259

.preheader259:                                    ; preds = %bb.f, %._crit_edge271
  %.0176275 = phi ptr [ %i.ay, %._crit_edge271 ], [ %i.ac, %bb.f ]
  %.0180274 = phi i32 [ %i.ba, %._crit_edge271 ], [ %i.af, %bb.f ] ; 4 uses
  %i.ag = mul nsw i32 %.0180274, %.0180274
  br label %bb.g

.preheader258:                                    ; preds = %._crit_edge271, %bb.f
  %i.ah = load i32, ptr %i.c, align 4, !tbaa !4   ; 2 uses
  %i.ai = sub nsw i32 %i.ah, %.0173
  %i.aj = icmp slt i32 %.0173, %i.ai
  br i1 %i.aj, label %.preheader257.lr.ph, label %.loopexit

.preheader257.lr.ph:                              ; preds = %.preheader258
  %narrow = sub nsw i32 0, %.0173
  %i.ak = sext i32 %narrow to i64
  %i.al = sext i32 %i.z to i64
  %6 = add i32 %.0173, %i.h                       ; 2 uses
  %i.am = add i32 %6, 1                           ; 2 uses
  %7 = zext i32 %i.am to i64
  %8 = add nuw nsw i64 %7, 1                      ; 2 uses
  %9 = sext i32 %.0173 to i64
  %xtraiter = and i32 %6, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %i.an = sub i32 0, %i.h
  %i.ao = icmp eq i32 %i.am, 0
  br label %.preheader257

bb.g:                                             ; preds = %.preheader259, %bb.g
  %.1177269 = phi ptr [ %.0176275, %.preheader259 ], [ %i.ay, %bb.g ] ; 2 uses
  %.0189268 = phi i32 [ %i.af, %.preheader259 ], [ %i.az, %bb.g ] ; 4 uses
  %i.ap = mul nsw i32 %.0189268, %.0189268
  %i.aq = add nuw nsw i32 %i.ap, %i.ag
  %i.ar = uitofp nneg i32 %i.aq to float
  %i.as = fdiv float %i.ar, %i.ae
  %i.at = fpext float %i.as to double
  %i.au = tail call double @exp(double noundef %i.at) #21, !tbaa !4
  %i.av = fmul double %i.au, 1.000000e+02
  %i.aw = fptosi double %i.av to i32
  %i.ax = trunc i32 %i.aw to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %.1177269, i64 1 ; 2 uses
  store i8 %i.ax, ptr %.1177269, align 1, !tbaa !18
  %i.az = add i32 %.0189268, 1
  %exitcond.not = icmp eq i32 %.0189268, %.0173
  br i1 %exitcond.not, label %._crit_edge271, label %bb.g, !llvm.loop !29

._crit_edge271:                                   ; preds = %bb.g
  %i.ba = add i32 %.0180274, 1
  %exitcond312.not = icmp eq i32 %.0180274, %.0173
  br i1 %exitcond312.not, label %.preheader258, label %.preheader259, !llvm.loop !30

.preheader257:                                    ; preds = %.preheader257.lr.ph, %._crit_edge301
  %i.bb = phi i32 [ %i.ah, %.preheader257.lr.ph ], [ %i.fd, %._crit_edge301 ]
  %i.bc = phi i32 [ %i.y, %.preheader257.lr.ph ], [ %i.fe, %._crit_edge301 ] ; 3 uses
  %.0174304 = phi ptr [ %1, %.preheader257.lr.ph ], [ %.1175.lcssa, %._crit_edge301 ] ; 2 uses
  %.1181303 = phi i32 [ %.0173, %.preheader257.lr.ph ], [ %.pre-phi, %._crit_edge301 ] ; 5 uses
  %i.bd = sub nsw i32 %i.bc, %.0173
  %i.be = icmp slt i32 %.0173, %i.bd
  br i1 %i.be, label %.lr.ph300, label %.preheader257.._crit_edge301_crit_edge

.preheader257.._crit_edge301_crit_edge:           ; preds = %.preheader257
  %.pre320.a = add nsw i32 %.1181303, 1
  br label %._crit_edge301

.lr.ph300:                                        ; preds = %.preheader257
  %i.bf = sub nsw i32 %.1181303, %.0173
  %i.bg = add nsw i32 %.1181303, -1
  %i.bh = add nsw i32 %.1181303, 1                ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph300, %bb.j
  %indvars.iv316 = phi i64 [ %9, %.lr.ph300 ], [ %indvars.iv.next317, %bb.j ] ; 5 uses
  %i.bi = phi i32 [ %i.bc, %.lr.ph300 ], [ %i.ez, %bb.j ] ; 4 uses
  %.1175299 = phi ptr [ %.0174304, %.lr.ph300 ], [ %.2, %bb.j ] ; 2 uses
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !11  ; 4 uses
  %i.bk = mul nsw i32 %i.bi, %.1181303
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr i8, ptr %i.bj, i64 %indvars.iv316
  %i.bn = getelementptr i8, ptr %i.bm, i64 %i.bl  ; 3 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !18  ; 2 uses
  %i.bp = zext i8 %i.bo to i32
  %i.bq = zext i8 %i.bo to i64
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 %i.bq ; 3 uses
  br i1 %.not200273, label %._crit_edge294.split.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.h
  %i.bs = mul nsw i32 %i.bi, %i.bf
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds i8, ptr %i.bj, i64 %i.bt
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 %indvars.iv316
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 %i.ak
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge283
  %.0293 = phi i32 [ %.lcssa, %._crit_edge283 ], [ 0, %.preheader.preheader ] ; 2 uses
  %.2178292 = phi ptr [ %scevgep313, %._crit_edge283 ], [ %i.ac, %.preheader.preheader ] ; 4 uses
  %.0183291 = phi ptr [ %i.ds, %._crit_edge283 ], [ %i.bw, %.preheader.preheader ] ; 4 uses
  %.0185290 = phi i32 [ %.lcssa352, %._crit_edge283 ], [ 0, %.preheader.preheader ] ; 2 uses
  %.0187289 = phi i32 [ %i.dt, %._crit_edge283 ], [ %i.af, %.preheader.preheader ] ; 2 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.preheader
  %i.bx = getelementptr inbounds nuw i8, ptr %.0183291, i64 1
  %i.by = load i8, ptr %.0183291, align 1, !tbaa !18 ; 2 uses
  %i.bz = zext i8 %i.by to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %.2178292, i64 1
  %i.cb = load i8, ptr %.2178292, align 1, !tbaa !18
  %i.cc = zext i8 %i.cb to i32
  %i.cd = zext i8 %i.by to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds i8, ptr %i.br, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !18
  %i.ch = zext i8 %i.cg to i32
  %i.ci = mul nuw nsw i32 %i.ch, %i.cc            ; 2 uses
  %i.cj = add nsw i32 %i.ci, %.0185290            ; 2 uses
  %i.ck = mul nuw nsw i32 %i.ci, %i.bz
  %i.cl = add nsw i32 %i.ck, %.0293               ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.preheader
  %.lcssa352.unr = phi i32 [ poison, %.preheader ], [ %i.cj, %.prol.loopexit.unr-lcssa ]
  %.lcssa.unr = phi i32 [ poison, %.preheader ], [ %i.cl, %.prol.loopexit.unr-lcssa ]
  %.1281.unr = phi i32 [ %.0293, %.preheader ], [ %i.cl, %.prol.loopexit.unr-lcssa ]
  %.3179280.unr = phi ptr [ %.2178292, %.preheader ], [ %i.ca, %.prol.loopexit.unr-lcssa ]
  %.1184279.unr = phi ptr [ %.0183291, %.preheader ], [ %i.bx, %.prol.loopexit.unr-lcssa ]
  %.1186278.unr = phi i32 [ %.0185290, %.preheader ], [ %i.cj, %.prol.loopexit.unr-lcssa ]
  %.0188277.unr = phi i32 [ %i.af, %.preheader ], [ %i.an, %.prol.loopexit.unr-lcssa ]
  br i1 %i.ao, label %._crit_edge283, label %.preheader.new

.preheader.new:                                   ; preds = %.prol.loopexit, %.preheader.new
  %.1281 = phi i32 [ %i.dq, %.preheader.new ], [ %.1281.unr, %.prol.loopexit ]
  %.3179280 = phi ptr [ %i.df, %.preheader.new ], [ %.3179280.unr, %.prol.loopexit ] ; 3 uses
  %.1184279 = phi ptr [ %i.dc, %.preheader.new ], [ %.1184279.unr, %.prol.loopexit ] ; 3 uses
  %.1186278 = phi i32 [ %i.do, %.preheader.new ], [ %.1186278.unr, %.prol.loopexit ]
  %.0188277 = phi i32 [ %i.dr, %.preheader.new ], [ %.0188277.unr, %.prol.loopexit ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.1184279, i64 1
  %i.cn = load i8, ptr %.1184279, align 1, !tbaa !18 ; 2 uses
  %i.co = zext i8 %i.cn to i32
  %i.cp = getelementptr inbounds nuw i8, ptr %.3179280, i64 1
  %i.cq = load i8, ptr %.3179280, align 1, !tbaa !18
  %i.cr = zext i8 %i.cq to i32
  %i.cs = zext i8 %i.cn to i64
  %i.ct = sub nsw i64 0, %i.cs
  %i.cu = getelementptr inbounds i8, ptr %i.br, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !18
  %i.cw = zext i8 %i.cv to i32
  %i.cx = mul nuw nsw i32 %i.cw, %i.cr            ; 2 uses
  %i.cy = add nsw i32 %i.cx, %.1186278
  %i.cz = mul nuw nsw i32 %i.cx, %i.co
  %i.da = add nsw i32 %i.cz, %.1281
  %i.db = add i32 %.0188277, 1
  %i.dc = getelementptr inbounds nuw i8, ptr %.1184279, i64 2
  %i.dd = load i8, ptr %i.cm, align 1, !tbaa !18  ; 2 uses
  %i.de = zext i8 %i.dd to i32
  %i.df = getelementptr inbounds nuw i8, ptr %.3179280, i64 2
  %i.dg = load i8, ptr %i.cp, align 1, !tbaa !18
  %i.dh = zext i8 %i.dg to i32
  %i.di = zext i8 %i.dd to i64
  %i.dj = sub nsw i64 0, %i.di
  %i.dk = getelementptr inbounds i8, ptr %i.br, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !18
  %i.dm = zext i8 %i.dl to i32
  %i.dn = mul nuw nsw i32 %i.dm, %i.dh            ; 2 uses
  %i.do = add nsw i32 %i.dn, %i.cy                ; 2 uses
  %i.dp = mul nuw nsw i32 %i.dn, %i.de
  %i.dq = add nsw i32 %i.dp, %i.da                ; 2 uses
  %i.dr = add i32 %.0188277, 2
  %exitcond314.not.1 = icmp eq i32 %i.db, %.0173
  br i1 %exitcond314.not.1, label %._crit_edge283, label %.preheader.new, !llvm.loop !31

._crit_edge283:                                   ; preds = %.preheader.new, %.prol.loopexit
  %.lcssa352 = phi i32 [ %.lcssa352.unr, %.prol.loopexit ], [ %i.do, %.preheader.new ] ; 2 uses
  %.lcssa = phi i32 [ %.lcssa.unr, %.prol.loopexit ], [ %i.dq, %.preheader.new ] ; 2 uses
  %scevgep = getelementptr i8, ptr %.0183291, i64 %8
  %scevgep313 = getelementptr i8, ptr %.2178292, i64 %8
  %i.ds = getelementptr inbounds i8, ptr %scevgep, i64 %i.al
  %i.dt = add i32 %.0187289, 1
  %exitcond315.not = icmp eq i32 %.0187289, %.0173
  br i1 %exitcond315.not, label %._crit_edge294.split, label %.preheader, !llvm.loop !32

._crit_edge294.split:                             ; preds = %._crit_edge283
  %i.du = add nsw i32 %.lcssa352, -10000          ; 2 uses
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.i, label %._crit_edge294.split.thread

bb.i:                                             ; preds = %._crit_edge294.split
  %i.dw = mul nsw i32 %i.bi, %i.bg
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr i8, ptr %i.bj, i64 %indvars.iv316
  %i.dz = getelementptr i8, ptr %i.dy, i64 %i.dx  ; 3 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 -1
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !18  ; 2 uses
  %i.ec = load i8, ptr %i.dz, align 1, !tbaa !18  ; 2 uses
  %i.ed = getelementptr i8, ptr %i.dz, i64 1
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !18  ; 3 uses
  %i.ef = getelementptr i8, ptr %i.bn, i64 -1
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !18  ; 2 uses
  %i.eh = getelementptr i8, ptr %i.bn, i64 1
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !18  ; 2 uses
  %i.ej = mul nsw i32 %i.bi, %i.bh
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr i8, ptr %i.bj, i64 %indvars.iv316
  %i.em = getelementptr i8, ptr %i.el, i64 %i.ek  ; 3 uses
  %i.en = getelementptr i8, ptr %i.em, i64 -1
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !18  ; 2 uses
  %i.ep = load i8, ptr %i.em, align 1, !tbaa !18  ; 2 uses
  %i.eq = getelementptr i8, ptr %i.em, i64 1
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !18
  %spec.select125.i = tail call i8 @llvm.umax.i8(i8 %i.eb, i8 %i.ec) ; 2 uses
  %spec.select124.v.i = tail call i8 @llvm.umin.i8(i8 %i.eb, i8 %i.ec) ; 2 uses
  %spec.select124.i = zext i8 %spec.select124.v.i to i32 ; 2 uses
  %.sroa.44.13126.i = tail call i8 @llvm.umax.i8(i8 %spec.select125.i, i8 %i.ee) ; 2 uses
  %.sroa.17.17.v.i = tail call i8 @llvm.umin.i8(i8 %spec.select125.i, i8 %i.ee)
  %.sroa.17.17.i = zext i8 %.sroa.17.17.v.i to i32 ; 2 uses
  %.sroa.67.12127.i = tail call i8 @llvm.umax.i8(i8 %.sroa.44.13126.i, i8 %i.eg) ; 2 uses
  %.sroa.44.14.v.i = tail call i8 @llvm.umin.i8(i8 %.sroa.44.13126.i, i8 %i.eg)
  %.sroa.44.14.i = zext i8 %.sroa.44.14.v.i to i32 ; 2 uses
  %.sroa.87.9128.i = tail call i8 @llvm.umax.i8(i8 %.sroa.67.12127.i, i8 %i.ei) ; 2 uses
  %.sroa.67.13.v.i = tail call i8 @llvm.umin.i8(i8 %.sroa.67.12127.i, i8 %i.ei)
  %.sroa.67.13.i = zext i8 %.sroa.67.13.v.i to i32 ; 2 uses
  %.sroa.103.4129.i = tail call i8 @llvm.umax.i8(i8 %.sroa.87.9128.i, i8 %i.eo) ; 2 uses
  %.sroa.87.10.v.i = tail call i8 @llvm.umin.i8(i8 %.sroa.87.9128.i, i8 %i.eo)
  %.sroa.87.10.i = zext i8 %.sroa.87.10.v.i to i32 ; 2 uses
  %.sroa.114.1130.i = tail call i8 @llvm.umax.i8(i8 %.sroa.103.4129.i, i8 %i.ep)
  %.sroa.103.5.v.i = tail call i8 @llvm.umin.i8(i8 %.sroa.103.4129.i, i8 %i.ep)
  %.sroa.103.5.i = zext i8 %.sroa.103.5.v.i to i32 ; 2 uses
  %i.es = tail call i8 @llvm.umin.i8(i8 %.sroa.114.1130.i, i8 %i.er)
  %.sroa.114.2.i = zext i8 %i.es to i32
  %i.et = icmp ult i8 %i.ee, %spec.select124.v.i  ; 2 uses
  %.sroa.17.2.i = select i1 %i.et, i32 %spec.select124.i, i32 %.sroa.17.17.i ; 2 uses
  %.sroa.0.2.i = select i1 %i.et, i32 %.sroa.17.17.i, i32 %spec.select124.i ; 2 uses
  %.sroa.44.11.i = tail call i32 @llvm.umax.i32(i32 %.sroa.17.2.i, i32 %.sroa.44.14.i) ; 2 uses
  %.sroa.17.16.i = tail call i32 @llvm.umin.i32(i32 %.sroa.17.2.i, i32 %.sroa.44.14.i) ; 2 uses
  %.sroa.67.10.i = tail call i32 @llvm.umax.i32(i32 %.sroa.44.11.i, i32 %.sroa.67.13.i) ; 2 uses
  %.sroa.44.12.i = tail call i32 @llvm.umin.i32(i32 %.sroa.44.11.i, i32 %.sroa.67.13.i) ; 3 uses
  %.sroa.87.7.i = tail call i32 @llvm.umax.i32(i32 %.sroa.67.10.i, i32 %.sroa.87.10.i) ; 2 uses
  %.sroa.67.11.i = tail call i32 @llvm.umin.i32(i32 %.sroa.67.10.i, i32 %.sroa.87.10.i) ; 2 uses
  %.sroa.103.2.i = tail call i32 @llvm.umax.i32(i32 %.sroa.87.7.i, i32 %.sroa.103.5.i)
  %.sroa.87.8.i = tail call i32 @llvm.umin.i32(i32 %.sroa.87.7.i, i32 %.sroa.103.5.i) ; 2 uses
  %.sroa.103.3.i = tail call i32 @llvm.umin.i32(i32 %.sroa.103.2.i, i32 %.sroa.114.2.i)
  %.sroa.17.4.i = tail call i32 @llvm.umax.i32(i32 %.sroa.0.2.i, i32 %.sroa.17.16.i) ; 2 uses
  %.sroa.0.4.i = tail call i32 @llvm.umin.i32(i32 %.sroa.0.2.i, i32 %.sroa.17.16.i) ; 3 uses
  %.sroa.44.9.i = tail call i32 @llvm.umax.i32(i32 %.sroa.17.4.i, i32 %.sroa.44.12.i) ; 2 uses
  %.sroa.17.15.i = tail call i32 @llvm.umin.i32(i32 %.sroa.17.4.i, i32 %.sroa.44.12.i) ; 2 uses
  %.sroa.67.8.i = tail call i32 @llvm.umax.i32(i32 %.sroa.44.9.i, i32 %.sroa.67.11.i) ; 2 uses
  %.sroa.44.10.i = tail call i32 @llvm.umin.i32(i32 %.sroa.44.9.i, i32 %.sroa.67.11.i) ; 2 uses
  %.sroa.87.5.i = tail call i32 @llvm.umax.i32(i32 %.sroa.67.8.i, i32 %.sroa.87.8.i)
  %.sroa.67.9.i = tail call i32 @llvm.umin.i32(i32 %.sroa.67.8.i, i32 %.sroa.87.8.i) ; 2 uses
  %.sroa.87.6.i = tail call i32 @llvm.umin.i32(i32 %.sroa.87.5.i, i32 %.sroa.103.3.i) ; 2 uses
  %i.eu = icmp samesign ult i32 %.sroa.44.12.i, %.sroa.0.4.i ; 2 uses
  %.sroa.17.6.i = select i1 %i.eu, i32 %.sroa.0.4.i, i32 %.sroa.17.15.i ; 2 uses
  %.sroa.0.6.i = select i1 %i.eu, i32 %.sroa.17.15.i, i32 %.sroa.0.4.i
  %.sroa.44.7.i = tail call i32 @llvm.umax.i32(i32 %.sroa.17.6.i, i32 %.sroa.44.10.i) ; 2 uses
  %.sroa.17.14.i = tail call i32 @llvm.umin.i32(i32 %.sroa.17.6.i, i32 %.sroa.44.10.i)
  %.sroa.67.6.i = tail call i32 @llvm.umax.i32(i32 %.sroa.44.7.i, i32 %.sroa.67.9.i) ; 2 uses
  %.sroa.44.8.i = tail call i32 @llvm.umin.i32(i32 %.sroa.44.7.i, i32 %.sroa.67.9.i)
  %.sroa.87.4.i = tail call i32 @llvm.umax.i32(i32 %.sroa.67.6.i, i32 %.sroa.87.6.i)
  %.sroa.67.7.i = tail call i32 @llvm.umin.i32(i32 %.sroa.67.6.i, i32 %.sroa.87.6.i)
  %.sroa.17.8.i = tail call i32 @llvm.umax.i32(i32 %.sroa.0.6.i, i32 %.sroa.17.14.i)
  %.sroa.44.5.i = tail call i32 @llvm.umax.i32(i32 %.sroa.17.8.i, i32 %.sroa.44.8.i)
  %.sroa.67.5.i = tail call i32 @llvm.umax.i32(i32 %.sroa.44.5.i, i32 %.sroa.67.7.i)
  %i.ev = add nuw nsw i32 %.sroa.67.5.i, %.sroa.87.4.i
  %i.ew = lshr i32 %i.ev, 1
  br label %bb.j

._crit_edge294.split.thread:                      ; preds = %bb.h, %._crit_edge294.split
  %.0.lcssa339 = phi i32 [ %.lcssa, %._crit_edge294.split ], [ 0, %bb.h ]
  %.0185.lcssa338 = phi i32 [ %i.du, %._crit_edge294.split ], [ -10000, %bb.h ]
  %.neg202 = mul nsw i32 %i.bp, -10000
  %i.ex = add i32 %.0.lcssa339, %.neg202
  %i.ey = sdiv i32 %i.ex, %.0185.lcssa338
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge294.split.thread
  %storemerge203.in = phi i32 [ %i.ey, %._crit_edge294.split.thread ], [ %i.ew, %bb.i ]
  %storemerge203 = trunc i32 %storemerge203.in to i8
  %.2 = getelementptr inbounds nuw i8, ptr %.1175299, i64 1 ; 2 uses
  store i8 %storemerge203, ptr %.1175299, align 1, !tbaa !18
  %indvars.iv.next317 = add nsw i64 %indvars.iv316, 1 ; 2 uses
  %i.ez = load i32, ptr %i.b, align 4, !tbaa !4   ; 3 uses
  %i.fa = sub nsw i32 %i.ez, %.0173
  %i.fb = sext i32 %i.fa to i64
  %i.fc = icmp slt i64 %indvars.iv.next317, %i.fb
  br i1 %i.fc, label %bb.h, label %._crit_edge301.loopexit, !llvm.loop !33

._crit_edge301.loopexit:                          ; preds = %bb.j
  %.pre319 = load i32, ptr %i.c, align 4, !tbaa !4
  br label %._crit_edge301

._crit_edge301:                                   ; preds = %.preheader257.._crit_edge301_crit_edge, %._crit_edge301.loopexit
  %.pre-phi = phi i32 [ %.pre320.a, %.preheader257.._crit_edge301_crit_edge ], [ %i.bh, %._crit_edge301.loopexit ] ; 2 uses
  %i.fd = phi i32 [ %i.bb, %.preheader257.._crit_edge301_crit_edge ], [ %.pre319, %._crit_edge301.loopexit ] ; 2 uses
  %i.fe = phi i32 [ %i.bc, %.preheader257.._crit_edge301_crit_edge ], [ %i.ez, %._crit_edge301.loopexit ]
  %.1175.lcssa = phi ptr [ %.0174304, %.preheader257.._crit_edge301_crit_edge ], [ %.2, %._crit_edge301.loopexit ]
  %i.ff = sub nsw i32 %i.fd, %.0173
  %i.fg = icmp slt i32 %.pre-phi, %i.ff
  br i1 %i.fg, label %.preheader257, label %.loopexit, !llvm.loop !34

.preheader260:                                    ; preds = %.preheader261, %._crit_edge
  %i.fh = phi i32 [ %i.ld, %._crit_edge ], [ %i.u, %.preheader261 ]
  %i.fi = phi i32 [ %i.le, %._crit_edge ], [ %i.w, %.preheader261 ] ; 3 uses
  %.3266 = phi ptr [ %.4.lcssa, %._crit_edge ], [ %1, %.preheader261 ] ; 2 uses
  %.2182265 = phi i32 [ %.pre-phi322, %._crit_edge ], [ 1, %.preheader261 ] ; 4 uses
  %i.fj = icmp sgt i32 %i.fi, 2
  br i1 %i.fj, label %.lr.ph, label %.preheader260.._crit_edge_crit_edge

.preheader260.._crit_edge_crit_edge:              ; preds = %.preheader260
  %.pre321 = add nuw nsw i32 %.2182265, 1
  br label %._crit_edge

.lr.ph:                                           ; preds = %.preheader260
  %i.fk = add nsw i32 %.2182265, -1
  %i.fl = add nuw nsw i32 %.2182265, 1            ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 3 uses
  %i.fm = phi i32 [ %i.fi, %.lr.ph ], [ %i.kz, %bb.n ] ; 4 uses
  %.4264 = phi ptr [ %.3266, %.lr.ph ], [ %.5, %bb.n ] ; 2 uses
  %i.fn = load ptr, ptr %i.a, align 8, !tbaa !11  ; 4 uses
  %i.fo = mul nsw i32 %i.fm, %i.fk                ; 2 uses
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds i8, ptr %i.fn, i64 %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %indvars.iv ; 3 uses
  %i.fs = getelementptr inbounds i8, ptr %i.fr, i64 -1
  %i.ft = mul nsw i32 %i.fm, %.2182265
  %i.fu = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  %i.fv = add nsw i32 %i.ft, %i.fu
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds i8, ptr %i.fn, i64 %i.fw ; 3 uses
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !18  ; 2 uses
  %i.fz = zext i8 %i.fy to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %5, i64 %i.fz ; 9 uses
  %i.gb = load i8, ptr %i.fs, align 1, !tbaa !18  ; 2 uses
  %i.gc = zext i8 %i.gb to i64
  %i.gd = sub nsw i64 0, %i.gc
  %i.ge = getelementptr inbounds i8, ptr %i.ga, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !18
  %i.gg = zext i8 %i.gf to i32                    ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fr, i64 1 ; 2 uses
  %i.gi = load i8, ptr %i.fr, align 1, !tbaa !18  ; 2 uses
  %i.gj = zext i8 %i.gi to i64
  %i.gk = sub nsw i64 0, %i.gj
  %i.gl = getelementptr inbounds i8, ptr %i.ga, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !18
  %i.gn = zext i8 %i.gm to i32                    ; 2 uses
  %i.go = load i8, ptr %i.gh, align 1, !tbaa !18  ; 2 uses
  %i.gp = zext i8 %i.go to i64
  %i.gq = sub nsw i64 0, %i.gp
  %i.gr = getelementptr inbounds i8, ptr %i.ga, i64 %i.gq
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !18
  %i.gt = zext i8 %i.gs to i32                    ; 2 uses
  %i.gu = add nsw i32 %i.fm, -2
  %i.gv = sext i32 %i.gu to i64                   ; 2 uses
  %i.gw = getelementptr inbounds i8, ptr %i.gh, i64 %i.gv ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 1
  %i.gy = load i8, ptr %i.gw, align 1, !tbaa !18  ; 2 uses
  %i.gz = zext i8 %i.gy to i64
  %i.ha = sub nsw i64 0, %i.gz
  %i.hb = getelementptr inbounds i8, ptr %i.ga, i64 %i.ha
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !18
  %i.hd = zext i8 %i.hc to i32                    ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.gw, i64 2 ; 2 uses
  %i.hf = load i8, ptr %i.gx, align 1, !tbaa !18  ; 2 uses
  %i.hg = zext i8 %i.hf to i64
  %i.hh = sub nsw i64 0, %i.hg
  %i.hi = getelementptr inbounds i8, ptr %i.ga, i64 %i.hh
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !18
  %i.hk = zext i8 %i.hj to i32                    ; 2 uses
  %i.hl = load i8, ptr %i.he, align 1, !tbaa !18  ; 2 uses
  %i.hm = zext i8 %i.hl to i64
  %i.hn = sub nsw i64 0, %i.hm
  %i.ho = getelementptr inbounds i8, ptr %i.ga, i64 %i.hn
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !18
  %i.hq = zext i8 %i.hp to i32                    ; 2 uses
  %i.hr = getelementptr inbounds i8, ptr %i.he, i64 %i.gv ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 1
  %i.ht = load i8, ptr %i.hr, align 1, !tbaa !18  ; 2 uses
  %i.hu = zext i8 %i.ht to i64
  %i.hv = sub nsw i64 0, %i.hu
  %i.hw = getelementptr inbounds i8, ptr %i.ga, i64 %i.hv
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !18
end_hunk_0
