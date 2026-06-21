inline.NumInlined: 12
begin_hunk_0_@median:.lr.ph.preheader
  %.sroa.87.9128 = tail call i8 @llvm.umax.i8(i8 %.sroa.67.12127, i8 %i.r) ; 2 uses
  %.sroa.67.13.v = tail call i8 @llvm.umin.i8(i8 %.sroa.67.12127, i8 %i.r)
  %.sroa.67.13 = zext i8 %.sroa.67.13.v to i32    ; 2 uses
  %.sroa.103.4129 = tail call i8 @llvm.umax.i8(i8 %.sroa.87.9128, i8 %i.y) ; 2 uses
  %.sroa.87.10.v = tail call i8 @llvm.umin.i8(i8 %.sroa.87.9128, i8 %i.y)
  %.sroa.87.10 = zext i8 %.sroa.87.10.v to i32    ; 2 uses
  %.sroa.114.1130 = tail call i8 @llvm.umax.i8(i8 %.sroa.103.4129, i8 %i.z)
  %.sroa.103.5.v = tail call i8 @llvm.umin.i8(i8 %.sroa.103.4129, i8 %i.z)
  %.sroa.103.5 = zext i8 %.sroa.103.5.v to i32    ; 2 uses
  %i.ac = tail call i8 @llvm.umin.i8(i8 %.sroa.114.1130, i8 %i.ab)
  %.sroa.114.2 = zext i8 %i.ac to i32
  %i.ad = icmp ult i8 %i.j, %spec.select124.v     ; 2 uses
  %.sroa.17.2 = select i1 %i.ad, i32 %spec.select124, i32 %.sroa.17.17 ; 2 uses
  %.sroa.0.2 = select i1 %i.ad, i32 %.sroa.17.17, i32 %spec.select124 ; 2 uses
  %.sroa.44.11 = tail call i32 @llvm.umax.i32(i32 %.sroa.17.2, i32 %.sroa.44.14) ; 2 uses
  %.sroa.17.16 = tail call i32 @llvm.umin.i32(i32 %.sroa.17.2, i32 %.sroa.44.14) ; 2 uses
  %.sroa.67.10 = tail call i32 @llvm.umax.i32(i32 %.sroa.44.11, i32 %.sroa.67.13) ; 2 uses
  %.sroa.44.12 = tail call i32 @llvm.umin.i32(i32 %.sroa.44.11, i32 %.sroa.67.13) ; 3 uses
  %.sroa.87.7 = tail call i32 @llvm.umax.i32(i32 %.sroa.67.10, i32 %.sroa.87.10) ; 2 uses
  %.sroa.67.11 = tail call i32 @llvm.umin.i32(i32 %.sroa.67.10, i32 %.sroa.87.10) ; 2 uses
  %.sroa.103.2 = tail call i32 @llvm.umax.i32(i32 %.sroa.87.7, i32 %.sroa.103.5)
  %.sroa.87.8 = tail call i32 @llvm.umin.i32(i32 %.sroa.87.7, i32 %.sroa.103.5) ; 2 uses
  %.sroa.103.3 = tail call i32 @llvm.umin.i32(i32 %.sroa.103.2, i32 %.sroa.114.2)
  %.sroa.17.4 = tail call i32 @llvm.umax.i32(i32 %.sroa.0.2, i32 %.sroa.17.16) ; 2 uses
  %.sroa.0.4 = tail call i32 @llvm.umin.i32(i32 %.sroa.0.2, i32 %.sroa.17.16) ; 3 uses
  %.sroa.44.9 = tail call i32 @llvm.umax.i32(i32 %.sroa.17.4, i32 %.sroa.44.12) ; 2 uses
  %.sroa.17.15 = tail call i32 @llvm.umin.i32(i32 %.sroa.17.4, i32 %.sroa.44.12) ; 2 uses
  %.sroa.67.8 = tail call i32 @llvm.umax.i32(i32 %.sroa.44.9, i32 %.sroa.67.11) ; 2 uses
  %.sroa.44.10 = tail call i32 @llvm.umin.i32(i32 %.sroa.44.9, i32 %.sroa.67.11) ; 2 uses
  %.sroa.87.5 = tail call i32 @llvm.umax.i32(i32 %.sroa.67.8, i32 %.sroa.87.8)
  %.sroa.67.9 = tail call i32 @llvm.umin.i32(i32 %.sroa.67.8, i32 %.sroa.87.8) ; 2 uses
  %.sroa.87.6 = tail call i32 @llvm.umin.i32(i32 %.sroa.87.5, i32 %.sroa.103.3) ; 2 uses
  %i.ae = icmp samesign ult i32 %.sroa.44.12, %.sroa.0.4 ; 2 uses
  %.sroa.17.6 = select i1 %i.ae, i32 %.sroa.0.4, i32 %.sroa.17.15 ; 2 uses
  %.sroa.0.6 = select i1 %i.ae, i32 %.sroa.17.15, i32 %.sroa.0.4
  %.sroa.44.7 = tail call i32 @llvm.umax.i32(i32 %.sroa.17.6, i32 %.sroa.44.10) ; 2 uses
  %.sroa.17.14 = tail call i32 @llvm.umin.i32(i32 %.sroa.17.6, i32 %.sroa.44.10)
  %.sroa.67.6 = tail call i32 @llvm.umax.i32(i32 %.sroa.44.7, i32 %.sroa.67.9) ; 2 uses
  %.sroa.44.8 = tail call i32 @llvm.umin.i32(i32 %.sroa.44.7, i32 %.sroa.67.9)
  %.sroa.87.4 = tail call i32 @llvm.umax.i32(i32 %.sroa.67.6, i32 %.sroa.87.6)
  %.sroa.67.7 = tail call i32 @llvm.umin.i32(i32 %.sroa.67.6, i32 %.sroa.87.6)
  %.sroa.17.8 = tail call i32 @llvm.umax.i32(i32 %.sroa.0.6, i32 %.sroa.17.14)
  %.sroa.44.5 = tail call i32 @llvm.umax.i32(i32 %.sroa.17.8, i32 %.sroa.44.8)
  %.sroa.67.5 = tail call i32 @llvm.umax.i32(i32 %.sroa.44.5, i32 %.sroa.67.7)
  %i.af = add nuw nsw i32 %.sroa.87.4, %.sroa.67.5
  %i.ag = lshr i32 %i.af, 1
  %i.ah = trunc nuw i32 %i.ag to i8
  ret i8 %i.ah
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @enlarge(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #12 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !4
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %.preheader81

.lr.ph:                                           ; preds = %bb.a
  %i.c = shl nsw i32 %4, 1
  %i.d = sext i32 %4 to i64
  %invariant.gep = getelementptr i8, ptr %1, i64 %i.d
  br label %bb.b

.preheader81:                                     ; preds = %bb.b, %bb.a
  %i.e = icmp sgt i32 %4, 0
  %i.f = shl nsw i32 %4, 1                        ; 3 uses
  br i1 %i.e, label %.lr.ph84, label %._crit_edge92

.lr.ph84:                                         ; preds = %.preheader81
  %i.g = zext nneg i32 %4 to i64
  %invariant.gep85 = getelementptr i8, ptr %1, i64 %i.g ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.07782 = phi i32 [ 0, %.lr.ph ], [ %i.r, %bb.b ] ; 3 uses
  %i.h = add nsw i32 %.07782, %4
  %i.i = load i32, ptr %2, align 4, !tbaa !4      ; 3 uses
  %i.j = add nsw i32 %i.i, %i.c
  %i.k = mul nsw i32 %i.j, %i.h
  %i.l = sext i32 %i.k to i64
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
  %or.cond347 = select i1 %i.v, i1 %i.x, i1 false
  br i1 %or.cond347, label %.preheader260, label %.loopexit

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
  %.0176275 = phi ptr [ %i.bc, %._crit_edge271 ], [ %i.ac, %bb.f ]
  %.0180274 = phi i32 [ %i.be, %._crit_edge271 ], [ %i.af, %bb.f ] ; 4 uses
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
  %i.am = add i32 %.0173, %i.h                    ; 2 uses
  %i.an = add i32 %i.am, 1                        ; 2 uses
  %i.ao = zext i32 %i.an to i64
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %i.aq = sext i32 %.0173 to i64
  %xtraiter = and i32 %i.am, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %i.ar = sub i32 0, %i.h
  %i.as = icmp eq i32 %i.an, 0
  br label %.preheader257

bb.g:                                             ; preds = %.preheader259, %bb.g
  %.1177269 = phi ptr [ %.0176275, %.preheader259 ], [ %i.bc, %bb.g ] ; 2 uses
  %.0189268 = phi i32 [ %i.af, %.preheader259 ], [ %i.bd, %bb.g ] ; 4 uses
  %i.at = mul nsw i32 %.0189268, %.0189268
  %i.au = add nuw nsw i32 %i.at, %i.ag
  %i.av = uitofp nneg i32 %i.au to float
  %i.aw = fdiv float %i.av, %i.ae
  %i.ax = fpext float %i.aw to double
  %i.ay = tail call double @exp(double noundef %i.ax) #21, !tbaa !4
  %i.az = fmul double %i.ay, 1.000000e+02
  %i.ba = fptosi double %i.az to i32
  %i.bb = trunc i32 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %.1177269, i64 1 ; 2 uses
  store i8 %i.bb, ptr %.1177269, align 1, !tbaa !18
  %i.bd = add i32 %.0189268, 1
  %exitcond.not = icmp eq i32 %.0189268, %.0173
  br i1 %exitcond.not, label %._crit_edge271, label %bb.g, !llvm.loop !29

._crit_edge271:                                   ; preds = %bb.g
  %i.be = add i32 %.0180274, 1
  %exitcond312.not = icmp eq i32 %.0180274, %.0173
  br i1 %exitcond312.not, label %.preheader258, label %.preheader259, !llvm.loop !30

.preheader257:                                    ; preds = %.preheader257.lr.ph, %._crit_edge301
  %i.bf = phi i32 [ %i.ah, %.preheader257.lr.ph ], [ %i.fh, %._crit_edge301 ]
  %i.bg = phi i32 [ %i.y, %.preheader257.lr.ph ], [ %i.fi, %._crit_edge301 ] ; 3 uses
  %.0174304 = phi ptr [ %1, %.preheader257.lr.ph ], [ %.1175.lcssa, %._crit_edge301 ] ; 2 uses
  %.1181303 = phi i32 [ %.0173, %.preheader257.lr.ph ], [ %.pre-phi, %._crit_edge301 ] ; 5 uses
  %i.bh = sub nsw i32 %i.bg, %.0173
  %i.bi = icmp slt i32 %.0173, %i.bh
  br i1 %i.bi, label %.lr.ph300, label %.preheader257.._crit_edge301_crit_edge

.preheader257.._crit_edge301_crit_edge:           ; preds = %.preheader257
  %.pre321.a = add nsw i32 %.1181303, 1
  br label %._crit_edge301

.lr.ph300:                                        ; preds = %.preheader257
  %i.bj = sub nsw i32 %.1181303, %.0173
  %i.bk = add nsw i32 %.1181303, -1
  %i.bl = add nsw i32 %.1181303, 1                ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph300, %bb.j
  %indvars.iv316 = phi i64 [ %i.aq, %.lr.ph300 ], [ %indvars.iv.next317, %bb.j ] ; 5 uses
  %i.bm = phi i32 [ %i.bg, %.lr.ph300 ], [ %i.fd, %bb.j ] ; 4 uses
  %.1175299 = phi ptr [ %.0174304, %.lr.ph300 ], [ %.2, %bb.j ] ; 2 uses
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !11  ; 4 uses
  %i.bo = mul nsw i32 %i.bm, %.1181303
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr i8, ptr %i.bn, i64 %indvars.iv316
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bp  ; 3 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !18  ; 2 uses
  %i.bt = zext i8 %i.bs to i32
  %i.bu = zext i8 %i.bs to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 %i.bu ; 3 uses
  br i1 %.not200273, label %._crit_edge294.split.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.h
  %i.bw = mul nsw i32 %i.bm, %i.bj
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds i8, ptr %i.bn, i64 %i.bx
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 %indvars.iv316
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 %i.ak
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge283
  %.0293 = phi i32 [ %.lcssa, %._crit_edge283 ], [ 0, %.preheader.preheader ] ; 2 uses
  %.2178292 = phi ptr [ %scevgep313, %._crit_edge283 ], [ %i.ac, %.preheader.preheader ] ; 4 uses
  %.0183291 = phi ptr [ %i.dw, %._crit_edge283 ], [ %i.ca, %.preheader.preheader ] ; 4 uses
  %.0185290 = phi i32 [ %.lcssa353, %._crit_edge283 ], [ 0, %.preheader.preheader ] ; 2 uses
  %.0187289 = phi i32 [ %i.dx, %._crit_edge283 ], [ %i.af, %.preheader.preheader ] ; 2 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.preheader
  %i.cb = getelementptr inbounds nuw i8, ptr %.0183291, i64 1
  %i.cc = load i8, ptr %.0183291, align 1, !tbaa !18 ; 2 uses
  %i.cd = zext i8 %i.cc to i32
  %i.ce = getelementptr inbounds nuw i8, ptr %.2178292, i64 1
  %i.cf = load i8, ptr %.2178292, align 1, !tbaa !18
  %i.cg = zext i8 %i.cf to i32
  %i.ch = zext i8 %i.cc to i64
  %i.ci = sub nsw i64 0, %i.ch
  %i.cj = getelementptr inbounds i8, ptr %i.bv, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !18
  %i.cl = zext i8 %i.ck to i32
  %i.cm = mul nuw nsw i32 %i.cl, %i.cg            ; 2 uses
  %i.cn = add nsw i32 %i.cm, %.0185290            ; 2 uses
  %i.co = mul nuw nsw i32 %i.cm, %i.cd
  %i.cp = add nsw i32 %i.co, %.0293               ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.preheader
  %.lcssa353.unr = phi i32 [ poison, %.preheader ], [ %i.cn, %.prol.loopexit.unr-lcssa ]
  %.lcssa.unr = phi i32 [ poison, %.preheader ], [ %i.cp, %.prol.loopexit.unr-lcssa ]
  %.1281.unr = phi i32 [ %.0293, %.preheader ], [ %i.cp, %.prol.loopexit.unr-lcssa ]
  %.3179280.unr = phi ptr [ %.2178292, %.preheader ], [ %i.ce, %.prol.loopexit.unr-lcssa ]
  %.1184279.unr = phi ptr [ %.0183291, %.preheader ], [ %i.cb, %.prol.loopexit.unr-lcssa ]
  %.1186278.unr = phi i32 [ %.0185290, %.preheader ], [ %i.cn, %.prol.loopexit.unr-lcssa ]
  %.0188277.unr = phi i32 [ %i.af, %.preheader ], [ %i.ar, %.prol.loopexit.unr-lcssa ]
  br i1 %i.as, label %._crit_edge283, label %.preheader.new

.preheader.new:                                   ; preds = %.prol.loopexit, %.preheader.new
  %.1281 = phi i32 [ %i.du, %.preheader.new ], [ %.1281.unr, %.prol.loopexit ]
  %.3179280 = phi ptr [ %i.dj, %.preheader.new ], [ %.3179280.unr, %.prol.loopexit ] ; 3 uses
  %.1184279 = phi ptr [ %i.dg, %.preheader.new ], [ %.1184279.unr, %.prol.loopexit ] ; 3 uses
  %.1186278 = phi i32 [ %i.ds, %.preheader.new ], [ %.1186278.unr, %.prol.loopexit ]
  %.0188277 = phi i32 [ %i.dv, %.preheader.new ], [ %.0188277.unr, %.prol.loopexit ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.1184279, i64 1
  %i.cr = load i8, ptr %.1184279, align 1, !tbaa !18 ; 2 uses
  %i.cs = zext i8 %i.cr to i32
  %i.ct = getelementptr inbounds nuw i8, ptr %.3179280, i64 1
  %i.cu = load i8, ptr %.3179280, align 1, !tbaa !18
  %i.cv = zext i8 %i.cu to i32
  %i.cw = zext i8 %i.cr to i64
  %i.cx = sub nsw i64 0, %i.cw
  %i.cy = getelementptr inbounds i8, ptr %i.bv, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !18
  %i.da = zext i8 %i.cz to i32
  %i.db = mul nuw nsw i32 %i.da, %i.cv            ; 2 uses
  %i.dc = add nsw i32 %i.db, %.1186278
  %i.dd = mul nuw nsw i32 %i.db, %i.cs
  %i.de = add nsw i32 %i.dd, %.1281
  %i.df = add i32 %.0188277, 1
  %i.dg = getelementptr inbounds nuw i8, ptr %.1184279, i64 2
  %i.dh = load i8, ptr %i.cq, align 1, !tbaa !18  ; 2 uses
  %i.di = zext i8 %i.dh to i32
  %i.dj = getelementptr inbounds nuw i8, ptr %.3179280, i64 2
  %i.dk = load i8, ptr %i.ct, align 1, !tbaa !18
  %i.dl = zext i8 %i.dk to i32
  %i.dm = zext i8 %i.dh to i64
  %i.dn = sub nsw i64 0, %i.dm
  %i.do = getelementptr inbounds i8, ptr %i.bv, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !18
  %i.dq = zext i8 %i.dp to i32
  %i.dr = mul nuw nsw i32 %i.dq, %i.dl            ; 2 uses
  %i.ds = add nsw i32 %i.dr, %i.dc                ; 2 uses
  %i.dt = mul nuw nsw i32 %i.dr, %i.di
  %i.du = add nsw i32 %i.dt, %i.de                ; 2 uses
  %i.dv = add i32 %.0188277, 2
  %exitcond314.not.1 = icmp eq i32 %i.df, %.0173
  br i1 %exitcond314.not.1, label %._crit_edge283, label %.preheader.new, !llvm.loop !31

._crit_edge283:                                   ; preds = %.preheader.new, %.prol.loopexit
  %.lcssa353 = phi i32 [ %.lcssa353.unr, %.prol.loopexit ], [ %i.ds, %.preheader.new ] ; 2 uses
  %.lcssa = phi i32 [ %.lcssa.unr, %.prol.loopexit ], [ %i.du, %.preheader.new ] ; 2 uses
  %scevgep = getelementptr i8, ptr %.0183291, i64 %i.ap
  %scevgep313 = getelementptr i8, ptr %.2178292, i64 %i.ap
  %i.dw = getelementptr inbounds i8, ptr %scevgep, i64 %i.al
  %i.dx = add i32 %.0187289, 1
  %exitcond315.not = icmp eq i32 %.0187289, %.0173
  br i1 %exitcond315.not, label %._crit_edge294.split, label %.preheader, !llvm.loop !32

._crit_edge294.split:                             ; preds = %._crit_edge283
  %i.dy = add nsw i32 %.lcssa353, -10000          ; 2 uses
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.i, label %._crit_edge294.split.thread

bb.i:                                             ; preds = %._crit_edge294.split
  %i.ea = mul nsw i32 %i.bm, %i.bk
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr i8, ptr %i.bn, i64 %indvars.iv316
  %i.ed = getelementptr i8, ptr %i.ec, i64 %i.eb  ; 3 uses
  %i.ee = getelementptr i8, ptr %i.ed, i64 -1
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !18  ; 2 uses
  %i.eg = load i8, ptr %i.ed, align 1, !tbaa !18  ; 2 uses
  %i.eh = getelementptr i8, ptr %i.ed, i64 1
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !18  ; 3 uses
  %i.ej = getelementptr i8, ptr %i.br, i64 -1
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !18  ; 2 uses
  %i.el = getelementptr i8, ptr %i.br, i64 1
  %i.em = load i8, ptr %i.el, align 1, !tbaa !18  ; 2 uses
  %i.en = mul nsw i32 %i.bm, %i.bl
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr i8, ptr %i.bn, i64 %indvars.iv316
  %i.eq = getelementptr i8, ptr %i.ep, i64 %i.eo  ; 3 uses
  %i.er = getelementptr i8, ptr %i.eq, i64 -1
  %i.es = load i8, ptr %i.er, align 1, !tbaa !18  ; 2 uses
  %i.et = load i8, ptr %i.eq, align 1, !tbaa !18  ; 2 uses
  %i.eu = getelementptr i8, ptr %i.eq, i64 1
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !18
  %spec.select125.i = tail call i8 @llvm.umax.i8(i8 %i.ef, i8 %i.eg) ; 2 uses
  %spec.select124.v.i = tail call i8 @llvm.umin.i8(i8 %i.ef, i8 %i.eg) ; 2 uses
  %spec.select124.i = zext i8 %spec.select124.v.i to i32 ; 2 uses
  %.sroa.44.13126.i = tail call i8 @llvm.umax.i8(i8 %spec.select125.i, i8 %i.ei) ; 2 uses
  %.sroa.17.17.v.i = tail call i8 @llvm.umin.i8(i8 %spec.select125.i, i8 %i.ei)
  %.sroa.17.17.i = zext i8 %.sroa.17.17.v.i to i32 ; 2 uses
  %.sroa.67.12127.i = tail call i8 @llvm.umax.i8(i8 %.sroa.44.13126.i, i8 %i.ek) ; 2 uses
  %.sroa.44.14.v.i = tail call i8 @llvm.umin.i8(i8 %.sroa.44.13126.i, i8 %i.ek)
  %.sroa.44.14.i = zext i8 %.sroa.44.14.v.i to i32 ; 2 uses
  %.sroa.87.9128.i = tail call i8 @llvm.umax.i8(i8 %.sroa.67.12127.i, i8 %i.em) ; 2 uses
  %.sroa.67.13.v.i = tail call i8 @llvm.umin.i8(i8 %.sroa.67.12127.i, i8 %i.em)
  %.sroa.67.13.i = zext i8 %.sroa.67.13.v.i to i32 ; 2 uses
  %.sroa.103.4129.i = tail call i8 @llvm.umax.i8(i8 %.sroa.87.9128.i, i8 %i.es) ; 2 uses
  %.sroa.87.10.v.i = tail call i8 @llvm.umin.i8(i8 %.sroa.87.9128.i, i8 %i.es)
  %.sroa.87.10.i = zext i8 %.sroa.87.10.v.i to i32 ; 2 uses
  %.sroa.114.1130.i = tail call i8 @llvm.umax.i8(i8 %.sroa.103.4129.i, i8 %i.et)
  %.sroa.103.5.v.i = tail call i8 @llvm.umin.i8(i8 %.sroa.103.4129.i, i8 %i.et)
  %.sroa.103.5.i = zext i8 %.sroa.103.5.v.i to i32 ; 2 uses
  %i.ew = tail call i8 @llvm.umin.i8(i8 %.sroa.114.1130.i, i8 %i.ev)
  %.sroa.114.2.i = zext i8 %i.ew to i32
  %i.ex = icmp ult i8 %i.ei, %spec.select124.v.i  ; 2 uses
  %.sroa.17.2.i = select i1 %i.ex, i32 %spec.select124.i, i32 %.sroa.17.17.i ; 2 uses
  %.sroa.0.2.i = select i1 %i.ex, i32 %.sroa.17.17.i, i32 %spec.select124.i ; 2 uses
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
  %i.ey = icmp samesign ult i32 %.sroa.44.12.i, %.sroa.0.4.i ; 2 uses
  %.sroa.17.6.i = select i1 %i.ey, i32 %.sroa.0.4.i, i32 %.sroa.17.15.i ; 2 uses
  %.sroa.0.6.i = select i1 %i.ey, i32 %.sroa.17.15.i, i32 %.sroa.0.4.i
  %.sroa.44.7.i = tail call i32 @llvm.umax.i32(i32 %.sroa.17.6.i, i32 %.sroa.44.10.i) ; 2 uses
  %.sroa.17.14.i = tail call i32 @llvm.umin.i32(i32 %.sroa.17.6.i, i32 %.sroa.44.10.i)
end_hunk_0
