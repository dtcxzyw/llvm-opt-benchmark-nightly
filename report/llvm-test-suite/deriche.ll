Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/deriche?download=true
inline.NumInlined: 17
inline.NumDeleted: 8
loop-unroll.NumUnrolled: 15
begin_hunk_0_@main:bb.a

bb.u:                                             ; preds = %bb.u, %.preheader172.i99
  %indvars.iv241.i103 = phi i64 [ 4095, %.preheader172.i99 ], [ %indvars.iv.next242.i110.1, %bb.u ] ; 4 uses
  %.1209.i104 = phi float [ 0.000000e+00, %.preheader172.i99 ], [ %i.kr, %bb.u ]
  %.1150208.i105 = phi float [ 0.000000e+00, %.preheader172.i99 ], [ %i.kz, %bb.u ] ; 2 uses
  %.0151207.i106 = phi float [ 0.000000e+00, %.preheader172.i99 ], [ %i.ks, %bb.u ]
  %.0152206.i107 = phi float [ 0.000000e+00, %.preheader172.i99 ], [ %i.la, %bb.u ] ; 2 uses
  %i.kl = fmul float %.0152206.i107, f0x3E3C1714
  %i.km = fmul float %.0151207.i106, f0x3DEA6028
  %i.kn = fsub float %i.km, %i.kl
  %i.ko = fmul float %.1150208.i105, f0x3F5744FD
  %i.kp = fadd float %i.ko, %i.kn
  %i.kq = fmul float %.1209.i104, f0x3F1B4598
  %i.kr = fsub float %i.kp, %i.kq                 ; 3 uses
  %gep202.i108 = getelementptr inbounds nuw [8640 x i8], ptr %invariant.gep201.i101, i64 %indvars.iv241.i103
  store float %i.kr, ptr %gep202.i108, align 4, !tbaa !50
  %gep204.i109 = getelementptr inbounds nuw [8640 x i8], ptr %invariant.gep203.i102, i64 %indvars.iv241.i103
  %i.ks = load float, ptr %gep204.i109, align 4, !tbaa !50 ; 2 uses
  %indvars.iv.next242.i110 = add nsw i64 %indvars.iv241.i103, -1 ; 3 uses
  %i.kt = fmul float %i.ks, f0x3E3C1714
  %i.ku = fmul float %.0152206.i107, f0x3DEA6028
  %i.kv = fsub float %i.ku, %i.kt
  %i.kw = fmul float %i.kr, f0x3F5744FD
  %i.kx = fadd float %i.kw, %i.kv
  %i.ky = fmul float %.1150208.i105, f0x3F1B4598
  %i.kz = fsub float %i.kx, %i.ky                 ; 2 uses
  %gep202.i108.1 = getelementptr inbounds nuw [8640 x i8], ptr %invariant.gep201.i101, i64 %indvars.iv.next242.i110
  store float %i.kz, ptr %gep202.i108.1, align 4, !tbaa !50
  %gep204.i109.1 = getelementptr inbounds nuw [8640 x i8], ptr %invariant.gep203.i102, i64 %indvars.iv.next242.i110
  %i.la = load float, ptr %gep204.i109.1, align 4, !tbaa !50
  %indvars.iv.next242.i110.1 = add nsw i64 %indvars.iv241.i103, -2
  %.not256.i111.1 = icmp eq i64 %indvars.iv.next242.i110, 0
  br i1 %.not256.i111.1, label %bb.v, label %bb.u, !llvm.loop !40

bb.v:                                             ; preds = %bb.u
  %indvars.iv.next245.i112 = add nuw nsw i64 %indvars.iv244.i100, 1 ; 2 uses
  %exitcond247.not.i113 = icmp eq i64 %indvars.iv.next245.i112, 2160
  br i1 %exitcond247.not.i113, label %.preheader.i114.preheader, label %.preheader172.i99, !llvm.loop !41

.preheader.i114.preheader:                        ; preds = %bb.v
  %i.lb = sub i64 %i.y, %i.s
  %diff.check207 = icmp ugt i64 %i.lb, -32
  %i.lc = sub i64 %i.ae, %i.s
  %diff.check208 = icmp ugt i64 %i.lc, -32
  %conflict.rdx209 = or i1 %diff.check207, %diff.check208
  br label %.preheader.i114

.preheader.i114:                                  ; preds = %.preheader.i114.preheader, %middle.block219
  %indvars.iv252.i115 = phi i64 [ %indvars.iv.next253.i119, %middle.block219 ], [ 0, %.preheader.i114.preheader ] ; 4 uses
  %i.ld = getelementptr inbounds nuw [8640 x i8], ptr %i.x, i64 %indvars.iv252.i115 ; 6 uses
  %i.le = getelementptr inbounds nuw [8640 x i8], ptr %i.ad, i64 %indvars.iv252.i115 ; 6 uses
  %i.lf = getelementptr inbounds nuw [8640 x i8], ptr %i.r, i64 %indvars.iv252.i115 ; 6 uses
  br i1 %conflict.rdx209, label %scalar.ph210, label %vector.body212

vector.body212:                                   ; preds = %.preheader.i114, %vector.body212
  %index213 = phi i64 [ %index.next218.1, %vector.body212 ], [ 0, %.preheader.i114 ] ; 5 uses
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %index213 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  %wide.load214 = load <4 x float>, ptr %i.lg, align 4, !tbaa !50
  %wide.load215 = load <4 x float>, ptr %i.lh, align 4, !tbaa !50
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %index213 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %wide.load216 = load <4 x float>, ptr %i.li, align 4, !tbaa !50
  %wide.load217 = load <4 x float>, ptr %i.lj, align 4, !tbaa !50
  %i.lk = fadd <4 x float> %wide.load214, %wide.load216
  %i.ll = fadd <4 x float> %wide.load215, %wide.load217
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %index213 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  store <4 x float> %i.lk, ptr %i.lm, align 4, !tbaa !50
  store <4 x float> %i.ll, ptr %i.ln, align 4, !tbaa !50
  %index.next218 = or disjoint i64 %index213, 8   ; 3 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %index.next218 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  %wide.load214.1 = load <4 x float>, ptr %i.lo, align 4, !tbaa !50
  %wide.load215.1 = load <4 x float>, ptr %i.lp, align 4, !tbaa !50
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %index.next218 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %wide.load216.1 = load <4 x float>, ptr %i.lq, align 4, !tbaa !50
  %wide.load217.1 = load <4 x float>, ptr %i.lr, align 4, !tbaa !50
  %i.ls = fadd <4 x float> %wide.load214.1, %wide.load216.1
  %i.lt = fadd <4 x float> %wide.load215.1, %wide.load217.1
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %index.next218 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  store <4 x float> %i.ls, ptr %i.lu, align 4, !tbaa !50
  store <4 x float> %i.lt, ptr %i.lv, align 4, !tbaa !50
  %index.next218.1 = add nuw nsw i64 %index213, 16 ; 2 uses
  %i.lw = icmp eq i64 %index.next218.1, 2160
  br i1 %i.lw, label %middle.block219, label %vector.body212, !llvm.loop !42

scalar.ph210:                                     ; preds = %.preheader.i114, %scalar.ph210
  %indvars.iv248.i116 = phi i64 [ %indvars.iv.next249.i117.3, %scalar.ph210 ], [ 0, %.preheader.i114 ] ; 7 uses
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %indvars.iv248.i116
  %i.ly = load float, ptr %i.lx, align 4, !tbaa !50
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %indvars.iv248.i116
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !50
  %i.mb = fadd float %i.ly, %i.ma
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %indvars.iv248.i116
  store float %i.mb, ptr %i.mc, align 4, !tbaa !50
  %indvars.iv.next249.i117 = or disjoint i64 %indvars.iv248.i116, 1 ; 3 uses
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %indvars.iv.next249.i117
  %i.me = load float, ptr %i.md, align 4, !tbaa !50
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %indvars.iv.next249.i117
  %i.mg = load float, ptr %i.mf, align 4, !tbaa !50
  %i.mh = fadd float %i.me, %i.mg
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %indvars.iv.next249.i117
  store float %i.mh, ptr %i.mi, align 4, !tbaa !50
  %indvars.iv.next249.i117.1 = or disjoint i64 %indvars.iv248.i116, 2 ; 3 uses
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %indvars.iv.next249.i117.1
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !50
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %indvars.iv.next249.i117.1
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !50
  %i.mn = fadd float %i.mk, %i.mm
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %indvars.iv.next249.i117.1
  store float %i.mn, ptr %i.mo, align 4, !tbaa !50
  %indvars.iv.next249.i117.2 = or disjoint i64 %indvars.iv248.i116, 3 ; 3 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %indvars.iv.next249.i117.2
  %i.mq = load float, ptr %i.mp, align 4, !tbaa !50
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %indvars.iv.next249.i117.2
  %i.ms = load float, ptr %i.mr, align 4, !tbaa !50
  %i.mt = fadd float %i.mq, %i.ms
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %indvars.iv.next249.i117.2
  store float %i.mt, ptr %i.mu, align 4, !tbaa !50
  %indvars.iv.next249.i117.3 = add nuw nsw i64 %indvars.iv248.i116, 4 ; 2 uses
  %exitcond251.not.i118.3 = icmp eq i64 %indvars.iv.next249.i117.3, 2160
  br i1 %exitcond251.not.i118.3, label %middle.block219, label %scalar.ph210, !llvm.loop !43

middle.block219:                                  ; preds = %vector.body212, %scalar.ph210
  %indvars.iv.next253.i119 = add nuw nsw i64 %indvars.iv252.i115, 1 ; 2 uses
  %exitcond255.not.i120 = icmp eq i64 %indvars.iv.next253.i119, 4096
  br i1 %exitcond255.not.i120, label %.preheader.i121, label %.preheader.i114, !llvm.loop !44

.preheader.i121:                                  ; preds = %middle.block219, %bb.x
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %bb.x ], [ 0, %middle.block219 ] ; 4 uses
  %i.mv = getelementptr inbounds nuw [8640 x i8], ptr %i.l, i64 %indvars.iv36.i ; 2 uses
  %i.mw = getelementptr inbounds nuw [8640 x i8], ptr %i.r, i64 %indvars.iv36.i ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %.critedge.i.1, %.preheader.i121
  %indvars.iv.i122 = phi i64 [ 0, %.preheader.i121 ], [ %indvars.iv.next.i123.1, %.critedge.i.1 ] ; 5 uses
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %indvars.iv.i122
  %i.my = load float, ptr %i.mx, align 4, !tbaa !50
  %i.mz = fpext float %i.my to double             ; 2 uses
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %indvars.iv.i122
  %i.nb = load float, ptr %i.na, align 4, !tbaa !50
  %i.nc = fpext float %i.nb to double             ; 2 uses
  %i.nd = fsub double %i.mz, %i.nc
  %i.ne = call double @llvm.fabs.f64(double %i.nd)
  %i.nf = fcmp ule double %i.ne, 1.000000e-05
  br i1 %i.nf, label %.critedge.i, label %check_FP.exit.thread

check_FP.exit.thread:                             ; preds = %.critedge.i, %bb.w
  %indvars.iv.i122.lcssa = phi i64 [ %indvars.iv.i122, %bb.w ], [ %indvars.iv.next.i123, %.critedge.i ]
  %.lcssa224 = phi double [ %i.mz, %bb.w ], [ %i.nm, %.critedge.i ]
  %.lcssa = phi double [ %i.nc, %bb.w ], [ %i.np, %.critedge.i ]
  %i.ng = trunc nuw nsw i64 %indvars.iv36.i to i32 ; 2 uses
  %i.nh = trunc nuw nsw i64 %indvars.iv.i122.lcssa to i32 ; 2 uses
  %i.ni = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.nj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ni, ptr noundef nonnull @.str.2, i32 noundef %i.ng, i32 noundef %i.nh, double noundef %.lcssa224, i32 noundef %i.ng, i32 noundef %i.nh, double noundef %.lcssa, double noundef 1.000000e-05) #15 ; 0 uses
  br label %bb.aa

.critedge.i:                                      ; preds = %bb.w
  %indvars.iv.next.i123 = or disjoint i64 %indvars.iv.i122, 1 ; 3 uses
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %indvars.iv.next.i123
  %i.nl = load float, ptr %i.nk, align 4, !tbaa !50
  %i.nm = fpext float %i.nl to double             ; 2 uses
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %indvars.iv.next.i123
  %i.no = load float, ptr %i.nn, align 4, !tbaa !50
  %i.np = fpext float %i.no to double             ; 2 uses
  %i.nq = fsub double %i.nm, %i.np
  %i.nr = call double @llvm.fabs.f64(double %i.nq)
  %i.ns = fcmp ule double %i.nr, 1.000000e-05
  br i1 %i.ns, label %.critedge.i.1, label %check_FP.exit.thread

.critedge.i.1:                                    ; preds = %.critedge.i
  %indvars.iv.next.i123.1 = add nuw nsw i64 %indvars.iv.i122, 2 ; 2 uses
  %exitcond.not.i124.1 = icmp eq i64 %indvars.iv.next.i123.1, 2160
  br i1 %exitcond.not.i124.1, label %bb.x, label %bb.w, !llvm.loop !45

bb.x:                                             ; preds = %.critedge.i.1
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1 ; 2 uses
  %exitcond39.not.i = icmp eq i64 %indvars.iv.next37.i, 4096
  br i1 %exitcond39.not.i, label %check_FP.exit, label %.preheader.i121, !llvm.loop !46

check_FP.exit:                                    ; preds = %bb.x
  %i.nt = call noalias dereferenceable_or_null(65537) ptr @malloc(i64 noundef 65537) #16 ; 4 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 65536
  store i8 0, ptr %i.nu, align 1, !tbaa !54
  br label %.preheader.i125

.preheader.i125:                                  ; preds = %bb.z, %check_FP.exit
  %indvars.iv23.i = phi i64 [ 0, %check_FP.exit ], [ %indvars.iv.next24.i, %bb.z ] ; 2 uses
  %i.nv = getelementptr inbounds nuw [8640 x i8], ptr %i.r, i64 %indvars.iv23.i
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.preheader.i125
  %indvars.iv.i126 = phi i64 [ 0, %.preheader.i125 ], [ %indvars.iv.next.i127, %bb.y ] ; 3 uses
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %indvars.iv.i126
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !50
  %i.ny = fpext float %i.nx to double
  %i.nz = shl nuw nsw i64 %indvars.iv.i126, 4
  %i.oa = bitcast double %i.ny to i64
  %2 = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nz
  %.inner = and i64 %i.oa, 1085102592571150095
  %.inner223 = or disjoint i64 %.inner, 3472328296227680304
  %3 = bitcast i64 %.inner223 to <8 x i8>
  %i.ob = shufflevector <8 x i8> %3, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %i.ob, ptr %2, align 1, !tbaa !54
  %indvars.iv.next.i127 = add nuw nsw i64 %indvars.iv.i126, 1 ; 2 uses
  %exitcond.not.i128 = icmp eq i64 %indvars.iv.next.i127, 2160
  br i1 %exitcond.not.i128, label %bb.z, label %bb.y, !llvm.loop !47

bb.z:                                             ; preds = %bb.y
  %i.oc = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.od = call i32 @fputs(ptr noundef nonnull %i.nt, ptr noundef %i.oc) #13 ; 0 uses
  %indvars.iv.next24.i = add nuw nsw i64 %indvars.iv23.i, 1 ; 2 uses
  %exitcond26.not.i = icmp eq i64 %indvars.iv.next24.i, 4096
  br i1 %exitcond26.not.i, label %print_array.exit, label %.preheader.i125, !llvm.loop !48

print_array.exit:                                 ; preds = %bb.z
  call void @free(ptr noundef nonnull %i.nt) #12
  call void @free(ptr noundef %i.g) #12
  call void @free(ptr noundef %i.l) #12
  call void @free(ptr noundef nonnull %i.r) #12
  call void @free(ptr noundef %i.x) #12
  call void @free(ptr noundef %i.ad) #12
  br label %bb.aa

bb.aa:                                            ; preds = %check_FP.exit.thread, %print_array.exit
  %.0 = phi i32 [ 0, %print_array.exit ], [ 1, %check_FP.exit.thread ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nounwind }
attributes #13 = { cold }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"double", !5, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!13 = !{!12, !12, i64 0}
!14 = distinct !{!14, !51, !52, !53}
!15 = distinct !{!15, !51}
!16 = distinct !{!16, !51}
!17 = distinct !{!17, !51}
!18 = distinct !{!18, !51}
!19 = distinct !{!19, !51}
!20 = distinct !{!20, !51, !52, !53}
!21 = distinct !{!21, !51, !52}
!22 = distinct !{!22, !51}
!23 = distinct !{!23, !51}
!24 = distinct !{!24, !51}
!25 = distinct !{!25, !51}
!26 = distinct !{!26, !51}
!27 = distinct !{!27, !51, !52, !53}
!28 = distinct !{!28, !51, !52}
!29 = distinct !{!29, !51}
!30 = distinct !{!30, !51, !52, !53}
!31 = distinct !{!31, !51}
!32 = distinct !{!32, !51}
!33 = distinct !{!33, !51}
!34 = distinct !{!34, !51}
!35 = distinct !{!35, !51, !52, !53}
!36 = distinct !{!36, !51, !52}
!37 = distinct !{!37, !51}
!38 = distinct !{!38, !51}
!39 = distinct !{!39, !51}
!40 = distinct !{!40, !51}
!41 = distinct !{!41, !51}
!42 = distinct !{!42, !51, !52, !53}
!43 = distinct !{!43, !51, !52}
!44 = distinct !{!44, !51}
!45 = distinct !{!45, !51}
!46 = distinct !{!46, !51}
!47 = distinct !{!47, !51}
!48 = distinct !{!48, !51}
!49 = !{!"float", !5, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"llvm.loop.isvectorized", i32 1}
!53 = !{!"llvm.loop.unroll.runtime.disable"}
!54 = !{!5, !5, i64 0}
end_hunk_0
