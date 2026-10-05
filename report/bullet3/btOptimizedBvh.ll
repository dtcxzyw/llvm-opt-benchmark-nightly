Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btOptimizedBvh?download=true
inline.NumInlined: 195
inline.NumDeleted: 78
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_:bb.a
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  store i16 %i.ey, ptr %i.ez, align 4, !tbaa !55
  %i.fa = getelementptr inbounds nuw i8, ptr %i.es, i64 6
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !55
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ep, i64 6
  store i16 %i.fb, ptr %i.fc, align 2, !tbaa !55
  %i.fd = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.fe = load i16, ptr %i.fd, align 4, !tbaa !55
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store i16 %i.fe, ptr %i.ff, align 4, !tbaa !55
  %i.fg = getelementptr inbounds nuw i8, ptr %i.es, i64 10
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !55
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ep, i64 10
  store i16 %i.fh, ptr %i.fi, align 2, !tbaa !55
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ep, i64 12
  store i32 0, ptr %i.fj, align 4, !tbaa !57
  %i.fk = getelementptr inbounds nuw i8, ptr %i.es, i64 12
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !59 ; 2 uses
  %i.fm = icmp sgt i32 %i.fl, -1
  %i.fn = sub nsw i32 0, %i.fl
  %spec.select = select i1 %i.fm, i32 1, i32 %i.fn
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store i32 %spec.select, ptr %i.fo, align 4, !tbaa !60
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.x, %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE6expandERKS0_.exit
  %i.fp = phi i32 [ %i.dr, %bb.x ], [ %i.eq, %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE6expandERKS0_.exit ]
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i32 %i.fp, ptr %i.fq, align 8, !tbaa !73
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !35 ; 2 uses
  %.not.i.i47 = icmp ne ptr %i.fs, null
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.fu = load i8, ptr %i.ft, align 8, !range !41
  %i.fv = trunc nuw i8 %i.fu to i1
  %or.cond.i = select i1 %.not.i.i47, i1 %i.fv, i1 false
  br i1 %or.cond.i, label %bb.ac, label %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE5clearEv.exit

bb.ac:                                            ; preds = %._crit_edge
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.fs)
  br label %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE5clearEv.exit

_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE5clearEv.exit: ; preds = %._crit_edge, %bb.ac
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i8 1, ptr %i.ft, align 8, !tbaa !40
  store ptr null, ptr %i.fr, align 8, !tbaa !35
  store i32 0, ptr %i.fw, align 4, !tbaa !33
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %i.fx, align 8, !tbaa !34
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !48 ; 2 uses
  %.not.i.i48 = icmp ne ptr %i.fz, null
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.gb = load i8, ptr %i.ga, align 8, !range !41
  %i.gc = trunc nuw i8 %i.gb to i1
  %or.cond.i49 = select i1 %.not.i.i48, i1 %i.gc, i1 false
  br i1 %or.cond.i49, label %bb.ad, label %_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeE5clearEv.exit

bb.ad:                                            ; preds = %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE5clearEv.exit
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.fz)
  br label %_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeE5clearEv.exit

_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeE5clearEv.exit: ; preds = %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE5clearEv.exit, %bb.ad
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.ga, align 8, !tbaa !50
  store ptr null, ptr %i.fy, align 8, !tbaa !48
  store i32 0, ptr %i.gd, align 4, !tbaa !46
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.ge, align 8, !tbaa !47
  ret void

bb.ae:                                            ; preds = %bb.w, %bb.l
  %.pn18.pn = phi { ptr, i32 } [ %.pn18, %bb.l ], [ %.pn, %bb.w ]
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
  %.not.not146 = icmp sgt i32 %3, %2
  br i1 %.not.not146, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.p = sext i32 %3 to i64
  %i.q = sext i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %5 = phi i32 [ 2, %.lr.ph ], [ %15, %.loopexit ] ; 2 uses
  %6 = phi i32 [ 2, %.lr.ph ], [ %16, %.loopexit ] ; 2 uses
  %7 = phi i32 [ 0, %.lr.ph ], [ %17, %.loopexit ] ; 2 uses
  %8 = phi ptr [ null, %.lr.ph ], [ %18, %.loopexit ] ; 2 uses
  %indvars.iv = phi i64 [ %i.p, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %.078148 = phi i32 [ -1, %.lr.ph ], [ %.2, %.loopexit ] ; 5 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !35   ; 3 uses
  %i.s = getelementptr inbounds [16 x i8], ptr %i.r, i64 %indvars.iv.next ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !59   ; 3 uses
  %i.v = icmp sgt i32 %i.u, -1
  br i1 %i.v, label %bb.c, label %.loopexit.loopexit

bb.c:                                             ; preds = %bb.b
  %i.w = lshr i32 %i.u, 27                        ; 3 uses
  %i.x = and i32 %i.u, 134217727
  %.not = icmp eq i32 %i.w, %.078148
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = icmp sgt i32 %.078148, -1
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %1, align 8, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %.078148)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ac = load ptr, ptr %1, align 8, !tbaa !12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, i32 noundef %i.w)
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !77
  %.pre155 = load i32, ptr %i.f, align 4, !tbaa !37
  %.pre156 = load i32, ptr %i.h, align 4, !tbaa !79
  %.pre157 = load i32, ptr %i.c, align 4, !tbaa !79
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.1.a = phi i32 [ %.pre157, %bb.f ], [ %5, %bb.c ] ; 2 uses
  %9 = phi i32 [ %.pre156, %bb.f ], [ %6, %bb.c ] ; 3 uses
  %10 = phi i32 [ %.pre155, %bb.f ], [ %7, %bb.c ] ; 2 uses
  %11 = phi ptr [ %.pre, %bb.f ], [ %8, %bb.c ]   ; 2 uses
  %.1 = phi i32 [ %i.w, %bb.f ], [ %.078148, %bb.c ]
  %12 = mul nsw i32 %10, %i.x
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13 ; 18 uses
  %i.af = icmp eq i32 %.1.a, 0
  %i.ag = load ptr, ptr %i.a, align 8             ; 26 uses
  %i.ah = load i32, ptr %i.d, align 4             ; 14 uses
  %i.ai = load float, ptr %i.i, align 4, !tbaa !45 ; 4 uses
  br i1 %i.af, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.g
  %i.aj = load <2 x float>, ptr %i.k, align 4, !tbaa !45 ; 3 uses
  switch i32 %9, label %bb.h [
    i32 2, label %.thread
    i32 3, label %.thread160
    i32 5, label %.thread162
  ]

.thread162:                                       ; preds = %.split.us
  %i.ak = getelementptr inbounds nuw i8, ptr %14, i64 2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !36
  %i.am = zext i8 %i.al to i32
  %i.an = mul nsw i32 %i.ah, %i.am
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr %i.ag, i64 %i.ao ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %14, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !36
  %i.au = zext i8 %i.at to i32
  %i.av = mul nsw i32 %i.ah, %i.au
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %i.ag, i64 %i.aw ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load i8, ptr %14, align 1, !tbaa !36
  %i.bb = zext i8 %i.ba to i32
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit

.thread160:                                       ; preds = %.split.us
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !55
  %i.be = zext i16 %i.bd to i32
  %i.bf = mul nsw i32 %i.ah, %i.be
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %i.ag, i64 %i.bg ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %14, i64 2
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !55
  %i.bm = zext i16 %i.bl to i32
  %i.bn = mul nsw i32 %i.ah, %i.bm
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds i8, ptr %i.ag, i64 %i.bo ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bs = load i16, ptr %14, align 2, !tbaa !55
  %i.bt = zext i16 %i.bs to i32
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit

.thread:                                          ; preds = %.split.us
  %i.bu = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !37
  %i.bw = mul nsw i32 %i.ah, %i.bv
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds i8, ptr %i.ag, i64 %i.bx ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !37
  %i.cd = mul nsw i32 %i.ah, %i.cc
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds i8, ptr %i.ag, i64 %i.ce ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ci = load i32, ptr %14, align 4, !tbaa !37
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit

bb.h:                                             ; preds = %.split.us
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit

_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit:          ; preds = %bb.h, %.thread, %.thread160, %.thread162
  %.pn196.in.a = phi ptr [ %i.cm, %bb.h ], [ %i.ch, %.thread ], [ %i.br, %.thread160 ], [ %i.az, %.thread162 ]
  %.pn197.in = phi ptr [ %i.cl, %bb.h ], [ %i.cg, %.thread ], [ %i.bq, %.thread160 ], [ %i.ay, %.thread162 ]
  %.pn198.in.a = phi ptr [ %i.ag, %bb.h ], [ %i.cf, %.thread ], [ %i.bp, %.thread160 ], [ %i.ax, %.thread162 ]
  %.pn199.in = phi ptr [ %i.ag, %bb.h ], [ %i.by, %.thread ], [ %i.bh, %.thread160 ], [ %i.ap, %.thread162 ]
  %.pn200.in = phi ptr [ %i.cj, %bb.h ], [ %i.bz, %.thread ], [ %i.bi, %.thread160 ], [ %i.aq, %.thread162 ]
  %.pn201.in = phi ptr [ %i.ck, %bb.h ], [ %i.ca, %.thread ], [ %i.bj, %.thread160 ], [ %i.ar, %.thread162 ]
  %.079.us.2 = phi i32 [ undef, %bb.h ], [ %i.ci, %.thread ], [ %i.bt, %.thread160 ], [ %i.bb, %.thread162 ]
  %.pn201.a = load float, ptr %.pn201.in, align 4, !tbaa !45
  %.pn200.a = load float, ptr %.pn200.in, align 4, !tbaa !45
  %i.cn = insertelement <2 x float> poison, float %.pn200.a, i64 0
  %i.co = insertelement <2 x float> %i.cn, float %.pn201.a, i64 1
  %i.cp = fmul <2 x float> %i.co, %i.aj
  %.pn199.a = load float, ptr %.pn199.in, align 4, !tbaa !45
  %i.cq = fmul float %.pn199.a, %i.ai
  %.pn198.a = load float, ptr %.pn198.in.a, align 4, !tbaa !45
  %i.cr = fmul float %.pn198.a, %i.ai
  %.pn197 = load float, ptr %.pn197.in, align 4, !tbaa !45
  %.pn196.a = load float, ptr %.pn196.in.a, align 4, !tbaa !45
  %i.cs = insertelement <2 x float> poison, float %.pn197, i64 0
  %i.ct = insertelement <2 x float> %i.cs, float %.pn196.a, i64 1
  %i.cu = fmul <2 x float> %i.ct, %i.aj
  %i.cv = mul nsw i32 %i.ah, %.079.us.2
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds i8, ptr %i.ag, i64 %i.cw ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !45
  %i.cz = fmul float %i.cy, %i.ai
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.db = load <2 x float>, ptr %i.da, align 4, !tbaa !45
  %i.dc = fmul <2 x float> %i.db, %i.aj
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i

.split:                                           ; preds = %bb.g
  %i.dd = fpext float %i.ai to double             ; 3 uses
  %i.de = load <2 x float>, ptr %i.k, align 4, !tbaa !45
  %i.df = fpext <2 x float> %i.de to <2 x double> ; 3 uses
  switch i32 %9, label %bb.i [
    i32 2, label %.thread170
    i32 3, label %.thread172
    i32 5, label %.thread174
  ]

_Z8btSetMinIfEvRT_RKS0_.exit.i:                   ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit150, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit
  %.sroa.24.0 = phi float [ %i.cq, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit ], [ %i.hs, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit150 ] ; 3 uses
  %.sroa.13.0 = phi float [ %i.cr, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit ], [ %i.ht, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit150 ] ; 3 uses
  %.sroa.0.0 = phi float [ %i.cz, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit ], [ %i.hz, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit150 ] ; 3 uses
  %i.dg = phi <2 x float> [ %i.dc, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit ], [ %i.il, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit150 ] ; 4 uses
  %i.dh = phi <2 x float> [ %i.cu, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit ], [ %i.ii, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit150 ] ; 4 uses
  %i.di = phi <2 x float> [ %i.cp, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit ], [ %i.ie, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit150 ] ; 4 uses
  %i.dj = extractelement <2 x float> %i.dg, i64 1 ; 2 uses
  %i.dk = fcmp olt float %i.dj, f0x5D5E0B6B
  %.sroa.18136.0 = select i1 %i.dk, float %i.dj, float f0x5D5E0B6B ; 2 uses
  %i.dl = fcmp ogt float %.sroa.0.0, f0xDD5E0B6B
  %.sroa.0116.0 = select i1 %i.dl, float %.sroa.0.0, float f0xDD5E0B6B ; 2 uses
  %i.dm = fcmp ogt <2 x float> %i.dg, splat (float f0xDD5E0B6B)
  %i.dn = extractelement <2 x float> %i.dh, i64 1 ; 2 uses
  %i.do = fcmp olt float %i.dn, %.sroa.18136.0
  %.sroa.18136.1 = select i1 %i.do, float %i.dn, float %.sroa.18136.0 ; 2 uses
  %i.dp = fcmp olt float %.sroa.0116.0, %.sroa.13.0
  %.sroa.0116.1 = select i1 %i.dp, float %.sroa.13.0, float %.sroa.0116.0 ; 2 uses
  %i.dq = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dr = insertelement <2 x float> %i.dq, float %.sroa.0.0, i64 0 ; 2 uses
  %i.ds = fcmp olt <2 x float> %i.dr, splat (float f0x5D5E0B6B)
  %i.dt = select <2 x i1> %i.ds, <2 x float> %i.dr, <2 x float> splat (float f0x5D5E0B6B) ; 2 uses
  %i.du = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dv = insertelement <2 x float> %i.du, float %.sroa.13.0, i64 0 ; 2 uses
  %i.dw = fcmp olt <2 x float> %i.dv, %i.dt
  %i.dx = select <2 x i1> %i.dw, <2 x float> %i.dv, <2 x float> %i.dt ; 2 uses
  %i.dy = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dz = insertelement <2 x float> %i.dy, float %.sroa.24.0, i64 0 ; 2 uses
  %i.ea = fcmp olt <2 x float> %i.dz, %i.dx
  %i.eb = select <2 x i1> %i.ea, <2 x float> %i.dz, <2 x float> %i.dx
  %i.ec = extractelement <2 x float> %i.di, i64 1 ; 2 uses
  %i.ed = fcmp olt float %i.ec, %.sroa.18136.1
  %.sroa.18136.2 = select i1 %i.ed, float %i.ec, float %.sroa.18136.1
  %i.ee = fcmp olt float %.sroa.0116.1, %.sroa.24.0
  %.sroa.0116.2 = select i1 %i.ee, float %.sroa.24.0, float %.sroa.0116.1
  %i.ef = load <2 x float>, ptr %i.l, align 8, !tbaa !45 ; 2 uses
  %i.eg = load <2 x float>, ptr %i.n, align 8, !tbaa !45 ; 2 uses
  %i.eh = extractelement <2 x float> %i.ef, i64 0
  %i.ei = fsub float %.sroa.0116.2, %i.eh
  %i.ej = extractelement <2 x float> %i.eg, i64 0
  %i.ek = fmul float %i.ei, %i.ej
  %i.el = shufflevector <2 x float> %i.eb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.em = insertelement <4 x float> %i.el, float %.sroa.18136.2, i64 2
  %i.en = insertelement <4 x float> %i.em, float %i.ek, i64 3
  %i.eo = shufflevector <2 x float> %i.ef, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ep = insertelement <4 x float> %i.eo, float -1.000000e+00, i64 3
  %i.eq = shufflevector <2 x float> %i.eg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.er = insertelement <4 x float> %i.eq, float 1.000000e+00, i64 3
  %i.es = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.et = select <2 x i1> %i.dm, <2 x float> %i.dg, <2 x float> splat (float f0xDD5E0B6B) ; 2 uses
  %i.eu = fcmp olt <2 x float> %i.et, %i.dh
  %i.ev = select <2 x i1> %i.eu, <2 x float> %i.dh, <2 x float> %i.et ; 2 uses
  %i.ew = fcmp olt <2 x float> %i.ev, %i.di
  %i.ex = select <2 x i1> %i.ew, <2 x float> %i.di, <2 x float> %i.ev
  %i.ey = load <2 x float>, ptr %i.m, align 4, !tbaa !45 ; 2 uses
  %i.ez = load <2 x float>, ptr %i.o, align 4, !tbaa !45 ; 2 uses
  %i.fa = fsub <2 x float> %i.ex, %i.ey
  %i.fb = fmul <2 x float> %i.fa, %i.ez
  %i.fc = shufflevector <2 x float> %i.ey, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fd = shufflevector <4 x float> %i.ep, <4 x float> %i.fc, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.fe = fsub <4 x float> %i.en, %i.fd
  %i.ff = shufflevector <2 x float> %i.ez, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fg = shufflevector <4 x float> %i.er, <4 x float> %i.ff, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.fh = fmul <4 x float> %i.fe, %i.fg
  %i.fi = fptoui <4 x float> %i.fh to <4 x i16>   ; 2 uses
  %i.fj = and <4 x i16> %i.fi, <i16 -2, i16 -2, i16 -2, i16 poison>
  %i.fk = or <4 x i16> %i.fi, <i16 poison, i16 poison, i16 poison, i16 1>
  %i.fl = shufflevector <4 x i16> %i.fj, <4 x i16> %i.fk, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.fm = fadd <2 x float> %i.fb, splat (float 1.000000e+00)
  %i.fn = fptoui <2 x float> %i.fm to <2 x i16>
  %i.fo = or <2 x i16> %i.fn, splat (i16 1)
  store <4 x i16> %i.fl, ptr %i.s, align 4, !tbaa !55
  store <2 x i16> %i.fo, ptr %i.es, align 4, !tbaa !55
  br label %.loopexit

.thread170:                                       ; preds = %.split
  %i.fp = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !37
  %i.fr = mul nsw i32 %i.ah, %i.fq
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr inbounds i8, ptr %i.ag, i64 %i.fs ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fw = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !37
  %i.fy = mul nsw i32 %i.ah, %i.fx
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds i8, ptr %i.ag, i64 %i.fz ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gd = load i32, ptr %14, align 4, !tbaa !37
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit150

.thread172:                                       ; preds = %.split
  %i.ge = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.gf = load i16, ptr %i.ge, align 2, !tbaa !55
  %i.gg = zext i16 %i.gf to i32
  %i.gh = mul nsw i32 %i.ah, %i.gg
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds i8, ptr %i.ag, i64 %i.gi ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.gm = getelementptr inbounds nuw i8, ptr %14, i64 2
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !55
  %i.go = zext i16 %i.gn to i32
  %i.gp = mul nsw i32 %i.ah, %i.go
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr inbounds i8, ptr %i.ag, i64 %i.gq ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gu = load i16, ptr %14, align 2, !tbaa !55
  %i.gv = zext i16 %i.gu to i32
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit150

.thread174:                                       ; preds = %.split
  %i.gw = getelementptr inbounds nuw i8, ptr %14, i64 2
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !36
  %i.gy = zext i8 %i.gx to i32
  %i.gz = mul nsw i32 %i.ah, %i.gy
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr inbounds i8, ptr %i.ag, i64 %i.ha ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.he = getelementptr inbounds nuw i8, ptr %14, i64 1
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !36
  %i.hg = zext i8 %i.hf to i32
  %i.hh = mul nsw i32 %i.ah, %i.hg
  %i.hi = sext i32 %i.hh to i64
  %i.hj = getelementptr inbounds i8, ptr %i.ag, i64 %i.hi ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hm = load i8, ptr %14, align 1, !tbaa !36
  %i.hn = zext i8 %i.hm to i32
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit150

bb.i:                                             ; preds = %.split
  %i.ho = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit150

_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit150:       ; preds = %bb.i, %.thread170, %.thread172, %.thread174
  %.pn.in = phi ptr [ %i.hr, %bb.i ], [ %i.gc, %.thread170 ], [ %i.gt, %.thread172 ], [ %i.hl, %.thread174 ]
  %.pn187.in = phi ptr [ %i.hq, %bb.i ], [ %i.gb, %.thread170 ], [ %i.gs, %.thread172 ], [ %i.hk, %.thread174 ]
  %.pn189.in = phi ptr [ %i.ag, %bb.i ], [ %i.ga, %.thread170 ], [ %i.gr, %.thread172 ], [ %i.hj, %.thread174 ]
  %.pn191.in = phi ptr [ %i.ag, %bb.i ], [ %i.ft, %.thread170 ], [ %i.gj, %.thread172 ], [ %i.hb, %.thread174 ]
  %.pn193.in = phi ptr [ %i.ho, %bb.i ], [ %i.fu, %.thread170 ], [ %i.gk, %.thread172 ], [ %i.hc, %.thread174 ]
  %.pn195.in = phi ptr [ %i.hp, %bb.i ], [ %i.fv, %.thread170 ], [ %i.gl, %.thread172 ], [ %i.hd, %.thread174 ]
  %.079.2 = phi i32 [ undef, %bb.i ], [ %i.gd, %.thread170 ], [ %i.gv, %.thread172 ], [ %i.hn, %.thread174 ]
  %.pn195 = load double, ptr %.pn195.in, align 8, !tbaa !81
  %.pn193 = load double, ptr %.pn193.in, align 8, !tbaa !81
  %.pn191 = load double, ptr %.pn191.in, align 8, !tbaa !81
  %.in190 = fmul double %.pn191, %i.dd
  %i.hs = fptrunc double %.in190 to float
  %.pn189 = load double, ptr %.pn189.in, align 8, !tbaa !81
  %.in188 = fmul double %.pn189, %i.dd
  %i.ht = fptrunc double %.in188 to float
  %.pn187 = load double, ptr %.pn187.in, align 8, !tbaa !81
  %.pn = load double, ptr %.pn.in, align 8, !tbaa !81
  %i.hu = mul nsw i32 %i.ah, %.079.2
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds i8, ptr %i.ag, i64 %i.hv ; 2 uses
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !81
  %i.hy = fmul double %i.hx, %i.dd
  %i.hz = fptrunc double %i.hy to float
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.ib = insertelement <2 x double> poison, double %.pn193, i64 0
  %i.ic = insertelement <2 x double> %i.ib, double %.pn195, i64 1
  %i.id = fmul <2 x double> %i.ic, %i.df
  %i.ie = fptrunc <2 x double> %i.id to <2 x float>
  %i.if = insertelement <2 x double> poison, double %.pn187, i64 0
  %i.ig = insertelement <2 x double> %i.if, double %.pn, i64 1
  %i.ih = fmul <2 x double> %i.ig, %i.df
  %i.ii = fptrunc <2 x double> %i.ih to <2 x float>
  %i.ij = load <2 x double>, ptr %i.ia, align 8, !tbaa !81
  %i.ik = fmul <2 x double> %i.ij, %i.df
  %i.il = fptrunc <2 x double> %i.ik to <2 x float>
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i

.loopexit.loopexit:                               ; preds = %bb.b
  %i.im = getelementptr [16 x i8], ptr %i.r, i64 %indvars.iv ; 8 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 12
  %i.io = load i32, ptr %i.in, align 4, !tbaa !59 ; 2 uses
  %i.ip = getelementptr i8, ptr %i.im, i64 16
  %i.iq = sext i32 %i.io to i64
  %i.ir = sub nsw i64 %indvars.iv, %i.iq
  %i.is = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.ir
  %i.it = icmp slt i32 %i.io, 0
  %i.iu = select i1 %i.it, ptr %i.is, ptr %i.ip   ; 6 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.im, i64 6
  %i.iw = getelementptr inbounds nuw i8, ptr %i.s, i64 6 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 6
  %i.iy = load i16, ptr %i.im, align 4, !tbaa !55 ; 2 uses
  store i16 %i.iy, ptr %i.s, align 4, !tbaa !55
  %i.iz = load i16, ptr %i.iu, align 2, !tbaa !55
  %spec.store.select = call i16 @llvm.umin.i16(i16 %i.iy, i16 %i.iz)
  store i16 %spec.store.select, ptr %i.s, align 4, !tbaa !55
  %i.ja = load i16, ptr %i.iv, align 2, !tbaa !55 ; 2 uses
  store i16 %i.ja, ptr %i.iw, align 2, !tbaa !55
  %i.jb = load i16, ptr %i.ix, align 2, !tbaa !55
  %spec.store.select84 = call i16 @llvm.umax.i16(i16 %i.ja, i16 %i.jb)
  store i16 %spec.store.select84, ptr %i.iw, align 2, !tbaa !55
  %i.jc = getelementptr inbounds nuw i8, ptr %i.im, i64 2
  %i.jd = load i16, ptr %i.jc, align 2, !tbaa !55 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.s, i64 2 ; 2 uses
  store i16 %i.jd, ptr %i.je, align 2, !tbaa !55
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iu, i64 2
  %i.jg = load i16, ptr %i.jf, align 2, !tbaa !55
  %spec.store.select.1 = call i16 @llvm.umin.i16(i16 %i.jd, i16 %i.jg)
  store i16 %spec.store.select.1, ptr %i.je, align 2, !tbaa !55
  %i.jh = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.ji = load i16, ptr %i.jh, align 4, !tbaa !55 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store i16 %i.ji, ptr %i.jj, align 4, !tbaa !55
  %i.jk = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.jl = load i16, ptr %i.jk, align 2, !tbaa !55
  %spec.store.select84.1 = call i16 @llvm.umax.i16(i16 %i.ji, i16 %i.jl)
  store i16 %spec.store.select84.1, ptr %i.jj, align 4, !tbaa !55
  %i.jm = getelementptr inbounds nuw i8, ptr %i.im, i64 4
  %i.jn = load i16, ptr %i.jm, align 4, !tbaa !55 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  store i16 %i.jn, ptr %i.jo, align 4, !tbaa !55
  %i.jp = getelementptr inbounds nuw i8, ptr %i.iu, i64 4
  %i.jq = load i16, ptr %i.jp, align 2, !tbaa !55
  %spec.store.select.2 = call i16 @llvm.umin.i16(i16 %i.jn, i16 %i.jq)
  store i16 %spec.store.select.2, ptr %i.jo, align 4, !tbaa !55
  %i.jr = getelementptr inbounds nuw i8, ptr %i.im, i64 10
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !55 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.s, i64 10 ; 2 uses
  store i16 %i.js, ptr %i.jt, align 2, !tbaa !55
  %i.ju = getelementptr inbounds nuw i8, ptr %i.iu, i64 10
  %i.jv = load i16, ptr %i.ju, align 2, !tbaa !55
  %spec.store.select84.2 = call i16 @llvm.umax.i16(i16 %i.js, i16 %i.jv)
  store i16 %spec.store.select84.2, ptr %i.jt, align 2, !tbaa !55
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_Z8btSetMinIfEvRT_RKS0_.exit.i
  %15 = phi i32 [ %.1.a, %_Z8btSetMinIfEvRT_RKS0_.exit.i ], [ %5, %.loopexit.loopexit ]
  %16 = phi i32 [ %9, %_Z8btSetMinIfEvRT_RKS0_.exit.i ], [ %6, %.loopexit.loopexit ]
  %17 = phi i32 [ %10, %_Z8btSetMinIfEvRT_RKS0_.exit.i ], [ %7, %.loopexit.loopexit ]
  %18 = phi ptr [ %11, %_Z8btSetMinIfEvRT_RKS0_.exit.i ], [ %8, %.loopexit.loopexit ]
  %.2 = phi i32 [ %.1, %_Z8btSetMinIfEvRT_RKS0_.exit.i ], [ %.078148, %.loopexit.loopexit ] ; 3 uses
  %.not.not = icmp sgt i64 %indvars.iv.next, %i.q
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !75

._crit_edge:                                      ; preds = %.loopexit
  %i.jw = icmp sgt i32 %.2, -1
  br i1 %i.jw, label %bb.j, label %._crit_edge.thread

bb.j:                                             ; preds = %._crit_edge
  %i.jx = load ptr, ptr %1, align 8, !tbaa !12
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 48
  %i.jz = load ptr, ptr %i.jy, align 8
  call void %i.jz(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %.2)
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
end_hunk_0
