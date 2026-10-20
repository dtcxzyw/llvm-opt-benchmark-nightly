Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btOptimizedBvh?download=true
inline.NumInlined: 195
inline.NumDeleted: 78
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_:bb.a

_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE6expandERKS0_.exit: ; preds = %._ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE6expandERKS0_.exit_crit_edge, %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE10deallocateEv.exit.i.i
  %i.en = phi ptr [ %i.dt, %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE10deallocateEv.exit.i.i ], [ %.pre, %._ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE6expandERKS0_.exit_crit_edge ] ; 8 uses
  %i.eo = phi i32 [ %i.em, %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE10deallocateEv.exit.i.i ], [ 1, %._ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE6expandERKS0_.exit_crit_edge ] ; 2 uses
  store i32 %i.eo, ptr %i.do, align 4, !tbaa !52
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !35 ; 7 uses
  %i.er = load i16, ptr %i.eq, align 4, !tbaa !55
  store i16 %i.er, ptr %i.en, align 4, !tbaa !55
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 2
  %i.et = load i16, ptr %i.es, align 2, !tbaa !55
  %i.eu = getelementptr inbounds nuw i8, ptr %i.en, i64 2
  store i16 %i.et, ptr %i.eu, align 2, !tbaa !55
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.ew = load i16, ptr %i.ev, align 4, !tbaa !55
  %i.ex = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  store i16 %i.ew, ptr %i.ex, align 4, !tbaa !55
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eq, i64 6
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !55
  %i.fa = getelementptr inbounds nuw i8, ptr %i.en, i64 6
  store i16 %i.ez, ptr %i.fa, align 2, !tbaa !55
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.fc = load i16, ptr %i.fb, align 4, !tbaa !55
  %i.fd = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store i16 %i.fc, ptr %i.fd, align 4, !tbaa !55
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eq, i64 10
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !55
  %i.fg = getelementptr inbounds nuw i8, ptr %i.en, i64 10
  store i16 %i.ff, ptr %i.fg, align 2, !tbaa !55
  %i.fh = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  store i32 0, ptr %i.fh, align 4, !tbaa !57
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eq, i64 12
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !59 ; 2 uses
  %i.fk = icmp sgt i32 %i.fj, -1
  %i.fl = sub nsw i32 0, %i.fj
  %spec.select = select i1 %i.fk, i32 1, i32 %i.fl
  %i.fm = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store i32 %spec.select, ptr %i.fm, align 4, !tbaa !60
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.t, %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE6expandERKS0_.exit
  %i.fn = phi i32 [ %i.dp, %bb.t ], [ %i.eo, %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE6expandERKS0_.exit ]
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i32 %i.fn, ptr %i.fo, align 8, !tbaa !73
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !35 ; 2 uses
  %.not.i.i47 = icmp ne ptr %i.fq, null
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 8, !range !41
  %i.ft = trunc nuw i8 %i.fs to i1
  %or.cond.i = select i1 %.not.i.i47, i1 %i.ft, i1 false
  br i1 %or.cond.i, label %bb.y, label %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE5clearEv.exit

bb.y:                                             ; preds = %._crit_edge
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.fq)
  br label %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE5clearEv.exit

_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE5clearEv.exit: ; preds = %._crit_edge, %bb.y
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i8 1, ptr %i.fr, align 8, !tbaa !40
  store ptr null, ptr %i.fp, align 8, !tbaa !35
  store i32 0, ptr %i.fu, align 4, !tbaa !33
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %i.fv, align 8, !tbaa !34
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !48 ; 2 uses
  %.not.i.i48 = icmp ne ptr %i.fx, null
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.fz = load i8, ptr %i.fy, align 8, !range !41
  %i.ga = trunc nuw i8 %i.fz to i1
  %or.cond.i49 = select i1 %.not.i.i48, i1 %i.ga, i1 false
  br i1 %or.cond.i49, label %bb.z, label %_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeE5clearEv.exit

bb.z:                                             ; preds = %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE5clearEv.exit
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.fx)
  br label %_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeE5clearEv.exit

_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeE5clearEv.exit: ; preds = %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE5clearEv.exit, %bb.z
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.fy, align 8, !tbaa !50
  store ptr null, ptr %i.fw, align 8, !tbaa !48
  store i32 0, ptr %i.gb, align 4, !tbaa !46
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.gc, align 8, !tbaa !47
  ret void

bb.aa:                                            ; preds = %bb.s, %bb.j
  %.pn18.pn = phi { ptr, i32 } [ %i.bh, %bb.j ], [ %i.dk, %bb.s ]
  resume { ptr, i32 } %.pn18.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare void @_ZN14btQuantizedBvh21setQuantizationValuesERK9btVector3S2_f(ptr noundef nonnull align 8 dereferenceable(244), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16), float noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind
declare void @_ZN31btInternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

declare void @_ZN14btQuantizedBvh9buildTreeEii(ptr noundef nonnull align 8 dereferenceable(244), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN14btOptimizedBvh5refitEP23btStridingMeshInterfaceRK9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(244) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8, !tbaa !27, !range !41, !noundef !42
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN14btQuantizedBvh21setQuantizationValuesERK9btVector3S2_f(ptr noundef nonnull align 8 dereferenceable(244) %0, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, float noundef 1.000000e+00)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.e = load i32, ptr %i.d, align 4, !tbaa !51
  tail call void @_ZN14btOptimizedBvh14updateBvhNodesEP23btStridingMeshInterfaceiii(ptr noundef nonnull align 8 dereferenceable(244) %0, ptr noundef %1, i32 noundef 0, i32 noundef %i.e, i32 poison)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.g = load i32, ptr %i.f, align 4, !tbaa !52   ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !53
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !35
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %indvars.iv ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !57
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [16 x i8], ptr %i.l, i64 %i.p ; 6 uses
  %i.r = load i16, ptr %i.q, align 4, !tbaa !55
  store i16 %i.r, ptr %i.m, align 4, !tbaa !55
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.t = load i16, ptr %i.s, align 2, !tbaa !55
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  store i16 %i.t, ptr %i.u, align 2, !tbaa !55
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.w = load i16, ptr %i.v, align 4, !tbaa !55
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i16 %i.w, ptr %i.x, align 4, !tbaa !55
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  %i.z = load i16, ptr %i.y, align 2, !tbaa !55
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 6
  store i16 %i.z, ptr %i.aa, align 2, !tbaa !55
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ac = load i16, ptr %i.ab, align 4, !tbaa !55
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i16 %i.ac, ptr %i.ad, align 4, !tbaa !55
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 10
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !55
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 10
  store i16 %i.af, ptr %i.ag, align 2, !tbaa !55
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !74

.loopexit:                                        ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN14btOptimizedBvh14updateBvhNodesEP23btStridingMeshInterfaceiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(244) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 %4) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 0, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 2, ptr %i.c, align 4, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i32 0, ptr %i.d, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  store ptr null, ptr %i.e, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  store i32 0, ptr %i.f, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  store i32 0, ptr %i.g, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #13
  store i32 2, ptr %i.h, align 4, !tbaa !79
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.081146 = add nsw i32 %3, -1                   ; 2 uses
  %.not147 = icmp slt i32 %.081146, %2
  br i1 %.not147, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.p = sext i32 %.081146 to i64
  %i.q = sext i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %i.r = phi i32 [ 2, %.lr.ph ], [ %i.kf, %.loopexit ] ; 2 uses
  %i.s = phi i32 [ 2, %.lr.ph ], [ %i.kg, %.loopexit ] ; 2 uses
  %i.t = phi i32 [ 0, %.lr.ph ], [ %i.kh, %.loopexit ] ; 2 uses
  %i.u = phi ptr [ null, %.lr.ph ], [ %i.ki, %.loopexit ] ; 2 uses
  %indvars.iv = phi i64 [ %i.p, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %.078148 = phi i32 [ -1, %.lr.ph ], [ %.2, %.loopexit ] ; 5 uses
  %.081.in148 = phi i32 [ %3, %.lr.ph ], [ %8, %.loopexit ] ; 2 uses
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !35   ; 3 uses
  %i.w = getelementptr inbounds [16 x i8], ptr %i.v, i64 %indvars.iv ; 10 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !59   ; 3 uses
  %i.z = icmp sgt i32 %i.y, -1
  br i1 %i.z, label %bb.c, label %.loopexit.loopexit

bb.c:                                             ; preds = %bb.b
  %i.aa = lshr i32 %i.y, 27                       ; 3 uses
  %i.ab = and i32 %i.y, 134217727
  %.not.a = icmp eq i32 %i.aa, %.078148
  br i1 %.not.a, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = icmp sgt i32 %.078148, -1
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %1, align 8, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %.078148)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ag = load ptr, ptr %1, align 8, !tbaa !12
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, i32 noundef %i.aa)
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !77
  %.pre155 = load i32, ptr %i.f, align 4, !tbaa !37
  %.pre156 = load i32, ptr %i.h, align 4, !tbaa !79
  %.pre157 = load i32, ptr %i.c, align 4, !tbaa !79
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.aj = phi i32 [ %.pre157, %bb.f ], [ %i.r, %bb.c ] ; 2 uses
  %i.ak = phi i32 [ %.pre156, %bb.f ], [ %i.s, %bb.c ] ; 3 uses
  %i.al = phi i32 [ %.pre155, %bb.f ], [ %i.t, %bb.c ] ; 2 uses
  %i.am = phi ptr [ %.pre, %bb.f ], [ %i.u, %bb.c ] ; 2 uses
  %.1 = phi i32 [ %i.aa, %bb.f ], [ %.078148, %bb.c ]
  %i.an = mul nsw i32 %i.al, %i.ab
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr %i.am, i64 %i.ao ; 18 uses
  %i.aq = icmp eq i32 %i.aj, 0
  %i.ar = load ptr, ptr %i.a, align 8             ; 26 uses
  %i.as = load i32, ptr %i.d, align 4             ; 14 uses
  %i.at = load float, ptr %i.i, align 4, !tbaa !45 ; 4 uses
  br i1 %i.aq, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.g
  %i.au = load <2 x float>, ptr %i.k, align 4, !tbaa !45 ; 3 uses
  switch i32 %i.ak, label %bb.h [
    i32 2, label %.thread
    i32 3, label %.thread163
    i32 5, label %.thread165
  ]

.thread165:                                       ; preds = %.split.us
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !36
  %i.ax = zext i8 %i.aw to i32
  %i.ay = mul nsw i32 %i.as, %i.ax
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds i8, ptr %i.ar, i64 %i.az ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !36
  %i.bf = zext i8 %i.be to i32
  %i.bg = mul nsw i32 %i.as, %i.bf
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds i8, ptr %i.ar, i64 %i.bh ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bl = load i8, ptr %i.ap, align 1, !tbaa !36
  %i.bm = zext i8 %i.bl to i32
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit

.thread163:                                       ; preds = %.split.us
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !55
  %i.bp = zext i16 %i.bo to i32
  %i.bq = mul nsw i32 %i.as, %i.bp
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds i8, ptr %i.ar, i64 %i.br ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !55
  %i.bx = zext i16 %i.bw to i32
  %i.by = mul nsw i32 %i.as, %i.bx
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds i8, ptr %i.ar, i64 %i.bz ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cd = load i16, ptr %i.ap, align 2, !tbaa !55
  %i.ce = zext i16 %i.cd to i32
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit

.thread:                                          ; preds = %.split.us
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !37
  %i.ch = mul nsw i32 %i.as, %i.cg
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds i8, ptr %i.ar, i64 %i.ci ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !37
  %i.co = mul nsw i32 %i.as, %i.cn
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds i8, ptr %i.ar, i64 %i.cp ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.ct = load i32, ptr %i.ap, align 4, !tbaa !37
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit

bb.h:                                             ; preds = %.split.us
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit

_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit:          ; preds = %bb.h, %.thread, %.thread163, %.thread165
  %.pn199.in = phi ptr [ %i.cx, %bb.h ], [ %i.cs, %.thread ], [ %i.cc, %.thread163 ], [ %i.bk, %.thread165 ]
  %.pn200.in = phi ptr [ %i.cw, %bb.h ], [ %i.cr, %.thread ], [ %i.cb, %.thread163 ], [ %i.bj, %.thread165 ]
  %.pn201.in = phi ptr [ %i.ar, %bb.h ], [ %i.cq, %.thread ], [ %i.ca, %.thread163 ], [ %i.bi, %.thread165 ]
  %.pn202.in = phi ptr [ %i.ar, %bb.h ], [ %i.cj, %.thread ], [ %i.bs, %.thread163 ], [ %i.ba, %.thread165 ]
  %.pn203.in = phi ptr [ %i.cu, %bb.h ], [ %i.ck, %.thread ], [ %i.bt, %.thread163 ], [ %i.bb, %.thread165 ]
  %.pn204.in = phi ptr [ %i.cv, %bb.h ], [ %i.cl, %.thread ], [ %i.bu, %.thread163 ], [ %i.bc, %.thread165 ]
  %.079.us.2 = phi i32 [ undef, %bb.h ], [ %i.ct, %.thread ], [ %i.ce, %.thread163 ], [ %i.bm, %.thread165 ]
  %.pn204 = load float, ptr %.pn204.in, align 4, !tbaa !45
  %.pn203 = load float, ptr %.pn203.in, align 4, !tbaa !45
  %i.cy = insertelement <2 x float> poison, float %.pn203, i64 0
  %i.cz = insertelement <2 x float> %i.cy, float %.pn204, i64 1
  %i.da = fmul <2 x float> %i.cz, %i.au
  %.pn202 = load float, ptr %.pn202.in, align 4, !tbaa !45
  %i.db = fmul float %.pn202, %i.at
  %.pn201 = load float, ptr %.pn201.in, align 4, !tbaa !45
  %i.dc = fmul float %.pn201, %i.at
  %.pn200 = load float, ptr %.pn200.in, align 4, !tbaa !45
  %.pn199 = load float, ptr %.pn199.in, align 4, !tbaa !45
  %i.dd = insertelement <2 x float> poison, float %.pn200, i64 0
  %i.de = insertelement <2 x float> %i.dd, float %.pn199, i64 1
  %i.df = fmul <2 x float> %i.de, %i.au
  %i.dg = mul nsw i32 %i.as, %.079.us.2
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds i8, ptr %i.ar, i64 %i.dh ; 2 uses
  %i.dj = load float, ptr %i.di, align 4, !tbaa !45
  %i.dk = fmul float %i.dj, %i.at
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %i.dm = load <2 x float>, ptr %i.dl, align 4, !tbaa !45
  %i.dn = fmul <2 x float> %i.dm, %i.au
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i

.split:                                           ; preds = %bb.g
  %i.do = fpext float %i.at to double             ; 3 uses
  %i.dp = load <2 x float>, ptr %i.k, align 4, !tbaa !45
  %i.dq = fpext <2 x float> %i.dp to <2 x double> ; 3 uses
  switch i32 %i.ak, label %bb.i [
    i32 2, label %.thread173
    i32 3, label %.thread175
    i32 5, label %.thread177
  ]

_Z8btSetMinIfEvRT_RKS0_.exit.i:                   ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit150, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit
  %.sroa.24.0 = phi float [ %i.db, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit ], [ %i.id, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit150 ] ; 3 uses
  %.sroa.13.0 = phi float [ %i.dc, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit ], [ %i.ie, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit150 ] ; 3 uses
  %.sroa.0.0 = phi float [ %i.dk, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit ], [ %i.ik, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit150 ] ; 3 uses
  %i.dr = phi <2 x float> [ %i.dn, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit ], [ %i.iw, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit150 ] ; 4 uses
  %i.ds = phi <2 x float> [ %i.df, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit ], [ %i.it, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit150 ] ; 4 uses
  %i.dt = phi <2 x float> [ %i.da, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit ], [ %i.ip, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit150 ] ; 4 uses
  %i.du = extractelement <2 x float> %i.dr, i64 1 ; 2 uses
  %i.dv = fcmp olt float %i.du, f0x5D5E0B6B
  %.sroa.18136.0 = select i1 %i.dv, float %i.du, float f0x5D5E0B6B ; 2 uses
  %i.dw = fcmp ogt float %.sroa.0.0, f0xDD5E0B6B
  %.sroa.0116.0 = select i1 %i.dw, float %.sroa.0.0, float f0xDD5E0B6B ; 2 uses
  %i.dx = fcmp ogt <2 x float> %i.dr, splat (float f0xDD5E0B6B)
  %i.dy = extractelement <2 x float> %i.ds, i64 1 ; 2 uses
  %i.dz = fcmp olt float %i.dy, %.sroa.18136.0
  %.sroa.18136.1 = select i1 %i.dz, float %i.dy, float %.sroa.18136.0 ; 2 uses
  %i.ea = fcmp olt float %.sroa.0116.0, %.sroa.13.0
  %.sroa.0116.1 = select i1 %i.ea, float %.sroa.13.0, float %.sroa.0116.0 ; 2 uses
  %i.eb = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ec = insertelement <2 x float> %i.eb, float %.sroa.0.0, i64 0 ; 2 uses
  %i.ed = fcmp olt <2 x float> %i.ec, splat (float f0x5D5E0B6B)
  %i.ee = select <2 x i1> %i.ed, <2 x float> %i.ec, <2 x float> splat (float f0x5D5E0B6B) ; 2 uses
  %i.ef = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.eg = insertelement <2 x float> %i.ef, float %.sroa.13.0, i64 0 ; 2 uses
  %i.eh = fcmp olt <2 x float> %i.eg, %i.ee
  %i.ei = select <2 x i1> %i.eh, <2 x float> %i.eg, <2 x float> %i.ee ; 2 uses
  %i.ej = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ek = insertelement <2 x float> %i.ej, float %.sroa.24.0, i64 0 ; 2 uses
  %i.el = fcmp olt <2 x float> %i.ek, %i.ei
  %i.em = select <2 x i1> %i.el, <2 x float> %i.ek, <2 x float> %i.ei
  %i.en = extractelement <2 x float> %i.dt, i64 1 ; 2 uses
  %i.eo = fcmp olt float %i.en, %.sroa.18136.1
  %.sroa.18136.2 = select i1 %i.eo, float %i.en, float %.sroa.18136.1
  %i.ep = fcmp olt float %.sroa.0116.1, %.sroa.24.0
  %.sroa.0116.2 = select i1 %i.ep, float %.sroa.24.0, float %.sroa.0116.1
  %i.eq = load <2 x float>, ptr %i.l, align 8, !tbaa !45 ; 2 uses
  %i.er = load <2 x float>, ptr %i.n, align 8, !tbaa !45 ; 2 uses
  %i.es = extractelement <2 x float> %i.eq, i64 0
  %i.et = fsub float %.sroa.0116.2, %i.es
  %i.eu = extractelement <2 x float> %i.er, i64 0
  %i.ev = fmul float %i.et, %i.eu
  %i.ew = shufflevector <2 x float> %i.em, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ex = insertelement <4 x float> %i.ew, float %.sroa.18136.2, i64 2
  %i.ey = insertelement <4 x float> %i.ex, float %i.ev, i64 3
  %i.ez = shufflevector <2 x float> %i.eq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fa = insertelement <4 x float> %i.ez, float -1.000000e+00, i64 3
  %i.fb = shufflevector <2 x float> %i.er, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fc = insertelement <4 x float> %i.fb, float 1.000000e+00, i64 3
  %i.fd = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.fe = select <2 x i1> %i.dx, <2 x float> %i.dr, <2 x float> splat (float f0xDD5E0B6B) ; 2 uses
  %i.ff = fcmp olt <2 x float> %i.fe, %i.ds
  %i.fg = select <2 x i1> %i.ff, <2 x float> %i.ds, <2 x float> %i.fe ; 2 uses
  %i.fh = fcmp olt <2 x float> %i.fg, %i.dt
  %i.fi = select <2 x i1> %i.fh, <2 x float> %i.dt, <2 x float> %i.fg
  %i.fj = load <2 x float>, ptr %i.m, align 4, !tbaa !45 ; 2 uses
  %i.fk = load <2 x float>, ptr %i.o, align 4, !tbaa !45 ; 2 uses
  %i.fl = fsub <2 x float> %i.fi, %i.fj
  %i.fm = fmul <2 x float> %i.fl, %i.fk
  %i.fn = shufflevector <2 x float> %i.fj, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fo = shufflevector <4 x float> %i.fa, <4 x float> %i.fn, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.fp = fsub <4 x float> %i.ey, %i.fo
  %i.fq = shufflevector <2 x float> %i.fk, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fr = shufflevector <4 x float> %i.fc, <4 x float> %i.fq, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.fs = fmul <4 x float> %i.fp, %i.fr
  %i.ft = fptoui <4 x float> %i.fs to <4 x i16>   ; 2 uses
  %i.fu = and <4 x i16> %i.ft, <i16 -2, i16 -2, i16 -2, i16 poison>
  %i.fv = or <4 x i16> %i.ft, <i16 poison, i16 poison, i16 poison, i16 1>
  %i.fw = shufflevector <4 x i16> %i.fu, <4 x i16> %i.fv, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.fx = fadd <2 x float> %i.fm, splat (float 1.000000e+00)
  %i.fy = fptoui <2 x float> %i.fx to <2 x i16>
  %i.fz = or <2 x i16> %i.fy, splat (i16 1)
  store <4 x i16> %i.fw, ptr %i.w, align 4, !tbaa !55
  store <2 x i16> %i.fz, ptr %i.fd, align 4, !tbaa !55
  br label %.loopexit

.thread173:                                       ; preds = %.split
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !37
  %i.gc = mul nsw i32 %i.as, %i.gb
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds i8, ptr %i.ar, i64 %i.gd ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !37
  %i.gj = mul nsw i32 %i.as, %i.gi
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds i8, ptr %i.ar, i64 %i.gk ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.go = load i32, ptr %i.ap, align 4, !tbaa !37
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit150

.thread175:                                       ; preds = %.split
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !55
  %i.gr = zext i16 %i.gq to i32
  %i.gs = mul nsw i32 %i.as, %i.gr
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr inbounds i8, ptr %i.ar, i64 %i.gt ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.gy = load i16, ptr %i.gx, align 2, !tbaa !55
  %i.gz = zext i16 %i.gy to i32
  %i.ha = mul nsw i32 %i.as, %i.gz
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds i8, ptr %i.ar, i64 %i.hb ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.hf = load i16, ptr %i.ap, align 2, !tbaa !55
  %i.hg = zext i16 %i.hf to i32
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit150

.thread177:                                       ; preds = %.split
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !36
  %i.hj = zext i8 %i.hi to i32
  %i.hk = mul nsw i32 %i.as, %i.hj
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds i8, ptr %i.ar, i64 %i.hl ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !36
  %i.hr = zext i8 %i.hq to i32
  %i.hs = mul nsw i32 %i.as, %i.hr
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds i8, ptr %i.ar, i64 %i.ht ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.hx = load i8, ptr %i.ap, align 1, !tbaa !36
  %i.hy = zext i8 %i.hx to i32
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit150

bb.i:                                             ; preds = %.split
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit150

_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit150:       ; preds = %bb.i, %.thread173, %.thread175, %.thread177
  %.pn.in = phi ptr [ %i.ic, %bb.i ], [ %i.gn, %.thread173 ], [ %i.he, %.thread175 ], [ %i.hw, %.thread177 ]
  %.pn190.in = phi ptr [ %i.ib, %bb.i ], [ %i.gm, %.thread173 ], [ %i.hd, %.thread175 ], [ %i.hv, %.thread177 ]
  %.pn192.in = phi ptr [ %i.ar, %bb.i ], [ %i.gl, %.thread173 ], [ %i.hc, %.thread175 ], [ %i.hu, %.thread177 ]
  %.pn194.in = phi ptr [ %i.ar, %bb.i ], [ %i.ge, %.thread173 ], [ %i.gu, %.thread175 ], [ %i.hm, %.thread177 ]
  %.pn196.in = phi ptr [ %i.hz, %bb.i ], [ %i.gf, %.thread173 ], [ %i.gv, %.thread175 ], [ %i.hn, %.thread177 ]
  %.pn198.in = phi ptr [ %i.ia, %bb.i ], [ %i.gg, %.thread173 ], [ %i.gw, %.thread175 ], [ %i.ho, %.thread177 ]
  %.079.2 = phi i32 [ undef, %bb.i ], [ %i.go, %.thread173 ], [ %i.hg, %.thread175 ], [ %i.hy, %.thread177 ]
  %.pn198 = load double, ptr %.pn198.in, align 8, !tbaa !81
  %.pn196 = load double, ptr %.pn196.in, align 8, !tbaa !81
  %.pn194 = load double, ptr %.pn194.in, align 8, !tbaa !81
  %.in193 = fmul double %.pn194, %i.do
  %i.id = fptrunc double %.in193 to float
  %.pn192 = load double, ptr %.pn192.in, align 8, !tbaa !81
  %.in191 = fmul double %.pn192, %i.do
  %i.ie = fptrunc double %.in191 to float
  %.pn190 = load double, ptr %.pn190.in, align 8, !tbaa !81
  %.pn = load double, ptr %.pn.in, align 8, !tbaa !81
  %i.if = mul nsw i32 %i.as, %.079.2
  %i.ig = sext i32 %i.if to i64
  %i.ih = getelementptr inbounds i8, ptr %i.ar, i64 %i.ig ; 2 uses
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !81
  %i.ij = fmul double %i.ii, %i.do
  %i.ik = fptrunc double %i.ij to float
  %i.il = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.im = insertelement <2 x double> poison, double %.pn196, i64 0
  %i.in = insertelement <2 x double> %i.im, double %.pn198, i64 1
  %i.io = fmul <2 x double> %i.in, %i.dq
  %i.ip = fptrunc <2 x double> %i.io to <2 x float>
  %i.iq = insertelement <2 x double> poison, double %.pn190, i64 0
  %i.ir = insertelement <2 x double> %i.iq, double %.pn, i64 1
  %i.is = fmul <2 x double> %i.ir, %i.dq
  %i.it = fptrunc <2 x double> %i.is to <2 x float>
  %i.iu = load <2 x double>, ptr %i.il, align 8, !tbaa !81
  %i.iv = fmul <2 x double> %i.iu, %i.dq
  %i.iw = fptrunc <2 x double> %i.iv to <2 x float>
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i

.loopexit.loopexit:                               ; preds = %bb.b
  %5 = sext i32 %.081.in148 to i64
  %i.ix = getelementptr [16 x i8], ptr %i.v, i64 %5 ; 8 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 12
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !59 ; 2 uses
  %i.ja = getelementptr i8, ptr %i.ix, i64 16
  %6 = sub nsw i32 %.081.in148, %i.iz
  %7 = sext i32 %6 to i64
  %i.jb = getelementptr inbounds [16 x i8], ptr %i.v, i64 %7
  %i.jc = icmp slt i32 %i.iz, 0
  %i.jd = select i1 %i.jc, ptr %i.jb, ptr %i.ja   ; 6 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.ix, i64 6
  %i.jf = getelementptr inbounds nuw i8, ptr %i.w, i64 6 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 6
  %i.jh = load i16, ptr %i.ix, align 4, !tbaa !55 ; 2 uses
  store i16 %i.jh, ptr %i.w, align 4, !tbaa !55
  %i.ji = load i16, ptr %i.jd, align 2, !tbaa !55
  %spec.store.select = call i16 @llvm.umin.i16(i16 %i.jh, i16 %i.ji)
  store i16 %spec.store.select, ptr %i.w, align 4, !tbaa !55
  %i.jj = load i16, ptr %i.je, align 2, !tbaa !55 ; 2 uses
  store i16 %i.jj, ptr %i.jf, align 2, !tbaa !55
  %i.jk = load i16, ptr %i.jg, align 2, !tbaa !55
  %spec.store.select84 = call i16 @llvm.umax.i16(i16 %i.jj, i16 %i.jk)
  store i16 %spec.store.select84, ptr %i.jf, align 2, !tbaa !55
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ix, i64 2
  %i.jm = load i16, ptr %i.jl, align 2, !tbaa !55 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.w, i64 2 ; 2 uses
  store i16 %i.jm, ptr %i.jn, align 2, !tbaa !55
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jd, i64 2
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !55
  %spec.store.select.1 = call i16 @llvm.umin.i16(i16 %i.jm, i16 %i.jp)
  store i16 %spec.store.select.1, ptr %i.jn, align 2, !tbaa !55
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.jr = load i16, ptr %i.jq, align 4, !tbaa !55 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  store i16 %i.jr, ptr %i.js, align 4, !tbaa !55
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.ju = load i16, ptr %i.jt, align 2, !tbaa !55
  %spec.store.select84.1 = call i16 @llvm.umax.i16(i16 %i.jr, i16 %i.ju)
  store i16 %spec.store.select84.1, ptr %i.js, align 4, !tbaa !55
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  %i.jw = load i16, ptr %i.jv, align 4, !tbaa !55 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 2 uses
  store i16 %i.jw, ptr %i.jx, align 4, !tbaa !55
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jd, i64 4
  %i.jz = load i16, ptr %i.jy, align 2, !tbaa !55
  %spec.store.select.2 = call i16 @llvm.umin.i16(i16 %i.jw, i16 %i.jz)
  store i16 %spec.store.select.2, ptr %i.jx, align 4, !tbaa !55
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ix, i64 10
  %i.kb = load i16, ptr %i.ka, align 2, !tbaa !55 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.w, i64 10 ; 2 uses
  store i16 %i.kb, ptr %i.kc, align 2, !tbaa !55
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jd, i64 10
  %i.ke = load i16, ptr %i.kd, align 2, !tbaa !55
  %spec.store.select84.2 = call i16 @llvm.umax.i16(i16 %i.kb, i16 %i.ke)
  store i16 %spec.store.select84.2, ptr %i.kc, align 2, !tbaa !55
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_Z8btSetMinIfEvRT_RKS0_.exit.i
  %i.kf = phi i32 [ %i.aj, %_Z8btSetMinIfEvRT_RKS0_.exit.i ], [ %i.r, %.loopexit.loopexit ]
  %i.kg = phi i32 [ %i.ak, %_Z8btSetMinIfEvRT_RKS0_.exit.i ], [ %i.s, %.loopexit.loopexit ]
  %i.kh = phi i32 [ %i.al, %_Z8btSetMinIfEvRT_RKS0_.exit.i ], [ %i.t, %.loopexit.loopexit ]
  %i.ki = phi ptr [ %i.am, %_Z8btSetMinIfEvRT_RKS0_.exit.i ], [ %i.u, %.loopexit.loopexit ]
  %.2 = phi i32 [ %.1, %_Z8btSetMinIfEvRT_RKS0_.exit.i ], [ %.078148, %.loopexit.loopexit ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %.not = icmp slt i64 %indvars.iv.next, %i.q
  %8 = trunc nsw i64 %indvars.iv to i32
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !75

._crit_edge:                                      ; preds = %.loopexit
  %i.kj = icmp sgt i32 %.2, -1
  br i1 %i.kj, label %bb.j, label %._crit_edge.thread

bb.j:                                             ; preds = %._crit_edge
  %i.kk = load ptr, ptr %1, align 8, !tbaa !12
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 48
  %i.km = load ptr, ptr %i.kl, align 8
  call void %i.km(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %.2)
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.j, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN14btOptimizedBvh12refitPartialEP23btStridingMeshInterfaceRK9btVector3S4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(244) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load float, ptr %2, align 4, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !45
  %i.g = load <3 x float>, ptr %i.a, align 8, !tbaa !45 ; 2 uses
  %i.h = shufflevector <3 x float> %i.g, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.i = load <3 x float>, ptr %i.d, align 8, !tbaa !45 ; 2 uses
  %i.j = shufflevector <3 x float> %i.i, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.k = load <4 x float>, ptr %3, align 4
  %i.l = insertelement <4 x float> poison, float %i.f, i64 2
  %i.m = insertelement <4 x float> %i.l, float %i.b, i64 3
  %i.n = shufflevector <4 x float> %i.k, <4 x float> %i.m, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.o = fsub <4 x float> %i.n, %i.h
  %i.p = fmul <4 x float> %i.o, %i.j
  %i.q = fadd <4 x float> %i.p, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float -0.000000e+00>
  %i.r = fptoui <4 x float> %i.q to <4 x i16>     ; 2 uses
  %i.s = load <2 x float>, ptr %i.c, align 4, !tbaa !45
  %i.t = shufflevector <3 x float> %i.g, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.u = fsub <2 x float> %i.s, %i.t
  %i.v = shufflevector <3 x float> %i.i, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.w = fmul <2 x float> %i.u, %i.v
  %i.x = fptoui <2 x float> %i.w to <2 x i16>
  %i.y = and <2 x i16> %i.x, splat (i16 -2)
  %i.z = or <4 x i16> %i.r, <i16 1, i16 1, i16 1, i16 poison>
  %i.aa = and <4 x i16> %i.r, <i16 poison, i16 poison, i16 poison, i16 -2>
  %i.ab = shufflevector <4 x i16> %i.z, <4 x i16> %i.aa, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !52 ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.ah = phi i32 [ %i.ad, %.lr.ph ], [ %i.bt, %bb.d ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !53
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.ai, i64 %indvars.iv ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.al = load <2 x i16>, ptr %i.ak, align 2, !tbaa !55
  %i.am = icmp ugt <2 x i16> %i.y, %i.al          ; 2 uses
  %i.an = load <4 x i16>, ptr %i.aj, align 2, !tbaa !55 ; 2 uses
  %i.ao = icmp ult <4 x i16> %i.ab, %i.an
  %i.ap = icmp ugt <4 x i16> %i.ab, %i.an
  %i.aq = shufflevector <4 x i1> %i.ao, <4 x i1> %i.ap, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.ar = bitcast <4 x i1> %i.aq to i4
  %i.as = icmp ne i4 %i.ar, 0
  %i.at = extractelement <2 x i1> %i.am, i64 1
  %op.rdx = or i1 %i.as, %i.at
  %i.au = extractelement <2 x i1> %i.am, i64 0
  %op.rdx29 = or i1 %op.rdx, %i.au
  br i1 %op.rdx29, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 10
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 6
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 12 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !57 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !60
  %i.bd = add nsw i32 %i.bc, %i.ba
  tail call void @_ZN14btOptimizedBvh14updateBvhNodesEP23btStridingMeshInterfaceiii(ptr noundef nonnull align 8 dereferenceable(244) %0, ptr noundef %1, i32 noundef %i.ba, i32 noundef %i.bd, i32 poison)
  %i.be = load i32, ptr %i.az, align 4, !tbaa !57
  %i.bf = load ptr, ptr %i.ag, align 8, !tbaa !35
  %i.bg = sext i32 %i.be to i64
  %i.bh = getelementptr inbounds [16 x i8], ptr %i.bf, i64 %i.bg ; 6 uses
  %i.bi = load i16, ptr %i.bh, align 4, !tbaa !55
  store i16 %i.bi, ptr %i.aj, align 4, !tbaa !55
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !55
  store i16 %i.bk, ptr %i.av, align 2, !tbaa !55
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bm = load i16, ptr %i.bl, align 4, !tbaa !55
  store i16 %i.bm, ptr %i.aw, align 4, !tbaa !55
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 6
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !55
  store i16 %i.bo, ptr %i.ay, align 2, !tbaa !55
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bq = load i16, ptr %i.bp, align 4, !tbaa !55
  store i16 %i.bq, ptr %i.ak, align 4, !tbaa !55
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 10
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !55
  store i16 %i.bs, ptr %i.ax, align 2, !tbaa !55
  %.pre = load i32, ptr %i.ac, align 4, !tbaa !52
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bt = phi i32 [ %.pre, %bb.c ], [ %i.ah, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bu = sext i32 %i.bt to i64
  %i.bv = icmp slt i64 %indvars.iv.next, %i.bu
  br i1 %i.bv, label %bb.b, label %._crit_edge, !llvm.loop !82

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN14btOptimizedBvh18deSerializeInPlaceEPvjb(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN14btQuantizedBvh18deSerializeInPlaceEPvjb(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2)
  ret ptr %i.a
}

declare noundef ptr @_ZN14btQuantizedBvh18deSerializeInPlaceEPvjb(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK14btQuantizedBvh9serializeEPvjb(ptr noundef nonnull align 8 dereferenceable(244), ptr noundef, i32 noundef, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK14btQuantizedBvh31calculateSerializeBufferSizeNewEv(ptr noundef nonnull align 8 dereferenceable(244) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret i32 96
}

declare noundef ptr @_ZNK14btQuantizedBvh9serializeEPvP12btSerializer(ptr noundef nonnull align 8 dereferenceable(244), ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZN14btQuantizedBvh16deSerializeFloatER23btQuantizedBvhFloatData(ptr noundef nonnull align 8 dereferenceable(244), ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #1

declare void @_ZN14btQuantizedBvh17deSerializeDoubleER24btQuantizedBvhDoubleData(ptr noundef nonnull align 8 dereferenceable(244), ptr noundef nonnull align 8 dereferenceable(144)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK14btOptimizedBvh16serializeInPlaceEPvjb(ptr noundef nonnull align 8 dereferenceable(244) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK14btQuantizedBvh9serializeEPvjb(ptr noundef nonnull align 8 dereferenceable(244) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3)
  ret i1 %i.a
}

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #13 ; 0 uses
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_EN29QuantizedNodeTriangleCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN31btInternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #15
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_EN29QuantizedNodeTriangleCallback28internalProcessTriangleIndexEPS2_ii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #6 align 2 {
_Z8btSetMinIfEvRT_RKS0_.exit.i:
  %i.a = load float, ptr %1, align 4, !tbaa !45   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load float, ptr %i.c, align 4, !tbaa !45 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load float, ptr %i.f, align 4, !tbaa !45 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !32   ; 4 uses
end_hunk_0
