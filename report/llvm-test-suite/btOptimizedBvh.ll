inline.NumInlined: 198
inline.NumDeleted: 78
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_:bb.a
  %.not.i.i48 = icmp ne ptr %i.fz, null
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.gb = load i8, ptr %i.ga, align 8, !range !37
  %i.gc = trunc nuw i8 %i.gb to i1
  %or.cond.i49 = select i1 %.not.i.i48, i1 %i.gc, i1 false
  br i1 %or.cond.i49, label %bb.af, label %_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeE5clearEv.exit

bb.af:                                            ; preds = %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE5clearEv.exit
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.fz)
  br label %_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeE5clearEv.exit

_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeE5clearEv.exit: ; preds = %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE5clearEv.exit, %bb.af
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.ga, align 8, !tbaa !49
  store ptr null, ptr %i.fy, align 8, !tbaa !47
  store i32 0, ptr %i.gd, align 4, !tbaa !45
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.ge, align 8, !tbaa !46
  ret void

bb.ag:                                            ; preds = %bb.y, %bb.m
  %.pn18.pn = phi { ptr, i32 } [ %.pn18, %bb.m ], [ %.pn, %bb.y ]
  resume { ptr, i32 } %.pn18.pn

bb.ah:                                            ; preds = %bb.x, %bb.l
  %i.gf = landingpad { ptr, i32 }
          catch ptr null
  %i.gg = extractvalue { ptr, i32 } %i.gf, 0
  call void @__clang_call_terminate(ptr %i.gg) #11
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
  %i.b = load i8, ptr %i.a, align 8, !tbaa !10, !range !37, !noundef !38
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
  %.not.not143 = icmp sgt i32 %3, %2
  br i1 %.not.not143, label %.lr.ph, label %._crit_edge.thread

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
  %indvars.iv = phi i64 [ %i.p, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %.076145 = phi i32 [ -1, %.lr.ph ], [ %.2, %.loopexit ] ; 5 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !33   ; 3 uses
  %i.s = getelementptr inbounds [16 x i8], ptr %i.r, i64 %indvars.iv.next ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !61   ; 3 uses
  %i.v = icmp sgt i32 %i.u, -1
  br i1 %i.v, label %bb.c, label %.loopexit.loopexit

bb.c:                                             ; preds = %bb.b
  %i.w = lshr i32 %i.u, 21                        ; 3 uses
  %i.x = and i32 %i.u, 2097151
  %.not = icmp eq i32 %i.w, %.076145
  br i1 %.not, label %bb.g, label %bb.d

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
  %i.aq = load float, ptr %i.i, align 4, !tbaa !43 ; 2 uses
  br i1 %i.an, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.g
  %i.ar = load <2 x float>, ptr %i.k, align 4, !tbaa !43
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
  %5 = load <3 x float>, ptr %i.ba, align 4, !tbaa !43
  %6 = shufflevector <3 x float> %5, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %7 = shufflevector <2 x float> %i.ar, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %8 = insertelement <4 x float> poison, float %i.aq, i64 0
  %9 = shufflevector <4 x float> %8, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %10 = shufflevector <4 x float> %9, <4 x float> %7, <4 x i32> <i32 0, i32 5, i32 6, i32 3> ; 3 uses
  %11 = fmul <4 x float> %6, %10
  br i1 %i.al, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !57
  %i.bf = zext i16 %i.be to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bg = phi i32 [ %i.bf, %bb.l ], [ %i.bc, %bb.k ]
  %i.bh = mul nsw i32 %i.ap, %i.bg
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds i8, ptr %i.ao, i64 %i.bi
  %12 = load <3 x float>, ptr %i.bj, align 4, !tbaa !43
  %13 = shufflevector <3 x float> %12, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %14 = fmul <4 x float> %13, %10
  br i1 %i.al, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = load i32, ptr %i.aj, align 4, !tbaa !4
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit

bb.o:                                             ; preds = %bb.m
  %i.bl = load i16, ptr %i.aj, align 2, !tbaa !57
  %i.bm = zext i16 %i.bl to i32
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit

_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit:          ; preds = %bb.o, %bb.n
  %i.bn = phi i32 [ %i.bm, %bb.o ], [ %i.bk, %bb.n ]
  %i.bo = mul nsw i32 %i.ap, %i.bn
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds i8, ptr %i.ao, i64 %i.bp
  %15 = load <3 x float>, ptr %i.bq, align 4, !tbaa !43
  %16 = shufflevector <3 x float> %15, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %17 = fmul <4 x float> %16, %10
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i

.split:                                           ; preds = %bb.g
  %18 = load <2 x float>, ptr %i.k, align 4, !tbaa !43
  %19 = shufflevector <2 x float> %18, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %20 = insertelement <4 x float> poison, float %i.aq, i64 0
  %21 = shufflevector <4 x float> %20, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %22 = shufflevector <4 x float> %21, <4 x float> %19, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %23 = fpext <4 x float> %22 to <4 x double>     ; 3 uses
  br i1 %i.al, label %bb.p, label %bb.q

_Z8btSetMinIfEvRT_RKS0_.exit.i:                   ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit147, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit
  %24 = phi <4 x float> [ %11, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit ], [ %58, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit147 ] ; 4 uses
  %25 = phi <4 x float> [ %14, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit ], [ %62, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit147 ] ; 4 uses
  %26 = phi <4 x float> [ %17, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit ], [ %66, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit147 ] ; 4 uses
  %27 = fcmp olt <4 x float> %26, <float f0x5D5E0B6B, float f0x5D5E0B6B, float f0x5D5E0B6B, float f0xDD5E0B6B>
  %28 = fcmp ogt <4 x float> %26, <float f0x5D5E0B6B, float f0x5D5E0B6B, float f0x5D5E0B6B, float f0xDD5E0B6B>
  %29 = shufflevector <4 x i1> %27, <4 x i1> %28, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %30 = select <4 x i1> %29, <4 x float> %26, <4 x float> <float f0x5D5E0B6B, float f0x5D5E0B6B, float f0x5D5E0B6B, float f0xDD5E0B6B> ; 3 uses
  %31 = shufflevector <4 x float> %25, <4 x float> %30, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %32 = shufflevector <4 x float> %30, <4 x float> %25, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %33 = fcmp olt <4 x float> %31, %32
  %34 = select <4 x i1> %33, <4 x float> %25, <4 x float> %30 ; 3 uses
  %35 = shufflevector <4 x float> %24, <4 x float> %34, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %36 = shufflevector <4 x float> %34, <4 x float> %24, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %37 = fcmp olt <4 x float> %35, %36
  %38 = select <4 x i1> %37, <4 x float> %24, <4 x float> %34
  %i.br = load <2 x float>, ptr %i.l, align 8, !tbaa !43 ; 2 uses
  %i.bs = load <2 x float>, ptr %i.n, align 8, !tbaa !43 ; 2 uses
  %39 = shufflevector <2 x float> %i.br, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %40 = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x float> %39, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %41 = fsub <4 x float> %38, %40                 ; 2 uses
  %42 = shufflevector <2 x float> %i.br, <2 x float> %i.bs, <4 x i32> <i32 0, i32 1, i32 poison, i32 2>
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bu = insertelement <4 x float> %i.bt, float 1.000000e+00, i64 3
  %43 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %44 = shufflevector <4 x float> %26, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %45 = fcmp ogt <2 x float> %44, splat (float f0xDD5E0B6B)
  %46 = select <2 x i1> %45, <2 x float> %44, <2 x float> splat (float f0xDD5E0B6B) ; 2 uses
  %47 = shufflevector <4 x float> %25, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %48 = fcmp olt <2 x float> %46, %47
  %i.bv = select <2 x i1> %48, <2 x float> %47, <2 x float> %46 ; 2 uses
  %49 = shufflevector <4 x float> %24, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bw = fcmp olt <2 x float> %i.bv, %49
  %i.bx = select <2 x i1> %i.bw, <2 x float> %49, <2 x float> %i.bv
  %i.by = load <2 x float>, ptr %i.m, align 4, !tbaa !43 ; 2 uses
  %i.bz = load <2 x float>, ptr %i.o, align 4, !tbaa !43 ; 2 uses
  %i.ca = fsub <2 x float> %i.bx, %i.by
  %i.cb = shufflevector <2 x float> %i.by, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cc = shufflevector <4 x float> %42, <4 x float> %i.cb, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %i.cd = fsub <4 x float> %41, %i.cc
  %50 = fmul <4 x float> %41, %i.cc
  %51 = shufflevector <4 x float> %i.cd, <4 x float> %50, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %52 = fmul <2 x float> %i.ca, %i.bz
  %i.ce = shufflevector <2 x float> %i.bz, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cf = shufflevector <4 x float> %i.bu, <4 x float> %i.ce, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %i.cg = fmul <4 x float> %51, %i.cf
  %53 = fadd <4 x float> %51, %i.cf
  %54 = shufflevector <4 x float> %i.cg, <4 x float> %53, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.ch = fptoui <4 x float> %54 to <4 x i16>     ; 2 uses
  %i.ci = and <4 x i16> %i.ch, <i16 -2, i16 -2, i16 -2, i16 poison>
  %i.cj = or <4 x i16> %i.ch, <i16 poison, i16 poison, i16 poison, i16 1>
  %i.ck = shufflevector <4 x i16> %i.ci, <4 x i16> %i.cj, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.cl = fadd <2 x float> %52, splat (float 1.000000e+00)
  %i.cm = fptoui <2 x float> %i.cl to <2 x i16>
  %i.cn = or <2 x i16> %i.cm, splat (i16 1)
  store <4 x i16> %i.ck, ptr %i.s, align 4, !tbaa !57
  store <2 x i16> %i.cn, ptr %43, align 4, !tbaa !57
  br label %.loopexit

bb.p:                                             ; preds = %.split
  %i.co = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !57
  %i.cq = zext i16 %i.cp to i32
  br label %bb.r

bb.q:                                             ; preds = %.split
  %i.cr = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ct = phi i32 [ %i.cq, %bb.p ], [ %i.cs, %bb.q ]
  %i.cu = mul nsw i32 %i.ap, %i.ct
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds i8, ptr %i.ao, i64 %i.cv
  %55 = load <3 x double>, ptr %i.cw, align 8, !tbaa !69
  %56 = shufflevector <3 x double> %55, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %57 = fmul <4 x double> %56, %23
  %58 = fptrunc <4 x double> %57 to <4 x float>
  br i1 %i.al, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cx = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !4
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.cz = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !57
  %i.db = zext i16 %i.da to i32
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dc = phi i32 [ %i.db, %bb.t ], [ %i.cy, %bb.s ]
  %i.dd = mul nsw i32 %i.ap, %i.dc
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds i8, ptr %i.ao, i64 %i.de
  %59 = load <3 x double>, ptr %i.df, align 8, !tbaa !69
  %60 = shufflevector <3 x double> %59, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %61 = fmul <4 x double> %60, %23
  %62 = fptrunc <4 x double> %61 to <4 x float>
  br i1 %i.al, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dg = load i32, ptr %i.aj, align 4, !tbaa !4
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit147

bb.w:                                             ; preds = %bb.u
  %i.dh = load i16, ptr %i.aj, align 2, !tbaa !57
  %i.di = zext i16 %i.dh to i32
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit147

_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit147:       ; preds = %bb.w, %bb.v
  %i.dj = phi i32 [ %i.di, %bb.w ], [ %i.dg, %bb.v ]
  %i.dk = mul nsw i32 %i.ap, %i.dj
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds i8, ptr %i.ao, i64 %i.dl
  %63 = load <3 x double>, ptr %i.dm, align 8, !tbaa !69
  %64 = shufflevector <3 x double> %63, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %65 = fmul <4 x double> %64, %23
  %66 = fptrunc <4 x double> %65 to <4 x float>
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i

.loopexit.loopexit:                               ; preds = %bb.b
  %i.dn = getelementptr [16 x i8], ptr %i.r, i64 %indvars.iv ; 8 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !61 ; 2 uses
  %i.dq = getelementptr i8, ptr %i.dn, i64 16
  %i.dr = sext i32 %i.dp to i64
  %i.ds = sub nsw i64 %indvars.iv, %i.dr
  %i.dt = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.ds
  %i.du = icmp slt i32 %i.dp, 0
  %i.dv = select i1 %i.du, ptr %i.dt, ptr %i.dq   ; 6 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 6
  %i.dx = getelementptr inbounds nuw i8, ptr %i.s, i64 6 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 6
  %i.dz = load i16, ptr %i.dn, align 4, !tbaa !57 ; 2 uses
  store i16 %i.dz, ptr %i.s, align 4, !tbaa !57
  %i.ea = load i16, ptr %i.dv, align 2, !tbaa !57
  %spec.store.select = call i16 @llvm.umin.i16(i16 %i.dz, i16 %i.ea)
  store i16 %spec.store.select, ptr %i.s, align 4
  %i.eb = load i16, ptr %i.dw, align 2, !tbaa !57 ; 2 uses
  store i16 %i.eb, ptr %i.dx, align 2, !tbaa !57
  %i.ec = load i16, ptr %i.dy, align 2, !tbaa !57
  %spec.store.select81 = call i16 @llvm.umax.i16(i16 %i.eb, i16 %i.ec)
  store i16 %spec.store.select81, ptr %i.dx, align 2
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dn, i64 2
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !57 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.s, i64 2 ; 2 uses
  store i16 %i.ee, ptr %i.ef, align 2, !tbaa !57
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !57
  %spec.store.select.1 = call i16 @llvm.umin.i16(i16 %i.ee, i16 %i.eh)
  store i16 %spec.store.select.1, ptr %i.ef, align 2
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.ej = load i16, ptr %i.ei, align 4, !tbaa !57 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store i16 %i.ej, ptr %i.ek, align 4, !tbaa !57
  %i.el = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.em = load i16, ptr %i.el, align 2, !tbaa !57
  %spec.store.select81.1 = call i16 @llvm.umax.i16(i16 %i.ej, i16 %i.em)
  store i16 %spec.store.select81.1, ptr %i.ek, align 4
  %i.en = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.eo = load i16, ptr %i.en, align 4, !tbaa !57 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  store i16 %i.eo, ptr %i.ep, align 4, !tbaa !57
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !57
  %spec.store.select.2 = call i16 @llvm.umin.i16(i16 %i.eo, i16 %i.er)
  store i16 %spec.store.select.2, ptr %i.ep, align 4
  %i.es = getelementptr inbounds nuw i8, ptr %i.dn, i64 10
  %i.et = load i16, ptr %i.es, align 2, !tbaa !57 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.s, i64 10 ; 2 uses
  store i16 %i.et, ptr %i.eu, align 2, !tbaa !57
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dv, i64 10
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !57
  %spec.store.select81.2 = call i16 @llvm.umax.i16(i16 %i.et, i16 %i.ew)
  store i16 %spec.store.select81.2, ptr %i.eu, align 2
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_Z8btSetMinIfEvRT_RKS0_.exit.i
  %.2 = phi i32 [ %.1, %_Z8btSetMinIfEvRT_RKS0_.exit.i ], [ %.076145, %.loopexit.loopexit ] ; 3 uses
  %.not.not = icmp sgt i64 %indvars.iv.next, %i.q
  br i1 %.not.not, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %.loopexit
  %i.ex = icmp sgt i32 %.2, -1
  br i1 %i.ex, label %bb.x, label %._crit_edge.thread

bb.x:                                             ; preds = %._crit_edge
  %i.ey = load ptr, ptr %1, align 8, !tbaa !8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 48
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %.2)
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
  %i.b = load float, ptr %2, align 4, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !43
  %i.g = load <3 x float>, ptr %i.a, align 8, !tbaa !43 ; 2 uses
  %i.h = shufflevector <3 x float> %i.g, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.i = load <3 x float>, ptr %i.d, align 8, !tbaa !43 ; 2 uses
  %i.j = shufflevector <3 x float> %i.i, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.k = load <4 x float>, ptr %3, align 4
  %i.l = insertelement <4 x float> poison, float %i.f, i64 2
  %i.m = insertelement <4 x float> %i.l, float %i.b, i64 3
  %i.n = shufflevector <4 x float> %i.k, <4 x float> %i.m, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.o = fsub <4 x float> %i.n, %i.h
  %i.p = fmul <4 x float> %i.o, %i.j
  %i.q = fadd <4 x float> %i.p, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float -0.000000e+00>
  %i.r = fptoui <4 x float> %i.q to <4 x i16>     ; 2 uses
  %i.s = load <2 x float>, ptr %i.c, align 4, !tbaa !43
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
  %4 = load <3 x float>, ptr %1, align 4, !tbaa !43
  %5 = load <3 x float>, ptr %i.a, align 4, !tbaa !43
  %6 = load <3 x float>, ptr %i.b, align 4, !tbaa !43
  %i.i = load <2 x float>, ptr %i.e, align 4, !tbaa !43 ; 2 uses
  %i.j = load <2 x float>, ptr %i.g, align 4, !tbaa !43 ; 2 uses
  %i.k = load <2 x float>, ptr %i.f, align 4, !tbaa !43 ; 2 uses
  %i.l = load <2 x float>, ptr %i.h, align 4, !tbaa !43 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !71, !nonnull !38, !align !72 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 5 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !31   ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !32
  %i.s = icmp eq i32 %i.p, %i.r
  br i1 %i.s, label %bb.a, label %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE9push_backERKS0_.exit

bb.a:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i
  %.not.i.i = icmp eq i32 %i.p, 0
  %i.t = shl nsw i32 %i.p, 1
  %i.u = select i1 %.not.i.i, i32 1, i32 %i.t     ; 4 uses
  %i.v = icmp slt i32 %i.p, %i.u
  br i1 %i.v, label %bb.b, label %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE9push_backERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE8allocateEi.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = sext i32 %i.u to i64
  %i.x = shl nsw i64 %i.w, 4
  %i.y = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.x, i32 noundef 16)
  %.pre.i = load i32, ptr %i.o, align 4, !tbaa !31
  br label %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE8allocateEi.exit.i.i: ; preds = %bb.c, %bb.b
  %i.z = phi i32 [ %.pre.i, %bb.c ], [ %i.p, %bb.b ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.y, %bb.c ], [ null, %bb.b ] ; 4 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE8allocateEi.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.z to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.ac = icmp eq i32 %i.z, 1
  br i1 %i.ac, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.d ]
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !33
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ad, ptr noundef nonnull align 4 dereferenceable(16) %i.af, i64 16, i1 false), !tbaa.struct !34
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !33
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %indvars.iv.next.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ag, ptr noundef nonnull align 4 dereferenceable(16) %i.ai, i64 16, i1 false), !tbaa.struct !34
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.d

_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod71 = trunc i32 %i.z to i1
  tail call void @llvm.assume(i1 %lcmp.mod71)
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.epil.init
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !33
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %indvars.iv.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aj, ptr noundef nonnull align 4 dereferenceable(16) %i.al, i64 16, i1 false), !tbaa.struct !34
  br label %_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i

_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE8allocateEi.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !33 ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE10deallocateEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !36, !range !37, !noundef !38
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.f, label %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE10deallocateEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.an)
  br label %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE10deallocateEv.exit.i.i: ; preds = %bb.f, %bb.e, %_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i8 1, ptr %i.ar, align 8, !tbaa !36
  store ptr %.0.i.i.i, ptr %i.am, align 8, !tbaa !33
  store i32 %i.u, ptr %i.q, align 8, !tbaa !32
  %.pre2.i = load i32, ptr %i.o, align 4, !tbaa !31
  br label %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE9push_backERKS0_.exit

_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE9push_backERKS0_.exit: ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i, %bb.a, %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE10deallocateEv.exit.i.i
  %i.as = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE10deallocateEv.exit.i.i ], [ %i.p, %bb.a ], [ %i.p, %_Z8btSetMinIfEvRT_RKS0_.exit.i ]
  %7 = shufflevector <3 x float> %6, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 4 uses
  %8 = shufflevector <3 x float> %5, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 4 uses
  %9 = shufflevector <3 x float> %4, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 4 uses
  %10 = shl i32 %2, 21
  %11 = or i32 %10, %3
  %12 = fcmp ogt <4 x float> %9, splat (float f0xDD5E0B6B)
  %13 = fcmp olt <4 x float> %9, splat (float f0x5D5E0B6B)
  %14 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %15 = load ptr, ptr %14, align 8, !tbaa !33
  %16 = sext i32 %i.as to i64
  %17 = getelementptr inbounds [16 x i8], ptr %15, i64 %16 ; 3 uses
  %18 = select <4 x i1> %12, <4 x float> %9, <4 x float> splat (float f0xDD5E0B6B) ; 2 uses
  %19 = fcmp olt <4 x float> %18, %8
  %20 = select <4 x i1> %13, <4 x float> %9, <4 x float> splat (float f0x5D5E0B6B) ; 2 uses
  %21 = select <4 x i1> %19, <4 x float> %8, <4 x float> %18 ; 2 uses
  %22 = fcmp olt <4 x float> %8, %20
  %23 = fcmp olt <4 x float> %21, %7
  %24 = select <4 x i1> %22, <4 x float> %8, <4 x float> %20 ; 2 uses
  %25 = select <4 x i1> %23, <4 x float> %7, <4 x float> %21 ; 3 uses
  %26 = fcmp olt <4 x float> %7, %24
  %27 = select <4 x i1> %26, <4 x float> %7, <4 x float> %24 ; 2 uses
  %28 = fsub <4 x float> %25, %27
  %29 = fcmp olt <4 x float> %28, splat (float 2.000000e-03) ; 2 uses
  %30 = shufflevector <4 x float> %27, <4 x float> %25, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %31 = fadd <4 x float> %30, <float -1.000000e-03, float -1.000000e-03, float -1.000000e-03, float 1.000000e-03>
  %32 = select <4 x i1> %29, <4 x float> %31, <4 x float> %30
  %33 = shufflevector <2 x float> %i.i, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %34 = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x float> %33, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %35 = fsub <4 x float> %32, %34                 ; 2 uses
  %36 = shufflevector <2 x float> %i.i, <2 x float> %i.j, <4 x i32> <i32 0, i32 1, i32 poison, i32 2>
  %37 = shufflevector <2 x float> %i.k, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %38 = shufflevector <4 x float> %36, <4 x float> %37, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %39 = fsub <4 x float> %35, %38
  %40 = fmul <4 x float> %35, %38
  %41 = shufflevector <4 x float> %39, <4 x float> %40, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.at = shufflevector <2 x float> %i.j, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.au = insertelement <4 x float> %i.at, float 1.000000e+00, i64 3
  %i.av = shufflevector <2 x float> %i.l, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.aw = shufflevector <4 x float> %i.au, <4 x float> %i.av, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %42 = fmul <4 x float> %41, %i.aw
  %43 = fadd <4 x float> %41, %i.aw
  %44 = shufflevector <4 x float> %42, <4 x float> %43, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %45 = fptoui <4 x float> %44 to <4 x i16>       ; 2 uses
  %46 = and <4 x i16> %45, <i16 -2, i16 -2, i16 -2, i16 poison>
  %47 = or <4 x i16> %45, <i16 poison, i16 poison, i16 poison, i16 1>
  %48 = shufflevector <4 x i16> %46, <4 x i16> %47, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x i16> %48, ptr %17, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 8
  %49 = shufflevector <4 x float> %25, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %50 = fadd <2 x float> %49, splat (float 1.000000e-03)
  %51 = shufflevector <4 x i1> %29, <4 x i1> poison, <2 x i32> <i32 1, i32 2>
  %i.ax = select <2 x i1> %51, <2 x float> %50, <2 x float> %49
  %i.ay = fsub <2 x float> %i.ax, %i.k
  %i.az = fmul <2 x float> %i.ay, %i.l
  %i.ba = fadd <2 x float> %i.az, splat (float 1.000000e+00)
  %i.bb = fptoui <2 x float> %i.ba to <2 x i16>
  %i.bc = or <2 x i16> %i.bb, splat (i16 1)
  store <2 x i16> %i.bc, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 12
  store i32 %11, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !4
  %i.bd = load i32, ptr %i.o, align 4, !tbaa !31
  %i.be = add nsw i32 %i.bd, 1
  store i32 %i.be, ptr %i.o, align 4, !tbaa !31
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint uwtable
define internal void @_ZZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_EN20NodeTriangleCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN31btInternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0)
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
define internal void @_ZZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_EN20NodeTriangleCallback28internalProcessTriangleIndexEPS2_ii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 align 2 {
_Z8btSetMinIfEvRT_RKS0_.exit.i:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load <4 x float>, ptr %1, align 4, !tbaa !43 ; 4 uses
  %i.d = load <4 x float>, ptr %i.a, align 4, !tbaa !43 ; 4 uses
  %i.e = load <4 x float>, ptr %i.b, align 4, !tbaa !43 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !73, !nonnull !38, !align !72 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 5 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !45   ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !46
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.a, label %_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeE9push_backERKS0_.exit

bb.a:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i
  %.not.i.i = icmp eq i32 %i.i, 0
  %i.m = shl nsw i32 %i.i, 1
  %i.n = select i1 %.not.i.i, i32 1, i32 %i.m     ; 4 uses
  %i.o = icmp slt i32 %i.i, %i.n
  br i1 %i.o, label %bb.b, label %_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeE9push_backERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeE8allocateEi.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = sext i32 %i.n to i64
  %i.q = shl nsw i64 %i.p, 6
  %i.r = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.q, i32 noundef 16)
  %.pre.i = load i32, ptr %i.h, align 4, !tbaa !45
  br label %_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeE8allocateEi.exit.i.i: ; preds = %bb.c, %bb.b
  %i.s = phi i32 [ %.pre.i, %bb.c ], [ %i.i, %bb.b ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.r, %bb.c ], [ null, %bb.b ] ; 4 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayI18btOptimizedBvhNodeE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeE8allocateEi.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.s to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.v = icmp eq i32 %i.s, 1
  br i1 %i.v, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.d ]
  %i.w = getelementptr inbounds nuw [64 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !47
  %i.y = getelementptr inbounds nuw [64 x i8], ptr %i.x, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.w, ptr noundef nonnull align 4 dereferenceable(64) %i.y, i64 64, i1 false), !tbaa.struct !48
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.z = getelementptr inbounds nuw [64 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !47
  %i.ab = getelementptr inbounds nuw [64 x i8], ptr %i.aa, i64 %indvars.iv.next.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.z, ptr noundef nonnull align 4 dereferenceable(64) %i.ab, i64 64, i1 false), !tbaa.struct !48
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI18btOptimizedBvhNodeE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.d

_ZNK20btAlignedObjectArrayI18btOptimizedBvhNodeE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayI18btOptimizedBvhNodeE4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI18btOptimizedBvhNodeE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20btAlignedObjectArrayI18btOptimizedBvhNodeE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod54 = trunc i32 %i.s to i1
  tail call void @llvm.assume(i1 %lcmp.mod54)
  %i.ac = getelementptr inbounds nuw [64 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.epil.init
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !47
  %i.ae = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %indvars.iv.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.ac, ptr noundef nonnull align 4 dereferenceable(64) %i.ae, i64 64, i1 false), !tbaa.struct !48
  br label %_ZNK20btAlignedObjectArrayI18btOptimizedBvhNodeE4copyEiiPS0_.exit.i.i

_ZNK20btAlignedObjectArrayI18btOptimizedBvhNodeE4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI18btOptimizedBvhNodeE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeE8allocateEi.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !47 ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeE10deallocateEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNK20btAlignedObjectArrayI18btOptimizedBvhNodeE4copyEiiPS0_.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !49, !range !37, !noundef !38
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.f, label %_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeE10deallocateEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ag)
  br label %_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeE10deallocateEv.exit.i.i: ; preds = %bb.f, %bb.e, %_ZNK20btAlignedObjectArrayI18btOptimizedBvhNodeE4copyEiiPS0_.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i8 1, ptr %i.ak, align 8, !tbaa !49
  store ptr %.0.i.i.i, ptr %i.af, align 8, !tbaa !47
  store i32 %i.n, ptr %i.j, align 8, !tbaa !46
  %.pre2.i = load i32, ptr %i.h, align 4, !tbaa !45
  br label %_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeE9push_backERKS0_.exit

_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeE9push_backERKS0_.exit: ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i, %bb.a, %_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeE10deallocateEv.exit.i.i
  %i.al = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeE10deallocateEv.exit.i.i ], [ %i.i, %bb.a ], [ %i.i, %_Z8btSetMinIfEvRT_RKS0_.exit.i ]
  %i.am = fcmp olt <4 x float> %i.c, <float f0x5D5E0B6B, float f0x5D5E0B6B, float f0x5D5E0B6B, float 0.000000e+00>
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !47
  %i.ap = sext i32 %i.al to i64
  %i.aq = getelementptr inbounds [64 x i8], ptr %i.ao, i64 %i.ap ; 5 uses
  %i.ar = select <4 x i1> %i.am, <4 x float> %i.c, <4 x float> <float f0x5D5E0B6B, float f0x5D5E0B6B, float f0x5D5E0B6B, float 0.000000e+00> ; 2 uses
  %i.as = fcmp olt <4 x float> %i.d, %i.ar
  %i.at = select <4 x i1> %i.as, <4 x float> %i.d, <4 x float> %i.ar ; 2 uses
  %i.au = fcmp olt <4 x float> %i.e, %i.at
  %i.av = select <4 x i1> %i.au, <4 x float> %i.e, <4 x float> %i.at
  store <4 x float> %i.av, ptr %i.aq, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.aw = fcmp ogt <4 x float> %i.c, <float f0xDD5E0B6B, float f0xDD5E0B6B, float f0xDD5E0B6B, float 0.000000e+00>
  %i.ax = select <4 x i1> %i.aw, <4 x float> %i.c, <4 x float> <float f0xDD5E0B6B, float f0xDD5E0B6B, float f0xDD5E0B6B, float 0.000000e+00> ; 2 uses
  %i.ay = fcmp olt <4 x float> %i.ax, %i.d
  %i.az = select <4 x i1> %i.ay, <4 x float> %i.d, <4 x float> %i.ax ; 2 uses
  %i.ba = fcmp olt <4 x float> %i.az, %i.e
  %i.bb = select <4 x i1> %i.ba, <4 x float> %i.e, <4 x float> %i.az
  store <4 x float> %i.bb, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store i32 -1, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 36
  store i32 %2, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  store i32 %3, ptr %.sroa.13.0..sroa_idx, align 4, !tbaa !4
  %i.bc = load i32, ptr %i.h, align 4, !tbaa !45
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr %i.h, align 4, !tbaa !45
  ret void
}

declare noundef zeroext i1 @_ZN14btQuantizedBvh9serializeEPvjb(ptr noundef nonnull align 8 dereferenceable(244), ptr noundef, i32 noundef, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
end_hunk_0
