Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/rand_uniform?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @ossl_rand_uniform_uint32(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  switch i32 %1, label %bb.c [
    i32 0, label %bb.b
    i32 1, label %.loopexit
  ], !prof !11

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %2, align 4, !tbaa !10
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = call i32 @RAND_bytes_ex(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 4, i32 noundef 0) #3
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %2, align 4, !tbaa !10
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.d = zext i32 %1 to i64                       ; 11 uses
  %i.e = load i32, ptr %i.a, align 4, !tbaa !10
  %i.f = zext i32 %i.e to i64
  %i.g = mul nuw i64 %i.f, %i.d                   ; 2 uses
  %i.h = lshr i64 %i.g, 32
  %i.i = trunc nuw i64 %i.h to i32                ; 12 uses
  %i.j = trunc i64 %i.g to i32                    ; 2 uses
  %i.k = sub i32 0, %1
  %.not31 = icmp ugt i32 %i.j, %i.k
  br i1 %.not31, label %.preheader.preheader, label %.loopexit, !prof !12

.preheader.preheader:                             ; preds = %bb.e
  %i.l = call i32 @RAND_bytes_ex(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 4, i32 noundef 0) #3
  %i.m = icmp slt i32 %i.l, 1
  br i1 %i.m, label %bb.w, label %bb.x

.preheader.1:                                     ; preds = %bb.z
  %i.n = call i32 @RAND_bytes_ex(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 4, i32 noundef 0) #3
  %i.o = icmp slt i32 %i.n, 1
  br i1 %i.o, label %bb.w, label %bb.f

bb.f:                                             ; preds = %.preheader.1
  %i.p = trunc i64 %i.cx to i32
  %i.q = load i32, ptr %i.a, align 4, !tbaa !10
  %i.r = zext i32 %i.q to i64
  %i.s = mul nuw i64 %i.r, %i.d                   ; 2 uses
  %i.t = lshr i64 %i.s, 32
  %i.u = trunc nuw i64 %i.t to i32                ; 2 uses
  %i.v = add i32 %i.p, %i.u                       ; 2 uses
  %i.w = icmp ult i32 %i.v, %i.u
  br i1 %i.w, label %bb.y, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not32.1 = icmp eq i32 %i.v, -1
  br i1 %.not32.1, label %.preheader.2, label %.loopexit, !prof !12

.preheader.2:                                     ; preds = %bb.g
  %i.x = call i32 @RAND_bytes_ex(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 4, i32 noundef 0) #3
  %i.y = icmp slt i32 %i.x, 1
  br i1 %i.y, label %bb.w, label %bb.h

bb.h:                                             ; preds = %.preheader.2
  %i.z = trunc i64 %i.s to i32
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !10
  %i.ab = zext i32 %i.aa to i64
  %i.ac = mul nuw i64 %i.ab, %i.d                 ; 2 uses
  %i.ad = lshr i64 %i.ac, 32
  %i.ae = trunc nuw i64 %i.ad to i32              ; 2 uses
  %i.af = add i32 %i.z, %i.ae                     ; 2 uses
  %i.ag = icmp ult i32 %i.af, %i.ae
  br i1 %i.ag, label %bb.y, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not32.2 = icmp eq i32 %i.af, -1
  br i1 %.not32.2, label %.preheader.3, label %.loopexit, !prof !12

.preheader.3:                                     ; preds = %bb.i
  %i.ah = call i32 @RAND_bytes_ex(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 4, i32 noundef 0) #3
  %i.ai = icmp slt i32 %i.ah, 1
  br i1 %i.ai, label %bb.w, label %bb.j

bb.j:                                             ; preds = %.preheader.3
  %i.aj = trunc i64 %i.ac to i32
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !10
  %i.al = zext i32 %i.ak to i64
  %i.am = mul nuw i64 %i.al, %i.d                 ; 2 uses
  %i.an = lshr i64 %i.am, 32
  %i.ao = trunc nuw i64 %i.an to i32              ; 2 uses
  %i.ap = add i32 %i.aj, %i.ao                    ; 2 uses
  %i.aq = icmp ult i32 %i.ap, %i.ao
  br i1 %i.aq, label %bb.y, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not32.3 = icmp eq i32 %i.ap, -1
  br i1 %.not32.3, label %.preheader.4, label %.loopexit, !prof !12

.preheader.4:                                     ; preds = %bb.k
  %i.ar = call i32 @RAND_bytes_ex(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 4, i32 noundef 0) #3
  %i.as = icmp slt i32 %i.ar, 1
  br i1 %i.as, label %bb.w, label %bb.l

bb.l:                                             ; preds = %.preheader.4
  %i.at = trunc i64 %i.am to i32
  %i.au = load i32, ptr %i.a, align 4, !tbaa !10
  %i.av = zext i32 %i.au to i64
  %i.aw = mul nuw i64 %i.av, %i.d                 ; 2 uses
  %i.ax = lshr i64 %i.aw, 32
  %i.ay = trunc nuw i64 %i.ax to i32              ; 2 uses
  %i.az = add i32 %i.at, %i.ay                    ; 2 uses
  %i.ba = icmp ult i32 %i.az, %i.ay
  br i1 %i.ba, label %bb.y, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not32.4 = icmp eq i32 %i.az, -1
  br i1 %.not32.4, label %.preheader.5, label %.loopexit, !prof !12

.preheader.5:                                     ; preds = %bb.m
  %i.bb = call i32 @RAND_bytes_ex(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 4, i32 noundef 0) #3
  %i.bc = icmp slt i32 %i.bb, 1
  br i1 %i.bc, label %bb.w, label %bb.n

bb.n:                                             ; preds = %.preheader.5
  %i.bd = trunc i64 %i.aw to i32
  %i.be = load i32, ptr %i.a, align 4, !tbaa !10
  %i.bf = zext i32 %i.be to i64
  %i.bg = mul nuw i64 %i.bf, %i.d                 ; 2 uses
  %i.bh = lshr i64 %i.bg, 32
  %i.bi = trunc nuw i64 %i.bh to i32              ; 2 uses
  %i.bj = add i32 %i.bd, %i.bi                    ; 2 uses
  %i.bk = icmp ult i32 %i.bj, %i.bi
  br i1 %i.bk, label %bb.y, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not32.5 = icmp eq i32 %i.bj, -1
  br i1 %.not32.5, label %.preheader.6, label %.loopexit, !prof !12

.preheader.6:                                     ; preds = %bb.o
  %i.bl = call i32 @RAND_bytes_ex(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 4, i32 noundef 0) #3
  %i.bm = icmp slt i32 %i.bl, 1
  br i1 %i.bm, label %bb.w, label %bb.p

bb.p:                                             ; preds = %.preheader.6
  %i.bn = trunc i64 %i.bg to i32
  %i.bo = load i32, ptr %i.a, align 4, !tbaa !10
  %i.bp = zext i32 %i.bo to i64
  %i.bq = mul nuw i64 %i.bp, %i.d                 ; 2 uses
  %i.br = lshr i64 %i.bq, 32
  %i.bs = trunc nuw i64 %i.br to i32              ; 2 uses
  %i.bt = add i32 %i.bn, %i.bs                    ; 2 uses
  %i.bu = icmp ult i32 %i.bt, %i.bs
  br i1 %i.bu, label %bb.y, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not32.6 = icmp eq i32 %i.bt, -1
  br i1 %.not32.6, label %.preheader.7, label %.loopexit, !prof !12

.preheader.7:                                     ; preds = %bb.q
  %i.bv = call i32 @RAND_bytes_ex(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 4, i32 noundef 0) #3
  %i.bw = icmp slt i32 %i.bv, 1
  br i1 %i.bw, label %bb.w, label %bb.r

bb.r:                                             ; preds = %.preheader.7
  %i.bx = trunc i64 %i.bq to i32
  %i.by = load i32, ptr %i.a, align 4, !tbaa !10
  %i.bz = zext i32 %i.by to i64
  %i.ca = mul nuw i64 %i.bz, %i.d                 ; 2 uses
  %i.cb = lshr i64 %i.ca, 32
  %i.cc = trunc nuw i64 %i.cb to i32              ; 2 uses
  %i.cd = add i32 %i.bx, %i.cc                    ; 2 uses
  %i.ce = icmp ult i32 %i.cd, %i.cc
  br i1 %i.ce, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not32.7 = icmp eq i32 %i.cd, -1
  br i1 %.not32.7, label %.preheader.8, label %.loopexit, !prof !12

.preheader.8:                                     ; preds = %bb.s
  %i.cf = call i32 @RAND_bytes_ex(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 4, i32 noundef 0) #3
  %i.cg = icmp slt i32 %i.cf, 1
  br i1 %i.cg, label %bb.w, label %bb.t

bb.t:                                             ; preds = %.preheader.8
  %i.ch = trunc i64 %i.ca to i32
  %i.ci = load i32, ptr %i.a, align 4, !tbaa !10
  %i.cj = zext i32 %i.ci to i64
  %i.ck = mul nuw i64 %i.cj, %i.d                 ; 2 uses
  %i.cl = lshr i64 %i.ck, 32
  %i.cm = trunc nuw i64 %i.cl to i32              ; 2 uses
  %i.cn = add i32 %i.ch, %i.cm                    ; 2 uses
  %i.co = icmp ult i32 %i.cn, %i.cm
  br i1 %i.co, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not32.8 = icmp eq i32 %i.cn, -1
  br i1 %.not32.8, label %.preheader.9, label %.loopexit, !prof !12

.preheader.9:                                     ; preds = %bb.u
  %i.cp = call i32 @RAND_bytes_ex(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 4, i32 noundef 0) #3
  %i.cq = icmp slt i32 %i.cp, 1
  br i1 %i.cq, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.preheader.9
  %i.cr = trunc i64 %i.ck to i32
  %i.cs = load i32, ptr %i.a, align 4, !tbaa !10
  %3 = zext i32 %i.cs to i64
  %4 = mul nuw i64 %3, %i.d
  %5 = lshr i64 %4, 32
  %6 = trunc nuw i64 %5 to i32
  %i.ct = xor i32 %6, -1
  %i.cu = icmp ult i32 %i.ct, %i.cr
  br i1 %i.cu, label %bb.y, label %.loopexit

bb.w:                                             ; preds = %.preheader.9, %.preheader.8, %.preheader.7, %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  store i32 1, ptr %2, align 4, !tbaa !10
  br label %.loopexit

bb.x:                                             ; preds = %.preheader.preheader
  %i.cv = load i32, ptr %i.a, align 4, !tbaa !10
  %i.cw = zext i32 %i.cv to i64
  %i.cx = mul nuw i64 %i.cw, %i.d                 ; 2 uses
  %i.cy = lshr i64 %i.cx, 32
  %i.cz = trunc nuw i64 %i.cy to i32              ; 2 uses
  %i.da = add i32 %i.j, %i.cz                     ; 2 uses
  %i.db = icmp ult i32 %i.da, %i.cz
  br i1 %i.db, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.v, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.x
  %i.dc = add nuw i32 %i.i, 1
  br label %.loopexit

bb.z:                                             ; preds = %bb.x
  %.not32 = icmp eq i32 %i.da, -1
  br i1 %.not32, label %.preheader.1, label %.loopexit, !prof !12

.loopexit:                                        ; preds = %bb.v, %bb.z, %bb.g, %bb.i, %bb.k, %bb.m, %bb.o, %bb.q, %bb.s, %bb.u, %bb.e, %bb.a, %bb.y, %bb.w, %bb.d, %bb.b
  %.027 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %bb.w ], [ %i.dc, %bb.y ], [ %i.i, %bb.e ], [ %i.i, %bb.z ], [ %i.i, %bb.g ], [ %i.i, %bb.u ], [ %i.i, %bb.s ], [ %i.i, %bb.q ], [ %i.i, %bb.o ], [ %i.i, %bb.m ], [ %i.i, %bb.k ], [ %i.i, %bb.i ], [ %i.i, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i32 %.027
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @RAND_bytes_ex(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @ossl_rand_range_uint32(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %1, %2
  br i1 %i.a, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %3, align 4, !tbaa !10
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = sub nuw i32 %2, %1
  %i.c = tail call i32 @ossl_rand_uniform_uint32(ptr noundef %0, i32 noundef %i.b, ptr noundef %3)
  %i.d = add i32 %i.c, %1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.d, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!7, !7, i64 0}
!11 = !{!"branch_weights", i32 4000000, i32 2001, i32 2000}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_0
