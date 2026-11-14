Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/gvplugin_vt?download=true
inline.NumInlined: 6
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@process3:bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @process(ptr noundef %0, i32 noundef range(i32 3, 25) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 580 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !32
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge70, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 3 uses
  %i.f = icmp eq i32 %1, 3                        ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.069 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.i, %._crit_edge ] ; 3 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !33   ; 2 uses
  %.not71 = icmp eq i32 %i.g, 0
  br i1 %.not71, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.h = or disjoint i32 %.069, 1                 ; 2 uses
  br label %bb.b

._crit_edge70:                                    ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %bb.j, %.preheader
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.14) #3
  %i.i = add i32 %.069, 2                         ; 2 uses
  %i.j = load i32, ptr %i.c, align 4, !tbaa !32
  %i.k = icmp ult i32 %i.i, %i.j
  br i1 %i.k, label %.preheader, label %._crit_edge70, !llvm.loop !36

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %i.l = phi i32 [ %i.g, %.lr.ph ], [ %i.ci, %bb.j ]
  %.05168 = phi i32 [ 0, %.lr.ph ], [ %i.ch, %bb.j ] ; 3 uses
  %i.m = mul i32 %i.l, %.069
  %i.n = add i32 %i.m, %.05168
  %i.o = shl i32 %i.n, 2                          ; 3 uses
  %i.p = or disjoint i32 %i.o, 2
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !35
  %i.t = zext i8 %i.s to i32                      ; 5 uses
  %i.u = or disjoint i32 %i.o, 1
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !35
  %i.y = zext i8 %i.x to i32                      ; 4 uses
  %i.z = zext i32 %i.o to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !35
  %i.ac = zext i8 %i.ab to i32                    ; 3 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ad = add nuw nsw i32 %i.y, %i.t              ; 2 uses
  %i.ae = xor i32 %i.t, 255                       ; 3 uses
  %i.af = add nuw nsw i32 %i.ae, %i.y             ; 2 uses
  %i.ag = icmp samesign ult i32 %i.ae, %i.t       ; 2 uses
  %spec.select.i = zext i1 %i.ag to i32
  %spec.select26.i = select i1 %i.ag, i32 %i.af, i32 %i.ad ; 2 uses
  %i.ah = xor i32 %i.y, 255                       ; 2 uses
  %i.ai = add nuw nsw i32 %i.ah, %i.t             ; 3 uses
  %i.aj = icmp samesign ult i32 %i.ai, %spec.select26.i
  %.113.2.i = select i1 %i.aj, i32 2, i32 %spec.select.i
  %.pn24.i = tail call i32 @llvm.umin.i32(i32 %i.ai, i32 %spec.select26.i) ; 2 uses
  %i.ak = add nuw nsw i32 %i.ah, %i.ae            ; 3 uses
  %i.al = icmp samesign ult i32 %i.ak, %.pn24.i
  %.113.3.i = select i1 %i.al, i32 3, i32 %.113.2.i
  %.pn25.i = tail call i32 @llvm.umin.i32(i32 %i.ak, i32 %.pn24.i)
  %.1.3.i = add nuw nsw i32 %.pn25.i, %i.ac       ; 2 uses
  %i.am = xor i32 %i.ac, 255                      ; 4 uses
  %i.an = add nuw nsw i32 %i.am, %i.ad            ; 2 uses
  %i.ao = icmp samesign ult i32 %i.an, %.1.3.i
  %.113.4.i = select i1 %i.ao, i32 4, i32 %.113.3.i
  %.1.4.i = tail call i32 @llvm.umin.i32(i32 %i.an, i32 %.1.3.i) ; 2 uses
  %i.ap = add nuw nsw i32 %i.am, %i.af            ; 2 uses
  %i.aq = icmp samesign ult i32 %i.ap, %.1.4.i
  %.113.5.i = select i1 %i.aq, i32 5, i32 %.113.4.i
  %.1.5.i = tail call i32 @llvm.umin.i32(i32 %i.ap, i32 %.1.4.i) ; 2 uses
  %i.ar = add nuw nsw i32 %i.ai, %i.am            ; 2 uses
  %i.as = icmp samesign ult i32 %i.ar, %.1.5.i
  %.113.6.i = select i1 %i.as, i32 6, i32 %.113.5.i
  %.1.6.i = tail call i32 @llvm.umin.i32(i32 %i.ar, i32 %.1.5.i)
  %i.at = add nuw nsw i32 %i.ak, %i.am
  %i.au = icmp samesign ult i32 %i.at, %.1.6.i
  %.113.7.i = select i1 %i.au, i32 7, i32 %.113.6.i
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.9, i32 noundef %.113.7.i) #3
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.10, i32 noundef %i.t, i32 noundef %i.y, i32 noundef %i.ac) #3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.av = load i32, ptr %i.c, align 4, !tbaa !32
  %i.aw = icmp ult i32 %i.h, %i.av
  br i1 %i.aw, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ax = load i32, ptr %i.e, align 8, !tbaa !33
  %i.ay = mul i32 %i.ax, %i.h
  %i.az = add i32 %i.ay, %.05168
  %i.ba = shl i32 %i.az, 2                        ; 3 uses
  %i.bb = or disjoint i32 %i.ba, 2
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !35
  %i.bf = zext i8 %i.be to i32
  %i.bg = or disjoint i32 %i.ba, 1
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !35
  %i.bk = zext i8 %i.bj to i32
  %i.bl = zext i32 %i.ba to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !35
  %i.bo = zext i8 %i.bn to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.050 = phi i32 [ %i.bf, %bb.f ], [ 0, %bb.e ]  ; 5 uses
  %.049 = phi i32 [ %i.bk, %bb.f ], [ 0, %bb.e ]  ; 4 uses
  %.048 = phi i32 [ %i.bo, %bb.f ], [ 0, %bb.e ]  ; 3 uses
  br i1 %i.f, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bp = add nuw nsw i32 %.049, %.050            ; 2 uses
  %i.bq = xor i32 %.050, 255                      ; 3 uses
  %i.br = add nuw nsw i32 %.049, %i.bq            ; 2 uses
  %i.bs = icmp samesign ult i32 %i.bq, %.050      ; 2 uses
  %spec.select.i54 = zext i1 %i.bs to i32
  %spec.select26.i55 = select i1 %i.bs, i32 %i.br, i32 %i.bp ; 2 uses
  %i.bt = xor i32 %.049, 255                      ; 2 uses
  %i.bu = add nuw nsw i32 %i.bt, %.050            ; 3 uses
  %i.bv = icmp samesign ult i32 %i.bu, %spec.select26.i55
  %.113.2.i56 = select i1 %i.bv, i32 2, i32 %spec.select.i54
  %.pn24.i57 = tail call i32 @llvm.umin.i32(i32 %i.bu, i32 %spec.select26.i55) ; 2 uses
  %i.bw = add nuw nsw i32 %i.bt, %i.bq            ; 3 uses
  %i.bx = icmp samesign ult i32 %i.bw, %.pn24.i57
  %.113.3.i58 = select i1 %i.bx, i32 3, i32 %.113.2.i56
  %.pn25.i59 = tail call i32 @llvm.umin.i32(i32 %i.bw, i32 %.pn24.i57)
  %.1.3.i60 = add nuw nsw i32 %.pn25.i59, %.048   ; 2 uses
  %i.by = xor i32 %.048, 255                      ; 4 uses
  %i.bz = add nuw nsw i32 %i.by, %i.bp            ; 2 uses
  %i.ca = icmp samesign ult i32 %i.bz, %.1.3.i60
  %.113.4.i61 = select i1 %i.ca, i32 4, i32 %.113.3.i58
  %.1.4.i62 = tail call i32 @llvm.umin.i32(i32 %i.bz, i32 %.1.3.i60) ; 2 uses
  %i.cb = add nuw nsw i32 %i.by, %i.br            ; 2 uses
  %i.cc = icmp samesign ult i32 %i.cb, %.1.4.i62
  %.113.5.i63 = select i1 %i.cc, i32 5, i32 %.113.4.i61
  %.1.5.i64 = tail call i32 @llvm.umin.i32(i32 %i.cb, i32 %.1.4.i62) ; 2 uses
  %i.cd = add nuw nsw i32 %i.bu, %i.by            ; 2 uses
  %i.ce = icmp samesign ult i32 %i.cd, %.1.5.i64
  %.113.6.i65 = select i1 %i.ce, i32 6, i32 %.113.5.i63
  %.1.6.i66 = tail call i32 @llvm.umin.i32(i32 %i.cd, i32 %.1.5.i64)
  %i.cf = add nuw nsw i32 %i.bw, %i.by
  %i.cg = icmp samesign ult i32 %i.cf, %.1.6.i66
  %.113.7.i67 = select i1 %i.cg, i32 7, i32 %.113.6.i65
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.11, i32 noundef %.113.7.i67) #3
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12, i32 noundef %.050, i32 noundef %.049, i32 noundef %.048) #3
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #3
  %i.ch = add nuw i32 %.05168, 1                  ; 2 uses
  %i.ci = load i32, ptr %i.e, align 8, !tbaa !33  ; 2 uses
  %i.cj = icmp ult i32 %i.ch, %i.ci
  br i1 %i.cj, label %bb.b, label %._crit_edge, !llvm.loop !37
}

declare void @gvprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @process24(ptr noundef %0) #0 {
bb.a:
  tail call fastcc void @process(ptr noundef %0, i32 noundef 24)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @process4up(ptr noundef %0) #0 {
bb.a:
  tail call fastcc void @processNup(ptr noundef %0, i32 noundef 2, ptr noundef @__const.process4up.tiles)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @processNup(ptr noundef %0, i32 noundef range(i32 2, 5) %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 24 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 580 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !32
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge74, label %.preheader62.lr.ph

.preheader62.lr.ph:                               ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.f = icmp samesign ugt i32 %1, 2
  %i.g = icmp samesign ugt i32 %1, 3
  br label %.preheader62

.preheader62:                                     ; preds = %.preheader62.lr.ph, %._crit_edge
  %.05173 = phi i32 [ 0, %.preheader62.lr.ph ], [ %i.dz, %._crit_edge ] ; 9 uses
  %i.h = load i32, ptr %i.e, align 8, !tbaa !33   ; 2 uses
  %.not75 = icmp eq i32 %i.h, 0
  br i1 %.not75, label %._crit_edge, label %.preheader61.preheader

.preheader61.preheader:                           ; preds = %.preheader62
  %i.i = add i32 %.05173, 1
  %i.j = add i32 %.05173, 1
  %i.k = add i32 %.05173, 2
  %i.l = add i32 %.05173, 2
  %i.m = add i32 %.05173, 3
  %i.n = add i32 %.05173, 3
  br label %.preheader61

._crit_edge74:                                    ; preds = %._crit_edge, %bb.a
  ret void

.preheader61:                                     ; preds = %.preheader61.preheader, %._crit_edge69
  %indvars.iv78 = phi i32 [ %indvars.iv.next79, %._crit_edge69 ], [ -1, %.preheader61.preheader ] ; 2 uses
  %i.o = phi i32 [ %i.eg, %._crit_edge69 ], [ %i.h, %.preheader61.preheader ] ; 6 uses
  %.05271 = phi i32 [ %i.ef, %._crit_edge69 ], [ 0, %.preheader61.preheader ] ; 6 uses
  %i.p = load i32, ptr %i.c, align 4, !tbaa !32   ; 4 uses
  %i.q = icmp ult i32 %.05173, %i.p
  %i.r = icmp ult i32 %.05271, %i.o
  %or.cond = and i1 %i.q, %i.r
  br i1 %or.cond, label %.preheader.us.preheader, label %._crit_edge69

.preheader.us.preheader:                          ; preds = %.preheader61
  %i.s = sub i32 0, %indvars.iv78
  %.not88 = icmp eq i32 %i.o, %i.s                ; 4 uses
  %i.t = mul i32 %.05173, %i.o
  %invariant.op = add i32 %.05271, %i.t           ; 2 uses
  %3 = shl i32 %invariant.op, 2                   ; 3 uses
  %4 = or disjoint i32 %3, 2
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds nuw i8, ptr %i.b, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !35
  %8 = or disjoint i32 %3, 1
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds nuw i8, ptr %i.b, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !35
  %12 = zext i32 %3 to i64
  %13 = getelementptr inbounds nuw i8, ptr %i.b, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !35
  %15 = uitofp i8 %7 to double
  %16 = fdiv nnan double %15, 2.550000e+02
  %17 = insertelement <2 x i8> poison, i8 %11, i64 0
  %18 = insertelement <2 x i8> %17, i8 %14, i64 1
  %19 = uitofp <2 x i8> %18 to <2 x double>
  %20 = fdiv nnan <2 x double> %19, splat (double 2.550000e+02) ; 2 uses
  %21 = extractelement <2 x double> %20, i64 0
  %22 = fmul nnan double %21, 7.152000e-01
  %23 = tail call double @llvm.fmuladd.f64(double %16, double 2.126000e-01, double %22)
  %24 = extractelement <2 x double> %20, i64 1
  %25 = tail call double @llvm.fmuladd.f64(double %24, double 7.220000e-02, double %23)
  %26 = fmul double %25, 2.559990e+02
  %27 = fptoui double %26 to i32
  %28 = icmp ugt i32 %27, 239
  %29 = zext i1 %28 to i64                        ; 2 uses
  br i1 %.not88, label %._crit_edge.us, label %bb.b

bb.b:                                             ; preds = %.preheader.us.preheader
  %.reass.1 = shl i32 %invariant.op, 2
  %.reass = add i32 %.reass.1, 4                  ; 3 uses
  %i.u = or disjoint i32 %.reass, 2
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !35
  %i.y = or disjoint i32 %.reass, 1
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !35
  %i.ac = zext i32 %.reass to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !35
  %i.af = uitofp i8 %i.x to double
  %i.ag = fdiv nnan double %i.af, 2.550000e+02
  %i.ah = insertelement <2 x i8> poison, i8 %i.ab, i64 0
  %i.ai = insertelement <2 x i8> %i.ah, i8 %i.ae, i64 1
  %i.aj = uitofp <2 x i8> %i.ai to <2 x double>
  %i.ak = fdiv nnan <2 x double> %i.aj, splat (double 2.550000e+02) ; 2 uses
  %i.al = extractelement <2 x double> %i.ak, i64 0
  %i.am = fmul nnan double %i.al, 7.152000e-01
  %i.an = tail call double @llvm.fmuladd.f64(double %i.ag, double 2.126000e-01, double %i.am)
  %i.ao = extractelement <2 x double> %i.ak, i64 1
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.ao, double 7.220000e-02, double %i.an)
  %i.aq = fmul double %i.ap, 2.559990e+02
  %i.ar = fptoui double %i.aq to i32
  %i.as = icmp ugt i32 %i.ar, 239
  %30 = select i1 %i.as, i64 2, i64 0
  %31 = or disjoint i64 %30, %29
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.b, %.preheader.us.preheader
  %.lcssa = phi i64 [ %29, %.preheader.us.preheader ], [ %31, %bb.b ] ; 2 uses
  %i.at = icmp ult i32 %i.i, %i.p
  br i1 %i.at, label %.preheader.us.1, label %._crit_edge69.loopexit

.preheader.us.1:                                  ; preds = %._crit_edge.us
  %i.au = mul i32 %i.j, %i.o
  %invariant.op.1 = add i32 %.05271, %i.au        ; 2 uses
  %32 = shl i32 %invariant.op.1, 2                ; 3 uses
  %33 = or disjoint i32 %32, 2
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds nuw i8, ptr %i.b, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !35
  %37 = or disjoint i32 %32, 1
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds nuw i8, ptr %i.b, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !35
  %41 = zext i32 %32 to i64
  %42 = getelementptr inbounds nuw i8, ptr %i.b, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !35
  %44 = uitofp i8 %36 to double
  %45 = fdiv nnan double %44, 2.550000e+02
  %46 = insertelement <2 x i8> poison, i8 %40, i64 0
  %47 = insertelement <2 x i8> %46, i8 %43, i64 1
  %48 = uitofp <2 x i8> %47 to <2 x double>
  %49 = fdiv nnan <2 x double> %48, splat (double 2.550000e+02) ; 2 uses
  %50 = extractelement <2 x double> %49, i64 0
  %51 = fmul nnan double %50, 7.152000e-01
  %52 = tail call double @llvm.fmuladd.f64(double %45, double 2.126000e-01, double %51)
  %53 = extractelement <2 x double> %49, i64 1
  %54 = tail call double @llvm.fmuladd.f64(double %53, double 7.220000e-02, double %52)
  %55 = fmul double %54, 2.559990e+02
  %56 = fptoui double %55 to i32
  %57 = icmp ugt i32 %56, 239
  %58 = select i1 %57, i64 4, i64 0
  %59 = or i64 %58, %.lcssa                       ; 2 uses
  br i1 %.not88, label %._crit_edge.us.1, label %bb.c

bb.c:                                             ; preds = %.preheader.us.1
  %.reass.1.1 = shl i32 %invariant.op.1, 2
  %.reass.1.a = add i32 %.reass.1.1, 4            ; 3 uses
  %i.av = or disjoint i32 %.reass.1.a, 2
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !35
  %i.az = or disjoint i32 %.reass.1.a, 1
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !35
  %i.bd = zext i32 %.reass.1.a to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !35
  %i.bg = uitofp i8 %i.ay to double
  %i.bh = fdiv nnan double %i.bg, 2.550000e+02
  %i.bi = insertelement <2 x i8> poison, i8 %i.bc, i64 0
  %i.bj = insertelement <2 x i8> %i.bi, i8 %i.bf, i64 1
  %i.bk = uitofp <2 x i8> %i.bj to <2 x double>
  %i.bl = fdiv nnan <2 x double> %i.bk, splat (double 2.550000e+02) ; 2 uses
  %i.bm = extractelement <2 x double> %i.bl, i64 0
  %i.bn = fmul nnan double %i.bm, 7.152000e-01
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.bh, double 2.126000e-01, double %i.bn)
  %i.bp = extractelement <2 x double> %i.bl, i64 1
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.bp, double 7.220000e-02, double %i.bo)
  %i.br = fmul double %i.bq, 2.559990e+02
  %i.bs = fptoui double %i.br to i32
  %i.bt = icmp ugt i32 %i.bs, 239
  %60 = select i1 %i.bt, i64 8, i64 0
  %61 = or i64 %60, %59
  br label %._crit_edge.us.1

._crit_edge.us.1:                                 ; preds = %bb.c, %.preheader.us.1
  %.lcssa.1 = phi i64 [ %59, %.preheader.us.1 ], [ %61, %bb.c ] ; 2 uses
  %i.bu = icmp ult i32 %i.k, %i.p
  %i.bv = select i1 %i.bu, i1 %i.f, i1 false
  br i1 %i.bv, label %.preheader.us.2, label %._crit_edge69.loopexit

.preheader.us.2:                                  ; preds = %._crit_edge.us.1
  %i.bw = mul i32 %i.l, %i.o
  %invariant.op.2 = add i32 %.05271, %i.bw        ; 2 uses
  %62 = shl i32 %invariant.op.2, 2                ; 3 uses
  %63 = or disjoint i32 %62, 2
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds nuw i8, ptr %i.b, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !35
  %67 = or disjoint i32 %62, 1
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds nuw i8, ptr %i.b, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !35
  %71 = zext i32 %62 to i64
  %72 = getelementptr inbounds nuw i8, ptr %i.b, i64 %71
  %73 = load i8, ptr %72, align 1, !tbaa !35
  %74 = uitofp i8 %66 to double
  %75 = fdiv nnan double %74, 2.550000e+02
  %76 = insertelement <2 x i8> poison, i8 %70, i64 0
  %77 = insertelement <2 x i8> %76, i8 %73, i64 1
  %78 = uitofp <2 x i8> %77 to <2 x double>
  %79 = fdiv nnan <2 x double> %78, splat (double 2.550000e+02) ; 2 uses
  %80 = extractelement <2 x double> %79, i64 0
  %81 = fmul nnan double %80, 7.152000e-01
  %82 = tail call double @llvm.fmuladd.f64(double %75, double 2.126000e-01, double %81)
  %83 = extractelement <2 x double> %79, i64 1
  %84 = tail call double @llvm.fmuladd.f64(double %83, double 7.220000e-02, double %82)
  %85 = fmul double %84, 2.559990e+02
  %86 = fptoui double %85 to i32
  %87 = icmp ugt i32 %86, 239
  %88 = select i1 %87, i64 16, i64 0
  %89 = or i64 %88, %.lcssa.1                     ; 2 uses
  br i1 %.not88, label %._crit_edge.us.2, label %bb.d

bb.d:                                             ; preds = %.preheader.us.2
  %.reass.1.2 = shl i32 %invariant.op.2, 2
  %.reass.2 = add i32 %.reass.1.2, 4              ; 3 uses
  %i.bx = or disjoint i32 %.reass.2, 2
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !35
  %i.cb = or disjoint i32 %.reass.2, 1
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !35
  %i.cf = zext i32 %.reass.2 to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !35
  %i.ci = uitofp i8 %i.ca to double
  %i.cj = fdiv nnan double %i.ci, 2.550000e+02
  %i.ck = insertelement <2 x i8> poison, i8 %i.ce, i64 0
  %i.cl = insertelement <2 x i8> %i.ck, i8 %i.ch, i64 1
  %i.cm = uitofp <2 x i8> %i.cl to <2 x double>
  %i.cn = fdiv nnan <2 x double> %i.cm, splat (double 2.550000e+02) ; 2 uses
  %i.co = extractelement <2 x double> %i.cn, i64 0
  %i.cp = fmul nnan double %i.co, 7.152000e-01
  %i.cq = tail call double @llvm.fmuladd.f64(double %i.cj, double 2.126000e-01, double %i.cp)
  %i.cr = extractelement <2 x double> %i.cn, i64 1
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.cr, double 7.220000e-02, double %i.cq)
  %i.ct = fmul double %i.cs, 2.559990e+02
  %i.cu = fptoui double %i.ct to i32
  %i.cv = icmp ugt i32 %i.cu, 239
  %90 = select i1 %i.cv, i64 32, i64 0
  %91 = or i64 %90, %89
  br label %._crit_edge.us.2

._crit_edge.us.2:                                 ; preds = %bb.d, %.preheader.us.2
  %.lcssa.2 = phi i64 [ %89, %.preheader.us.2 ], [ %91, %bb.d ] ; 2 uses
  %i.cw = icmp ult i32 %i.m, %i.p
  %i.cx = select i1 %i.cw, i1 %i.g, i1 false
  br i1 %i.cx, label %.preheader.us.3, label %._crit_edge69.loopexit

.preheader.us.3:                                  ; preds = %._crit_edge.us.2
  %i.cy = mul i32 %i.n, %i.o
  %invariant.op.3 = add i32 %.05271, %i.cy        ; 2 uses
  %92 = shl i32 %invariant.op.3, 2                ; 3 uses
  %93 = or disjoint i32 %92, 2
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds nuw i8, ptr %i.b, i64 %94
  %96 = load i8, ptr %95, align 1, !tbaa !35
  %97 = or disjoint i32 %92, 1
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds nuw i8, ptr %i.b, i64 %98
  %100 = load i8, ptr %99, align 1, !tbaa !35
  %101 = zext i32 %92 to i64
  %102 = getelementptr inbounds nuw i8, ptr %i.b, i64 %101
  %103 = load i8, ptr %102, align 1, !tbaa !35
  %104 = uitofp i8 %96 to double
  %105 = fdiv nnan double %104, 2.550000e+02
  %106 = insertelement <2 x i8> poison, i8 %100, i64 0
  %107 = insertelement <2 x i8> %106, i8 %103, i64 1
  %108 = uitofp <2 x i8> %107 to <2 x double>
  %109 = fdiv nnan <2 x double> %108, splat (double 2.550000e+02) ; 2 uses
  %110 = extractelement <2 x double> %109, i64 0
  %111 = fmul nnan double %110, 7.152000e-01
  %112 = tail call double @llvm.fmuladd.f64(double %105, double 2.126000e-01, double %111)
  %113 = extractelement <2 x double> %109, i64 1
  %114 = tail call double @llvm.fmuladd.f64(double %113, double 7.220000e-02, double %112)
  %115 = fmul double %114, 2.559990e+02
  %116 = fptoui double %115 to i32
  %117 = icmp ugt i32 %116, 239
  %118 = select i1 %117, i64 64, i64 0
  %119 = or i64 %118, %.lcssa.2                   ; 2 uses
  br i1 %.not88, label %._crit_edge69.loopexit, label %bb.e

bb.e:                                             ; preds = %.preheader.us.3
  %.reass.1.3 = shl i32 %invariant.op.3, 2
  %.reass.3 = add i32 %.reass.1.3, 4              ; 3 uses
  %i.cz = or disjoint i32 %.reass.3, 2
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !35
  %i.dd = or disjoint i32 %.reass.3, 1
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !35
  %i.dh = zext i32 %.reass.3 to i64
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !35
  %i.dk = uitofp i8 %i.dc to double
  %i.dl = fdiv nnan double %i.dk, 2.550000e+02
  %i.dm = insertelement <2 x i8> poison, i8 %i.dg, i64 0
  %i.dn = insertelement <2 x i8> %i.dm, i8 %i.dj, i64 1
  %i.do = uitofp <2 x i8> %i.dn to <2 x double>
  %i.dp = fdiv nnan <2 x double> %i.do, splat (double 2.550000e+02) ; 2 uses
  %i.dq = extractelement <2 x double> %i.dp, i64 0
  %i.dr = fmul nnan double %i.dq, 7.152000e-01
  %i.ds = tail call double @llvm.fmuladd.f64(double %i.dl, double 2.126000e-01, double %i.dr)
  %i.dt = extractelement <2 x double> %i.dp, i64 1
  %i.du = tail call double @llvm.fmuladd.f64(double %i.dt, double 7.220000e-02, double %i.ds)
  %i.dv = fmul double %i.du, 2.559990e+02
  %i.dw = fptoui double %i.dv to i32
  %i.dx = icmp ugt i32 %i.dw, 239
  %120 = select i1 %i.dx, i64 128, i64 0
  %121 = or i64 %120, %119
  br label %._crit_edge69.loopexit

._crit_edge:                                      ; preds = %._crit_edge69, %.preheader62
  %i.dy = tail call i32 @gvputc(ptr noundef nonnull %0, i32 noundef 10) #3 ; 0 uses
  %i.dz = add i32 %.05173, %1                     ; 2 uses
  %i.ea = load i32, ptr %i.c, align 4, !tbaa !32
  %i.eb = icmp ult i32 %i.dz, %i.ea
  br i1 %i.eb, label %.preheader62, label %._crit_edge74, !llvm.loop !38

._crit_edge69.loopexit:                           ; preds = %.preheader.us.3, %bb.e, %._crit_edge.us.2, %._crit_edge.us.1, %._crit_edge.us
  %.lcssa.lcssa = phi i64 [ %.lcssa, %._crit_edge.us ], [ %.lcssa.1, %._crit_edge.us.1 ], [ %.lcssa.2, %._crit_edge.us.2 ], [ %119, %.preheader.us.3 ], [ %121, %bb.e ]
  %122 = and i64 %.lcssa.lcssa, 4294967295
  br label %._crit_edge69

._crit_edge69:                                    ; preds = %._crit_edge69.loopexit, %.preheader61
  %.055.lcssa = phi i64 [ 0, %.preheader61 ], [ %122, %._crit_edge69.loopexit ]
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.055.lcssa
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !40
  %i.ee = tail call i32 @gvputs(ptr noundef nonnull %0, ptr noundef %i.ed) #3 ; 0 uses
  %i.ef = add i32 %.05271, 2                      ; 2 uses
  %i.eg = load i32, ptr %i.e, align 8, !tbaa !33  ; 2 uses
  %i.eh = icmp ult i32 %i.ef, %i.eg
  %indvars.iv.next79 = add i32 %indvars.iv78, -2
  br i1 %i.eh, label %.preheader61, label %._crit_edge, !llvm.loop !39
}

declare i32 @gvputs(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gvputc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nounwind uwtable
define internal void @process6up(ptr noundef %0) #0 {
bb.a:
  tail call fastcc void @processNup(ptr noundef %0, i32 noundef 3, ptr noundef @__const.process6up.tiles)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @process8up1(ptr noundef %0) #0 {
bb.a:
  tail call fastcc void @processNup(ptr noundef %0, i32 noundef 4, ptr noundef nonnull readonly @__const.process8up1.tiles)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @process8up2(ptr noundef %0) #0 {
bb.a:
  tail call fastcc void @processNup(ptr noundef %0, i32 noundef 4, ptr noundef nonnull readonly @__const.process8up2.tiles)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS5GVC_s", !8, i64 0}
!10 = !{!"p1 _ZTS5GVJ_s", !8, i64 0}
!11 = !{!"p1 _ZTS10GVCOMMON_s", !8, i64 0}
!12 = !{!"p1 _ZTS11obj_state_s", !8, i64 0}
!13 = !{!"p1 omnipotent char", !8, i64 0}
!14 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!15 = !{!"long", !4, i64 0}
!16 = !{!"p1 _ZTS17gvrender_engine_s", !8, i64 0}
!17 = !{!"gvplugin_active_render_s", !16, i64 0, !5, i64 8, !8, i64 16, !13, i64 24}
!18 = !{!"p1 _ZTS17gvdevice_engine_s", !8, i64 0}
!19 = !{!"gvplugin_active_device_s", !18, i64 0, !5, i64 8, !8, i64 16, !13, i64 24}
!20 = !{!"p1 _ZTS20gvloadimage_engine_s", !8, i64 0}
!21 = !{!"gvplugin_active_loadimage_t", !20, i64 0, !5, i64 8, !13, i64 16}
!22 = !{!"p1 _ZTS20gvdevice_callbacks_s", !8, i64 0}
!23 = !{!"double", !4, i64 0}
!24 = !{!"pointf_s", !23, i64 0, !23, i64 8}
!25 = !{!"_Bool", !4, i64 0}
!26 = !{!"", !5, i64 0, !5, i64 4}
!27 = !{!"", !24, i64 0, !24, i64 16}
!28 = !{!"", !26, i64 0, !26, i64 8}
!29 = !{!"p1 _ZTS21gvevent_key_binding_s", !8, i64 0}
!30 = !{!"GVJ_s", !9, i64 0, !10, i64 8, !10, i64 16, !11, i64 24, !12, i64 32, !13, i64 40, !5, i64 48, !13, i64 56, !13, i64 64, !14, i64 72, !13, i64 80, !15, i64 88, !15, i64 96, !13, i64 104, !5, i64 112, !17, i64 120, !19, i64 152, !21, i64 184, !22, i64 208, !24, i64 216, !25, i64 232, !8, i64 240, !5, i64 248, !8, i64 256, !25, i64 264, !13, i64 272, !5, i64 280, !5, i64 284, !5, i64 288, !26, i64 292, !26, i64 300, !26, i64 308, !26, i64 316, !26, i64 324, !5, i64 332, !27, i64 336, !24, i64 368, !27, i64 384, !27, i64 416, !24, i64 448, !24, i64 464, !23, i64 480, !5, i64 488, !24, i64 496, !27, i64 512, !24, i64 544, !24, i64 560, !5, i64 576, !5, i64 580, !28, i64 584, !28, i64 600, !24, i64 616, !24, i64 632, !24, i64 648, !25, i64 664, !25, i64 665, !25, i64 666, !25, i64 667, !25, i64 668, !4, i64 669, !24, i64 672, !24, i64 688, !8, i64 704, !8, i64 712, !13, i64 720, !13, i64 728, !8, i64 736, !29, i64 744, !15, i64 752, !8, i64 760}
!31 = !{!30, !13, i64 272}
!32 = !{!30, !5, i64 580}
!33 = !{!30, !5, i64 576}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!4, !4, i64 0}
!36 = distinct !{!36, !34}
!37 = distinct !{!37, !34}
!38 = distinct !{!38, !34}
!39 = distinct !{!39, !34}
!40 = !{!13, !13, i64 0}
end_hunk_0
