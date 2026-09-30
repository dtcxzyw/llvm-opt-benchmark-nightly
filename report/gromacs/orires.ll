Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/orires?download=true
inline.NumInlined: 901
inline.NumDeleted: 525
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_Z6oriresiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS4_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi:bb.a
  %i.gm = fadd float %i.el, %i.gl
  store float %i.gm, ptr %i.gk, align 4, !tbaa !125
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 2 uses
  %i.go = load float, ptr %i.gn, align 4, !tbaa !125
  %i.gp = fsub float %i.go, %i.el
  store float %i.gp, ptr %i.gn, align 4, !tbaa !125
  br label %.split.us

.split.us:                                        ; preds = %.preheader.split.preheader, %.preheader.split.us.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.gq = trunc nuw i64 %indvars.iv.next to i32
  %i.gr = icmp sgt i32 %0, %i.gq
  br i1 %i.gr, label %bb.e, label %.loopexit, !llvm.loop !345

.loopexit:                                        ; preds = %.split.us, %bb.d, %bb.a
  %.1 = phi float [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %bb.d ], [ %i.bx, %.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret float %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN12t_oriresdata13updateHistoryEv(ptr noundef nonnull align 8 dereferenceable(544) %0) local_unnamed_addr #20 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load float, ptr %i.a, align 4, !tbaa !159
  %i.c = fcmp une float %i.b, 0.000000e+00
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = ptrtoint ptr %i.d to i64
  store i64 %i.f, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !142  ; 4 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !158  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 15 uses
  %wide.trip.count = zext nneg i32 %i.h to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.m = icmp eq i32 %i.h, 1
  br i1 %i.m, label %.preheader.epil.preheader, label %.preheader.lr.ph.new

.preheader.lr.ph.new:                             ; preds = %.preheader.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.preheader.lr.ph.new ], [ %indvars.iv.next.1, %.preheader ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.lr.ph.new ], [ %niter.next.1, %.preheader ]
  %i.n = getelementptr inbounds nuw [20 x i8], ptr %i.k, i64 %indvars.iv ; 5 uses
  %i.o = mul nuw nsw i64 %indvars.iv, 5           ; 5 uses
  %i.p = load float, ptr %i.n, align 4, !tbaa !125
  %i.q = load i64, ptr %i.l, align 8
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.o
  store float %i.p, ptr %i.s, align 4, !tbaa !125
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.u = load float, ptr %i.t, align 4, !tbaa !125
  %i.v = load i64, ptr %i.l, align 8
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.o
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store float %i.u, ptr %i.y, align 4, !tbaa !125
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.aa = load float, ptr %i.z, align 4, !tbaa !125
  %i.ab = load i64, ptr %i.l, align 8
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.o
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store float %i.aa, ptr %i.ae, align 4, !tbaa !125
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.ag = load float, ptr %i.af, align 4, !tbaa !125
  %i.ah = load i64, ptr %i.l, align 8
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.o
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store float %i.ag, ptr %i.ak, align 4, !tbaa !125
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.am = load float, ptr %i.al, align 4, !tbaa !125
  %i.an = load i64, ptr %i.l, align 8
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.o
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store float %i.am, ptr %i.aq, align 4, !tbaa !125
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ar = getelementptr inbounds nuw [20 x i8], ptr %i.k, i64 %indvars.iv.next ; 5 uses
  %i.as = mul nuw nsw i64 %indvars.iv.next, 5     ; 5 uses
  %i.at = load float, ptr %i.ar, align 4, !tbaa !125
  %i.au = load i64, ptr %i.l, align 8
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.as
  store float %i.at, ptr %i.aw, align 4, !tbaa !125
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !125
  %i.az = load i64, ptr %i.l, align 8
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.as
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store float %i.ay, ptr %i.bc, align 4, !tbaa !125
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.be = load float, ptr %i.bd, align 4, !tbaa !125
  %i.bf = load i64, ptr %i.l, align 8
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.as
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store float %i.be, ptr %i.bi, align 4, !tbaa !125
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !125
  %i.bl = load i64, ptr %i.l, align 8
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.as
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store float %i.bk, ptr %i.bo, align 4, !tbaa !125
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !125
  %i.br = load i64, ptr %i.l, align 8
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.as
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store float %i.bq, ptr %i.bu, align 4, !tbaa !125
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.preheader, !llvm.loop !346

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod13 = trunc i32 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod13)
  %i.bv = getelementptr inbounds nuw [20 x i8], ptr %i.k, i64 %indvars.iv.epil.init ; 5 uses
  %i.bw = mul nuw nsw i64 %indvars.iv.epil.init, 5 ; 5 uses
  %i.bx = load float, ptr %i.bv, align 4, !tbaa !125
  %i.by = load i64, ptr %i.l, align 8
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bw
  store float %i.bx, ptr %i.ca, align 4, !tbaa !125
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !125
  %i.cd = load i64, ptr %i.l, align 8
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.bw
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  store float %i.cc, ptr %i.cg, align 4, !tbaa !125
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !125
  %i.cj = load i64, ptr %i.l, align 8
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.bw
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store float %i.ci, ptr %i.cm, align 4, !tbaa !125
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  %i.co = load float, ptr %i.cn, align 4, !tbaa !125
  %i.cp = load i64, ptr %i.l, align 8
  %i.cq = inttoptr i64 %i.cp to ptr
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.bw
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  store float %i.co, ptr %i.cs, align 4, !tbaa !125
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !125
  %i.cv = load i64, ptr %i.l, align 8
  %i.cw = inttoptr i64 %i.cv to ptr
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.bw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store float %i.cu, ptr %i.cy, align 4, !tbaa !125
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x double> @llvm.masked.load.v4f64.p0(ptr captures(none), <4 x i1>, <4 x double>) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <16 x float> @llvm.masked.load.v16f32.p0(ptr captures(none), <16 x i1>, <16 x float>) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <9 x float> @llvm.masked.load.v9f32.p0(ptr captures(none), <9 x i1>, <9 x float>) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <5 x float> @llvm.masked.load.v5f32.p0(ptr captures(none), <5 x i1>, <5 x float>) #23

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { cold noreturn }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #18 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nofree nounwind }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #26 = { noreturn }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { builtin nounwind }
attributes #29 = { nounwind }
attributes #30 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !144}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"_ZTS20IntegrationAlgorithm", !6, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!"_ZTS12CutoffScheme", !6, i64 0}
!13 = !{!"_ZTS19ComRemovalAlgorithm", !6, i64 0}
!14 = !{!"double", !6, i64 0}
!15 = !{!"bool", !6, i64 0}
!16 = !{!"any pointer", !6, i64 0}
!17 = !{!"p1 _ZTSN3gmx8MtsLevelE", !16, i64 0}
!18 = !{!"_ZTSNSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
!19 = !{!"_ZTSNSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE12_Vector_implE", !18, i64 0}
!20 = !{!"_ZTSSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE", !19, i64 0}
!21 = !{!"_ZTSSt6vectorIN3gmx8MtsLevelESaIS1_EE", !20, i64 0}
!22 = !{!"float", !6, i64 0}
!23 = !{!"_ZTS13EwaldGeometry", !6, i64 0}
!24 = !{!"_ZTS12LongRangeVdW", !6, i64 0}
!25 = !{!"_ZTS7PbcType", !6, i64 0}
!26 = !{!"_ZTS26EnsembleTemperatureSetting", !6, i64 0}
!27 = !{!"_ZTS19TemperatureCoupling", !6, i64 0}
!28 = !{!"_ZTS16PressureCoupling", !6, i64 0}
!29 = !{!"_ZTS20PressureCouplingType", !6, i64 0}
!30 = !{!"_ZTS15RefCoordScaling", !6, i64 0}
!31 = !{!"_ZTS23PressureCouplingOptions", !28, i64 0, !29, i64 4, !7, i64 8, !22, i64 12, !6, i64 16, !6, i64 52, !30, i64 88}
!32 = !{!"p1 _ZTSN3gmx11BasicVectorIfEE", !16, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE17_Vector_impl_dataE", !32, i64 0, !32, i64 8, !32, i64 16}
!34 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE12_Vector_implE", !33, i64 0}
!35 = !{!"_ZTSSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE", !34, i64 0}
!36 = !{!"_ZTSSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE", !35, i64 0}
!37 = !{!"_ZTS22CoulombInteractionType", !6, i64 0}
!38 = !{!"_ZTS20InteractionModifiers", !6, i64 0}
!39 = !{!"_ZTS15VanDerWaalsType", !6, i64 0}
!40 = !{!"_ZTS24DispersionCorrectionType", !6, i64 0}
!41 = !{!"_ZTS26FreeEnergyPerturbationType", !6, i64 0}
!42 = !{!"p1 _ZTS8t_lambda", !16, i64 0}
!43 = !{!"_ZTSSt10_Head_baseILm0EP8t_lambdaLb0EE", !42, i64 0}
!44 = !{!"_ZTSSt11_Tuple_implILm0EJP8t_lambdaSt14default_deleteIS0_EEE", !43, i64 0}
!45 = !{!"_ZTSSt5tupleIJP8t_lambdaSt14default_deleteIS0_EEE", !44, i64 0}
!46 = !{!"_ZTSSt15__uniq_ptr_implI8t_lambdaSt14default_deleteIS0_EE", !45, i64 0}
!47 = !{!"_ZTSSt15__uniq_ptr_dataI8t_lambdaSt14default_deleteIS0_ELb1ELb1EE", !46, i64 0}
!48 = !{!"_ZTSSt10unique_ptrI8t_lambdaSt14default_deleteIS0_EE", !47, i64 0}
!49 = !{!"p1 _ZTS9t_simtemp", !16, i64 0}
!50 = !{!"_ZTSSt10_Head_baseILm0EP9t_simtempLb0EE", !49, i64 0}
!51 = !{!"_ZTSSt11_Tuple_implILm0EJP9t_simtempSt14default_deleteIS0_EEE", !50, i64 0}
!52 = !{!"_ZTSSt5tupleIJP9t_simtempSt14default_deleteIS0_EEE", !51, i64 0}
!53 = !{!"_ZTSSt15__uniq_ptr_implI9t_simtempSt14default_deleteIS0_EE", !52, i64 0}
!54 = !{!"_ZTSSt15__uniq_ptr_dataI9t_simtempSt14default_deleteIS0_ELb1ELb1EE", !53, i64 0}
!55 = !{!"_ZTSSt10unique_ptrI9t_simtempSt14default_deleteIS0_EE", !54, i64 0}
!56 = !{!"p1 _ZTS10t_expanded", !16, i64 0}
!57 = !{!"_ZTSSt10_Head_baseILm0EP10t_expandedLb0EE", !56, i64 0}
!58 = !{!"_ZTSSt11_Tuple_implILm0EJP10t_expandedSt14default_deleteIS0_EEE", !57, i64 0}
!59 = !{!"_ZTSSt5tupleIJP10t_expandedSt14default_deleteIS0_EEE", !58, i64 0}
!60 = !{!"_ZTSSt15__uniq_ptr_implI10t_expandedSt14default_deleteIS0_EE", !59, i64 0}
!61 = !{!"_ZTSSt15__uniq_ptr_dataI10t_expandedSt14default_deleteIS0_ELb1ELb1EE", !60, i64 0}
!62 = !{!"_ZTSSt10unique_ptrI10t_expandedSt14default_deleteIS0_EE", !61, i64 0}
!63 = !{!"_ZTS27DistanceRestraintRefinement", !6, i64 0}
!64 = !{!"_ZTS26DistanceRestraintWeighting", !6, i64 0}
!65 = !{!"_ZTS19ConstraintAlgorithm", !6, i64 0}
!66 = !{!"_ZTS8WallType", !6, i64 0}
!67 = !{!"p1 _ZTS13pull_params_t", !16, i64 0}
!68 = !{!"_ZTSSt10_Head_baseILm0EP13pull_params_tLb0EE", !67, i64 0}
!69 = !{!"_ZTSSt11_Tuple_implILm0EJP13pull_params_tSt14default_deleteIS0_EEE", !68, i64 0}
!70 = !{!"_ZTSSt5tupleIJP13pull_params_tSt14default_deleteIS0_EEE", !69, i64 0}
!71 = !{!"_ZTSSt15__uniq_ptr_implI13pull_params_tSt14default_deleteIS0_EE", !70, i64 0}
!72 = !{!"_ZTSSt15__uniq_ptr_dataI13pull_params_tSt14default_deleteIS0_ELb1ELb1EE", !71, i64 0}
!73 = !{!"_ZTSSt10unique_ptrI13pull_params_tSt14default_deleteIS0_EE", !72, i64 0}
!74 = !{!"p1 _ZTSN3gmx9AwhParamsE", !16, i64 0}
!75 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx9AwhParamsELb0EE", !74, i64 0}
!76 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx9AwhParamsESt14default_deleteIS1_EEE", !75, i64 0}
!77 = !{!"_ZTSSt5tupleIJPN3gmx9AwhParamsESt14default_deleteIS1_EEE", !76, i64 0}
!78 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx9AwhParamsESt14default_deleteIS1_EE", !77, i64 0}
!79 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx9AwhParamsESt14default_deleteIS1_ELb1ELb1EE", !78, i64 0}
!80 = !{!"_ZTSSt10unique_ptrIN3gmx9AwhParamsESt14default_deleteIS1_EE", !79, i64 0}
!81 = !{!"p1 _ZTS5t_rot", !16, i64 0}
!82 = !{!"_ZTSSt10_Head_baseILm0EP5t_rotLb0EE", !81, i64 0}
!83 = !{!"_ZTSSt11_Tuple_implILm0EJP5t_rotSt14default_deleteIS0_EEE", !82, i64 0}
!84 = !{!"_ZTSSt5tupleIJP5t_rotSt14default_deleteIS0_EEE", !83, i64 0}
!85 = !{!"_ZTSSt15__uniq_ptr_implI5t_rotSt14default_deleteIS0_EE", !84, i64 0}
!86 = !{!"_ZTSSt15__uniq_ptr_dataI5t_rotSt14default_deleteIS0_ELb1ELb1EE", !85, i64 0}
!87 = !{!"_ZTSSt10unique_ptrI5t_rotSt14default_deleteIS0_EE", !86, i64 0}
!88 = !{!"_ZTS8SwapType", !6, i64 0}
!89 = !{!"p1 _ZTS12t_swapcoords", !16, i64 0}
!90 = !{!"_ZTSSt10_Head_baseILm0EP12t_swapcoordsLb0EE", !89, i64 0}
!91 = !{!"_ZTSSt11_Tuple_implILm0EJP12t_swapcoordsSt14default_deleteIS0_EEE", !90, i64 0}
!92 = !{!"_ZTSSt5tupleIJP12t_swapcoordsSt14default_deleteIS0_EEE", !91, i64 0}
!93 = !{!"_ZTSSt15__uniq_ptr_implI12t_swapcoordsSt14default_deleteIS0_EE", !92, i64 0}
!94 = !{!"_ZTSSt15__uniq_ptr_dataI12t_swapcoordsSt14default_deleteIS0_ELb1ELb1EE", !93, i64 0}
!95 = !{!"_ZTSSt10unique_ptrI12t_swapcoordsSt14default_deleteIS0_EE", !94, i64 0}
!96 = !{!"p1 _ZTS5t_IMD", !16, i64 0}
!97 = !{!"p1 float", !16, i64 0}
!98 = !{!"p1 int", !16, i64 0}
!99 = !{!"any p2 pointer", !16, i64 0}
!100 = !{!"p2 float", !99, i64 0}
!101 = !{!"_ZTS9t_grpopts", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !97, i64 16, !97, i64 24, !16, i64 32, !98, i64 40, !100, i64 48, !100, i64 56, !97, i64 64, !36, i64 72, !98, i64 96, !98, i64 104, !7, i64 112}
!102 = !{!"p1 _ZTSN3gmx18KeyValueTreeObjectE", !16, i64 0}
!103 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx18KeyValueTreeObjectELb0EE", !102, i64 0}
!104 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EEE", !103, i64 0}
!105 = !{!"_ZTSSt5tupleIJPN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EEE", !104, i64 0}
!106 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EE", !105, i64 0}
!107 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx18KeyValueTreeObjectESt14default_deleteIS1_ELb1ELb1EE", !106, i64 0}
!108 = !{!"_ZTSSt10unique_ptrIN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EE", !107, i64 0}
!109 = !{!"_ZTS10t_inputrec", !7, i64 0, !10, i64 4, !11, i64 8, !7, i64 16, !11, i64 24, !7, i64 32, !12, i64 36, !7, i64 40, !7, i64 44, !13, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !14, i64 80, !14, i64 88, !15, i64 96, !21, i64 104, !22, i64 128, !22, i64 132, !22, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !22, i64 156, !22, i64 160, !23, i64 164, !22, i64 168, !24, i64 172, !25, i64 176, !15, i64 180, !15, i64 181, !26, i64 184, !22, i64 188, !27, i64 192, !7, i64 196, !15, i64 200, !31, i64 204, !36, i64 296, !36, i64 320, !7, i64 344, !22, i64 348, !22, i64 352, !22, i64 356, !22, i64 360, !37, i64 364, !38, i64 368, !22, i64 372, !22, i64 376, !22, i64 380, !22, i64 384, !15, i64 388, !39, i64 392, !38, i64 396, !22, i64 400, !22, i64 404, !40, i64 408, !22, i64 412, !22, i64 416, !41, i64 420, !48, i64 424, !15, i64 432, !55, i64 440, !15, i64 448, !62, i64 456, !63, i64 464, !22, i64 468, !64, i64 472, !15, i64 476, !7, i64 480, !22, i64 484, !22, i64 488, !22, i64 492, !7, i64 496, !22, i64 500, !22, i64 504, !7, i64 508, !22, i64 512, !7, i64 516, !7, i64 520, !65, i64 524, !7, i64 528, !22, i64 532, !7, i64 536, !15, i64 540, !22, i64 544, !11, i64 552, !7, i64 560, !66, i64 564, !22, i64 568, !6, i64 572, !6, i64 580, !22, i64 588, !15, i64 592, !73, i64 600, !15, i64 608, !80, i64 616, !15, i64 624, !87, i64 632, !88, i64 640, !95, i64 648, !15, i64 656, !96, i64 664, !22, i64 672, !6, i64 676, !7, i64 712, !7, i64 716, !7, i64 720, !7, i64 724, !22, i64 728, !22, i64 732, !22, i64 736, !22, i64 740, !101, i64 744, !15, i64 864, !15, i64 865, !15, i64 866, !15, i64 867, !102, i64 872, !108, i64 880}
!110 = !{!109, !22, i64 492}
!111 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE17_Vector_impl_dataE", !32, i64 0, !32, i64 8, !32, i64 16}
!112 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !97, i64 0, !97, i64 8, !97, i64 16}
!113 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !112, i64 0}
!114 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !113, i64 0}
!115 = !{!"_ZTSSt6vectorIfSaIfEE", !114, i64 0}
!116 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !16, i64 0}
!117 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !116, i64 0}
!118 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !98, i64 0, !98, i64 8, !98, i64 16}
!119 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !118, i64 0}
!120 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !119, i64 0}
!121 = !{!"_ZTSSt6vectorIiSaIiEE", !120, i64 0}
!122 = !{!112, !97, i64 8}
!123 = !{!112, !97, i64 0}
!124 = !{!112, !97, i64 16}
!125 = !{!22, !22, i64 0}
!126 = !{!"p1 _ZTSN3gmx8internal16LocalAtomSetDataE", !16, i64 0}
!127 = !{!"_ZTSN3gmx12LocalAtomSetE", !126, i64 0}
!128 = !{!"_ZTSSt22_Optional_payload_baseISt17reference_wrapperIfEE", !6, i64 0, !15, i64 8}
!129 = !{!"_ZTSSt17_Optional_payloadISt17reference_wrapperIfELb1ELb1ELb1EE", !128, i64 0}
!130 = !{!"_ZTSSt14_Optional_baseISt17reference_wrapperIfELb1ELb1EE", !129, i64 0}
!131 = !{!"_ZTSSt8optionalISt17reference_wrapperIfEE", !130, i64 0}
!132 = !{!"_ZTSN3gmx12ArrayRefIterIfEE", !97, i64 0}
!133 = !{!"_ZTSN3gmx8ArrayRefIfEE", !132, i64 0, !132, i64 8}
!134 = !{!"p1 _ZTS11OriresMatEq", !16, i64 0}
!135 = !{!"_ZTSNSt12_Vector_baseI11OriresMatEqSaIS0_EE17_Vector_impl_dataE", !134, i64 0, !134, i64 8, !134, i64 16}
!136 = !{!"_ZTSNSt12_Vector_baseI11OriresMatEqSaIS0_EE12_Vector_implE", !135, i64 0}
!137 = !{!"_ZTSSt12_Vector_baseI11OriresMatEqSaIS0_EE", !136, i64 0}
!138 = !{!"_ZTSSt6vectorI11OriresMatEqSaIS0_EE", !137, i64 0}
!139 = !{!"_ZTSSt5arrayIN3gmx11BasicVectorIdEELm3EE", !6, i64 0}
!140 = !{!"_ZTSSt5arrayIdLm3EE", !6, i64 0}
!141 = !{!"_ZTS12t_oriresdata", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !127, i64 32, !36, i64 40, !115, i64 64, !36, i64 88, !131, i64 112, !133, i64 128, !6, i64 144, !97, i64 184, !97, i64 192, !97, i64 200, !97, i64 208, !115, i64 216, !133, i64 240, !115, i64 256, !133, i64 280, !115, i64 296, !22, i64 320, !138, i64 328, !115, i64 352, !139, i64 376, !140, i64 448, !139, i64 472}
!142 = !{!141, !7, i64 16}
!143 = !{!11, !11, i64 0}
!144 = !{!"llvm.loop.mustprogress"}
!145 = !{!"vtable pointer", !5, i64 0}
end_hunk_0
