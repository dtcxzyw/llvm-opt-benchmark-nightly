inline.NumInlined: 6
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@fft_float:bb.a
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count147
  br i1 %cmp.n, label %.loopexit, label %.lr.ph136.preheader172

.lr.ph136.preheader172:                           ; preds = %vector.memcheck, %.lr.ph136.preheader, %middle.block
  %indvars.iv152.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph136.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count147, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph136.prol.loopexit, label %.lr.ph136.prol

.lr.ph136.prol:                                   ; preds = %.lr.ph136.preheader172
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv152.ph ; 2 uses
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !11
  %i.de = fpext float %i.dd to double
  %i.df = fdiv double %i.de, %i.cr
  %i.dg = fptrunc double %i.df to float
  store float %i.dg, ptr %i.dc, align 4, !tbaa !11
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv152.ph ; 2 uses
  %i.di = load float, ptr %i.dh, align 4, !tbaa !11
  %i.dj = fpext float %i.di to double
  %i.dk = fdiv double %i.dj, %i.cr
  %i.dl = fptrunc double %i.dk to float
  store float %i.dl, ptr %i.dh, align 4, !tbaa !11
  %indvars.iv.next153.prol = or disjoint i64 %indvars.iv152.ph, 1
  br label %.lr.ph136.prol.loopexit

.lr.ph136.prol.loopexit:                          ; preds = %.lr.ph136.prol, %.lr.ph136.preheader172
  %indvars.iv152.unr = phi i64 [ %indvars.iv152.ph, %.lr.ph136.preheader172 ], [ %indvars.iv.next153.prol, %.lr.ph136.prol ]
  %i.dm = add nsw i64 %wide.trip.count147, -1
  %i.dn = icmp eq i64 %indvars.iv152.ph, %i.dm
  br i1 %i.dn, label %.loopexit, label %.lr.ph136

.lr.ph136:                                        ; preds = %.lr.ph136.prol.loopexit, %.lr.ph136
  %indvars.iv152 = phi i64 [ %indvars.iv.next153.1, %.lr.ph136 ], [ %indvars.iv152.unr, %.lr.ph136.prol.loopexit ] ; 4 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv152 ; 2 uses
  %i.dp = load float, ptr %i.do, align 4, !tbaa !11
  %i.dq = fpext float %i.dp to double
  %i.dr = fdiv double %i.dq, %i.cr
  %i.ds = fptrunc double %i.dr to float
  store float %i.ds, ptr %i.do, align 4, !tbaa !11
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv152 ; 2 uses
  %i.du = load float, ptr %i.dt, align 4, !tbaa !11
  %i.dv = fpext float %i.du to double
  %i.dw = fdiv double %i.dv, %i.cr
  %i.dx = fptrunc double %i.dw to float
  store float %i.dx, ptr %i.dt, align 4, !tbaa !11
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1 ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next153 ; 2 uses
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !11
  %i.ea = fpext float %i.dz to double
  %i.eb = fdiv double %i.ea, %i.cr
  %i.ec = fptrunc double %i.eb to float
  store float %i.ec, ptr %i.dy, align 4, !tbaa !11
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next153 ; 2 uses
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !11
  %i.ef = fpext float %i.ee to double
  %i.eg = fdiv double %i.ef, %i.cr
  %i.eh = fptrunc double %i.eg to float
  store float %i.eh, ptr %i.ed, align 4, !tbaa !11
  %indvars.iv.next153.1 = add nuw nsw i64 %indvars.iv152, 2 ; 2 uses
  %exitcond156.not.1 = icmp eq i64 %indvars.iv.next153.1, %wide.trip.count155
  br i1 %exitcond156.not.1, label %.loopexit, label %.lr.ph136, !llvm.loop !26

.loopexit:                                        ; preds = %.lr.ph136.prol.loopexit, %.lr.ph136, %middle.block, %CheckPointer.exit113, %._crit_edge.thread, %._crit_edge
  ret void
}

declare i32 @IsPowerOfTwo(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

declare i32 @NumberOfBitsNeeded(i32 noundef) local_unnamed_addr #1

declare i32 @ReverseBits(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @fft_float_StrictFP(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef captures(address_is_null) %4, ptr nofree noundef captures(address_is_null) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @IsPowerOfTwo(i32 noundef %0) #6
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str, i32 noundef %0) #7 ; 0 uses
  tail call void @exit(i32 noundef 1) #8
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not110 = icmp eq i32 %1, 0                    ; 3 uses
  %.0105 = select i1 %.not110, double f0x401921FB54442D18, double f0xC01921FB54442D18
  %i.d = icmp eq ptr %2, null
  br i1 %i.d, label %bb.d, label %CheckPointer.exit

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #7 ; 0 uses
  tail call void @exit(i32 noundef 1) #8
  unreachable

CheckPointer.exit:                                ; preds = %bb.c
  %i.g = icmp eq ptr %4, null
  br i1 %i.g, label %bb.e, label %CheckPointer.exit112

bb.e:                                             ; preds = %CheckPointer.exit
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2) #7 ; 0 uses
  tail call void @exit(i32 noundef 1) #8
  unreachable

CheckPointer.exit112:                             ; preds = %CheckPointer.exit
  %i.j = icmp eq ptr %5, null
  br i1 %i.j, label %bb.f, label %CheckPointer.exit113

bb.f:                                             ; preds = %CheckPointer.exit112
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3) #7 ; 0 uses
  tail call void @exit(i32 noundef 1) #8
  unreachable

CheckPointer.exit113:                             ; preds = %CheckPointer.exit112
  %i.m = tail call i32 @NumberOfBitsNeeded(i32 noundef %0) #6 ; 2 uses
  %.not138 = icmp eq i32 %0, 0
  br i1 %.not138, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %CheckPointer.exit113
  %i.n = icmp eq ptr %3, null
  %wide.trip.count147 = zext i32 %0 to i64        ; 7 uses
  br i1 %i.n, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %indvars.iv144 = phi i64 [ %indvars.iv.next145, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 3 uses
  %i.o = trunc nuw i64 %indvars.iv144 to i32
  %i.p = tail call i32 @ReverseBits(i32 noundef %i.o, i32 noundef %i.m) #6
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv144
  %i.r = load float, ptr %i.q, align 4, !tbaa !11
  %i.s = zext i32 %i.p to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.s
  store float %i.r, ptr %i.t, align 4, !tbaa !11
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.s
  store float 0.000000e+00, ptr %i.u, align 4, !tbaa !11
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %exitcond148.not = icmp eq i64 %indvars.iv.next145, %wide.trip.count147
  br i1 %exitcond148.not, label %.preheader114, label %.lr.ph.split.us, !llvm.loop !27

.preheader114:                                    ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.not111125 = icmp eq i32 %0, 1
  br i1 %.not111125, label %._crit_edge.thread, label %.lr.ph129.split.us

.lr.ph129.split.us:                               ; preds = %.preheader114, %._crit_edge124.us
  %.099127.us = phi i32 [ %i.ai, %._crit_edge124.us ], [ 2, %.preheader114 ] ; 5 uses
  %.0104126.us = phi i32 [ %.099127.us, %._crit_edge124.us ], [ 1, %.preheader114 ] ; 3 uses
  %i.v = uitofp i32 %.099127.us to double
  %i.w = fdiv double %.0105, %i.v                 ; 4 uses
  %i.x = fmul nnan double %i.w, -2.000000e+00     ; 4 uses
  %i.y = tail call double @sin(double noundef %i.x) #6, !tbaa !4
  %i.z = fneg double %i.w                         ; 2 uses
  %i.aa = tail call double @sin(double noundef %i.z) #6, !tbaa !4
  %i.ab = tail call double @cos(double noundef %i.x) #6, !tbaa !4 ; 2 uses
  %i.ac = tail call double @cos(double noundef %i.z) #6, !tbaa !4 ; 2 uses
  %i.ad = fcmp oeq double %i.x, f0x3FE921FB54442D18
  br i1 %i.ad, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph129.split.us
  %i.ae = fcmp oeq double %i.x, f0x3FC921FB54442D18
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %.lr.ph129.split.us
  %.0103.us = phi double [ %i.y, %bb.g ], [ f0x3FC8F8B83C69A60A, %bb.h ], [ f0x3FE6A09E667F3BCC, %.lr.ph129.split.us ]
  %.0101.us = phi double [ %i.ab, %bb.g ], [ %i.ab, %bb.h ], [ f0x3FE6A09E667F3BCD, %.lr.ph129.split.us ]
  %i.af = fcmp oeq double %i.w, f0xBFE921FB54442D18
  br i1 %i.af, label %.preheader.lr.ph.us, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = fcmp oeq double %i.w, f0xBFC921FB54442D18
  br i1 %i.ag, label %bb.k, label %.preheader.lr.ph.us

bb.k:                                             ; preds = %bb.j
  br label %.preheader.lr.ph.us

.preheader.lr.ph.us:                              ; preds = %bb.k, %bb.j, %bb.i
  %.0102.us = phi double [ %i.aa, %bb.j ], [ f0x3FC8F8B83C69A60A, %bb.k ], [ f0x3FE6A09E667F3BCC, %bb.i ]
  %.0100.us = phi double [ %i.ac, %bb.j ], [ %i.ac, %bb.k ], [ f0x3FE6A09E667F3BCD, %bb.i ] ; 2 uses
  %i.ah = fmul double %.0100.us, 2.000000e+00     ; 2 uses
  %.not139 = icmp eq i32 %.0104126.us, 0
  br i1 %.not139, label %._crit_edge124.us, label %.preheader.us.us

._crit_edge124.us:                                ; preds = %._crit_edge.us.us, %.preheader.lr.ph.us
  %i.ai = shl i32 %.099127.us, 1                  ; 2 uses
  %.not111.us = icmp ugt i32 %i.ai, %0
  br i1 %.not111.us, label %._crit_edge, label %.lr.ph129.split.us, !llvm.loop !28

.preheader.us.us:                                 ; preds = %.preheader.lr.ph.us, %._crit_edge.us.us
  %indvars.iv149 = phi i32 [ %indvars.iv.next150, %._crit_edge.us.us ], [ %.0104126.us, %.preheader.lr.ph.us ] ; 2 uses
  %.1123.us.us = phi i32 [ %i.br, %._crit_edge.us.us ], [ 0, %.preheader.lr.ph.us ] ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.us.us
  %.097121.us.us = phi i32 [ %.1123.us.us, %.preheader.us.us ], [ %i.bq, %bb.l ] ; 3 uses
  %.sroa.6.0120.us.us = phi double [ %.0102.us, %.preheader.us.us ], [ %9, %bb.l ] ; 2 uses
  %.sroa.10.0119.us.us = phi double [ %.0103.us, %.preheader.us.us ], [ %.sroa.6.0120.us.us, %bb.l ]
  %.sroa.68.0117.us.us = phi double [ %.0100.us, %.preheader.us.us ], [ %7, %bb.l ] ; 2 uses
  %.sroa.1010.0116.us.us = phi double [ %.0101.us, %.preheader.us.us ], [ %.sroa.68.0117.us.us, %bb.l ]
  %6 = fmul double %i.ah, %.sroa.68.0117.us.us
  %7 = fsub double %6, %.sroa.1010.0116.us.us     ; 3 uses
  %8 = fmul double %i.ah, %.sroa.6.0120.us.us
  %9 = fsub double %8, %.sroa.10.0119.us.us       ; 3 uses
  %i.aj = add i32 %.097121.us.us, %.0104126.us
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ak ; 2 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !11
  %i.an = fpext float %i.am to double             ; 2 uses
  %i.ao = fmul double %7, %i.an
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ak ; 2 uses
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !11
  %i.ar = fpext float %i.aq to double             ; 2 uses
  %i.as = fmul double %9, %i.ar
  %i.at = fsub double %i.ao, %i.as                ; 2 uses
  %i.au = fmul double %7, %i.ar
  %i.av = fmul double %9, %i.an
  %i.aw = fadd double %i.av, %i.au                ; 2 uses
  %i.ax = zext i32 %.097121.us.us to i64          ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ax ; 3 uses
  %i.az = load float, ptr %i.ay, align 4, !tbaa !11
  %i.ba = fpext float %i.az to double
  %i.bb = fsub double %i.ba, %i.at
  %i.bc = fptrunc double %i.bb to float
  store float %i.bc, ptr %i.al, align 4, !tbaa !11
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ax ; 3 uses
  %i.be = load float, ptr %i.bd, align 4, !tbaa !11
  %i.bf = fpext float %i.be to double
  %i.bg = fsub double %i.bf, %i.aw
  %i.bh = fptrunc double %i.bg to float
  store float %i.bh, ptr %i.ap, align 4, !tbaa !11
  %i.bi = load float, ptr %i.ay, align 4, !tbaa !11
  %i.bj = fpext float %i.bi to double
  %i.bk = fadd double %i.at, %i.bj
  %i.bl = fptrunc double %i.bk to float
  store float %i.bl, ptr %i.ay, align 4, !tbaa !11
  %i.bm = load float, ptr %i.bd, align 4, !tbaa !11
  %i.bn = fpext float %i.bm to double
  %i.bo = fadd double %i.aw, %i.bn
  %i.bp = fptrunc double %i.bo to float
  store float %i.bp, ptr %i.bd, align 4, !tbaa !11
  %i.bq = add i32 %.097121.us.us, 1               ; 2 uses
  %exitcond151.not = icmp eq i32 %i.bq, %indvars.iv149
  br i1 %exitcond151.not, label %._crit_edge.us.us, label %bb.l, !llvm.loop !29

._crit_edge.us.us:                                ; preds = %bb.l
  %i.br = add i32 %.1123.us.us, %.099127.us       ; 2 uses
  %i.bs = icmp ult i32 %i.br, %0
  %indvars.iv.next150 = add i32 %indvars.iv149, %.099127.us
  br i1 %i.bs, label %.preheader.us.us, label %._crit_edge124.us, !llvm.loop !30

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ 0, %.lr.ph ] ; 4 uses
  %i.bt = trunc nuw i64 %indvars.iv to i32
  %i.bu = tail call i32 @ReverseBits(i32 noundef %i.bt, i32 noundef %i.m) #6
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !11
  %i.bx = zext i32 %i.bu to i64                   ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bx
  store float %i.bw, ptr %i.by, align 4, !tbaa !11
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !11
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.bx
  store float %i.ca, ptr %i.cb, align 4, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count147
  br i1 %exitcond.not, label %.preheader114, label %.lr.ph.split, !llvm.loop !27

._crit_edge:                                      ; preds = %._crit_edge124.us
  br i1 %.not110, label %.loopexit, label %.lr.ph136.preheader

._crit_edge.thread:                               ; preds = %.preheader114
  br i1 %.not110, label %.loopexit, label %.lr.ph136.preheader

.lr.ph136.preheader:                              ; preds = %._crit_edge, %._crit_edge.thread
  %i.cc = uitofp i32 %0 to double                 ; 7 uses
  %wide.trip.count155 = zext i32 %0 to i64
  %min.iters.check = icmp ult i32 %0, 4
  br i1 %min.iters.check, label %.lr.ph136.preheader172, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph136.preheader
  %i.cd = shl nuw nsw i64 %wide.trip.count147, 2  ; 2 uses
  %scevgep = getelementptr i8, ptr %4, i64 %i.cd
  %scevgep170 = getelementptr i8, ptr %5, i64 %i.cd
  %bound0 = icmp ult ptr %4, %scevgep170
  %bound1 = icmp ult ptr %5, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph136.preheader172, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count147, 4294967292 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.cc, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.ce, align 4, !tbaa !11, !alias.scope !31, !noalias !34
  %i.cf = fpext <4 x float> %wide.load to <4 x double>
  %i.cg = fdiv <4 x double> %i.cf, %broadcast.splat
  %i.ch = fptrunc <4 x double> %i.cg to <4 x float>
  store <4 x float> %i.ch, ptr %i.ce, align 4, !tbaa !11, !alias.scope !31, !noalias !34
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index ; 2 uses
  %wide.load171 = load <4 x float>, ptr %i.ci, align 4, !tbaa !11, !alias.scope !34
  %i.cj = fpext <4 x float> %wide.load171 to <4 x double>
  %i.ck = fdiv <4 x double> %i.cj, %broadcast.splat
  %i.cl = fptrunc <4 x double> %i.ck to <4 x float>
  store <4 x float> %i.cl, ptr %i.ci, align 4, !tbaa !11, !alias.scope !34
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !36

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count147
  br i1 %cmp.n, label %.loopexit, label %.lr.ph136.preheader172

.lr.ph136.preheader172:                           ; preds = %vector.memcheck, %.lr.ph136.preheader, %middle.block
  %indvars.iv152.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph136.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count147, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph136.prol.loopexit, label %.lr.ph136.prol

.lr.ph136.prol:                                   ; preds = %.lr.ph136.preheader172
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv152.ph ; 2 uses
  %i.co = load float, ptr %i.cn, align 4, !tbaa !11
  %i.cp = fpext float %i.co to double
  %i.cq = fdiv double %i.cp, %i.cc
  %i.cr = fptrunc double %i.cq to float
  store float %i.cr, ptr %i.cn, align 4, !tbaa !11
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv152.ph ; 2 uses
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !11
  %i.cu = fpext float %i.ct to double
  %i.cv = fdiv double %i.cu, %i.cc
  %i.cw = fptrunc double %i.cv to float
  store float %i.cw, ptr %i.cs, align 4, !tbaa !11
  %indvars.iv.next153.prol = or disjoint i64 %indvars.iv152.ph, 1
  br label %.lr.ph136.prol.loopexit

.lr.ph136.prol.loopexit:                          ; preds = %.lr.ph136.prol, %.lr.ph136.preheader172
  %indvars.iv152.unr = phi i64 [ %indvars.iv152.ph, %.lr.ph136.preheader172 ], [ %indvars.iv.next153.prol, %.lr.ph136.prol ]
  %i.cx = add nsw i64 %wide.trip.count147, -1
  %i.cy = icmp eq i64 %indvars.iv152.ph, %i.cx
  br i1 %i.cy, label %.loopexit, label %.lr.ph136

.lr.ph136:                                        ; preds = %.lr.ph136.prol.loopexit, %.lr.ph136
  %indvars.iv152 = phi i64 [ %indvars.iv.next153.1, %.lr.ph136 ], [ %indvars.iv152.unr, %.lr.ph136.prol.loopexit ] ; 4 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv152 ; 2 uses
  %i.da = load float, ptr %i.cz, align 4, !tbaa !11
  %i.db = fpext float %i.da to double
  %i.dc = fdiv double %i.db, %i.cc
  %i.dd = fptrunc double %i.dc to float
  store float %i.dd, ptr %i.cz, align 4, !tbaa !11
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv152 ; 2 uses
  %i.df = load float, ptr %i.de, align 4, !tbaa !11
  %i.dg = fpext float %i.df to double
  %i.dh = fdiv double %i.dg, %i.cc
  %i.di = fptrunc double %i.dh to float
  store float %i.di, ptr %i.de, align 4, !tbaa !11
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1 ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next153 ; 2 uses
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !11
  %i.dl = fpext float %i.dk to double
  %i.dm = fdiv double %i.dl, %i.cc
  %i.dn = fptrunc double %i.dm to float
  store float %i.dn, ptr %i.dj, align 4, !tbaa !11
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next153 ; 2 uses
  %i.dp = load float, ptr %i.do, align 4, !tbaa !11
  %i.dq = fpext float %i.dp to double
  %i.dr = fdiv double %i.dq, %i.cc
  %i.ds = fptrunc double %i.dr to float
  store float %i.ds, ptr %i.do, align 4, !tbaa !11
  %indvars.iv.next153.1 = add nuw nsw i64 %indvars.iv152, 2 ; 2 uses
  %exitcond156.not.1 = icmp eq i64 %indvars.iv.next153.1, %wide.trip.count155
  br i1 %exitcond156.not.1, label %.loopexit, label %.lr.ph136, !llvm.loop !37

.loopexit:                                        ; preds = %.lr.ph136.prol.loopexit, %.lr.ph136, %middle.block, %CheckPointer.exit113, %._crit_edge.thread, %._crit_edge
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"float", !6, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
!18 = !{!19}
!19 = distinct !{!19, !20}
end_hunk_0
