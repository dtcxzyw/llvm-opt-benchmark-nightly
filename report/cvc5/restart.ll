Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/restart?download=true
inline.NumInlined: 18
inline.NumDeleted: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8Internal11stabilizingEv(ptr noundef nonnull align 8 dereferenceable(5704) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3732
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !154, !range !155, !noundef !156
  %i.e = trunc nuw i8 %i.d to i1                  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3748
  %i.g = load i32, ptr %i.f, align 4
  %.not4 = icmp ne i32 %i.g, 0
  %or.cond.not = select i1 %i.e, i1 %.not4, i1 false
  br i1 %or.cond.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3920 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !157
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2912 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !158
  %.not5 = icmp slt i64 %i.i, %i.k
  br i1 %.not5, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = select i1 %i.e, i8 93, i8 125
  tail call void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(5704) %0, i8 noundef signext %i.l, i32 noundef 0)
  %i.m = load i8, ptr %i.c, align 4, !tbaa !154, !range !155, !noundef !156 ; 2 uses
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = xor i8 %i.m, 1
  store i8 %i.o, ptr %i.c, align 4, !tbaa !154
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4528 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !159
  %i.r = add nsw i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8, !tbaa !159
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3736
  %i.t = load i32, ptr %i.s, align 8, !tbaa !160
  %i.u = sitofp i32 %i.t to double
  %i.v = fmul nnan double %i.u, 1.000000e-02
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3064 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !161
  %i.y = sitofp i64 %i.x to double
  %i.z = fmul double %i.v, %i.y
  %i.aa = fptosi double %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3744
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !162
  %i.ad = sext i32 %i.ac to i64
  %spec.store.select = tail call i64 @llvm.smin.i64(i64 %i.aa, i64 %i.ad) ; 2 uses
  store i64 %spec.store.select, ptr %i.w, align 8
  %i.ae = load i64, ptr %i.h, align 8, !tbaa !157
  %storemerge.v = tail call i64 @llvm.smax.i64(i64 %spec.store.select, i64 1)
  %storemerge = add nsw i64 %storemerge.v, %i.ae
  store i64 %storemerge, ptr %i.j, align 8, !tbaa !158
  tail call void @_ZN7CaDiCaL8Internal13swap_averagesEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  %i.af = load i8, ptr %i.c, align 4, !tbaa !154, !range !155, !noundef !156
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = select i1 %i.ag, i8 91, i8 123
  tail call void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(5704) %0, i8 noundef signext %i.ah, i32 noundef 0)
  %.pre = load i8, ptr %i.c, align 4, !tbaa !154, !range !155
  %.pre9 = trunc nuw i8 %.pre to i1
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %.pre9, %bb.f ], [ %i.e, %bb.c ]
  ret i1 %.0
}

declare void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(5704), i8 noundef signext, i32 noundef) local_unnamed_addr #1

declare void @_ZN7CaDiCaL8Internal13swap_averagesEv(ptr noundef nonnull align 8 dereferenceable(5704)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8Internal10restartingEv(ptr noundef nonnull align 8 dereferenceable(5704) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3668
  %i.b = load i32, ptr %i.a, align 4, !tbaa !163
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_ZN7CaDiCaL9ReluctantcvbEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.d = load i32, ptr %i.c, align 4, !tbaa !164
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !165
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !166
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 2
  %i.n = add nsw i64 %i.m, 2
  %i.o = icmp ugt i64 %i.n, %i.e
  br i1 %i.o, label %_ZN7CaDiCaL9ReluctantcvbEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal11stabilizingEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br i1 %i.p, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !167, !range !155, !noundef !156
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.e, label %_ZN7CaDiCaL9ReluctantcvbEv.exit

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.q, align 8, !tbaa !167
  br label %_ZN7CaDiCaL9ReluctantcvbEv.exit

bb.f:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3920
  %i.u = load i64, ptr %i.t, align 8, !tbaa !157
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2904
  %i.w = load i64, ptr %i.v, align 8, !tbaa !168
  %.not6 = icmp sgt i64 %i.u, %i.w
  br i1 %.not6, label %bb.g, label %_ZN7CaDiCaL9ReluctantcvbEv.exit

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2240
  %i.y = load double, ptr %i.x, align 8, !tbaa !169
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 3676
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !170
  %i.ab = sitofp i32 %i.aa to double
  %i.ac = fadd nnan double %i.ab, 1.000000e+02
  %i.ad = fdiv nnan double %i.ac, 1.000000e+02
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2280
  %i.af = load double, ptr %i.ae, align 8, !tbaa !169
  %i.ag = fmul double %i.af, %i.ad
  %i.ah = fcmp ole double %i.ag, %i.y
  br label %_ZN7CaDiCaL9ReluctantcvbEv.exit

_ZN7CaDiCaL9ReluctantcvbEv.exit:                  ; preds = %bb.e, %bb.d, %bb.f, %bb.b, %bb.a, %bb.g
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.f ], [ false, %bb.b ], [ %i.ah, %bb.g ], [ false, %bb.d ], [ true, %bb.e ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN7CaDiCaL8Internal11reuse_trailEv(ptr noundef nonnull align 8 dereferenceable(5704) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !165
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !166
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2184 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !171
  %i.k = getelementptr [16 x i8], ptr %i.j, i64 %i.h
  %i.l = getelementptr i8, ptr %i.k, i64 16
  %i.m = load i32, ptr %i.l, align 4, !tbaa !172
  %.not = icmp eq i32 %i.m, 0
  %i.n = zext i1 %.not to i64
  %i.o = add nsw i64 %i.h, %i.n                   ; 3 uses
  %i.p = trunc i64 %i.o to i32                    ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3680
  %i.r = load i32, ptr %i.q, align 8, !tbaa !175
  %.not29 = icmp eq i32 %i.r, 0
  br i1 %.not29, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = tail call noundef i32 @_ZN7CaDiCaL8Internal22next_decision_variableEv(ptr noundef nonnull align 8 dereferenceable(5704) %0) ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3696
  %i.u = load i32, ptr %i.t, align 8, !tbaa !176
  %.not.i = icmp ne i32 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.w = load i8, ptr %i.v, align 4, !range !155
  %i.x = trunc nuw i8 %i.w to i1                  ; 2 uses
  %i.y = select i1 %.not.i, i1 %i.x, i1 false
  br i1 %i.y, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !164 ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, %i.p
  br i1 %i.ab, label %.lr.ph45, label %.thread

.lr.ph45:                                         ; preds = %.preheader
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !171
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.ae = zext i32 %i.s to i64
  %sext64 = shl i64 %i.o, 32
  %i.af = ashr exact i64 %sext64, 32
  %i.ag = sext i32 %i.aa to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph45, %_ZN7CaDiCaL13score_smallerclEjj.exit.thread33
  %indvars.iv54 = phi i64 [ %i.af, %.lr.ph45 ], [ %indvars.iv.next55, %_ZN7CaDiCaL13score_smallerclEjj.exit.thread33 ] ; 3 uses
  %indvars.iv.next55 = add nsw i64 %indvars.iv54, 1 ; 3 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %indvars.iv.next55
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !172 ; 2 uses
  %.not31 = icmp eq i32 %i.ai, 0
  br i1 %.not31, label %_ZN7CaDiCaL13score_smallerclEjj.exit.thread33, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = tail call i32 @llvm.abs.i32(i32 %i.ai, i1 true) ; 2 uses
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !177 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ak
  %i.an = load double, ptr %i.am, align 8, !tbaa !178 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ae
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !178 ; 2 uses
  %i.aq = fcmp olt double %i.an, %i.ap
  br i1 %i.aq, label %.thread.loopexit.split.loop.exit69, label %1

1:                                                ; preds = %bb.d
  %2 = fcmp ule double %i.an, %i.ap
  %3 = icmp ugt i32 %i.aj, %i.s
  %or.cond = and i1 %3, %2
  br i1 %or.cond, label %.thread.loopexit.split.loop.exit, label %_ZN7CaDiCaL13score_smallerclEjj.exit.thread33

_ZN7CaDiCaL13score_smallerclEjj.exit.thread33:    ; preds = %1, %bb.c
  %i.ar = icmp slt i64 %indvars.iv.next55, %i.ag
  br i1 %i.ar, label %bb.c, label %.thread

bb.e:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.at = tail call noundef i32 @llvm.abs.i32(i32 %i.s, i1 true)
  %i.au = zext nneg i32 %i.at to i64
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !179 ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.au
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !180
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !164 ; 3 uses
  %i.ba = icmp sgt i32 %i.az, %i.p
  br i1 %i.ba, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.e
  %i.bb = load ptr, ptr %i.i, align 8, !tbaa !171
  %sext = shl i64 %i.o, 32
  %i.bc = ashr exact i64 %sext, 32
  %i.bd = sext i32 %i.az to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ %i.bc, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %indvars.iv.next
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !172 ; 2 uses
  %.not30 = icmp eq i32 %i.bf, 0
  br i1 %.not30, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = tail call noundef i32 @llvm.abs.i32(i32 %i.bf, i1 true)
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !180
  %i.bk = icmp slt i64 %i.bj, %i.ax
  br i1 %i.bk, label %.thread.loopexit65.split.loop.exit, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.bl = icmp slt i64 %indvars.iv.next, %i.bd
  br i1 %i.bl, label %bb.f, label %.thread

.thread.loopexit.split.loop.exit:                 ; preds = %1
  %4 = trunc nsw i64 %indvars.iv54 to i32
  br label %.thread

.thread.loopexit.split.loop.exit69:               ; preds = %bb.d
  %i.bm = trunc nsw i64 %indvars.iv54 to i32
  br label %.thread

.thread.loopexit65.split.loop.exit:               ; preds = %bb.g
  %i.bn = trunc nsw i64 %indvars.iv to i32
  br label %.thread

.thread:                                          ; preds = %bb.h, %_ZN7CaDiCaL13score_smallerclEjj.exit.thread33, %.thread.loopexit65.split.loop.exit, %.thread.loopexit.split.loop.exit, %.thread.loopexit.split.loop.exit69, %bb.e, %.preheader
  %.5 = phi i32 [ %i.p, %bb.e ], [ %i.p, %.preheader ], [ %i.aa, %_ZN7CaDiCaL13score_smallerclEjj.exit.thread33 ], [ %i.bm, %.thread.loopexit.split.loop.exit69 ], [ %4, %.thread.loopexit.split.loop.exit ], [ %i.bn, %.thread.loopexit65.split.loop.exit ], [ %i.az, %bb.h ] ; 4 uses
  %i.bo = sub nsw i32 %.5, %i.p                   ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, 0
  br i1 %i.bp, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.thread
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 4552 ; 2 uses
  %i.br = zext nneg i32 %i.bo to i64
  %i.bs = load <2 x i64>, ptr %i.bq, align 8, !tbaa !180
  %i.bt = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.br, i64 1
  %i.bu = add nsw <2 x i64> %i.bs, %i.bt
  store <2 x i64> %i.bu, ptr %i.bq, align 8, !tbaa !180
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 4568 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !181
  %i.bx = add nsw i64 %i.bw, 1
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !181
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.j, %bb.i, %bb.a
  %.025 = phi i32 [ %i.p, %bb.a ], [ %.5, %bb.i ], [ %.5, %bb.j ], [ %.5, %.thread ]
  ret i32 %.025
}

declare noundef i32 @_ZN7CaDiCaL8Internal22next_decision_variableEv(ptr noundef nonnull align 8 dereferenceable(5704)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal7restartEv(ptr noundef nonnull align 8 dereferenceable(5704) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4504 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.c = load i32, ptr %i.b, align 4, !tbaa !164
  %i.d = sext i32 %i.c to i64
  %i.e = load <2 x i64>, ptr %i.a, align 8, !tbaa !180
  %i.f = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.d, i64 1
  %i.g = add nsw <2 x i64> %i.e, %i.f
  store <2 x i64> %i.g, ptr %i.a, align 8, !tbaa !180
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load i8, ptr %i.h, align 4, !tbaa !154, !range !155, !noundef !156
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4520 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !182
  %i.m = add nsw i64 %i.l, 1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !182
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = tail call noundef i32 @_ZN7CaDiCaL8Internal11reuse_trailEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3920
  %i.p = load i64, ptr %i.o, align 8, !tbaa !157
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3672
  %i.r = load i32, ptr %i.q, align 8, !tbaa !183
  %i.s = sext i32 %i.r to i64
  %i.t = add nsw i64 %i.p, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2904
  store i64 %i.t, ptr %i.u, align 8, !tbaa !168
  tail call void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(5704) %0, i8 noundef signext 82, i32 noundef 2)
  ret void
}

declare void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(5704), i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !5, i64 3732}
!9 = !{!"_ZTSN7CaDiCaL8InternalE", !5, i64 0, !10, i64 4, !10, i64 5, !10, i64 6, !10, i64 7, !10, i64 8, !10, i64 9, !10, i64 10, !10, i64 11, !10, i64 12, !10, i64 13, !10, i64 14, !10, i64 15, !10, i64 16, !10, i64 17, !10, i64 18, !6, i64 19, !11, i64 24, !12, i64 72, !5, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !10, i64 120, !13, i64 128, !13, i64 152, !13, i64 176, !13, i64 200, !13, i64 224, !13, i64 248, !19, i64 272, !25, i64 296, !10, i64 320, !10, i64 321, !5, i64 324, !30, i64 328, !35, i64 472, !31, i64 480, !36, i64 504, !41, i64 528, !36, i64 552, !45, i64 576, !46, i64 600, !51, i64 624, !52, i64 632, !55, i64 688, !60, i64 712, !41, i64 736, !65, i64 760, !70, i64 784, !70, i64 808, !74, i64 832, !41, i64 856, !70, i64 880, !79, i64 904, !84, i64 928, !89, i64 952, !89, i64 960, !89, i64 968, !89, i64 976, !89, i64 984, !10, i64 992, !10, i64 993, !10, i64 994, !5, i64 996, !12, i64 1000, !89, i64 1008, !12, i64 1016, !12, i64 1024, !12, i64 1032, !12, i64 1040, !12, i64 1048, !12, i64 1056, !41, i64 1064, !41, i64 1088, !41, i64 1112, !41, i64 1136, !10, i64 1160, !10, i64 1161, !41, i64 1168, !41, i64 1192, !41, i64 1216, !41, i64 1240, !41, i64 1264, !41, i64 1288, !41, i64 1312, !90, i64 1336, !12, i64 2152, !41, i64 2160, !91, i64 2184, !19, i64 2208, !96, i64 2232, !101, i64 2800, !103, i64 2968, !110, i64 3056, !111, i64 3104, !112, i64 3112, !113, i64 3120, !118, i64 3144, !123, i64 3168, !128, i64 3192, !129, i64 3904, !146, i64 5552, !148, i64 5608, !149, i64 5632, !54, i64 5664, !151, i64 5672, !10, i64 5680, !152, i64 5688, !153, i64 5696}
!10 = !{!"bool", !6, i64 0}
!11 = !{!"_ZTSN7CaDiCaL9ReluctantE", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !10, i64 40, !10, i64 41}
!12 = !{!"long", !6, i64 0}
!13 = !{!"_ZTSSt6vectorImSaImEE", !14, i64 0}
!14 = !{!"_ZTSSt12_Vector_baseImSaImEE", !15, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !16, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
!17 = !{!"p1 long", !18, i64 0}
!18 = !{!"any pointer", !6, i64 0}
!19 = !{!"_ZTSSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE", !20, i64 0}
!20 = !{!"_ZTSSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE", !21, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE12_Vector_implE", !22, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!23 = !{!"p2 _ZTSN7CaDiCaL6ClauseE", !24, i64 0}
!24 = !{!"any p2 pointer", !18, i64 0}
!25 = !{!"_ZTSSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE", !26, i64 0}
!26 = !{!"_ZTSSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE", !27, i64 0}
!27 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE12_Vector_implE", !28, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!29 = !{!"p1 _ZTSSt6vectorIS_ImSaImEESaIS1_EE", !18, i64 0}
!30 = !{!"_ZTSN7CaDiCaL6PhasesE", !31, i64 0, !31, i64 24, !31, i64 48, !31, i64 72, !31, i64 96, !31, i64 120}
!31 = !{!"_ZTSSt6vectorIaSaIaEE", !32, i64 0}
!32 = !{!"_ZTSSt12_Vector_baseIaSaIaEE", !33, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE12_Vector_implE", !34, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!35 = !{!"p1 omnipotent char", !18, i64 0}
!36 = !{!"_ZTSSt6vectorIjSaIjEE", !37, i64 0}
!37 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !38, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !39, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !40, i64 0, !40, i64 8, !40, i64 16}
!40 = !{!"p1 int", !18, i64 0}
!41 = !{!"_ZTSSt6vectorIiSaIiEE", !42, i64 0}
!42 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !43, i64 0}
!43 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !44, i64 0}
!44 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !40, i64 0, !40, i64 8, !40, i64 16}
!45 = !{!"_ZTSN7CaDiCaL5QueueE", !5, i64 0, !5, i64 4, !5, i64 8, !12, i64 16}
!46 = !{!"_ZTSSt6vectorIN7CaDiCaL4LinkESaIS1_EE", !47, i64 0}
!47 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE", !48, i64 0}
!48 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE12_Vector_implE", !49, i64 0}
!49 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE17_Vector_impl_dataE", !50, i64 0, !50, i64 8, !50, i64 16}
!50 = !{!"p1 _ZTSN7CaDiCaL4LinkE", !18, i64 0}
!51 = !{!"double", !6, i64 0}
!52 = !{!"_ZTSN7CaDiCaL4heapINS_13score_smallerEEE", !36, i64 0, !36, i64 24, !53, i64 48}
!53 = !{!"_ZTSN7CaDiCaL13score_smallerE", !54, i64 0}
!54 = !{!"p1 _ZTSN7CaDiCaL8InternalE", !18, i64 0}
!55 = !{!"_ZTSSt6vectorIdSaIdEE", !56, i64 0}
!56 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !57, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !58, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !59, i64 0, !59, i64 8, !59, i64 16}
!59 = !{!"p1 double", !18, i64 0}
!60 = !{!"_ZTSSt6vectorIN7CaDiCaL3VarESaIS1_EE", !61, i64 0}
!61 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE", !62, i64 0}
!62 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE12_Vector_implE", !63, i64 0}
!63 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE17_Vector_impl_dataE", !64, i64 0, !64, i64 8, !64, i64 16}
!64 = !{!"p1 _ZTSN7CaDiCaL3VarE", !18, i64 0}
!65 = !{!"_ZTSSt6vectorIN7CaDiCaL5FlagsESaIS1_EE", !66, i64 0}
!66 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL5FlagsESaIS1_EE", !67, i64 0}
!67 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5FlagsESaIS1_EE12_Vector_implE", !68, i64 0}
!68 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5FlagsESaIS1_EE17_Vector_impl_dataE", !69, i64 0, !69, i64 8, !69, i64 16}
!69 = !{!"p1 _ZTSN7CaDiCaL5FlagsE", !18, i64 0}
!70 = !{!"_ZTSSt6vectorIlSaIlEE", !71, i64 0}
!71 = !{!"_ZTSSt12_Vector_baseIlSaIlEE", !72, i64 0}
!72 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE12_Vector_implE", !73, i64 0}
!73 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
!74 = !{!"_ZTSSt6vectorIS_IPN7CaDiCaL6ClauseESaIS2_EESaIS4_EE", !75, i64 0}
!75 = !{!"_ZTSSt12_Vector_baseISt6vectorIPN7CaDiCaL6ClauseESaIS3_EESaIS5_EE", !76, i64 0}
!76 = !{!"_ZTSNSt12_Vector_baseISt6vectorIPN7CaDiCaL6ClauseESaIS3_EESaIS5_EE12_Vector_implE", !77, i64 0}
!77 = !{!"_ZTSNSt12_Vector_baseISt6vectorIPN7CaDiCaL6ClauseESaIS3_EESaIS5_EE17_Vector_impl_dataE", !78, i64 0, !78, i64 8, !78, i64 16}
!78 = !{!"p1 _ZTSSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE", !18, i64 0}
!79 = !{!"_ZTSSt6vectorIS_IN7CaDiCaL3BinESaIS1_EESaIS3_EE", !80, i64 0}
!80 = !{!"_ZTSSt12_Vector_baseISt6vectorIN7CaDiCaL3BinESaIS2_EESaIS4_EE", !81, i64 0}
!81 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL3BinESaIS2_EESaIS4_EE12_Vector_implE", !82, i64 0}
!82 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL3BinESaIS2_EESaIS4_EE17_Vector_impl_dataE", !83, i64 0, !83, i64 8, !83, i64 16}
!83 = !{!"p1 _ZTSSt6vectorIN7CaDiCaL3BinESaIS1_EE", !18, i64 0}
!84 = !{!"_ZTSSt6vectorIS_IN7CaDiCaL5WatchESaIS1_EESaIS3_EE", !85, i64 0}
!85 = !{!"_ZTSSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE", !86, i64 0}
!86 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE12_Vector_implE", !87, i64 0}
!87 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE17_Vector_impl_dataE", !88, i64 0, !88, i64 8, !88, i64 16}
!88 = !{!"p1 _ZTSSt6vectorIN7CaDiCaL5WatchESaIS1_EE", !18, i64 0}
!89 = !{!"p1 _ZTSN7CaDiCaL6ClauseE", !18, i64 0}
!90 = !{!"_ZTS4Reap", !12, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !6, i64 24}
!91 = !{!"_ZTSSt6vectorIN7CaDiCaL5LevelESaIS1_EE", !92, i64 0}
!92 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL5LevelESaIS1_EE", !93, i64 0}
!93 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5LevelESaIS1_EE12_Vector_implE", !94, i64 0}
!94 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5LevelESaIS1_EE17_Vector_impl_dataE", !95, i64 0, !95, i64 8, !95, i64 16}
!95 = !{!"p1 _ZTSN7CaDiCaL5LevelE", !18, i64 0}
!96 = !{!"_ZTSN7CaDiCaL8AveragesE", !12, i64 0, !97, i64 8, !97, i64 288}
!97 = !{!"_ZTSN7CaDiCaL8AveragesUt_E", !98, i64 0, !100, i64 80, !99, i64 160, !99, i64 200, !99, i64 240}
!98 = !{!"_ZTSN7CaDiCaL8AveragesUt_Ut_E", !99, i64 0, !99, i64 40}
!99 = !{!"_ZTSN7CaDiCaL3EMAE", !51, i64 0, !51, i64 8, !51, i64 16, !51, i64 24, !51, i64 32}
!100 = !{!"_ZTSN7CaDiCaL8AveragesUt_Ut0_E", !99, i64 0, !99, i64 40}
!101 = !{!"_ZTSN7CaDiCaL5LimitE", !10, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !5, i64 128, !5, i64 132, !6, i64 136, !12, i64 152, !102, i64 160}
!102 = !{!"_ZTSN7CaDiCaL5LimitUt_E", !5, i64 0, !5, i64 4}
!103 = !{!"_ZTSN7CaDiCaL4LastE", !104, i64 0, !104, i64 8, !105, i64 16, !106, i64 40, !107, i64 56, !107, i64 64, !108, i64 72, !109, i64 80}
!104 = !{!"_ZTSN7CaDiCaL4LastUt_E", !12, i64 0}
!105 = !{!"_ZTSN7CaDiCaL4LastUt0_E", !12, i64 0, !12, i64 8, !12, i64 16}
!106 = !{!"_ZTSN7CaDiCaL4LastUt1_E", !12, i64 0, !12, i64 8}
!107 = !{!"_ZTSN7CaDiCaL4LastUt2_E", !12, i64 0}
!108 = !{!"_ZTSN7CaDiCaL4LastUt3_E", !12, i64 0}
!109 = !{!"_ZTSN7CaDiCaL4LastUt4_E", !12, i64 0}
!110 = !{!"_ZTSN7CaDiCaL3IncE", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40}
!111 = !{!"p1 _ZTSN7CaDiCaL5ProofE", !18, i64 0}
!112 = !{!"p1 _ZTSN7CaDiCaL11LratBuilderE", !18, i64 0}
!113 = !{!"_ZTSSt6vectorIPN7CaDiCaL6TracerESaIS2_EE", !114, i64 0}
!114 = !{!"_ZTSSt12_Vector_baseIPN7CaDiCaL6TracerESaIS2_EE", !115, i64 0}
end_hunk_0
