Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/idaa?download=true
inline.NumInlined: 10
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@IDAAhermiteMalloc:bb.a
bb.p:                                             ; preds = %bb.n
  %i.bc = load i32, ptr %i.ai, align 4, !tbaa !50
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.be = tail call ptr @N_VCloneVectorArray(i32 noundef %i.bc, ptr noundef %i.bd) #7 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !57
  %i.bg = icmp eq ptr %i.be, null
  br i1 %i.bg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.bj = load ptr, ptr %i.aj, align 8, !tbaa !54
  tail call void @N_VDestroy(ptr noundef %i.bj) #7
  %i.bk = load ptr, ptr %i.bh, align 8, !tbaa !55
  tail call void @N_VDestroy(ptr noundef %i.bk) #7
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !56
  %i.bm = load i32, ptr %i.ai, align 4, !tbaa !50
  tail call void @N_VDestroyVectorArray(ptr noundef %i.bl, i32 noundef %i.bm) #7
  br label %.loopexit100.sink.split

bb.r:                                             ; preds = %bb.p, %bb.m
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.087121
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !28
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %i.aj, ptr %i.bp, align 8, !tbaa !31
  %i.bq = add nuw nsw i64 %.087121, 1
  %i.br = load i64, ptr %i.ag, align 8, !tbaa !25
  %.not90.not.not = icmp slt i64 %.087121, %i.br
  br i1 %.not90.not.not, label %bb.i, label %.loopexit, !llvm.loop !132

.loopexit100.sink.split:                          ; preds = %bb.j, %bb.l, %bb.o, %bb.q
  tail call void @free(ptr noundef nonnull %i.aj) #7
  br label %.loopexit100

.loopexit100:                                     ; preds = %bb.i, %.loopexit100.sink.split
  %i.bs = load ptr, ptr %i.f, align 8, !tbaa !48
  tail call void @N_VDestroy(ptr noundef %i.bs) #7
  %i.bt = load ptr, ptr %i.j, align 8, !tbaa !49
  tail call void @N_VDestroy(ptr noundef %i.bt) #7
  %i.bu = load i32, ptr %i.l, align 8, !tbaa !37
  %.not93 = icmp eq i32 %i.bu, 0
  br i1 %.not93, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.loopexit100
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !51
  %i.bx = load i32, ptr %i.ai, align 4, !tbaa !50
  tail call void @N_VDestroyVectorArray(ptr noundef %i.bw, i32 noundef %i.bx) #7
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !52
  %i.ca = load i32, ptr %i.ai, align 4, !tbaa !50
  tail call void @N_VDestroyVectorArray(ptr noundef %i.bz, i32 noundef %i.ca) #7
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.loopexit100
  %.not124 = icmp eq i64 %.087121, 0
  br i1 %.not124, label %.loopexit, label %.lr.ph123

.lr.ph123:                                        ; preds = %bb.t, %bb.v
  %.1122 = phi i64 [ %i.cu, %bb.v ], [ 0, %bb.t ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.1122 ; 3 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !28
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !31 ; 4 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !54
  tail call void @N_VDestroy(ptr noundef %i.cf) #7
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !55
  tail call void @N_VDestroy(ptr noundef %i.ch) #7
  %i.ci = load i32, ptr %i.l, align 8, !tbaa !37
  %.not94 = icmp eq i32 %i.ci, 0
  br i1 %.not94, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph123
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !56
  %i.cl = load i32, ptr %i.ai, align 4, !tbaa !50
  tail call void @N_VDestroyVectorArray(ptr noundef %i.ck, i32 noundef %i.cl) #7
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !57
  %i.co = load i32, ptr %i.ai, align 4, !tbaa !50
  tail call void @N_VDestroyVectorArray(ptr noundef %i.cn, i32 noundef %i.co) #7
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph123
  %i.cp = load ptr, ptr %i.cb, align 8, !tbaa !28
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !31
  tail call void @free(ptr noundef %i.cr) #7
  %i.cs = load ptr, ptr %i.cb, align 8, !tbaa !28
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr null, ptr %i.ct, align 8, !tbaa !31
  %i.cu = add nuw i64 %.1122, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.cu, %.087121
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph123, !llvm.loop !133

.loopexit:                                        ; preds = %bb.r, %bb.v, %bb.h, %bb.t, %bb.b, %bb.a, %bb.g, %bb.e
  %.088 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.t ], [ 1, %bb.h ], [ 0, %bb.v ], [ 1, %bb.r ]
  ret i32 %.088
}

; Function Attrs: nounwind uwtable
define internal void @IDAAhermiteFree(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  tail call void @N_VDestroy(ptr noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49
  tail call void @N_VDestroy(ptr noundef %i.f) #7
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !37
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !50
  tail call void @N_VDestroyVectorArray(ptr noundef %i.j, i32 noundef %i.l) #7
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !52
  %i.o = load i32, ptr %i.k, align 4, !tbaa !50
  tail call void @N_VDestroyVectorArray(ptr noundef %i.n, i32 noundef %i.o) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !25   ; 2 uses
  %.not2629 = icmp slt i64 %i.s, 0
  br i1 %.not2629, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.h
  %i.u = phi i64 [ %i.s, %.lr.ph ], [ %i.ao, %bb.h ]
  %.030 = phi i64 [ 0, %.lr.ph ], [ %i.ap, %bb.h ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.030 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !28
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !31   ; 5 uses
  %.not27 = icmp eq ptr %i.y, null
  br i1 %.not27, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !54
  tail call void @N_VDestroy(ptr noundef %i.z) #7
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !55
  tail call void @N_VDestroy(ptr noundef %i.ab) #7
  %i.ac = load i32, ptr %i.g, align 8, !tbaa !37
  %.not28 = icmp eq i32 %i.ac, 0
  br i1 %.not28, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !56
  %i.af = load i32, ptr %i.t, align 4, !tbaa !50
  tail call void @N_VDestroyVectorArray(ptr noundef %i.ae, i32 noundef %i.af) #7
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !57
  %i.ai = load i32, ptr %i.t, align 4, !tbaa !50
  tail call void @N_VDestroyVectorArray(ptr noundef %i.ah, i32 noundef %i.ai) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aj = load ptr, ptr %i.v, align 8, !tbaa !28
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !31
  tail call void @free(ptr noundef %i.al) #7
  %i.am = load ptr, ptr %i.v, align 8, !tbaa !28
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr null, ptr %i.an, align 8, !tbaa !31
  %.pre = load i64, ptr %i.r, align 8, !tbaa !25
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  %i.ao = phi i64 [ %i.u, %bb.d ], [ %.pre, %bb.g ] ; 2 uses
  %i.ap = add nuw nsw i64 %.030, 1
  %.not26.not = icmp slt i64 %.030, %i.ao
  br i1 %.not26.not, label %bb.d, label %._crit_edge, !llvm.loop !134

._crit_edge:                                      ; preds = %bb.h, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 -107, 1) i32 @IDAAhermiteGetY(ptr nofree noundef readonly captures(none) %0, double noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 20 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 164
  %i.f = load i32, ptr %i.e, align 4, !tbaa !38
  %.not = icmp eq i32 %i.f, 0                     ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.h = load i32, ptr %i.g, align 4, !tbaa !50
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ]    ; 7 uses
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
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.t = load i64, ptr %i.s, align 8, !tbaa !62
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0173 = phi i32 [ 0, %bb.e ], [ 1, %bb.d ]
  %.0.i = phi i64 [ %i.t, %bb.e ], [ %i.r, %bb.d ] ; 5 uses
  %i.u = select i1 %i.m, double 1.000000e+00, double -1.000000e+00 ; 4 uses
  %i.v = getelementptr [8 x i8], ptr %i.d, i64 %.0.i ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 -8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !28
  %i.y = load double, ptr %i.x, align 8, !tbaa !63
  %i.z = fsub double %1, %i.y
  %i.aa = fmul double %i.u, %i.z
  %i.ab = fcmp olt double %i.aa, 0.000000e+00
  br i1 %i.ab, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ac = icmp eq i64 %.0.i, 0
  br i1 %i.ac, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %storemerge5461.i = phi i64 [ %i.al, %bb.h ], [ %.0.i, %bb.g ] ; 4 uses
  %i.ad = getelementptr [8 x i8], ptr %i.d, i64 %storemerge5461.i
  %i.ae = getelementptr i8, ptr %i.ad, i64 -8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !28 ; 2 uses
  %i.ag = load double, ptr %i.af, align 8, !tbaa !63 ; 2 uses
  %i.ah = fsub double %1, %i.ag
  %i.ai = fmul double %i.u, %i.ah
  %i.aj = fcmp ugt double %i.ai, 0.000000e+00
  br i1 %i.aj, label %.thread187, label %bb.h

.thread187:                                       ; preds = %.lr.ph.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  store i64 %storemerge5461.i, ptr %i.ak, align 8, !tbaa !62
  br label %bb.k

bb.h:                                             ; preds = %.lr.ph.i
  %i.al = add nsw i64 %storemerge5461.i, -1       ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.h, %bb.g
  %i.an = load ptr, ptr %i.d, align 8, !tbaa !28
  %i.ao = load double, ptr %i.an, align 8, !tbaa !63
  %i.ap = fsub double %1, %i.ao
  %i.aq = tail call double @SUNRabs(double noundef %i.ap) #7
  %i.ar = load double, ptr %0, align 8, !tbaa !64
  %i.as = fmul double %i.ar, 1.000000e+06
  %i.at = fcmp ogt double %i.aq, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  store i64 1, ptr %i.au, align 8, !tbaa !62
  br i1 %i.at, label %.loopexit, label %.thread

bb.i:                                             ; preds = %bb.f
  %i.av = load ptr, ptr %i.v, align 8, !tbaa !28
  %i.aw = load double, ptr %i.av, align 8, !tbaa !63
  %i.ax = fsub double %1, %i.aw
  %i.ay = fmul double %i.u, %i.ax
  %i.az = fcmp ogt double %i.ay, 0.000000e+00
  br i1 %i.az, label %.preheader, label %.loopexit195

.preheader:                                       ; preds = %bb.i, %.preheader
  %storemerge.i = phi i64 [ %i.bg, %.preheader ], [ %.0.i, %bb.i ] ; 3 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.d, i64 %storemerge.i
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !28
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !63
  %i.bd = fsub double %1, %i.bc
  %i.be = fmul double %i.u, %i.bd
  %i.bf = fcmp ogt double %i.be, 0.000000e+00
  %i.bg = add nsw i64 %storemerge.i, 1
  br i1 %i.bf, label %.preheader, label %.loopexit195

.loopexit195:                                     ; preds = %.preheader, %bb.i
  %.0176.ph = phi i64 [ %.0.i, %bb.i ], [ %storemerge.i, %.preheader ] ; 4 uses
  %.2175.ph = phi i32 [ %.0173, %bb.i ], [ 1, %.preheader ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  store i64 %.0176.ph, ptr %i.bh, align 8, !tbaa !62
  %i.bi = icmp eq i64 %.0176.ph, 0
  br i1 %i.bi, label %.thread, label %.loopexit195._crit_edge

.loopexit195._crit_edge:                          ; preds = %.loopexit195
  %.phi.trans.insert = getelementptr [8 x i8], ptr %i.d, i64 %.0176.ph
  %.phi.trans.insert224 = getelementptr i8, ptr %.phi.trans.insert, i64 -8
  %.pre = load ptr, ptr %.phi.trans.insert224, align 8, !tbaa !28 ; 2 uses
  %.pre225 = load double, ptr %.pre, align 8, !tbaa !63
  %i.bj = icmp eq i32 %.2175.ph, 0
  br label %bb.k

.thread:                                          ; preds = %._crit_edge.i, %.loopexit195
  %i.bk = load ptr, ptr %i.d, align 8, !tbaa !28
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !31 ; 4 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !54
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.bn, ptr noundef %2) #7
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !55
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.bp, ptr noundef %3) #7
  %i.bq = icmp sgt i32 %i.i, 0
  br i1 %i.bq, label %.lr.ph205, label %.loopexit

.lr.ph205:                                        ; preds = %.thread
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %wide.trip.count222 = zext nneg i32 %i.i to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph205, %bb.j
  %indvars.iv219 = phi i64 [ 0, %.lr.ph205 ], [ %indvars.iv.next220, %bb.j ] ; 5 uses
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !56
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv219
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !65
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv219
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !65
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.bv, ptr noundef %i.bx) #7
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !57
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv219
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !65
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv219
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !65
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.ca, ptr noundef %i.cc) #7
  %indvars.iv.next220 = add nuw nsw i64 %indvars.iv219, 1 ; 2 uses
  %exitcond223.not = icmp eq i64 %indvars.iv.next220, %wide.trip.count222
  br i1 %exitcond223.not, label %.loopexit, label %bb.j, !llvm.loop !135

bb.k:                                             ; preds = %.loopexit195._crit_edge, %.thread187
  %i.cd = phi double [ %i.ag, %.thread187 ], [ %.pre225, %.loopexit195._crit_edge ] ; 3 uses
  %i.ce = phi ptr [ %i.af, %.thread187 ], [ %.pre, %.loopexit195._crit_edge ]
  %.2175.ph192 = phi i1 [ false, %.thread187 ], [ %i.bj, %.loopexit195._crit_edge ]
  %.0176.ph191 = phi i64 [ %storemerge5461.i, %.thread187 ], [ %.0176.ph, %.loopexit195._crit_edge ]
  %6 = getelementptr [8 x i8], ptr %i.d, i64 %.0176.ph191
  %7 = load ptr, ptr %6, align 8, !tbaa !28       ; 2 uses
  %8 = load double, ptr %7, align 8, !tbaa !63    ; 3 uses
  %i.cf = fsub double %8, %i.cd                   ; 7 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !31 ; 4 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !54 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !55 ; 4 uses
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !56
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !57
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0163 = phi ptr [ %i.cm, %bb.l ], [ null, %bb.k ] ; 2 uses
  %.0162 = phi ptr [ %i.co, %bb.l ], [ null, %bb.k ] ; 3 uses
  br i1 %.2175.ph192, label %.loopexit194, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !31 ; 4 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !54
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !55
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 3 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !65
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.cr, double noundef -1.000000e+00, ptr noundef %i.ci, ptr noundef %i.cv) #7
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 184 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !65
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.ct, double noundef 1.000000e+00, ptr noundef %i.ck, ptr noundef %i.cx) #7
  %i.cy = load ptr, ptr %i.cw, align 8, !tbaa !65 ; 2 uses
  %i.cz = load ptr, ptr %i.cu, align 8, !tbaa !65
  tail call void @N_VLinearSum(double noundef %i.cf, ptr noundef %i.cy, double noundef -2.000000e+00, ptr noundef %i.cz, ptr noundef %i.cy) #7
  %i.da = load ptr, ptr %i.cu, align 8, !tbaa !65 ; 2 uses
  %i.db = fneg double %i.cf                       ; 2 uses
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.da, double noundef %i.db, ptr noundef %i.ck, ptr noundef %i.da) #7
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !56
  %i.de = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !57
  %i.dg = icmp sgt i32 %i.i, 0
  br i1 %i.dg, label %.lr.ph, label %.loopexit194

.lr.ph:                                           ; preds = %bb.n
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 224 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 232 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.i to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 10 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !65
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.0163, i64 %indvars.iv
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !65
  %i.dn = load ptr, ptr %i.dh, align 8, !tbaa !66
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !65
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.dk, double noundef -1.000000e+00, ptr noundef %i.dm, ptr noundef %i.dp) #7
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !65
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %.0162, i64 %indvars.iv ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !65
  %i.du = load ptr, ptr %i.di, align 8, !tbaa !66
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !65
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.dr, double noundef 1.000000e+00, ptr noundef %i.dt, ptr noundef %i.dw) #7
  %i.dx = load ptr, ptr %i.di, align 8, !tbaa !66
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !65 ; 2 uses
  %i.ea = load ptr, ptr %i.dh, align 8, !tbaa !66
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !65
  tail call void @N_VLinearSum(double noundef %i.cf, ptr noundef %i.dz, double noundef -2.000000e+00, ptr noundef %i.ec, ptr noundef %i.dz) #7
  %i.ed = load ptr, ptr %i.dh, align 8, !tbaa !66
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !65 ; 2 uses
  %i.eg = load ptr, ptr %i.ds, align 8, !tbaa !65
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.ef, double noundef %i.db, ptr noundef %i.eg, ptr noundef %i.ef) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit194, label %bb.o, !llvm.loop !136

.loopexit194:                                     ; preds = %bb.o, %bb.n, %bb.m
  %i.eh = fsub double %1, %i.cd                   ; 3 uses
  %i.ei = fdiv double %i.eh, %i.cf                ; 3 uses
  %i.ej = fmul double %i.ei, %i.ei                ; 3 uses
  %i.ek = fsub double %1, %8
  %i.el = fmul double %i.ek, %i.ej
  %i.em = fdiv double %i.el, %i.cf                ; 2 uses
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.ci, double noundef %i.eh, ptr noundef %i.ck, ptr noundef %2) #7
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !65
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %2, double noundef %i.ej, ptr noundef %i.eo, ptr noundef %2) #7
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 184 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !65
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %2, double noundef %i.em, ptr noundef %i.eq, ptr noundef %2) #7
  %i.er = icmp sgt i32 %i.i, 0                    ; 2 uses
  br i1 %i.er, label %.lr.ph199, label %._crit_edge

.lr.ph199:                                        ; preds = %.loopexit194
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %wide.trip.count212 = zext nneg i32 %i.i to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph199, %bb.p
  %indvars.iv209 = phi i64 [ 0, %.lr.ph199 ], [ %indvars.iv.next210, %bb.p ] ; 6 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %.0163, i64 %indvars.iv209
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !65
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %.0162, i64 %indvars.iv209
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !65
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv209 ; 3 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !65
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.ev, double noundef %i.eh, ptr noundef %i.ex, ptr noundef %i.ez) #7
  %i.fa = load ptr, ptr %i.ey, align 8, !tbaa !65 ; 2 uses
  %i.fb = load ptr, ptr %i.es, align 8, !tbaa !66
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv209
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !65
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.fa, double noundef %i.ej, ptr noundef %i.fd, ptr noundef %i.fa) #7
  %i.fe = load ptr, ptr %i.ey, align 8, !tbaa !65 ; 2 uses
  %i.ff = load ptr, ptr %i.et, align 8, !tbaa !66
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %indvars.iv209
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !65
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.fe, double noundef %i.em, ptr noundef %i.fh, ptr noundef %i.fe) #7
  %indvars.iv.next210 = add nuw nsw i64 %indvars.iv209, 1 ; 2 uses
  %exitcond213.not = icmp eq i64 %indvars.iv.next210, %wide.trip.count212
  br i1 %exitcond213.not, label %._crit_edge, label %bb.p, !llvm.loop !137

._crit_edge:                                      ; preds = %bb.p, %.loopexit194
  %i.fi = fdiv double %i.ei, %i.cf                ; 2 uses
  %i.fj = fmul double %8, -2.000000e+00
  %i.fk = tail call double @llvm.fmuladd.f64(double %1, double 3.000000e+00, double %i.fj)
  %i.fl = fsub double %i.fk, %i.cd
  %i.fm = fdiv double %i.fl, %i.cf
  %i.fn = fmul double %i.fi, %i.fm                ; 2 uses
  %i.fo = fmul double %i.fi, 2.000000e+00         ; 2 uses
  %i.fp = load ptr, ptr %i.en, align 8, !tbaa !65
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.ck, double noundef %i.fo, ptr noundef %i.fp, ptr noundef %3) #7
  %i.fq = load ptr, ptr %i.ep, align 8, !tbaa !65
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %3, double noundef %i.fn, ptr noundef %i.fq, ptr noundef %3) #7
  br i1 %i.er, label %.lr.ph202, label %.loopexit

.lr.ph202:                                        ; preds = %._crit_edge
  %i.fr = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.fs = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %wide.trip.count217 = zext nneg i32 %i.i to i64
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph202, %bb.q
  %indvars.iv214 = phi i64 [ 0, %.lr.ph202 ], [ %indvars.iv.next215, %bb.q ] ; 5 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %.0162, i64 %indvars.iv214
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !65
  %i.fv = load ptr, ptr %i.fr, align 8, !tbaa !66
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %indvars.iv214
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !65
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv214 ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !65
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.fu, double noundef %i.fo, ptr noundef %i.fx, ptr noundef %i.fz) #7
  %i.ga = load ptr, ptr %i.fy, align 8, !tbaa !65 ; 2 uses
  %i.gb = load ptr, ptr %i.fs, align 8, !tbaa !66
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv214
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !65
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.ga, double noundef %i.fn, ptr noundef %i.gd, ptr noundef %i.ga) #7
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1 ; 2 uses
  %exitcond218.not = icmp eq i64 %indvars.iv.next215, %wide.trip.count217
  br i1 %exitcond218.not, label %.loopexit, label %bb.q, !llvm.loop !138

.loopexit:                                        ; preds = %bb.q, %bb.j, %._crit_edge.i, %._crit_edge, %.thread
  %.0164 = phi i32 [ 0, %.thread ], [ 0, %bb.j ], [ 0, %._crit_edge ], [ -107, %._crit_edge.i ], [ 0, %bb.q ]
  ret i32 %.0164
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @IDAAhermiteStorePnt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !65
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !54
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.f, ptr noundef %i.g) #7
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !37
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !50
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !66
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !65
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !56
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !65
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.q, ptr noundef %i.t) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = load i32, ptr %i.j, align 4, !tbaa !50
  %i.v = sext i32 %i.u to i64
  %i.w = icmp slt i64 %indvars.iv.next, %i.v
  br i1 %i.w, label %bb.b, label %.loopexit, !llvm.loop !139

.loopexit:                                        ; preds = %bb.b, %.preheader, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !55   ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !67
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.loopexit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !65
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.ad, ptr noundef %i.y) #7
  br label %IDAAGettnSolutionYp.exit

bb.d:                                             ; preds = %.loopexit
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %i.y) #7
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1660
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !68
  %spec.store.select.i = tail call i32 @llvm.umax.i32(i32 %i.af, i32 1) ; 2 uses
  %.not29.i = icmp slt i32 %spec.store.select.i, 1
  br i1 %.not29.i, label %IDAAGettnSolutionYp.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.ag = add nuw i32 %spec.store.select.i, 1
  %wide.trip.count.i = zext i32 %i.ag to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 3 uses
  %.033.i = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.as, %bb.e ] ; 2 uses
  %.02532.i = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.ap, %bb.e ]
  %.02631.i = phi double [ 1.000000e+00, %.lr.ph.i ], [ %i.aj, %bb.e ] ; 2 uses
  %i.ah = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.i
  %i.ai = getelementptr i8, ptr %i.ah, i64 352
  %i.aj = fmul double %.033.i, %.02631.i
  %i.ak = load <2 x double>, ptr %i.ai, align 8, !tbaa !69 ; 2 uses
  %i.al = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.am = insertelement <2 x double> %i.al, double %.02631.i, i64 0
  %i.an = fdiv <2 x double> %i.am, %i.ak          ; 2 uses
  %i.ao = extractelement <2 x double> %i.an, i64 0
  %i.ap = tail call double @llvm.fmuladd.f64(double %.02532.i, double %.033.i, double %i.ao) ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !65
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.y, double noundef %i.ap, ptr noundef %i.ar, ptr noundef %i.y) #7
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  %i.as = extractelement <2 x double> %i.an, i64 1
  br i1 %exitcond.not.i, label %IDAAGettnSolutionYp.exit, label %bb.e, !llvm.loop !0

IDAAGettnSolutionYp.exit:                         ; preds = %bb.e, %bb.c, %bb.d
  %i.at = load i32, ptr %i.h, align 8, !tbaa !37
  %.not16 = icmp eq i32 %i.at, 0
  br i1 %.not16, label %bb.g, label %bb.f

bb.f:                                             ; preds = %IDAAGettnSolutionYp.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !57
  tail call fastcc void @IDAAGettnSolutionYpS(ptr noundef nonnull %0, ptr noundef %i.av)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %IDAAGettnSolutionYp.exit
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @IDAApolynomialMalloc(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 10 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.e = tail call ptr @N_VClone(ptr noundef %i.d) #7 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 320 ; 4 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !48
  %i.g = icmp eq ptr %i.e, null
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.i = tail call ptr @N_VClone(ptr noundef %i.h) #7 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 328 ; 4 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !49
  %i.k = icmp eq ptr %i.i, null
  br i1 %i.k, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 5 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !37
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !50
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.q = tail call ptr @N_VCloneVectorArray(i32 noundef %i.o, ptr noundef %i.p) #7 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 336 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !51
  %i.s = icmp eq ptr %i.q, null
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !48
  tail call void @N_VDestroy(ptr noundef %i.t) #7
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !49
  tail call void @N_VDestroy(ptr noundef %i.u) #7
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.v = load i32, ptr %i.n, align 4, !tbaa !50
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.x = tail call ptr @N_VCloneVectorArray(i32 noundef %i.v, ptr noundef %i.w) #7 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  store ptr %i.x, ptr %i.y, align 8, !tbaa !52
  %i.z = icmp eq ptr %i.x, null
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !48
end_hunk_0
