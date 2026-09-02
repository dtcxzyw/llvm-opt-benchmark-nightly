Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/bocsu?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress uwtable
define i32 @u_writeIdenticalLevelRun_78(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #2
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph60, label %._crit_edge61

.lr.ph60:                                         ; preds = %bb.a
  %i.d = shl nuw nsw i32 %2, 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph60, %._crit_edge
  %.03758 = phi i32 [ 0, %.lr.ph60 ], [ %.138.lcssa, %._crit_edge ] ; 3 uses
  %.03957 = phi i32 [ %0, %.lr.ph60 ], [ %.140.lcssa, %._crit_edge ] ; 2 uses
  %i.e = load ptr, ptr %3, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 1, i32 noundef %i.d, ptr noundef nonnull %i.a, i32 noundef 64, ptr noundef nonnull %i.b)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !12   ; 2 uses
  %i.j = icmp slt i32 %i.i, 16
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 64, ptr %i.b, align 4, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = phi i32 [ 64, %bb.c ], [ %i.i, %bb.b ]
  %.036 = phi ptr [ %i.a, %bb.c ], [ %i.h, %bb.b ] ; 5 uses
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr i8, ptr %.036, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 -4
  %i.o = icmp slt i32 %.03758, %2
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %_ZL11u_writeDiffiPh.exit
  %.03454 = phi ptr [ %.135, %_ZL11u_writeDiffiPh.exit ], [ %.036, %bb.d ] ; 28 uses
  %.13853 = phi i32 [ %.349, %_ZL11u_writeDiffiPh.exit ], [ %.03758, %bb.d ] ; 3 uses
  %.14052 = phi i32 [ %.342, %_ZL11u_writeDiffiPh.exit ], [ %.03957, %bb.d ] ; 2 uses
  %i.p = add i32 %.14052, -40960
  %or.cond = icmp ult i32 %i.p, -20992
  %i.q = and i32 %.14052, -128
  %i.r = or disjoint i32 %i.q, 80
  %.241 = select i1 %or.cond, i32 %i.r, i32 30292
  %i.s = add nsw i32 %.13853, 1                   ; 4 uses
  %i.t = sext i32 %.13853 to i64
  %i.u = getelementptr inbounds [2 x i8], ptr %1, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2, !tbaa !14   ; 2 uses
  %i.w = zext i16 %i.v to i32                     ; 3 uses
  %i.x = and i32 %i.w, 64512
  %i.y = icmp ne i32 %i.x, 55296
  %.not = icmp eq i32 %i.s, %2
  %or.cond46 = select i1 %i.y, i1 true, i1 %.not
  br i1 %or.cond46, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.z = sext i32 %i.s to i64
  %i.aa = getelementptr inbounds [2 x i8], ptr %1, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !14
  %i.ac = zext i16 %i.ab to i32                   ; 2 uses
  %i.ad = and i32 %i.ac, 64512
  %i.ae = icmp eq i32 %i.ad, 56320
  br i1 %i.ae, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  %i.af = add nsw i32 %.13853, 2
  %i.ag = shl nuw nsw i32 %i.w, 10
  %i.ah = add nsw i32 %i.ag, -56613888
  %i.ai = add nuw nsw i32 %i.ah, %i.ac
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %i.aj = icmp eq i16 %i.v, -2
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %.03454, i64 1
  store i8 2, ptr %.03454, align 1, !tbaa !15
  br label %_ZL11u_writeDiffiPh.exit

bb.h:                                             ; preds = %.thread, %bb.f
  %.151 = phi i32 [ %i.ai, %.thread ], [ %i.w, %bb.f ] ; 8 uses
  %.350 = phi i32 [ %i.af, %.thread ], [ %i.s, %bb.f ] ; 7 uses
  %i.al = sub nsw i32 %.151, %.241                ; 14 uses
  %i.am = icmp sgt i32 %i.al, -81
  br i1 %i.am, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.an = icmp slt i32 %i.al, 81
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = trunc nsw i32 %i.al to i8
  %i.ap = add i8 %i.ao, -127
  %i.aq = getelementptr inbounds nuw i8, ptr %.03454, i64 1
  store i8 %i.ap, ptr %.03454, align 1, !tbaa !15
  br label %_ZL11u_writeDiffiPh.exit

bb.k:                                             ; preds = %bb.i
  %i.ar = icmp samesign ult i32 %i.al, 10668
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.lhs.trunc.i = trunc nuw nsw i32 %i.al to i16  ; 2 uses
  %i.as = udiv i16 %.lhs.trunc.i, 253
  %i.at = trunc nuw nsw i16 %i.as to i8
  %i.au = add nuw nsw i8 %i.at, -46
  %i.av = getelementptr inbounds nuw i8, ptr %.03454, i64 1
  store i8 %i.au, ptr %.03454, align 1, !tbaa !15
  %i.aw = urem i16 %.lhs.trunc.i, 253
  %i.ax = trunc nuw i16 %i.aw to i8
  %i.ay = add nuw i8 %i.ax, 3
  %i.az = getelementptr inbounds nuw i8, ptr %.03454, i64 2
  store i8 %i.ay, ptr %i.av, align 1, !tbaa !15
  br label %_ZL11u_writeDiffiPh.exit

bb.m:                                             ; preds = %bb.k
  %i.ba = icmp samesign ult i32 %i.al, 192786
  %i.bb = urem i32 %i.al, 253
  %i.bc = trunc nuw i32 %i.bb to i8
  %i.bd = add nuw i8 %i.bc, 3                     ; 2 uses
  %i.be = udiv i32 %i.al, 253                     ; 2 uses
  br i1 %i.ba, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %.03454, i64 2
  store i8 %i.bd, ptr %i.bf, align 1, !tbaa !15
  %.lhs.trunc101.i = trunc nuw nsw i32 %i.be to i16
  %i.bg = urem i16 %.lhs.trunc101.i, 253
  %i.bh = trunc nuw i16 %i.bg to i8
  %i.bi = add nuw i8 %i.bh, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %.03454, i64 1
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !15
  %i.bk = udiv i32 %i.al, 64009
  %i.bl = trunc nuw nsw i32 %i.bk to i8
  %i.bm = add nuw nsw i8 %i.bl, -4
  store i8 %i.bm, ptr %.03454, align 1, !tbaa !15
  %i.bn = getelementptr inbounds nuw i8, ptr %.03454, i64 3
  br label %_ZL11u_writeDiffiPh.exit

bb.o:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %.03454, i64 3
  store i8 %i.bd, ptr %i.bo, align 1, !tbaa !15
  %i.bp = urem i32 %i.be, 253
  %i.bq = trunc nuw i32 %i.bp to i8
  %i.br = add nuw i8 %i.bq, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %.03454, i64 2
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !15
  %i.bt = udiv i32 %i.al, 64009
  %.lhs.trunc103.i = trunc nuw i32 %i.bt to i16
  %i.bu = urem i16 %.lhs.trunc103.i, 253
  %i.bv = trunc nuw i16 %i.bu to i8
  %i.bw = add nuw i8 %i.bv, 3
  %i.bx = getelementptr inbounds nuw i8, ptr %.03454, i64 1
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !15
  store i8 -1, ptr %.03454, align 1, !tbaa !15
  %i.by = getelementptr inbounds nuw i8, ptr %.03454, i64 4
  br label %_ZL11u_writeDiffiPh.exit

bb.p:                                             ; preds = %bb.h
  %i.bz = icmp samesign ugt i32 %i.al, -10669
  br i1 %i.bz, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ca = trunc nsw i32 %i.al to i16
  %.lhs.trunc105.i = sub nsw i16 0, %i.ca         ; 2 uses
  %i.cb = urem i16 %.lhs.trunc105.i, 253          ; 2 uses
  %.zext106.i = trunc nuw i16 %i.cb to i8
  %.neg.i = sub i8 0, %.zext106.i
  %i.cc = udiv i16 %.lhs.trunc105.i, 253
  %.zext110.i = trunc nuw nsw i16 %i.cc to i8
  %.not137.i = icmp ne i16 %i.cb, 0               ; 2 uses
  %i.cd = sext i1 %.not137.i to i8
  %.0.i = select i1 %.not137.i, i8 %.neg.i, i8 3
  %reass.sub63 = sub nsw i8 %i.cd, %.zext110.i
  %i.ce = add nsw i8 %reass.sub63, 49
  %i.cf = getelementptr inbounds nuw i8, ptr %.03454, i64 1
  store i8 %i.ce, ptr %.03454, align 1, !tbaa !15
  %i.cg = getelementptr inbounds nuw i8, ptr %.03454, i64 2
  store i8 %.0.i, ptr %i.cf, align 1, !tbaa !15
  br label %_ZL11u_writeDiffiPh.exit

bb.r:                                             ; preds = %bb.p
  %i.ch = icmp samesign ugt i32 %i.al, -192787
  %.nonneg111.i = sub nsw i32 0, %i.al            ; 2 uses
  %i.ci = urem i32 %.nonneg111.i, 253             ; 2 uses
  %i.cj = udiv i32 %.nonneg111.i, 253
  %.not135.i = icmp ne i32 %i.ci, 0               ; 2 uses
  %i.ck = trunc nuw i32 %i.ci to i8
  %i.cl = sub i8 0, %i.ck
  %.neg142.i = zext i1 %.not135.i to i32
  %.182.neg.i = add nuw nsw i32 %i.cj, %.neg142.i ; 3 uses
  %.1.i = select i1 %.not135.i, i8 %i.cl, i8 3    ; 2 uses
  br i1 %i.ch, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cm = getelementptr inbounds nuw i8, ptr %.03454, i64 2
  store i8 %.1.i, ptr %i.cm, align 1, !tbaa !15
  %.neg141.i.a = trunc nuw nsw i32 %.182.neg.i to i16 ; 2 uses
  %i.cn = urem i16 %.neg141.i.a, 253              ; 2 uses
  %.zext117.i = trunc nuw i16 %i.cn to i8
  %.neg115.i = sub i8 0, %.zext117.i
  %i.co = udiv i16 %.neg141.i.a, 253
  %.zext121.i = trunc nuw nsw i16 %i.co to i8
  %.not136.i = icmp ne i16 %i.cn, 0               ; 2 uses
  %i.cp = sext i1 %.not136.i to i8
  %.2.i = select i1 %.not136.i, i8 %.neg115.i, i8 3
  %i.cq = getelementptr inbounds nuw i8, ptr %.03454, i64 1
  store i8 %.2.i, ptr %i.cq, align 1, !tbaa !15
  %reass.sub = sub i8 %i.cp, %.zext121.i
  %i.cr = add i8 %reass.sub, 7
  store i8 %i.cr, ptr %.03454, align 1, !tbaa !15
  %i.cs = getelementptr inbounds nuw i8, ptr %.03454, i64 3
  br label %_ZL11u_writeDiffiPh.exit

bb.t:                                             ; preds = %bb.r
  %i.ct = getelementptr inbounds nuw i8, ptr %.03454, i64 3
  store i8 %.1.i, ptr %i.ct, align 1, !tbaa !15
  %i.cu = urem i32 %.182.neg.i, 253               ; 2 uses
  %i.cv = udiv i32 %.182.neg.i, 253
  %.not132.i = icmp ne i32 %i.cu, 0               ; 2 uses
  %i.cw = trunc nuw i32 %i.cu to i8
  %i.cx = sub i8 0, %i.cw
  %.neg133.i = zext i1 %.not132.i to i32
  %.485.neg.i = add nuw nsw i32 %i.cv, %.neg133.i
  %.4.i = select i1 %.not132.i, i8 %i.cx, i8 3
  %i.cy = getelementptr inbounds nuw i8, ptr %.03454, i64 2
  store i8 %.4.i, ptr %i.cy, align 1, !tbaa !15
  %.lhs.trunc130.i.a = trunc nuw i32 %.485.neg.i to i16
  %i.cz = urem i16 %.lhs.trunc130.i.a, 253        ; 2 uses
  %.zext131.i = trunc nuw i16 %i.cz to i8
  %.neg129.i = sub i8 0, %.zext131.i
  %.not134.i = icmp eq i16 %i.cz, 0
  %.5.i = select i1 %.not134.i, i8 3, i8 %.neg129.i
  %i.da = getelementptr inbounds nuw i8, ptr %.03454, i64 1
  store i8 %.5.i, ptr %i.da, align 1, !tbaa !15
  store i8 3, ptr %.03454, align 1, !tbaa !15
  %i.db = getelementptr inbounds nuw i8, ptr %.03454, i64 4
  br label %_ZL11u_writeDiffiPh.exit

_ZL11u_writeDiffiPh.exit:                         ; preds = %bb.t, %bb.s, %bb.q, %bb.o, %bb.n, %bb.l, %bb.j, %bb.g
  %.349 = phi i32 [ %i.s, %bb.g ], [ %.350, %bb.j ], [ %.350, %bb.l ], [ %.350, %bb.n ], [ %.350, %bb.o ], [ %.350, %bb.q ], [ %.350, %bb.s ], [ %.350, %bb.t ] ; 3 uses
  %.342 = phi i32 [ 0, %bb.g ], [ %.151, %bb.j ], [ %.151, %bb.l ], [ %.151, %bb.n ], [ %.151, %bb.o ], [ %.151, %bb.q ], [ %.151, %bb.s ], [ %.151, %bb.t ] ; 2 uses
  %.135 = phi ptr [ %i.ak, %bb.g ], [ %i.aq, %bb.j ], [ %i.az, %bb.l ], [ %i.bn, %bb.n ], [ %i.by, %bb.o ], [ %i.cg, %bb.q ], [ %i.cs, %bb.s ], [ %i.db, %bb.t ] ; 3 uses
  %i.dc = icmp slt i32 %.349, %2
  %i.dd = icmp ule ptr %.135, %i.n
  %i.de = select i1 %i.dc, i1 %i.dd, i1 false
  br i1 %i.de, label %.lr.ph, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %_ZL11u_writeDiffiPh.exit, %bb.d
  %.140.lcssa = phi i32 [ %.03957, %bb.d ], [ %.342, %_ZL11u_writeDiffiPh.exit ] ; 2 uses
  %.138.lcssa = phi i32 [ %.03758, %bb.d ], [ %.349, %_ZL11u_writeDiffiPh.exit ] ; 2 uses
  %.034.lcssa = phi ptr [ %.036, %bb.d ], [ %.135, %_ZL11u_writeDiffiPh.exit ]
  %i.df = ptrtoint ptr %.034.lcssa to i64
  %i.dg = ptrtoint ptr %.036 to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = trunc i64 %i.dh to i32
  %i.dj = load ptr, ptr %3, align 8, !tbaa !11
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %.036, i32 noundef %i.di)
  %i.dm = icmp slt i32 %.138.lcssa, %2
  br i1 %i.dm, label %bb.b, label %._crit_edge61, !llvm.loop !9

._crit_edge61:                                    ; preds = %._crit_edge, %bb.a
  %.039.lcssa = phi i32 [ %0, %bb.a ], [ %.140.lcssa, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #2
  ret i32 %.039.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !16}
!9 = distinct !{!9, !16}
!10 = !{!"vtable pointer", !3, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!5, !5, i64 0}
!13 = !{!"char16_t", !4, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!4, !4, i64 0}
!16 = !{!"llvm.loop.mustprogress"}
end_hunk_0
