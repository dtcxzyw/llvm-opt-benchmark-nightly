Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/kinsol_bbdpre?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@KINBBDPrecSetup:bb.a

.lr.ph.i:                                         ; preds = %bb.e, %bb.g
  %.0119.i = phi i64 [ %i.be, %bb.g ], [ %i.ao, %bb.e ] ; 4 uses
  %i.ap = load double, ptr %i.ai, align 8, !tbaa !38
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.h, i64 %.0119.i ; 2 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !48
  %i.as = tail call double @SUNRabs(double noundef %i.ar) #5
  %i.at = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.0119.i
  %i.au = load double, ptr %i.at, align 8, !tbaa !48
  %i.av = fdiv double 1.000000e+00, %i.au         ; 2 uses
  %i.aw = fcmp ogt double %i.as, %i.av
  br i1 %i.aw, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.ax = load double, ptr %i.aq, align 8, !tbaa !48
  %i.ay = tail call double @SUNRabs(double noundef %i.ax) #5
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  %i.az = phi double [ %i.ay, %bb.f ], [ %i.av, %.lr.ph.i ]
  %i.ba = fmul double %i.ap, %i.az
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.0119.i ; 2 uses
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !48
  %i.bd = fadd double %i.bc, %i.ba
  store double %i.bd, ptr %i.bb, align 8, !tbaa !48
  %i.be = add nsw i64 %.0119.i, %i.ag             ; 2 uses
  %i.bf = load i64, ptr %i.x, align 8, !tbaa !39  ; 2 uses
  %i.bg = icmp slt i64 %i.be, %i.bf
  br i1 %i.bg, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !49

._crit_edge.i:                                    ; preds = %bb.g, %bb.e
  %.lcssa.i = phi i64 [ %i.an, %bb.e ], [ %i.bf, %bb.g ]
  %i.bh = load ptr, ptr %i.v, align 8, !tbaa !28
  %i.bi = load ptr, ptr %i.z, align 8, !tbaa !46
  %i.bj = tail call i32 %i.bh(i64 noundef %.lcssa.i, ptr noundef %i.f, ptr noundef %6, ptr noundef %i.bi) #5, !inline_history !47
  %.not117.i = icmp eq i32 %i.bj, 0
  br i1 %.not117.i, label %.preheader.i, label %.loopexit

.preheader.i:                                     ; preds = %._crit_edge.i
  %i.bk = load i64, ptr %i.x, align 8, !tbaa !39  ; 2 uses
  %.not136.i = icmp sgt i64 %.0100129.i, %i.bk
  br i1 %.not136.i, label %._crit_edge127.i, label %.lr.ph126.i

.lr.ph126.i:                                      ; preds = %.preheader.i, %._crit_edge124.i
  %indvar46 = phi i64 [ %indvar.next47, %._crit_edge124.i ], [ 0, %.preheader.i ] ; 2 uses
  %.1125.i = phi i64 [ %i.dy, %._crit_edge124.i ], [ %i.ao, %.preheader.i ] ; 9 uses
  %i.bl = mul i64 %i.am, %indvar46
  %i.bm = sub i64 %i.bl, %indvar
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.h, i64 %.1125.i ; 2 uses
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !48 ; 2 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.1125.i
  store double %i.bo, ptr %i.bp, align 8, !tbaa !48
  %i.bq = load ptr, ptr %i.c, align 8, !tbaa !34  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !51
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %.1125.i
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !54 ; 2 uses
  %i.bv = ptrtoaddr ptr %i.bu to i64              ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !55 ; 2 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bx ; 2 uses
  %i.bz = load double, ptr %i.ai, align 8, !tbaa !38
  %i.ca = tail call double @SUNRabs(double noundef %i.bo) #5
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.1125.i
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !48
  %i.cd = fdiv double 1.000000e+00, %i.cc         ; 2 uses
  %i.ce = fcmp ogt double %i.ca, %i.cd
  br i1 %i.ce, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph126.i
  %i.cf = load double, ptr %i.bn, align 8, !tbaa !48
  %i.cg = tail call double @SUNRabs(double noundef %i.cf) #5
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph126.i
  %i.ch = phi double [ %i.cg, %bb.h ], [ %i.cd, %.lr.ph126.i ]
  %i.ci = fmul double %i.bz, %i.ch
  %i.cj = fdiv double 1.000000e+00, %i.ci         ; 2 uses
  %i.ck = load i64, ptr %i.aj, align 8, !tbaa !32
  %i.cl = sub nsw i64 %.1125.i, %i.ck
  %spec.select.i = tail call i64 @llvm.smax.i64(i64 %i.cl, i64 0) ; 6 uses
  %i.cm = load i64, ptr %i.ak, align 8, !tbaa !33
  %i.cn = add nsw i64 %i.cm, %.1125.i
  %i.co = load i64, ptr %i.x, align 8, !tbaa !39  ; 3 uses
  %i.cp = add nsw i64 %i.co, -1
  %i.cq = tail call i64 @llvm.smin.i64(i64 %i.cn, i64 %i.cp) ; 3 uses
  %.not118120.i = icmp sgt i64 %spec.select.i, %i.cq
  br i1 %.not118120.i, label %._crit_edge124.i, label %.lr.ph123.i.preheader

.lr.ph123.i.preheader:                            ; preds = %bb.i
  %i.cr = add i64 %i.cq, 1
  %i.cs = sub i64 %i.cr, %spec.select.i           ; 3 uses
  %min.iters.check = icmp ult i64 %i.cs, 6
  br i1 %min.iters.check, label %.lr.ph123.i.preheader52, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph123.i.preheader
  %i.ct = sub i64 %i.bv, %i.m
  %i.cu = add i64 %i.bx, %i.bm
  %i.cv = shl i64 %i.cu, 3                        ; 2 uses
  %i.cw = add i64 %i.ct, %i.cv
  %i.cx = add i64 %i.cw, -1
  %diff.check = icmp ult i64 %i.cx, 31
  %i.cy = sub i64 %i.bv, %i.k
  %i.cz = add i64 %i.cy, %i.cv
  %i.da = add i64 %i.cz, -1
  %diff.check48 = icmp ult i64 %i.da, 31
  %conflict.rdx = or i1 %diff.check, %diff.check48
  br i1 %conflict.rdx, label %.lr.ph123.i.preheader52, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cs, -4                      ; 3 uses
  %i.db = add i64 %spec.select.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cj, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dc = add nuw i64 %spec.select.i, %index      ; 3 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.dc ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %wide.load = load <2 x double>, ptr %i.dd, align 8, !tbaa !48
  %wide.load49 = load <2 x double>, ptr %i.de, align 8, !tbaa !48
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.dc ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %wide.load50 = load <2 x double>, ptr %i.df, align 8, !tbaa !48
  %wide.load51 = load <2 x double>, ptr %i.dg, align 8, !tbaa !48
  %i.dh = fsub <2 x double> %wide.load, %wide.load50
  %i.di = fsub <2 x double> %wide.load49, %wide.load51
  %i.dj = fmul <2 x double> %broadcast.splat, %i.dh
  %i.dk = fmul <2 x double> %broadcast.splat, %i.di
  %i.dl = sub nsw i64 %i.dc, %.1125.i
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.dl ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store <2 x double> %i.dj, ptr %i.dm, align 8, !tbaa !48
  store <2 x double> %i.dk, ptr %i.dn, align 8, !tbaa !48
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cs, %n.vec
  br i1 %cmp.n, label %._crit_edge124.i, label %.lr.ph123.i.preheader52

.lr.ph123.i.preheader52:                          ; preds = %vector.memcheck, %.lr.ph123.i.preheader, %middle.block
  %.099121.i.ph = phi i64 [ %spec.select.i, %vector.memcheck ], [ %spec.select.i, %.lr.ph123.i.preheader ], [ %i.db, %middle.block ]
  br label %.lr.ph123.i

.lr.ph123.i:                                      ; preds = %.lr.ph123.i.preheader52, %.lr.ph123.i
  %.099121.i = phi i64 [ %i.dx, %.lr.ph123.i ], [ %.099121.i.ph, %.lr.ph123.i.preheader52 ] ; 5 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.099121.i
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !48
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.099121.i
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !48
  %i.dt = fsub double %i.dq, %i.ds
  %i.du = fmul double %i.cj, %i.dt
  %i.dv = sub nsw i64 %.099121.i, %.1125.i
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.dv
  store double %i.du, ptr %i.dw, align 8, !tbaa !48
  %i.dx = add nuw nsw i64 %.099121.i, 1
  %.not118.not.i = icmp slt i64 %.099121.i, %i.cq
  br i1 %.not118.not.i, label %.lr.ph123.i, label %._crit_edge124.i, !llvm.loop !59

._crit_edge124.i:                                 ; preds = %.lr.ph123.i, %middle.block, %bb.i
  %i.dy = add nsw i64 %.1125.i, %i.ag             ; 2 uses
  %i.dz = icmp slt i64 %i.dy, %i.co
  %indvar.next47 = add i64 %indvar46, 1
  br i1 %i.dz, label %.lr.ph126.i, label %._crit_edge127.i, !llvm.loop !60

._crit_edge127.i:                                 ; preds = %._crit_edge124.i, %.preheader.i
  %i.ea = phi i64 [ %i.bk, %.preheader.i ], [ %i.co, %._crit_edge124.i ] ; 2 uses
  %i.eb = add nuw i64 %.0100129.i, 1
  %exitcond.not.i = icmp eq i64 %.0100129.i, %..i
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not.i, label %KBBDDQJac.exit.loopexit, label %bb.e, !llvm.loop !61

.loopexit:                                        ; preds = %._crit_edge.i, %bb.c, %bb.b
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef %i.b, i32 noundef -1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #5
  br label %bb.j

KBBDDQJac.exit.loopexit:                          ; preds = %._crit_edge127.i
  %.pre = load i64, ptr %i.ac, align 8, !tbaa !31
  %.pre27 = load i64, ptr %4, align 8, !tbaa !30
  %.pre28 = add i64 %.pre, 1
  %.pre29 = add i64 %.pre28, %.pre27
  %.pre31 = tail call i64 @llvm.smin.i64(i64 %.pre29, i64 %i.ea)
  br label %KBBDDQJac.exit

KBBDDQJac.exit:                                   ; preds = %KBBDDQJac.exit.loopexit, %bb.d
  %..pre-phi = phi i64 [ %.pre31, %KBBDDQJac.exit.loopexit ], [ %..i, %bb.d ]
  %i.ec = add nsw i64 %..pre-phi, 1
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !42
  %i.ef = add nsw i64 %i.ec, %i.ee
  store i64 %i.ef, ptr %i.ed, align 8, !tbaa !42
  %i.eg = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !35
  %i.ej = tail call i64 @BandGBTRF(ptr noundef %i.eg, ptr noundef %i.ei) #5
  %i.ek = icmp sgt i64 %i.ej, 0
  %spec.select = zext i1 %i.ek to i32
  br label %bb.j

bb.j:                                             ; preds = %KBBDDQJac.exit, %.loopexit
  %.0 = phi i32 [ -1, %.loopexit ], [ %spec.select, %KBBDDQJac.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @KINBBDPrecSolve(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree readnone captures(none) %6) #0 {
bb.a:
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %4) #5
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35
  tail call void @BandGBTRS(ptr noundef %i.c, ptr noundef %i.e, ptr noundef %i.a) #5
  ret i32 0
}

; Function Attrs: nounwind uwtable
define range(i32 -5, 1) i32 @KINBBDPrecGetWorkSpace(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef null, i32 noundef -1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2) #5
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3) #5
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43   ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #5
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.i = load i64, ptr %i.h, align 8, !tbaa !40
  store i64 %i.i, ptr %1, align 8, !tbaa !62
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.k = load i64, ptr %i.j, align 8, !tbaa !41
  store i64 %i.k, ptr %2, align 8, !tbaa !62
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -2, %bb.d ], [ -5, %bb.f ], [ 0, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -5, 1) i32 @KINBBDPrecGetNumGfnEvals(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef null, i32 noundef -1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2) #5
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3) #5
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7) #5
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.i = load i64, ptr %i.h, align 8, !tbaa !42
  store i64 %i.i, ptr %1, align 8, !tbaa !62
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -2, %bb.d ], [ -5, %bb.f ], [ 0, %bb.g ]
  ret i32 %.0
}

declare void @SetToZero(ptr noundef) local_unnamed_addr #1

declare i64 @BandGBTRF(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @N_VGetArrayPointer(ptr noundef) local_unnamed_addr #1

declare void @N_VScale(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare double @SUNRabs(double noundef) local_unnamed_addr #1

declare void @BandGBTRS(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @N_VDestroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !11, i64 496}
!9 = !{!"KINMemRec", !10, i64 0, !11, i64 8, !11, i64 16, !10, i64 24, !10, i64 32, !5, i64 40, !5, i64 44, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !5, i64 192, !10, i64 200, !12, i64 208, !12, i64 216, !12, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !12, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !13, i64 336, !13, i64 344, !13, i64 352, !14, i64 360, !14, i64 368, !14, i64 376, !14, i64 384, !16, i64 392, !16, i64 400, !12, i64 408, !5, i64 416, !5, i64 420, !12, i64 424, !12, i64 432, !12, i64 440, !12, i64 448, !11, i64 456, !11, i64 464, !11, i64 472, !11, i64 480, !5, i64 488, !11, i64 496, !10, i64 504, !10, i64 512, !10, i64 520, !10, i64 528, !10, i64 536, !5, i64 544, !10, i64 552, !10, i64 560, !10, i64 568, !5, i64 576, !11, i64 584, !11, i64 592, !17, i64 600, !11, i64 608, !11, i64 616, !17, i64 624}
!10 = !{!"double", !6, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!"p1 _ZTS17_generic_N_Vector", !11, i64 0}
!14 = !{!"p2 _ZTS17_generic_N_Vector", !15, i64 0}
!15 = !{!"any p2 pointer", !11, i64 0}
!16 = !{!"p1 double", !11, i64 0}
!17 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!18 = !{!9, !13, i64 328}
!19 = !{!20, !21, i64 8}
!20 = !{!"_generic_N_Vector", !11, i64 0, !21, i64 8}
!21 = !{!"p1 _ZTS21_generic_N_Vector_Ops", !11, i64 0}
!22 = !{!23, !11, i64 32}
!23 = !{!"_generic_N_Vector_Ops", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192}
!24 = !{!25, !11, i64 112}
!25 = !{!"KBBDPrecDataRec", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !11, i64 32, !11, i64 40, !10, i64 48, !13, i64 56, !26, i64 64, !27, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !11, i64 112}
!26 = !{!"p1 _ZTS7_DlsMat", !11, i64 0}
!27 = !{!"p1 long", !11, i64 0}
!28 = !{!25, !11, i64 32}
!29 = !{!25, !11, i64 40}
!30 = !{!25, !12, i64 0}
!31 = !{!25, !12, i64 8}
!32 = !{!25, !12, i64 16}
!33 = !{!25, !12, i64 24}
!34 = !{!25, !26, i64 64}
!35 = !{!25, !27, i64 72}
!36 = !{!25, !13, i64 56}
!37 = !{!9, !10, i64 0}
!38 = !{!25, !10, i64 48}
!39 = !{!25, !12, i64 80}
!40 = !{!25, !12, i64 88}
!41 = !{!25, !12, i64 96}
!42 = !{!25, !12, i64 104}
!43 = !{!44, !11, i64 112}
!44 = !{!"KINSpilsMemRec", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !11, i64 72, !12, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !5, i64 120, !11, i64 128, !11, i64 136}
!45 = !{!44, !11, i64 104}
!46 = !{!9, !11, i64 16}
!47 = distinct !{null}
!48 = !{!10, !10, i64 0}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!52, !53, i64 72}
!52 = !{!"_DlsMat", !5, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !16, i64 56, !12, i64 64, !53, i64 72}
!53 = !{!"p2 double", !15, i64 0}
!54 = !{!16, !16, i64 0}
!55 = !{!52, !12, i64 48}
!56 = distinct !{!56, !50, !57, !58}
!57 = !{!"llvm.loop.isvectorized", i32 1}
!58 = !{!"llvm.loop.unroll.runtime.disable"}
!59 = distinct !{!59, !50, !57}
!60 = distinct !{!60, !50}
!61 = distinct !{!61, !50}
!62 = !{!12, !12, i64 0}
end_hunk_0
