inline.NumInlined: 11
inline.NumDeleted: 6
begin_hunk_0_@main:bb.a
  store <2 x double> %i.t, ptr %i.u, align 8, !tbaa !8
  %index.next36 = add nuw i64 %index34, 2         ; 2 uses
  %vec.ind.next37 = add nuw nsw <2 x i64> %vec.ind35, splat (i64 2)
  %i.v = icmp eq i64 %index.next36, %n.vec
  br i1 %i.v, label %middle.block38, label %vector.body33, !llvm.loop !14

middle.block38:                                   ; preds = %vector.body33
  %cmp.n = icmp eq i64 %indvars.iv38.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block38
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block38 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.w = add nuw nsw i64 %indvars.iv.i, %indvars.iv38.i
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = urem i32 %i.x, 1000
  %i.z = uitofp nneg i32 %i.y to double
  %i.aa = fdiv double %i.z, 1.000000e+03
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i
  store double %i.aa, ptr %i.ab, align 8, !tbaa !8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv38.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !18

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block38, %.preheader.i
  %i.ac = getelementptr inbounds nuw [8000 x i8], ptr %i.d, i64 %indvars.iv38.i
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv38.i
  store double 1.000000e+00, ptr %i.ad, align 8, !tbaa !8
  %i.ae = getelementptr inbounds nuw [9600 x i8], ptr %i.j, i64 %indvars.iv38.i ; 2 uses
  %i.af = add nuw nsw i64 %indvars.iv38.i, 1200
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.af, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %._crit_edge.i
  %index = phi i64 [ 0, %._crit_edge.i ], [ %index.next.1, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %._crit_edge.i ], [ %vec.ind.next.1, %vector.body ] ; 3 uses
  %i.ag = sub nuw nsw <2 x i64> %broadcast.splat, %vec.ind
  %i.ah = trunc nuw nsw <2 x i64> %i.ag to <2 x i32>
  %i.ai = urem <2 x i32> %i.ah, splat (i32 1200)
  %i.aj = uitofp nneg <2 x i32> %i.ai to <2 x double>
  %i.ak = fdiv <2 x double> %i.aj, splat (double 1.200000e+03)
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %index
  store <2 x double> %i.ak, ptr %i.al, align 8, !tbaa !8
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.am = sub nuw nsw <2 x i64> %broadcast.splat, %vec.ind.next
  %i.an = trunc nuw nsw <2 x i64> %i.am to <2 x i32>
  %i.ao = urem <2 x i32> %i.an, splat (i32 1200)
  %i.ap = uitofp nneg <2 x i32> %i.ao to <2 x double>
  %i.aq = fdiv <2 x double> %i.ap, splat (double 1.200000e+03)
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %index
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store <2 x double> %i.aq, ptr %i.as, align 8, !tbaa !8
  %index.next.1 = add nuw nsw i64 %index, 4       ; 2 uses
  %vec.ind.next.1 = add nuw nsw <2 x i64> %vec.ind, splat (i64 4)
  %i.at = icmp eq i64 %index.next.1, 1200
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %indvars.iv.next39.i = add nuw nsw i64 %indvars.iv38.i, 1 ; 2 uses
  %exitcond41.not.i = icmp eq i64 %indvars.iv.next39.i, 1000
  br i1 %exitcond41.not.i, label %.preheader28.i, label %.preheader.i, !llvm.loop !20

.preheader28.i:                                   ; preds = %middle.block, %.split.us.i
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %.split.us.i ], [ 0, %middle.block ] ; 8 uses
  %i.au = icmp samesign ult i64 %indvars.iv36.i, 999
  %i.av = getelementptr inbounds nuw [9600 x i8], ptr %i.j, i64 %indvars.iv36.i ; 4 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv36.i ; 3 uses
  br i1 %i.au, label %.preheader.us.i.preheader, label %vector.body41

.preheader.us.i.preheader:                        ; preds = %.preheader28.i
  %i.aw = and i64 %indvars.iv36.i, 1
  %lcmp.mod.not.not = icmp eq i64 %i.aw, 0
  %indvars.iv.next39.i19.prol = or disjoint i64 %indvars.iv36.i, 1 ; 3 uses
  %gep.us.i.prol = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next39.i19.prol
  %i.ax = icmp eq i64 %indvars.iv36.i, 998
  br label %.preheader.us.i

vector.body41:                                    ; preds = %.preheader28.i, %vector.body41
  %index42 = phi i64 [ %index.next44.2, %vector.body41 ], [ 0, %.preheader28.i ] ; 4 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %index42 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ay, align 8, !tbaa !8
  %wide.load43 = load <2 x double>, ptr %i.az, align 8, !tbaa !8
  %i.ba = fmul <2 x double> %wide.load, splat (double 1.500000e+00)
  %i.bb = fmul <2 x double> %wide.load43, splat (double 1.500000e+00)
  store <2 x double> %i.ba, ptr %i.ay, align 8, !tbaa !8
  store <2 x double> %i.bb, ptr %i.az, align 8, !tbaa !8
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %index42 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 48 ; 2 uses
  %wide.load.1 = load <2 x double>, ptr %i.bd, align 8, !tbaa !8
  %wide.load43.1 = load <2 x double>, ptr %i.be, align 8, !tbaa !8
  %i.bf = fmul <2 x double> %wide.load.1, splat (double 1.500000e+00)
  %i.bg = fmul <2 x double> %wide.load43.1, splat (double 1.500000e+00)
  store <2 x double> %i.bf, ptr %i.bd, align 8, !tbaa !8
  store <2 x double> %i.bg, ptr %i.be, align 8, !tbaa !8
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %index42 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 64 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 80 ; 2 uses
  %wide.load.2 = load <2 x double>, ptr %i.bi, align 8, !tbaa !8
  %wide.load43.2 = load <2 x double>, ptr %i.bj, align 8, !tbaa !8
  %i.bk = fmul <2 x double> %wide.load.2, splat (double 1.500000e+00)
  %i.bl = fmul <2 x double> %wide.load43.2, splat (double 1.500000e+00)
  store <2 x double> %i.bk, ptr %i.bi, align 8, !tbaa !8
  store <2 x double> %i.bl, ptr %i.bj, align 8, !tbaa !8
  %index.next44.2 = add nuw nsw i64 %index42, 12  ; 2 uses
  %i.bm = icmp eq i64 %index.next44.2, 1200
  br i1 %i.bm, label %.split.us.i, label %vector.body41, !llvm.loop !21

.preheader.us.i:                                  ; preds = %.preheader.us.i.preheader, %._crit_edge.us.i
  %indvars.iv42.i = phi i64 [ %indvars.iv.next43.i, %._crit_edge.us.i ], [ 0, %.preheader.us.i.preheader ] ; 3 uses
  %invariant.gep30.us.i = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv42.i ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv42.i ; 5 uses
  %.promoted.us.i = load double, ptr %i.bn, align 8, !tbaa !8 ; 2 uses
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.preheader.us.i
  %i.bo = load double, ptr %gep.us.i.prol, align 8, !tbaa !8
  %gep31.us.i.prol = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep30.us.i, i64 %indvars.iv.next39.i19.prol
  %i.bp = load double, ptr %gep31.us.i.prol, align 8, !tbaa !8
  %i.bq = fmul double %i.bo, %i.bp
  %i.br = fadd double %.promoted.us.i, %i.bq      ; 3 uses
  store double %i.br, ptr %i.bn, align 8, !tbaa !8
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.preheader.us.i
  %.lcssa.unr = phi double [ poison, %.preheader.us.i ], [ %i.br, %.prol.loopexit.unr-lcssa ]
  %indvars.iv38.i18.unr = phi i64 [ %indvars.iv36.i, %.preheader.us.i ], [ %indvars.iv.next39.i19.prol, %.prol.loopexit.unr-lcssa ]
  %.unr = phi double [ %.promoted.us.i, %.preheader.us.i ], [ %i.br, %.prol.loopexit.unr-lcssa ]
  br i1 %i.ax, label %._crit_edge.us.i, label %.preheader.us.i.new

.preheader.us.i.new:                              ; preds = %.prol.loopexit, %.preheader.us.i.new
  %indvars.iv38.i18 = phi i64 [ %indvars.iv.next39.i19.1, %.preheader.us.i.new ], [ %indvars.iv38.i18.unr, %.prol.loopexit ] ; 2 uses
  %i.bs = phi double [ %i.ca, %.preheader.us.i.new ], [ %.unr, %.prol.loopexit ]
  %indvars.iv.next39.i19 = add nuw nsw i64 %indvars.iv38.i18, 1 ; 2 uses
  %gep.us.i = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next39.i19
  %i.bt = load double, ptr %gep.us.i, align 8, !tbaa !8
  %gep31.us.i = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep30.us.i, i64 %indvars.iv.next39.i19
  %i.bu = load double, ptr %gep31.us.i, align 8, !tbaa !8
  %i.bv = fmul double %i.bt, %i.bu
  %i.bw = fadd double %i.bs, %i.bv                ; 2 uses
  store double %i.bw, ptr %i.bn, align 8, !tbaa !8
  %indvars.iv.next39.i19.1 = add nuw nsw i64 %indvars.iv38.i18, 2 ; 4 uses
  %gep.us.i.1 = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next39.i19.1
  %i.bx = load double, ptr %gep.us.i.1, align 8, !tbaa !8
  %gep31.us.i.1 = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep30.us.i, i64 %indvars.iv.next39.i19.1
  %i.by = load double, ptr %gep31.us.i.1, align 8, !tbaa !8
  %i.bz = fmul double %i.bx, %i.by
  %i.ca = fadd double %i.bw, %i.bz                ; 3 uses
  store double %i.ca, ptr %i.bn, align 8, !tbaa !8
  %exitcond41.not.i20.1 = icmp eq i64 %indvars.iv.next39.i19.1, 999
  br i1 %exitcond41.not.i20.1, label %._crit_edge.us.i, label %.preheader.us.i.new, !llvm.loop !22

._crit_edge.us.i:                                 ; preds = %.preheader.us.i.new, %.prol.loopexit
  %.lcssa = phi double [ %.lcssa.unr, %.prol.loopexit ], [ %i.ca, %.preheader.us.i.new ]
  %i.cb = fmul double %.lcssa, 1.500000e+00
  store double %i.cb, ptr %i.bn, align 8, !tbaa !8
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1 ; 2 uses
  %exitcond45.not.i = icmp eq i64 %indvars.iv.next43.i, 1200
  br i1 %exitcond45.not.i, label %.split.us.i, label %.preheader.us.i, !llvm.loop !23

.split.us.i:                                      ; preds = %vector.body41, %._crit_edge.us.i
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1 ; 2 uses
  %exitcond47.not.i = icmp eq i64 %indvars.iv.next37.i, 1000
  br i1 %exitcond47.not.i, label %kernel_trmm.exit, label %.preheader28.i, !llvm.loop !24

kernel_trmm.exit:                                 ; preds = %.split.us.i
  %i.cc = call noalias dereferenceable_or_null(19201) ptr @malloc(i64 noundef 19201) #14 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 19200
  store i8 0, ptr %i.cd, align 1, !tbaa !25
  br label %.preheader.i21

.preheader.i21:                                   ; preds = %bb.e, %kernel_trmm.exit
  %indvars.iv23.i = phi i64 [ 0, %kernel_trmm.exit ], [ %indvars.iv.next24.i, %bb.e ] ; 2 uses
  %i.ce = getelementptr inbounds nuw [9600 x i8], ptr %i.j, i64 %indvars.iv23.i
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i21
  %indvars.iv.i22 = phi i64 [ 0, %.preheader.i21 ], [ %indvars.iv.next.i23, %bb.d ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.i22
  %i.cg = shl nuw nsw i64 %indvars.iv.i22, 4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cg
  %i.ci = load i64, ptr %i.cf, align 8, !tbaa !8  ; 8 uses
  %i.cj = lshr i64 %i.ci, 56
  %.sroa.0.6.extract.shift.i.i = lshr i64 %i.ci, 48
  %.sroa.0.5.extract.shift.i.i = lshr i64 %i.ci, 40
  %.sroa.0.4.extract.shift.i.i = lshr i64 %i.ci, 32
  %i.ck = lshr i64 %i.ci, 24
  %i.cl = lshr i64 %i.ci, 16
  %i.cm = lshr i64 %i.ci, 8
  %i.cn = trunc nuw i64 %i.cj to i8
  %.sroa.0.6.extract.trunc.i.i = trunc i64 %.sroa.0.6.extract.shift.i.i to i8
  %.sroa.0.5.extract.trunc.i.i = trunc i64 %.sroa.0.5.extract.shift.i.i to i8
  %.sroa.0.4.extract.trunc.i.i = trunc i64 %.sroa.0.4.extract.shift.i.i to i8
  %i.co = trunc i64 %i.ck to i8
  %i.cp = trunc i64 %i.cl to i8
  %2 = trunc i64 %i.cm to i8
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.ci to i8
  %3 = insertelement <8 x i8> poison, i8 %.sroa.0.0.extract.trunc.i.i, i64 0
  %4 = insertelement <8 x i8> %3, i8 %2, i64 1
  %i.cq = insertelement <8 x i8> %4, i8 %i.cp, i64 2
  %i.cr = insertelement <8 x i8> %i.cq, i8 %i.co, i64 3
  %i.cs = insertelement <8 x i8> %i.cr, i8 %.sroa.0.4.extract.trunc.i.i, i64 4
  %i.ct = insertelement <8 x i8> %i.cs, i8 %.sroa.0.5.extract.trunc.i.i, i64 5
  %i.cu = insertelement <8 x i8> %i.ct, i8 %.sroa.0.6.extract.trunc.i.i, i64 6
  %i.cv = insertelement <8 x i8> %i.cu, i8 %i.cn, i64 7
  %i.cw = and <8 x i8> %i.cv, splat (i8 15)
  %i.cx = or disjoint <8 x i8> %i.cw, splat (i8 48)
  %i.cy = shufflevector <8 x i8> %i.cx, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %i.cy, ptr %i.ch, align 1, !tbaa !25
  %indvars.iv.next.i23 = add nuw nsw i64 %indvars.iv.i22, 1 ; 2 uses
  %exitcond.not.i24 = icmp eq i64 %indvars.iv.next.i23, 1200
  br i1 %exitcond.not.i24, label %bb.e, label %bb.d, !llvm.loop !26

bb.e:                                             ; preds = %bb.d
  %i.cz = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.da = call i32 @fputs(ptr noundef nonnull %i.cc, ptr noundef %i.cz) #12 ; 0 uses
  %indvars.iv.next24.i = add nuw nsw i64 %indvars.iv23.i, 1 ; 2 uses
  %exitcond26.not.i = icmp eq i64 %indvars.iv.next24.i, 1000
  br i1 %exitcond26.not.i, label %print_array.exit, label %.preheader.i21, !llvm.loop !27

print_array.exit:                                 ; preds = %bb.e
  call void @free(ptr noundef nonnull %i.cc) #11
  call void @free(ptr noundef %i.d) #11
  call void @free(ptr noundef nonnull %i.j) #11
  ret i32 0
}

; Function Attrs: nofree nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nounwind }
attributes #12 = { cold }
attributes #13 = { cold noreturn nounwind }
attributes #14 = { nounwind allocsize(0) }

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
!9 = !{!"double", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!14 = distinct !{!14, !15, !16, !17}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !15, !17, !16}
!19 = distinct !{!19, !15, !16, !17}
!20 = distinct !{!20, !15}
!21 = distinct !{!21, !15, !16, !17}
!22 = distinct !{!22, !15}
!23 = distinct !{!23, !15}
!24 = distinct !{!24, !15}
!25 = !{!6, !6, i64 0}
!26 = distinct !{!26, !15}
!27 = distinct !{!27, !15}
end_hunk_0
