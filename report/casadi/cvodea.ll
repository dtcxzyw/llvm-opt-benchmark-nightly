Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/cvodea?download=true
inline.NumInlined: 6
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@CVAhermiteMalloc:bb.a
bb.j:                                             ; preds = %bb.h
  %i.af = load i32, ptr %i.h, align 8, !tbaa !38
  %.not76 = icmp eq i32 %i.af, 0
  br i1 %.not76, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = load i32, ptr %i.u, align 4, !tbaa !49
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.ai = tail call ptr @N_VCloneVectorArray(i32 noundef %i.ag, ptr noundef %i.ah) #7 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !54
  %i.ak = icmp eq ptr %i.ai, null
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.am = load ptr, ptr %i.v, align 8, !tbaa !52
  tail call void @N_VDestroy(ptr noundef %i.am) #7
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !53
  tail call void @N_VDestroy(ptr noundef %i.an) #7
  br label %.loopexit85.sink.split

bb.m:                                             ; preds = %bb.k
  %i.ao = load i32, ptr %i.u, align 4, !tbaa !49
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.aq = tail call ptr @N_VCloneVectorArray(i32 noundef %i.ao, ptr noundef %i.ap) #7 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !55
  %i.as = icmp eq ptr %i.aq, null
  br i1 %i.as, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.av = load ptr, ptr %i.v, align 8, !tbaa !52
  tail call void @N_VDestroy(ptr noundef %i.av) #7
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !53
  tail call void @N_VDestroy(ptr noundef %i.aw) #7
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !54
  %i.ay = load i32, ptr %i.u, align 4, !tbaa !49
  tail call void @N_VDestroyVectorArray(ptr noundef %i.ax, i32 noundef %i.ay) #7
  br label %.loopexit85.sink.split

bb.o:                                             ; preds = %bb.m, %bb.j
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.072106
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !31
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.v, ptr %i.bb, align 8, !tbaa !57
  %i.bc = add nuw nsw i64 %.072106, 1
  %i.bd = load i64, ptr %i.s, align 8, !tbaa !28
  %.not75.not.not = icmp slt i64 %.072106, %i.bd
  br i1 %.not75.not.not, label %bb.f, label %.loopexit, !llvm.loop !120

.loopexit85.sink.split:                           ; preds = %bb.g, %bb.i, %bb.l, %bb.n
  tail call void @free(ptr noundef nonnull %i.v) #7
  br label %.loopexit85

.loopexit85:                                      ; preds = %bb.f, %.loopexit85.sink.split
  %i.be = load ptr, ptr %i.f, align 8, !tbaa !48
  tail call void @N_VDestroy(ptr noundef %i.be) #7
  %i.bf = load i32, ptr %i.h, align 8, !tbaa !38
  %.not78 = icmp eq i32 %i.bf, 0
  br i1 %.not78, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.loopexit85
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 488
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !50
  %i.bi = load i32, ptr %i.u, align 4, !tbaa !49
  tail call void @N_VDestroyVectorArray(ptr noundef %i.bh, i32 noundef %i.bi) #7
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.loopexit85
  %.not109 = icmp eq i64 %.072106, 0
  br i1 %.not109, label %.loopexit, label %.lr.ph108

.lr.ph108:                                        ; preds = %bb.q, %bb.s
  %.1107 = phi i64 [ %i.cc, %bb.s ], [ 0, %bb.q ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.1107 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !31
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !57 ; 4 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !52
  tail call void @N_VDestroy(ptr noundef %i.bn) #7
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !53
  tail call void @N_VDestroy(ptr noundef %i.bp) #7
  %i.bq = load i32, ptr %i.h, align 8, !tbaa !38
  %.not79 = icmp eq i32 %i.bq, 0
  br i1 %.not79, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph108
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !54
  %i.bt = load i32, ptr %i.u, align 4, !tbaa !49
  tail call void @N_VDestroyVectorArray(ptr noundef %i.bs, i32 noundef %i.bt) #7
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !55
  %i.bw = load i32, ptr %i.u, align 4, !tbaa !49
  tail call void @N_VDestroyVectorArray(ptr noundef %i.bv, i32 noundef %i.bw) #7
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph108
  %i.bx = load ptr, ptr %i.bj, align 8, !tbaa !31
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !57
  tail call void @free(ptr noundef %i.bz) #7
  %i.ca = load ptr, ptr %i.bj, align 8, !tbaa !31
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr null, ptr %i.cb, align 8, !tbaa !57
  %i.cc = add nuw i64 %.1107, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.cc, %.072106
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph108, !llvm.loop !121

.loopexit:                                        ; preds = %bb.o, %bb.s, %bb.e, %bb.q, %bb.a, %bb.d
  %.073 = phi i32 [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.q ], [ 1, %bb.e ], [ 0, %bb.s ], [ 1, %bb.o ]
  ret i32 %.073
}

; Function Attrs: nounwind uwtable
define internal void @CVAhermiteFree(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 480
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  tail call void @N_VDestroy(ptr noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !38
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 488
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.j = load i32, ptr %i.i, align 4, !tbaa !49
  tail call void @N_VDestroyVectorArray(ptr noundef %i.h, i32 noundef %i.j) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !28
  %.not2123 = icmp slt i64 %i.n, 0
  br i1 %.not2123, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.024 = phi i64 [ 0, %.lr.ph ], [ %i.ai, %bb.f ] ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.024 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !57   ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !52
  tail call void @N_VDestroy(ptr noundef %i.t) #7
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !53
  tail call void @N_VDestroy(ptr noundef %i.v) #7
  %i.w = load i32, ptr %i.e, align 8, !tbaa !38
  %.not22 = icmp eq i32 %i.w, 0
  br i1 %.not22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !54
  %i.z = load i32, ptr %i.o, align 4, !tbaa !49
  tail call void @N_VDestroyVectorArray(ptr noundef %i.y, i32 noundef %i.z) #7
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !55
  %i.ac = load i32, ptr %i.o, align 4, !tbaa !49
  tail call void @N_VDestroyVectorArray(ptr noundef %i.ab, i32 noundef %i.ac) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !31
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !57
  tail call void @free(ptr noundef %i.af) #7
  %i.ag = load ptr, ptr %i.p, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr null, ptr %i.ah, align 8, !tbaa !57
  %i.ai = add nuw nsw i64 %.024, 1
  %i.aj = load i64, ptr %i.m, align 8, !tbaa !28
  %.not21.not = icmp slt i64 %.024, %i.aj
  br i1 %.not21.not, label %bb.d, label %._crit_edge, !llvm.loop !122

._crit_edge:                                      ; preds = %bb.f, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 -107, 1) i32 @CVAhermiteGetY(ptr nofree noundef readonly captures(none) %0, double noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 18 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 164
  %i.f = load i32, ptr %i.e, align 4, !tbaa !39
  %.not = icmp eq i32 %i.f, 0                     ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.h = load i32, ptr %i.g, align 4, !tbaa !49
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ]    ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load double, ptr %i.j, align 8, !tbaa !58
  %i.l = load double, ptr %i.b, align 8, !tbaa !59
  %i.m = fcmp ogt double %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 156 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !60
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.q = load i64, ptr %i.p, align 8, !tbaa !61
  %i.r = add nsw i64 %i.q, -1
  store i32 0, ptr %i.n, align 4, !tbaa !60
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  %i.t = load i64, ptr %i.s, align 8, !tbaa !62
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0132 = phi i32 [ 0, %bb.e ], [ 1, %bb.d ]
  %.0.i = phi i64 [ %i.t, %bb.e ], [ %i.r, %bb.d ] ; 5 uses
  %i.u = select i1 %i.m, double 1.000000e+00, double -1.000000e+00 ; 4 uses
  %i.v = getelementptr [8 x i8], ptr %i.d, i64 %.0.i ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 -8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !31
  %i.y = load double, ptr %i.x, align 8, !tbaa !63
  %i.z = fsub double %1, %i.y
  %i.aa = fmul double %i.u, %i.z
  %i.ab = fcmp olt double %i.aa, 0.000000e+00
  br i1 %i.ab, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ac = icmp eq i64 %.0.i, 0
  br i1 %i.ac, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %storemerge5360.i = phi i64 [ %i.al, %bb.h ], [ %.0.i, %bb.g ] ; 4 uses
  %i.ad = getelementptr [8 x i8], ptr %i.d, i64 %storemerge5360.i
  %i.ae = getelementptr i8, ptr %i.ad, i64 -8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !31 ; 2 uses
  %i.ag = load double, ptr %i.af, align 8, !tbaa !63 ; 2 uses
  %i.ah = fsub double %1, %i.ag
  %i.ai = fmul double %i.u, %i.ah
  %i.aj = fcmp ugt double %i.ai, 0.000000e+00
  br i1 %i.aj, label %.thread146, label %bb.h

.thread146:                                       ; preds = %.lr.ph.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  store i64 %storemerge5360.i, ptr %i.ak, align 8, !tbaa !62
  br label %bb.k

bb.h:                                             ; preds = %.lr.ph.i
  %i.al = add nsw i64 %storemerge5360.i, -1       ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.h, %bb.g
  %i.an = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.ao = load double, ptr %i.an, align 8, !tbaa !63
  %i.ap = fsub double %1, %i.ao
  %i.aq = tail call double @SUNRabs(double noundef %i.ap) #7
  %i.ar = load double, ptr %0, align 8, !tbaa !64
  %i.as = fmul double %i.ar, 1.000000e+06
  %i.at = fcmp ogt double %i.aq, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  store i64 1, ptr %i.au, align 8, !tbaa !62
  br i1 %i.at, label %.loopexit, label %.thread

bb.i:                                             ; preds = %bb.f
  %i.av = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.aw = load double, ptr %i.av, align 8, !tbaa !63
  %i.ax = fsub double %1, %i.aw
  %i.ay = fmul double %i.u, %i.ax
  %i.az = fcmp ogt double %i.ay, 0.000000e+00
  br i1 %i.az, label %.preheader, label %.loopexit154

.preheader:                                       ; preds = %bb.i, %.preheader
  %storemerge.i = phi i64 [ %i.bg, %.preheader ], [ %.0.i, %bb.i ] ; 3 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.d, i64 %storemerge.i
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !31
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !63
  %i.bd = fsub double %1, %i.bc
  %i.be = fmul double %i.u, %i.bd
  %i.bf = fcmp ogt double %i.be, 0.000000e+00
  %i.bg = add nsw i64 %storemerge.i, 1
  br i1 %i.bf, label %.preheader, label %.loopexit154

.loopexit154:                                     ; preds = %.preheader, %bb.i
  %.0135.ph = phi i64 [ %.0.i, %bb.i ], [ %storemerge.i, %.preheader ] ; 4 uses
  %.2134.ph = phi i32 [ %.0132, %bb.i ], [ 1, %.preheader ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  store i64 %.0135.ph, ptr %i.bh, align 8, !tbaa !62
  %i.bi = icmp eq i64 %.0135.ph, 0
  br i1 %i.bi, label %.thread, label %.loopexit154._crit_edge

.loopexit154._crit_edge:                          ; preds = %.loopexit154
  %.phi.trans.insert = getelementptr [8 x i8], ptr %i.d, i64 %.0135.ph
  %.phi.trans.insert174 = getelementptr i8, ptr %.phi.trans.insert, i64 -8
  %.pre = load ptr, ptr %.phi.trans.insert174, align 8, !tbaa !31 ; 2 uses
  %.pre175 = load double, ptr %.pre, align 8, !tbaa !63
  %i.bj = icmp eq i32 %.2134.ph, 0
  br label %bb.k

.thread:                                          ; preds = %._crit_edge.i, %.loopexit154
  %i.bk = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !57 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !52
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.bn, ptr noundef %2) #7
  %i.bo = icmp sgt i32 %i.i, 0
  br i1 %i.bo, label %.lr.ph160, label %.loopexit

.lr.ph160:                                        ; preds = %.thread
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.trip.count172 = zext nneg i32 %i.i to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph160, %bb.j
  %indvars.iv169 = phi i64 [ 0, %.lr.ph160 ], [ %indvars.iv.next170, %bb.j ] ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !54
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv169
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !65
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv169
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !65
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.bs, ptr noundef %i.bu) #7
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1 ; 2 uses
  %exitcond173.not = icmp eq i64 %indvars.iv.next170, %wide.trip.count172
  br i1 %exitcond173.not, label %.loopexit, label %bb.j, !llvm.loop !123

bb.k:                                             ; preds = %.loopexit154._crit_edge, %.thread146
  %i.bv = phi double [ %i.ag, %.thread146 ], [ %.pre175, %.loopexit154._crit_edge ] ; 2 uses
  %i.bw = phi ptr [ %i.af, %.thread146 ], [ %.pre, %.loopexit154._crit_edge ]
  %.2134.ph151 = phi i1 [ false, %.thread146 ], [ %i.bj, %.loopexit154._crit_edge ]
  %.0135.ph150 = phi i64 [ %storemerge5360.i, %.thread146 ], [ %.0135.ph, %.loopexit154._crit_edge ]
  %4 = getelementptr [8 x i8], ptr %i.d, i64 %.0135.ph150
  %5 = load ptr, ptr %4, align 8, !tbaa !31       ; 2 uses
  %6 = load double, ptr %5, align 8, !tbaa !63    ; 2 uses
  %i.bx = fsub double %6, %i.bv                   ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !57 ; 4 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !52 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !53 ; 3 uses
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !54
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !55
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0123 = phi ptr [ %i.ce, %bb.l ], [ null, %bb.k ] ; 2 uses
  %.0122 = phi ptr [ %i.cg, %bb.l ], [ null, %bb.k ] ; 2 uses
  br i1 %.2134.ph151, label %.loopexit153, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !57 ; 4 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !52
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !53
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !65
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.cj, double noundef -1.000000e+00, ptr noundef %i.ca, ptr noundef %i.cn) #7
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !65
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.cl, double noundef 1.000000e+00, ptr noundef %i.cc, ptr noundef %i.cp) #7
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !65 ; 2 uses
  %i.cr = load ptr, ptr %i.cm, align 8, !tbaa !65
  tail call void @N_VLinearSum(double noundef %i.bx, ptr noundef %i.cq, double noundef -2.000000e+00, ptr noundef %i.cr, ptr noundef %i.cq) #7
  %i.cs = load ptr, ptr %i.cm, align 8, !tbaa !65 ; 2 uses
  %i.ct = fneg double %i.bx                       ; 2 uses
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.cs, double noundef %i.ct, ptr noundef %i.cc, ptr noundef %i.cs) #7
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !54
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !55
  %i.cy = icmp sgt i32 %i.i, 0
  br i1 %i.cy, label %.lr.ph, label %.loopexit153

.lr.ph:                                           ; preds = %bb.n
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 272 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 280 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.i to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 10 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !65
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.0123, i64 %indvars.iv
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !65
  %i.df = load ptr, ptr %i.cz, align 8, !tbaa !66
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !65
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.dc, double noundef -1.000000e+00, ptr noundef %i.de, ptr noundef %i.dh) #7
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !65
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %.0122, i64 %indvars.iv ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !65
  %i.dm = load ptr, ptr %i.da, align 8, !tbaa !66
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !65
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.dj, double noundef 1.000000e+00, ptr noundef %i.dl, ptr noundef %i.do) #7
  %i.dp = load ptr, ptr %i.da, align 8, !tbaa !66
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !65 ; 2 uses
  %i.ds = load ptr, ptr %i.cz, align 8, !tbaa !66
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !65
  tail call void @N_VLinearSum(double noundef %i.bx, ptr noundef %i.dr, double noundef -2.000000e+00, ptr noundef %i.du, ptr noundef %i.dr) #7
  %i.dv = load ptr, ptr %i.cz, align 8, !tbaa !66
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !65 ; 2 uses
  %i.dy = load ptr, ptr %i.dk, align 8, !tbaa !65
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.dx, double noundef %i.ct, ptr noundef %i.dy, ptr noundef %i.dx) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit153, label %bb.o, !llvm.loop !124

.loopexit153:                                     ; preds = %bb.o, %bb.n, %bb.m
  %i.dz = fsub double %1, %i.bv                   ; 3 uses
  %i.ea = fdiv double %i.dz, %i.bx                ; 2 uses
  %i.eb = fmul double %i.ea, %i.ea                ; 3 uses
  %i.ec = fsub double %1, %6
  %i.ed = fmul double %i.ec, %i.eb
  %i.ee = fdiv double %i.ed, %i.bx                ; 2 uses
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.ca, double noundef %i.dz, ptr noundef %i.cc, ptr noundef %2) #7
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !65
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %2, double noundef %i.eb, ptr noundef %i.eg, ptr noundef %2) #7
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !65
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %2, double noundef %i.ee, ptr noundef %i.ei, ptr noundef %2) #7
  %i.ej = icmp sgt i32 %i.i, 0
  br i1 %i.ej, label %.lr.ph158, label %.loopexit

.lr.ph158:                                        ; preds = %.loopexit153
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %wide.trip.count167 = zext nneg i32 %i.i to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph158, %bb.p
  %indvars.iv164 = phi i64 [ 0, %.lr.ph158 ], [ %indvars.iv.next165, %bb.p ] ; 6 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %.0123, i64 %indvars.iv164
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !65
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %.0122, i64 %indvars.iv164
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !65
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv164 ; 3 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !65
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.en, double noundef %i.dz, ptr noundef %i.ep, ptr noundef %i.er) #7
  %i.es = load ptr, ptr %i.eq, align 8, !tbaa !65 ; 2 uses
  %i.et = load ptr, ptr %i.ek, align 8, !tbaa !66
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %indvars.iv164
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !65
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.es, double noundef %i.eb, ptr noundef %i.ev, ptr noundef %i.es) #7
  %i.ew = load ptr, ptr %i.eq, align 8, !tbaa !65 ; 2 uses
  %i.ex = load ptr, ptr %i.el, align 8, !tbaa !66
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv164
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !65
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.ew, double noundef %i.ee, ptr noundef %i.ez, ptr noundef %i.ew) #7
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 2 uses
  %exitcond168.not = icmp eq i64 %indvars.iv.next165, %wide.trip.count167
  br i1 %exitcond168.not, label %.loopexit, label %bb.p, !llvm.loop !125

.loopexit:                                        ; preds = %bb.p, %bb.j, %._crit_edge.i, %.loopexit153, %.thread
  %.0124 = phi i32 [ 0, %.thread ], [ 0, %bb.j ], [ 0, %.loopexit153 ], [ -107, %._crit_edge.i ], [ 0, %bb.p ]
  ret i32 %.0124
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @CVAhermiteStorePnt(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !65
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !52
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.f, ptr noundef %i.g) #7
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !38
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.loopexit41, label %.preheader40

.preheader40:                                     ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !49
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %.loopexit41

.lr.ph:                                           ; preds = %.preheader40
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !66
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !65
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !54
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !65
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.q, ptr noundef %i.t) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = load i32, ptr %i.j, align 4, !tbaa !49
  %i.v = sext i32 %i.u to i64
  %i.w = icmp slt i64 %indvars.iv.next, %i.v
  br i1 %i.w, label %bb.b, label %.loopexit41, !llvm.loop !126

.loopexit41:                                      ; preds = %bb.b, %.preheader40, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.y = load i64, ptr %i.x, align 8, !tbaa !67
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !53 ; 2 uses
  br i1 %i.z, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.loopexit41
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !128
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 984 ; 2 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !68
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !52
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !129
  %i.aj = tail call i32 %i.ad(double noundef %i.af, ptr noundef %i.ag, ptr noundef %i.ab, ptr noundef %i.ai) #7 ; 0 uses
  %i.ak = load i32, ptr %i.h, align 8, !tbaa !38
  %.not39 = icmp eq i32 %i.ak, 0
  br i1 %.not39, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.al = load double, ptr %i.ae, align 8, !tbaa !68
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !52
  %i.an = load ptr, ptr %i.aa, align 8, !tbaa !53
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !54
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !55
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !47
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !130
  %i.aw = tail call i32 @cvSensRhsWrapper(ptr noundef nonnull %0, double noundef %i.al, ptr noundef %i.am, ptr noundef %i.an, ptr noundef %i.ap, ptr noundef %i.ar, ptr noundef %i.at, ptr noundef %i.av) #7 ; 0 uses
  br label %.loopexit

bb.e:                                             ; preds = %.loopexit41
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 944 ; 2 uses
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !69
  %i.az = fdiv double 1.000000e+00, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !65
  tail call void @N_VScale(double noundef %i.az, ptr noundef %i.bb, ptr noundef %i.ab) #7
  %i.bc = load i32, ptr %i.h, align 8, !tbaa !38
  %.not38 = icmp eq i32 %i.bc, 0
  br i1 %.not38, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !49
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph44, label %.loopexit

.lr.ph44:                                         ; preds = %.preheader
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph44, %bb.f
  %indvars.iv46 = phi i64 [ 0, %.lr.ph44 ], [ %indvars.iv.next47, %bb.f ] ; 3 uses
  %i.bi = load double, ptr %i.ax, align 8, !tbaa !69
  %i.bj = fdiv double 1.000000e+00, %i.bi
  %i.bk = load ptr, ptr %i.bg, align 8, !tbaa !66
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv46
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !65
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !55
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv46
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !65
  tail call void @N_VScale(double noundef %i.bj, ptr noundef %i.bm, ptr noundef %i.bp) #7
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %i.bq = load i32, ptr %i.bd, align 4, !tbaa !49
  %i.br = sext i32 %i.bq to i64
  %i.bs = icmp slt i64 %indvars.iv.next47, %i.br
  br i1 %i.bs, label %bb.f, label %.loopexit, !llvm.loop !127

.loopexit:                                        ; preds = %bb.f, %.preheader, %bb.e, %bb.c, %bb.d
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @CVApolynomialMalloc(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.e = tail call ptr @N_VClone(ptr noundef %i.d) #7 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 480 ; 3 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !48
  %i.g = icmp eq ptr %i.e, null
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !38
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.k = load i32, ptr %i.j, align 4, !tbaa !49
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.m = tail call ptr @N_VCloneVectorArray(i32 noundef %i.k, ptr noundef %i.l) #7 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 488
  store ptr %i.m, ptr %i.n, align 8, !tbaa !50
  %i.o = icmp eq ptr %i.m, null
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !48
  tail call void @N_VDestroy(ptr noundef %i.p) #7
  br label %.loopexit
end_hunk_0
