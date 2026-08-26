Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/libclamav_rebuildpe?download=true
inline.NumInlined: 10
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [329 x i8] c"MZ\90\00\02\00\00\00\04\00\0F\00\FF\FF\00\00\B0\00\00\00\00\00\00\00@\00\1A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\D0\00\00\00\0E\1F\B4\09\BA\0D\00\CD!\B4L\CD!This file was created by ClamAV for internal use and should not be run.\0D\0AClamAV - A GPL virus scanner - http://www.clamav.net\0D\0A$\00\00\00PE\00\00L\01\FF\FFCLAM\00\00\00\00\00\00\00\00\E0\00\83\8F\0B\01\00\00\00\10\00\00\00\10\00\00\00\00\00\00\FF\FF\FF\FF\00\10\00\00\00\10\00\00\FF\FF\FF\FF\00\10\00\00\00\02\00\00\01\00\00\00\00\00\00\00\03\00\0A\00\00\00\00\00\00\10\00\00\00\04\00\00\00\00\00\00\02\00\00\00\00\00\10\00\00\10\00\00\00\00\10\00\00\10\00\00\00\00\00\00\10\00\00\00\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"empty\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c".clam%.2d\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @cli_rebuildpe(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = mul nsw i32 %2, 40                       ; 2 uses
  %i.b = add nsw i32 %i.a, 456                    ; 2 uses
  %i.c = sdiv i32 %i.b, 512
  %i.d = and i32 %i.b, 504
  %i.e = icmp ne i32 %i.d, 0
  %i.f = zext i1 %i.e to i32
  %i.g = add nsw i32 %i.c, %i.f                   ; 2 uses
  %i.h = shl nsw i32 %i.g, 9                      ; 2 uses
  %i.i = load i32, ptr %1, align 4, !tbaa !8
  %i.j = and i32 %i.g, 7
  %.not = icmp eq i32 %i.j, 0
  %i.k = select i1 %.not, i32 0, i32 4096
  %i.l = add i32 %i.k, %i.h
  %i.m = and i32 %i.l, -4096
  %i.n = icmp ugt i32 %i.i, %i.m                  ; 3 uses
  %i.o = zext i1 %i.n to i32
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = add i32 %i.a, 496                        ; 2 uses
  %i.q = sdiv i32 %i.p, 512
  %i.r = and i32 %i.p, 504
  %i.s = icmp ne i32 %i.r, 0
  %i.t = zext i1 %i.s to i32
  %i.u = add nsw i32 %i.q, %i.t
  %i.v = shl nsw i32 %i.u, 9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0101 = phi i32 [ %i.v, %bb.b ], [ %i.h, %bb.a ] ; 6 uses
  %i.w = add nsw i32 %2, %i.o                     ; 2 uses
  %i.x = icmp sgt i32 %i.w, 96
  br i1 %i.x, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.y = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %i.y, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader142, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bj, %vector.body ]
  %vec.phi140 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bk, %vector.body ]
  %i.z = getelementptr inbounds nuw [36 x i8], ptr %1, i64 %index
  %i.aa = getelementptr inbounds nuw [36 x i8], ptr %1, i64 %index
  %i.ab = getelementptr inbounds nuw [36 x i8], ptr %1, i64 %index
  %i.ac = getelementptr inbounds nuw [36 x i8], ptr %1, i64 %index
  %i.ad = getelementptr inbounds nuw [36 x i8], ptr %1, i64 %index
  %i.ae = getelementptr inbounds nuw [36 x i8], ptr %1, i64 %index
  %i.af = getelementptr inbounds nuw [36 x i8], ptr %1, i64 %index
  %i.ag = getelementptr inbounds nuw [36 x i8], ptr %1, i64 %index
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 84
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 120
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 156
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 192
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 228
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 264
  %i.ap = load i32, ptr %i.ah, align 4, !tbaa !10
  %i.aq = load i32, ptr %i.ai, align 4, !tbaa !10
  %i.ar = load i32, ptr %i.aj, align 4, !tbaa !10
  %i.as = load i32, ptr %i.ak, align 4, !tbaa !10
  %i.at = insertelement <4 x i32> poison, i32 %i.ap, i64 0
  %i.au = insertelement <4 x i32> %i.at, i32 %i.aq, i64 1
  %i.av = insertelement <4 x i32> %i.au, i32 %i.ar, i64 2
  %i.aw = insertelement <4 x i32> %i.av, i32 %i.as, i64 3
  %i.ax = load i32, ptr %i.al, align 4, !tbaa !10
  %i.ay = load i32, ptr %i.am, align 4, !tbaa !10
  %i.az = load i32, ptr %i.an, align 4, !tbaa !10
  %i.ba = load i32, ptr %i.ao, align 4, !tbaa !10
  %i.bb = insertelement <4 x i32> poison, i32 %i.ax, i64 0
  %i.bc = insertelement <4 x i32> %i.bb, i32 %i.ay, i64 1
  %i.bd = insertelement <4 x i32> %i.bc, i32 %i.az, i64 2
  %i.be = insertelement <4 x i32> %i.bd, i32 %i.ba, i64 3
  %i.bf = add <4 x i32> %i.aw, splat (i32 511)
  %i.bg = add <4 x i32> %i.be, splat (i32 511)
  %i.bh = and <4 x i32> %i.bf, splat (i32 -512)
  %i.bi = and <4 x i32> %i.bg, splat (i32 -512)
  %i.bj = add <4 x i32> %i.bh, %vec.phi           ; 2 uses
  %i.bk = add <4 x i32> %i.bi, %vec.phi140        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bk, %i.bj
  %i.bm = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader142

.lr.ph.preheader142:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.097112.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.bm, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader142, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader142 ] ; 2 uses
  %.097112 = phi i32 [ %i.bs, %.lr.ph ], [ %.097112.ph, %.lr.ph.preheader142 ]
  %i.bn = getelementptr inbounds nuw [36 x i8], ptr %1, i64 %indvars.iv
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !10
  %i.bq = add i32 %i.bp, 511
  %i.br = and i32 %i.bq, -512
  %i.bs = add i32 %i.br, %.097112                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !15

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.lcssa139 = phi i32 [ %i.bm, %middle.block ], [ %i.bs, %.lr.ph ] ; 2 uses
  %i.bt = icmp ugt i32 %.lcssa139, 184549376
  br i1 %i.bt, label %bb.g, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  %.097.lcssa135 = phi i32 [ %.lcssa139, %._crit_edge ], [ 0, %.preheader ]
  %i.bu = add i32 %.097.lcssa135, %.0101
  %i.bv = zext i32 %i.bu to i64
  %i.bw = tail call ptr @cli_calloc(i64 noundef %i.bv, i64 noundef 1) #7 ; 18 uses
  %.not106 = icmp eq ptr %i.bw, null
  br i1 %.not106, label %bb.g, label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(328) %i.bw, ptr noundef nonnull align 1 dereferenceable(328) @.str, i64 328, i1 false)
  %i.bx = and i32 %.0101, 3584
  %.not107 = icmp eq i32 %i.bx, 0
  %i.by = select i1 %.not107, i32 0, i32 4096
  %i.bz = add i32 %i.by, %.0101
  %i.ca = and i32 %i.bz, -4096                    ; 5 uses
  %i.cb = trunc i32 %i.w to i16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 214
  store i16 %i.cb, ptr %i.cc, align 2, !tbaa !16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 248
  store i32 %4, ptr %i.cd, align 4, !tbaa !19
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bw, i64 260
  store i32 %3, ptr %i.ce, align 4, !tbaa !20
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 292
  store i32 %.0101, ptr %i.cf, align 4, !tbaa !21
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 328
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.cg, i8 0, i64 128, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 344
  store i32 %5, ptr %i.ch, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bw, i64 348
  store i32 %6, ptr %i.ci, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bw, i64 456 ; 2 uses
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.cj, ptr noundef nonnull align 1 dereferenceable(6) @.str.1, i64 6, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bw, i64 464
  %i.cl = load i32, ptr %1, align 4, !tbaa !8
  %i.cm = sub i32 %i.cl, %i.ca
  store i32 %i.cm, ptr %i.ck, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bw, i64 468
  store i32 %i.ca, ptr %i.cn, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %i.bw, i64 492
  store i32 -1, ptr %i.co, align 4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bw, i64 496
  %i.cq = load i32, ptr %1, align 4, !tbaa !8     ; 2 uses
  %i.cr = sub i32 %i.cq, %i.ca
  %i.cs = and i32 %i.cq, 4095
  %.not108 = icmp eq i32 %i.cs, 0
  %i.ct = select i1 %.not108, i32 0, i32 4096
  %i.cu = add i32 %i.cr, %i.ct
  %i.cv = and i32 %i.cu, -4096
  %i.cw = add i32 %i.cv, %i.ca
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.099 = phi ptr [ %i.cp, %bb.e ], [ %i.cj, %bb.d ]
  %.198 = phi i32 [ %i.cw, %bb.e ], [ %i.ca, %bb.d ] ; 2 uses
  br i1 %i.y, label %.lr.ph119.preheader, label %._crit_edge120

.lr.ph119.preheader:                              ; preds = %bb.f
  %wide.trip.count129 = zext nneg i32 %2 to i64
  br label %.lr.ph119

.lr.ph119:                                        ; preds = %.lr.ph119.preheader, %.lr.ph119
  %indvars.iv126 = phi i64 [ 0, %.lr.ph119.preheader ], [ %indvars.iv.next127, %.lr.ph119 ] ; 2 uses
  %.2116 = phi i32 [ %.198, %.lr.ph119.preheader ], [ %i.ea, %.lr.ph119 ]
  %.1100115 = phi ptr [ %.099, %.lr.ph119.preheader ], [ %i.dw, %.lr.ph119 ] ; 7 uses
  %.1102114 = phi i32 [ %.0101, %.lr.ph119.preheader ], [ %i.dv, %.lr.ph119 ] ; 3 uses
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1 ; 3 uses
  %i.cx = trunc nuw nsw i64 %indvars.iv.next127 to i32
  %i.cy = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %.1100115, i64 noundef 8, ptr noundef nonnull @.str.2, i32 noundef %i.cx) #7 ; 0 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.1100115, i64 8
  %i.da = getelementptr inbounds nuw [36 x i8], ptr %1, i64 %indvars.iv126 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !22
  store i32 %i.dc, ptr %i.cz, align 1
  %i.dd = getelementptr inbounds nuw i8, ptr %.1100115, i64 12
  %i.de = load i32, ptr %i.da, align 4, !tbaa !8
  store i32 %i.de, ptr %i.dd, align 1
  %i.df = getelementptr inbounds nuw i8, ptr %.1100115, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 12 ; 3 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !10
  store i32 %i.dh, ptr %i.df, align 1
  %i.di = getelementptr inbounds nuw i8, ptr %.1100115, i64 20
  store i32 %.1102114, ptr %i.di, align 1
  %i.dj = getelementptr inbounds nuw i8, ptr %.1100115, i64 36
  store i32 -1, ptr %i.dj, align 1
  %i.dk = zext i32 %.1102114 to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !23
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 %i.do
  %i.dq = load i32, ptr %i.dg, align 4, !tbaa !10
  %i.dr = zext i32 %i.dq to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dl, ptr align 1 %i.dp, i64 %i.dr, i1 false)
  %i.ds = load i32, ptr %i.dg, align 4, !tbaa !10
  %i.dt = add i32 %i.ds, 511
  %i.du = and i32 %i.dt, -512
  %i.dv = add i32 %i.du, %.1102114                ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.1100115, i64 40
  %i.dx = load i32, ptr %i.db, align 4, !tbaa !22
  %i.dy = add i32 %i.dx, 4095
  %i.dz = and i32 %i.dy, -4096
  %i.ea = add i32 %i.dz, %.2116                   ; 2 uses
  %exitcond130.not = icmp eq i64 %indvars.iv.next127, %wide.trip.count129
  br i1 %exitcond130.not, label %._crit_edge120, label %.lr.ph119, !llvm.loop !24

._crit_edge120:                                   ; preds = %.lr.ph119, %bb.f
  %.1102.lcssa = phi i32 [ %.0101, %bb.f ], [ %i.dv, %.lr.ph119 ]
  %.2.lcssa = phi i32 [ %.198, %bb.f ], [ %i.ea, %.lr.ph119 ]
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bw, i64 288
  store i32 %.2.lcssa, ptr %i.eb, align 4, !tbaa !25
  %i.ec = tail call i32 @cli_writen(i32 noundef %7, ptr noundef nonnull %i.bw, i32 noundef %.1102.lcssa) #7
  %i.ed = icmp ne i32 %i.ec, -1
  %i.ee = zext i1 %i.ed to i32
  tail call void @free(ptr noundef nonnull %i.bw) #7
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.thread, %._crit_edge, %bb.c, %._crit_edge120
  %.0 = phi i32 [ 0, %._crit_edge ], [ 0, %bb.c ], [ %i.ee, %._crit_edge120 ], [ 0, %._crit_edge.thread ]
  ret i32 %.0
}

declare ptr @cli_calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare i32 @cli_writen(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

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
!8 = !{!9, !5, i64 0}
!9 = !{!"cli_exe_section", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32}
!10 = !{!9, !5, i64 12}
!11 = distinct !{!11, !12, !13, !14}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !12, !14, !13}
!16 = !{!17, !18, i64 6}
!17 = !{!"IMAGE_PE_HEADER", !5, i64 0, !18, i64 4, !18, i64 6, !5, i64 8, !5, i64 12, !5, i64 16, !18, i64 20, !18, i64 22, !18, i64 24, !6, i64 26, !6, i64 27, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !18, i64 64, !18, i64 66, !18, i64 68, !18, i64 70, !18, i64 72, !18, i64 74, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !18, i64 92, !18, i64 94, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116}
!18 = !{!"short", !6, i64 0}
!19 = !{!17, !5, i64 40}
!20 = !{!17, !5, i64 52}
!21 = !{!17, !5, i64 84}
!22 = !{!9, !5, i64 4}
!23 = !{!9, !5, i64 8}
!24 = distinct !{!24, !12}
!25 = !{!17, !5, i64 80}
end_hunk_0
