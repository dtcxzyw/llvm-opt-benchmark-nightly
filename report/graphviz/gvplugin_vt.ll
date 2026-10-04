Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/gvplugin_vt?download=true
inline.NumInlined: 6
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 580 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !32
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge74, label %.preheader62.lr.ph

.preheader62.lr.ph:                               ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %3 = icmp samesign ugt i32 %1, 2
  %4 = icmp samesign ugt i32 %1, 3
  br label %.preheader62

.preheader62:                                     ; preds = %.preheader62.lr.ph, %._crit_edge
  %.05173 = phi i32 [ 0, %.preheader62.lr.ph ], [ %i.bw, %._crit_edge ] ; 9 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !33   ; 2 uses
  %.not75 = icmp eq i32 %i.f, 0
  br i1 %.not75, label %._crit_edge, label %.preheader61.preheader

.preheader61.preheader:                           ; preds = %.preheader62
  %5 = add i32 %.05173, 1
  %6 = add i32 %.05173, 1
  %7 = add i32 %.05173, 2
  %8 = add i32 %.05173, 2
  %9 = add i32 %.05173, 3
  %10 = add i32 %.05173, 3
  br label %.preheader61

._crit_edge74:                                    ; preds = %._crit_edge, %bb.a
  ret void

.preheader61:                                     ; preds = %.preheader61.preheader, %._crit_edge69
  %indvars.iv78 = phi i32 [ %indvars.iv.next79, %._crit_edge69 ], [ -1, %.preheader61.preheader ] ; 2 uses
  %i.g = phi i32 [ %i.ce, %._crit_edge69 ], [ %i.f, %.preheader61.preheader ] ; 6 uses
  %.05271 = phi i32 [ %i.cd, %._crit_edge69 ], [ 0, %.preheader61.preheader ] ; 6 uses
  %i.h = load i32, ptr %i.c, align 4, !tbaa !32   ; 4 uses
  %i.i = icmp ult i32 %.05173, %i.h
  %i.j = icmp ult i32 %.05271, %i.g
  %or.cond = and i1 %i.i, %i.j
  br i1 %or.cond, label %.preheader.us.preheader, label %._crit_edge69

.preheader.us.preheader:                          ; preds = %.preheader61
  %i.k = sub i32 0, %indvars.iv78
  %.not88 = icmp eq i32 %i.g, %i.k
  %wide.trip.count = select i1 %.not88, i64 1, i64 2 ; 4 uses
  %11 = mul i32 %.05173, %i.g
  %invariant.op = add i32 %.05271, %11
  br label %12

12:                                               ; preds = %.preheader.us.preheader, %12
  %indvars.iv = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next, %12 ] ; 3 uses
  %.165.us = phi i32 [ 0, %.preheader.us.preheader ], [ %43, %12 ]
  %13 = trunc i64 %indvars.iv to i32
  %.reass = add i32 %invariant.op, %13
  %14 = shl i32 %.reass, 2                        ; 3 uses
  %15 = or disjoint i32 %14, 2
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds nuw i8, ptr %i.b, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !35
  %19 = or disjoint i32 %14, 1
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds nuw i8, ptr %i.b, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !35
  %23 = zext i32 %14 to i64
  %24 = getelementptr inbounds nuw i8, ptr %i.b, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !35
  %26 = uitofp i8 %18 to double
  %27 = fdiv nnan double %26, 2.550000e+02
  %28 = insertelement <2 x i8> poison, i8 %22, i64 0
  %29 = insertelement <2 x i8> %28, i8 %25, i64 1
  %30 = uitofp <2 x i8> %29 to <2 x double>
  %31 = fdiv nnan <2 x double> %30, splat (double 2.550000e+02) ; 2 uses
  %32 = extractelement <2 x double> %31, i64 0
  %33 = fmul nnan double %32, 7.152000e-01
  %34 = tail call double @llvm.fmuladd.f64(double %27, double 2.126000e-01, double %33)
  %35 = extractelement <2 x double> %31, i64 1
  %36 = tail call double @llvm.fmuladd.f64(double %35, double 7.220000e-02, double %34)
  %37 = fmul double %36, 2.559990e+02
  %38 = fptoui double %37 to i32
  %39 = icmp ugt i32 %38, 239
  %40 = zext i1 %39 to i32
  %41 = trunc nuw nsw i64 %indvars.iv to i32
  %42 = shl nuw nsw i32 %40, %41
  %43 = or i32 %42, %.165.us                      ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %12, !llvm.loop !38

._crit_edge.us:                                   ; preds = %12
  %44 = icmp ult i32 %5, %i.h
  br i1 %44, label %.preheader.us.1, label %._crit_edge69.loopexit

.preheader.us.1:                                  ; preds = %._crit_edge.us
  %45 = mul i32 %6, %i.g
  %invariant.op.1 = add i32 %.05271, %45
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.us.1
  %indvars.iv.1 = phi i64 [ 0, %.preheader.us.1 ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %.165.us.1 = phi i32 [ %43, %.preheader.us.1 ], [ %i.ap, %bb.b ]
  %i.l = trunc i64 %indvars.iv.1 to i32
  %.reass.1.a = add i32 %invariant.op.1, %i.l
  %i.m = shl i32 %.reass.1.a, 2                   ; 3 uses
  %i.n = or disjoint i32 %i.m, 2
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !35
  %i.r = or disjoint i32 %i.m, 1
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !35
  %i.v = zext i32 %i.m to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !35
  %i.y = uitofp i8 %i.q to double
  %i.z = fdiv nnan double %i.y, 2.550000e+02
  %i.aa = insertelement <2 x i8> poison, i8 %i.u, i64 0
  %i.ab = insertelement <2 x i8> %i.aa, i8 %i.x, i64 1
  %i.ac = uitofp <2 x i8> %i.ab to <2 x double>
  %i.ad = fdiv nnan <2 x double> %i.ac, splat (double 2.550000e+02) ; 2 uses
  %i.ae = extractelement <2 x double> %i.ad, i64 0
  %i.af = fmul nnan double %i.ae, 7.152000e-01
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.z, double 2.126000e-01, double %i.af)
  %i.ah = extractelement <2 x double> %i.ad, i64 1
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.ah, double 7.220000e-02, double %i.ag)
  %i.aj = fmul double %i.ai, 2.559990e+02
  %i.ak = fptoui double %i.aj to i32
  %i.al = icmp ugt i32 %i.ak, 239
  %i.am = zext i1 %i.al to i32
  %i.an = trunc i64 %indvars.iv.1 to i32
  %46 = add i32 %i.an, 2
  %i.ao = shl nuw nsw i32 %i.am, %46
  %i.ap = or i32 %i.ao, %.165.us.1                ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge.us.1, label %bb.b, !llvm.loop !38

._crit_edge.us.1:                                 ; preds = %bb.b
  %47 = icmp ult i32 %7, %i.h
  %48 = select i1 %47, i1 %3, i1 false
  br i1 %48, label %.preheader.us.2, label %._crit_edge69.loopexit

.preheader.us.2:                                  ; preds = %._crit_edge.us.1
  %49 = mul i32 %8, %i.g
  %invariant.op.2 = add i32 %.05271, %49
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader.us.2
  %indvars.iv.2 = phi i64 [ 0, %.preheader.us.2 ], [ %indvars.iv.next.2, %bb.c ] ; 3 uses
  %.165.us.2 = phi i32 [ %i.ap, %.preheader.us.2 ], [ %i.bs, %bb.c ]
  %50 = trunc i64 %indvars.iv.2 to i32
  %.reass.2 = add i32 %invariant.op.2, %50
  %51 = shl i32 %.reass.2, 2                      ; 3 uses
  %i.aq = or disjoint i32 %51, 2
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !35
  %i.au = or disjoint i32 %51, 1
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !35
  %i.ay = zext i32 %51 to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !35
  %i.bb = uitofp i8 %i.at to double
  %i.bc = fdiv nnan double %i.bb, 2.550000e+02
  %i.bd = insertelement <2 x i8> poison, i8 %i.ax, i64 0
  %i.be = insertelement <2 x i8> %i.bd, i8 %i.ba, i64 1
  %i.bf = uitofp <2 x i8> %i.be to <2 x double>
  %i.bg = fdiv nnan <2 x double> %i.bf, splat (double 2.550000e+02) ; 2 uses
  %i.bh = extractelement <2 x double> %i.bg, i64 0
  %i.bi = fmul nnan double %i.bh, 7.152000e-01
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.bc, double 2.126000e-01, double %i.bi)
  %i.bk = extractelement <2 x double> %i.bg, i64 1
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bk, double 7.220000e-02, double %i.bj)
  %i.bm = fmul double %i.bl, 2.559990e+02
  %i.bn = fptoui double %i.bm to i32
  %i.bo = icmp ugt i32 %i.bn, 239
  %i.bp = zext i1 %i.bo to i32
  %i.bq = trunc i64 %indvars.iv.2 to i32
  %52 = add i32 %i.bq, 4
  %i.br = shl nuw nsw i32 %i.bp, %52
  %i.bs = or i32 %i.br, %.165.us.2                ; 3 uses
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1 ; 2 uses
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, %wide.trip.count
  br i1 %exitcond.not.2, label %._crit_edge.us.2, label %bb.c, !llvm.loop !38

._crit_edge.us.2:                                 ; preds = %bb.c
  %53 = icmp ult i32 %9, %i.h
  %54 = select i1 %53, i1 %4, i1 false
  br i1 %54, label %.preheader.us.3, label %._crit_edge69.loopexit

.preheader.us.3:                                  ; preds = %._crit_edge.us.2
  %55 = mul i32 %10, %i.g
  %invariant.op.3 = add i32 %.05271, %55
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.us.3
  %indvars.iv.3 = phi i64 [ 0, %.preheader.us.3 ], [ %indvars.iv.next.3, %bb.d ] ; 3 uses
  %.165.us.3 = phi i32 [ %i.bs, %.preheader.us.3 ], [ %85, %bb.d ]
  %56 = trunc i64 %indvars.iv.3 to i32
  %.reass.3 = add i32 %invariant.op.3, %56
  %57 = shl i32 %.reass.3, 2                      ; 3 uses
  %58 = or disjoint i32 %57, 2
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds nuw i8, ptr %i.b, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !35
  %62 = or disjoint i32 %57, 1
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds nuw i8, ptr %i.b, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !35
  %66 = zext i32 %57 to i64
  %67 = getelementptr inbounds nuw i8, ptr %i.b, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !35
  %69 = uitofp i8 %61 to double
  %70 = fdiv nnan double %69, 2.550000e+02
  %71 = insertelement <2 x i8> poison, i8 %65, i64 0
  %72 = insertelement <2 x i8> %71, i8 %68, i64 1
  %73 = uitofp <2 x i8> %72 to <2 x double>
  %74 = fdiv nnan <2 x double> %73, splat (double 2.550000e+02) ; 2 uses
  %75 = extractelement <2 x double> %74, i64 0
  %76 = fmul nnan double %75, 7.152000e-01
  %77 = tail call double @llvm.fmuladd.f64(double %70, double 2.126000e-01, double %76)
  %78 = extractelement <2 x double> %74, i64 1
  %79 = tail call double @llvm.fmuladd.f64(double %78, double 7.220000e-02, double %77)
  %80 = fmul double %79, 2.559990e+02
  %81 = fptoui double %80 to i32
  %82 = icmp ugt i32 %81, 239
  %83 = zext i1 %82 to i32
  %i.bt = trunc i64 %indvars.iv.3 to i32
  %i.bu = add i32 %i.bt, 6
  %84 = shl nuw nsw i32 %83, %i.bu
  %85 = or i32 %84, %.165.us.3                    ; 2 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge69.loopexit, label %bb.d, !llvm.loop !38

._crit_edge:                                      ; preds = %._crit_edge69, %.preheader62
  %i.bv = tail call i32 @gvputc(ptr noundef nonnull %0, i32 noundef 10) #3 ; 0 uses
  %i.bw = add i32 %.05173, %1                     ; 2 uses
  %i.bx = load i32, ptr %i.c, align 4, !tbaa !32
  %i.by = icmp ult i32 %i.bw, %i.bx
  br i1 %i.by, label %.preheader62, label %._crit_edge74, !llvm.loop !39

._crit_edge69.loopexit:                           ; preds = %bb.d, %._crit_edge.us.2, %._crit_edge.us.1, %._crit_edge.us
  %.lcssa.lcssa = phi i32 [ %43, %._crit_edge.us ], [ %i.ap, %._crit_edge.us.1 ], [ %i.bs, %._crit_edge.us.2 ], [ %85, %bb.d ]
  %i.bz = zext nneg i32 %.lcssa.lcssa to i64
  br label %._crit_edge69

._crit_edge69:                                    ; preds = %._crit_edge69.loopexit, %.preheader61
  %.055.lcssa = phi i64 [ 0, %.preheader61 ], [ %i.bz, %._crit_edge69.loopexit ]
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.055.lcssa
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !41
  %i.cc = tail call i32 @gvputs(ptr noundef nonnull %0, ptr noundef %i.cb) #3 ; 0 uses
  %i.cd = add i32 %.05271, 2                      ; 2 uses
  %i.ce = load i32, ptr %i.e, align 8, !tbaa !33  ; 2 uses
  %i.cf = icmp ult i32 %i.cd, %i.ce
  %indvars.iv.next79 = add i32 %indvars.iv78, -2
  br i1 %i.cf, label %.preheader61, label %._crit_edge, !llvm.loop !40
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
!40 = distinct !{!40, !34}
!41 = !{!13, !13, i64 0}
end_hunk_0
