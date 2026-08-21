begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define noundef i32 @dsyrk_kernel_L(i64 noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1056 x double], align 16         ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = add nsw i64 %8, %0
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i64 %1, %8
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @dgemm_kernel(i64 noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7) #4 ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp sgt i64 %8, 0
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @dgemm_kernel(i64 noundef %0, i64 noundef %8, i64 noundef %2, double noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7) #4 ; 0 uses
  %i.h = sub nsw i64 %1, %8                       ; 2 uses
  %i.i = icmp slt i64 %i.h, 1
  br i1 %i.i, label %.loopexit, label %._crit_edge158

._crit_edge158:                                   ; preds = %bb.e
  %i.j = mul nsw i64 %8, %7
  %i.k = getelementptr inbounds [8 x i8], ptr %6, i64 %i.j
  %i.l = mul nsw i64 %8, %2
  %i.m = getelementptr inbounds [8 x i8], ptr %5, i64 %i.l
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge158, %bb.d
  %.0138 = phi i64 [ %i.h, %._crit_edge158 ], [ %1, %bb.d ] ; 2 uses
  %.0134 = phi ptr [ %i.m, %._crit_edge158 ], [ %5, %bb.d ] ; 2 uses
  %.0132 = phi ptr [ %i.k, %._crit_edge158 ], [ %6, %bb.d ] ; 2 uses
  %.0130 = phi i64 [ 0, %._crit_edge158 ], [ %8, %bb.d ] ; 4 uses
  %i.n = add nsw i64 %.0130, %0                   ; 5 uses
  %i.o = icmp sgt i64 %.0138, %i.n
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = icmp slt i64 %i.n, 1
  br i1 %i.p, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1139 = phi i64 [ %i.n, %bb.g ], [ %.0138, %bb.f ] ; 11 uses
  %i.q = icmp slt i64 %.0130, 0
  br i1 %i.q, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.r = mul i64 %2, %.0130
  %i.s = sub i64 0, %i.r
  %i.t = getelementptr inbounds [8 x i8], ptr %4, i64 %i.s
  %i.u = sub i64 0, %.0130
  %i.v = getelementptr inbounds [8 x i8], ptr %.0132, i64 %i.u
  %i.w = icmp slt i64 %i.n, 1
  br i1 %i.w, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0136 = phi i64 [ %i.n, %bb.i ], [ %0, %bb.h ] ; 3 uses
  %.0135 = phi ptr [ %i.t, %bb.i ], [ %4, %bb.h ] ; 3 uses
  %.1133 = phi ptr [ %i.v, %bb.i ], [ %.0132, %bb.h ] ; 5 uses
  %i.x = icmp sgt i64 %.0136, %.1139
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.y = sub nsw i64 %.0136, %.1139
  %i.z = mul nsw i64 %.1139, %2
  %i.aa = getelementptr inbounds [8 x i8], ptr %.0135, i64 %i.z
  %i.ab = getelementptr inbounds [8 x i8], ptr %.1133, i64 %.1139
  %i.ac = tail call i32 @dgemm_kernel(i64 noundef %i.y, i64 noundef %.1139, i64 noundef %2, double noundef %3, ptr noundef %i.aa, ptr noundef %.0134, ptr noundef %i.ab, i64 noundef %7) #4 ; 0 uses
  %i.ad = icmp slt i64 %.1139, 1
  br i1 %i.ad, label %.loopexit, label %.lr.ph.preheader

bb.l:                                             ; preds = %bb.j
  %i.ae = icmp sgt i64 %.1139, 0
  br i1 %i.ae, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.k, %bb.l
  %.1137166 = phi i64 [ %.0136, %bb.l ], [ %.1139, %bb.k ]
  %i.af = shl i64 %7, 8
  %i.ag = add i64 %i.af, 256
  %i.ah = shl i64 %7, 3
  %i.ai = add i64 %i.ah, 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %.1139, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %.0127156 = phi i64 [ 0, %.lr.ph.preheader ], [ %i.db, %._crit_edge ] ; 7 uses
  %smin172 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 32)
  %i.aj = mul i64 %i.ag, %indvar                  ; 2 uses
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 32) ; 2 uses
  %i.ak = shl i64 %smin, 3
  %i.al = add i64 %i.ak, 8
  %i.am = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 1)
  %i.an = call i64 @llvm.umin.i64(i64 %i.am, i64 32)
  %i.ao = sub nsw i64 %.1139, %.0127156           ; 2 uses
  %i.ap = call i64 @llvm.smin.i64(i64 %i.ao, i64 32) ; 11 uses
  %i.aq = call i32 @dgemm_beta(i64 noundef %i.ap, i64 noundef %i.ap, i64 noundef 0, double noundef 0.000000e+00, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.ap) #4 ; 0 uses
  %i.ar = mul nsw i64 %.0127156, %2               ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %.0135, i64 %i.ar
  %i.at = getelementptr inbounds [8 x i8], ptr %.0134, i64 %i.ar ; 2 uses
  %i.au = call i32 @dgemm_kernel(i64 noundef %i.ap, i64 noundef %i.ap, i64 noundef %2, double noundef %3, ptr noundef %i.as, ptr noundef %i.at, ptr noundef nonnull %i.a, i64 noundef %i.ap) #4 ; 0 uses
  %i.av = mul nsw i64 %.0127156, %7               ; 2 uses
  %i.aw = icmp sgt i64 %i.ao, 0
  br i1 %i.aw, label %.preheader.preheader, label %._crit_edge

.preheader.preheader:                             ; preds = %.lr.ph
  %i.ax = getelementptr [8 x i8], ptr %.1133, i64 %.0127156
  %i.ay = getelementptr [8 x i8], ptr %i.ax, i64 %i.av
  %i.az = getelementptr i8, ptr %.1133, i64 %i.aj
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  %i.bb = getelementptr i8, ptr %.1133, i64 %i.aj
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %.loopexit189
  %.0155 = phi ptr [ %i.co, %.loopexit189 ], [ %i.a, %.preheader.preheader ] ; 4 uses
  %.0126154 = phi ptr [ %i.cp, %.loopexit189 ], [ %i.ay, %.preheader.preheader ] ; 4 uses
  %.0128153 = phi i64 [ %i.cq, %.loopexit189 ], [ 0, %.preheader.preheader ] ; 13 uses
  %i.bc = add nuw i64 %.0128153, 1
  %smax173 = call i64 @llvm.smax.i64(i64 %smin172, i64 %i.bc)
  %i.bd = sub i64 %smax173, %.0128153             ; 7 uses
  %min.iters.check = icmp ult i64 %i.bd, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.be = mul i64 %i.al, %.0128153                ; 2 uses
  %i.bf = getelementptr i8, ptr %i.a, i64 %i.be
  %scevgep170 = getelementptr i8, ptr %i.bf, i64 8
  %i.bg = add nuw i64 %.0128153, 1
  %smax = call i64 @llvm.smax.i64(i64 %smin, i64 %i.bg)
  %i.bh = xor i64 %.0128153, -1
  %i.bi = add i64 %smax, %i.bh
  %i.bj = shl nsw i64 %i.bi, 3                    ; 2 uses
  %scevgep171 = getelementptr i8, ptr %scevgep170, i64 %i.bj
  %scevgep169 = getelementptr i8, ptr %i.a, i64 %i.be
  %i.bk = mul i64 %i.ai, %.0128153                ; 2 uses
  %scevgep167 = getelementptr i8, ptr %i.ba, i64 %i.bk
  %scevgep168 = getelementptr i8, ptr %scevgep167, i64 %i.bj
  %scevgep = getelementptr i8, ptr %i.bb, i64 %i.bk
  %bound0 = icmp ult ptr %scevgep, %scevgep171
  %bound1 = icmp ult ptr %scevgep169, %scevgep168
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check174 = icmp ult i64 %i.bd, 16
  br i1 %min.iters.check174, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bl = and i64 %i.bd, 12
  %n.vec = and i64 %i.bd, -16                     ; 4 uses
  %i.bm = add i64 %.0128153, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bn = add nuw i64 %.0128153, %index           ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.0155, i64 %i.bn ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 96
  %wide.load = load <4 x double>, ptr %i.bo, align 8, !tbaa !8, !alias.scope !10
  %wide.load175.a = load <4 x double>, ptr %i.bp, align 8, !tbaa !8, !alias.scope !10
  %wide.load176.a = load <4 x double>, ptr %i.bq, align 8, !tbaa !8, !alias.scope !10
  %wide.load177.a = load <4 x double>, ptr %i.br, align 8, !tbaa !8, !alias.scope !10
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.0126154, i64 %i.bn ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 64 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 96 ; 2 uses
  %wide.load178.a = load <4 x double>, ptr %i.bs, align 8, !tbaa !8, !alias.scope !13, !noalias !10
  %wide.load179.a = load <4 x double>, ptr %i.bt, align 8, !tbaa !8, !alias.scope !13, !noalias !10
  %wide.load180.a = load <4 x double>, ptr %i.bu, align 8, !tbaa !8, !alias.scope !13, !noalias !10
  %wide.load181 = load <4 x double>, ptr %i.bv, align 8, !tbaa !8, !alias.scope !13, !noalias !10
  %i.bw = fadd <4 x double> %wide.load, %wide.load178.a
  %i.bx = fadd <4 x double> %wide.load175.a, %wide.load179.a
  %i.by = fadd <4 x double> %wide.load176.a, %wide.load180.a
  %i.bz = fadd <4 x double> %wide.load177.a, %wide.load181
  store <4 x double> %i.bw, ptr %i.bs, align 8, !tbaa !8, !alias.scope !13, !noalias !10
  store <4 x double> %i.bx, ptr %i.bt, align 8, !tbaa !8, !alias.scope !13, !noalias !10
  store <4 x double> %i.by, ptr %i.bu, align 8, !tbaa !8, !alias.scope !13, !noalias !10
  store <4 x double> %i.bz, ptr %i.bv, align 8, !tbaa !8, !alias.scope !13, !noalias !10
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bd, %n.vec
  br i1 %cmp.n, label %.loopexit189, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bl, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !19

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec182 = and i64 %i.bd, -4                   ; 3 uses
  %i.cb = add i64 %.0128153, %n.vec182
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index183 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next186, %vec.epilog.vector.body ] ; 2 uses
  %i.cc = add nuw i64 %.0128153, %index183        ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.0155, i64 %i.cc
  %wide.load184.a = load <4 x double>, ptr %i.cd, align 8, !tbaa !8, !alias.scope !10
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.0126154, i64 %i.cc ; 2 uses
  %wide.load185 = load <4 x double>, ptr %i.ce, align 8, !tbaa !8, !alias.scope !13, !noalias !10
  %i.cf = fadd <4 x double> %wide.load184.a, %wide.load185
  store <4 x double> %i.cf, ptr %i.ce, align 8, !tbaa !8, !alias.scope !13, !noalias !10
  %index.next186 = add nuw i64 %index183, 4       ; 2 uses
  %i.cg = icmp eq i64 %index.next186, %n.vec182
  br i1 %i.cg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !20

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n187 = icmp eq i64 %i.bd, %n.vec182
  br i1 %cmp.n187, label %.loopexit189, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0129152.ph = phi i64 [ %.0128153, %iter.check ], [ %.0128153, %vector.memcheck ], [ %i.bm, %vec.epilog.iter.check ], [ %i.cb, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.0129152 = phi i64 [ %i.cm, %vec.epilog.scalar.ph ], [ %.0129152.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.0155, i64 %.0129152
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !8
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.0126154, i64 %.0129152 ; 2 uses
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !8
  %i.cl = fadd double %i.ci, %i.ck
  store double %i.cl, ptr %i.cj, align 8, !tbaa !8
  %i.cm = add nuw nsw i64 %.0129152, 1            ; 2 uses
  %i.cn = icmp slt i64 %i.cm, %i.ap
  br i1 %i.cn, label %vec.epilog.scalar.ph, label %.loopexit189, !llvm.loop !21

.loopexit189:                                     ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.0155, i64 %i.ap
  %i.cp = getelementptr inbounds [8 x i8], ptr %.0126154, i64 %7
  %i.cq = add nuw nsw i64 %.0128153, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.cq, %i.an
  br i1 %exitcond.not, label %._crit_edge, label %iter.check, !llvm.loop !22

._crit_edge:                                      ; preds = %.loopexit189, %.lr.ph
  %sext = shl i64 %.0127156, 32
  %i.cr = ashr exact i64 %sext, 32
  %i.cs = add i64 %i.ap, %i.cr
  %i.ct = sub i64 %.1137166, %i.cs
  %i.cu = add i64 %i.ap, %.0127156
  %sext149 = shl i64 %i.cu, 32
  %i.cv = ashr exact i64 %sext149, 32             ; 2 uses
  %i.cw = mul nsw i64 %i.cv, %2
  %i.cx = getelementptr inbounds [8 x i8], ptr %.0135, i64 %i.cw
  %i.cy = getelementptr [8 x i8], ptr %.1133, i64 %i.cv
  %i.cz = getelementptr [8 x i8], ptr %i.cy, i64 %i.av
  %i.da = call i32 @dgemm_kernel(i64 noundef %i.ct, i64 noundef %i.ap, i64 noundef %2, double noundef %3, ptr noundef %i.cx, ptr noundef %i.at, ptr noundef %i.cz, i64 noundef %7) #4 ; 0 uses
  %i.db = add nuw nsw i64 %.0127156, 32           ; 2 uses
  %i.dc = icmp slt i64 %i.db, %.1139
  %indvars.iv.next = add i64 %indvars.iv, -32
  %indvar.next = add i64 %indvar, 1
  br i1 %i.dc, label %.lr.ph, label %.loopexit, !llvm.loop !23

.loopexit:                                        ; preds = %._crit_edge, %bb.l, %bb.k, %bb.i, %bb.g, %bb.e, %bb.a, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @dgemm_kernel(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @dgemm_beta(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !6, i64 0}
!10 = !{!11}
!11 = distinct !{!11, !12}
!12 = distinct !{!12, !"LVerDomain"}
!13 = !{!14}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !16, !17, !18}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = !{!"branch_weights", i32 4, i32 12}
!20 = distinct !{!20, !16, !17, !18}
!21 = distinct !{!21, !16, !17}
!22 = distinct !{!22, !16}
!23 = distinct !{!23, !16}
end_hunk_0
