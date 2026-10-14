Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/pifft?download=true
inline.NumInlined: 52
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 30
begin_hunk_0_@mp_squ:bb.a
  %i.fp = fmul <2 x double> %strided.vec129, splat (double 2.000000e+00)
  %i.fq = fmul <2 x double> %i.fp, %strided.vec130
  %interleaved.vec131 = shufflevector <2 x double> %i.fo, <2 x double> %i.fq, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec131, ptr %i.fl, align 8, !tbaa !28
  %index.next132 = add nuw i64 %index127, 2       ; 2 uses
  %i.fr = icmp eq i64 %index.next132, %n.vec125
  br i1 %i.fr, label %middle.block133, label %vector.body126, !llvm.loop !105

middle.block133:                                  ; preds = %vector.body126
  %cmp.n134 = icmp eq i64 %i.fh, %n.vec125
  br i1 %cmp.n134, label %mp_mul_csqu.exit, label %.lr.ph.i93.preheader

.lr.ph.i93.preheader:                             ; preds = %.lr.ph.preheader.i92, %middle.block133
  %indvars.iv.i94.ph = phi i64 [ 3, %.lr.ph.preheader.i92 ], [ %i.fj, %middle.block133 ]
  br label %.lr.ph.i93

.lr.ph.i93:                                       ; preds = %.lr.ph.i93.preheader, %.lr.ph.i93
  %indvars.iv.i94 = phi i64 [ %indvars.iv.next.i95, %.lr.ph.i93 ], [ %indvars.iv.i94.ph, %.lr.ph.i93.preheader ] ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.i94 ; 3 uses
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !28 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 8 ; 2 uses
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !28 ; 3 uses
  %i.fw = fneg double %i.fv
  %i.fx = fmul double %i.fv, %i.fw
  %i.fy = tail call double @llvm.fmuladd.f64(double %i.ft, double %i.ft, double %i.fx)
  store double %i.fy, ptr %i.fs, align 8, !tbaa !28
  %i.fz = fmul double %i.ft, 2.000000e+00
  %i.ga = fmul double %i.fz, %i.fv
  store double %i.ga, ptr %i.fu, align 8, !tbaa !28
  %indvars.iv.next.i95 = add nuw nsw i64 %indvars.iv.i94, 2 ; 2 uses
  %i.gb = icmp samesign ult i64 %indvars.iv.next.i95, %i.fd
  br i1 %i.gb, label %.lr.ph.i93, label %mp_mul_csqu.exit, !llvm.loop !106

mp_mul_csqu.exit:                                 ; preds = %.lr.ph.i93, %middle.block133, %mp_mul_cmul.exit
  %.pre-phi.i91 = phi i64 [ %i.u, %mp_mul_cmul.exit ], [ %i.fd, %middle.block133 ], [ %i.fd, %.lr.ph.i93 ]
  %i.gc = getelementptr [8 x i8], ptr %6, i64 %.pre-phi.i91
  %i.gd = getelementptr i8, ptr %i.gc, i64 8      ; 2 uses
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !28 ; 2 uses
  %i.gf = fmul double %i.ge, %i.ge
  store double %i.gf, ptr %i.gd, align 8, !tbaa !28
  tail call void @rdft(i32 noundef %5, i32 noundef -1, ptr noundef nonnull %i.ay, ptr noundef %8, ptr noundef %9) #21
  tail call void @mp_mul_d2i(i32 noundef %0, i32 noundef %1, i32 noundef %5, ptr noundef nonnull %6, ptr noundef %3)
  tail call void @mp_add(i32 noundef %0, i32 noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %3)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 -1, 1) i32 @mp_idiv(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %mp_load_0.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %3, 0
  %i.c = load i32, ptr %2, align 4, !tbaa !23     ; 2 uses
  %i.d = sub nsw i32 0, %i.c
  %.sink = select i1 %i.b, i32 %i.c, i32 %i.d
  store i32 %.sink, ptr %4, align 4, !tbaa !23
  %i.e = load i32, ptr %2, align 4, !tbaa !23
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not4.i = icmp slt i32 %0, -1
  br i1 %.not4.i, label %mp_load_0.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.g = add i32 %0, 2
  %i.h = zext i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %4, i8 0, i64 %i.i, i1 false), !tbaa !23
  br label %mp_load_0.exit

bb.d:                                             ; preds = %bb.b
  %.016 = tail call i32 @llvm.abs.i32(i32 %3, i1 true)
  %i.j = sitofp i32 %1 to double                  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.l = uitofp nneg i32 %.016 to double          ; 3 uses
  %i.m = fadd double %i.l, -5.000000e-01
  %i.n = sext i32 %0 to i64                       ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %indvars.iv = phi i32 [ %indvars.iv.next, %bb.g ], [ 0, %bb.d ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ 0, %bb.d ] ; 3 uses
  %.0.i = phi double [ %.1.i, %bb.g ], [ 0.000000e+00, %bb.d ]
  %indvars.iv.next.i = add nuw i64 %indvars.iv.i, 1 ; 2 uses
  %i.o = fmul double %.0.i, %i.j                  ; 2 uses
  %.not.not.i = icmp slt i64 %indvars.iv.i, %i.n
  br i1 %.not.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next.i
  %i.q = load i32, ptr %i.p, align 4, !tbaa !23
  %i.r = sitofp i32 %i.q to double
  %i.s = fadd double %i.o, %i.r
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i = phi double [ %i.s, %bb.f ], [ %i.o, %bb.e ] ; 3 uses
  %i.t = fcmp olt double %.1.i, %i.m
  %indvars.iv.next = add i32 %indvars.iv, 1
  br i1 %i.t, label %bb.e, label %bb.h, !llvm.loop !12

bb.h:                                             ; preds = %bb.g
  %indvars19.le = trunc i64 %indvars.iv.i to i32  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.v = fdiv double 1.000000e+00, %i.l           ; 3 uses
  %i.w = fadd double %.1.i, 5.000000e-01          ; 2 uses
  %i.x = fmul double %i.v, %i.w
  %i.y = fptosi double %i.x to i32                ; 2 uses
  %i.z = sitofp i32 %i.y to double
  %i.aa = fneg double %i.l                        ; 3 uses
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.z, double %i.w)
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.y, ptr %i.ac, align 4, !tbaa !23
  %i.ad = load i32, ptr %i.k, align 4, !tbaa !23
  %i.ae = sub nsw i32 %i.ad, %indvars19.le
  store i32 %i.ae, ptr %i.u, align 4, !tbaa !23
  %i.af = add nsw i32 %0, -1                      ; 2 uses
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %indvars19.le, i32 %i.af) ; 3 uses
  %i.ag = sub i32 %0, %spec.select.i              ; 2 uses
  %.05968.i = fptosi double %i.ab to i32          ; 2 uses
  %.not6669.i = icmp slt i32 %i.ag, 2
  br i1 %.not6669.i, label %.preheader.i, label %.lr.ph.preheader.i18

.lr.ph.preheader.i18:                             ; preds = %bb.h
  %i.ah = sext i32 %spec.select.i to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.k, i64 %i.ah
  %smin = tail call i32 @llvm.smin.i32(i32 %indvars.iv, i32 %i.af)
  %i.ai = sub i32 %0, %smin
  %i.aj = zext i32 %i.ai to i64
  br label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i, %bb.h
  %.059.lcssa.i = phi i32 [ %.05968.i, %bb.h ], [ %.059.i, %.lr.ph.i ]
  %.not67.not73.i = icmp sgt i32 %spec.select.i, 0
  br i1 %.not67.not73.i, label %.lr.ph76.preheader.i, label %mp_load_0.exit

.lr.ph76.preheader.i:                             ; preds = %.preheader.i
  %i.ak = sext i32 %i.ag to i64
  br label %.lr.ph76.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i18
  %indvars.iv79.i = phi i64 [ 2, %.lr.ph.preheader.i18 ], [ %indvars.iv.next80.i, %.lr.ph.i ] ; 4 uses
  %.05971.i = phi i32 [ %.05968.i, %.lr.ph.preheader.i18 ], [ %.059.i, %.lr.ph.i ]
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv79.i
  %i.al = load i32, ptr %gep.i, align 4, !tbaa !23
  %i.am = sitofp i32 %i.al to double
  %i.an = sitofp i32 %.05971.i to double
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.j, double %i.an, double %i.am)
  %i.ap = fadd double %i.ao, 5.000000e-01         ; 2 uses
  %i.aq = fmul double %i.v, %i.ap
  %i.ar = fptosi double %i.aq to i32              ; 2 uses
  %i.as = sitofp i32 %i.ar to double
  %i.at = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.as, double %i.ap)
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv79.i
  store i32 %i.ar, ptr %i.au, align 4, !tbaa !23
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1
  %.059.i = fptosi double %i.at to i32            ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv79.i, %i.aj
  br i1 %exitcond.not, label %.preheader.i, label %.lr.ph.i, !llvm.loop !13

.lr.ph76.i:                                       ; preds = %.lr.ph76.i, %.lr.ph76.preheader.i
  %indvars.iv84.i = phi i64 [ %i.ak, %.lr.ph76.preheader.i ], [ %indvars.iv.next85.i, %.lr.ph76.i ]
  %.16075.i = phi i32 [ %.059.lcssa.i, %.lr.ph76.preheader.i ], [ %i.bb, %.lr.ph76.i ]
  %indvars.iv.next85.i = add nuw nsw i64 %indvars.iv84.i, 1 ; 3 uses
  %i.av = sitofp i32 %.16075.i to double
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.j, double %i.av, double 5.000000e-01) ; 2 uses
  %i.ax = fmul double %i.v, %i.aw
  %i.ay = fptosi double %i.ax to i32              ; 2 uses
  %i.az = sitofp i32 %i.ay to double
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.az, double %i.aw)
  %i.bb = fptosi double %i.ba to i32
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.u, i64 %indvars.iv.next85.i
  store i32 %i.ay, ptr %i.bc, align 4, !tbaa !23
  %.not67.not.i = icmp slt i64 %indvars.iv.next85.i, %i.n
  br i1 %.not67.not.i, label %.lr.ph76.i, label %mp_load_0.exit, !llvm.loop !14

mp_load_0.exit:                                   ; preds = %.lr.ph76.i, %.preheader.i, %.lr.ph.preheader.i, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %.lr.ph.preheader.i ], [ -1, %bb.a ], [ 0, %bb.c ], [ 0, %.preheader.i ], [ 0, %.lr.ph76.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind uwtable
define dso_local void @mp_sprintf(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #9 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !23
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 45, ptr %3, align 1, !tbaa !29
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.056 = phi ptr [ %i.c, %bb.b ], [ %3, %bb.a ]  ; 14 uses
  %i.d = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !23
  %i.g = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.g, %.lr.ph.preheader ], [ %indvars.iv.next.a, %.lr.ph ] ; 4 uses
  %.063 = phi i32 [ %1, %.lr.ph.preheader ], [ %spec.select.a, %.lr.ph ]
  %.05162 = phi i32 [ %i.f, %.lr.ph.preheader ], [ %i.i, %.lr.ph ] ; 2 uses
  %i.h = srem i32 %.05162, 10                     ; 2 uses
  %i.i = sdiv i32 %.05162, 10
  %i.j = trunc nsw i32 %i.h to i8
  %i.k = add nsw i8 %i.j, 48
  %i.l = getelementptr inbounds nuw i8, ptr %.056, i64 %indvars.iv
  store i8 %i.k, ptr %i.l, align 1, !tbaa !29
  %.not60.a = icmp eq i32 %i.h, 0
  %i.m = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select.a = select i1 %.not60.a, i32 %.063, i32 %i.m ; 2 uses
  %indvars.iv.next.a = add nsw i64 %indvars.iv, -1
  %4 = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %4, label %.lr.ph, label %._crit_edge, !llvm.loop !109

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.0.lcssa = phi i32 [ %1, %bb.c ], [ %spec.select.a, %.lr.ph ] ; 3 uses
  %i.n = sext i32 %.0.lcssa to i64                ; 4 uses
  %i.o = getelementptr inbounds i8, ptr %.056, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !29
  store i8 %i.p, ptr %.056, align 1, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %.056, i64 1
  store i8 46, ptr %i.q, align 1, !tbaa !29
  %i.r = sub nsw i32 %1, %.0.lcssa                ; 3 uses
  %.not64 = icmp slt i32 %i.r, 1
  br i1 %.not64, label %._crit_edge68, label %iter.check

iter.check:                                       ; preds = %._crit_edge
  %i.s = add i32 %1, 1
  %i.t = sub i32 %i.s, %.0.lcssa
  %wide.trip.count = zext i32 %i.t to i64         ; 4 uses
  %invariant.gep = getelementptr i8, ptr %.056, i64 %i.n ; 7 uses
  %i.u = add nsw i64 %wide.trip.count, -1         ; 7 uses
  %min.iters.check = icmp ult i64 %i.u, 8
  %i.v = add nsw i64 %i.n, 30
  %diff.check = icmp ult i64 %i.v, 31
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph67.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check98 = icmp ult i64 %i.u, 32
  br i1 %min.iters.check98, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.w = and i64 %i.u, 24
  %n.vec = and i64 %i.u, -32                      ; 4 uses
  %i.x = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.y = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 1
  %i.aa = getelementptr i8, ptr %i.y, i64 17
  %wide.load = load <16 x i8>, ptr %i.z, align 1, !tbaa !29
  %wide.load99 = load <16 x i8>, ptr %i.aa, align 1, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %.056, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 18
  store <16 x i8> %wide.load, ptr %i.ac, align 1, !tbaa !29
  store <16 x i8> %wide.load99, ptr %i.ad, align 1, !tbaa !29
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !110

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %._crit_edge68, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.w, 0
  br i1 %min.epilog.iters.check, label %.lr.ph67.preheader, label %vec.epilog.ph, !prof !116

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec100 = and i64 %i.u, -8                    ; 3 uses
  %i.af = or disjoint i64 %n.vec100, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index101 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next103, %vec.epilog.vector.body ] ; 3 uses
  %i.ag = getelementptr i8, ptr %invariant.gep, i64 %index101
  %i.ah = getelementptr i8, ptr %i.ag, i64 1
  %wide.load102 = load <8 x i8>, ptr %i.ah, align 1, !tbaa !29
  %i.ai = getelementptr inbounds nuw i8, ptr %.056, i64 %index101
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  store <8 x i8> %wide.load102, ptr %i.aj, align 1, !tbaa !29
  %index.next103 = add nuw i64 %index101, 8       ; 2 uses
  %i.ak = icmp eq i64 %index.next103, %n.vec100
  br i1 %i.ak, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !111

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n104 = icmp eq i64 %i.u, %n.vec100
  br i1 %cmp.n104, label %._crit_edge68, label %.lr.ph67.preheader

.lr.ph67.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv86.ph = phi i64 [ 1, %iter.check ], [ %i.x, %vec.epilog.iter.check ], [ %i.af, %vec.epilog.middle.block ] ; 4 uses
  %i.al = sub nsw i64 %wide.trip.count, %indvars.iv86.ph
  %xtraiter.a = and i64 %i.al, 3                  ; 2 uses
  %lcmp.mod.not.a = icmp eq i64 %xtraiter.a, 0
  br i1 %lcmp.mod.not.a, label %.lr.ph67.prol.loopexit, label %.lr.ph67.prol

.lr.ph67.prol:                                    ; preds = %.lr.ph67.preheader, %.lr.ph67.prol
  %indvars.iv86.prol = phi i64 [ %indvars.iv.next87.prol, %.lr.ph67.prol ], [ %indvars.iv86.ph, %.lr.ph67.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph67.prol ], [ 0, %.lr.ph67.preheader ]
  %gep.prol = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv86.prol
  %i.am = load i8, ptr %gep.prol, align 1, !tbaa !29
  %indvars.iv.next87.prol = add nuw nsw i64 %indvars.iv86.prol, 1 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.056, i64 %indvars.iv.next87.prol
  store i8 %i.am, ptr %i.an, align 1, !tbaa !29
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter.a
  br i1 %prol.iter.cmp.not, label %.lr.ph67.prol.loopexit, label %.lr.ph67.prol, !llvm.loop !112

.lr.ph67.prol.loopexit:                           ; preds = %.lr.ph67.prol, %.lr.ph67.preheader
  %indvars.iv86.unr = phi i64 [ %indvars.iv86.ph, %.lr.ph67.preheader ], [ %indvars.iv.next87.prol, %.lr.ph67.prol ]
  %i.ao = sub nsw i64 %indvars.iv86.ph, %wide.trip.count
  %i.ap = icmp ugt i64 %i.ao, -4
  br i1 %i.ap, label %._crit_edge68, label %.lr.ph67

.lr.ph67:                                         ; preds = %.lr.ph67.prol.loopexit, %.lr.ph67
  %indvars.iv86 = phi i64 [ %indvars.iv.next87.3, %.lr.ph67 ], [ %indvars.iv86.unr, %.lr.ph67.prol.loopexit ] ; 5 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv86
  %i.aq = load i8, ptr %gep, align 1, !tbaa !29
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.056, i64 %indvars.iv.next87
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !29
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next87
  %i.as = load i8, ptr %gep.1, align 1, !tbaa !29
  %indvars.iv.next87.1 = add nuw nsw i64 %indvars.iv86, 2 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.056, i64 %indvars.iv.next87.1
  store i8 %i.as, ptr %i.at, align 1, !tbaa !29
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next87.1
  %i.au = load i8, ptr %gep.2, align 1, !tbaa !29
  %indvars.iv.next87.2 = add nuw nsw i64 %indvars.iv86, 3 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.056, i64 %indvars.iv.next87.2
  store i8 %i.au, ptr %i.av, align 1, !tbaa !29
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next87.2
  %i.aw = load i8, ptr %gep.3, align 1, !tbaa !29
  %indvars.iv.next87.3 = add nuw nsw i64 %indvars.iv86, 4 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.056, i64 %indvars.iv.next87.3
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !29
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next87.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge68, label %.lr.ph67, !llvm.loop !113

._crit_edge68:                                    ; preds = %.lr.ph67.prol.loopexit, %.lr.ph67, %middle.block, %vec.epilog.middle.block, %._crit_edge
  %i.ay = sext i32 %i.r to i64
  %i.az = getelementptr i8, ptr %.056, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.az, i64 2      ; 2 uses
  %.not5975 = icmp slt i32 %0, 2
  br i1 %.not5975, label %._crit_edge80, label %.lr.ph79

.lr.ph79:                                         ; preds = %._crit_edge68
  %i.bb = sext i32 %1 to i64                      ; 2 uses
  br i1 %i.d, label %.lr.ph73.us.preheader, label %.lr.ph79.split.preheader

.lr.ph79.split.preheader:                         ; preds = %.lr.ph79
  %i.bc = zext nneg i32 %0 to i64
  %i.bd = mul nsw i64 %i.bc, %i.bb
  %i.be = add nsw i64 %i.bd, 2
  %i.bf = sub nsw i64 %i.be, %i.n
  %scevgep = getelementptr i8, ptr %.056, i64 %i.bf
  br label %._crit_edge80

.lr.ph73.us.preheader:                            ; preds = %.lr.ph79
  %i.bg = zext nneg i32 %1 to i64
  %i.bh = add nuw i32 %0, 2
  %wide.trip.count95 = zext i32 %i.bh to i64
  br label %.lr.ph73.us

.lr.ph73.us:                                      ; preds = %.lr.ph73.us.preheader, %._crit_edge74.us
  %indvars.iv92 = phi i64 [ 3, %.lr.ph73.us.preheader ], [ %indvars.iv.next93, %._crit_edge74.us ] ; 2 uses
  %.15776.us = phi ptr [ %i.ba, %.lr.ph73.us.preheader ], [ %i.bq, %._crit_edge74.us ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv92
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !23
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph73.us, %bb.d
  %indvars.iv89 = phi i64 [ %i.bg, %.lr.ph73.us ], [ %indvars.iv.next90, %bb.d ] ; 2 uses
  %.15271.us = phi i32 [ %i.bj, %.lr.ph73.us ], [ %i.bl, %bb.d ] ; 2 uses
  %indvars.iv.next90 = add nsw i64 %indvars.iv89, -1 ; 2 uses
  %i.bk = srem i32 %.15271.us, 10
  %i.bl = sdiv i32 %.15271.us, 10
  %i.bm = trunc nsw i32 %i.bk to i8
  %i.bn = add nsw i8 %i.bm, 48
  %i.bo = getelementptr inbounds nuw i8, ptr %.15776.us, i64 %indvars.iv.next90
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !29
  %i.bp = icmp sgt i64 %indvars.iv89, 1
  br i1 %i.bp, label %bb.d, label %._crit_edge74.us, !llvm.loop !114

._crit_edge74.us:                                 ; preds = %bb.d
  %i.bq = getelementptr inbounds nuw i8, ptr %.15776.us, i64 %i.bb ; 2 uses
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %exitcond96 = icmp eq i64 %indvars.iv.next93, %wide.trip.count95
  br i1 %exitcond96, label %._crit_edge80, label %.lr.ph73.us, !llvm.loop !115

._crit_edge80:                                    ; preds = %._crit_edge74.us, %.lr.ph79.split.preheader, %._crit_edge68
  %.157.lcssa = phi ptr [ %i.ba, %._crit_edge68 ], [ %scevgep, %.lr.ph79.split.preheader ], [ %i.bq, %._crit_edge74.us ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.157.lcssa, i64 1
  store i8 101, ptr %.157.lcssa, align 1, !tbaa !29
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !23
  %i.bu = mul nsw i32 %i.bt, %1
  %i.bv = add nsw i32 %i.bu, %i.r
  %i.bw = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.br, ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.bv) #21 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @mp_load_0(i32 noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #12 {
bb.a:
  %.not4 = icmp slt i32 %0, -1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = add i32 %0, 2
  %i.b = zext i32 %i.a to i64
  %i.c = shl nuw nsw i64 %i.b, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %2, i8 0, i64 %i.c, i1 false), !tbaa !23
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @mp_load_1(i32 noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %2) local_unnamed_addr #12 {
bb.a:
  store i32 1, ptr %2, align 4, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.a, align 4, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 1, ptr %i.b, align 4, !tbaa !23
  %.not7 = icmp slt i32 %0, 2
  br i1 %.not7, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %2, i64 12
  %i.c = add nsw i32 %0, -1
  %i.d = zext nneg i32 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.e, i1 false), !tbaa !23
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @mp_round(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp slt i32 %2, %0
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i32 %2, 2                        ; 2 uses
  %.not45 = icmp slt i32 %0, %i.b
  br i1 %.not45, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.c = add i32 %0, 1
  %i.d = sext i32 %i.c to i64
  %i.e = add nsw i32 %0, -2
  %i.f = sub i32 %i.e, %2
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = shl nuw nsw i64 %i.g, 2
  %i.i = sub nsw i64 %i.d, %i.g
  %i.j = shl nsw i64 %i.i, 2
  %scevgep = getelementptr i8, ptr %3, i64 %i.j
  %i.k = add nuw nsw i64 %i.h, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.k, i1 false), !tbaa !23
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.b
  %i.l = sext i32 %i.b to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %3, i64 %i.l ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !23
  %i.o = shl nsw i32 %i.n, 1
  store i32 0, ptr %i.m, align 4, !tbaa !23
  %.not = icmp slt i32 %i.o, %1
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.p = icmp sgt i32 %2, 0
  br i1 %i.p, label %.lr.ph44.preheader, label %.critedge

.lr.ph44.preheader:                               ; preds = %bb.c
  %i.q = add nuw nsw i32 %2, 1
  br label %.lr.ph44

.lr.ph44:                                         ; preds = %.lr.ph44.preheader, %bb.e
  %.13042 = phi i32 [ %i.w, %bb.e ], [ %i.q, %.lr.ph44.preheader ] ; 3 uses
  %i.r = zext nneg i32 %.13042 to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.r ; 3 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !23
  %i.u = add nsw i32 %i.t, 1                      ; 2 uses
  %i.v = icmp slt i32 %i.u, %1
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph44
  store i32 %i.u, ptr %i.s, align 4, !tbaa !23
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph44
  store i32 0, ptr %i.s, align 4, !tbaa !23
  %i.w = add nsw i32 %.13042, -1
  %i.x = icmp sgt i32 %.13042, 2
  br i1 %i.x, label %.lr.ph44, label %.critedge, !llvm.loop !15

.critedge:                                        ; preds = %bb.e, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 1, ptr %i.y, align 4, !tbaa !23
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !23
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !23
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %._crit_edge, %.critedge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @mp_cmp(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #13 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !23     ; 3 uses
  %i.b = load i32, ptr %3, align 4, !tbaa !23     ; 2 uses
  %i.c = icmp sgt i32 %i.a, %i.b
  br i1 %i.c, label %mp_unsgn_cmp.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %i.a, %i.b
  br i1 %i.d, label %mp_unsgn_cmp.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.g = icmp sgt i32 %0, -1
  br i1 %i.g, label %.lr.ph.preheader.i, label %mp_unsgn_cmp.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.h = zext nneg i32 %0 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 4 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.j = load i32, ptr %i.i, align 4, !tbaa !23   ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.l = load i32, ptr %i.k, align 4, !tbaa !23   ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.m = icmp samesign ult i64 %indvars.iv.i, %i.h
  %i.n = icmp eq i32 %i.j, %i.l
  %i.o = select i1 %i.m, i1 %i.n, i1 false
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !5

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.p = tail call i32 @llvm.scmp.i32.i32(i32 %i.j, i32 %i.l)
  %i.q = mul nsw i32 %i.p, %i.a
  br label %mp_unsgn_cmp.exit

mp_unsgn_cmp.exit:                                ; preds = %._crit_edge.loopexit.i, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.b ], [ 1, %bb.a ], [ 0, %bb.c ], [ %i.q, %._crit_edge.loopexit.i ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 -1, 2) i32 @mp_unsgn_cmp(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #13 {
bb.a:
  %i.a = icmp sgt i32 %0, -1
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23   ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.f = load i32, ptr %i.e, align 4, !tbaa !23   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.g = icmp samesign ult i64 %indvars.iv, %i.b
  %i.h = icmp eq i32 %i.d, %i.f
  %i.i = select i1 %i.g, i1 %i.h, i1 false
  br i1 %i.i, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !5

end_hunk_0
