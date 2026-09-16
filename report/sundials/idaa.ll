Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/idaa?download=true
inline.NumInlined: 12
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@IDAAhermiteMalloc:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 352 ; 4 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !50
  %i.k = icmp eq ptr %i.i, null
  br i1 %i.k, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 184 ; 4 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !37
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !51
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.q = tail call ptr @N_VCloneVectorArray(i32 noundef %i.o, ptr noundef %i.p) #8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 360 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !52
  %i.s = icmp eq ptr %i.q, null
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !49
  tail call void @N_VDestroy(ptr noundef %i.t) #8
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !50
  tail call void @N_VDestroy(ptr noundef %i.u) #8
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.v = load i32, ptr %i.n, align 8, !tbaa !51
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.x = tail call ptr @N_VCloneVectorArray(i32 noundef %i.v, ptr noundef %i.w) #8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store ptr %i.x, ptr %i.y, align 8, !tbaa !53
  %i.z = icmp eq ptr %i.x, null
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !49
  tail call void @N_VDestroy(ptr noundef %i.aa) #8
  %i.ab = load ptr, ptr %i.j, align 8, !tbaa !50
  tail call void @N_VDestroy(ptr noundef %i.ab) #8
  %i.ac = load ptr, ptr %i.r, align 8, !tbaa !52
  %i.ad = load i32, ptr %i.n, align 8, !tbaa !51
  tail call void @N_VDestroyVectorArray(ptr noundef %i.ac, i32 noundef %i.ad) #8
  br label %.loopexit

bb.h:                                             ; preds = %bb.f, %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !27 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !25
  %.not90.not120 = icmp slt i64 %i.ah, 0
  br i1 %.not90.not120, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 7 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.r
  %.087121 = phi i64 [ 0, %.lr.ph ], [ %i.bq, %bb.r ] ; 5 uses
  %i.aj = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #9 ; 13 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.loopexit100, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.am = tail call ptr @N_VClone(ptr noundef %i.al) #8 ; 2 uses
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !55
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %.loopexit100.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.ap = tail call ptr @N_VClone(ptr noundef %i.ao) #8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !56
  %i.ar = icmp eq ptr %i.ap, null
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !55
  tail call void @N_VDestroy(ptr noundef %i.as) #8
  br label %.loopexit100.sink.split

bb.m:                                             ; preds = %bb.k
  %i.at = load i32, ptr %i.l, align 8, !tbaa !37
  %.not91 = icmp eq i32 %i.at, 0
  br i1 %.not91, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = load i32, ptr %i.ai, align 8, !tbaa !51
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.aw = tail call ptr @N_VCloneVectorArray(i32 noundef %i.au, ptr noundef %i.av) #8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !57
  %i.ay = icmp eq ptr %i.aw, null
  br i1 %i.ay, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ba = load ptr, ptr %i.aj, align 8, !tbaa !55
  tail call void @N_VDestroy(ptr noundef %i.ba) #8
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !56
  tail call void @N_VDestroy(ptr noundef %i.bb) #8
  br label %.loopexit100.sink.split

bb.p:                                             ; preds = %bb.n
  %i.bc = load i32, ptr %i.ai, align 8, !tbaa !51
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.be = tail call ptr @N_VCloneVectorArray(i32 noundef %i.bc, ptr noundef %i.bd) #8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !58
  %i.bg = icmp eq ptr %i.be, null
  br i1 %i.bg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.bj = load ptr, ptr %i.aj, align 8, !tbaa !55
  tail call void @N_VDestroy(ptr noundef %i.bj) #8
  %i.bk = load ptr, ptr %i.bh, align 8, !tbaa !56
  tail call void @N_VDestroy(ptr noundef %i.bk) #8
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !57
  %i.bm = load i32, ptr %i.ai, align 8, !tbaa !51
  tail call void @N_VDestroyVectorArray(ptr noundef %i.bl, i32 noundef %i.bm) #8
  br label %.loopexit100.sink.split

bb.r:                                             ; preds = %bb.p, %bb.m
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.087121
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !29
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %i.aj, ptr %i.bp, align 8, !tbaa !31
  %i.bq = add nuw nsw i64 %.087121, 1
  %i.br = load i64, ptr %i.ag, align 8, !tbaa !25
  %.not90.not.not = icmp slt i64 %.087121, %i.br
  br i1 %.not90.not.not, label %bb.i, label %.loopexit

.loopexit100.sink.split:                          ; preds = %bb.j, %bb.l, %bb.o, %bb.q
  tail call void @free(ptr noundef nonnull %i.aj) #8
  br label %.loopexit100

.loopexit100:                                     ; preds = %bb.i, %.loopexit100.sink.split
  %i.bs = load ptr, ptr %i.f, align 8, !tbaa !49
  tail call void @N_VDestroy(ptr noundef %i.bs) #8
  %i.bt = load ptr, ptr %i.j, align 8, !tbaa !50
  tail call void @N_VDestroy(ptr noundef %i.bt) #8
  %i.bu = load i32, ptr %i.l, align 8, !tbaa !37
  %.not93 = icmp eq i32 %i.bu, 0
  br i1 %.not93, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.loopexit100
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !52
  %i.bx = load i32, ptr %i.ai, align 8, !tbaa !51
  tail call void @N_VDestroyVectorArray(ptr noundef %i.bw, i32 noundef %i.bx) #8
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !53
  %i.ca = load i32, ptr %i.ai, align 8, !tbaa !51
  tail call void @N_VDestroyVectorArray(ptr noundef %i.bz, i32 noundef %i.ca) #8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.loopexit100
  %.not124 = icmp eq i64 %.087121, 0
  br i1 %.not124, label %.loopexit, label %.lr.ph123

.lr.ph123:                                        ; preds = %bb.t, %bb.v
  %.1122 = phi i64 [ %i.cu, %bb.v ], [ 0, %bb.t ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.1122 ; 3 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !29
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !31 ; 4 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !55
  tail call void @N_VDestroy(ptr noundef %i.cf) #8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !56
  tail call void @N_VDestroy(ptr noundef %i.ch) #8
  %i.ci = load i32, ptr %i.l, align 8, !tbaa !37
  %.not94 = icmp eq i32 %i.ci, 0
  br i1 %.not94, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph123
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !57
  %i.cl = load i32, ptr %i.ai, align 8, !tbaa !51
  tail call void @N_VDestroyVectorArray(ptr noundef %i.ck, i32 noundef %i.cl) #8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !58
  %i.co = load i32, ptr %i.ai, align 8, !tbaa !51
  tail call void @N_VDestroyVectorArray(ptr noundef %i.cn, i32 noundef %i.co) #8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph123
  %i.cp = load ptr, ptr %i.cb, align 8, !tbaa !29
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !31
  tail call void @free(ptr noundef %i.cr) #8
  %i.cs = load ptr, ptr %i.cb, align 8, !tbaa !29
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr null, ptr %i.ct, align 8, !tbaa !31
  %i.cu = add nuw i64 %.1122, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.cu, %.087121
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph123

.loopexit:                                        ; preds = %bb.r, %bb.v, %bb.h, %bb.t, %bb.b, %bb.a, %bb.g, %bb.e
  %.088 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.t ], [ 1, %bb.h ], [ 0, %bb.v ], [ 1, %bb.r ]
  ret i32 %.088
}

; Function Attrs: nounwind uwtable
define internal void @IDAAhermiteFree(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49
  tail call void @N_VDestroy(ptr noundef %i.d) #8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50
  tail call void @N_VDestroy(ptr noundef %i.f) #8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 184 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !37
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !51
  tail call void @N_VDestroyVectorArray(ptr noundef %i.j, i32 noundef %i.l) #8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !53
  %i.o = load i32, ptr %i.k, align 8, !tbaa !51
  tail call void @N_VDestroyVectorArray(ptr noundef %i.n, i32 noundef %i.o) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !25   ; 2 uses
  %.not2629 = icmp slt i64 %i.s, 0
  br i1 %.not2629, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.h
  %i.u = phi i64 [ %i.s, %.lr.ph ], [ %i.ao, %bb.h ]
  %.030 = phi i64 [ 0, %.lr.ph ], [ %i.ap, %bb.h ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.030 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !31   ; 5 uses
  %.not27 = icmp eq ptr %i.y, null
  br i1 %.not27, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !55
  tail call void @N_VDestroy(ptr noundef %i.z) #8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !56
  tail call void @N_VDestroy(ptr noundef %i.ab) #8
  %i.ac = load i32, ptr %i.g, align 8, !tbaa !37
  %.not28 = icmp eq i32 %i.ac, 0
  br i1 %.not28, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !57
  %i.af = load i32, ptr %i.t, align 8, !tbaa !51
  tail call void @N_VDestroyVectorArray(ptr noundef %i.ae, i32 noundef %i.af) #8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !58
  %i.ai = load i32, ptr %i.t, align 8, !tbaa !51
  tail call void @N_VDestroyVectorArray(ptr noundef %i.ah, i32 noundef %i.ai) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aj = load ptr, ptr %i.v, align 8, !tbaa !29
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !31
  tail call void @free(ptr noundef %i.al) #8
  %i.am = load ptr, ptr %i.v, align 8, !tbaa !29
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr null, ptr %i.an, align 8, !tbaa !31
  %.pre = load i64, ptr %i.r, align 8, !tbaa !25
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  %i.ao = phi i64 [ %i.u, %bb.d ], [ %.pre, %bb.g ] ; 2 uses
  %i.ap = add nuw nsw i64 %.030, 1
  %.not26.not = icmp slt i64 %.030, %i.ao
  br i1 %.not26.not, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 -107, 1) i32 @IDAAhermiteGetY(ptr nofree noundef readonly captures(none) %0, double noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
bb.a:
  %i.a = alloca [4 x double], align 16            ; 21 uses
  %i.b = alloca [4 x ptr], align 16               ; 15 uses
  %i.c = alloca [4 x ptr], align 16               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2136
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20   ; 16 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !27   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 188
  %i.i = load i32, ptr %i.h, align 4, !tbaa !38   ; 2 uses
  %i.j = icmp ne i32 %i.i, 0
  %i.k = icmp ne ptr %4, null
  %or.cond = and i1 %i.k, %i.j
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.m = load i32, ptr %i.l, align 8, !tbaa !51
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.n = phi i32 [ %i.m, %bb.b ], [ 0, %bb.a ]    ; 11 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.p = load double, ptr %i.o, align 8, !tbaa !59
  %i.q = load double, ptr %i.e, align 8, !tbaa !60
  %i.r = fcmp ogt double %i.p, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 180 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !61
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %._crit_edge61.i, label %bb.d

._crit_edge61.i:                                  ; preds = %bb.c
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !26
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.v = load i64, ptr %i.u, align 8, !tbaa !62
  %i.w = add nsw i64 %i.v, -1                     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store i64 %i.w, ptr %i.x, align 8, !tbaa !26
  store i32 0, ptr %i.s, align 4, !tbaa !61
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge61.i
  %.0148 = phi i32 [ 0, %._crit_edge61.i ], [ 1, %bb.d ]
  %i.y = phi i64 [ %.pre.i, %._crit_edge61.i ], [ %i.w, %bb.d ] ; 5 uses
  %i.z = select i1 %i.r, double 1.000000e+00, double -1.000000e+00 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 112 ; 3 uses
  %i.ab = getelementptr [8 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 -8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !29
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !63
  %i.af = fsub double %1, %i.ae
  %i.ag = fmul double %i.z, %i.af
  %i.ah = fcmp olt double %i.ag, 0.000000e+00
  br i1 %i.ah, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp eq i64 %i.y, 0
  br i1 %i.ai, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.g
  %storemerge5256.i = phi i64 [ %i.aq, %bb.g ], [ %i.y, %bb.f ] ; 3 uses
  %i.aj = getelementptr [8 x i8], ptr %i.g, i64 %storemerge5256.i ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 -8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !29 ; 2 uses
  %i.am = load double, ptr %i.al, align 8, !tbaa !63 ; 2 uses
  %i.an = fsub double %1, %i.am
  %i.ao = fmul double %i.z, %i.an
  %i.ap = fcmp ugt double %i.ao, 0.000000e+00
  br i1 %i.ap, label %.thread162, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.aq = add nsw i64 %storemerge5256.i, -1       ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %.loopexit, label %.lr.ph.i

.thread162:                                       ; preds = %.lr.ph.i
  store i64 %storemerge5256.i, ptr %i.aa, align 8, !tbaa !26
  %.pre174 = load ptr, ptr %i.aj, align 8, !tbaa !29 ; 2 uses
  %.pre175 = load double, ptr %.pre174, align 8, !tbaa !63
  br label %bb.l

.loopexit:                                        ; preds = %bb.g, %bb.f
  store i64 1, ptr %i.aa, align 8, !tbaa !26
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !29  ; 2 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !63
  %i.au = fsub double %1, %i.at
  %i.av = tail call double @llvm.fabs.f64(double %i.au)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !64
  %i.ay = fmul double %i.ax, 1.000000e+06
  %i.az = fcmp ogt double %i.av, %i.ay
end_hunk_0
begin_hunk_1_@IDAApolynomialMalloc:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store ptr %i.x, ptr %i.y, align 8, !tbaa !53
  %i.z = icmp eq ptr %i.x, null
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !49
  tail call void @N_VDestroy(ptr noundef %i.aa) #8
  %i.ab = load ptr, ptr %i.j, align 8, !tbaa !50
  tail call void @N_VDestroy(ptr noundef %i.ab) #8
  %i.ac = load ptr, ptr %i.r, align 8, !tbaa !52
  %i.ad = load i32, ptr %i.n, align 8, !tbaa !51
  tail call void @N_VDestroyVectorArray(ptr noundef %i.ac, i32 noundef %i.ad) #8
  br label %.loopexit

bb.h:                                             ; preds = %bb.f, %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !27 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !25
  %.not108130 = icmp slt i64 %i.ah, 0
  br i1 %.not108130, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.aj = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #9 ; 7 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.thread, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.am = tail call ptr @N_VClone(ptr noundef %i.al) #8 ; 2 uses
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !74
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %.thread.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.ap = tail call ptr @N_VClone(ptr noundef %i.ao) #8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !75
  %i.ar = icmp eq ptr %i.ap, null
  br i1 %i.ar, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !74
  tail call void @N_VDestroy(ptr noundef %i.as) #8
  tail call void @free(ptr noundef nonnull %i.aj) #8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0100.peel = phi ptr [ null, %bb.k ], [ %i.aj, %bb.j ] ; 8 uses
  %.1.peel = phi i32 [ 0, %bb.k ], [ 1, %bb.j ]   ; 2 uses
  %i.at = load i32, ptr %i.l, align 8, !tbaa !37
  %.not109.peel = icmp eq i32 %i.at, 0
  br i1 %.not109.peel, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = load i32, ptr %i.ai, align 8, !tbaa !51
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.aw = tail call ptr @N_VCloneVectorArray(i32 noundef %i.au, ptr noundef %i.av) #8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0100.peel, i64 8 ; 2 uses
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !76
  %i.ay = icmp eq ptr %i.aw, null
  br i1 %i.ay, label %.loopexit146, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = load i32, ptr %i.ai, align 8, !tbaa !51
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.bb = tail call ptr @N_VCloneVectorArray(i32 noundef %i.az, ptr noundef %i.ba) #8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0100.peel, i64 24
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !77
  %i.bd = icmp eq ptr %i.bb, null
  br i1 %i.bd, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.be = load ptr, ptr %.0100.peel, align 8, !tbaa !74
  tail call void @N_VDestroy(ptr noundef %i.be) #8
  %i.bf = getelementptr inbounds nuw i8, ptr %.0100.peel, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !75 ; 2 uses
  %.not110.peel = icmp eq ptr %i.bg, null
  br i1 %.not110.peel, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @N_VDestroy(ptr noundef nonnull %i.bg) #8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bh = load ptr, ptr %i.ax, align 8, !tbaa !76
  %i.bi = load i32, ptr %i.ai, align 8, !tbaa !51
  tail call void @N_VDestroyVectorArray(ptr noundef %i.bh, i32 noundef %i.bi) #8
  tail call void @free(ptr noundef nonnull %.0100.peel) #8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n, %bb.l
  %.1101.peel = phi ptr [ null, %bb.q ], [ %.0100.peel, %bb.n ], [ %.0100.peel, %bb.l ]
  %.2.peel = phi i32 [ 0, %bb.q ], [ %.1.peel, %bb.n ], [ %.1.peel, %bb.l ]
  %i.bj = load ptr, ptr %i.af, align 8, !tbaa !29
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %.1101.peel, ptr %i.bk, align 8, !tbaa !31
  %i.bl = load i64, ptr %i.ag, align 8, !tbaa !25
  %.not108.not.peel = icmp sgt i64 %i.bl, 0
  br i1 %.not108.not.peel, label %.peel.next, label %._crit_edge

.peel.next:                                       ; preds = %bb.r, %bb.x
  %.098131 = phi i64 [ %i.ce, %bb.x ], [ 1, %bb.r ] ; 6 uses
  %i.bm = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #9 ; 8 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %.thread, label %bb.s

bb.s:                                             ; preds = %.peel.next
  %i.bo = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.bp = tail call ptr @N_VClone(ptr noundef %i.bo) #8 ; 2 uses
  store ptr %i.bp, ptr %i.bm, align 8, !tbaa !74
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %.thread.sink.split, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store ptr null, ptr %i.br, align 8, !tbaa !75
  %.pre = load i32, ptr %i.l, align 8, !tbaa !37
  %.not109 = icmp eq i32 %.pre, 0
  br i1 %.not109, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bs = load i32, ptr %i.ai, align 8, !tbaa !51
  %i.bt = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.bu = tail call ptr @N_VCloneVectorArray(i32 noundef %i.bs, ptr noundef %i.bt) #8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !76
  %i.bw = icmp eq ptr %i.bu, null
  br i1 %i.bw, label %.loopexit146, label %bb.w

.loopexit146:                                     ; preds = %bb.u, %bb.m
  %.0100.lcssa = phi ptr [ %.0100.peel, %bb.m ], [ %i.bm, %bb.u ] ; 4 uses
  %.098131.lcssa141 = phi i64 [ 0, %bb.m ], [ %.098131, %bb.u ] ; 2 uses
  %i.bx = load ptr, ptr %.0100.lcssa, align 8, !tbaa !74
  tail call void @N_VDestroy(ptr noundef %i.bx) #8
  %i.by = getelementptr inbounds nuw i8, ptr %.0100.lcssa, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !75 ; 2 uses
  %.not111 = icmp eq ptr %i.bz, null
  br i1 %.not111, label %.thread.sink.split, label %bb.v

bb.v:                                             ; preds = %.loopexit146
  tail call void @N_VDestroy(ptr noundef nonnull %i.bz) #8
  br label %.thread.sink.split

bb.w:                                             ; preds = %bb.u
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store ptr null, ptr %i.ca, align 8, !tbaa !77
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.098131
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !29
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr %i.bm, ptr %i.cd, align 8, !tbaa !31
  %i.ce = add nuw nsw i64 %.098131, 1
  %i.cf = load i64, ptr %i.ag, align 8, !tbaa !25
  %.not108.not = icmp slt i64 %.098131, %i.cf
  br i1 %.not108.not, label %.peel.next, label %._crit_edge, !llvm.loop !131

._crit_edge:                                      ; preds = %bb.x, %bb.r
  %i.cg = icmp eq i32 %.2.peel, 0
  br i1 %i.cg, label %.thread, label %.loopexit

.thread.sink.split:                               ; preds = %bb.s, %.loopexit146, %bb.v, %bb.i
  %.0100.lcssa.sink = phi ptr [ %.0100.lcssa, %.loopexit146 ], [ %i.aj, %bb.i ], [ %.0100.lcssa, %bb.v ], [ %i.bm, %bb.s ]
  %.397120.ph = phi i64 [ %.098131.lcssa141, %.loopexit146 ], [ 0, %bb.i ], [ %.098131.lcssa141, %bb.v ], [ %.098131, %bb.s ]
  tail call void @free(ptr noundef nonnull %.0100.lcssa.sink) #8
  br label %.thread

.thread:                                          ; preds = %.peel.next, %.thread.sink.split, %.lr.ph, %._crit_edge
  %.397120 = phi i64 [ 0, %._crit_edge ], [ 0, %.lr.ph ], [ %.397120.ph, %.thread.sink.split ], [ %.098131, %.peel.next ] ; 2 uses
  %i.ch = load ptr, ptr %i.f, align 8, !tbaa !49
  tail call void @N_VDestroy(ptr noundef %i.ch) #8
  %i.ci = load ptr, ptr %i.j, align 8, !tbaa !50
  tail call void @N_VDestroy(ptr noundef %i.ci) #8
  %i.cj = load i32, ptr %i.l, align 8, !tbaa !37
  %.not113 = icmp eq i32 %i.cj, 0
  br i1 %.not113, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.thread
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !52
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !51
  tail call void @N_VDestroyVectorArray(ptr noundef %i.cl, i32 noundef %i.cn) #8
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !53
  %i.cq = load i32, ptr %i.cm, align 8, !tbaa !51
  tail call void @N_VDestroyVectorArray(ptr noundef %i.cp, i32 noundef %i.cq) #8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.thread
  %.not136 = icmp eq i64 %.397120, 0
  br i1 %.not136, label %.loopexit, label %.lr.ph135

.lr.ph135:                                        ; preds = %bb.z
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph135, %bb.af
  %.199133 = phi i64 [ 0, %.lr.ph135 ], [ %i.dl, %bb.af ] ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.199133 ; 3 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !29
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !31 ; 4 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !74
  tail call void @N_VDestroy(ptr noundef %i.cw) #8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !75 ; 2 uses
  %.not114 = icmp eq ptr %i.cy, null
  br i1 %.not114, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @N_VDestroy(ptr noundef nonnull %i.cy) #8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cz = load i32, ptr %i.l, align 8, !tbaa !37
  %.not115 = icmp eq i32 %i.cz, 0
  br i1 %.not115, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !76
  %i.dc = load i32, ptr %i.cr, align 8, !tbaa !51
  tail call void @N_VDestroyVectorArray(ptr noundef %i.db, i32 noundef %i.dc) #8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !77 ; 2 uses
  %.not116 = icmp eq ptr %i.de, null
  br i1 %.not116, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.df = load i32, ptr %i.cr, align 8, !tbaa !51
  tail call void @N_VDestroyVectorArray(ptr noundef nonnull %i.de, i32 noundef %i.df) #8
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %bb.ac
  %i.dg = load ptr, ptr %i.cs, align 8, !tbaa !29
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !31
  tail call void @free(ptr noundef %i.di) #8
  %i.dj = load ptr, ptr %i.cs, align 8, !tbaa !29
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store ptr null, ptr %i.dk, align 8, !tbaa !31
  %i.dl = add nuw i64 %.199133, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.dl, %.397120
  br i1 %exitcond.not, label %.loopexit, label %bb.aa

.loopexit:                                        ; preds = %bb.af, %bb.h, %bb.z, %._crit_edge, %bb.b, %bb.a, %bb.g, %bb.e
  %.0102 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %bb.g ], [ 1, %._crit_edge ], [ 0, %bb.z ], [ 1, %bb.h ], [ 0, %bb.af ]
  ret i32 %.0102
}

; Function Attrs: nounwind uwtable
define internal void @IDAApolynomialFree(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49
  tail call void @N_VDestroy(ptr noundef %i.d) #8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50
  tail call void @N_VDestroy(ptr noundef %i.f) #8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 184 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !37
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !51
  tail call void @N_VDestroyVectorArray(ptr noundef %i.j, i32 noundef %i.l) #8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !53
  %i.o = load i32, ptr %i.k, align 8, !tbaa !51
  tail call void @N_VDestroyVectorArray(ptr noundef %i.n, i32 noundef %i.o) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !25   ; 2 uses
  %.not3035 = icmp slt i64 %i.s, 0
  br i1 %.not3035, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.k
  %i.u = phi i64 [ %i.s, %.lr.ph ], [ %i.ao, %bb.k ]
  %.036 = phi i64 [ 0, %.lr.ph ], [ %i.ap, %bb.k ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.036 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !31   ; 5 uses
  %.not31 = icmp eq ptr %i.y, null
  br i1 %.not31, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !74
  tail call void @N_VDestroy(ptr noundef %i.z) #8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !75 ; 2 uses
  %.not32 = icmp eq ptr %i.ab, null
  br i1 %.not32, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @N_VDestroy(ptr noundef nonnull %i.ab) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ac = load i32, ptr %i.g, align 8, !tbaa !37
  %.not33 = icmp eq i32 %i.ac, 0
  br i1 %.not33, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !76
  %i.af = load i32, ptr %i.t, align 8, !tbaa !51
  tail call void @N_VDestroyVectorArray(ptr noundef %i.ae, i32 noundef %i.af) #8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !77 ; 2 uses
  %.not34 = icmp eq ptr %i.ah, null
  br i1 %.not34, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = load i32, ptr %i.t, align 8, !tbaa !51
  tail call void @N_VDestroyVectorArray(ptr noundef nonnull %i.ah, i32 noundef %i.ai) #8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %i.aj = load ptr, ptr %i.v, align 8, !tbaa !29
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !31
  tail call void @free(ptr noundef %i.al) #8
  %i.am = load ptr, ptr %i.v, align 8, !tbaa !29
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr null, ptr %i.an, align 8, !tbaa !31
  %.pre = load i64, ptr %i.r, align 8, !tbaa !25
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.j
  %i.ao = phi i64 [ %i.u, %bb.d ], [ %.pre, %bb.j ] ; 2 uses
  %i.ap = add nuw nsw i64 %.036, 1
  %.not30.not = icmp slt i64 %.036, %i.ao
  br i1 %.not30.not, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.k, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 -107, 1) i32 @IDAApolynomialGetY(ptr nofree noundef readonly captures(none) %0, double noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 25 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27   ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 188
  %i.f = load i32, ptr %i.e, align 4, !tbaa !38
  %i.g = icmp ne i32 %i.f, 0
  %i.h = icmp ne ptr %4, null
  %or.cond = and i1 %i.h, %i.g
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.j = load i32, ptr %i.i, align 8, !tbaa !51
  %i.k = freeze i32 %i.j
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.fr280 = phi i32 [ %i.k, %bb.b ], [ 0, %bb.a ] ; 18 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load double, ptr %i.l, align 8, !tbaa !59
  %i.n = load double, ptr %i.b, align 8, !tbaa !60
  %i.o = fcmp ogt double %i.m, %i.n               ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 180 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !61
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %._crit_edge61.i, label %bb.d

._crit_edge61.i:                                  ; preds = %bb.c
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !26
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.s = load i64, ptr %i.r, align 8, !tbaa !62
  %i.t = add nsw i64 %i.s, -1                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i64 %i.t, ptr %i.u, align 8, !tbaa !26
  store i32 0, ptr %i.p, align 4, !tbaa !61
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge61.i
  %.0223 = phi i32 [ 0, %._crit_edge61.i ], [ 1, %bb.d ]
  %i.v = phi i64 [ %.pre.i, %._crit_edge61.i ], [ %i.t, %bb.d ] ; 5 uses
  %i.w = select i1 %i.o, double 1.000000e+00, double -1.000000e+00 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 3 uses
  %i.y = getelementptr [8 x i8], ptr %i.d, i64 %i.v ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 -8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !29
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !63
  %i.ac = fsub double %1, %i.ab
  %i.ad = fmul double %i.w, %i.ac
  %i.ae = fcmp olt double %i.ad, 0.000000e+00
  br i1 %i.ae, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.af = icmp eq i64 %i.v, 0
  br i1 %i.af, label %.loopexit255, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.g
  %storemerge5256.i = phi i64 [ %i.an, %bb.g ], [ %i.v, %bb.f ] ; 4 uses
  %i.ag = getelementptr [8 x i8], ptr %i.d, i64 %storemerge5256.i
  %i.ah = getelementptr i8, ptr %i.ag, i64 -8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !29
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !63
  %i.ak = fsub double %1, %i.aj
  %i.al = fmul double %i.w, %i.ak
  %i.am = fcmp ugt double %i.al, 0.000000e+00
  br i1 %i.am, label %.thread239, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.an = add nsw i64 %storemerge5256.i, -1       ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %.loopexit255, label %.lr.ph.i

.thread239:                                       ; preds = %.lr.ph.i
  store i64 %storemerge5256.i, ptr %i.x, align 8, !tbaa !26
  br label %bb.l

.loopexit255:                                     ; preds = %bb.g, %bb.f
  store i64 1, ptr %i.x, align 8, !tbaa !26
  %i.ap = load ptr, ptr %i.d, align 8, !tbaa !29  ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !63
  %i.ar = fsub double %1, %i.aq
  %i.as = tail call double @llvm.fabs.f64(double %i.ar)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_1
