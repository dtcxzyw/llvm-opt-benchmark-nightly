begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@next = internal unnamed_addr global i32 0, align 4
@table = internal unnamed_addr global [344 x i32] zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, -2147483648) i32 @glibc_compat_rand() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @next, align 4, !tbaa !4   ; 7 uses
  %i.b = icmp slt i32 %i.a, 3
  %.v = select i1 %i.b, i32 341, i32 -3
  %i.c = add nsw i32 %.v, %i.a
  %i.d = icmp slt i32 %i.a, 31
  %.v5 = select i1 %i.d, i32 313, i32 -31
  %i.e = add nsw i32 %.v5, %i.a
  %i.f = sext i32 %i.c to i64
  %i.g = getelementptr inbounds [4 x i8], ptr @table, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4
  %i.i = sext i32 %i.e to i64
  %i.j = getelementptr inbounds [4 x i8], ptr @table, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4
  %i.l = add i32 %i.k, %i.h                       ; 2 uses
  %i.m = sext i32 %i.a to i64
  %i.n = getelementptr inbounds [4 x i8], ptr @table, i64 %i.m
  store i32 %i.l, ptr %i.n, align 4, !tbaa !4
  %i.o = lshr i32 %i.l, 1
  %i.p = add nsw i32 %i.a, 1
  %i.q = icmp sgt i32 %i.a, 342
  %spec.store.select = select i1 %i.q, i32 0, i32 %i.p
  store i32 %spec.store.select, ptr @next, align 4
  ret i32 %i.o
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @glibc_compat_srand(i32 noundef %0) local_unnamed_addr #1 {
.preheader21.preheader:
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %0, i32 1) ; 2 uses
  store i32 %spec.store.select, ptr @table, align 16, !tbaa !4
  %i.a = zext i32 %spec.store.select to i64
  %i.b = mul nuw nsw i64 %i.a, 16807
  %i.c = urem i64 %i.b, 2147483647                ; 2 uses
  %i.d = trunc nuw nsw i64 %i.c to i32
  store i32 %i.d, ptr getelementptr inbounds nuw (i8, ptr @table, i64 4), align 4, !tbaa !4
  %i.e = mul nuw nsw i64 %i.c, 16807
  %i.f = urem i64 %i.e, 2147483647                ; 2 uses
  %i.g = trunc nuw nsw i64 %i.f to i32
  store i32 %i.g, ptr getelementptr inbounds nuw (i8, ptr @table, i64 8), align 8, !tbaa !4
  %i.h = mul nuw nsw i64 %i.f, 16807
  %i.i = urem i64 %i.h, 2147483647                ; 2 uses
  %i.j = trunc nuw nsw i64 %i.i to i32
  store i32 %i.j, ptr getelementptr inbounds nuw (i8, ptr @table, i64 12), align 4, !tbaa !4
  %i.k = mul nuw nsw i64 %i.i, 16807
  %i.l = urem i64 %i.k, 2147483647                ; 2 uses
  %i.m = trunc nuw nsw i64 %i.l to i32
  store i32 %i.m, ptr getelementptr inbounds nuw (i8, ptr @table, i64 16), align 16, !tbaa !4
  %i.n = mul nuw nsw i64 %i.l, 16807
  %i.o = urem i64 %i.n, 2147483647                ; 2 uses
  %i.p = trunc nuw nsw i64 %i.o to i32
  store i32 %i.p, ptr getelementptr inbounds nuw (i8, ptr @table, i64 20), align 4, !tbaa !4
  %i.q = mul nuw nsw i64 %i.o, 16807
  %i.r = urem i64 %i.q, 2147483647                ; 2 uses
  %i.s = trunc nuw nsw i64 %i.r to i32
  store i32 %i.s, ptr getelementptr inbounds nuw (i8, ptr @table, i64 24), align 8, !tbaa !4
  %i.t = mul nuw nsw i64 %i.r, 16807
  %i.u = urem i64 %i.t, 2147483647                ; 2 uses
  %i.v = trunc nuw nsw i64 %i.u to i32
  store i32 %i.v, ptr getelementptr inbounds nuw (i8, ptr @table, i64 28), align 4, !tbaa !4
  %i.w = mul nuw nsw i64 %i.u, 16807
  %i.x = urem i64 %i.w, 2147483647                ; 2 uses
  %i.y = trunc nuw nsw i64 %i.x to i32
  store i32 %i.y, ptr getelementptr inbounds nuw (i8, ptr @table, i64 32), align 16, !tbaa !4
  %i.z = mul nuw nsw i64 %i.x, 16807
  %i.aa = urem i64 %i.z, 2147483647               ; 2 uses
  %i.ab = trunc nuw nsw i64 %i.aa to i32
  store i32 %i.ab, ptr getelementptr inbounds nuw (i8, ptr @table, i64 36), align 4, !tbaa !4
  %i.ac = mul nuw nsw i64 %i.aa, 16807
  %i.ad = urem i64 %i.ac, 2147483647              ; 2 uses
  %i.ae = trunc nuw nsw i64 %i.ad to i32
  store i32 %i.ae, ptr getelementptr inbounds nuw (i8, ptr @table, i64 40), align 8, !tbaa !4
  %i.af = mul nuw nsw i64 %i.ad, 16807
  %i.ag = urem i64 %i.af, 2147483647              ; 2 uses
  %i.ah = trunc nuw nsw i64 %i.ag to i32
  store i32 %i.ah, ptr getelementptr inbounds nuw (i8, ptr @table, i64 44), align 4, !tbaa !4
  %i.ai = mul nuw nsw i64 %i.ag, 16807
  %i.aj = urem i64 %i.ai, 2147483647              ; 2 uses
  %i.ak = trunc nuw nsw i64 %i.aj to i32
  store i32 %i.ak, ptr getelementptr inbounds nuw (i8, ptr @table, i64 48), align 16, !tbaa !4
  %i.al = mul nuw nsw i64 %i.aj, 16807
  %i.am = urem i64 %i.al, 2147483647              ; 2 uses
  %i.an = trunc nuw nsw i64 %i.am to i32
  store i32 %i.an, ptr getelementptr inbounds nuw (i8, ptr @table, i64 52), align 4, !tbaa !4
  %i.ao = mul nuw nsw i64 %i.am, 16807
  %i.ap = urem i64 %i.ao, 2147483647              ; 2 uses
  %i.aq = trunc nuw nsw i64 %i.ap to i32
  store i32 %i.aq, ptr getelementptr inbounds nuw (i8, ptr @table, i64 56), align 8, !tbaa !4
  %i.ar = mul nuw nsw i64 %i.ap, 16807
  %i.as = urem i64 %i.ar, 2147483647              ; 2 uses
  %i.at = trunc nuw nsw i64 %i.as to i32
  store i32 %i.at, ptr getelementptr inbounds nuw (i8, ptr @table, i64 60), align 4, !tbaa !4
  %i.au = mul nuw nsw i64 %i.as, 16807
  %i.av = urem i64 %i.au, 2147483647              ; 2 uses
  %i.aw = trunc nuw nsw i64 %i.av to i32
  store i32 %i.aw, ptr getelementptr inbounds nuw (i8, ptr @table, i64 64), align 16, !tbaa !4
  %i.ax = mul nuw nsw i64 %i.av, 16807
  %i.ay = urem i64 %i.ax, 2147483647              ; 2 uses
  %i.az = trunc nuw nsw i64 %i.ay to i32
  store i32 %i.az, ptr getelementptr inbounds nuw (i8, ptr @table, i64 68), align 4, !tbaa !4
  %i.ba = mul nuw nsw i64 %i.ay, 16807
  %i.bb = urem i64 %i.ba, 2147483647              ; 2 uses
  %i.bc = trunc nuw nsw i64 %i.bb to i32
  store i32 %i.bc, ptr getelementptr inbounds nuw (i8, ptr @table, i64 72), align 8, !tbaa !4
  %i.bd = mul nuw nsw i64 %i.bb, 16807
  %i.be = urem i64 %i.bd, 2147483647              ; 2 uses
  %i.bf = trunc nuw nsw i64 %i.be to i32
  store i32 %i.bf, ptr getelementptr inbounds nuw (i8, ptr @table, i64 76), align 4, !tbaa !4
  %i.bg = mul nuw nsw i64 %i.be, 16807
  %i.bh = urem i64 %i.bg, 2147483647              ; 2 uses
  %i.bi = trunc nuw nsw i64 %i.bh to i32
  store i32 %i.bi, ptr getelementptr inbounds nuw (i8, ptr @table, i64 80), align 16, !tbaa !4
  %i.bj = mul nuw nsw i64 %i.bh, 16807
  %i.bk = urem i64 %i.bj, 2147483647              ; 2 uses
  %i.bl = trunc nuw nsw i64 %i.bk to i32
  store i32 %i.bl, ptr getelementptr inbounds nuw (i8, ptr @table, i64 84), align 4, !tbaa !4
  %i.bm = mul nuw nsw i64 %i.bk, 16807
  %i.bn = urem i64 %i.bm, 2147483647              ; 2 uses
  %i.bo = trunc nuw nsw i64 %i.bn to i32
  store i32 %i.bo, ptr getelementptr inbounds nuw (i8, ptr @table, i64 88), align 8, !tbaa !4
  %i.bp = mul nuw nsw i64 %i.bn, 16807
  %i.bq = urem i64 %i.bp, 2147483647              ; 2 uses
  %i.br = trunc nuw nsw i64 %i.bq to i32
  store i32 %i.br, ptr getelementptr inbounds nuw (i8, ptr @table, i64 92), align 4, !tbaa !4
  %i.bs = mul nuw nsw i64 %i.bq, 16807
  %i.bt = urem i64 %i.bs, 2147483647              ; 2 uses
  %i.bu = trunc nuw nsw i64 %i.bt to i32
  store i32 %i.bu, ptr getelementptr inbounds nuw (i8, ptr @table, i64 96), align 16, !tbaa !4
  %i.bv = mul nuw nsw i64 %i.bt, 16807
  %i.bw = urem i64 %i.bv, 2147483647              ; 2 uses
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  store i32 %i.bx, ptr getelementptr inbounds nuw (i8, ptr @table, i64 100), align 4, !tbaa !4
  %i.by = mul nuw nsw i64 %i.bw, 16807
  %i.bz = urem i64 %i.by, 2147483647              ; 2 uses
  %i.ca = trunc nuw nsw i64 %i.bz to i32
  store i32 %i.ca, ptr getelementptr inbounds nuw (i8, ptr @table, i64 104), align 8, !tbaa !4
  %i.cb = mul nuw nsw i64 %i.bz, 16807
  %i.cc = urem i64 %i.cb, 2147483647              ; 2 uses
  %i.cd = trunc nuw nsw i64 %i.cc to i32
  store i32 %i.cd, ptr getelementptr inbounds nuw (i8, ptr @table, i64 108), align 4, !tbaa !4
  %i.ce = mul nuw nsw i64 %i.cc, 16807
  %i.cf = urem i64 %i.ce, 2147483647              ; 2 uses
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  store i32 %i.cg, ptr getelementptr inbounds nuw (i8, ptr @table, i64 112), align 16, !tbaa !4
  %i.ch = mul nuw nsw i64 %i.cf, 16807
  %i.ci = urem i64 %i.ch, 2147483647              ; 2 uses
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  store i32 %i.cj, ptr getelementptr inbounds nuw (i8, ptr @table, i64 116), align 4, !tbaa !4
  %i.ck = mul nuw nsw i64 %i.ci, 16807
  %i.cl = urem i64 %i.ck, 2147483647
  %i.cm = trunc nuw nsw i64 %i.cl to i32
  store i32 %i.cm, ptr getelementptr inbounds nuw (i8, ptr @table, i64 120), align 8, !tbaa !4
  %1 = load <3 x i32>, ptr @table, align 16, !tbaa !4
  store <3 x i32> %1, ptr getelementptr inbounds nuw (i8, ptr @table, i64 124), align 4, !tbaa !4
  br label %.preheader

bb.a:                                             ; preds = %.preheader
  store i32 0, ptr @next, align 4, !tbaa !4
  ret void

.preheader:                                       ; preds = %.preheader, %.preheader21.preheader
  %indvars.iv = phi i64 [ 34, %.preheader21.preheader ], [ %indvars.iv.next.1, %.preheader ] ; 3 uses
  %i.cn = getelementptr [4 x i8], ptr @table, i64 %indvars.iv ; 3 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 -124
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !4
  %i.cq = getelementptr i8, ptr %i.cn, i64 -12
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !4
  %i.cs = add i32 %i.cr, %i.cp
  store i32 %i.cs, ptr %i.cn, align 8, !tbaa !4
  %i.ct = getelementptr [4 x i8], ptr @table, i64 %indvars.iv ; 3 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 4
  %i.cv = getelementptr i8, ptr %i.ct, i64 -120
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !4
  %i.cx = getelementptr i8, ptr %i.ct, i64 -8
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !4
  %i.cz = add i32 %i.cy, %i.cw
  store i32 %i.cz, ptr %i.cu, align 4, !tbaa !4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 344
  br i1 %exitcond.not.1, label %bb.a, label %.preheader
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
end_hunk_0
