begin_hunk_0_@start_output_ppm:bb.a
  tail call void %i.t(ptr noundef nonnull %0) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.c, %bb.e, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !60
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.x = load i32, ptr %i.w, align 8, !tbaa !54
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !61
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !8
  %notmask = shl nsw i32 -1, %i.ad
  %i.ae = xor i32 %notmask, -1
  %i.af = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.v, ptr noundef nonnull @.str.1, i64 noundef %i.y, i64 noundef %i.ab, i32 noundef %i.ae) #7 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.ag = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store i32 1028, ptr %i.ah, align 8, !tbaa !34
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !38
  tail call void %i.ai(ptr noundef nonnull %0) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @finish_output_ppm(ptr noundef %0, ptr noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.c = tail call i32 @fflush(ptr noundef %i.b)  ; 0 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.e = tail call i32 @ferror(ptr noundef %i.d) #7
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i32 38, ptr %i.g, align 8, !tbaa !34
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !38
  tail call void %i.h(ptr noundef nonnull %0) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @calc_buffer_dimensions_ppm(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) initializes((88, 100)) %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !52
  %i.c = icmp eq i32 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = load i32, ptr %i.d, align 8, !tbaa !54   ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.g = load i32, ptr %i.f, align 8, !tbaa !63
  %i.h = mul i32 %i.g, %i.e
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = mul i32 %i.e, 3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ %i.h, %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 %.sink, ptr %i.j, align 8, !tbaa !64
  %i.k = zext i32 %.sink to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 %i.k, ptr %i.l, align 8, !tbaa !49
  ret void
}

declare void @jpeg_calc_output_dimensions(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal void @put_rgb(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load i32, ptr %i.b, align 8, !tbaa !54   ; 5 uses
  %.not25 = icmp eq i32 %i.c, 0
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !50   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !65   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load i32, ptr %i.h, align 8, !tbaa !52
  %i.j = zext i32 %i.i to i64                     ; 4 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr @rgb_pixelsize, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4
  %i.m = getelementptr inbounds nuw [4 x i8], ptr @rgb_blue, i64 %i.j
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @rgb_green, i64 %i.j
  %i.p = load i32, ptr %i.o, align 4, !tbaa !4
  %i.q = getelementptr inbounds nuw [4 x i8], ptr @rgb_red, i64 %i.j
  %i.r = load i32, ptr %i.q, align 4, !tbaa !4
  %i.s = sext i32 %i.r to i64                     ; 3 uses
  %i.t = sext i32 %i.p to i64                     ; 3 uses
  %i.u = sext i32 %i.n to i64                     ; 3 uses
  %i.v = sext i32 %i.l to i64                     ; 3 uses
  %xtraiter = and i32 %i.c, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.w = getelementptr inbounds i8, ptr %i.g, i64 %i.s
  %i.x = load i8, ptr %i.w, align 1, !tbaa !37
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %i.x, ptr %i.d, align 1, !tbaa !37
  %i.z = getelementptr inbounds i8, ptr %i.g, i64 %i.t
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !37
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i8 %i.aa, ptr %i.y, align 1, !tbaa !37
  %i.ac = getelementptr inbounds i8, ptr %i.g, i64 %i.u
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !37
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  store i8 %i.ad, ptr %i.ab, align 1, !tbaa !37
  %i.af = getelementptr inbounds i8, ptr %i.g, i64 %i.v
  %i.ag = add nsw i32 %i.c, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.028.unr = phi ptr [ %i.d, %.lr.ph ], [ %i.ae, %.prol.loopexit.unr-lcssa ]
  %.02327.unr = phi ptr [ %i.g, %.lr.ph ], [ %i.af, %.prol.loopexit.unr-lcssa ]
  %.02426.unr = phi i32 [ %i.c, %.lr.ph ], [ %i.ag, %.prol.loopexit.unr-lcssa ]
  %i.ah = icmp eq i32 %i.c, 1
  br i1 %i.ah, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.028 = phi ptr [ %i.ba, %.lr.ph.new ], [ %.028.unr, %.prol.loopexit ] ; 7 uses
  %.02327 = phi ptr [ %i.bb, %.lr.ph.new ], [ %.02327.unr, %.prol.loopexit ] ; 4 uses
  %.02426 = phi i32 [ %i.bc, %.lr.ph.new ], [ %.02426.unr, %.prol.loopexit ]
  %i.ai = getelementptr inbounds i8, ptr %.02327, i64 %i.s
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !37
  %i.ak = getelementptr inbounds nuw i8, ptr %.028, i64 1
  store i8 %i.aj, ptr %.028, align 1, !tbaa !37
  %i.al = getelementptr inbounds i8, ptr %.02327, i64 %i.t
  %i.am = load i8, ptr %i.al, align 1, !tbaa !37
  %i.an = getelementptr inbounds nuw i8, ptr %.028, i64 2
  store i8 %i.am, ptr %i.ak, align 1, !tbaa !37
  %i.ao = getelementptr inbounds i8, ptr %.02327, i64 %i.u
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !37
  %i.aq = getelementptr inbounds nuw i8, ptr %.028, i64 3
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !37
  %i.ar = getelementptr inbounds i8, ptr %.02327, i64 %i.v ; 4 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.s
  %i.at = load i8, ptr %i.as, align 1, !tbaa !37
  %i.au = getelementptr inbounds nuw i8, ptr %.028, i64 4
  store i8 %i.at, ptr %i.aq, align 1, !tbaa !37
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 %i.t
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !37
  %i.ax = getelementptr inbounds nuw i8, ptr %.028, i64 5
  store i8 %i.aw, ptr %i.au, align 1, !tbaa !37
  %i.ay = getelementptr inbounds i8, ptr %i.ar, i64 %i.u
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !37
  %i.ba = getelementptr inbounds nuw i8, ptr %.028, i64 6
  store i8 %i.az, ptr %i.ax, align 1, !tbaa !37
  %i.bb = getelementptr inbounds i8, ptr %i.ar, i64 %i.v
  %i.bc = add i32 %.02426, -2                     ; 2 uses
  %.not.1 = icmp eq i32 %i.bc, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph.new, !llvm.loop !66

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %bb.a
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !49
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !60
  %i.bi = tail call i64 @fwrite(ptr noundef %i.bd, i64 noundef 1, i64 noundef %i.bf, ptr noundef %i.bh) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @put_cmyk(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load i32, ptr %i.b, align 8, !tbaa !54   ; 7 uses
  %.not24 = icmp eq i32 %i.c, 0
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !50   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !65   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.i = zext i32 %i.c to i64                     ; 2 uses
  %min.iters.check = icmp eq i32 %i.c, 1
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.j = add i32 %i.c, -1
  %i.k = zext i32 %i.j to i64                     ; 2 uses
  %i.l = mul nuw nsw i64 %i.k, 3
  %i.m = getelementptr i8, ptr %i.d, i64 %i.l
  %scevgep = getelementptr i8, ptr %i.m, i64 3    ; 2 uses
  %i.n = shl nuw nsw i64 %i.k, 2
  %i.o = getelementptr i8, ptr %i.g, i64 %i.n
  %scevgep28 = getelementptr i8, ptr %i.o, i64 4
  %scevgep29 = getelementptr i8, ptr %0, i64 300
  %bound0 = icmp ult ptr %i.d, %scevgep28
  %bound1 = icmp ult ptr %i.g, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound030 = icmp ult ptr %i.d, %scevgep29
  %bound131 = icmp ult ptr %i.h, %scevgep
  %found.conflict32 = and i1 %bound030, %bound131
  %conflict.rdx = or i1 %found.conflict, %found.conflict32
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 4294967294               ; 5 uses
  %i.p = mul nuw nsw i64 %n.vec, 3
  %i.q = getelementptr i8, ptr %i.d, i64 %i.p
  %i.r = shl nuw nsw i64 %n.vec, 2
  %i.s = getelementptr i8, ptr %i.g, i64 %i.r
  %i.t = trunc nuw i64 %n.vec to i32
  %i.u = sub i32 %i.c, %i.t
  %i.v = load i32, ptr %i.h, align 8, !tbaa !8, !alias.scope !68
  %i.w = shl nsw i32 -1, %i.v
  %.scalar = xor i32 %i.w, -1
  %3 = insertelement <2 x i32> poison, i32 %.scalar, i64 0
  %4 = shufflevector <2 x i32> %3, <2 x i32> poison, <2 x i32> zeroinitializer
  %5 = uitofp nneg <2 x i32> %4 to <2 x double>   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.x = mul i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.x
  %i.y = shl i64 %index, 2                        ; 2 uses
  %next.gep33.a = getelementptr i8, ptr %i.g, i64 %i.y ; 4 uses
  %i.z = getelementptr i8, ptr %i.g, i64 %i.y     ; 4 uses
  %next.gep34.a = getelementptr i8, ptr %i.z, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %next.gep33.a, i64 1
  %i.ab = getelementptr i8, ptr %i.z, i64 5
  %i.ac = load i8, ptr %next.gep33.a, align 1, !tbaa !37, !alias.scope !71
  %i.ad = load i8, ptr %next.gep34.a, align 1, !tbaa !37, !alias.scope !71
  %6 = insertelement <2 x i8> poison, i8 %i.ac, i64 0
  %7 = insertelement <2 x i8> %6, i8 %i.ad, i64 1
  %i.ae = getelementptr inbounds nuw i8, ptr %next.gep33.a, i64 2
  %i.af = getelementptr i8, ptr %i.z, i64 6
  %i.ag = load i8, ptr %i.aa, align 1, !tbaa !37, !alias.scope !71
  %i.ah = load i8, ptr %i.ab, align 1, !tbaa !37, !alias.scope !71
  %8 = insertelement <2 x i8> poison, i8 %i.ag, i64 0
  %9 = insertelement <2 x i8> %8, i8 %i.ah, i64 1
  %i.ai = getelementptr inbounds nuw i8, ptr %next.gep33.a, i64 3
  %i.aj = getelementptr i8, ptr %i.z, i64 7
  %i.ak = load i8, ptr %i.ae, align 1, !tbaa !37, !alias.scope !71
  %i.al = load i8, ptr %i.af, align 1, !tbaa !37, !alias.scope !71
  %10 = insertelement <2 x i8> poison, i8 %i.ak, i64 0
  %11 = insertelement <2 x i8> %10, i8 %i.al, i64 1
  %i.am = load i8, ptr %i.ai, align 1, !tbaa !37, !alias.scope !71
  %i.an = load i8, ptr %i.aj, align 1, !tbaa !37, !alias.scope !71
  %12 = insertelement <2 x i8> poison, i8 %i.am, i64 0
  %13 = insertelement <2 x i8> %12, i8 %i.an, i64 1
  %14 = uitofp <2 x i8> %7 to <2 x double>
  %15 = uitofp <2 x i8> %13 to <2 x double>       ; 3 uses
  %16 = fmul nnan <2 x double> %14, %15
  %17 = fdiv <2 x double> %16, %5
  %18 = uitofp <2 x i8> %9 to <2 x double>
  %19 = fmul nnan <2 x double> %18, %15
  %20 = fdiv <2 x double> %19, %5
  %21 = uitofp <2 x i8> %11 to <2 x double>
  %22 = fmul nnan <2 x double> %21, %15
  %23 = fdiv <2 x double> %22, %5
  %24 = fadd <2 x double> %23, splat (double 5.000000e-01)
  %25 = fptoui <2 x double> %24 to <2 x i8>
  %26 = shufflevector <2 x double> %17, <2 x double> %20, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ao = fadd <4 x double> %26, splat (double 5.000000e-01)
  %i.ap = fptoui <4 x double> %i.ao to <4 x i8>
  %27 = shufflevector <2 x i8> %25, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <4 x i8> %i.ap, <4 x i8> %27, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !37, !alias.scope !73, !noalias !75
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.027.ph = phi ptr [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph ], [ %i.q, %middle.block ]
  %.02026.ph = phi ptr [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph ], [ %i.s, %middle.block ]
  %.02125.ph = phi i32 [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph ], [ %i.u, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.027 = phi ptr [ %i.bu, %scalar.ph ], [ %.027.ph, %scalar.ph.preheader ] ; 4 uses
  %.02026 = phi ptr [ %i.ax, %scalar.ph ], [ %.02026.ph, %scalar.ph.preheader ] ; 5 uses
  %.02125 = phi i32 [ %i.bv, %scalar.ph ], [ %.02125.ph, %scalar.ph.preheader ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.02026, i64 1
  %i.as = load i8, ptr %.02026, align 1, !tbaa !37
  %i.at = getelementptr inbounds nuw i8, ptr %.02026, i64 2
  %i.au = load i8, ptr %i.ar, align 1, !tbaa !37
  %i.av = getelementptr inbounds nuw i8, ptr %.02026, i64 3
  %i.aw = load i8, ptr %i.at, align 1, !tbaa !37
  %i.ax = getelementptr inbounds nuw i8, ptr %.02026, i64 4
  %i.ay = load i8, ptr %i.av, align 1, !tbaa !37
  %i.az = load i32, ptr %i.h, align 8, !tbaa !8
  %notmask = shl nsw i32 -1, %i.az
  %i.ba = xor i32 %notmask, -1
  %i.bb = uitofp i8 %i.as to double
  %i.bc = uitofp i8 %i.ay to double               ; 3 uses
  %i.bd = fmul nnan double %i.bb, %i.bc
  %i.be = uitofp nneg i32 %i.ba to double         ; 3 uses
  %i.bf = fdiv double %i.bd, %i.be
  %i.bg = fadd double %i.bf, 5.000000e-01
  %i.bh = fptoui double %i.bg to i8
  %i.bi = uitofp i8 %i.au to double
  %i.bj = fmul nnan double %i.bi, %i.bc
  %i.bk = fdiv double %i.bj, %i.be
  %i.bl = fadd double %i.bk, 5.000000e-01
  %i.bm = fptoui double %i.bl to i8
  %i.bn = uitofp i8 %i.aw to double
  %i.bo = fmul nnan double %i.bn, %i.bc
  %i.bp = fdiv double %i.bo, %i.be
  %i.bq = fadd double %i.bp, 5.000000e-01
  %i.br = fptoui double %i.bq to i8
  %i.bs = getelementptr inbounds nuw i8, ptr %.027, i64 1
  store i8 %i.bh, ptr %.027, align 1, !tbaa !37
  %i.bt = getelementptr inbounds nuw i8, ptr %.027, i64 2
  store i8 %i.bm, ptr %i.bs, align 1, !tbaa !37
  %i.bu = getelementptr inbounds nuw i8, ptr %.027, i64 3
  store i8 %i.br, ptr %i.bt, align 1, !tbaa !37
  %i.bv = add i32 %.02125, -1                     ; 2 uses
  %.not = icmp eq i32 %i.bv, 0
  br i1 %.not, label %._crit_edge, label %scalar.ph, !llvm.loop !79

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  %i.bw = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !49
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !60
  %i.cb = tail call i64 @fwrite(ptr noundef %i.bw, i64 noundef 1, i64 noundef %i.by, ptr noundef %i.ca) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @copy_pixel_rows(ptr readnone captures(none) %0, ptr noundef readonly captures(none) %1, i32 %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !65
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.g = load i32, ptr %i.f, align 8, !tbaa !64
  %i.h = zext i32 %i.g to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.e, ptr align 1 %i.c, i64 %i.h, i1 false)
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.k = load i64, ptr %i.j, align 8, !tbaa !49
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !60
  %i.n = tail call i64 @fwrite(ptr noundef %i.i, i64 noundef 1, i64 noundef %i.k, ptr noundef %i.m) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @put_demapped_gray(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !65   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = load i32, ptr %i.f, align 8, !tbaa !54   ; 5 uses
  %.not14 = icmp eq i32 %i.g, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !65   ; 2 uses
  %xtraiter = and i32 %i.g, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.017.prol = phi i32 [ %i.q, %.lr.ph.prol ], [ %i.g, %.lr.ph.preheader ]
  %.01216.prol = phi ptr [ %i.p, %.lr.ph.prol ], [ %i.e, %.lr.ph.preheader ] ; 2 uses
  %.01315.prol = phi ptr [ %i.k, %.lr.ph.prol ], [ %i.j, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.k = getelementptr inbounds nuw i8, ptr %.01315.prol, i64 1 ; 2 uses
  %i.l = load i8, ptr %.01315.prol, align 1, !tbaa !37
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %.01216.prol, i64 1 ; 2 uses
  store i8 %i.o, ptr %.01216.prol, align 1, !tbaa !37
  %i.q = add i32 %.017.prol, -1                   ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !81

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.017.unr = phi i32 [ %i.g, %.lr.ph.preheader ], [ %i.q, %.lr.ph.prol ]
  %.01216.unr = phi ptr [ %i.e, %.lr.ph.preheader ], [ %i.p, %.lr.ph.prol ]
  %.01315.unr = phi ptr [ %i.j, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %i.r = icmp ult i32 %i.g, 4
  br i1 %i.r, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.017 = phi i32 [ %i.aq, %.lr.ph ], [ %.017.unr, %.lr.ph.prol.loopexit ]
  %.01216 = phi ptr [ %i.ap, %.lr.ph ], [ %.01216.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.01315 = phi ptr [ %i.ak, %.lr.ph ], [ %.01315.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.01315, i64 1
  %i.t = load i8, ptr %.01315, align 1, !tbaa !37
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !37
  %i.x = getelementptr inbounds nuw i8, ptr %.01216, i64 1
  store i8 %i.w, ptr %.01216, align 1, !tbaa !37
  %i.y = getelementptr inbounds nuw i8, ptr %.01315, i64 2
  %i.z = load i8, ptr %i.s, align 1, !tbaa !37
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !37
  %i.ad = getelementptr inbounds nuw i8, ptr %.01216, i64 2
  store i8 %i.ac, ptr %i.x, align 1, !tbaa !37
  %i.ae = getelementptr inbounds nuw i8, ptr %.01315, i64 3
  %i.af = load i8, ptr %i.y, align 1, !tbaa !37
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !37
  %i.aj = getelementptr inbounds nuw i8, ptr %.01216, i64 3
  store i8 %i.ai, ptr %i.ad, align 1, !tbaa !37
  %i.ak = getelementptr inbounds nuw i8, ptr %.01315, i64 4
  %i.al = load i8, ptr %i.ae, align 1, !tbaa !37
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !37
  %i.ap = getelementptr inbounds nuw i8, ptr %.01216, i64 4
  store i8 %i.ao, ptr %i.aj, align 1, !tbaa !37
  %i.aq = add i32 %.017, -4                       ; 2 uses
  %.not.3 = icmp eq i32 %i.aq, 0
  br i1 %.not.3, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !83

._crit_edge.loopexit:                             ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !50
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.ar = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.e, %bb.a ]
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.at = load i64, ptr %i.as, align 8, !tbaa !49
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !60
  %i.aw = tail call i64 @fwrite(ptr noundef %i.ar, i64 noundef 1, i64 noundef %i.at, ptr noundef %i.av) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @put_demapped_rgb(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80   ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !65   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !65   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load i32, ptr %i.j, align 8, !tbaa !54   ; 5 uses
  %.not23 = icmp eq i32 %i.k, 0
  br i1 %.not23, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
end_hunk_0
