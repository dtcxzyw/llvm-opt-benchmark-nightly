inline.NumInlined: 198
inline.NumDeleted: 78
begin_hunk_0_@_ZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_:bb.a
  store i32 %i.en, ptr %i.do, align 4, !tbaa !52
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !33 ; 7 uses
  %i.eq = load i16, ptr %i.ep, align 4, !tbaa !57
  store i16 %i.eq, ptr %i.em, align 4, !tbaa !57
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 2
  %i.es = load i16, ptr %i.er, align 2, !tbaa !57
  %i.et = getelementptr inbounds nuw i8, ptr %i.em, i64 2
  store i16 %i.es, ptr %i.et, align 2, !tbaa !57
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.ev = load i16, ptr %i.eu, align 4, !tbaa !57
  %i.ew = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  store i16 %i.ev, ptr %i.ew, align 4, !tbaa !57
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ep, i64 6
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !57
  %i.ez = getelementptr inbounds nuw i8, ptr %i.em, i64 6
  store i16 %i.ey, ptr %i.ez, align 2, !tbaa !57
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.fb = load i16, ptr %i.fa, align 4, !tbaa !57
  %i.fc = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store i16 %i.fb, ptr %i.fc, align 4, !tbaa !57
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ep, i64 10
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !57
  %i.ff = getelementptr inbounds nuw i8, ptr %i.em, i64 10
  store i16 %i.fe, ptr %i.ff, align 2, !tbaa !57
  %i.fg = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  store i32 0, ptr %i.fg, align 4, !tbaa !59
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ep, i64 12
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !61 ; 2 uses
  %i.fj = icmp sgt i32 %i.fi, -1
  %i.fk = sub nsw i32 0, %i.fi
  %spec.select = select i1 %i.fj, i32 1, i32 %i.fk
  %i.fl = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store i32 %spec.select, ptr %i.fl, align 4, !tbaa !63
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.x, %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE6expandERKS0_.exit
  %i.fm = phi i32 [ %i.dp, %bb.x ], [ %i.en, %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE6expandERKS0_.exit ]
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i32 %i.fm, ptr %i.fn, align 8, !tbaa !64
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !33 ; 2 uses
  %.not.i.i49 = icmp ne ptr %i.fp, null
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.fr = load i8, ptr %i.fq, align 8, !range !36
  %i.fs = trunc nuw i8 %i.fr to i1
  %or.cond.i = select i1 %.not.i.i49, i1 %i.fs, i1 false
  br i1 %or.cond.i, label %bb.ab, label %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE5clearEv.exit

bb.ab:                                            ; preds = %._crit_edge
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.fp)
  br label %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE5clearEv.exit

_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE5clearEv.exit: ; preds = %._crit_edge, %bb.ab
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i8 1, ptr %i.fq, align 8, !tbaa !37
  store ptr null, ptr %i.fo, align 8, !tbaa !33
  store i32 0, ptr %i.ft, align 4, !tbaa !31
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %i.fu, align 8, !tbaa !32
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !46 ; 2 uses
  %.not.i.i50 = icmp ne ptr %i.fw, null
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.fy = load i8, ptr %i.fx, align 8, !range !36
  %i.fz = trunc nuw i8 %i.fy to i1
  %or.cond.i51 = select i1 %.not.i.i50, i1 %i.fz, i1 false
  br i1 %or.cond.i51, label %bb.ac, label %_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeE5clearEv.exit

bb.ac:                                            ; preds = %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE5clearEv.exit
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.fw)
  br label %_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeE5clearEv.exit

_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeE5clearEv.exit: ; preds = %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE5clearEv.exit, %bb.ac
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.fx, align 8, !tbaa !48
  store ptr null, ptr %i.fv, align 8, !tbaa !46
  store i32 0, ptr %i.ga, align 4, !tbaa !44
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.gb, align 8, !tbaa !45
  ret void

bb.ad:                                            ; preds = %bb.w, %bb.l
  %.pn18.pn = phi { ptr, i32 } [ %.pn18, %bb.l ], [ %.pn, %bb.w ]
  resume { ptr, i32 } %.pn18.pn

bb.ae:                                            ; preds = %bb.v, %bb.k
  %i.gc = landingpad { ptr, i32 }
          catch ptr null
  %i.gd = extractvalue { ptr, i32 } %i.gc, 0
  call void @__clang_call_terminate(ptr %i.gd) #11
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare void @_ZN14btQuantizedBvh21setQuantizationValuesERK9btVector3S2_f(ptr noundef nonnull align 8 dereferenceable(244), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16), float noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare void @_ZN31btInternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #1

declare void @_ZN14btQuantizedBvh9buildTreeEii(ptr noundef nonnull align 8 dereferenceable(244), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: uwtable
define dso_local void @_ZN14btOptimizedBvh5refitEP23btStridingMeshInterfaceRK9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(244) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8, !tbaa !10, !range !36, !noundef !51
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN14btQuantizedBvh21setQuantizationValuesERK9btVector3S2_f(ptr noundef nonnull align 8 dereferenceable(244) %0, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, float noundef 1.000000e+00)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.e = load i32, ptr %i.d, align 4, !tbaa !50
  tail call void @_ZN14btOptimizedBvh14updateBvhNodesEP23btStridingMeshInterfaceiii(ptr noundef nonnull align 8 dereferenceable(244) %0, ptr noundef %1, i32 noundef 0, i32 noundef %i.e, i32 poison)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.g = load i32, ptr %i.f, align 4, !tbaa !52   ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !33
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %indvars.iv ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !59
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [16 x i8], ptr %i.l, i64 %i.p ; 6 uses
  %i.r = load i16, ptr %i.q, align 4, !tbaa !57
  store i16 %i.r, ptr %i.m, align 4, !tbaa !57
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.t = load i16, ptr %i.s, align 2, !tbaa !57
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  store i16 %i.t, ptr %i.u, align 2, !tbaa !57
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.w = load i16, ptr %i.v, align 4, !tbaa !57
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i16 %i.w, ptr %i.x, align 4, !tbaa !57
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  %i.z = load i16, ptr %i.y, align 2, !tbaa !57
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 6
  store i16 %i.z, ptr %i.aa, align 2, !tbaa !57
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ac = load i16, ptr %i.ab, align 4, !tbaa !57
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i16 %i.ac, ptr %i.ad, align 4, !tbaa !57
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 10
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !57
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 10
  store i16 %i.af, ptr %i.ag, align 2, !tbaa !57
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: uwtable
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 0, ptr %i.b, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 2, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store ptr null, ptr %i.e, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store i32 0, ptr %i.f, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store i32 0, ptr %i.g, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  store i32 2, ptr %i.h, align 4, !tbaa !67
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.077143 = add nsw i32 %3, -1                   ; 2 uses
  %.not144 = icmp slt i32 %.077143, %2
  br i1 %.not144, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.p = sext i32 %.077143 to i64
  %i.q = sext i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ %i.p, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %.076145 = phi i32 [ -1, %.lr.ph ], [ %.2, %.loopexit ] ; 5 uses
  %.077.in145 = phi i32 [ %3, %.lr.ph ], [ %8, %.loopexit ] ; 2 uses
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !33   ; 3 uses
  %i.s = getelementptr inbounds [16 x i8], ptr %i.r, i64 %indvars.iv ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !61   ; 3 uses
  %i.v = icmp sgt i32 %i.u, -1
  br i1 %i.v, label %bb.c, label %.loopexit.loopexit

bb.c:                                             ; preds = %bb.b
  %i.w = lshr i32 %i.u, 21                        ; 3 uses
  %i.x = and i32 %i.u, 2097151
  %.not.a = icmp eq i32 %i.w, %.076145
  br i1 %.not.a, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = icmp sgt i32 %.076145, -1
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %1, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %.076145)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ac = load ptr, ptr %1, align 8, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, i32 noundef %i.w)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.1 = phi i32 [ %i.w, %bb.f ], [ %.076145, %bb.c ]
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !65
  %i.ag = load i32, ptr %i.f, align 4, !tbaa !4
  %i.ah = mul nsw i32 %i.ag, %i.x
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %i.af, i64 %i.ai ; 12 uses
  %i.ak = load i32, ptr %i.h, align 4, !tbaa !67
  %i.al = icmp eq i32 %i.ak, 3                    ; 6 uses
  %i.am = load i32, ptr %i.c, align 4, !tbaa !67
  %i.an = icmp eq i32 %i.am, 0
  %i.ao = load ptr, ptr %i.a, align 8             ; 6 uses
  %i.ap = load i32, ptr %i.d, align 4             ; 6 uses
  %i.aq = load float, ptr %i.i, align 4, !tbaa !42 ; 2 uses
  br i1 %i.an, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.g
  %i.ar = load <2 x float>, ptr %i.k, align 4, !tbaa !42
  br i1 %i.al, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.split.us
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4
  br label %bb.j

bb.i:                                             ; preds = %.split.us
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.av = load i16, ptr %i.au, align 2, !tbaa !57
  %i.aw = zext i16 %i.av to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ax = phi i32 [ %i.aw, %bb.i ], [ %i.at, %bb.h ]
  %i.ay = mul nsw i32 %i.ap, %i.ax
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds i8, ptr %i.ao, i64 %i.az
  %i.bb = load <3 x float>, ptr %i.ba, align 4, !tbaa !42
  %i.bc = shufflevector <3 x float> %i.bb, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.bd = shufflevector <2 x float> %i.ar, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.be = insertelement <4 x float> poison, float %i.aq, i64 0
  %i.bf = shufflevector <4 x float> %i.be, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.bg = shufflevector <4 x float> %i.bf, <4 x float> %i.bd, <4 x i32> <i32 0, i32 5, i32 6, i32 3> ; 3 uses
  %i.bh = fmul <4 x float> %i.bc, %i.bg
  br i1 %i.al, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !4
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !57
  %i.bm = zext i16 %i.bl to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bn = phi i32 [ %i.bm, %bb.l ], [ %i.bj, %bb.k ]
  %i.bo = mul nsw i32 %i.ap, %i.bn
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds i8, ptr %i.ao, i64 %i.bp
  %i.br = load <3 x float>, ptr %i.bq, align 4, !tbaa !42
  %i.bs = shufflevector <3 x float> %i.br, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.bt = fmul <4 x float> %i.bs, %i.bg
  br i1 %i.al, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = load i32, ptr %i.aj, align 4, !tbaa !4
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit

bb.o:                                             ; preds = %bb.m
  %i.bv = load i16, ptr %i.aj, align 2, !tbaa !57
  %i.bw = zext i16 %i.bv to i32
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit

_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit:          ; preds = %bb.o, %bb.n
  %i.bx = phi i32 [ %i.bw, %bb.o ], [ %i.bu, %bb.n ]
  %i.by = mul nsw i32 %i.ap, %i.bx
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds i8, ptr %i.ao, i64 %i.bz
  %i.cb = load <3 x float>, ptr %i.ca, align 4, !tbaa !42
  %i.cc = shufflevector <3 x float> %i.cb, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.cd = fmul <4 x float> %i.cc, %i.bg
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i

.split:                                           ; preds = %bb.g
  %i.ce = load <2 x float>, ptr %i.k, align 4, !tbaa !42
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.cg = insertelement <4 x float> poison, float %i.aq, i64 0
  %i.ch = shufflevector <4 x float> %i.cg, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.ci = shufflevector <4 x float> %i.ch, <4 x float> %i.cf, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.cj = fpext <4 x float> %i.ci to <4 x double> ; 3 uses
  br i1 %i.al, label %bb.p, label %bb.q

_Z8btSetMinIfEvRT_RKS0_.exit.i:                   ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit147, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit
  %i.ck = phi <4 x float> [ %i.bh, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit ], [ %i.ey, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit147 ] ; 4 uses
  %i.cl = phi <4 x float> [ %i.bt, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit ], [ %i.fl, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit147 ] ; 4 uses
  %i.cm = phi <4 x float> [ %i.cd, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit ], [ %i.fw, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit147 ] ; 4 uses
  %i.cn = fcmp olt <4 x float> %i.cm, <float f0x5D5E0B6B, float f0x5D5E0B6B, float f0x5D5E0B6B, float f0xDD5E0B6B>
  %i.co = fcmp ogt <4 x float> %i.cm, <float f0x5D5E0B6B, float f0x5D5E0B6B, float f0x5D5E0B6B, float f0xDD5E0B6B>
  %i.cp = shufflevector <4 x i1> %i.cn, <4 x i1> %i.co, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.cq = select <4 x i1> %i.cp, <4 x float> %i.cm, <4 x float> <float f0x5D5E0B6B, float f0x5D5E0B6B, float f0x5D5E0B6B, float f0xDD5E0B6B> ; 3 uses
  %i.cr = shufflevector <4 x float> %i.cl, <4 x float> %i.cq, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.cs = shufflevector <4 x float> %i.cq, <4 x float> %i.cl, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ct = fcmp olt <4 x float> %i.cr, %i.cs
  %i.cu = select <4 x i1> %i.ct, <4 x float> %i.cl, <4 x float> %i.cq ; 3 uses
  %i.cv = shufflevector <4 x float> %i.ck, <4 x float> %i.cu, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.cw = shufflevector <4 x float> %i.cu, <4 x float> %i.ck, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.cx = fcmp olt <4 x float> %i.cv, %i.cw
  %i.cy = select <4 x i1> %i.cx, <4 x float> %i.ck, <4 x float> %i.cu
  %i.cz = load <2 x float>, ptr %i.l, align 8, !tbaa !42 ; 2 uses
  %i.da = load <2 x float>, ptr %i.n, align 8, !tbaa !42 ; 2 uses
  %i.db = shufflevector <2 x float> %i.cz, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dc = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x float> %i.db, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.dd = fsub <4 x float> %i.cy, %i.dc           ; 2 uses
  %i.de = shufflevector <2 x float> %i.cz, <2 x float> %i.da, <4 x i32> <i32 0, i32 1, i32 poison, i32 2>
  %i.df = shufflevector <2 x float> %i.da, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dg = insertelement <4 x float> %i.df, float 1.000000e+00, i64 3
  %i.dh = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.di = shufflevector <4 x float> %i.cm, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.dj = fcmp ogt <2 x float> %i.di, splat (float f0xDD5E0B6B)
  %i.dk = select <2 x i1> %i.dj, <2 x float> %i.di, <2 x float> splat (float f0xDD5E0B6B) ; 2 uses
  %i.dl = shufflevector <4 x float> %i.cl, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.dm = fcmp olt <2 x float> %i.dk, %i.dl
  %i.dn = select <2 x i1> %i.dm, <2 x float> %i.dl, <2 x float> %i.dk ; 2 uses
  %i.do = shufflevector <4 x float> %i.ck, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.dp = fcmp olt <2 x float> %i.dn, %i.do
  %i.dq = select <2 x i1> %i.dp, <2 x float> %i.do, <2 x float> %i.dn
  %i.dr = load <2 x float>, ptr %i.m, align 4, !tbaa !42 ; 2 uses
  %i.ds = load <2 x float>, ptr %i.o, align 4, !tbaa !42 ; 2 uses
  %i.dt = fsub <2 x float> %i.dq, %i.dr
  %i.du = shufflevector <2 x float> %i.dr, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dv = shufflevector <4 x float> %i.de, <4 x float> %i.du, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %i.dw = fsub <4 x float> %i.dd, %i.dv
  %i.dx = fmul <4 x float> %i.dd, %i.dv
  %i.dy = shufflevector <4 x float> %i.dw, <4 x float> %i.dx, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.dz = fmul <2 x float> %i.dt, %i.ds
  %i.ea = shufflevector <2 x float> %i.ds, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.eb = shufflevector <4 x float> %i.dg, <4 x float> %i.ea, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %i.ec = fmul <4 x float> %i.dy, %i.eb
  %i.ed = fadd <4 x float> %i.dy, %i.eb
  %i.ee = shufflevector <4 x float> %i.ec, <4 x float> %i.ed, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.ef = fptoui <4 x float> %i.ee to <4 x i16>   ; 2 uses
  %i.eg = and <4 x i16> %i.ef, <i16 -2, i16 -2, i16 -2, i16 poison>
  %i.eh = or <4 x i16> %i.ef, <i16 poison, i16 poison, i16 poison, i16 1>
  %i.ei = shufflevector <4 x i16> %i.eg, <4 x i16> %i.eh, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.ej = fadd <2 x float> %i.dz, splat (float 1.000000e+00)
  %i.ek = fptoui <2 x float> %i.ej to <2 x i16>
  %i.el = or <2 x i16> %i.ek, splat (i16 1)
  store <4 x i16> %i.ei, ptr %i.s, align 4, !tbaa !57
  store <2 x i16> %i.el, ptr %i.dh, align 4, !tbaa !57
  br label %.loopexit

bb.p:                                             ; preds = %.split
  %i.em = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.en = load i16, ptr %i.em, align 2, !tbaa !57
  %i.eo = zext i16 %i.en to i32
  br label %bb.r

bb.q:                                             ; preds = %.split
  %i.ep = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.er = phi i32 [ %i.eo, %bb.p ], [ %i.eq, %bb.q ]
  %i.es = mul nsw i32 %i.ap, %i.er
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds i8, ptr %i.ao, i64 %i.et
  %i.ev = load <3 x double>, ptr %i.eu, align 8, !tbaa !69
  %i.ew = shufflevector <3 x double> %i.ev, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.ex = fmul <4 x double> %i.ew, %i.cj
  %i.ey = fptrunc <4 x double> %i.ex to <4 x float>
  br i1 %i.al, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ez = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !4
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.fb = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !57
  %i.fd = zext i16 %i.fc to i32
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.fe = phi i32 [ %i.fd, %bb.t ], [ %i.fa, %bb.s ]
  %i.ff = mul nsw i32 %i.ap, %i.fe
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds i8, ptr %i.ao, i64 %i.fg
  %i.fi = load <3 x double>, ptr %i.fh, align 8, !tbaa !69
  %i.fj = shufflevector <3 x double> %i.fi, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.fk = fmul <4 x double> %i.fj, %i.cj
  %i.fl = fptrunc <4 x double> %i.fk to <4 x float>
  br i1 %i.al, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fm = load i32, ptr %i.aj, align 4, !tbaa !4
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit147

bb.w:                                             ; preds = %bb.u
  %i.fn = load i16, ptr %i.aj, align 2, !tbaa !57
  %i.fo = zext i16 %i.fn to i32
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit147

_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit147:       ; preds = %bb.w, %bb.v
  %i.fp = phi i32 [ %i.fo, %bb.w ], [ %i.fm, %bb.v ]
  %i.fq = mul nsw i32 %i.ap, %i.fp
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds i8, ptr %i.ao, i64 %i.fr
  %i.ft = load <3 x double>, ptr %i.fs, align 8, !tbaa !69
  %i.fu = shufflevector <3 x double> %i.ft, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.fv = fmul <4 x double> %i.fu, %i.cj
  %i.fw = fptrunc <4 x double> %i.fv to <4 x float>
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i

.loopexit.loopexit:                               ; preds = %bb.b
  %5 = sext i32 %.077.in145 to i64
  %i.fx = getelementptr [16 x i8], ptr %i.r, i64 %5 ; 8 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 12
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !61 ; 2 uses
  %i.ga = getelementptr i8, ptr %i.fx, i64 16
  %6 = sub nsw i32 %.077.in145, %i.fz
  %7 = sext i32 %6 to i64
  %i.gb = getelementptr inbounds [16 x i8], ptr %i.r, i64 %7
  %i.gc = icmp slt i32 %i.fz, 0
  %i.gd = select i1 %i.gc, ptr %i.gb, ptr %i.ga   ; 6 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fx, i64 6
  %i.gf = getelementptr inbounds nuw i8, ptr %i.s, i64 6 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 6
  %i.gh = load i16, ptr %i.fx, align 4, !tbaa !57 ; 2 uses
  store i16 %i.gh, ptr %i.s, align 4, !tbaa !57
  %i.gi = load i16, ptr %i.gd, align 2, !tbaa !57
  %spec.store.select = call i16 @llvm.umin.i16(i16 %i.gh, i16 %i.gi)
  store i16 %spec.store.select, ptr %i.s, align 4
  %i.gj = load i16, ptr %i.ge, align 2, !tbaa !57 ; 2 uses
  store i16 %i.gj, ptr %i.gf, align 2, !tbaa !57
  %i.gk = load i16, ptr %i.gg, align 2, !tbaa !57
  %spec.store.select81 = call i16 @llvm.umax.i16(i16 %i.gj, i16 %i.gk)
  store i16 %spec.store.select81, ptr %i.gf, align 2
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fx, i64 2
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !57 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.s, i64 2 ; 2 uses
  store i16 %i.gm, ptr %i.gn, align 2, !tbaa !57
  %i.go = getelementptr inbounds nuw i8, ptr %i.gd, i64 2
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !57
  %spec.store.select.1 = call i16 @llvm.umin.i16(i16 %i.gm, i16 %i.gp)
  store i16 %spec.store.select.1, ptr %i.gn, align 2
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.gr = load i16, ptr %i.gq, align 4, !tbaa !57 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store i16 %i.gr, ptr %i.gs, align 4, !tbaa !57
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gu = load i16, ptr %i.gt, align 2, !tbaa !57
  %spec.store.select81.1 = call i16 @llvm.umax.i16(i16 %i.gr, i16 %i.gu)
  store i16 %spec.store.select81.1, ptr %i.gs, align 4
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fx, i64 4
  %i.gw = load i16, ptr %i.gv, align 4, !tbaa !57 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  store i16 %i.gw, ptr %i.gx, align 4, !tbaa !57
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !57
  %spec.store.select.2 = call i16 @llvm.umin.i16(i16 %i.gw, i16 %i.gz)
  store i16 %spec.store.select.2, ptr %i.gx, align 4
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fx, i64 10
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !57 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.s, i64 10 ; 2 uses
  store i16 %i.hb, ptr %i.hc, align 2, !tbaa !57
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gd, i64 10
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !57
  %spec.store.select81.2 = call i16 @llvm.umax.i16(i16 %i.hb, i16 %i.he)
  store i16 %spec.store.select81.2, ptr %i.hc, align 2
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_Z8btSetMinIfEvRT_RKS0_.exit.i
  %.2 = phi i32 [ %.1, %_Z8btSetMinIfEvRT_RKS0_.exit.i ], [ %.076145, %.loopexit.loopexit ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %.not = icmp slt i64 %indvars.iv.next, %i.q
  %8 = trunc nsw i64 %indvars.iv to i32
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %.loopexit
  %i.hf = icmp sgt i32 %.2, -1
  br i1 %i.hf, label %bb.x, label %._crit_edge.thread

bb.x:                                             ; preds = %._crit_edge
  %i.hg = load ptr, ptr %1, align 8, !tbaa !8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 48
  %i.hi = load ptr, ptr %i.hh, align 8
  call void %i.hi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %.2)
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.x, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN14btOptimizedBvh12refitPartialEP23btStridingMeshInterfaceRK9btVector3S4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(244) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load float, ptr %2, align 4, !tbaa !42
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !42
  %i.g = load <3 x float>, ptr %i.a, align 8, !tbaa !42 ; 2 uses
  %i.h = shufflevector <3 x float> %i.g, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.i = load <3 x float>, ptr %i.d, align 8, !tbaa !42 ; 2 uses
  %i.j = shufflevector <3 x float> %i.i, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.k = load <4 x float>, ptr %3, align 4
  %i.l = insertelement <4 x float> poison, float %i.f, i64 2
  %i.m = insertelement <4 x float> %i.l, float %i.b, i64 3
  %i.n = shufflevector <4 x float> %i.k, <4 x float> %i.m, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.o = fsub <4 x float> %i.n, %i.h
  %i.p = fmul <4 x float> %i.o, %i.j
  %i.q = fadd <4 x float> %i.p, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float -0.000000e+00>
  %i.r = fptoui <4 x float> %i.q to <4 x i16>     ; 2 uses
  %i.s = load <2 x float>, ptr %i.c, align 4, !tbaa !42
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
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !54
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.ai, i64 %indvars.iv ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.al = load <2 x i16>, ptr %i.ak, align 2, !tbaa !57
  %i.am = icmp ugt <2 x i16> %i.y, %i.al          ; 2 uses
  %i.an = load <4 x i16>, ptr %i.aj, align 2, !tbaa !57 ; 2 uses
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
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !59 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !63
  %i.bd = add nsw i32 %i.bc, %i.ba
  tail call void @_ZN14btOptimizedBvh14updateBvhNodesEP23btStridingMeshInterfaceiii(ptr noundef nonnull align 8 dereferenceable(244) %0, ptr noundef %1, i32 noundef %i.ba, i32 noundef %i.bd, i32 poison)
  %i.be = load i32, ptr %i.az, align 4, !tbaa !59
  %i.bf = load ptr, ptr %i.ag, align 8, !tbaa !33
  %i.bg = sext i32 %i.be to i64
  %i.bh = getelementptr inbounds [16 x i8], ptr %i.bf, i64 %i.bg ; 6 uses
  %i.bi = load i16, ptr %i.bh, align 4, !tbaa !57
  store i16 %i.bi, ptr %i.aj, align 4, !tbaa !57
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !57
  store i16 %i.bk, ptr %i.av, align 2, !tbaa !57
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bm = load i16, ptr %i.bl, align 4, !tbaa !57
  store i16 %i.bm, ptr %i.aw, align 4, !tbaa !57
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 6
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !57
  store i16 %i.bo, ptr %i.ay, align 2, !tbaa !57
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bq = load i16, ptr %i.bp, align 4, !tbaa !57
  store i16 %i.bq, ptr %i.ak, align 4, !tbaa !57
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 10
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !57
  store i16 %i.bs, ptr %i.ax, align 2, !tbaa !57
  %.pre = load i32, ptr %i.ac, align 4, !tbaa !52
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bt = phi i32 [ %.pre, %bb.c ], [ %i.ah, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bu = sext i32 %i.bt to i64
  %i.bv = icmp slt i64 %indvars.iv.next, %i.bu
  br i1 %i.bv, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: uwtable
define dso_local noundef ptr @_ZN14btOptimizedBvh18deSerializeInPlaceEPvjb(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN14btQuantizedBvh18deSerializeInPlaceEPvjb(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2)
  ret ptr %i.a
}

declare noundef ptr @_ZN14btQuantizedBvh18deSerializeInPlaceEPvjb(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN14btOptimizedBvh9serializeEPvjb(ptr noundef nonnull align 8 dereferenceable(244) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN14btQuantizedBvh9serializeEPvjb(ptr noundef nonnull align 8 dereferenceable(244) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3)
  ret i1 %i.a
}

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint uwtable
define internal void @_ZZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_EN29QuantizedNodeTriangleCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN31btInternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  resume { ptr, i32 } %i.a
}

; Function Attrs: uwtable
define internal void @_ZZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_EN29QuantizedNodeTriangleCallback28internalProcessTriangleIndexEPS2_ii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #6 align 2 {
_Z8btSetMinIfEvRT_RKS0_.exit.i:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.i = load <3 x float>, ptr %1, align 4, !tbaa !42
  %i.j = load <3 x float>, ptr %i.a, align 4, !tbaa !42
  %i.k = load <3 x float>, ptr %i.b, align 4, !tbaa !42
  %i.l = load <2 x float>, ptr %i.e, align 4, !tbaa !42 ; 2 uses
  %i.m = load <2 x float>, ptr %i.g, align 4, !tbaa !42 ; 2 uses
  %i.n = load <2 x float>, ptr %i.f, align 4, !tbaa !42 ; 2 uses
  %i.o = load <2 x float>, ptr %i.h, align 4, !tbaa !42 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !71, !nonnull !51, !align !72 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 5 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !31   ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !32
  %i.v = icmp eq i32 %i.s, %i.u
  br i1 %i.v, label %bb.a, label %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE9push_backERKS0_.exit

bb.a:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i
  %.not.i.i = icmp eq i32 %i.s, 0
  %i.w = shl nsw i32 %i.s, 1
  %i.x = select i1 %.not.i.i, i32 1, i32 %i.w     ; 4 uses
end_hunk_0
