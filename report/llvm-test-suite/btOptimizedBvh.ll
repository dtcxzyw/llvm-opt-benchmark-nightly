Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btOptimizedBvh?download=true
inline.NumInlined: 198
inline.NumDeleted: 78
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_:bb.a
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ep, i64 6
  store i16 %i.fb, ptr %i.fc, align 2, !tbaa !50
  %i.fd = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.fe = load i16, ptr %i.fd, align 4, !tbaa !50
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store i16 %i.fe, ptr %i.ff, align 4, !tbaa !50
  %i.fg = getelementptr inbounds nuw i8, ptr %i.es, i64 10
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !50
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ep, i64 10
  store i16 %i.fh, ptr %i.fi, align 2, !tbaa !50
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ep, i64 12
  store i32 0, ptr %i.fj, align 4, !tbaa !52
  %i.fk = getelementptr inbounds nuw i8, ptr %i.es, i64 12
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !54 ; 2 uses
  %i.fm = icmp sgt i32 %i.fl, -1
  %i.fn = sub nsw i32 0, %i.fl
  %spec.select = select i1 %i.fm, i32 1, i32 %i.fn
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store i32 %spec.select, ptr %i.fo, align 4, !tbaa !55
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.z, %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE6expandERKS0_.exit
  %i.fp = phi i32 [ %i.dr, %bb.z ], [ %i.eq, %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE6expandERKS0_.exit ]
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i32 %i.fp, ptr %i.fq, align 8, !tbaa !65
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !32 ; 2 uses
  %.not.i.i47 = icmp ne ptr %i.fs, null
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.fu = load i8, ptr %i.ft, align 8, !range !36
  %i.fv = trunc nuw i8 %i.fu to i1
  %or.cond.i = select i1 %.not.i.i47, i1 %i.fv, i1 false
  br i1 %or.cond.i, label %bb.ae, label %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE5clearEv.exit

bb.ae:                                            ; preds = %._crit_edge
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.fs)
  br label %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE5clearEv.exit

_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE5clearEv.exit: ; preds = %._crit_edge, %bb.ae
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i8 1, ptr %i.ft, align 8, !tbaa !35
  store ptr null, ptr %i.fr, align 8, !tbaa !32
  store i32 0, ptr %i.fw, align 4, !tbaa !30
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %i.fx, align 8, !tbaa !31
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !43 ; 2 uses
  %.not.i.i48 = icmp ne ptr %i.fz, null
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.gb = load i8, ptr %i.ga, align 8, !range !36
  %i.gc = trunc nuw i8 %i.gb to i1
  %or.cond.i49 = select i1 %.not.i.i48, i1 %i.gc, i1 false
  br i1 %or.cond.i49, label %bb.af, label %_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeE5clearEv.exit

bb.af:                                            ; preds = %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE5clearEv.exit
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.fz)
  br label %_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeE5clearEv.exit

_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeE5clearEv.exit: ; preds = %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE5clearEv.exit, %bb.af
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.ga, align 8, !tbaa !45
  store ptr null, ptr %i.fy, align 8, !tbaa !43
  store i32 0, ptr %i.gd, align 4, !tbaa !41
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.ge, align 8, !tbaa !42
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
  %i.b = load i8, ptr %i.a, align 8, !tbaa !24, !range !36, !noundef !37
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN14btQuantizedBvh21setQuantizationValuesERK9btVector3S2_f(ptr noundef nonnull align 8 dereferenceable(244) %0, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, float noundef 1.000000e+00)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.e = load i32, ptr %i.d, align 4, !tbaa !46
  tail call void @_ZN14btOptimizedBvh14updateBvhNodesEP23btStridingMeshInterfaceiii(ptr noundef nonnull align 8 dereferenceable(244) %0, ptr noundef %1, i32 noundef 0, i32 noundef %i.e, i32 poison)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.g = load i32, ptr %i.f, align 4, !tbaa !47   ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !32
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %indvars.iv ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !52
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [16 x i8], ptr %i.l, i64 %i.p ; 6 uses
  %i.r = load i16, ptr %i.q, align 4, !tbaa !50
  store i16 %i.r, ptr %i.m, align 4, !tbaa !50
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.t = load i16, ptr %i.s, align 2, !tbaa !50
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  store i16 %i.t, ptr %i.u, align 2, !tbaa !50
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.w = load i16, ptr %i.v, align 4, !tbaa !50
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i16 %i.w, ptr %i.x, align 4, !tbaa !50
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  %i.z = load i16, ptr %i.y, align 2, !tbaa !50
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 6
  store i16 %i.z, ptr %i.aa, align 2, !tbaa !50
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ac = load i16, ptr %i.ab, align 4, !tbaa !50
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i16 %i.ac, ptr %i.ad, align 4, !tbaa !50
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 10
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !50
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 10
  store i16 %i.af, ptr %i.ag, align 2, !tbaa !50
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
  store ptr null, ptr %i.a, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 0, ptr %i.b, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 2, ptr %i.c, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store ptr null, ptr %i.e, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store i32 0, ptr %i.f, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store i32 0, ptr %i.g, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  store i32 2, ptr %i.h, align 4, !tbaa !69
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
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !32   ; 3 uses
  %i.s = getelementptr inbounds [16 x i8], ptr %i.r, i64 %indvars.iv.next ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !54   ; 3 uses
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
  %i.z = load ptr, ptr %1, align 8, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %.076145)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ac = load ptr, ptr %1, align 8, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, i32 noundef %i.w)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.1.a = phi i32 [ %i.w, %bb.f ], [ %.076145, %bb.c ]
  %5 = load ptr, ptr %i.e, align 8, !tbaa !67
  %6 = load i32, ptr %i.f, align 4, !tbaa !7
  %7 = mul nsw i32 %6, %i.x
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8, ptr %5, i64 %8  ; 12 uses
  %10 = load i32, ptr %i.h, align 4, !tbaa !69
  %11 = icmp eq i32 %10, 3                        ; 6 uses
  %12 = load i32, ptr %i.c, align 4, !tbaa !69
  %i.af = icmp eq i32 %12, 0
  %i.ag = load ptr, ptr %i.a, align 8             ; 6 uses
  %i.ah = load i32, ptr %i.d, align 4             ; 6 uses
  %i.ai = load float, ptr %i.i, align 4, !tbaa !40 ; 4 uses
  br i1 %i.af, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.g
  %i.aj = load <2 x float>, ptr %i.k, align 4, !tbaa !40 ; 3 uses
  br i1 %11, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.split.us
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !7
  br label %bb.j

bb.i:                                             ; preds = %.split.us
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.an = load i16, ptr %i.am, align 2, !tbaa !50
  %i.ao = zext i16 %i.an to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ap = phi i32 [ %i.ao, %bb.i ], [ %i.al, %bb.h ]
  %i.aq = mul nsw i32 %i.ah, %i.ap
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds i8, ptr %i.ag, i64 %i.ar ; 2 uses
  %i.at = load float, ptr %i.as, align 4, !tbaa !40
  %i.au = fmul float %i.at, %i.ai
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.aw = load <2 x float>, ptr %i.av, align 4, !tbaa !40
  %i.ax = fmul <2 x float> %i.aw, %i.aj
  br i1 %11, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !7
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 2
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !50
  %i.bc = zext i16 %i.bb to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bd = phi i32 [ %i.bc, %bb.l ], [ %i.az, %bb.k ]
  %i.be = mul nsw i32 %i.ah, %i.bd
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds i8, ptr %i.ag, i64 %i.bf ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !40
  %i.bi = fmul float %i.bh, %i.ai
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bk = load <2 x float>, ptr %i.bj, align 4, !tbaa !40
  %i.bl = fmul <2 x float> %i.bk, %i.aj
  br i1 %11, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = load i32, ptr %9, align 4, !tbaa !7
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit

bb.o:                                             ; preds = %bb.m
  %i.bn = load i16, ptr %9, align 2, !tbaa !50
  %i.bo = zext i16 %i.bn to i32
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit

_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit:          ; preds = %bb.o, %bb.n
  %i.bp = phi i32 [ %i.bo, %bb.o ], [ %i.bm, %bb.n ]
  %i.bq = mul nsw i32 %i.ah, %i.bp
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds i8, ptr %i.ag, i64 %i.br ; 2 uses
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !40
  %i.bu = fmul float %i.bt, %i.ai
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bw = load <2 x float>, ptr %i.bv, align 4, !tbaa !40
  %i.bx = fmul <2 x float> %i.bw, %i.aj
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i

.split:                                           ; preds = %bb.g
  %i.by = fpext float %i.ai to double             ; 3 uses
  %i.bz = load <2 x float>, ptr %i.k, align 4, !tbaa !40
  %i.ca = fpext <2 x float> %i.bz to <2 x double> ; 3 uses
  br i1 %11, label %bb.p, label %bb.q

_Z8btSetMinIfEvRT_RKS0_.exit.i:                   ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit147, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit
  %.sroa.24.0 = phi float [ %i.au, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit ], [ %i.ev, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit147 ] ; 3 uses
  %.sroa.13.0 = phi float [ %i.bi, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit ], [ %i.fl, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit147 ] ; 3 uses
  %.sroa.0.0 = phi float [ %i.bu, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit ], [ %i.fz, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit147 ] ; 3 uses
  %i.cb = phi <2 x float> [ %i.bx, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit ], [ %i.gd, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit147 ] ; 4 uses
  %i.cc = phi <2 x float> [ %i.bl, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit ], [ %i.fp, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit147 ] ; 4 uses
  %i.cd = phi <2 x float> [ %i.ax, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit ], [ %i.ez, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit147 ] ; 4 uses
  %i.ce = extractelement <2 x float> %i.cb, i64 1 ; 2 uses
  %i.cf = fcmp olt float %i.ce, f0x5D5E0B6B
  %.sroa.18133.0 = select i1 %i.cf, float %i.ce, float f0x5D5E0B6B ; 2 uses
  %i.cg = fcmp ogt float %.sroa.0.0, f0xDD5E0B6B
  %.sroa.0113.0 = select i1 %i.cg, float %.sroa.0.0, float f0xDD5E0B6B ; 2 uses
  %i.ch = fcmp ogt <2 x float> %i.cb, splat (float f0xDD5E0B6B)
  %i.ci = extractelement <2 x float> %i.cc, i64 1 ; 2 uses
  %i.cj = fcmp olt float %i.ci, %.sroa.18133.0
  %.sroa.18133.1 = select i1 %i.cj, float %i.ci, float %.sroa.18133.0 ; 2 uses
  %i.ck = fcmp olt float %.sroa.0113.0, %.sroa.13.0
  %.sroa.0113.1 = select i1 %i.ck, float %.sroa.13.0, float %.sroa.0113.0 ; 2 uses
  %i.cl = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cm = insertelement <2 x float> %i.cl, float %.sroa.0.0, i64 0 ; 2 uses
  %i.cn = fcmp olt <2 x float> %i.cm, splat (float f0x5D5E0B6B)
  %i.co = select <2 x i1> %i.cn, <2 x float> %i.cm, <2 x float> splat (float f0x5D5E0B6B) ; 2 uses
  %i.cp = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cq = insertelement <2 x float> %i.cp, float %.sroa.13.0, i64 0 ; 2 uses
  %i.cr = fcmp olt <2 x float> %i.cq, %i.co
  %i.cs = select <2 x i1> %i.cr, <2 x float> %i.cq, <2 x float> %i.co ; 2 uses
  %i.ct = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cu = insertelement <2 x float> %i.ct, float %.sroa.24.0, i64 0 ; 2 uses
  %i.cv = fcmp olt <2 x float> %i.cu, %i.cs
  %i.cw = select <2 x i1> %i.cv, <2 x float> %i.cu, <2 x float> %i.cs
  %i.cx = extractelement <2 x float> %i.cd, i64 1 ; 2 uses
  %i.cy = fcmp olt float %i.cx, %.sroa.18133.1
  %.sroa.18133.2 = select i1 %i.cy, float %i.cx, float %.sroa.18133.1
  %i.cz = fcmp olt float %.sroa.0113.1, %.sroa.24.0
  %.sroa.0113.2 = select i1 %i.cz, float %.sroa.24.0, float %.sroa.0113.1
  %i.da = load <2 x float>, ptr %i.l, align 8, !tbaa !40 ; 2 uses
  %i.db = load <2 x float>, ptr %i.n, align 8, !tbaa !40 ; 2 uses
  %i.dc = extractelement <2 x float> %i.da, i64 0
  %i.dd = fsub float %.sroa.0113.2, %i.dc
  %i.de = extractelement <2 x float> %i.db, i64 0
  %i.df = fmul float %i.dd, %i.de
  %i.dg = shufflevector <2 x float> %i.cw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dh = insertelement <4 x float> %i.dg, float %.sroa.18133.2, i64 2
  %i.di = insertelement <4 x float> %i.dh, float %i.df, i64 3
  %i.dj = shufflevector <2 x float> %i.da, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dk = insertelement <4 x float> %i.dj, float -1.000000e+00, i64 3
  %i.dl = shufflevector <2 x float> %i.db, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dm = insertelement <4 x float> %i.dl, float 1.000000e+00, i64 3
  %i.dn = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.do = select <2 x i1> %i.ch, <2 x float> %i.cb, <2 x float> splat (float f0xDD5E0B6B) ; 2 uses
  %i.dp = fcmp olt <2 x float> %i.do, %i.cc
  %i.dq = select <2 x i1> %i.dp, <2 x float> %i.cc, <2 x float> %i.do ; 2 uses
  %i.dr = fcmp olt <2 x float> %i.dq, %i.cd
  %i.ds = select <2 x i1> %i.dr, <2 x float> %i.cd, <2 x float> %i.dq
  %i.dt = load <2 x float>, ptr %i.m, align 4, !tbaa !40 ; 2 uses
  %i.du = load <2 x float>, ptr %i.o, align 4, !tbaa !40 ; 2 uses
  %i.dv = fsub <2 x float> %i.ds, %i.dt
  %i.dw = fmul <2 x float> %i.dv, %i.du
  %i.dx = shufflevector <2 x float> %i.dt, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dy = shufflevector <4 x float> %i.dk, <4 x float> %i.dx, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.dz = fsub <4 x float> %i.di, %i.dy
  %i.ea = shufflevector <2 x float> %i.du, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.eb = shufflevector <4 x float> %i.dm, <4 x float> %i.ea, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ec = fmul <4 x float> %i.dz, %i.eb
  %i.ed = fptoui <4 x float> %i.ec to <4 x i16>   ; 2 uses
  %i.ee = and <4 x i16> %i.ed, <i16 -2, i16 -2, i16 -2, i16 poison>
  %i.ef = or <4 x i16> %i.ed, <i16 poison, i16 poison, i16 poison, i16 1>
  %i.eg = shufflevector <4 x i16> %i.ee, <4 x i16> %i.ef, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.eh = fadd <2 x float> %i.dw, splat (float 1.000000e+00)
  %i.ei = fptoui <2 x float> %i.eh to <2 x i16>
  %i.ej = or <2 x i16> %i.ei, splat (i16 1)
  store <4 x i16> %i.eg, ptr %i.s, align 4, !tbaa !50
  store <2 x i16> %i.ej, ptr %i.dn, align 4, !tbaa !50
  br label %.loopexit

bb.p:                                             ; preds = %.split
  %i.ek = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !50
  %i.em = zext i16 %i.el to i32
  br label %bb.r

bb.q:                                             ; preds = %.split
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !7
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ep = phi i32 [ %i.em, %bb.p ], [ %i.eo, %bb.q ]
  %i.eq = mul nsw i32 %i.ah, %i.ep
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds i8, ptr %i.ag, i64 %i.er ; 2 uses
  %i.et = load double, ptr %i.es, align 8, !tbaa !71
  %i.eu = fmul double %i.et, %i.by
  %i.ev = fptrunc double %i.eu to float
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.ex = load <2 x double>, ptr %i.ew, align 8, !tbaa !71
  %i.ey = fmul <2 x double> %i.ex, %i.ca
  %i.ez = fptrunc <2 x double> %i.ey to <2 x float>
  br i1 %11, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fa = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !7
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.fc = getelementptr inbounds nuw i8, ptr %9, i64 2
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !50
  %i.fe = zext i16 %i.fd to i32
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ff = phi i32 [ %i.fe, %bb.t ], [ %i.fb, %bb.s ]
  %i.fg = mul nsw i32 %i.ah, %i.ff
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds i8, ptr %i.ag, i64 %i.fh ; 2 uses
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !71
  %i.fk = fmul double %i.fj, %i.by
  %i.fl = fptrunc double %i.fk to float
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fn = load <2 x double>, ptr %i.fm, align 8, !tbaa !71
  %i.fo = fmul <2 x double> %i.fn, %i.ca
  %i.fp = fptrunc <2 x double> %i.fo to <2 x float>
  br i1 %11, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fq = load i32, ptr %9, align 4, !tbaa !7
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit147

bb.w:                                             ; preds = %bb.u
  %i.fr = load i16, ptr %9, align 2, !tbaa !50
  %i.fs = zext i16 %i.fr to i32
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit147

_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit147:       ; preds = %bb.w, %bb.v
  %i.ft = phi i32 [ %i.fs, %bb.w ], [ %i.fq, %bb.v ]
  %i.fu = mul nsw i32 %i.ah, %i.ft
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds i8, ptr %i.ag, i64 %i.fv ; 2 uses
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !71
  %i.fy = fmul double %i.fx, %i.by
  %i.fz = fptrunc double %i.fy to float
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.gb = load <2 x double>, ptr %i.ga, align 8, !tbaa !71
  %i.gc = fmul <2 x double> %i.gb, %i.ca
  %i.gd = fptrunc <2 x double> %i.gc to <2 x float>
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i

.loopexit.loopexit:                               ; preds = %bb.b
  %i.ge = getelementptr [16 x i8], ptr %i.r, i64 %indvars.iv ; 8 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !54 ; 2 uses
  %i.gh = getelementptr i8, ptr %i.ge, i64 16
  %i.gi = sext i32 %i.gg to i64
  %i.gj = sub nsw i64 %indvars.iv, %i.gi
  %i.gk = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.gj
  %i.gl = icmp slt i32 %i.gg, 0
  %i.gm = select i1 %i.gl, ptr %i.gk, ptr %i.gh   ; 6 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ge, i64 6
  %i.go = getelementptr inbounds nuw i8, ptr %i.s, i64 6 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 6
  %i.gq = load i16, ptr %i.ge, align 4, !tbaa !50 ; 2 uses
  store i16 %i.gq, ptr %i.s, align 4, !tbaa !50
  %i.gr = load i16, ptr %i.gm, align 2, !tbaa !50
  %spec.store.select = call i16 @llvm.umin.i16(i16 %i.gq, i16 %i.gr)
  store i16 %spec.store.select, ptr %i.s, align 4
  %i.gs = load i16, ptr %i.gn, align 2, !tbaa !50 ; 2 uses
  store i16 %i.gs, ptr %i.go, align 2, !tbaa !50
  %i.gt = load i16, ptr %i.gp, align 2, !tbaa !50
  %spec.store.select81 = call i16 @llvm.umax.i16(i16 %i.gs, i16 %i.gt)
  store i16 %spec.store.select81, ptr %i.go, align 2
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ge, i64 2
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !50 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.s, i64 2 ; 2 uses
  store i16 %i.gv, ptr %i.gw, align 2, !tbaa !50
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gm, i64 2
  %i.gy = load i16, ptr %i.gx, align 2, !tbaa !50
  %spec.store.select.1 = call i16 @llvm.umin.i16(i16 %i.gv, i16 %i.gy)
  store i16 %spec.store.select.1, ptr %i.gw, align 2
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.ha = load i16, ptr %i.gz, align 4, !tbaa !50 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store i16 %i.ha, ptr %i.hb, align 4, !tbaa !50
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !50
  %spec.store.select81.1 = call i16 @llvm.umax.i16(i16 %i.ha, i16 %i.hd)
  store i16 %spec.store.select81.1, ptr %i.hb, align 4
  %i.he = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  %i.hf = load i16, ptr %i.he, align 4, !tbaa !50 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  store i16 %i.hf, ptr %i.hg, align 4, !tbaa !50
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !50
  %spec.store.select.2 = call i16 @llvm.umin.i16(i16 %i.hf, i16 %i.hi)
  store i16 %spec.store.select.2, ptr %i.hg, align 4
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ge, i64 10
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !50 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.s, i64 10 ; 2 uses
  store i16 %i.hk, ptr %i.hl, align 2, !tbaa !50
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gm, i64 10
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !50
  %spec.store.select81.2 = call i16 @llvm.umax.i16(i16 %i.hk, i16 %i.hn)
  store i16 %spec.store.select81.2, ptr %i.hl, align 2
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_Z8btSetMinIfEvRT_RKS0_.exit.i
  %.2 = phi i32 [ %.1.a, %_Z8btSetMinIfEvRT_RKS0_.exit.i ], [ %.076145, %.loopexit.loopexit ] ; 3 uses
  %.not.not = icmp sgt i64 %indvars.iv.next, %i.q
  br i1 %.not.not, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %.loopexit
  %i.ho = icmp sgt i32 %.2, -1
  br i1 %i.ho, label %bb.x, label %._crit_edge.thread

bb.x:                                             ; preds = %._crit_edge
  %i.hp = load ptr, ptr %1, align 8, !tbaa !9
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 48
  %i.hr = load ptr, ptr %i.hq, align 8
  call void %i.hr(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %.2)
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
  %i.b = load float, ptr %2, align 4, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !40
  %i.g = load <3 x float>, ptr %i.a, align 8, !tbaa !40 ; 2 uses
  %i.h = shufflevector <3 x float> %i.g, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.i = load <3 x float>, ptr %i.d, align 8, !tbaa !40 ; 2 uses
  %i.j = shufflevector <3 x float> %i.i, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.k = load <4 x float>, ptr %3, align 4
  %i.l = insertelement <4 x float> poison, float %i.f, i64 2
  %i.m = insertelement <4 x float> %i.l, float %i.b, i64 3
  %i.n = shufflevector <4 x float> %i.k, <4 x float> %i.m, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.o = fsub <4 x float> %i.n, %i.h
  %i.p = fmul <4 x float> %i.o, %i.j
  %i.q = fadd <4 x float> %i.p, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float -0.000000e+00>
  %i.r = fptoui <4 x float> %i.q to <4 x i16>     ; 2 uses
  %i.s = load <2 x float>, ptr %i.c, align 4, !tbaa !40
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
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !47 ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.ah = phi i32 [ %i.ad, %.lr.ph ], [ %i.bt, %bb.d ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !48
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.ai, i64 %indvars.iv ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.al = load <2 x i16>, ptr %i.ak, align 2, !tbaa !50
  %i.am = icmp ugt <2 x i16> %i.y, %i.al          ; 2 uses
  %i.an = load <4 x i16>, ptr %i.aj, align 2, !tbaa !50 ; 2 uses
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
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !52 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !55
  %i.bd = add nsw i32 %i.bc, %i.ba
  tail call void @_ZN14btOptimizedBvh14updateBvhNodesEP23btStridingMeshInterfaceiii(ptr noundef nonnull align 8 dereferenceable(244) %0, ptr noundef %1, i32 noundef %i.ba, i32 noundef %i.bd, i32 poison)
  %i.be = load i32, ptr %i.az, align 4, !tbaa !52
  %i.bf = load ptr, ptr %i.ag, align 8, !tbaa !32
  %i.bg = sext i32 %i.be to i64
  %i.bh = getelementptr inbounds [16 x i8], ptr %i.bf, i64 %i.bg ; 6 uses
  %i.bi = load i16, ptr %i.bh, align 4, !tbaa !50
  store i16 %i.bi, ptr %i.aj, align 4, !tbaa !50
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !50
  store i16 %i.bk, ptr %i.av, align 2, !tbaa !50
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bm = load i16, ptr %i.bl, align 4, !tbaa !50
  store i16 %i.bm, ptr %i.aw, align 4, !tbaa !50
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 6
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !50
  store i16 %i.bo, ptr %i.ay, align 2, !tbaa !50
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bq = load i16, ptr %i.bp, align 4, !tbaa !50
  store i16 %i.bq, ptr %i.ak, align 4, !tbaa !50
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 10
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !50
  store i16 %i.bs, ptr %i.ax, align 2, !tbaa !50
  %.pre = load i32, ptr %i.ac, align 4, !tbaa !47
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
  %i.a = load float, ptr %1, align 4, !tbaa !40   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load float, ptr %i.c, align 4, !tbaa !40 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load float, ptr %i.f, align 4, !tbaa !40 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  %i.o = load <2 x float>, ptr %i.k, align 4, !tbaa !40 ; 2 uses
  %i.p = load <2 x float>, ptr %i.m, align 4, !tbaa !40 ; 2 uses
  %i.q = load <2 x float>, ptr %i.b, align 4, !tbaa !40 ; 4 uses
  %i.r = load <2 x float>, ptr %i.e, align 4, !tbaa !40 ; 4 uses
  %i.s = load <2 x float>, ptr %i.h, align 4, !tbaa !40 ; 4 uses
  %i.t = load <2 x float>, ptr %i.l, align 4, !tbaa !40 ; 2 uses
  %i.u = load <2 x float>, ptr %i.n, align 4, !tbaa !40 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !72, !nonnull !37, !align !56 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 5 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !30   ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
end_hunk_0
