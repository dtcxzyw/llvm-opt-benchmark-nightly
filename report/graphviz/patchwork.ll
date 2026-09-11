Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/patchwork?download=true
inline.NumInlined: 12
inline.NumDeleted: 9
begin_hunk_0_@layoutTree:bb.a
  br label %bb.m

bb.j:                                             ; preds = %.preheader116, %bb.l
  %.090101 = phi i64 [ %i.cd, %bb.l ], [ 0, %.preheader116 ] ; 4 uses
  %i.bd = load ptr, ptr %1, align 8, !tbaa !15
  %i.be = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %.090101) #13
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !54
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %.090101 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i64 32, i1 false), !tbaa.struct !73
  %i.bj = load i8, ptr @Verbose, align 1, !tbaa !15
  %.not97 = icmp eq i8 %i.bj, 0
  br i1 %.not97, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.090101
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !55
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bo = load <2 x double>, ptr %i.bi, align 8, !tbaa !55 ; 4 uses
  %i.bp = load <2 x double>, ptr %i.bn, align 8, !tbaa !55 ; 4 uses
  %i.bq = fneg <2 x double> %i.bp
  %i.br = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> splat (double 5.000000e-01), <2 x double> %i.bo) ; 2 uses
  %i.bs = extractelement <2 x double> %i.bp, i64 0 ; 2 uses
  %i.bt = extractelement <2 x double> %i.bo, i64 0
  %i.bu = extractelement <2 x double> %i.bp, i64 1 ; 2 uses
  %i.bv = extractelement <2 x double> %i.bo, i64 1
  %i.bw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bp, <2 x double> splat (double 5.000000e-01), <2 x double> %i.bo) ; 2 uses
  %i.bx = fmul double %i.bs, %i.bu
  %i.by = extractelement <2 x double> %i.br, i64 0
  %i.bz = extractelement <2 x double> %i.br, i64 1
  %i.ca = extractelement <2 x double> %i.bw, i64 0
  %i.cb = extractelement <2 x double> %i.bw, i64 1
  %i.cc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bk, ptr noundef nonnull @.str.5, double noundef %i.bm, double noundef %i.by, double noundef %i.bz, double noundef %i.ca, double noundef %i.cb, double noundef %i.bx, double noundef %i.bt, double noundef %i.bv, double noundef %i.bs, double noundef %i.bu) #15 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.cd = add nuw i64 %.090101, 1                 ; 2 uses
  %exitcond109.not = icmp eq i64 %i.cd, %i.b
  br i1 %exitcond109.not, label %.preheader, label %bb.j, !llvm.loop !66

._crit_edge:                                      ; preds = %bb.p, %.preheader
  call void @gv_list_clear_(ptr noundef nonnull %1, i64 noundef 8) #13
  call void @gv_list_free_(ptr noundef nonnull %1) #13
  call void @free(ptr noundef %i.h) #13
  call void @free(ptr noundef %i.al) #13
  br label %bb.r

bb.m:                                             ; preds = %.lr.ph, %bb.p
  %.089103 = phi i64 [ 0, %.lr.ph ], [ %i.cl, %bb.p ] ; 2 uses
  %i.ce = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %.089103) #13 ; 2 uses
  %i.cf = load ptr, ptr %i.bc, align 8, !tbaa !74 ; 2 uses
  %magicptr = ptrtoint ptr %i.cf to i64
  switch i64 %magicptr, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  %i.cg = load ptr, ptr %1, align 8, !tbaa !15
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ce
  %.0.copyload = load ptr, ptr %i.ch, align 8
  call void @free(ptr noundef %.0.copyload) #13
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ci = load ptr, ptr %1, align 8, !tbaa !15
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.ce
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !54
  call void %i.cf(ptr noundef %i.ck) #13
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.o, %bb.n
  %i.cl = add nuw i64 %.089103, 1                 ; 2 uses
  %.val = load i64, ptr %i.bb, align 8, !tbaa !72
  %i.cm = icmp ult i64 %i.cl, %.val
  br i1 %i.cm, label %bb.m, label %._crit_edge, !llvm.loop !67

bb.q:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br label %bb.u

bb.r:                                             ; preds = %._crit_edge, %bb.t
  %.1106.in = phi ptr [ %i.d, %._crit_edge ], [ %i.cq, %bb.t ]
  %.0105 = phi i64 [ 0, %._crit_edge ], [ %i.cr, %bb.t ]
  %.1106 = load ptr, ptr %.1106.in, align 8, !tbaa !54 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.1106, i64 72
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !50
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call fastcc void @layoutTree(ptr noundef nonnull %.1106)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cq = getelementptr inbounds nuw i8, ptr %.1106, i64 56
  %i.cr = add nuw i64 %.0105, 1                   ; 2 uses
  %exitcond111.not = icmp eq i64 %i.cr, %i.b
  br i1 %exitcond111.not, label %bb.q, label %bb.r, !llvm.loop !68

bb.u:                                             ; preds = %bb.a, %bb.q
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @walkTree(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 16               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load i32, ptr %i.b, align 8, !tbaa !50
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.035 = load ptr, ptr %i.e, align 8, !tbaa !54  ; 2 uses
  %.not3436 = icmp eq ptr %.035, null
  br i1 %.not3436, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.037 = phi ptr [ %.0, %.lr.ph ], [ %.035, %bb.b ] ; 2 uses
  tail call fastcc void @walkTree(ptr noundef nonnull %.037)
  %i.f = getelementptr inbounds nuw i8, ptr %.037, i64 56
  %.0 = load ptr, ptr %i.f, align 8, !tbaa !54    ; 2 uses
  %.not34 = icmp eq ptr %.0, null
  br i1 %.not34, label %._crit_edge, label %.lr.ph, !llvm.loop !75

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load <2 x double>, ptr %i.g, align 8, !tbaa !55
  %i.o = load <2 x double>, ptr %i.h, align 8, !tbaa !55 ; 2 uses
  %i.p = fmul <2 x double> %i.o, splat (double 5.000000e-01)
  %i.q = fsub <2 x double> %i.n, %i.p             ; 2 uses
  store <2 x double> %i.q, ptr %i.m, align 8, !tbaa !55
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.r = fadd <2 x double> %i.o, %i.q
  store <2 x double> %i.r, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !55
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !15   ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load <2 x double>, ptr %i.s, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.aa = load <2 x double>, ptr %.sroa.57.0..sroa_idx, align 8
  store <2 x double> %i.y, ptr %i.x, align 8, !tbaa !55
  %i.ab = fdiv <2 x double> %i.aa, splat (double 7.200000e+01)
  store <2 x double> %i.ab, ptr %i.z, align 8, !tbaa !55
  %i.ac = tail call ptr @agraphof(ptr noundef %i.u) #13
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !21
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 132
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !76
  %i.ah = trunc i32 %i.ag to i1
  tail call void @gv_nodesize(ptr noundef %i.u, i1 noundef zeroext %i.ah) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.ai = load ptr, ptr @N_fontsize, align 8, !tbaa !78 ; 2 uses
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %finishNode.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = tail call ptr @agxget(ptr noundef nonnull %i.u, ptr noundef nonnull %i.ai) #13
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !15
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.e, label %finishNode.exit

bb.e:                                             ; preds = %bb.d
  %i.am = load ptr, ptr %i.v, align 8, !tbaa !21
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 96
  %i.ao = load double, ptr %i.an, align 8, !tbaa !79
  %i.ap = fmul double %i.ao, f0x3FE6666666666666
  %i.aq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 40, ptr noundef nonnull @.str.7, double noundef %i.ap) #13 ; 0 uses
  %i.ar = load ptr, ptr @N_fontsize, align 8, !tbaa !78
  %i.as = call i32 @agxset(ptr noundef nonnull %i.u, ptr noundef %i.ar, ptr noundef nonnull %i.a) #13 ; 0 uses
  br label %finishNode.exit

finishNode.exit:                                  ; preds = %bb.c, %bb.d, %bb.e
  call void @common_init_node(ptr noundef nonnull %i.u) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.at = load i8, ptr @Verbose, align 1, !tbaa !15
  %.not = icmp eq i8 %i.at, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %finishNode.exit
  %i.au = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.av = call ptr @agnameof(ptr noundef nonnull %i.u) #13
  %i.aw = load ptr, ptr %i.v, align 8, !tbaa !21  ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !80
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.ba = load double, ptr %i.az, align 8, !tbaa !81
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 96
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !79
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 104
  %1 = load <2 x double>, ptr %i.bd, align 8, !tbaa !55
  %2 = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %1)
  %i.be = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.au, ptr noundef nonnull @.str.6, ptr noundef %i.av, double noundef %i.ay, double noundef %i.ba, double noundef %i.bc, double noundef %2) #15 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %finishNode.exit, %bb.f, %._crit_edge
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @freeTree(ptr noundef captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call void @free(ptr noundef nonnull %0) #13
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.010 = phi i64 [ %i.g, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.089 = phi ptr [ %i.f, %.lr.ph ], [ %i.d, %.lr.ph.preheader ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.089, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42
  tail call fastcc void @freeTree(ptr noundef %.089)
  %i.g = add nuw i64 %.010, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.g, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !82
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @agfstnode(ptr noundef) local_unnamed_addr #2

declare ptr @agnxtnode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #6 {
bb.a:
  tail call void @exit(i32 noundef 1) #17
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

declare double @late_double(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

declare hidden void @gv_list_reserve_(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare hidden i64 @gv_list_append_slot_(ptr noundef, i64 noundef) local_unnamed_addr #2

declare hidden void @gv_list_sort_(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @nodecmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !54
  %i.b = load double, ptr %i.a, align 8, !tbaa !14 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !54
  %i.d = load double, ptr %i.c, align 8, !tbaa !14 ; 2 uses
  %i.e = fcmp olt double %i.b, %i.d
  %i.f = fcmp ogt double %i.b, %i.d
  %. = sext i1 %i.f to i32
  %.0 = select i1 %i.e, i32 1, i32 %.
  ret i32 %.0
}

declare hidden i64 @gv_list_get_(ptr noundef byval(%struct.list_t_) align 8, i64 noundef) local_unnamed_addr #2

declare ptr @tree_map(i64 noundef, ptr noundef, ptr noundef byval(%struct.rectangle) align 8) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

declare hidden void @gv_list_clear_(ptr noundef, i64 noundef) local_unnamed_addr #2

declare hidden void @gv_list_free_(ptr noundef) local_unnamed_addr #2

declare void @gv_nodesize(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @agraphof(ptr noundef) local_unnamed_addr #2

declare ptr @agnameof(ptr noundef) local_unnamed_addr #2

declare ptr @agxget(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare i32 @agxset(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @common_init_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0,1) }
attributes #15 = { cold nounwind }
attributes #16 = { noreturn }
attributes #17 = { cold noreturn nounwind }

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
!8 = !{!"double", !4, i64 0}
!9 = !{!"", !4, i64 0, !4, i64 16}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"p1 _ZTS10treenode_t", !10, i64 0}
!12 = !{!"long", !4, i64 0}
!13 = !{!"treenode_t", !8, i64 0, !8, i64 8, !9, i64 16, !11, i64 48, !11, i64 56, !4, i64 64, !5, i64 72, !12, i64 80}
!14 = !{!13, !8, i64 0}
!15 = !{!4, !4, i64 0}
!16 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"Agtag_s", !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !12, i64 8}
!19 = !{!"p1 _ZTS7Agrec_s", !10, i64 0}
!20 = !{!"Agobj_s", !18, i64 0, !19, i64 16}
!21 = !{!20, !19, i64 16}
!22 = !{!"p1 omnipotent char", !10, i64 0}
!23 = !{!"Agrec_s", !22, i64 0, !19, i64 8}
!24 = !{!"p1 _ZTS8layout_t", !10, i64 0}
!25 = !{!"p1 _ZTS11textlabel_t", !10, i64 0}
!26 = !{!"pointf_s", !8, i64 0, !8, i64 8}
!27 = !{!"", !26, i64 0, !26, i64 16}
!28 = !{!"_Bool", !4, i64 0}
!29 = !{!"short", !4, i64 0}
!30 = !{!"p1 _ZTS5GVC_s", !10, i64 0}
!31 = !{!"any p2 pointer", !10, i64 0}
!32 = !{!"p2 _ZTS8Agnode_s", !31, i64 0}
!33 = !{!"p2 double", !31, i64 0}
!34 = !{!"any p3 pointer", !31, i64 0}
!35 = !{!"p3 double", !34, i64 0}
!36 = !{!"p2 _ZTS8Agraph_s", !31, i64 0}
!37 = !{!"p1 _ZTS8Agraph_s", !10, i64 0}
!38 = !{!"p1 _ZTS8Agnode_s", !10, i64 0}
!39 = !{!"p1 _ZTS6rank_t", !10, i64 0}
!40 = !{!"nlist_t", !32, i64 0, !12, i64 8}
!41 = !{!"Agraphinfo_t", !23, i64 0, !24, i64 16, !25, i64 24, !27, i64 32, !4, i64 64, !4, i64 128, !4, i64 129, !28, i64 130, !4, i64 131, !5, i64 132, !8, i64 136, !8, i64 144, !29, i64 152, !10, i64 160, !30, i64 168, !10, i64 176, !32, i64 184, !5, i64 192, !33, i64 200, !33, i64 208, !33, i64 216, !35, i64 224, !29, i64 232, !29, i64 234, !5, i64 236, !36, i64 240, !37, i64 248, !38, i64 256, !39, i64 264, !37, i64 272, !5, i64 280, !38, i64 288, !38, i64 296, !40, i64 304, !38, i64 320, !38, i64 328, !5, i64 336, !5, i64 340, !28, i64 344, !4, i64 345, !5, i64 348, !5, i64 352, !5, i64 356, !38, i64 360, !38, i64 368, !38, i64 376, !32, i64 384, !28, i64 392, !4, i64 393, !4, i64 394, !4, i64 395, !28, i64 396}
!42 = !{!13, !11, i64 56}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"p1 _ZTS10shape_desc", !10, i64 0}
!45 = !{!"p1 double", !10, i64 0}
!46 = !{!"p2 _ZTS8Agedge_s", !31, i64 0}
!47 = !{!"elist", !46, i64 0, !12, i64 8}
!48 = !{!"p1 _ZTS8Agedge_s", !10, i64 0}
!49 = !{!"Agnodeinfo_t", !23, i64 0, !44, i64 16, !10, i64 24, !26, i64 32, !8, i64 48, !8, i64 56, !27, i64 64, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !25, i64 136, !25, i64 144, !10, i64 152, !4, i64 160, !4, i64 161, !28, i64 162, !4, i64 163, !5, i64 164, !5, i64 168, !5, i64 172, !45, i64 176, !8, i64 184, !4, i64 192, !28, i64 193, !38, i64 200, !38, i64 208, !4, i64 216, !12, i64 224, !4, i64 232, !4, i64 233, !4, i64 234, !38, i64 240, !38, i64 248, !47, i64 256, !47, i64 272, !47, i64 288, !47, i64 304, !47, i64 320, !37, i64 336, !5, i64 344, !38, i64 352, !5, i64 360, !5, i64 364, !8, i64 368, !47, i64 376, !47, i64 392, !47, i64 408, !47, i64 424, !48, i64 440, !5, i64 448, !5, i64 452, !5, i64 456, !4, i64 464}
!50 = !{!13, !5, i64 72}
!51 = !{!13, !12, i64 80}
!52 = !{!13, !8, i64 8}
!53 = !{!13, !11, i64 48}
!54 = !{!11, !11, i64 0}
!55 = !{!8, !8, i64 0}
!56 = distinct !{!56, !43}
!57 = distinct !{!57, !43}
!58 = !{!41, !5, i64 236}
!59 = !{!41, !36, i64 240}
!60 = !{!37, !37, i64 0}
!61 = !{!49, !10, i64 152}
!62 = !{!"", !37, i64 0}
!63 = !{!62, !37, i64 0}
!64 = distinct !{!64, !43}
!65 = distinct !{!65, !43}
!66 = distinct !{!66, !43}
!67 = distinct !{!67, !43}
!68 = distinct !{!68, !43}
!69 = !{!"", !4, i64 0, !10, i64 32, !11, i64 40}
!70 = !{!69, !11, i64 40}
!71 = !{!"", !10, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!72 = !{!71, !12, i64 16}
!73 = !{i64 0, i64 16, !15, i64 16, i64 16, !15}
!74 = !{!69, !10, i64 32}
!75 = distinct !{!75, !43}
!76 = !{!41, !5, i64 132}
!77 = !{!"p1 _ZTS7Agsym_s", !10, i64 0}
!78 = !{!77, !77, i64 0}
!79 = !{!49, !8, i64 96}
!80 = !{!49, !8, i64 32}
!81 = !{!49, !8, i64 40}
!82 = distinct !{!82, !43}
end_hunk_0
