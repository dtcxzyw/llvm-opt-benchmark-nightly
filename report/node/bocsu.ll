inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @u_writeIdenticalLevelRun_78(i32 noundef %0, ptr noundef readonly captures(none) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 {
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
  %.058 = phi i32 [ %0, %.lr.ph60 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.03657 = phi i32 [ 0, %.lr.ph60 ], [ %.137.lcssa, %._crit_edge ] ; 3 uses
  %i.e = load ptr, ptr %3, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 1, i32 noundef %i.d, ptr noundef nonnull %i.a, i32 noundef 64, ptr noundef nonnull %i.b) #2
  %i.i = load i32, ptr %i.b, align 4              ; 2 uses
  %i.j = icmp slt i32 %i.i, 16
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 64, ptr %i.b, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = phi i32 [ 64, %bb.c ], [ %i.i, %bb.b ]
  %.042 = phi ptr [ %i.a, %bb.c ], [ %i.h, %bb.b ] ; 5 uses
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr i8, ptr %.042, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 -4
  %i.o = icmp slt i32 %.03657, %2
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %_ZL11u_writeDiffiPh.exit
  %.154 = phi i32 [ %.3, %_ZL11u_writeDiffiPh.exit ], [ %.058, %bb.d ] ; 2 uses
  %.13753 = phi i32 [ %.33949, %_ZL11u_writeDiffiPh.exit ], [ %.03657, %bb.d ] ; 3 uses
  %.04052 = phi ptr [ %.141, %_ZL11u_writeDiffiPh.exit ], [ %.042, %bb.d ] ; 28 uses
  %i.p = add i32 %.154, -40960
  %or.cond = icmp ult i32 %i.p, -20992
  %i.q = and i32 %.154, -128
  %i.r = or disjoint i32 %i.q, 80
  %.2 = select i1 %or.cond, i32 %i.r, i32 30292
  %i.s = add nsw i32 %.13753, 1                   ; 4 uses
  %i.t = sext i32 %.13753 to i64
  %i.u = getelementptr inbounds [2 x i8], ptr %1, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2              ; 2 uses
  %i.w = zext i16 %i.v to i32                     ; 3 uses
  %i.x = and i32 %i.w, 64512
  %i.y = icmp ne i32 %i.x, 55296
  %.not = icmp eq i32 %i.s, %2
  %or.cond46 = select i1 %i.y, i1 true, i1 %.not
  br i1 %or.cond46, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.z = sext i32 %i.s to i64
  %i.aa = getelementptr inbounds [2 x i8], ptr %1, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2
  %i.ac = zext i16 %i.ab to i32                   ; 2 uses
  %i.ad = and i32 %i.ac, 64512
  %i.ae = icmp eq i32 %i.ad, 56320
  br i1 %i.ae, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  %i.af = add nsw i32 %.13753, 2
  %i.ag = shl nuw nsw i32 %i.w, 10
  %i.ah = add nsw i32 %i.ag, -56613888
  %i.ai = add nuw nsw i32 %i.ah, %i.ac
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %i.aj = icmp eq i16 %i.v, -2
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %.04052, i64 1
  store i8 2, ptr %.04052, align 1
  br label %_ZL11u_writeDiffiPh.exit

bb.h:                                             ; preds = %.thread, %bb.f
  %.13551 = phi i32 [ %i.ai, %.thread ], [ %i.w, %bb.f ] ; 8 uses
  %.33950 = phi i32 [ %i.af, %.thread ], [ %i.s, %bb.f ] ; 7 uses
  %i.al = sub nsw i32 %.13551, %.2                ; 14 uses
  %i.am = icmp sgt i32 %i.al, -81
  br i1 %i.am, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.an = icmp slt i32 %i.al, 81
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = trunc nsw i32 %i.al to i8
  %i.ap = add i8 %i.ao, -127
  %i.aq = getelementptr inbounds nuw i8, ptr %.04052, i64 1
  store i8 %i.ap, ptr %.04052, align 1
  br label %_ZL11u_writeDiffiPh.exit

bb.k:                                             ; preds = %bb.i
  %i.ar = icmp samesign ult i32 %i.al, 10668
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.lhs.trunc.i = trunc nuw nsw i32 %i.al to i16  ; 2 uses
  %i.as = udiv i16 %.lhs.trunc.i, 253
  %i.at = trunc nuw nsw i16 %i.as to i8
  %i.au = add nuw nsw i8 %i.at, -46
  %i.av = getelementptr inbounds nuw i8, ptr %.04052, i64 1
  store i8 %i.au, ptr %.04052, align 1
  %i.aw = urem i16 %.lhs.trunc.i, 253
  %i.ax = trunc nuw i16 %i.aw to i8
  %i.ay = add nuw i8 %i.ax, 3
  %i.az = getelementptr inbounds nuw i8, ptr %.04052, i64 2
  store i8 %i.ay, ptr %i.av, align 1
  br label %_ZL11u_writeDiffiPh.exit

bb.m:                                             ; preds = %bb.k
  %i.ba = icmp samesign ult i32 %i.al, 192786
  %i.bb = urem i32 %i.al, 253
  %i.bc = trunc nuw i32 %i.bb to i8
  %i.bd = add nuw i8 %i.bc, 3                     ; 2 uses
  %i.be = udiv i32 %i.al, 253                     ; 2 uses
  br i1 %i.ba, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %.04052, i64 2
  store i8 %i.bd, ptr %i.bf, align 1
  %.lhs.trunc101.i = trunc nuw nsw i32 %i.be to i16
  %i.bg = urem i16 %.lhs.trunc101.i, 253
  %i.bh = trunc nuw i16 %i.bg to i8
  %i.bi = add nuw i8 %i.bh, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %.04052, i64 1
  store i8 %i.bi, ptr %i.bj, align 1
  %i.bk = udiv i32 %i.al, 64009
  %i.bl = trunc nuw nsw i32 %i.bk to i8
  %i.bm = add nuw nsw i8 %i.bl, -4
  store i8 %i.bm, ptr %.04052, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %.04052, i64 3
  br label %_ZL11u_writeDiffiPh.exit

bb.o:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %.04052, i64 3
  store i8 %i.bd, ptr %i.bo, align 1
  %i.bp = urem i32 %i.be, 253
  %i.bq = trunc nuw i32 %i.bp to i8
  %i.br = add nuw i8 %i.bq, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %.04052, i64 2
  store i8 %i.br, ptr %i.bs, align 1
  %i.bt = udiv i32 %i.al, 64009
  %.lhs.trunc103.i = trunc nuw i32 %i.bt to i16
  %i.bu = urem i16 %.lhs.trunc103.i, 253
  %i.bv = trunc nuw i16 %i.bu to i8
  %i.bw = add nuw i8 %i.bv, 3
  %i.bx = getelementptr inbounds nuw i8, ptr %.04052, i64 1
  store i8 %i.bw, ptr %i.bx, align 1
  store i8 -1, ptr %.04052, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %.04052, i64 4
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
  %.zext110.i = trunc nuw nsw i16 %i.cc to i8     ; 2 uses
  %.neg108.i = sub nsw i8 0, %.zext110.i
  %.not137.i = icmp eq i16 %i.cb, 0               ; 2 uses
  %4 = xor i8 %.zext110.i, -1
  %.081.i = select i1 %.not137.i, i8 %.neg108.i, i8 %4
  %.0.i = select i1 %.not137.i, i8 3, i8 %.neg.i
  %i.cd = add nsw i8 %.081.i, 49
  %i.ce = getelementptr inbounds nuw i8, ptr %.04052, i64 1
  store i8 %i.cd, ptr %.04052, align 1
  %i.cf = getelementptr inbounds nuw i8, ptr %.04052, i64 2
  store i8 %.0.i, ptr %i.ce, align 1
  br label %_ZL11u_writeDiffiPh.exit

bb.r:                                             ; preds = %bb.p
  %i.cg = icmp samesign ugt i32 %i.al, -192787
  %.nonneg111.i = sub nsw i32 0, %i.al            ; 2 uses
  %i.ch = urem i32 %.nonneg111.i, 253             ; 2 uses
  %i.ci = udiv i32 %.nonneg111.i, 253
  %.not135.i = icmp ne i32 %i.ch, 0               ; 2 uses
  %i.cj = trunc nuw i32 %i.ch to i8
  %i.ck = sub i8 0, %i.cj
  %.neg140.i = zext i1 %.not135.i to i32
  %.182.neg.i = add nuw nsw i32 %i.ci, %.neg140.i ; 3 uses
  %.1.i = select i1 %.not135.i, i8 %i.ck, i8 3    ; 2 uses
  br i1 %i.cg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cl = getelementptr inbounds nuw i8, ptr %.04052, i64 2
  store i8 %.1.i, ptr %i.cl, align 1
  %.neg141.i = trunc nuw nsw i32 %.182.neg.i to i16 ; 2 uses
  %i.cm = urem i16 %.neg141.i, 253                ; 2 uses
  %.zext117.i = trunc nuw i16 %i.cm to i8
  %.neg115.i = sub i8 0, %.zext117.i
  %i.cn = udiv i16 %.neg141.i, 253
  %.zext121.i = trunc nuw nsw i16 %i.cn to i8     ; 2 uses
  %.neg119.i = sub nsw i8 0, %.zext121.i
  %.not136.i = icmp eq i16 %i.cm, 0               ; 2 uses
  %5 = xor i8 %.zext121.i, -1
  %.283.i = select i1 %.not136.i, i8 %.neg119.i, i8 %5
  %.2.i = select i1 %.not136.i, i8 3, i8 %.neg115.i
  %i.co = getelementptr inbounds nuw i8, ptr %.04052, i64 1
  store i8 %.2.i, ptr %i.co, align 1
  %i.cp = add nsw i8 %.283.i, 7
  store i8 %i.cp, ptr %.04052, align 1
  %i.cq = getelementptr inbounds nuw i8, ptr %.04052, i64 3
  br label %_ZL11u_writeDiffiPh.exit

bb.t:                                             ; preds = %bb.r
  %i.cr = getelementptr inbounds nuw i8, ptr %.04052, i64 3
  store i8 %.1.i, ptr %i.cr, align 1
  %i.cs = urem i32 %.182.neg.i, 253               ; 2 uses
  %i.ct = udiv i32 %.182.neg.i, 253
  %.not132.i = icmp ne i32 %i.cs, 0               ; 2 uses
  %i.cu = trunc nuw i32 %i.cs to i8
  %i.cv = sub i8 0, %i.cu
  %.neg133.i = zext i1 %.not132.i to i32
  %.485.neg.i = add nuw nsw i32 %i.ct, %.neg133.i
  %.4.i = select i1 %.not132.i, i8 %i.cv, i8 3
  %i.cw = getelementptr inbounds nuw i8, ptr %.04052, i64 2
  store i8 %.4.i, ptr %i.cw, align 1
  %.lhs.trunc130.i = trunc nuw i32 %.485.neg.i to i16
  %i.cx = urem i16 %.lhs.trunc130.i, 253          ; 2 uses
  %.zext131.i = trunc nuw i16 %i.cx to i8
  %.neg129.i = sub i8 0, %.zext131.i
  %.not134.i = icmp eq i16 %i.cx, 0
  %.5.i = select i1 %.not134.i, i8 3, i8 %.neg129.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.04052, i64 1
  store i8 %.5.i, ptr %i.cy, align 1
  store i8 3, ptr %.04052, align 1
  %i.cz = getelementptr inbounds nuw i8, ptr %.04052, i64 4
  br label %_ZL11u_writeDiffiPh.exit

_ZL11u_writeDiffiPh.exit:                         ; preds = %bb.t, %bb.s, %bb.q, %bb.o, %bb.n, %bb.l, %bb.j, %bb.g
  %.33949 = phi i32 [ %i.s, %bb.g ], [ %.33950, %bb.j ], [ %.33950, %bb.l ], [ %.33950, %bb.n ], [ %.33950, %bb.o ], [ %.33950, %bb.q ], [ %.33950, %bb.s ], [ %.33950, %bb.t ] ; 3 uses
  %.141 = phi ptr [ %i.ak, %bb.g ], [ %i.aq, %bb.j ], [ %i.az, %bb.l ], [ %i.bn, %bb.n ], [ %i.by, %bb.o ], [ %i.cf, %bb.q ], [ %i.cq, %bb.s ], [ %i.cz, %bb.t ] ; 3 uses
  %.3 = phi i32 [ 0, %bb.g ], [ %.13551, %bb.j ], [ %.13551, %bb.l ], [ %.13551, %bb.n ], [ %.13551, %bb.o ], [ %.13551, %bb.q ], [ %.13551, %bb.s ], [ %.13551, %bb.t ] ; 2 uses
  %i.da = icmp slt i32 %.33949, %2
  %i.db = icmp ule ptr %.141, %i.n
  %i.dc = select i1 %i.da, i1 %i.db, i1 false
  br i1 %i.dc, label %.lr.ph, label %._crit_edge, !llvm.loop !5

._crit_edge:                                      ; preds = %_ZL11u_writeDiffiPh.exit, %bb.d
  %.040.lcssa = phi ptr [ %.042, %bb.d ], [ %.141, %_ZL11u_writeDiffiPh.exit ]
  %.137.lcssa = phi i32 [ %.03657, %bb.d ], [ %.33949, %_ZL11u_writeDiffiPh.exit ] ; 2 uses
  %.1.lcssa = phi i32 [ %.058, %bb.d ], [ %.3, %_ZL11u_writeDiffiPh.exit ] ; 2 uses
  %i.dd = ptrtoint ptr %.040.lcssa to i64
  %i.de = ptrtoint ptr %.042 to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = trunc i64 %i.df to i32
  %i.dh = load ptr, ptr %3, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %.042, i32 noundef %i.dg) #2
  %i.dk = icmp slt i32 %.137.lcssa, %2
  br i1 %i.dk, label %bb.b, label %._crit_edge61, !llvm.loop !7

._crit_edge61:                                    ; preds = %._crit_edge, %bb.a
  %.0.lcssa = phi i32 [ %0, %bb.a ], [ %.1.lcssa, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #2
  ret i32 %.0.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
end_hunk_0
