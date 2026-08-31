Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/String?download=true
inline.NumInlined: 734
inline.NumDeleted: 346
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5folly8errnoStrB5cxx11Ei:bb.a
  br i1 %i.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  br i1 %i.v, label %bb.h, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.g
  br i1 %i.v, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.w = load i64, ptr %i.q, align 8, !tbaa !25   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %.not21.i.i = icmp eq ptr %2, %0
  br i1 %.not21.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEOS4_.exit, label %bb.i, !prof !30

bb.i:                                             ; preds = %bb.h
  switch i64 %i.w, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.y = load i8, ptr %i.u, align 1, !tbaa !12
  store i8 %i.y, ptr %i.s, align 1, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %i.u, i64 %i.w, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.z = load i64, ptr %i.q, align 8, !tbaa !25   ; 2 uses
  store i64 %i.z, ptr %i.e, align 8, !tbaa !25
  %i.aa = load ptr, ptr %0, align 8, !tbaa !28
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z
  store i8 0, ptr %i.ab, align 1, !tbaa !12
  %.pre.i.i = load ptr, ptr %2, align 8, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEOS4_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr %i.u, ptr %0, align 8, !tbaa !28
  %i.ac = load <2 x i64>, ptr %i.q, align 8, !tbaa !12
  store <2 x i64> %i.ac, ptr %i.e, align 8, !tbaa !12
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ad = load i64, ptr %i.d, align 8, !tbaa !12
  store ptr %i.u, ptr %0, align 8, !tbaa !28
  %i.ae = load <2 x i64>, ptr %i.q, align 8, !tbaa !12
  store <2 x i64> %i.ae, ptr %i.e, align 8, !tbaa !12
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.s, ptr %2, align 8, !tbaa !28
  store i64 %i.ad, ptr %i.g, align 8, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEOS4_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.g, ptr %2, align 8, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEOS4_.exit: ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.l, %bb.m
  %i.af = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.s, %bb.l ], [ %i.g, %bb.m ], [ %i.u, %bb.h ]
  store i64 0, ptr %i.q, align 8, !tbaa !25
  store i8 0, ptr %i.af, align 1, !tbaa !12
  %i.ag = load ptr, ptr %2, align 8, !tbaa !28    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.g
  br i1 %i.ah, label %"_ZN5folly6detail14ScopeGuardImplIZNS_8errnoStrB5cxx11EiE3$_0Lb1EED2Ev.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEOS4_.exit
  %i.ai = load i64, ptr %i.g, align 8, !tbaa !12
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #30
  br label %"_ZN5folly6detail14ScopeGuardImplIZNS_8errnoStrB5cxx11EiE3$_0Lb1EED2Ev.exit"

"_ZN5folly6detail14ScopeGuardImplIZNS_8errnoStrB5cxx11EiE3$_0Lb1EED2Ev.exit": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  store i32 %i.c, ptr %i.b, align 4, !tbaa !85
  ret void

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %.noexc11.i.i, %.noexc.i.i, %.noexc.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.al = load ptr, ptr %0, align 8, !tbaa !28    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.d
  br i1 %i.am, label %"_ZN5folly6detail14ScopeGuardImplIZNS_8errnoStrB5cxx11EiE3$_0Lb1EED2Ev.exit16", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.n
  %i.an = load i64, ptr %i.d, align 8, !tbaa !12
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #30
  br label %"_ZN5folly6detail14ScopeGuardImplIZNS_8errnoStrB5cxx11EiE3$_0Lb1EED2Ev.exit16"

"_ZN5folly6detail14ScopeGuardImplIZNS_8errnoStrB5cxx11EiE3$_0Lb1EED2Ev.exit16": ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  store i32 %i.c, ptr %i.b, align 4, !tbaa !85
  resume { ptr, i32 } %i.ak
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #20

; Function Attrs: nounwind
declare ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5folly12toLowerAsciiEPcm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #21 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 3
  %.sroa.speculated37 = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.b) ; 2 uses
  %.not = icmp eq i64 %.sroa.speculated37, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw nsw i64 4, %.sroa.speculated37
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.c) ; 3 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.d = load i8, ptr %0, align 1, !tbaa !12      ; 3 uses
  %narrow.i = add i8 %i.d, 37
  %i.e = and i8 %narrow.i, 126
  %narrow9.i = add nuw i8 %i.e, 26
  %i.f = xor i8 %i.d, -1
  %i.g = and i8 %narrow9.i, %i.f
  %i.h = lshr i8 %i.g, 2
  %i.i = and i8 %i.h, 32
  %i.j = add i8 %i.i, %i.d
  store i8 %i.j, ptr %0, align 1, !tbaa !12
  %exitcond.not = icmp samesign ult i64 %.sroa.speculated, 2
  br i1 %exitcond.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !12    ; 3 uses
  %narrow.i.1 = add i8 %i.l, 37
  %i.m = and i8 %narrow.i.1, 126
  %narrow9.i.1 = add nuw i8 %i.m, 26
  %i.n = xor i8 %i.l, -1
  %i.o = and i8 %narrow9.i.1, %i.n
  %i.p = lshr i8 %i.o, 2
  %i.q = and i8 %i.p, 32
  %i.r = add i8 %i.q, %i.l
  store i8 %i.r, ptr %i.k, align 1, !tbaa !12
  %exitcond.not.1 = icmp eq i64 %.sroa.speculated, 2
  br i1 %exitcond.not.1, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !12    ; 3 uses
  %narrow.i.2 = add i8 %i.t, 37
  %i.u = and i8 %narrow.i.2, 126
  %narrow9.i.2 = add nuw i8 %i.u, 26
  %i.v = xor i8 %i.t, -1
  %i.w = and i8 %narrow9.i.2, %i.v
  %i.x = lshr i8 %i.w, 2
  %i.y = and i8 %i.x, 32
  %i.z = add i8 %i.y, %i.t
  store i8 %i.z, ptr %i.s, align 1, !tbaa !12
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ %umax, %bb.d ], [ %umax, %bb.c ], [ %umax, %bb.b ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %.1 ; 3 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = and i64 %i.ab, 7
  %.not26 = icmp eq i64 %i.ac, 0
  br i1 %.not26, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.ad = add nuw nsw i64 %.1, 4                  ; 2 uses
  %.not27 = icmp ugt i64 %i.ad, %1
  br i1 %.not27, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = load i32, ptr %i.aa, align 4, !tbaa !85 ; 3 uses
  %i.af = and i32 %i.ae, 2139062143
  %i.ag = add nuw i32 %i.af, 623191333
  %i.ah = and i32 %i.ag, 2139062142
  %i.ai = add nuw i32 %i.ah, 437918234
  %i.aj = xor i32 %i.ae, -1
  %i.ak = and i32 %i.ai, %i.aj
  %i.al = lshr i32 %i.ak, 2
  %i.am = and i32 %i.al, 538976288
  %i.an = add i32 %i.am, %i.ae
  store i32 %i.an, ptr %i.aa, align 4, !tbaa !85
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %.loopexit
  %.2 = phi i64 [ %i.ad, %bb.f ], [ %.1, %bb.e ], [ %.1, %.loopexit ] ; 3 uses
  %i.ao = add nuw nsw i64 %.2, 8                  ; 2 uses
  %.not2851 = icmp ugt i64 %i.ao, %1
  br i1 %.not2851, label %.preheader50, label %.lr.ph

.preheader50:                                     ; preds = %.lr.ph, %bb.g
  %.3.lcssa = phi i64 [ %.2, %bb.g ], [ %i.aq, %.lr.ph ] ; 3 uses
  %i.ap = add nuw i64 %.3.lcssa, 4                ; 2 uses
  %.not2953 = icmp ugt i64 %i.ap, %1
  br i1 %.not2953, label %.preheader, label %.lr.ph55

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %i.aq = phi i64 [ %i.bc, %.lr.ph ], [ %i.ao, %bb.g ] ; 3 uses
  %.352 = phi i64 [ %i.aq, %.lr.ph ], [ %.2, %bb.g ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %.352 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !89 ; 3 uses
  %i.at = and i64 %i.as, 9187201950435737471
  %i.au = add nuw i64 %i.at, 2676586395008836901
  %i.av = and i64 %i.au, 9187201950435737470
  %i.aw = add nuw i64 %i.av, 1880844493789993498
  %i.ax = xor i64 %i.as, -1
  %i.ay = and i64 %i.aw, %i.ax
  %i.az = lshr i64 %i.ay, 2
  %i.ba = and i64 %i.az, 2314885530818453536
  %i.bb = add i64 %i.ba, %i.as
  store i64 %i.bb, ptr %i.ar, align 8, !tbaa !89
  %i.bc = add i64 %i.aq, 8                        ; 2 uses
  %.not28 = icmp ugt i64 %i.bc, %1
  br i1 %.not28, label %.preheader50, label %.lr.ph, !llvm.loop !90

.preheader:                                       ; preds = %.lr.ph55, %.preheader50
  %.4.lcssa = phi i64 [ %.3.lcssa, %.preheader50 ], [ %52, %.lr.ph55 ] ; 7 uses
  %i.bd = icmp ult i64 %.4.lcssa, %1
  br i1 %i.bd, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %2 = sub nuw i64 %1, %.4.lcssa                  ; 7 uses
  %min.iters.check = icmp ult i64 %2, 16
  br i1 %min.iters.check, label %.lr.ph58.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check70 = icmp ult i64 %2, 128
  br i1 %min.iters.check70, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %3 = and i64 %2, 112
  %n.vec = and i64 %2, -128                       ; 4 uses
  %4 = add i64 %.4.lcssa, %n.vec
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 %.4.lcssa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 %index ; 5 uses
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %wide.load = load <32 x i8>, ptr %6, align 1, !tbaa !12 ; 3 uses
  %wide.load71 = load <32 x i8>, ptr %7, align 1, !tbaa !12 ; 3 uses
  %wide.load72 = load <32 x i8>, ptr %8, align 1, !tbaa !12 ; 3 uses
  %wide.load73 = load <32 x i8>, ptr %i.be, align 1, !tbaa !12 ; 3 uses
  %9 = add <32 x i8> %wide.load, splat (i8 37)
  %10 = add <32 x i8> %wide.load71, splat (i8 37)
  %11 = add <32 x i8> %wide.load72, splat (i8 37)
  %12 = add <32 x i8> %wide.load73, splat (i8 37)
  %13 = and <32 x i8> %9, splat (i8 126)
  %14 = and <32 x i8> %10, splat (i8 126)
  %15 = and <32 x i8> %11, splat (i8 126)
  %16 = and <32 x i8> %12, splat (i8 126)
  %17 = add nuw <32 x i8> %13, splat (i8 26)
  %18 = add nuw <32 x i8> %14, splat (i8 26)
  %19 = add nuw <32 x i8> %15, splat (i8 26)
  %20 = add nuw <32 x i8> %16, splat (i8 26)
  %21 = xor <32 x i8> %wide.load, splat (i8 -1)
  %22 = xor <32 x i8> %wide.load71, splat (i8 -1)
  %23 = xor <32 x i8> %wide.load72, splat (i8 -1)
  %24 = xor <32 x i8> %wide.load73, splat (i8 -1)
  %25 = and <32 x i8> %17, %21
  %26 = and <32 x i8> %18, %22
  %27 = and <32 x i8> %19, %23
  %28 = and <32 x i8> %20, %24
  %29 = lshr <32 x i8> %25, splat (i8 2)
  %30 = lshr <32 x i8> %26, splat (i8 2)
  %31 = lshr <32 x i8> %27, splat (i8 2)
  %32 = lshr <32 x i8> %28, splat (i8 2)
  %33 = and <32 x i8> %29, splat (i8 32)
  %34 = and <32 x i8> %30, splat (i8 32)
  %35 = and <32 x i8> %31, splat (i8 32)
  %36 = and <32 x i8> %32, splat (i8 32)
  %37 = add <32 x i8> %33, %wide.load
  %38 = add <32 x i8> %34, %wide.load71
  %39 = add <32 x i8> %35, %wide.load72
  %40 = add <32 x i8> %36, %wide.load73
  store <32 x i8> %37, ptr %6, align 1, !tbaa !12
  store <32 x i8> %38, ptr %7, align 1, !tbaa !12
  store <32 x i8> %39, ptr %8, align 1, !tbaa !12
  store <32 x i8> %40, ptr %i.be, align 1, !tbaa !12
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %41 = icmp eq i64 %index.next, %n.vec
  br i1 %41, label %middle.block, label %vector.body, !llvm.loop !91

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %3, 0
  br i1 %min.epilog.iters.check, label %.lr.ph58.preheader, label %vec.epilog.ph, !prof !94

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec74 = and i64 %2, -16                      ; 3 uses
  %42 = add i64 %.4.lcssa, %n.vec74
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 %.4.lcssa
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index75 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next77, %vec.epilog.vector.body ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %43, i64 %index75 ; 2 uses
  %wide.load76 = load <16 x i8>, ptr %i.bf, align 1, !tbaa !12 ; 3 uses
  %44 = add <16 x i8> %wide.load76, splat (i8 37)
  %45 = and <16 x i8> %44, splat (i8 126)
  %46 = add nuw <16 x i8> %45, splat (i8 26)
  %47 = xor <16 x i8> %wide.load76, splat (i8 -1)
  %48 = and <16 x i8> %46, %47
  %49 = lshr <16 x i8> %48, splat (i8 2)
  %50 = and <16 x i8> %49, splat (i8 32)
  %51 = add <16 x i8> %50, %wide.load76
  store <16 x i8> %51, ptr %i.bf, align 1, !tbaa !12
  %index.next77 = add nuw i64 %index75, 16        ; 2 uses
  %i.bg = icmp eq i64 %index.next77, %n.vec74
  br i1 %i.bg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !95

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n78 = icmp eq i64 %2, %n.vec74
  br i1 %cmp.n78, label %._crit_edge, label %.lr.ph58.preheader

.lr.ph58.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.557.ph = phi i64 [ %.4.lcssa, %iter.check ], [ %4, %vec.epilog.iter.check ], [ %42, %vec.epilog.middle.block ]
  br label %.lr.ph58

.lr.ph55:                                         ; preds = %.preheader50, %.lr.ph55
  %52 = phi i64 [ %i.bi, %.lr.ph55 ], [ %i.ap, %.preheader50 ] ; 3 uses
  %.454 = phi i64 [ %52, %.lr.ph55 ], [ %.3.lcssa, %.preheader50 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %.454 ; 2 uses
  %53 = load i32, ptr %i.bh, align 4, !tbaa !85   ; 3 uses
  %54 = and i32 %53, 2139062143
  %55 = add nuw i32 %54, 623191333
  %56 = and i32 %55, 2139062142
  %57 = add nuw i32 %56, 437918234
  %58 = xor i32 %53, -1
  %59 = and i32 %57, %58
  %60 = lshr i32 %59, 2
  %61 = and i32 %60, 538976288
  %62 = add i32 %61, %53
  store i32 %62, ptr %i.bh, align 4, !tbaa !85
  %i.bi = add i64 %52, 4                          ; 2 uses
  %.not29 = icmp ugt i64 %i.bi, %1
  br i1 %.not29, label %.preheader, label %.lr.ph55, !llvm.loop !96

.lr.ph58:                                         ; preds = %.lr.ph58.preheader, %.lr.ph58
  %.557 = phi i64 [ %63, %.lr.ph58 ], [ %.557.ph, %.lr.ph58.preheader ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %.557 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !12  ; 3 uses
  %narrow.i31.a = add i8 %i.bk, 37
  %i.bl = and i8 %narrow.i31.a, 126
  %narrow9.i32.a = add nuw i8 %i.bl, 26
  %i.bm = xor i8 %i.bk, -1
  %i.bn = and i8 %narrow9.i32.a, %i.bm
  %i.bo = lshr i8 %i.bn, 2
  %i.bp = and i8 %i.bo, 32
  %i.bq = add i8 %i.bp, %i.bk
  store i8 %i.bq, ptr %i.bj, align 1, !tbaa !12
  %63 = add nuw i64 %.557, 1                      ; 2 uses
  %exitcond61.not = icmp eq i64 %63, %1
  br i1 %exitcond61.not, label %._crit_edge, label %.lr.ph58, !llvm.loop !97

._crit_edge:                                      ; preds = %.lr.ph58, %middle.block, %vec.epilog.middle.block, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef readonly align 8 captures(none) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !28     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c
  invoke void @_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE15simdSplitByCharISt6vectorINS_5RangeIPKcEESaISC_EEEEvcSC_RT_(i8 noundef signext 10, ptr %i.a, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !98     ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !101  ; 6 uses
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.j ; 3 uses
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !52   ; 4 uses
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 -8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !102  ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.q = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr i64 %i.r, 2                         ; 2 uses
  %i.t = icmp sgt i64 %i.s, 0
  br i1 %i.t, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.b
  %i.u = and i64 %i.r, -4
  %scevgep.i.i.i = getelementptr i8, ptr %i.m, i64 %i.u ; 2 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.preheader.i.i.i
  %.044.i.i.i = phi i64 [ %i.z, %bb.f ], [ %i.s, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.02943.i.i.i = phi ptr [ %i.y, %bb.f ], [ %i.m, %.lr.ph.preheader.i.i.i ] ; 9 uses
  %.029.val32.i.i.i = load i8, ptr %.02943.i.i.i, align 1, !tbaa !12
  switch i8 %.029.val32.i.i.i, label %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SA_SA_T0_.exit" [
    i8 32, label %bb.c
    i8 9, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.02943.i.i.i, i64 1
  %.val31.i.i.i = load i8, ptr %i.v, align 1, !tbaa !12
  switch i8 %.val31.i.i.i, label %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SA_SA_T0_.exit.loopexit.split.loop.exit180" [
    i8 32, label %bb.d
    i8 9, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.02943.i.i.i, i64 2
  %.val30.i.i.i = load i8, ptr %i.w, align 1, !tbaa !12
  switch i8 %.val30.i.i.i, label %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SA_SA_T0_.exit.loopexit.split.loop.exit178" [
    i8 32, label %bb.e
    i8 9, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %.02943.i.i.i, i64 3
  %.val.i.i.i = load i8, ptr %i.x, align 1, !tbaa !12
  switch i8 %.val.i.i.i, label %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SA_SA_T0_.exit.loopexit.split.loop.exit" [
    i8 32, label %bb.f
    i8 9, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.02943.i.i.i, i64 4
  %i.z = add nsw i64 %.044.i.i.i, -1
  %i.aa = icmp sgt i64 %.044.i.i.i, 1
  br i1 %i.aa, label %.lr.ph.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !103

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.f
  %.pre.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.b
  %.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.q, %bb.b ]
  %.029.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.m, %bb.b ] ; 5 uses
  %i.ab = sub i64 %i.p, %.pre-phi.i.i.i
  switch i64 %i.ab, label %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SA_SA_T0_.exit.thread" [
    i64 3, label %bb.g
    i64 2, label %bb.i
    i64 1, label %bb.k
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %.029.val.i.i.i = load i8, ptr %.029.lcssa.i.i.i, align 1, !tbaa !12
  switch i8 %.029.val.i.i.i, label %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SA_SA_T0_.exit" [
    i8 32, label %bb.h
    i8 9, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i, i64 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i
  %.1.i.i.i = phi ptr [ %i.ac, %bb.h ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %.1.val.i.i.i = load i8, ptr %.1.i.i.i, align 1, !tbaa !12
  switch i8 %.1.val.i.i.i, label %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SA_SA_T0_.exit" [
    i8 32, label %bb.j
    i8 9, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i
  %.2.i.i.i = phi ptr [ %i.ad, %bb.j ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.2.val.i.i.i = load i8, ptr %.2.i.i.i, align 1, !tbaa !12
  switch i8 %.2.val.i.i.i, label %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SA_SA_T0_.exit" [
    i8 32, label %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SA_SA_T0_.exit.thread"
    i8 9, label %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SA_SA_T0_.exit.thread"
  ]

"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SA_SA_T0_.exit.loopexit.split.loop.exit": ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %.02943.i.i.i, i64 3
  br label %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SA_SA_T0_.exit"

"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SA_SA_T0_.exit.loopexit.split.loop.exit178": ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.02943.i.i.i, i64 2
  br label %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SA_SA_T0_.exit"

"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SA_SA_T0_.exit.loopexit.split.loop.exit180": ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %.02943.i.i.i, i64 1
  br label %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SA_SA_T0_.exit"

"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SA_SA_T0_.exit": ; preds = %.lr.ph.i.i.i, %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SA_SA_T0_.exit.loopexit.split.loop.exit", %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SA_SA_T0_.exit.loopexit.split.loop.exit178", %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SA_SA_T0_.exit.loopexit.split.loop.exit180", %bb.k, %bb.i, %bb.g
  %.028.i.i.i = phi ptr [ %.1.i.i.i, %bb.i ], [ %.029.lcssa.i.i.i, %bb.g ], [ %.2.i.i.i, %bb.k ], [ %i.ag, %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SA_SA_T0_.exit.loopexit.split.loop.exit180" ], [ %i.af, %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SA_SA_T0_.exit.loopexit.split.loop.exit178" ], [ %i.ae, %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SA_SA_T0_.exit.loopexit.split.loop.exit" ], [ %.02943.i.i.i, %.lr.ph.i.i.i ]
  %i.ah = icmp eq ptr %.028.i.i.i, %i.o
  br i1 %i.ah, label %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SA_SA_T0_.exit.thread", label %bb.m

"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SA_SA_T0_.exit.thread": ; preds = %bb.k, %bb.k, %._crit_edge.i.i.i, %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SA_SA_T0_.exit"
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SA_SA_T0_.exit.thread", %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SA_SA_T0_.exit"
  %i.aj = load ptr, ptr %i.e, align 8, !tbaa !52  ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !102 ; 2 uses
  %i.am = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.an = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.ao = sub i64 %i.am, %i.an                    ; 2 uses
  %i.ap = ashr i64 %i.ao, 2                       ; 2 uses
  %i.aq = icmp sgt i64 %i.ap, 0
  br i1 %i.aq, label %.lr.ph.preheader.i.i.i45, label %._crit_edge.i.i.i36

.lr.ph.preheader.i.i.i45:                         ; preds = %bb.m
  %i.ar = and i64 %i.ao, -4
  %scevgep.i.i.i46 = getelementptr i8, ptr %i.aj, i64 %i.ar ; 2 uses
  br label %.lr.ph.i.i.i47

.lr.ph.i.i.i47:                                   ; preds = %bb.q, %.lr.ph.preheader.i.i.i45
  %.044.i.i.i48 = phi i64 [ %i.aw, %bb.q ], [ %i.ap, %.lr.ph.preheader.i.i.i45 ] ; 2 uses
  %.02943.i.i.i49 = phi ptr [ %i.av, %bb.q ], [ %i.aj, %.lr.ph.preheader.i.i.i45 ] ; 9 uses
  %.029.val32.i.i.i50 = load i8, ptr %.02943.i.i.i49, align 1, !tbaa !12
  switch i8 %.029.val32.i.i.i50, label %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1ET_SA_SA_T0_.exit" [
    i8 32, label %bb.n
    i8 9, label %bb.n
  ]

bb.n:                                             ; preds = %.lr.ph.i.i.i47, %.lr.ph.i.i.i47
  %i.as = getelementptr inbounds nuw i8, ptr %.02943.i.i.i49, i64 1
  %.val31.i.i.i51 = load i8, ptr %i.as, align 1, !tbaa !12
  switch i8 %.val31.i.i.i51, label %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1ET_SA_SA_T0_.exit.loopexit.split.loop.exit188" [
    i8 32, label %bb.o
    i8 9, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n, %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %.02943.i.i.i49, i64 2
  %.val30.i.i.i52 = load i8, ptr %i.at, align 1, !tbaa !12
  switch i8 %.val30.i.i.i52, label %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1ET_SA_SA_T0_.exit.loopexit.split.loop.exit186" [
    i8 32, label %bb.p
    i8 9, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %.02943.i.i.i49, i64 3
  %.val.i.i.i53 = load i8, ptr %i.au, align 1, !tbaa !12
  switch i8 %.val.i.i.i53, label %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1ET_SA_SA_T0_.exit.loopexit.split.loop.exit" [
    i8 32, label %bb.q
    i8 9, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %.02943.i.i.i49, i64 4
  %i.aw = add nsw i64 %.044.i.i.i48, -1
  %i.ax = icmp sgt i64 %.044.i.i.i48, 1
  br i1 %i.ax, label %.lr.ph.i.i.i47, label %._crit_edge.loopexit.i.i.i54, !llvm.loop !104

._crit_edge.loopexit.i.i.i54:                     ; preds = %bb.q
  %.pre.i.i.i55 = ptrtoint ptr %scevgep.i.i.i46 to i64
  br label %._crit_edge.i.i.i36

._crit_edge.i.i.i36:                              ; preds = %._crit_edge.loopexit.i.i.i54, %bb.m
  %.pre-phi.i.i.i37 = phi i64 [ %.pre.i.i.i55, %._crit_edge.loopexit.i.i.i54 ], [ %i.an, %bb.m ]
  %.029.lcssa.i.i.i38 = phi ptr [ %scevgep.i.i.i46, %._crit_edge.loopexit.i.i.i54 ], [ %i.aj, %bb.m ] ; 5 uses
  %i.ay = sub i64 %i.am, %.pre-phi.i.i.i37
  switch i64 %i.ay, label %_ZN5folly5RangeIPNS0_IPKcEEE5eraseES4_S4_.exit [
    i64 3, label %bb.r
    i64 2, label %bb.t
    i64 1, label %bb.v
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i36
  %.029.val.i.i.i44 = load i8, ptr %.029.lcssa.i.i.i38, align 1, !tbaa !12
  switch i8 %.029.val.i.i.i44, label %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1ET_SA_SA_T0_.exit" [
    i8 32, label %bb.s
    i8 9, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r, %bb.r
  %i.az = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i38, i64 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i.i.i36
  %.1.i.i.i42 = phi ptr [ %i.az, %bb.s ], [ %.029.lcssa.i.i.i38, %._crit_edge.i.i.i36 ] ; 3 uses
  %.1.val.i.i.i43 = load i8, ptr %.1.i.i.i42, align 1, !tbaa !12
  switch i8 %.1.val.i.i.i43, label %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1ET_SA_SA_T0_.exit" [
    i8 32, label %bb.u
    i8 9, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t, %bb.t
  %i.ba = getelementptr inbounds nuw i8, ptr %.1.i.i.i42, i64 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge.i.i.i36
  %.2.i.i.i39 = phi ptr [ %i.ba, %bb.u ], [ %.029.lcssa.i.i.i38, %._crit_edge.i.i.i36 ] ; 2 uses
  %.2.val.i.i.i40 = load i8, ptr %.2.i.i.i39, align 1, !tbaa !12
  switch i8 %.2.val.i.i.i40, label %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1ET_SA_SA_T0_.exit" [
    i8 32, label %_ZN5folly5RangeIPNS0_IPKcEEE5eraseES4_S4_.exit
    i8 9, label %_ZN5folly5RangeIPNS0_IPKcEEE5eraseES4_S4_.exit
  ]

"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1ET_SA_SA_T0_.exit.loopexit.split.loop.exit": ; preds = %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %.02943.i.i.i49, i64 3
  br label %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1ET_SA_SA_T0_.exit"

"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1ET_SA_SA_T0_.exit.loopexit.split.loop.exit186": ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %.02943.i.i.i49, i64 2
  br label %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1ET_SA_SA_T0_.exit"

"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1ET_SA_SA_T0_.exit.loopexit.split.loop.exit188": ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %.02943.i.i.i49, i64 1
  br label %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1ET_SA_SA_T0_.exit"

"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1ET_SA_SA_T0_.exit": ; preds = %.lr.ph.i.i.i47, %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1ET_SA_SA_T0_.exit.loopexit.split.loop.exit", %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1ET_SA_SA_T0_.exit.loopexit.split.loop.exit186", %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1ET_SA_SA_T0_.exit.loopexit.split.loop.exit188", %bb.v, %bb.t, %bb.r
  %.028.i.i.i41 = phi ptr [ %.1.i.i.i42, %bb.t ], [ %.029.lcssa.i.i.i38, %bb.r ], [ %.2.i.i.i39, %bb.v ], [ %i.bd, %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1ET_SA_SA_T0_.exit.loopexit.split.loop.exit188" ], [ %i.bc, %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1ET_SA_SA_T0_.exit.loopexit.split.loop.exit186" ], [ %i.bb, %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1ET_SA_SA_T0_.exit.loopexit.split.loop.exit" ], [ %.02943.i.i.i49, %.lr.ph.i.i.i47 ]
  %i.be = icmp eq ptr %.028.i.i.i41, %i.al
  br i1 %i.be, label %_ZN5folly5RangeIPNS0_IPKcEEE5eraseES4_S4_.exit, label %bb.w

_ZN5folly5RangeIPNS0_IPKcEEE5eraseES4_S4_.exit:   ; preds = %bb.v, %bb.v, %._crit_edge.i.i.i36, %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1ET_SA_SA_T0_.exit"
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.w

bb.w:                                             ; preds = %_ZN5folly5RangeIPNS0_IPKcEEE5eraseES4_S4_.exit, %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1ET_SA_SA_T0_.exit"
  %.sroa.0.0 = phi ptr [ %i.bf, %_ZN5folly5RangeIPNS0_IPKcEEE5eraseES4_S4_.exit ], [ %i.e, %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1ET_SA_SA_T0_.exit" ] ; 11 uses
  %.sroa.0.0214 = ptrtoaddr ptr %.sroa.0.0 to i64
  %.not141 = icmp eq ptr %.sroa.0.0, %i.g
  br i1 %.not141, label %._crit_edge150.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w, %bb.ah
  %.0144 = phi ptr [ %i.ce, %bb.ah ], [ %.sroa.0.0, %bb.w ] ; 3 uses
  %.0109143 = phi i64 [ %.1110, %bb.ah ], [ 0, %bb.w ] ; 2 uses
  %.0111142 = phi i64 [ %.1112, %bb.ah ], [ -1, %bb.w ] ; 2 uses
  %i.bg = load ptr, ptr %.0144, align 8, !tbaa !52 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0144, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !102 ; 2 uses
  %i.bj = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bk = ptrtoint ptr %i.bg to i64               ; 3 uses
  %i.bl = sub i64 %i.bj, %i.bk                    ; 3 uses
  %i.bm = ashr i64 %i.bl, 2                       ; 2 uses
  %i.bn = icmp sgt i64 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.preheader.i.i.i65, label %._crit_edge.i.i.i56

.lr.ph.preheader.i.i.i65:                         ; preds = %.lr.ph
  %i.bo = and i64 %i.bl, -4
  %scevgep.i.i.i66 = getelementptr i8, ptr %i.bg, i64 %i.bo ; 2 uses
  br label %.lr.ph.i.i.i67

.lr.ph.i.i.i67:                                   ; preds = %bb.aa, %.lr.ph.preheader.i.i.i65
  %.044.i.i.i68 = phi i64 [ %i.bt, %bb.aa ], [ %i.bm, %.lr.ph.preheader.i.i.i65 ] ; 2 uses
  %.02943.i.i.i69 = phi ptr [ %i.bs, %bb.aa ], [ %i.bg, %.lr.ph.preheader.i.i.i65 ] ; 9 uses
  %.029.val32.i.i.i70 = load i8, ptr %.02943.i.i.i69, align 1, !tbaa !12
  switch i8 %.029.val32.i.i.i70, label %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_2ET_SA_SA_T0_.exit" [
    i8 32, label %bb.x
    i8 9, label %bb.x
  ]

bb.x:                                             ; preds = %.lr.ph.i.i.i67, %.lr.ph.i.i.i67
  %i.bp = getelementptr inbounds nuw i8, ptr %.02943.i.i.i69, i64 1
  %.val31.i.i.i71 = load i8, ptr %i.bp, align 1, !tbaa !12
  switch i8 %.val31.i.i.i71, label %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_2ET_SA_SA_T0_.exit.loopexit.split.loop.exit196" [
    i8 32, label %bb.y
    i8 9, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x, %bb.x
  %i.bq = getelementptr inbounds nuw i8, ptr %.02943.i.i.i69, i64 2
  %.val30.i.i.i72 = load i8, ptr %i.bq, align 1, !tbaa !12
  switch i8 %.val30.i.i.i72, label %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_2ET_SA_SA_T0_.exit.loopexit.split.loop.exit194" [
    i8 32, label %bb.z
    i8 9, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y, %bb.y
  %i.br = getelementptr inbounds nuw i8, ptr %.02943.i.i.i69, i64 3
  %.val.i.i.i73 = load i8, ptr %i.br, align 1, !tbaa !12
  switch i8 %.val.i.i.i73, label %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_2ET_SA_SA_T0_.exit.loopexit.split.loop.exit" [
    i8 32, label %bb.aa
    i8 9, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z
  %i.bs = getelementptr inbounds nuw i8, ptr %.02943.i.i.i69, i64 4
  %i.bt = add nsw i64 %.044.i.i.i68, -1
  %i.bu = icmp sgt i64 %.044.i.i.i68, 1
  br i1 %i.bu, label %.lr.ph.i.i.i67, label %._crit_edge.loopexit.i.i.i74, !llvm.loop !105

._crit_edge.loopexit.i.i.i74:                     ; preds = %bb.aa
  %.pre.i.i.i75 = ptrtoint ptr %scevgep.i.i.i66 to i64
  br label %._crit_edge.i.i.i56

._crit_edge.i.i.i56:                              ; preds = %._crit_edge.loopexit.i.i.i74, %.lr.ph
  %.pre-phi.i.i.i57 = phi i64 [ %.pre.i.i.i75, %._crit_edge.loopexit.i.i.i74 ], [ %i.bk, %.lr.ph ]
  %.029.lcssa.i.i.i58 = phi ptr [ %scevgep.i.i.i66, %._crit_edge.loopexit.i.i.i74 ], [ %i.bg, %.lr.ph ] ; 5 uses
  %i.bv = sub i64 %i.bj, %.pre-phi.i.i.i57
  switch i64 %i.bv, label %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_2ET_SA_SA_T0_.exit.thread" [
    i64 3, label %bb.ab
    i64 2, label %bb.ad
    i64 1, label %bb.af
  ]

bb.ab:                                            ; preds = %._crit_edge.i.i.i56
  %.029.val.i.i.i64 = load i8, ptr %.029.lcssa.i.i.i58, align 1, !tbaa !12
  switch i8 %.029.val.i.i.i64, label %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_2ET_SA_SA_T0_.exit" [
    i8 32, label %bb.ac
    i8 9, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab, %bb.ab
  %i.bw = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i58, i64 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge.i.i.i56
  %.1.i.i.i62 = phi ptr [ %i.bw, %bb.ac ], [ %.029.lcssa.i.i.i58, %._crit_edge.i.i.i56 ] ; 3 uses
  %.1.val.i.i.i63 = load i8, ptr %.1.i.i.i62, align 1, !tbaa !12
  switch i8 %.1.val.i.i.i63, label %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_2ET_SA_SA_T0_.exit" [
    i8 32, label %bb.ae
    i8 9, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ad
  %i.bx = getelementptr inbounds nuw i8, ptr %.1.i.i.i62, i64 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %._crit_edge.i.i.i56
  %.2.i.i.i59 = phi ptr [ %i.bx, %bb.ae ], [ %.029.lcssa.i.i.i58, %._crit_edge.i.i.i56 ] ; 2 uses
  %.2.val.i.i.i60 = load i8, ptr %.2.i.i.i59, align 1, !tbaa !12
  switch i8 %.2.val.i.i.i60, label %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_2ET_SA_SA_T0_.exit" [
    i8 32, label %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_2ET_SA_SA_T0_.exit.thread"
    i8 9, label %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_2ET_SA_SA_T0_.exit.thread"
  ]

"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_2ET_SA_SA_T0_.exit.loopexit.split.loop.exit": ; preds = %bb.z
  %i.by = getelementptr inbounds nuw i8, ptr %.02943.i.i.i69, i64 3
  br label %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_2ET_SA_SA_T0_.exit"

"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_2ET_SA_SA_T0_.exit.loopexit.split.loop.exit194": ; preds = %bb.y
  %i.bz = getelementptr inbounds nuw i8, ptr %.02943.i.i.i69, i64 2
  br label %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_2ET_SA_SA_T0_.exit"

"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_2ET_SA_SA_T0_.exit.loopexit.split.loop.exit196": ; preds = %bb.x
  %i.ca = getelementptr inbounds nuw i8, ptr %.02943.i.i.i69, i64 1
  br label %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_2ET_SA_SA_T0_.exit"

"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_2ET_SA_SA_T0_.exit": ; preds = %.lr.ph.i.i.i67, %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_2ET_SA_SA_T0_.exit.loopexit.split.loop.exit", %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_2ET_SA_SA_T0_.exit.loopexit.split.loop.exit194", %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_2ET_SA_SA_T0_.exit.loopexit.split.loop.exit196", %bb.af, %bb.ad, %bb.ab
  %.028.i.i.i61 = phi ptr [ %.1.i.i.i62, %bb.ad ], [ %.029.lcssa.i.i.i58, %bb.ab ], [ %.2.i.i.i59, %bb.af ], [ %i.ca, %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_2ET_SA_SA_T0_.exit.loopexit.split.loop.exit196" ], [ %i.bz, %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_2ET_SA_SA_T0_.exit.loopexit.split.loop.exit194" ], [ %i.by, %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_2ET_SA_SA_T0_.exit.loopexit.split.loop.exit" ], [ %.02943.i.i.i69, %.lr.ph.i.i.i67 ] ; 2 uses
  %.not35 = icmp eq ptr %.028.i.i.i61, %i.bi
  br i1 %.not35, label %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_2ET_SA_SA_T0_.exit.thread", label %bb.ag

bb.ag:                                            ; preds = %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_2ET_SA_SA_T0_.exit"
  %i.cb = ptrtoint ptr %.028.i.i.i61 to i64
  %i.cc = sub i64 %i.cb, %i.bk
  %.sroa.speculated85 = call i64 @llvm.umin.i64(i64 %i.cc, i64 %.0111142)
  %i.cd = freeze i64 %.sroa.speculated85
  br label %bb.ah

"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_2ET_SA_SA_T0_.exit.thread": ; preds = %bb.af, %bb.af, %._crit_edge.i.i.i56, %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_2ET_SA_SA_T0_.exit"
  %.sroa.speculated = call i64 @llvm.umax.i64(i64 %i.bl, i64 %.0109143)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_2ET_SA_SA_T0_.exit.thread"
  %.1112 = phi i64 [ %.0111142, %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_2ET_SA_SA_T0_.exit.thread" ], [ %i.cd, %bb.ag ] ; 3 uses
  %.1110 = phi i64 [ %.sroa.speculated, %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_2ET_SA_SA_T0_.exit.thread" ], [ %.0109143, %bb.ag ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0144, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ce, %i.g
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !106

._crit_edge:                                      ; preds = %bb.ah
  %i.cf = icmp eq i64 %.1112, -1
  %spec.select = select i1 %i.cf, i64 %.1110, i64 %.1112 ; 2 uses
  br label %.lr.ph149

.lr.ph149:                                        ; preds = %._crit_edge, %bb.aj
  %.1147 = phi ptr [ %i.co, %bb.aj ], [ %.sroa.0.0, %._crit_edge ] ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.1147, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !102
  %i.ci = load ptr, ptr %.1147, align 8, !tbaa !52 ; 2 uses
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = icmp ult i64 %i.cl, %spec.select
  br i1 %i.cm, label %bb.ai, label %_ZN5folly5RangeIPKcE5eraseES2_S2_.exit

bb.ai:                                            ; preds = %.lr.ph149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.1147, i8 0, i64 16, i1 false)
  br label %bb.aj

_ZN5folly5RangeIPKcE5eraseES2_S2_.exit:           ; preds = %.lr.ph149
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 %spec.select
  store ptr %i.cn, ptr %.1147, align 8, !tbaa !52
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN5folly5RangeIPKcE5eraseES2_S2_.exit, %bb.ai
  %i.co = getelementptr inbounds nuw i8, ptr %.1147, i64 16 ; 2 uses
  %.not31 = icmp eq ptr %i.co, %i.g
  br i1 %.not31, label %._crit_edge150, label %.lr.ph149, !llvm.loop !107

._crit_edge150.thread:                            ; preds = %bb.w
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.cp, ptr %0, align 8, !tbaa !18, !alias.scope !108
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.cq, align 8, !tbaa !25, !alias.scope !108
  store i8 0, ptr %i.cp, align 8, !tbaa !12, !alias.scope !108
  br label %_ZN5folly4joinIA2_cNS_5RangeIPNS2_IPKcEEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit

._crit_edge150:                                   ; preds = %bb.aj
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.cr, ptr %0, align 8, !tbaa !18, !alias.scope !108
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.cs, align 8, !tbaa !25, !alias.scope !108
  store i8 0, ptr %i.cr, align 8, !tbaa !12, !alias.scope !108
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !102
  %i.cv = load ptr, ptr %.sroa.0.0, align 8, !tbaa !52
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx                    ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16 ; 9 uses
  %.not22.i.i.i = icmp eq ptr %i.cz, %i.g
  br i1 %.not22.i.i.i, label %._crit_edge.i.i.i79, label %iter.check

iter.check:                                       ; preds = %._crit_edge150
  %i.da = add i64 %i.h, -32
  %i.db = sub i64 %i.da, %.sroa.0.0214            ; 3 uses
  %i.dc = lshr i64 %i.db, 4
  %i.dd = add nuw nsw i64 %i.dc, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.db, 48
  br i1 %min.iters.check, label %.lr.ph.i.i.i78.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check215 = icmp ult i64 %i.db, 240
  br i1 %min.iters.check215, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.de = and i64 %i.dd, 12
  %n.vec = and i64 %i.dd, 2305843009213693936     ; 4 uses
  %i.df = shl i64 %n.vec, 4                       ; 2 uses
  %i.dg = getelementptr i8, ptr %i.cz, i64 %i.df
  %i.dh = getelementptr i8, ptr %.sroa.0.0, i64 %i.df
  %i.di = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %i.cy, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i64> [ %i.di, %vector.ph ], [ %i.ed, %vector.body ]
  %vec.phi216 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.ee, %vector.body ]
  %vec.phi217 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.ef, %vector.body ]
  %vec.phi218 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.eg, %vector.body ]
  %i.dj = shl i64 %index, 4                       ; 4 uses
  %next.gep = getelementptr i8, ptr %i.cz, i64 %i.dj
  %i.dk = getelementptr i8, ptr %i.cz, i64 %i.dj
  %next.gep219 = getelementptr i8, ptr %i.dk, i64 64
  %i.dl = getelementptr i8, ptr %i.cz, i64 %i.dj
  %next.gep220 = getelementptr i8, ptr %i.dl, i64 128
  %i.dm = getelementptr i8, ptr %i.cz, i64 %i.dj
  %next.gep221 = getelementptr i8, ptr %i.dm, i64 192
  %wide.vec = load <8 x ptr>, ptr %next.gep, align 8, !tbaa !29 ; 2 uses
  %strided.vec = shufflevector <8 x ptr> %wide.vec, <8 x ptr> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec222 = shufflevector <8 x ptr> %wide.vec, <8 x ptr> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec223 = load <8 x ptr>, ptr %next.gep219, align 8, !tbaa !29 ; 2 uses
  %strided.vec224 = shufflevector <8 x ptr> %wide.vec223, <8 x ptr> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec225 = shufflevector <8 x ptr> %wide.vec223, <8 x ptr> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec226 = load <8 x ptr>, ptr %next.gep220, align 8, !tbaa !29 ; 2 uses
  %strided.vec227 = shufflevector <8 x ptr> %wide.vec226, <8 x ptr> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec228 = shufflevector <8 x ptr> %wide.vec226, <8 x ptr> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec229 = load <8 x ptr>, ptr %next.gep221, align 8, !tbaa !29 ; 2 uses
  %strided.vec230 = shufflevector <8 x ptr> %wide.vec229, <8 x ptr> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec231 = shufflevector <8 x ptr> %wide.vec229, <8 x ptr> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.dn = ptrtoint <4 x ptr> %strided.vec222 to <4 x i64>
  %i.do = ptrtoint <4 x ptr> %strided.vec225 to <4 x i64>
  %i.dp = ptrtoint <4 x ptr> %strided.vec228 to <4 x i64>
  %i.dq = ptrtoint <4 x ptr> %strided.vec231 to <4 x i64>
  %i.dr = ptrtoint <4 x ptr> %strided.vec to <4 x i64>
  %i.ds = ptrtoint <4 x ptr> %strided.vec224 to <4 x i64>
  %i.dt = ptrtoint <4 x ptr> %strided.vec227 to <4 x i64>
  %i.du = ptrtoint <4 x ptr> %strided.vec230 to <4 x i64>
  %i.dv = add <4 x i64> %vec.phi, splat (i64 1)
  %i.dw = add <4 x i64> %vec.phi216, splat (i64 1)
  %i.dx = add <4 x i64> %vec.phi217, splat (i64 1)
  %i.dy = add <4 x i64> %vec.phi218, splat (i64 1)
  %i.dz = add <4 x i64> %i.dv, %i.dn
  %i.ea = add <4 x i64> %i.dw, %i.do
  %i.eb = add <4 x i64> %i.dx, %i.dp
  %i.ec = add <4 x i64> %i.dy, %i.dq
  %i.ed = sub <4 x i64> %i.dz, %i.dr              ; 2 uses
  %i.ee = sub <4 x i64> %i.ea, %i.ds              ; 2 uses
  %i.ef = sub <4 x i64> %i.eb, %i.dt              ; 2 uses
  %i.eg = sub <4 x i64> %i.ec, %i.du              ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.eh = icmp eq i64 %index.next, %n.vec
  br i1 %i.eh, label %middle.block, label %vector.body, !llvm.loop !111

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i64> %i.ee, %i.ed
  %bin.rdx232 = add <4 x i64> %i.ef, %bin.rdx
  %bin.rdx233 = add <4 x i64> %i.eg, %bin.rdx232
  %i.ei = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx233) ; 3 uses
  %cmp.n = icmp eq i64 %i.dd, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i79, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.de, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i78.preheader, label %vec.epilog.ph, !prof !112

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.ei, %vec.epilog.iter.check ], [ %i.cy, %vector.main.loop.iter.check ]
  %n.vec235 = and i64 %i.dd, 2305843009213693948  ; 3 uses
  %i.ej = shl i64 %n.vec235, 4                    ; 2 uses
  %i.ek = getelementptr i8, ptr %i.cz, i64 %i.ej
  %i.el = getelementptr i8, ptr %.sroa.0.0, i64 %i.ej
  %i.em = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index236 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next242, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi237 = phi <4 x i64> [ %i.em, %vec.epilog.ph ], [ %i.es, %vec.epilog.vector.body ]
  %i.en = shl i64 %index236, 4
  %next.gep238 = getelementptr i8, ptr %i.cz, i64 %i.en
  %wide.vec239 = load <8 x ptr>, ptr %next.gep238, align 8, !tbaa !29 ; 2 uses
  %strided.vec240 = shufflevector <8 x ptr> %wide.vec239, <8 x ptr> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec241 = shufflevector <8 x ptr> %wide.vec239, <8 x ptr> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.eo = ptrtoint <4 x ptr> %strided.vec241 to <4 x i64>
  %i.ep = ptrtoint <4 x ptr> %strided.vec240 to <4 x i64>
  %i.eq = add <4 x i64> %vec.phi237, splat (i64 1)
  %i.er = add <4 x i64> %i.eq, %i.eo
  %i.es = sub <4 x i64> %i.er, %i.ep              ; 2 uses
  %index.next242 = add nuw i64 %index236, 4       ; 2 uses
  %i.et = icmp eq i64 %index.next242, %n.vec235
  br i1 %i.et, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !113

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.eu = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.es) ; 2 uses
  %cmp.n243 = icmp eq i64 %i.dd, %n.vec235
  br i1 %cmp.n243, label %._crit_edge.i.i.i79, label %.lr.ph.i.i.i78.preheader

.lr.ph.i.i.i78.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi ptr [ %i.cz, %iter.check ], [ %i.dg, %vec.epilog.iter.check ], [ %i.ek, %vec.epilog.middle.block ]
  %.024.i.i.i.ph = phi ptr [ %.sroa.0.0, %iter.check ], [ %i.dh, %vec.epilog.iter.check ], [ %i.el, %vec.epilog.middle.block ]
  %.01723.i.i.i.ph = phi i64 [ %i.cy, %iter.check ], [ %i.ei, %vec.epilog.iter.check ], [ %i.eu, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i78

.lr.ph.i.i.i78:                                   ; preds = %.lr.ph.i.i.i78.preheader, %.lr.ph.i.i.i78
  %i.ev = phi ptr [ %i.fe, %.lr.ph.i.i.i78 ], [ %.ph, %.lr.ph.i.i.i78.preheader ] ; 3 uses
  %.024.i.i.i = phi ptr [ %i.ev, %.lr.ph.i.i.i78 ], [ %.024.i.i.i.ph, %.lr.ph.i.i.i78.preheader ]
  %.01723.i.i.i = phi i64 [ %i.fd, %.lr.ph.i.i.i78 ], [ %.01723.i.i.i.ph, %.lr.ph.i.i.i78.preheader ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.024.i.i.i, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !102
  %i.ey = load ptr, ptr %i.ev, align 8, !tbaa !52
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = add i64 %.01723.i.i.i, 1
  %i.fc = add i64 %i.fb, %i.ez
  %i.fd = sub i64 %i.fc, %i.fa                    ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ev, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fe, %i.g
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i79, label %.lr.ph.i.i.i78, !llvm.loop !114

._crit_edge.i.i.i79:                              ; preds = %.lr.ph.i.i.i78, %middle.block, %vec.epilog.middle.block, %._crit_edge150
  %.017.lcssa.i.i.i = phi i64 [ %i.cy, %._crit_edge150 ], [ %i.eu, %vec.epilog.middle.block ], [ %i.ei, %middle.block ], [ %i.fd, %.lr.ph.i.i.i78 ]
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.017.lcssa.i.i.i)
          to label %.noexc.i unwind label %bb.ak

.noexc.i:                                         ; preds = %._crit_edge.i.i.i79
  invoke void @_ZN5folly6detail18internalJoinAppendINS_5RangeIPKcEEPS5_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_T0_SE_RT1_(ptr nonnull align 1 dereferenceable(2) @.str.73, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.73, i64 1), ptr noundef nonnull %.sroa.0.0, ptr noundef nonnull %i.k, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN5folly4joinIA2_cNS_5RangeIPNS2_IPKcEEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit unwind label %bb.ak

bb.ak:                                            ; preds = %.noexc.i, %._crit_edge.i.i.i79
  %i.ff = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fg = load ptr, ptr %0, align 8, !tbaa !28, !alias.scope !108 ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.cr
  br i1 %i.fh, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ak
  %i.fi = load i64, ptr %i.cr, align 8, !tbaa !12, !alias.scope !108
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fj) #30
  br label %.body

_ZN5folly4joinIA2_cNS_5RangeIPNS2_IPKcEEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit: ; preds = %._crit_edge150.thread, %.noexc.i
  %i.fk = load ptr, ptr %2, align 8, !tbaa !98    ; 3 uses
  %.not.i.i.i80 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i.i80, label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZN5folly4joinIA2_cNS_5RangeIPNS2_IPKcEEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !115
  %i.fn = ptrtoint ptr %i.fm to i64
  %i.fo = ptrtoint ptr %i.fk to i64
  %i.fp = sub i64 %i.fn, %i.fo
  call void @_ZdlPvm(ptr noundef nonnull %i.fk, i64 noundef %i.fp) #30
  br label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EED2Ev.exit

_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EED2Ev.exit: ; preds = %_ZN5folly4joinIA2_cNS_5RangeIPNS2_IPKcEEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void

.body:                                            ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.l ], [ %i.ff, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ff, %bb.ak ]
  %i.fq = load ptr, ptr %2, align 8, !tbaa !98    ; 3 uses
  %.not.i.i.i81 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i81, label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EED2Ev.exit82, label %bb.am

bb.am:                                            ; preds = %.body
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !115
  %i.ft = ptrtoint ptr %i.fs to i64
  %i.fu = ptrtoint ptr %i.fq to i64
  %i.fv = sub i64 %i.ft, %i.fu
  call void @_ZdlPvm(ptr noundef nonnull %i.fq, i64 noundef %i.fv) #30
  br label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EED2Ev.exit82

_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EED2Ev.exit82: ; preds = %.body, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.bmi.bzhi.32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #24

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE15simdSplitByCharISt6vectorINS_5RangeIPKcEESaISC_EEEEvcSC_RT_(i8 noundef signext %0, ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #25 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %_ZN5folly4simd6detail19simdForEachAligningILi1EKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINS_5RangeIPKcEESaISE_EEEEEEviPT0_SJ_RT1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = and i64 %i.c, -32                        ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 4 uses
  %i.f = and i64 %i.a, -32                        ; 2 uses
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = and i64 %i.c, 31                         ; 2 uses
  %.not.i = icmp eq i64 %i.d, %i.f
  br i1 %.not.i, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.b
  %.pre177 = insertelement <32 x i8> poison, i8 %0, i64 0
  %.pre178 = shufflevector <32 x i8> %.pre177, <32 x i8> poison, <32 x i32> zeroinitializer
  br label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.i = load <32 x i8>, ptr %i.e, align 32, !tbaa !12
  %i.j = insertelement <32 x i8> poison, i8 %0, i64 0
  %i.k = shufflevector <32 x i8> %i.j, <32 x i8> poison, <32 x i32> zeroinitializer ; 3 uses
  %i.l = icmp eq <32 x i8> %i.i, %i.k
  %i.m = bitcast <32 x i1> %i.l to i32
  %i.n = shl nuw nsw i64 4294967295, %i.h
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.m, %i.o                       ; 2 uses
  %.not.i13139 = icmp eq i32 %i.p, 0
  br i1 %.not.i13139, label %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINS_5RangeIPKcEESaISE_EEEEvSt4pairIT_T0_EPKhRSM_RT1_.exit.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !101
  %.pre172 = load ptr, ptr %i.r, align 8, !tbaa !115
  br label %bb.d

_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINS_5RangeIPKcEESaISE_EEEEvSt4pairIT_T0_EPKhRSM_RT1_.exit.preheader: ; preds = %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit, %bb.c
  %.5.lcssa = phi ptr [ %1, %bb.c ], [ %i.ab, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit ] ; 2 uses
  %.1149 = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  %.not.i12.not150 = icmp eq ptr %.1149, %i.g
  br i1 %.not.i12.not150, label %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINS_5RangeIPKcEESaISF_EEEEEEbiRPT_SK_RT0_St17integral_constantImLm1EE.exit, label %.lr.ph153

.lr.ph153:                                        ; preds = %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINS_5RangeIPKcEESaISE_EEEEvSt4pairIT_T0_EPKhRSM_RT1_.exit.preheader
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  br label %bb.i

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit
  %i.u = phi ptr [ %.pre172, %.lr.ph ], [ %i.be, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit ] ; 5 uses
  %i.v = phi ptr [ %.pre, %.lr.ph ], [ %i.bf, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit ] ; 4 uses
  %.0.i142 = phi ptr [ %i.e, %.lr.ph ], [ %i.ab, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit ]
  %.013.i141 = phi i32 [ %i.p, %.lr.ph ], [ %i.y, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit ] ; 2 uses
  %.5140 = phi ptr [ %1, %.lr.ph ], [ %i.ab, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit ] ; 5 uses
  %i.w = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.013.i141, i1 true) ; 2 uses
  %i.x = lshr exact i32 %.013.i141, %i.w
  %i.y = lshr i32 %i.x, 1                         ; 2 uses
  %i.z = zext nneg i32 %i.w to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i142, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1 ; 3 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %.5140 to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 2 uses
  %.not.i18 = icmp eq ptr %i.v, %i.u
  br i1 %.not.i18, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %.5140, ptr %i.v, align 8, !tbaa !52
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.5140, i64 %i.ae
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !102
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  store ptr %i.ah, ptr %i.q, align 8, !tbaa !101
  br label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.ai = load ptr, ptr %3, align 8, !tbaa !98    ; 5 uses
  %i.aj = ptrtoint ptr %i.u to i64
  %i.ak = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak                    ; 3 uses
  %i.am = icmp eq i64 %i.al, 9223372036854775792
  br i1 %i.am, label %bb.g, label %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.80) #31
  unreachable

_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i: ; preds = %bb.f
  %i.an = ashr exact i64 %i.al, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.an, i64 1)
  %i.ao = add nsw i64 %.sroa.speculated.i.i.i, %i.an ; 2 uses
  %i.ap = icmp ult i64 %i.ao, %i.an
  %i.aq = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 576460752303423487)
  %i.ar = select i1 %i.ap, i64 576460752303423487, i64 %i.aq ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ar, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.as = shl nuw nsw i64 %i.ar, 4
  %i.at = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #32 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.al ; 2 uses
  store ptr %.5140, ptr %i.au, align 8, !tbaa !52
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.5140, i64 %i.ae
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !102
  %.not10.i.i.i.i.i = icmp eq ptr %i.ai, %i.u
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i ], [ %i.at, %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i ], [ %i.ai, %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !116, !alias.scope !117
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ax, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !121

_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.at, %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i ], [ %i.ay, %.lr.ph.i.i.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i34.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i
  %i.ba = load ptr, ptr %i.r, align 8, !tbaa !115
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.bc) #30
  br label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i
  store ptr %i.at, ptr %3, align 8, !tbaa !98
  store ptr %i.az, ptr %i.q, align 8, !tbaa !101
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.ar ; 2 uses
  store ptr %i.bd, ptr %i.r, align 8, !tbaa !115
  br label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit

_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit: ; preds = %bb.e, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i
  %i.be = phi ptr [ %i.u, %bb.e ], [ %i.bd, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ]
  %i.bf = phi ptr [ %i.ah, %bb.e ], [ %i.az, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ]
  %.not.i13 = icmp eq i32 %i.y, 0
  br i1 %.not.i13, label %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINS_5RangeIPKcEESaISE_EEEEvSt4pairIT_T0_EPKhRSM_RT1_.exit.preheader, label %bb.d, !llvm.loop !122

_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINS_5RangeIPKcEESaISE_EEEEvSt4pairIT_T0_EPKhRSM_RT1_.exit.loopexit: ; preds = %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit32, %bb.i
  %.7.lcssa = phi ptr [ %.3151, %bb.i ], [ %i.bq, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit32 ] ; 2 uses
  %.1 = getelementptr inbounds nuw i8, ptr %.1152, i64 32 ; 3 uses
  %.not.i12.not = icmp eq ptr %.1, %i.g
  br i1 %.not.i12.not, label %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINS_5RangeIPKcEESaISF_EEEEEEbiRPT_SK_RT0_St17integral_constantImLm1EE.exit, label %bb.i, !llvm.loop !123

bb.i:                                             ; preds = %.lr.ph153, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINS_5RangeIPKcEESaISE_EEEEvSt4pairIT_T0_EPKhRSM_RT1_.exit.loopexit
  %.1152 = phi ptr [ %.1149, %.lr.ph153 ], [ %.1, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINS_5RangeIPKcEESaISE_EEEEvSt4pairIT_T0_EPKhRSM_RT1_.exit.loopexit ] ; 3 uses
  %.3151 = phi ptr [ %.5.lcssa, %.lr.ph153 ], [ %.7.lcssa, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINS_5RangeIPKcEESaISE_EEEEvSt4pairIT_T0_EPKhRSM_RT1_.exit.loopexit ] ; 2 uses
  %i.bg = load <32 x i8>, ptr %.1152, align 1, !tbaa !12
  %i.bh = icmp eq <32 x i8> %i.bg, %i.k
  %i.bi = bitcast <32 x i1> %i.bh to i32          ; 2 uses
  %.not.i.i143 = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i143, label %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINS_5RangeIPKcEESaISE_EEEEvSt4pairIT_T0_EPKhRSM_RT1_.exit.loopexit, label %.lr.ph147.preheader

.lr.ph147.preheader:                              ; preds = %bb.i
  %.pre173 = load ptr, ptr %i.s, align 8, !tbaa !101
  %.pre174 = load ptr, ptr %i.t, align 8, !tbaa !115
  br label %.lr.ph147

.lr.ph147:                                        ; preds = %.lr.ph147.preheader, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit32
  %i.bj = phi ptr [ %i.ct, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit32 ], [ %.pre174, %.lr.ph147.preheader ] ; 5 uses
  %i.bk = phi ptr [ %i.cu, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit32 ], [ %.pre173, %.lr.ph147.preheader ] ; 4 uses
  %.0.i.i146 = phi ptr [ %i.bq, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit32 ], [ %.1152, %.lr.ph147.preheader ]
  %.013.i.i145 = phi i32 [ %i.bn, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit32 ], [ %i.bi, %.lr.ph147.preheader ] ; 2 uses
  %.7144 = phi ptr [ %i.bq, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit32 ], [ %.3151, %.lr.ph147.preheader ] ; 5 uses
  %i.bl = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.013.i.i145, i1 true) ; 2 uses
  %i.bm = lshr exact i32 %.013.i.i145, %i.bl
  %i.bn = lshr i32 %i.bm, 1                       ; 2 uses
  %i.bo = zext nneg i32 %i.bl to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i.i146, i64 %i.bo ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1 ; 3 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %.7144 to i64
  %i.bt = sub i64 %i.br, %i.bs                    ; 2 uses
  %.not.i19 = icmp eq ptr %i.bk, %i.bj
  br i1 %.not.i19, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph147
  store ptr %.7144, ptr %i.bk, align 8, !tbaa !52
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %.7144, i64 %i.bt
  store ptr %i.bv, ptr %i.bu, align 8, !tbaa !102
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  store ptr %i.bw, ptr %i.s, align 8, !tbaa !101
  br label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit32

bb.k:                                             ; preds = %.lr.ph147
  %i.bx = load ptr, ptr %3, align 8, !tbaa !98    ; 5 uses
  %i.by = ptrtoint ptr %i.bj to i64
  %i.bz = ptrtoint ptr %i.bx to i64               ; 2 uses
  %i.ca = sub i64 %i.by, %i.bz                    ; 3 uses
  %i.cb = icmp eq i64 %i.ca, 9223372036854775792
  br i1 %i.cb, label %bb.l, label %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i20

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.80) #31
  unreachable

_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i20: ; preds = %bb.k
  %i.cc = ashr exact i64 %i.ca, 4                 ; 3 uses
  %.sroa.speculated.i.i.i21 = tail call i64 @llvm.umax.i64(i64 %i.cc, i64 1)
  %i.cd = add nsw i64 %.sroa.speculated.i.i.i21, %i.cc ; 2 uses
  %i.ce = icmp ult i64 %i.cd, %i.cc
  %i.cf = tail call i64 @llvm.umin.i64(i64 %i.cd, i64 576460752303423487)
  %i.cg = select i1 %i.ce, i64 576460752303423487, i64 %i.cf ; 3 uses
  %.not.i.i.i22 = icmp ne i64 %i.cg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i22)
  %i.ch = shl nuw nsw i64 %i.cg, 4
  %i.ci = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #32 ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ca ; 2 uses
  store ptr %.7144, ptr %i.cj, align 8, !tbaa !52
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %.7144, i64 %i.bt
  store ptr %i.cl, ptr %i.ck, align 8, !tbaa !102
  %.not10.i.i.i.i.i23 = icmp eq ptr %i.bx, %i.bj
  br i1 %.not10.i.i.i.i.i23, label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i28, label %.lr.ph.i.i.i.i.i24

.lr.ph.i.i.i.i.i24:                               ; preds = %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i20, %.lr.ph.i.i.i.i.i24
  %.012.i.i.i.i.i25 = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i24 ], [ %i.ci, %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i20 ] ; 2 uses
  %.0911.i.i.i.i.i26 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i24 ], [ %i.bx, %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i20 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i25, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i26, i64 16, i1 false), !tbaa.struct !116, !alias.scope !124
  %i.cm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i26, i64 16 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i25, i64 16 ; 2 uses
  %.not.i.i.i.i.i27 = icmp eq ptr %i.cm, %i.bj
  br i1 %.not.i.i.i.i.i27, label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i28, label %.lr.ph.i.i.i.i.i24, !llvm.loop !121

_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i28: ; preds = %.lr.ph.i.i.i.i.i24, %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i20
  %.0.lcssa.i.i.i.i.i29 = phi ptr [ %i.ci, %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i20 ], [ %i.cn, %.lr.ph.i.i.i.i.i24 ]
  %i.co = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i29, i64 16 ; 2 uses
  %.not.i34.i.i30 = icmp eq ptr %i.bx, null
  br i1 %.not.i34.i.i30, label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i31, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i28
  %i.cp = load ptr, ptr %i.t, align 8, !tbaa !115
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = sub i64 %i.cq, %i.bz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cr) #30
  br label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i31

_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i31: ; preds = %bb.m, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i28
  store ptr %i.ci, ptr %3, align 8, !tbaa !98
  store ptr %i.co, ptr %i.s, align 8, !tbaa !101
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %i.cg ; 2 uses
  store ptr %i.cs, ptr %i.t, align 8, !tbaa !115
  br label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit32

_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit32: ; preds = %bb.j, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i31
  %i.ct = phi ptr [ %i.bj, %bb.j ], [ %i.cs, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i31 ]
  %i.cu = phi ptr [ %i.bw, %bb.j ], [ %i.co, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i31 ]
  %.not.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i, label %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINS_5RangeIPKcEESaISE_EEEEvSt4pairIT_T0_EPKhRSM_RT1_.exit.loopexit, label %.lr.ph147, !llvm.loop !122

_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINS_5RangeIPKcEESaISF_EEEEEEbiRPT_SK_RT0_St17integral_constantImLm1EE.exit: ; preds = %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINS_5RangeIPKcEESaISE_EEEEvSt4pairIT_T0_EPKhRSM_RT1_.exit.loopexit, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINS_5RangeIPKcEESaISE_EEEEvSt4pairIT_T0_EPKhRSM_RT1_.exit.preheader
  %.3.lcssa = phi ptr [ %.5.lcssa, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINS_5RangeIPKcEESaISE_EEEEvSt4pairIT_T0_EPKhRSM_RT1_.exit.preheader ], [ %.7.lcssa, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINS_5RangeIPKcEESaISE_EEEEvSt4pairIT_T0_EPKhRSM_RT1_.exit.loopexit ] ; 2 uses
  %.1.lcssa = phi ptr [ %.1149, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINS_5RangeIPKcEESaISE_EEEEvSt4pairIT_T0_EPKhRSM_RT1_.exit.preheader ], [ %.1, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINS_5RangeIPKcEESaISE_EEEEvSt4pairIT_T0_EPKhRSM_RT1_.exit.loopexit ] ; 2 uses
  %i.cv = icmp eq ptr %.1.lcssa, %2
  br i1 %i.cv, label %_ZN5folly4simd6detail19simdForEachAligningILi1EKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINS_5RangeIPKcEESaISE_EEEEEEviPT0_SJ_RT1_.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge, %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINS_5RangeIPKcEESaISF_EEEEEEbiRPT_SK_RT0_St17integral_constantImLm1EE.exit
  %.pre-phi179 = phi <32 x i8> [ %.pre178, %._crit_edge ], [ %i.k, %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINS_5RangeIPKcEESaISF_EEEEEEbiRPT_SK_RT0_St17integral_constantImLm1EE.exit ]
  %.0129 = phi ptr [ %1, %._crit_edge ], [ %.3.lcssa, %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINS_5RangeIPKcEESaISF_EEEEEEbiRPT_SK_RT0_St17integral_constantImLm1EE.exit ] ; 2 uses
  %.0 = phi ptr [ %i.e, %._crit_edge ], [ %.1.lcssa, %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINS_5RangeIPKcEESaISF_EEEEEEbiRPT_SK_RT0_St17integral_constantImLm1EE.exit ] ; 3 uses
  %.sroa.02.0.i = phi i64 [ %i.h, %._crit_edge ], [ 0, %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINS_5RangeIPKcEESaISF_EEEEEEbiRPT_SK_RT0_St17integral_constantImLm1EE.exit ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = sub i64 %i.cx, %i.a
  %i.cz = load <32 x i8>, ptr %.0, align 1, !tbaa !12
  %i.da = icmp eq <32 x i8> %i.cz, %.pre-phi179
  %.sroa.2.0.extract.trunc.i.i = trunc i64 %i.cy to i32 ; 2 uses
  %i.db = bitcast <32 x i1> %i.da to i32
  %i.dc = shl nuw nsw i64 4294967295, %.sroa.02.0.i
  %i.dd = trunc i64 %i.dc to i32
  %i.de = and i32 %i.db, %i.dd
  %i.df = icmp ult i32 %.sroa.2.0.extract.trunc.i.i, 33
  tail call void @llvm.assume(i1 %i.df)
  %i.dg = sub nuw nsw i32 32, %.sroa.2.0.extract.trunc.i.i
  %i.dh = tail call noundef i32 @llvm.x86.bmi.bzhi.32(i32 %i.de, i32 %i.dg) ; 2 uses
  %.not.i16156 = icmp eq i32 %i.dh, 0
  br i1 %.not.i16156, label %_ZN5folly4simd6detail19simdForEachAligningILi1EKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINS_5RangeIPKcEESaISE_EEEEEEviPT0_SJ_RT1_.exit, label %.lr.ph160

.lr.ph160:                                        ; preds = %bb.n
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %.pre175 = load ptr, ptr %i.di, align 8, !tbaa !101
  %.pre176 = load ptr, ptr %i.dj, align 8, !tbaa !115
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph160, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit46
  %i.dk = phi ptr [ %.pre176, %.lr.ph160 ], [ %i.eu, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit46 ] ; 5 uses
  %i.dl = phi ptr [ %.pre175, %.lr.ph160 ], [ %i.ev, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit46 ] ; 4 uses
  %.0.i15159 = phi ptr [ %.0, %.lr.ph160 ], [ %i.dr, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit46 ]
  %.013.i14158 = phi i32 [ %i.dh, %.lr.ph160 ], [ %i.do, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit46 ] ; 2 uses
  %.6157 = phi ptr [ %.0129, %.lr.ph160 ], [ %i.dr, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit46 ] ; 5 uses
  %i.dm = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.013.i14158, i1 true) ; 2 uses
  %i.dn = lshr exact i32 %.013.i14158, %i.dm
  %i.do = lshr i32 %i.dn, 1                       ; 2 uses
  %i.dp = zext nneg i32 %i.dm to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.i15159, i64 %i.dp ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 1 ; 3 uses
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = ptrtoint ptr %.6157 to i64
  %i.du = sub i64 %i.ds, %i.dt                    ; 2 uses
  %.not.i33 = icmp eq ptr %i.dl, %i.dk
  br i1 %.not.i33, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %.6157, ptr %i.dl, align 8, !tbaa !52
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %.6157, i64 %i.du
  store ptr %i.dw, ptr %i.dv, align 8, !tbaa !102
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  store ptr %i.dx, ptr %i.di, align 8, !tbaa !101
  br label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit46

bb.q:                                             ; preds = %bb.o
  %i.dy = load ptr, ptr %3, align 8, !tbaa !98    ; 5 uses
  %i.dz = ptrtoint ptr %i.dk to i64
  %i.ea = ptrtoint ptr %i.dy to i64               ; 2 uses
  %i.eb = sub i64 %i.dz, %i.ea                    ; 3 uses
  %i.ec = icmp eq i64 %i.eb, 9223372036854775792
  br i1 %i.ec, label %bb.r, label %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i34

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.80) #31
  unreachable

_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i34: ; preds = %bb.q
  %i.ed = ashr exact i64 %i.eb, 4                 ; 3 uses
  %.sroa.speculated.i.i.i35 = tail call i64 @llvm.umax.i64(i64 %i.ed, i64 1)
  %i.ee = add nsw i64 %.sroa.speculated.i.i.i35, %i.ed ; 2 uses
  %i.ef = icmp ult i64 %i.ee, %i.ed
  %i.eg = tail call i64 @llvm.umin.i64(i64 %i.ee, i64 576460752303423487)
  %i.eh = select i1 %i.ef, i64 576460752303423487, i64 %i.eg ; 3 uses
  %.not.i.i.i36 = icmp ne i64 %i.eh, 0
  tail call void @llvm.assume(i1 %.not.i.i.i36)
  %i.ei = shl nuw nsw i64 %i.eh, 4
  %i.ej = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ei) #32 ; 5 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.eb ; 2 uses
  store ptr %.6157, ptr %i.ek, align 8, !tbaa !52
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %.6157, i64 %i.du
  store ptr %i.em, ptr %i.el, align 8, !tbaa !102
  %.not10.i.i.i.i.i37 = icmp eq ptr %i.dy, %i.dk
  br i1 %.not10.i.i.i.i.i37, label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i42, label %.lr.ph.i.i.i.i.i38

.lr.ph.i.i.i.i.i38:                               ; preds = %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i34, %.lr.ph.i.i.i.i.i38
  %.012.i.i.i.i.i39 = phi ptr [ %i.eo, %.lr.ph.i.i.i.i.i38 ], [ %i.ej, %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i34 ] ; 2 uses
  %.0911.i.i.i.i.i40 = phi ptr [ %i.en, %.lr.ph.i.i.i.i.i38 ], [ %i.dy, %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i34 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i39, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i40, i64 16, i1 false), !tbaa.struct !116, !alias.scope !128
  %i.en = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i40, i64 16 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i39, i64 16 ; 2 uses
  %.not.i.i.i.i.i41 = icmp eq ptr %i.en, %i.dk
  br i1 %.not.i.i.i.i.i41, label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i42, label %.lr.ph.i.i.i.i.i38, !llvm.loop !121

_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i42: ; preds = %.lr.ph.i.i.i.i.i38, %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i34
  %.0.lcssa.i.i.i.i.i43 = phi ptr [ %i.ej, %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i34 ], [ %i.eo, %.lr.ph.i.i.i.i.i38 ]
  %i.ep = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i43, i64 16 ; 2 uses
  %.not.i34.i.i44 = icmp eq ptr %i.dy, null
  br i1 %.not.i34.i.i44, label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i45, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i42
  %i.eq = load ptr, ptr %i.dj, align 8, !tbaa !115
  %i.er = ptrtoint ptr %i.eq to i64
  %i.es = sub i64 %i.er, %i.ea
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef %i.es) #30
  br label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i45

_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i45: ; preds = %bb.s, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i42
  store ptr %i.ej, ptr %3, align 8, !tbaa !98
  store ptr %i.ep, ptr %i.di, align 8, !tbaa !101
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %i.eh ; 2 uses
  store ptr %i.et, ptr %i.dj, align 8, !tbaa !115
  br label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit46

_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit46: ; preds = %bb.p, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i45
  %i.eu = phi ptr [ %i.dk, %bb.p ], [ %i.et, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i45 ]
  %i.ev = phi ptr [ %i.dx, %bb.p ], [ %i.ep, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i45 ]
  %.not.i16 = icmp eq i32 %i.do, 0
  br i1 %.not.i16, label %_ZN5folly4simd6detail19simdForEachAligningILi1EKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINS_5RangeIPKcEESaISE_EEEEEEviPT0_SJ_RT1_.exit, label %bb.o, !llvm.loop !122

_ZN5folly4simd6detail19simdForEachAligningILi1EKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINS_5RangeIPKcEESaISE_EEEEEEviPT0_SJ_RT1_.exit: ; preds = %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit46, %bb.n, %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINS_5RangeIPKcEESaISF_EEEEEEbiRPT_SK_RT0_St17integral_constantImLm1EE.exit, %bb.a
  %.2 = phi ptr [ %1, %bb.a ], [ %.3.lcssa, %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINS_5RangeIPKcEESaISF_EEEEEEbiRPT_SK_RT0_St17integral_constantImLm1EE.exit ], [ %.0129, %bb.n ], [ %i.dr, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit46 ] ; 5 uses
  %i.ew = ptrtoint ptr %.2 to i64
  %i.ex = sub i64 %i.a, %i.ew                     ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !101 ; 7 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !115
  %.not.i47 = icmp eq ptr %i.ez, %i.fb
  br i1 %.not.i47, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN5folly4simd6detail19simdForEachAligningILi1EKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINS_5RangeIPKcEESaISE_EEEEEEviPT0_SJ_RT1_.exit
  store ptr %.2, ptr %i.ez, align 8, !tbaa !52
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %.2, i64 %i.ex
  store ptr %i.fd, ptr %i.fc, align 8, !tbaa !102
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  store ptr %i.fe, ptr %i.ey, align 8, !tbaa !101
  br label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit60

bb.u:                                             ; preds = %_ZN5folly4simd6detail19simdForEachAligningILi1EKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINS_5RangeIPKcEESaISE_EEEEEEviPT0_SJ_RT1_.exit
  %i.ff = load ptr, ptr %3, align 8, !tbaa !98    ; 5 uses
  %i.fg = ptrtoint ptr %i.ez to i64
  %i.fh = ptrtoint ptr %i.ff to i64               ; 2 uses
  %i.fi = sub i64 %i.fg, %i.fh                    ; 3 uses
  %i.fj = icmp eq i64 %i.fi, 9223372036854775792
  br i1 %i.fj, label %bb.v, label %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i48

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.80) #31
  unreachable

_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i48: ; preds = %bb.u
  %i.fk = ashr exact i64 %i.fi, 4                 ; 3 uses
  %.sroa.speculated.i.i.i49 = tail call i64 @llvm.umax.i64(i64 %i.fk, i64 1)
  %i.fl = add nsw i64 %.sroa.speculated.i.i.i49, %i.fk ; 2 uses
  %i.fm = icmp ult i64 %i.fl, %i.fk
  %i.fn = tail call i64 @llvm.umin.i64(i64 %i.fl, i64 576460752303423487)
  %i.fo = select i1 %i.fm, i64 576460752303423487, i64 %i.fn ; 3 uses
  %.not.i.i.i50 = icmp ne i64 %i.fo, 0
  tail call void @llvm.assume(i1 %.not.i.i.i50)
  %i.fp = shl nuw nsw i64 %i.fo, 4
  %i.fq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fp) #32 ; 5 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fi ; 2 uses
  store ptr %.2, ptr %i.fr, align 8, !tbaa !52
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %.2, i64 %i.ex
  store ptr %i.ft, ptr %i.fs, align 8, !tbaa !102
  %.not10.i.i.i.i.i51 = icmp eq ptr %i.ff, %i.ez
  br i1 %.not10.i.i.i.i.i51, label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i56, label %.lr.ph.i.i.i.i.i52

.lr.ph.i.i.i.i.i52:                               ; preds = %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i48, %.lr.ph.i.i.i.i.i52
  %.012.i.i.i.i.i53 = phi ptr [ %i.fv, %.lr.ph.i.i.i.i.i52 ], [ %i.fq, %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i48 ] ; 2 uses
  %.0911.i.i.i.i.i54 = phi ptr [ %i.fu, %.lr.ph.i.i.i.i.i52 ], [ %i.ff, %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i48 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i53, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i54, i64 16, i1 false), !tbaa.struct !116, !alias.scope !132
  %i.fu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i54, i64 16 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i53, i64 16 ; 2 uses
  %.not.i.i.i.i.i55 = icmp eq ptr %i.fu, %i.ez
  br i1 %.not.i.i.i.i.i55, label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i56, label %.lr.ph.i.i.i.i.i52, !llvm.loop !121

_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i56: ; preds = %.lr.ph.i.i.i.i.i52, %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i48
  %.0.lcssa.i.i.i.i.i57 = phi ptr [ %i.fq, %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i48 ], [ %i.fv, %.lr.ph.i.i.i.i.i52 ]
  %i.fw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i57, i64 16
  %.not.i34.i.i58 = icmp eq ptr %i.ff, null
  br i1 %.not.i34.i.i58, label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i59, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i56
  %i.fx = load ptr, ptr %i.fa, align 8, !tbaa !115
  %i.fy = ptrtoint ptr %i.fx to i64
  %i.fz = sub i64 %i.fy, %i.fh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef %i.fz) #30
  br label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i59

_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i59: ; preds = %bb.w, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i56
  store ptr %i.fq, ptr %3, align 8, !tbaa !98
  store ptr %i.fw, ptr %i.ey, align 8, !tbaa !101
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.fq, i64 %i.fo
  store ptr %i.ga, ptr %i.fa, align 8, !tbaa !115
  br label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit60

_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit60: ; preds = %bb.t, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i59
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail18internalJoinAppendINS_5RangeIPKcEEPS5_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_T0_SE_RT1_(ptr %0, ptr %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.folly::Range", align 8      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  store ptr %0, ptr %5, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.d, align 8
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %0 to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %0, align 1, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.i, ptr %i.a, align 1, !tbaa !12
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !29 ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !29 ; 2 uses
  %i.j = ptrtoint ptr %.sroa.2.0.copyload.i to i64
  %i.k = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !25   ; 5 uses
  %i.o = sub i64 9223372036854775807, %i.n
  %i.p = icmp ult i64 %i.o, %i.l
  br i1 %i.p, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #31
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.q = add i64 %i.l, %i.n                       ; 3 uses
  %i.r = load ptr, ptr %4, align 8, !tbaa !28     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.u = icmp ult i64 %i.n, 16
  tail call void @llvm.assume(i1 %i.u)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.v = load i64, ptr %i.s, align 8, !tbaa !12
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.w = phi i64 [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.q, %i.w
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq ptr %.sroa.2.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %.not8.i.i.i.i, label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.n ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.l, 1
  br i1 %cond.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = load i8, ptr %.sroa.0.0.copyload.i, align 1, !tbaa !12
  store i8 %i.y, ptr %i.x, align 1, !tbaa !12
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit.i

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %.sroa.0.0.copyload.i, i64 %i.l, i1 false)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.n, i64 noundef 0, ptr noundef %.sroa.0.0.copyload.i, i64 noundef %i.l)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit.i

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.d
  store i64 %i.q, ptr %i.m, align 8, !tbaa !25
  %i.z = load ptr, ptr %4, align 8, !tbaa !28
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.q
  store i8 0, ptr %i.aa, align 1, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.not7.i = icmp eq ptr %i.ab, %3
  br i1 %.not7.i, label %_ZN5folly6detail18internalJoinAppendIcPNS_5RangeIPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_T0_SE_RT1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit.i, %.lr.ph.i
  %i.ac = phi ptr [ %i.ad, %.lr.ph.i ], [ %i.ab, %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store ptr %4, ptr %i.b, align 8, !tbaa !31
  call void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2EEEE4callIJcNS_5RangeIPKcEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpRKT_(ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.ad, %3
  br i1 %.not.i, label %_ZN5folly6detail18internalJoinAppendIcPNS_5RangeIPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_T0_SE_RT1_.exit, label %.lr.ph.i, !llvm.loop !136

_ZN5folly6detail18internalJoinAppendIcPNS_5RangeIPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_T0_SE_RT1_.exit: ; preds = %.lr.ph.i, %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

bb.i:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !29 ; 5 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !29 ; 2 uses
  %i.ae = ptrtoint ptr %.sroa.2.0.copyload to i64
  %i.af = ptrtoint ptr %.sroa.0.0.copyload to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !25 ; 5 uses
  %i.aj = sub i64 9223372036854775807, %i.ai
  %i.ak = icmp ult i64 %i.aj, %i.ag
  br i1 %i.ak, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #31
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.i
  %i.al = add i64 %i.ag, %i.ai                    ; 3 uses
  %i.am = load ptr, ptr %4, align 8, !tbaa !28    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ap = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.ap)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.aq = load i64, ptr %i.an, align 8, !tbaa !12
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ar = phi i64 [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.al, %i.ar
  br i1 %.not.i.i.i, label %bb.o, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq ptr %.sroa.2.0.copyload, %.sroa.0.0.copyload
  br i1 %.not8.i.i.i, label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ai ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.ag, 1
  br i1 %cond.i.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.at = load i8, ptr %.sroa.0.0.copyload, align 1, !tbaa !12
  store i8 %i.at, ptr %i.as, align 1, !tbaa !12
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr align 1 %.sroa.0.0.copyload, i64 %i.ag, i1 false)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.ai, i64 noundef 0, ptr noundef %.sroa.0.0.copyload, i64 noundef %i.ag)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit: ; preds = %bb.k, %bb.m, %bb.n, %bb.o
  store i64 %i.al, ptr %i.ah, align 8, !tbaa !25
  %i.au = load ptr, ptr %4, align 8, !tbaa !28
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.al
  store i8 0, ptr %i.av, align 1, !tbaa !12
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.not14 = icmp eq ptr %i.aw, %3
  br i1 %.not14, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit, %.lr.ph
  %i.ax = phi ptr [ %i.ay, %.lr.ph ], [ %i.aw, %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store ptr %4, ptr %i.c, align 8, !tbaa !31
  call void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2EEEE4callIJNS_5RangeIPKcEES9_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ay, %3
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !137

.loopexit:                                        ; preds = %.lr.ph, %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit, %_ZN5folly6detail18internalJoinAppendIcPNS_5RangeIPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_T0_SE_RT1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2EEEE4callIJcNS_5RangeIPKcEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpRKT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !31     ; 9 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !25   ; 4 uses
  %i.e = add i64 %i.d, 1                          ; 3 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.a
  %i.i = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.a
  %i.j = load i64, ptr %i.g, align 8, !tbaa !12
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.k = phi i64 [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %i.l = icmp ugt i64 %i.e, %i.k
  br i1 %i.l, label %bb.b, label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvcPT_.exit

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.d, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !28
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvcPT_.exit

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvcPT_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i, %bb.b
  %i.m = phi ptr [ %.pre.i.i.i, %bb.b ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.d
  store i8 %i.b, ptr %i.n, align 1, !tbaa !12
  store i64 %i.e, ptr %i.c, align 8, !tbaa !25
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.e
  store i8 0, ptr %i.p, align 1, !tbaa !12
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !tbaa !29 ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !29 ; 2 uses
  %i.q = ptrtoint ptr %.sroa.2.0.copyload.i to i64
  %i.r = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.s = sub i64 %i.q, %i.r                       ; 5 uses
  %i.t = load i64, ptr %i.c, align 8, !tbaa !25   ; 5 uses
  %i.u = sub i64 9223372036854775807, %i.t
  %i.v = icmp ult i64 %i.u, %i.s
  br i1 %i.v, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.c:                                             ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvcPT_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #31
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvcPT_.exit
  %i.w = add i64 %i.s, %i.t                       ; 3 uses
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.g
  br i1 %i.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i11: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.z = icmp ult i64 %i.t, 16
  tail call void @llvm.assume(i1 %i.z)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i9: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.aa = load i64, ptr %i.g, align 8, !tbaa !12
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i10: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i11
  %i.ab = phi i64 [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i9 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i11 ]
  %.not.i.i.i = icmp ugt i64 %i.w, %i.ab
  br i1 %.not.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i10
  %.not8.i.i.i = icmp eq ptr %.sroa.2.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %.not8.i.i.i, label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.t ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.s, 1
  br i1 %cond.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = load i8, ptr %.sroa.0.0.copyload.i, align 1, !tbaa !12
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !12
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr align 1 %.sroa.0.0.copyload.i, i64 %i.s, i1 false)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.t, i64 noundef 0, ptr noundef %.sroa.0.0.copyload.i, i64 noundef %i.s)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit: ; preds = %bb.d, %bb.f, %bb.g, %bb.h
  store i64 %i.w, ptr %i.c, align 8, !tbaa !25
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.w
  store i8 0, ptr %i.af, align 1, !tbaa !12
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2EEEE4callIJNS_5RangeIPKcEES9_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !31     ; 8 uses
  %.sroa.0.0.copyload.i9 = load ptr, ptr %0, align 8, !tbaa !29 ; 5 uses
  %.sroa.2.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i11 = load ptr, ptr %.sroa.2.0..sroa_idx.i10, align 8, !tbaa !29 ; 2 uses
  %i.b = ptrtoint ptr %.sroa.2.0.copyload.i11 to i64
  %i.c = ptrtoint ptr %.sroa.0.0.copyload.i9 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !25   ; 5 uses
  %i.g = sub i64 9223372036854775807, %i.f
  %i.h = icmp ult i64 %i.g, %i.d
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #31
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.a
  %i.i = add i64 %i.d, %i.f                       ; 3 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.m = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.m)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.n = load i64, ptr %i.k, align 8, !tbaa !12
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.o = phi i64 [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.i, %i.o
  br i1 %.not.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq ptr %.sroa.2.0.copyload.i11, %.sroa.0.0.copyload.i9
  br i1 %.not8.i.i.i, label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.d, 1
  br i1 %cond.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = load i8, ptr %.sroa.0.0.copyload.i9, align 1, !tbaa !12
  store i8 %i.q, ptr %i.p, align 1, !tbaa !12
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %.sroa.0.0.copyload.i9, i64 %i.d, i1 false)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.f, i64 noundef 0, ptr noundef %.sroa.0.0.copyload.i9, i64 noundef %i.d)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  store i64 %i.i, ptr %i.e, align 8, !tbaa !25
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.i
  store i8 0, ptr %i.s, align 1, !tbaa !12
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !tbaa !29 ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !29 ; 2 uses
  %i.t = ptrtoint ptr %.sroa.2.0.copyload.i to i64
  %i.u = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.v = sub i64 %i.t, %i.u                       ; 5 uses
  %i.w = load i64, ptr %i.e, align 8, !tbaa !25   ; 5 uses
  %i.x = sub i64 9223372036854775807, %i.w
  %i.y = icmp ult i64 %i.x, %i.v
  br i1 %i.y, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i12

bb.h:                                             ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #31
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i12: ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit
  %i.z = add i64 %i.v, %i.w                       ; 3 uses
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.k
  br i1 %i.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i18: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i12
  %i.ac = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.ac)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i13: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i12
  %i.ad = load i64, ptr %i.k, align 8, !tbaa !12
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i14: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i18
  %i.ae = phi i64 [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i13 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i18 ]
  %.not.i.i.i15 = icmp ugt i64 %i.z, %i.ae
  br i1 %.not.i.i.i15, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i14
  %.not8.i.i.i16 = icmp eq ptr %.sroa.2.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %.not8.i.i.i16, label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit19, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.w ; 2 uses
  %cond.i.i.i17 = icmp eq i64 %i.v, 1
  br i1 %cond.i.i.i17, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ag = load i8, ptr %.sroa.0.0.copyload.i, align 1, !tbaa !12
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !12
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit19

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %.sroa.0.0.copyload.i, i64 %i.v, i1 false)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit19

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i14
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.w, i64 noundef 0, ptr noundef %.sroa.0.0.copyload.i, i64 noundef %i.v)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit19

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit19: ; preds = %bb.i, %bb.k, %bb.l, %bb.m
  store i64 %i.z, ptr %i.e, align 8, !tbaa !25
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.z
  store i8 0, ptr %i.ai, align 1, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK5folly23SubstringConversionCodeeqERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %1) local_unnamed_addr #26 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !138
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i8, ptr %i.c, align 8, !tbaa !138
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN5follyeqIPKcEEbRKNS_5RangeIT_EES7_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !102  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !52     ; 3 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !102
  %i.n = load ptr, ptr %1, align 8, !tbaa !52     ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %.not.i = icmp eq i64 %i.k, %i.q
  br i1 %.not.i, label %bb.c, label %_ZN5follyeqIPKcEEbRKNS_5RangeIT_EES7_.exit

bb.c:                                             ; preds = %bb.b
  %i.r = icmp eq ptr %i.g, %i.h
  br i1 %i.r, label %_ZN5follyeqIPKcEEbRKNS_5RangeIT_EES7_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %bcmp.i = tail call i32 @bcmp(ptr %i.h, ptr %i.n, i64 %i.k)
  %i.s = icmp eq i32 %bcmp.i, 0
  br label %_ZN5follyeqIPKcEEbRKNS_5RangeIT_EES7_.exit

_ZN5follyeqIPKcEEbRKNS_5RangeIT_EES7_.exit:       ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.t = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.c ], [ %i.s, %bb.d ]
  ret i1 %i.t
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN5folly6detail16delimCountTokensEcNS_5RangeIPKcEEb(i8 noundef signext %0, ptr %1, ptr %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %or.cond.not.not.i = icmp eq ptr %2, %1
  br i1 %or.cond.not.not.i, label %bb.b, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %not..i = xor i1 %3, true                       ; 4 uses
  %i.d = sub i64 %i.a, %i.b                       ; 4 uses
  %xtraiter = and i64 %i.d, 1
  %i.e = icmp ult i64 %i.d, 2
  br i1 %i.e, label %.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i
  %unroll_iter = and i64 %i.d, -2
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %not..not45.i = xor i1 %3, true
  %i.f = zext i1 %not..not45.i to i64
  br label %_ZN5folly6detail20delimCountTokensImplIcEEmT_NS_5RangeIPKcEEb.exit

.unr-lcssa:                                       ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader.i
  %.052.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %.pre-phi.i.1, %.unr-lcssa ] ; 2 uses
  %.03351.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %.134.i.1, %.unr-lcssa ]
  %.03550.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %.136.i.1, %.unr-lcssa ]
  %.03749.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %.2.i.1, %.unr-lcssa ] ; 2 uses
  %lcmp.mod6 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod6)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.052.i.epil.init
  %i.h = load i8, ptr %i.g, align 1, !tbaa !12
  %i.i = icmp eq i8 %i.h, %0
  br i1 %i.i, label %bb.c, label %.epilog-lcssa

bb.c:                                             ; preds = %.epil.preheader
  %i.j = icmp ne i64 %.03351.i.epil.init, 0
  %or.cond3.not.i.epil = select i1 %not..i, i1 true, i1 %i.j
  %i.k = zext i1 %or.cond3.not.i.epil to i64
  %spec.select46.i.epil = add i64 %.03749.i.epil.init, %i.k
  %i.l = add nuw i64 %.052.i.epil.init, 1
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %bb.c, %.epil.preheader, %.unr-lcssa
  %.2.i.lcssa = phi i64 [ %.2.i.1, %.unr-lcssa ], [ %spec.select46.i.epil, %bb.c ], [ %.03749.i.epil.init, %.epil.preheader ]
  %.136.i.lcssa = phi i64 [ %.136.i.1, %.unr-lcssa ], [ %i.l, %bb.c ], [ %.03550.i.epil.init, %.epil.preheader ]
  %i.m = icmp ne i64 %i.c, %.136.i.lcssa
  %or.cond6.not.i = select i1 %not..i, i1 true, i1 %i.m
  %i.n = zext i1 %or.cond6.not.i to i64
  %spec.select.i = add i64 %.2.i.lcssa, %i.n
  br label %_ZN5folly6detail20delimCountTokensImplIcEEmT_NS_5RangeIPKcEEb.exit

bb.d:                                             ; preds = %bb.j, %.preheader.i.new
  %.052.i = phi i64 [ 0, %.preheader.i.new ], [ %.pre-phi.i.1, %bb.j ] ; 3 uses
  %.03351.i = phi i64 [ 0, %.preheader.i.new ], [ %.134.i.1, %bb.j ] ; 2 uses
  %.03550.i = phi i64 [ 0, %.preheader.i.new ], [ %.136.i.1, %bb.j ]
  %.03749.i = phi i64 [ 0, %.preheader.i.new ], [ %.2.i.1, %bb.j ] ; 2 uses
  %niter = phi i64 [ 0, %.preheader.i.new ], [ %niter.next.1, %bb.j ]
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.052.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !12
  %i.q = icmp eq i8 %i.p, %0
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = icmp ne i64 %.03351.i, 0
  %or.cond3.not.i = select i1 %not..i, i1 true, i1 %i.r
  %i.s = zext i1 %or.cond3.not.i to i64
  %spec.select46.i = add i64 %.03749.i, %i.s
  %i.t = add nuw nsw i64 %.052.i, 1               ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = add i64 %.03351.i, 1
  %.pre.i = add nuw nsw i64 %.052.i, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre-phi.i = phi i64 [ %i.t, %bb.e ], [ %.pre.i, %bb.f ] ; 3 uses
  %.2.i = phi i64 [ %spec.select46.i, %bb.e ], [ %.03749.i, %bb.f ] ; 2 uses
  %.136.i = phi i64 [ %i.t, %bb.e ], [ %.03550.i, %bb.f ]
  %.134.i = phi i64 [ 0, %bb.e ], [ %i.u, %bb.f ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.pre-phi.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !12
  %i.x = icmp eq i8 %i.w, %0
  br i1 %i.x, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = add i64 %.134.i, 1
  %.pre.i.1 = add nuw i64 %.pre-phi.i, 1
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.z = icmp ne i64 %.134.i, 0
  %or.cond3.not.i.1 = select i1 %not..i, i1 true, i1 %i.z
  %i.aa = zext i1 %or.cond3.not.i.1 to i64
  %spec.select46.i.1 = add i64 %.2.i, %i.aa
  %i.ab = add nuw i64 %.pre-phi.i, 1              ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pre-phi.i.1 = phi i64 [ %i.ab, %bb.i ], [ %.pre.i.1, %bb.h ] ; 2 uses
  %.2.i.1 = phi i64 [ %spec.select46.i.1, %bb.i ], [ %.2.i, %bb.h ] ; 3 uses
  %.136.i.1 = phi i64 [ %i.ab, %bb.i ], [ %.136.i, %bb.h ] ; 3 uses
  %.134.i.1 = phi i64 [ 0, %bb.i ], [ %i.y, %bb.h ] ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.d, !llvm.loop !140

_ZN5folly6detail20delimCountTokensImplIcEEmT_NS_5RangeIPKcEEb.exit: ; preds = %bb.b, %.epilog-lcssa
  %.039.i = phi i64 [ %i.f, %bb.b ], [ %spec.select.i, %.epilog-lcssa ]
  ret i64 %.039.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN5folly6detail16delimCountTokensENS_5RangeIPKcEES4_b(ptr %0, ptr %1, ptr %2, ptr %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ptrtoint ptr %1 to i64
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = add i64 %i.f, -1                         ; 2 uses
  %or.cond.not.i = icmp ult i64 %i.g, %i.c
  br i1 %or.cond.not.i, label %.preheader.i, label %bb.b

.preheader.i:                                     ; preds = %bb.a
  %i.h = sub i64 %i.c, %i.f
  %not..i = xor i1 %4, true                       ; 2 uses
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %3, %2
  %.not46.i = and i1 %i.i, %4
  %not..not46.i = xor i1 %.not46.i, true
  %i.j = zext i1 %not..not46.i to i64
  br label %_ZN5folly6detail20delimCountTokensImplINS_5RangeIPKcEEEEmT_S5_b.exit

bb.c:                                             ; preds = %bb.g
  %i.k = icmp ne i64 %i.c, %.138.i
  %or.cond6.not.i = select i1 %not..i, i1 true, i1 %i.k
  %i.l = zext i1 %or.cond6.not.i to i64
  %spec.select.i = add i64 %.2.i, %i.l
  br label %_ZN5folly6detail20delimCountTokensImplINS_5RangeIPKcEEEEmT_S5_b.exit

bb.d:                                             ; preds = %bb.g, %.preheader.i
  %.03453.i = phi i64 [ 0, %.preheader.i ], [ %i.s, %bb.g ] ; 4 uses
  %.03552.i = phi i64 [ 0, %.preheader.i ], [ %.136.i, %bb.g ] ; 2 uses
  %.03751.i = phi i64 [ 0, %.preheader.i ], [ %.138.i, %bb.g ]
  %.03950.i = phi i64 [ 0, %.preheader.i ], [ %.2.i, %bb.g ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %.03453.i
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.m, ptr %0, i64 %i.f)
  %.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = icmp ne i64 %.03552.i, 0
  %or.cond3.not.i = select i1 %not..i, i1 true, i1 %i.n
  %i.o = zext i1 %or.cond3.not.i to i64
  %spec.select47.i = add i64 %.03950.i, %i.o
  %i.p = add i64 %.03453.i, %i.f
  %i.q = add i64 %.03453.i, %i.g
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.r = add i64 %.03552.i, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2.i = phi i64 [ %spec.select47.i, %bb.e ], [ %.03950.i, %bb.f ] ; 2 uses
  %.138.i = phi i64 [ %i.p, %bb.e ], [ %.03751.i, %bb.f ] ; 2 uses
  %.136.i = phi i64 [ 0, %bb.e ], [ %i.r, %bb.f ]
  %.1.i = phi i64 [ %i.q, %bb.e ], [ %.03453.i, %bb.f ]
  %i.s = add i64 %.1.i, 1                         ; 2 uses
  %.not43.i = icmp ugt i64 %i.s, %i.h
  br i1 %.not43.i, label %bb.c, label %bb.d, !llvm.loop !141

_ZN5folly6detail20delimCountTokensImplINS_5RangeIPKcEEEEmT_S5_b.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.j, %bb.b ], [ %spec.select.i, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { cold noreturn }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { mustprogress noinline uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { nounwind }
attributes #30 = { builtin nounwind }
attributes #31 = { noreturn }
attributes #32 = { builtin allocsize(0) }
attributes #33 = { noreturn nounwind }
attributes #34 = { nounwind willreturn memory(read) }
attributes #35 = { cold }
attributes #36 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!10, !10, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
!18 = !{!19, !20, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !20, i64 0}
!20 = !{!"p1 omnipotent char", !21, i64 0}
!21 = !{!"any pointer", !10, i64 0}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZN5folly13stringVPrintfB5cxx11EPKcP13__va_list_tag: argument 0"}
!24 = distinct !{!24, !"_ZN5folly13stringVPrintfB5cxx11EPKcP13__va_list_tag"}
!25 = !{!26, !27, i64 8}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !19, i64 0, !27, i64 8, !10, i64 16}
!27 = !{!"long", !10, i64 0}
!28 = !{!26, !20, i64 0}
!29 = !{!20, !20, i64 0}
!30 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!31 = !{!32, !32, i64 0}
!32 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !21, i64 0}
!33 = !{!34, !34, i64 0}
!34 = !{!"p1 _ZTSN5folly12_GLOBAL__N_112PrettySuffixE", !21, i64 0}
!35 = !{!36, !20, i64 0}
!36 = !{!"_ZTSN5folly12_GLOBAL__N_112PrettySuffixE", !20, i64 0, !37, i64 8}
!37 = !{!"double", !10, i64 0}
!38 = !{!36, !37, i64 8}
!39 = distinct !{!39, !14}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZN5folly7parseToIdEENSt9enable_ifIX15is_arithmetic_vIT_EENS_8ExpectedINS_5RangeIPKcEENS_14ConversionCodeEEEE4typeES7_RS2_: argument 0"}
!42 = distinct !{!42, !"_ZN5folly7parseToIdEENSt9enable_ifIX15is_arithmetic_vIT_EENS_8ExpectedINS_5RangeIPKcEENS_14ConversionCodeEEEE4typeES7_RS2_"}
!43 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_ZZN5folly2toIdEET_PNS_5RangeIPKcEEENKUlNS_14ConversionCodeEE_clES7_: argument 0"}
!46 = distinct !{!46, !"_ZZN5folly2toIdEET_PNS_5RangeIPKcEEENKUlNS_14ConversionCodeEE_clES7_"}
!47 = !{!48, !50, !41}
!48 = distinct !{!48, !49, !"_ZN5folly15expected_detail30expected_detail_ExpectedHelper14ExpectedHelper5then_INS0_15ExpectedStorageIdNS_14ConversionCodeELNS0_11StorageTypeE0EEEZNS_7parseToIdEENSt9enable_ifIX15is_arithmetic_vIT_EENS_8ExpectedINS_5RangeIPKcEES5_EEE4typeESF_RSA_EUldE_JES5_S2_EEDTclsrT3_5then_clsrSL_7return_IT2_Ecmclclsr3stdE7declvalIT0_EEcldtclsr3stdE7declvalISA_EE5valueEEL_ZNS_L4unitEEEspclsr3stdE7declvalIT1_EEEEOSA_OSN_DpOSO_: argument 0"}
!49 = distinct !{!49, !"_ZN5folly15expected_detail30expected_detail_ExpectedHelper14ExpectedHelper5then_INS0_15ExpectedStorageIdNS_14ConversionCodeELNS0_11StorageTypeE0EEEZNS_7parseToIdEENSt9enable_ifIX15is_arithmetic_vIT_EENS_8ExpectedINS_5RangeIPKcEES5_EEE4typeESF_RSA_EUldE_JES5_S2_EEDTclsrT3_5then_clsrSL_7return_IT2_Ecmclclsr3stdE7declvalIT0_EEcldtclsr3stdE7declvalISA_EE5valueEEL_ZNS_L4unitEEEspclsr3stdE7declvalIT1_EEEEOSA_OSN_DpOSO_"}
!50 = distinct !{!50, !51, !"_ZNO5folly8ExpectedIdNS_14ConversionCodeEE4thenIJZNS_7parseToIdEENSt9enable_ifIX15is_arithmetic_vIT_EENS0_INS_5RangeIPKcEES1_EEE4typeESA_RS6_EUldE_ELb0ETnNS5_IXooT0_scbgesZT_Li1EEiE4typeELi0EEEDTclsr15expected_detail14ExpectedHelperE5then_clL_ZSt7declvalIONS_15expected_detail15ExpectedStorageIdS1_LNSJ_11StorageTypeE0EEEEDTcl9__declvalIS6_ELi0EEEvEEspclsr3stdE7declvalIT_EEEEDpOSP_: argument 0"}
!51 = distinct !{!51, !"_ZNO5folly8ExpectedIdNS_14ConversionCodeEE4thenIJZNS_7parseToIdEENSt9enable_ifIX15is_arithmetic_vIT_EENS0_INS_5RangeIPKcEES1_EEE4typeESA_RS6_EUldE_ELb0ETnNS5_IXooT0_scbgesZT_Li1EEiE4typeELi0EEEDTclsr15expected_detail14ExpectedHelperE5then_clL_ZSt7declvalIONS_15expected_detail15ExpectedStorageIdS1_LNSJ_11StorageTypeE0EEEEDTcl9__declvalIS6_ELi0EEEvEEspclsr3stdE7declvalIT_EEEEDpOSP_"}
!52 = !{!53, !20, i64 0}
!53 = !{!"_ZTSN5folly5RangeIPKcEE", !20, i64 0, !20, i64 8}
!54 = distinct !{!54, !14}
!55 = distinct !{!55, !14}
!56 = !{!57, !57, i64 0}
!57 = !{!"vtable pointer", !11, i64 0}
!58 = !{!59, !65, i64 16}
!59 = !{!"_ZTSN5folly15ConversionErrorE", !60, i64 0, !65, i64 16}
!60 = !{!"_ZTSN5folly19ConversionErrorBaseE", !61, i64 0}
!61 = !{!"_ZTSSt11range_error", !62, i64 0}
!62 = !{!"_ZTSSt13runtime_error", !63, i64 0, !64, i64 8}
!63 = !{!"_ZTSSt9exception"}
!64 = !{!"_ZTSSt12__cow_string", !10, i64 0}
!65 = !{!"_ZTSN5folly14ConversionCodeE", !10, i64 0}
!66 = !{!67, !68, i64 0}
!67 = !{!"_ZTSSt16ostream_iteratorIN5folly5RangeIPKcEEcSt11char_traitsIcEE", !68, i64 0, !20, i64 8}
!68 = !{!"p1 _ZTSSo", !21, i64 0}
!69 = !{!67, !20, i64 8}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!72 = distinct !{!72, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!75 = distinct !{!75, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!76 = !{!74, !71}
!77 = !{!78, !20, i64 40}
!78 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !20, i64 40, !20, i64 48, !79, i64 56}
!79 = !{!"_ZTSSt6locale", !80, i64 0}
!80 = !{!"p1 _ZTSNSt6locale5_ImplE", !21, i64 0}
!81 = !{!78, !20, i64 32}
!82 = distinct !{!82, !14}
!83 = distinct !{!83, !14}
!84 = distinct !{!84, !14}
!85 = !{!9, !9, i64 0}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_ZN5follyL17invoke_strerror_rB5cxx11EPFPciS0_mEiS0_m: argument 0"}
!88 = distinct !{!88, !"_ZN5follyL17invoke_strerror_rB5cxx11EPFPciS0_mEiS0_m"}
!89 = !{!27, !27, i64 0}
!90 = distinct !{!90, !14}
!91 = distinct !{!91, !14, !92, !93}
!92 = !{!"llvm.loop.isvectorized", i32 1}
!93 = !{!"llvm.loop.unroll.runtime.disable"}
!94 = !{!"branch_weights", i32 16, i32 112}
!95 = distinct !{!95, !14, !92, !93}
!96 = distinct !{!96, !14}
!97 = distinct !{!97, !14, !93, !92}
!98 = !{!99, !100, i64 0}
!99 = !{!"_ZTSNSt12_Vector_baseIN5folly5RangeIPKcEESaIS4_EE17_Vector_impl_dataE", !100, i64 0, !100, i64 8, !100, i64 16}
!100 = !{!"p1 _ZTSN5folly5RangeIPKcEE", !21, i64 0}
!101 = !{!99, !100, i64 8}
!102 = !{!53, !20, i64 8}
!103 = distinct !{!103, !14}
!104 = distinct !{!104, !14}
!105 = distinct !{!105, !14}
!106 = distinct !{!106, !14}
!107 = distinct !{!107, !14}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZN5folly4joinIA2_cNS_5RangeIPNS2_IPKcEEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_: argument 0"}
!110 = distinct !{!110, !"_ZN5folly4joinIA2_cNS_5RangeIPNS2_IPKcEEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_"}
!111 = distinct !{!111, !14, !92, !93}
!112 = !{!"branch_weights", i32 4, i32 12}
!113 = distinct !{!113, !14, !92, !93}
!114 = distinct !{!114, !14, !93, !92}
!115 = !{!99, !100, i64 16}
!116 = !{i64 0, i64 8, !29, i64 8, i64 8, !29}
!117 = !{!118, !120}
!118 = distinct !{!118, !119, !"_ZSt19__relocate_object_aIN5folly5RangeIPKcEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!119 = distinct !{!119, !"_ZSt19__relocate_object_aIN5folly5RangeIPKcEES4_SaIS4_EEvPT_PT0_RT1_"}
!120 = distinct !{!120, !119, !"_ZSt19__relocate_object_aIN5folly5RangeIPKcEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!121 = distinct !{!121, !14}
!122 = distinct !{!122, !14}
!123 = distinct !{!123, !14}
!124 = !{!125, !127}
!125 = distinct !{!125, !126, !"_ZSt19__relocate_object_aIN5folly5RangeIPKcEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!126 = distinct !{!126, !"_ZSt19__relocate_object_aIN5folly5RangeIPKcEES4_SaIS4_EEvPT_PT0_RT1_"}
!127 = distinct !{!127, !126, !"_ZSt19__relocate_object_aIN5folly5RangeIPKcEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!128 = !{!129, !131}
!129 = distinct !{!129, !130, !"_ZSt19__relocate_object_aIN5folly5RangeIPKcEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!130 = distinct !{!130, !"_ZSt19__relocate_object_aIN5folly5RangeIPKcEES4_SaIS4_EEvPT_PT0_RT1_"}
!131 = distinct !{!131, !130, !"_ZSt19__relocate_object_aIN5folly5RangeIPKcEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!132 = !{!133, !135}
!133 = distinct !{!133, !134, !"_ZSt19__relocate_object_aIN5folly5RangeIPKcEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!134 = distinct !{!134, !"_ZSt19__relocate_object_aIN5folly5RangeIPKcEES4_SaIS4_EEvPT_PT0_RT1_"}
!135 = distinct !{!135, !134, !"_ZSt19__relocate_object_aIN5folly5RangeIPKcEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!136 = distinct !{!136, !14}
!137 = distinct !{!137, !14}
!138 = !{!139, !65, i64 16}
!139 = !{!"_ZTSN5folly23SubstringConversionCodeE", !53, i64 0, !65, i64 16}
!140 = distinct !{!140, !14}
!141 = distinct !{!141, !14}
end_hunk_0
