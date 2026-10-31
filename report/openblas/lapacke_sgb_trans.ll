Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/lapacke_sgb_trans?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @LAPACKE_sgb_trans(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, i32 noundef %6, ptr nofree noundef writeonly captures(address_is_null) %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %5 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %7 to i64                  ; 2 uses
  %i.c = icmp eq ptr %5, null
  %i.d = icmp eq ptr %7, null
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %0, label %.loopexit [
    i32 102, label %.preheader
    i32 101, label %.preheader107
  ]

.preheader107:                                    ; preds = %bb.b
  %i.e = tail call i32 @llvm.smin.i32(i32 %2, i32 %6) ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph111, label %.loopexit

.lr.ph111:                                        ; preds = %.preheader107
  %i.g = add nsw i32 %4, %1
  %i.h = add nsw i32 %4, %3                       ; 2 uses
  %i.i = add nsw i32 %i.h, 1
  %i.j = sext i32 %6 to i64
  %i.k = sext i32 %8 to i64                       ; 2 uses
  %wide.trip.count = zext nneg i32 %i.e to i64
  %9 = sub i64 %i.b, %i.a
  %10 = shl nsw i64 %i.k, 2
  %11 = add nsw i64 %10, -4
  %ident.check.not = icmp ne i32 %6, 1
  %invariant.op = add i64 %9, -1
  br label %bb.d

.preheader:                                       ; preds = %bb.b
  %i.l = tail call i32 @llvm.smin.i32(i32 %8, i32 %2) ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph119, label %.loopexit

.lr.ph119:                                        ; preds = %.preheader
  %i.n = add nsw i32 %4, %1
  %i.o = add nsw i32 %4, %3                       ; 2 uses
  %i.p = add nsw i32 %i.o, 1
  %i.q = sext i32 %6 to i64                       ; 2 uses
  %i.r = sext i32 %8 to i64
  %wide.trip.count137 = zext nneg i32 %i.l to i64
  %12 = sub i64 %i.b, %i.a
  %13 = shl nsw i64 %i.q, 2
  %i.s = sub nsw i64 4, %13
  %ident.check157.not = icmp ne i32 %8, 1
  %invariant.op197 = add i64 %12, -1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph119, %._crit_edge115
  %indvars.iv134 = phi i64 [ 0, %.lr.ph119 ], [ %indvars.iv.next135, %._crit_edge115 ] ; 6 uses
  %indvars.iv127 = phi i32 [ %4, %.lr.ph119 ], [ %indvars.iv.next128, %._crit_edge115 ] ; 3 uses
  %i.t = trunc i64 %indvars.iv134 to i32
  %i.u = sub i32 %4, %i.t
  %i.v = tail call i32 @llvm.smax.i32(i32 %i.u, i32 0)
  %i.w = trunc nuw nsw i64 %indvars.iv134 to i32
  %i.x = sub i32 %i.n, %i.w                       ; 2 uses
  %.not103 = icmp sgt i32 %i.x, %i.o
  %. = select i1 %.not103, i32 %i.p, i32 %i.x
  %i.y = tail call i32 @llvm.smin.i32(i32 %6, i32 %.) ; 2 uses
  %i.z = icmp slt i32 %i.v, %i.y
  br i1 %i.z, label %iter.check176, label %._crit_edge115

iter.check176:                                    ; preds = %bb.c
  %14 = mul i64 %i.s, %indvars.iv134
  %smax160 = tail call i32 @llvm.smax.i32(i32 %indvars.iv127, i32 0)
  %i.aa = zext nneg i32 %smax160 to i64           ; 2 uses
  %i.ab = add nuw nsw i64 %i.aa, 1
  %smax129 = tail call i32 @llvm.smax.i32(i32 %indvars.iv127, i32 0)
  %i.ac = zext nneg i32 %smax129 to i64           ; 5 uses
  %i.ad = mul nsw i64 %indvars.iv134, %i.q
  %i.ae = getelementptr [4 x i8], ptr %5, i64 %i.ad ; 3 uses
  %invariant.gep116 = getelementptr [4 x i8], ptr %7, i64 %indvars.iv134 ; 3 uses
  %sext132 = zext nneg i32 %i.y to i64            ; 2 uses
  %umax161 = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 %sext132)
  %i.af = sub nsw i64 %umax161, %i.aa             ; 7 uses
  %min.iters.check162 = icmp ult i64 %i.af, 8
  %or.cond190.not195 = or i1 %min.iters.check162, %ident.check157.not
  %.reass198 = add i64 %14, %invariant.op197
  %diff.check159 = icmp ult i64 %.reass198, 127
  %or.cond191 = select i1 %or.cond190.not195, i1 true, i1 %diff.check159
  br i1 %or.cond191, label %vec.epilog.scalar.ph178.preheader, label %vector.main.loop.iter.check163

vector.main.loop.iter.check163:                   ; preds = %iter.check176
  %min.iters.check164 = icmp ult i64 %i.af, 32
  br i1 %min.iters.check164, label %vec.epilog.ph180, label %vector.ph165

vector.ph165:                                     ; preds = %vector.main.loop.iter.check163
  %i.ag = and i64 %i.af, 24
  %n.vec166 = and i64 %i.af, -32                  ; 4 uses
  %i.ah = add nsw i64 %n.vec166, %i.ac
  br label %vector.body167

vector.body167:                                   ; preds = %vector.ph165, %vector.body167
  %index168 = phi i64 [ 0, %vector.ph165 ], [ %index.next173, %vector.body167 ] ; 2 uses
  %i.ai = add nuw i64 %index168, %i.ac            ; 2 uses
  %i.aj = getelementptr [4 x i8], ptr %i.ae, i64 %i.ai ; 4 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 32
  %i.al = getelementptr i8, ptr %i.aj, i64 64
  %i.am = getelementptr i8, ptr %i.aj, i64 96
  %wide.load169 = load <8 x float>, ptr %i.aj, align 4, !tbaa !17
  %wide.load170 = load <8 x float>, ptr %i.ak, align 4, !tbaa !17
  %wide.load171 = load <8 x float>, ptr %i.al, align 4, !tbaa !17
  %wide.load172 = load <8 x float>, ptr %i.am, align 4, !tbaa !17
  %i.an = getelementptr [4 x i8], ptr %invariant.gep116, i64 %i.ai ; 4 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 32
  %i.ap = getelementptr i8, ptr %i.an, i64 64
  %i.aq = getelementptr i8, ptr %i.an, i64 96
  store <8 x float> %wide.load169, ptr %i.an, align 4, !tbaa !17
  store <8 x float> %wide.load170, ptr %i.ao, align 4, !tbaa !17
  store <8 x float> %wide.load171, ptr %i.ap, align 4, !tbaa !17
  store <8 x float> %wide.load172, ptr %i.aq, align 4, !tbaa !17
  %index.next173 = add nuw i64 %index168, 32      ; 2 uses
  %i.ar = icmp eq i64 %index.next173, %n.vec166
  br i1 %i.ar, label %middle.block174, label %vector.body167, !llvm.loop !8

middle.block174:                                  ; preds = %vector.body167
  %cmp.n175 = icmp eq i64 %i.af, %n.vec166
  br i1 %cmp.n175, label %._crit_edge115, label %vec.epilog.iter.check177

vec.epilog.iter.check177:                         ; preds = %middle.block174
  %min.epilog.iters.check179 = icmp eq i64 %i.ag, 0
  br i1 %min.epilog.iters.check179, label %vec.epilog.scalar.ph178.preheader, label %vec.epilog.ph180, !prof !21

vec.epilog.ph180:                                 ; preds = %vector.main.loop.iter.check163, %vec.epilog.iter.check177
  %vec.epilog.resume.val181 = phi i64 [ %n.vec166, %vec.epilog.iter.check177 ], [ 0, %vector.main.loop.iter.check163 ]
  %n.vec182 = and i64 %i.af, -8                   ; 3 uses
  %i.as = add nsw i64 %n.vec182, %i.ac
  br label %vec.epilog.vector.body183

vec.epilog.vector.body183:                        ; preds = %vec.epilog.vector.body183, %vec.epilog.ph180
  %index184 = phi i64 [ %vec.epilog.resume.val181, %vec.epilog.ph180 ], [ %index.next186, %vec.epilog.vector.body183 ] ; 2 uses
  %i.at = add nuw i64 %index184, %i.ac            ; 2 uses
  %i.au = getelementptr [4 x i8], ptr %i.ae, i64 %i.at
  %wide.load185 = load <8 x float>, ptr %i.au, align 4, !tbaa !17
  %i.av = getelementptr [4 x i8], ptr %invariant.gep116, i64 %i.at
  store <8 x float> %wide.load185, ptr %i.av, align 4, !tbaa !17
  %index.next186 = add nuw i64 %index184, 8       ; 2 uses
  %i.aw = icmp eq i64 %index.next186, %n.vec182
  br i1 %i.aw, label %vec.epilog.middle.block187, label %vec.epilog.vector.body183, !llvm.loop !9

vec.epilog.middle.block187:                       ; preds = %vec.epilog.vector.body183
  %cmp.n188 = icmp eq i64 %i.af, %n.vec182
  br i1 %cmp.n188, label %._crit_edge115, label %vec.epilog.scalar.ph178.preheader

vec.epilog.scalar.ph178.preheader:                ; preds = %iter.check176, %vec.epilog.iter.check177, %vec.epilog.middle.block187
  %indvars.iv130.ph = phi i64 [ %i.ac, %iter.check176 ], [ %i.ah, %vec.epilog.iter.check177 ], [ %i.as, %vec.epilog.middle.block187 ]
  br label %vec.epilog.scalar.ph178

vec.epilog.scalar.ph178:                          ; preds = %vec.epilog.scalar.ph178.preheader, %vec.epilog.scalar.ph178
  %indvars.iv130 = phi i64 [ %indvars.iv.next131, %vec.epilog.scalar.ph178 ], [ %indvars.iv130.ph, %vec.epilog.scalar.ph178.preheader ] ; 3 uses
  %i.ax = getelementptr [4 x i8], ptr %i.ae, i64 %indvars.iv130
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !17
  %i.az = mul nuw nsw i64 %indvars.iv130, %i.r
  %gep117 = getelementptr [4 x i8], ptr %invariant.gep116, i64 %i.az
  store float %i.ay, ptr %gep117, align 4, !tbaa !17
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %i.ba = icmp samesign ult i64 %indvars.iv.next131, %sext132
  br i1 %i.ba, label %vec.epilog.scalar.ph178, label %._crit_edge115, !llvm.loop !10

._crit_edge115:                                   ; preds = %vec.epilog.scalar.ph178, %middle.block174, %vec.epilog.middle.block187, %bb.c
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %indvars.iv.next128 = add i32 %indvars.iv127, -1
  %exitcond138.not = icmp eq i64 %indvars.iv.next135, %wide.trip.count137
  br i1 %exitcond138.not, label %.loopexit, label %bb.c, !llvm.loop !11

bb.d:                                             ; preds = %.lr.ph111, %._crit_edge
  %indvars.iv124 = phi i64 [ 0, %.lr.ph111 ], [ %indvars.iv.next125, %._crit_edge ] ; 6 uses
  %indvars.iv = phi i32 [ %4, %.lr.ph111 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.bb = trunc i64 %indvars.iv124 to i32
  %i.bc = sub i32 %4, %i.bb
  %i.bd = tail call i32 @llvm.smax.i32(i32 %i.bc, i32 0)
  %i.be = trunc nuw nsw i64 %indvars.iv124 to i32
  %i.bf = sub i32 %i.g, %i.be                     ; 2 uses
  %.not = icmp sgt i32 %i.bf, %i.h
  %.105 = select i1 %.not, i32 %i.i, i32 %i.bf
  %i.bg = tail call i32 @llvm.smin.i32(i32 %8, i32 %.105) ; 2 uses
  %i.bh = icmp slt i32 %i.bd, %i.bg
  br i1 %i.bh, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.d
  %15 = mul i64 %11, %indvars.iv124
  %smax146 = tail call i32 @llvm.smax.i32(i32 %indvars.iv, i32 0)
  %i.bi = zext nneg i32 %smax146 to i64           ; 2 uses
  %i.bj = add nuw nsw i64 %i.bi, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %indvars.iv, i32 0)
  %i.bk = zext nneg i32 %smax to i64              ; 5 uses
  %invariant.gep = getelementptr [4 x i8], ptr %5, i64 %indvars.iv124 ; 3 uses
  %i.bl = mul nsw i64 %indvars.iv124, %i.k
  %i.bm = getelementptr [4 x i8], ptr %7, i64 %i.bl ; 3 uses
  %sext = zext nneg i32 %i.bg to i64              ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bj, i64 %sext)
  %i.bn = sub nsw i64 %umax, %i.bi                ; 7 uses
  %min.iters.check = icmp ult i64 %i.bn, 8
  %or.cond192.not194 = or i1 %min.iters.check, %ident.check.not
  %.reass = add i64 %15, %invariant.op
  %diff.check = icmp ult i64 %.reass, 127
  %or.cond193 = select i1 %or.cond192.not194, i1 true, i1 %diff.check
  br i1 %or.cond193, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check147 = icmp ult i64 %i.bn, 32
  br i1 %min.iters.check147, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bo = and i64 %i.bn, 24
  %n.vec = and i64 %i.bn, -32                     ; 4 uses
  %i.bp = add nsw i64 %n.vec, %i.bk
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bq = add nuw i64 %index, %i.bk               ; 2 uses
  %i.br = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bq ; 4 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 32
  %i.bt = getelementptr i8, ptr %i.br, i64 64
  %i.bu = getelementptr i8, ptr %i.br, i64 96
  %wide.load = load <8 x float>, ptr %i.br, align 4, !tbaa !17
  %wide.load148 = load <8 x float>, ptr %i.bs, align 4, !tbaa !17
  %wide.load149 = load <8 x float>, ptr %i.bt, align 4, !tbaa !17
  %wide.load150 = load <8 x float>, ptr %i.bu, align 4, !tbaa !17
  %i.bv = getelementptr [4 x i8], ptr %i.bm, i64 %i.bq ; 4 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 32
  %i.bx = getelementptr i8, ptr %i.bv, i64 64
  %i.by = getelementptr i8, ptr %i.bv, i64 96
  store <8 x float> %wide.load, ptr %i.bv, align 4, !tbaa !17
  store <8 x float> %wide.load148, ptr %i.bw, align 4, !tbaa !17
  store <8 x float> %wide.load149, ptr %i.bx, align 4, !tbaa !17
  store <8 x float> %wide.load150, ptr %i.by, align 4, !tbaa !17
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bn, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bo, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !21

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec151 = and i64 %i.bn, -8                   ; 3 uses
  %i.ca = add nsw i64 %n.vec151, %i.bk
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index152 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next154, %vec.epilog.vector.body ] ; 2 uses
  %i.cb = add nuw i64 %index152, %i.bk            ; 2 uses
  %i.cc = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.cb
  %wide.load153 = load <8 x float>, ptr %i.cc, align 4, !tbaa !17
  %i.cd = getelementptr [4 x i8], ptr %i.bm, i64 %i.cb
  store <8 x float> %wide.load153, ptr %i.cd, align 4, !tbaa !17
  %index.next154 = add nuw i64 %index152, 8       ; 2 uses
  %i.ce = icmp eq i64 %index.next154, %n.vec151
  br i1 %i.ce, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !13

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n155 = icmp eq i64 %i.bn, %n.vec151
  br i1 %cmp.n155, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv121.ph = phi i64 [ %i.bk, %iter.check ], [ %i.bp, %vec.epilog.iter.check ], [ %i.ca, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv121 = phi i64 [ %indvars.iv.next122, %vec.epilog.scalar.ph ], [ %indvars.iv121.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.cf = mul nuw nsw i64 %indvars.iv121, %i.j
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.cf
  %i.cg = load float, ptr %gep, align 4, !tbaa !17
  %i.ch = getelementptr [4 x i8], ptr %i.bm, i64 %indvars.iv121
  store float %i.cg, ptr %i.ch, align 4, !tbaa !17
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %i.ci = icmp samesign ult i64 %indvars.iv.next122, %sext
  br i1 %i.ci, label %vec.epilog.scalar.ph, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.d
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %indvars.iv.next = add i32 %indvars.iv, -1
  %exitcond.not = icmp eq i64 %indvars.iv.next125, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !15

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge115, %.preheader107, %.preheader, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !18, !19, !20}
!9 = distinct !{!9, !18, !19, !20}
!10 = distinct !{!10, !18, !19}
!11 = distinct !{!11, !18}
!12 = distinct !{!12, !18, !19, !20}
!13 = distinct !{!13, !18, !19, !20}
!14 = distinct !{!14, !18, !19}
!15 = distinct !{!15, !18}
!16 = !{!"float", !4, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"llvm.loop.isvectorized", i32 1}
!20 = !{!"llvm.loop.unroll.runtime.disable"}
!21 = !{!"branch_weights", i32 8, i32 24}
end_hunk_0
