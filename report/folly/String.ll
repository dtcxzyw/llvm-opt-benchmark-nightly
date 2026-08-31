Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/String?download=true
inline.NumInlined: 666
inline.NumDeleted: 335
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
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
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #28
  br label %"_ZN5folly6detail14ScopeGuardImplIZNS_8errnoStrB5cxx11EiE3$_0Lb1EED2Ev.exit"

"_ZN5folly6detail14ScopeGuardImplIZNS_8errnoStrB5cxx11EiE3$_0Lb1EED2Ev.exit": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  store i32 %i.c, ptr %i.b, align 4, !tbaa !85
  ret void

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %.noexc11.i.i, %.noexc.i.i, %.noexc.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.al = load ptr, ptr %0, align 8, !tbaa !28    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.d
  br i1 %i.am, label %"_ZN5folly6detail14ScopeGuardImplIZNS_8errnoStrB5cxx11EiE3$_0Lb1EED2Ev.exit16", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.n
  %i.an = load i64, ptr %i.d, align 8, !tbaa !12
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #28
  br label %"_ZN5folly6detail14ScopeGuardImplIZNS_8errnoStrB5cxx11EiE3$_0Lb1EED2Ev.exit16"

"_ZN5folly6detail14ScopeGuardImplIZNS_8errnoStrB5cxx11EiE3$_0Lb1EED2Ev.exit16": ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
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
  br i1 %.not2953, label %.preheader, label %vector.body

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

.preheader:                                       ; preds = %vector.body, %.preheader50
  %.4.lcssa = phi i64 [ %.3.lcssa, %.preheader50 ], [ %index, %vector.body ] ; 4 uses
  %i.bd = icmp ult i64 %.4.lcssa, %1
  br i1 %i.bd, label %vec.epilog.vector.body, label %._crit_edge

vector.body:                                      ; preds = %.preheader50, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ %i.ap, %.preheader50 ] ; 3 uses
  %.454 = phi i64 [ %index, %vector.body ], [ %.3.lcssa, %.preheader50 ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %.454 ; 2 uses
  %2 = load i32, ptr %i.be, align 4, !tbaa !85    ; 3 uses
  %3 = and i32 %2, 2139062143
  %4 = add nuw i32 %3, 623191333
  %5 = and i32 %4, 2139062142
  %6 = add nuw i32 %5, 437918234
  %7 = xor i32 %2, -1
  %8 = and i32 %6, %7
  %9 = lshr i32 %8, 2
  %10 = and i32 %9, 538976288
  %11 = add i32 %10, %2
  store i32 %11, ptr %i.be, align 4, !tbaa !85
  %index.next = add i64 %index, 4                 ; 2 uses
  %.not29 = icmp ugt i64 %index.next, %1
  br i1 %.not29, label %.preheader, label %vector.body, !llvm.loop !91

vec.epilog.vector.body:                           ; preds = %.preheader
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %.4.lcssa ; 2 uses
  %12 = load i8, ptr %i.bf, align 1, !tbaa !12    ; 3 uses
  %narrow.i31 = add i8 %12, 37
  %13 = and i8 %narrow.i31, 126
  %narrow9.i32 = add nuw i8 %13, 26
  %14 = xor i8 %12, -1
  %15 = and i8 %narrow9.i32, %14
  %16 = lshr i8 %15, 2
  %17 = and i8 %16, 32
  %18 = add i8 %17, %12
  store i8 %18, ptr %i.bf, align 1, !tbaa !12
  %index.next75 = add nuw i64 %.4.lcssa, 1        ; 2 uses
  %i.bg = icmp eq i64 %index.next75, %1
  br i1 %i.bg, label %._crit_edge, label %.lr.ph55

.lr.ph55:                                         ; preds = %vec.epilog.vector.body
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %index.next75 ; 2 uses
  %19 = load i8, ptr %i.bh, align 1, !tbaa !12    ; 3 uses
  %narrow.i31.1 = add i8 %19, 37
  %20 = and i8 %narrow.i31.1, 126
  %narrow9.i32.1 = add nuw i8 %20, 26
  %21 = xor i8 %19, -1
  %22 = and i8 %narrow9.i32.1, %21
  %23 = lshr i8 %22, 2
  %24 = and i8 %23, 32
  %25 = add i8 %24, %19
  store i8 %25, ptr %i.bh, align 1, !tbaa !12
  %i.bi = add nuw i64 %.4.lcssa, 2                ; 2 uses
  %exitcond61.not.1 = icmp eq i64 %i.bi, %1
  br i1 %exitcond61.not.1, label %._crit_edge, label %.lr.ph58

.lr.ph58:                                         ; preds = %.lr.ph55
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %i.bi ; 2 uses
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
  br label %._crit_edge

._crit_edge:                                      ; preds = %vec.epilog.vector.body, %.lr.ph55, %.lr.ph58, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5folly12toUpperAsciiEPcm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #21 {
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
  %narrow.i = add i8 %i.d, 5
  %i.e = and i8 %narrow.i, 126
  %narrow9.i = add nuw i8 %i.e, 26
  %i.f = xor i8 %i.d, -1
  %i.g = and i8 %narrow9.i, %i.f
  %i.h = lshr i8 %i.g, 2
  %i.i = and i8 %i.h, 32
  %i.j = sub i8 %i.d, %i.i
  store i8 %i.j, ptr %0, align 1, !tbaa !12
  %exitcond.not = icmp samesign ult i64 %.sroa.speculated, 2
  br i1 %exitcond.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !12    ; 3 uses
  %narrow.i.1 = add i8 %i.l, 5
  %i.m = and i8 %narrow.i.1, 126
  %narrow9.i.1 = add nuw i8 %i.m, 26
  %i.n = xor i8 %i.l, -1
  %i.o = and i8 %narrow9.i.1, %i.n
  %i.p = lshr i8 %i.o, 2
  %i.q = and i8 %i.p, 32
  %i.r = sub i8 %i.l, %i.q
  store i8 %i.r, ptr %i.k, align 1, !tbaa !12
  %exitcond.not.1 = icmp eq i64 %.sroa.speculated, 2
  br i1 %exitcond.not.1, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !12    ; 3 uses
  %narrow.i.2 = add i8 %i.t, 5
  %i.u = and i8 %narrow.i.2, 126
  %narrow9.i.2 = add nuw i8 %i.u, 26
  %i.v = xor i8 %i.t, -1
  %i.w = and i8 %narrow9.i.2, %i.v
  %i.x = lshr i8 %i.w, 2
  %i.y = and i8 %i.x, 32
  %i.z = sub i8 %i.t, %i.y
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
  %i.ag = add nuw i32 %i.af, 84215045
  %i.ah = and i32 %i.ag, 2139062142
  %i.ai = add nuw i32 %i.ah, 437918234
  %i.aj = xor i32 %i.ae, -1
  %i.ak = and i32 %i.ai, %i.aj
  %i.al = lshr i32 %i.ak, 2
  %i.am = and i32 %i.al, 538976288
  %i.an = sub i32 %i.ae, %i.am
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
  br i1 %.not2953, label %.preheader, label %vector.body

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %i.aq = phi i64 [ %i.bc, %.lr.ph ], [ %i.ao, %bb.g ] ; 3 uses
  %.352 = phi i64 [ %i.aq, %.lr.ph ], [ %.2, %bb.g ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %.352 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !89 ; 3 uses
  %i.at = and i64 %i.as, 9187201950435737471
  %i.au = add nuw i64 %i.at, 361700864190383365
  %i.av = and i64 %i.au, 9187201950435737470
  %i.aw = add nuw i64 %i.av, 1880844493789993498
  %i.ax = xor i64 %i.as, -1
  %i.ay = and i64 %i.aw, %i.ax
  %i.az = lshr i64 %i.ay, 2
  %i.ba = and i64 %i.az, 2314885530818453536
  %i.bb = sub i64 %i.as, %i.ba
  store i64 %i.bb, ptr %i.ar, align 8, !tbaa !89
  %i.bc = add i64 %i.aq, 8                        ; 2 uses
  %.not28 = icmp ugt i64 %i.bc, %1
  br i1 %.not28, label %.preheader50, label %.lr.ph, !llvm.loop !92

.preheader:                                       ; preds = %vector.body, %.preheader50
  %.4.lcssa = phi i64 [ %.3.lcssa, %.preheader50 ], [ %index, %vector.body ] ; 4 uses
  %i.bd = icmp ult i64 %.4.lcssa, %1
  br i1 %i.bd, label %vec.epilog.vector.body, label %._crit_edge

vector.body:                                      ; preds = %.preheader50, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ %i.ap, %.preheader50 ] ; 3 uses
  %.454 = phi i64 [ %index, %vector.body ], [ %.3.lcssa, %.preheader50 ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %.454 ; 2 uses
  %2 = load i32, ptr %i.be, align 4, !tbaa !85    ; 3 uses
  %3 = and i32 %2, 2139062143
  %4 = add nuw i32 %3, 84215045
  %5 = and i32 %4, 2139062142
  %6 = add nuw i32 %5, 437918234
  %7 = xor i32 %2, -1
  %8 = and i32 %6, %7
  %9 = lshr i32 %8, 2
  %10 = and i32 %9, 538976288
  %11 = sub i32 %2, %10
  store i32 %11, ptr %i.be, align 4, !tbaa !85
  %index.next = add i64 %index, 4                 ; 2 uses
  %.not29 = icmp ugt i64 %index.next, %1
  br i1 %.not29, label %.preheader, label %vector.body, !llvm.loop !93

vec.epilog.vector.body:                           ; preds = %.preheader
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %.4.lcssa ; 2 uses
  %12 = load i8, ptr %i.bf, align 1, !tbaa !12    ; 3 uses
  %narrow.i31 = add i8 %12, 5
  %13 = and i8 %narrow.i31, 126
  %narrow9.i32 = add nuw i8 %13, 26
  %14 = xor i8 %12, -1
  %15 = and i8 %narrow9.i32, %14
  %16 = lshr i8 %15, 2
  %17 = and i8 %16, 32
  %18 = sub i8 %12, %17
  store i8 %18, ptr %i.bf, align 1, !tbaa !12
  %index.next75 = add nuw i64 %.4.lcssa, 1        ; 2 uses
  %i.bg = icmp eq i64 %index.next75, %1
  br i1 %i.bg, label %._crit_edge, label %.lr.ph55

.lr.ph55:                                         ; preds = %vec.epilog.vector.body
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %index.next75 ; 2 uses
  %19 = load i8, ptr %i.bh, align 1, !tbaa !12    ; 3 uses
  %narrow.i31.1 = add i8 %19, 5
  %20 = and i8 %narrow.i31.1, 126
  %narrow9.i32.1 = add nuw i8 %20, 26
  %21 = xor i8 %19, -1
  %22 = and i8 %narrow9.i32.1, %21
  %23 = lshr i8 %22, 2
  %24 = and i8 %23, 32
  %25 = sub i8 %19, %24
  store i8 %25, ptr %i.bh, align 1, !tbaa !12
  %i.bi = add nuw i64 %.4.lcssa, 2                ; 2 uses
  %exitcond61.not.1 = icmp eq i64 %i.bi, %1
  br i1 %exitcond61.not.1, label %._crit_edge, label %.lr.ph58

.lr.ph58:                                         ; preds = %.lr.ph55
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %i.bi ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !12  ; 3 uses
  %narrow.i31.a = add i8 %i.bk, 5
  %i.bl = and i8 %narrow.i31.a, 126
  %narrow9.i32.a = add nuw i8 %i.bl, 26
  %i.bm = xor i8 %i.bk, -1
  %i.bn = and i8 %narrow9.i32.a, %i.bm
  %i.bo = lshr i8 %i.bn, 2
  %i.bp = and i8 %i.bo, 32
  %i.bq = sub i8 %i.bk, %i.bp
  store i8 %i.bq, ptr %i.bj, align 1, !tbaa !12
  br label %._crit_edge

._crit_edge:                                      ; preds = %vec.epilog.vector.body, %.lr.ph55, %.lr.ph58, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef readonly align 8 captures(none) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !28     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c
  invoke void @_ZN5folly6detail17splitByCharScalarILb0ESt6vectorINS_5RangeIPKcEESaIS6_EEEEvcS6_RT0_(i8 noundef signext 10, ptr %i.a, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !94     ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !97   ; 6 uses
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.j ; 3 uses
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !52   ; 4 uses
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 -8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !98   ; 2 uses
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
  br i1 %i.aa, label %.lr.ph.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !99

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
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !98 ; 2 uses
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
  br i1 %i.ax, label %.lr.ph.i.i.i47, label %._crit_edge.loopexit.i.i.i54, !llvm.loop !100

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
  %.sroa.0.0 = phi ptr [ %i.bf, %_ZN5folly5RangeIPNS0_IPKcEEE5eraseES4_S4_.exit ], [ %i.e, %"_ZSt7find_ifIPKcZN5folly15stripLeftMarginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1ET_SA_SA_T0_.exit" ] ; 10 uses
  %.not141 = icmp eq ptr %.sroa.0.0, %i.g
  br i1 %.not141, label %._crit_edge150.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w, %bb.ah
  %.0144 = phi ptr [ %i.ce, %bb.ah ], [ %.sroa.0.0, %bb.w ] ; 3 uses
  %.0109143 = phi i64 [ %.1110, %bb.ah ], [ 0, %bb.w ] ; 2 uses
  %.0111142 = phi i64 [ %.1112, %bb.ah ], [ -1, %bb.w ] ; 2 uses
  %i.bg = load ptr, ptr %.0144, align 8, !tbaa !52 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0144, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !98 ; 2 uses
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
  br i1 %i.bu, label %.lr.ph.i.i.i67, label %._crit_edge.loopexit.i.i.i74, !llvm.loop !101

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
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !102

._crit_edge:                                      ; preds = %bb.ah
  %i.cf = icmp eq i64 %.1112, -1
  %spec.select = select i1 %i.cf, i64 %.1110, i64 %.1112 ; 2 uses
  br label %.lr.ph149

.lr.ph149:                                        ; preds = %._crit_edge, %bb.aj
  %.1147 = phi ptr [ %i.co, %bb.aj ], [ %.sroa.0.0, %._crit_edge ] ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.1147, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !98
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
  br i1 %.not31, label %._crit_edge150, label %.lr.ph149, !llvm.loop !103

._crit_edge150.thread:                            ; preds = %bb.w
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.cp, ptr %0, align 8, !tbaa !18, !alias.scope !104
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.cq, align 8, !tbaa !25, !alias.scope !104
  store i8 0, ptr %i.cp, align 8, !tbaa !12, !alias.scope !104
  br label %_ZN5folly4joinIA2_cNS_5RangeIPNS2_IPKcEEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit

._crit_edge150:                                   ; preds = %bb.aj
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.cr, ptr %0, align 8, !tbaa !18, !alias.scope !104
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.cs, align 8, !tbaa !25, !alias.scope !104
  store i8 0, ptr %i.cr, align 8, !tbaa !12, !alias.scope !104
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !98
  %i.cv = load ptr, ptr %.sroa.0.0, align 8, !tbaa !52
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx                    ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16 ; 5 uses
  %.not22.i.i.i = icmp eq ptr %i.cz, %i.g
  br i1 %.not22.i.i.i, label %._crit_edge.i.i.i79, label %.lr.ph.i.i.i78.preheader

.lr.ph.i.i.i78.preheader:                         ; preds = %._crit_edge150
  %i.da = ptrtoaddr ptr %.sroa.0.0 to i64
  %i.db = add i64 %i.h, -32
  %i.dc = sub i64 %i.db, %i.da                    ; 2 uses
  %i.dd = lshr i64 %i.dc, 4
  %i.de = add nuw nsw i64 %i.dd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dc, 48
  br i1 %min.iters.check, label %.lr.ph.i.i.i78.preheader221, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i78.preheader
  %n.vec = and i64 %i.de, 2305843009213693948     ; 3 uses
  %i.df = shl i64 %n.vec, 4                       ; 2 uses
  %i.dg = getelementptr i8, ptr %i.cz, i64 %i.df
  %i.dh = getelementptr i8, ptr %.sroa.0.0, i64 %i.df
  %i.di = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.cy, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.di, %vector.ph ], [ %i.dt, %vector.body ]
  %vec.phi214 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.du, %vector.body ]
  %i.dj = shl i64 %index, 4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cz, i64 %i.dj
  %i.dk = getelementptr i8, ptr %i.cz, i64 %i.dj
  %next.gep215 = getelementptr i8, ptr %i.dk, i64 32
  %wide.vec = load <4 x ptr>, ptr %next.gep, align 8, !tbaa !29 ; 2 uses
  %strided.vec = shufflevector <4 x ptr> %wide.vec, <4 x ptr> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec216 = shufflevector <4 x ptr> %wide.vec, <4 x ptr> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec217 = load <4 x ptr>, ptr %next.gep215, align 8, !tbaa !29 ; 2 uses
  %strided.vec218 = shufflevector <4 x ptr> %wide.vec217, <4 x ptr> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec219 = shufflevector <4 x ptr> %wide.vec217, <4 x ptr> poison, <2 x i32> <i32 1, i32 3>
  %i.dl = ptrtoint <2 x ptr> %strided.vec216 to <2 x i64>
  %i.dm = ptrtoint <2 x ptr> %strided.vec219 to <2 x i64>
  %i.dn = ptrtoint <2 x ptr> %strided.vec to <2 x i64>
  %i.do = ptrtoint <2 x ptr> %strided.vec218 to <2 x i64>
  %i.dp = add <2 x i64> %vec.phi, splat (i64 1)
  %i.dq = add <2 x i64> %vec.phi214, splat (i64 1)
  %i.dr = add <2 x i64> %i.dp, %i.dl
  %i.ds = add <2 x i64> %i.dq, %i.dm
  %i.dt = sub <2 x i64> %i.dr, %i.dn              ; 2 uses
  %i.du = sub <2 x i64> %i.ds, %i.do              ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dv = icmp eq i64 %index.next, %n.vec
  br i1 %i.dv, label %middle.block, label %vector.body, !llvm.loop !107

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.du, %i.dt
  %i.dw = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.de, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i79, label %.lr.ph.i.i.i78.preheader221

.lr.ph.i.i.i78.preheader221:                      ; preds = %.lr.ph.i.i.i78.preheader, %middle.block
  %.ph = phi ptr [ %i.cz, %.lr.ph.i.i.i78.preheader ], [ %i.dg, %middle.block ]
  %.024.i.i.i.ph = phi ptr [ %.sroa.0.0, %.lr.ph.i.i.i78.preheader ], [ %i.dh, %middle.block ]
  %.01723.i.i.i.ph = phi i64 [ %i.cy, %.lr.ph.i.i.i78.preheader ], [ %i.dw, %middle.block ]
  br label %.lr.ph.i.i.i78

.lr.ph.i.i.i78:                                   ; preds = %.lr.ph.i.i.i78.preheader221, %.lr.ph.i.i.i78
  %i.dx = phi ptr [ %i.eg, %.lr.ph.i.i.i78 ], [ %.ph, %.lr.ph.i.i.i78.preheader221 ] ; 3 uses
  %.024.i.i.i = phi ptr [ %i.dx, %.lr.ph.i.i.i78 ], [ %.024.i.i.i.ph, %.lr.ph.i.i.i78.preheader221 ]
  %.01723.i.i.i = phi i64 [ %i.ef, %.lr.ph.i.i.i78 ], [ %.01723.i.i.i.ph, %.lr.ph.i.i.i78.preheader221 ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.024.i.i.i, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !98
  %i.ea = load ptr, ptr %i.dx, align 8, !tbaa !52
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = add i64 %.01723.i.i.i, 1
  %i.ee = add i64 %i.ed, %i.eb
  %i.ef = sub i64 %i.ee, %i.ec                    ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dx, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.eg, %i.g
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i79, label %.lr.ph.i.i.i78, !llvm.loop !110

._crit_edge.i.i.i79:                              ; preds = %.lr.ph.i.i.i78, %middle.block, %._crit_edge150
  %.017.lcssa.i.i.i = phi i64 [ %i.cy, %._crit_edge150 ], [ %i.dw, %middle.block ], [ %i.ef, %.lr.ph.i.i.i78 ]
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.017.lcssa.i.i.i)
          to label %.noexc.i unwind label %bb.ak

.noexc.i:                                         ; preds = %._crit_edge.i.i.i79
  invoke void @_ZN5folly6detail18internalJoinAppendINS_5RangeIPKcEEPS5_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_T0_SE_RT1_(ptr nonnull align 1 dereferenceable(2) @.str.73, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.73, i64 1), ptr noundef nonnull %.sroa.0.0, ptr noundef nonnull %i.k, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN5folly4joinIA2_cNS_5RangeIPNS2_IPKcEEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit unwind label %bb.ak

bb.ak:                                            ; preds = %.noexc.i, %._crit_edge.i.i.i79
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ei = load ptr, ptr %0, align 8, !tbaa !28, !alias.scope !104 ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.cr
  br i1 %i.ej, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ak
  %i.ek = load i64, ptr %i.cr, align 8, !tbaa !12, !alias.scope !104
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #28
  br label %.body

_ZN5folly4joinIA2_cNS_5RangeIPNS2_IPKcEEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit: ; preds = %._crit_edge150.thread, %.noexc.i
  %i.em = load ptr, ptr %2, align 8, !tbaa !94    ; 3 uses
  %.not.i.i.i80 = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i80, label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZN5folly4joinIA2_cNS_5RangeIPNS2_IPKcEEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !111
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = ptrtoint ptr %i.em to i64
  %i.er = sub i64 %i.ep, %i.eq
  call void @_ZdlPvm(ptr noundef nonnull %i.em, i64 noundef %i.er) #28
  br label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EED2Ev.exit

_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EED2Ev.exit: ; preds = %_ZN5folly4joinIA2_cNS_5RangeIPNS2_IPKcEEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

.body:                                            ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.l ], [ %i.eh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.eh, %bb.ak ]
  %i.es = load ptr, ptr %2, align 8, !tbaa !94    ; 3 uses
  %.not.i.i.i81 = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i81, label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EED2Ev.exit82, label %bb.am

bb.am:                                            ; preds = %.body
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !111
  %i.ev = ptrtoint ptr %i.eu to i64
  %i.ew = ptrtoint ptr %i.es to i64
  %i.ex = sub i64 %i.ev, %i.ew
  call void @_ZdlPvm(ptr noundef nonnull %i.es, i64 noundef %i.ex) #28
  br label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EED2Ev.exit82

_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EED2Ev.exit82: ; preds = %.body, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly6detail17splitByCharScalarILb0ESt6vectorINS_5RangeIPKcEESaIS6_EEEEvcS6_RT0_(i8 noundef signext %0, ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #22 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not34 = icmp eq ptr %1, %2
  br i1 %.not34, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN5folly6detail17splitByCharScalarILb0ESt6vectorINS_5RangeIPKcEESaIS6_EEEEvcS6_RT0_ENUlS5_S5_E_clES5_S5_.exit
  %.036 = phi ptr [ %1, %.lr.ph ], [ %i.c, %_ZZN5folly6detail17splitByCharScalarILb0ESt6vectorINS_5RangeIPKcEESaIS6_EEEEvcS6_RT0_ENUlS5_S5_E_clES5_S5_.exit ] ; 3 uses
  %.01235 = phi ptr [ %1, %.lr.ph ], [ %.1, %_ZZN5folly6detail17splitByCharScalarILb0ESt6vectorINS_5RangeIPKcEESaIS6_EEEEvcS6_RT0_ENUlS5_S5_E_clES5_S5_.exit ] ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.036, i64 1 ; 4 uses
  %i.d = load i8, ptr %.036, align 1, !tbaa !12
  %i.e = icmp eq i8 %i.d, %0
  br i1 %i.e, label %bb.c, label %_ZZN5folly6detail17splitByCharScalarILb0ESt6vectorINS_5RangeIPKcEESaIS6_EEEEvcS6_RT0_ENUlS5_S5_E_clES5_S5_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = ptrtoint ptr %.036 to i64
  %i.g = ptrtoint ptr %.01235 to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !97   ; 7 uses
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !111
  %.not.i.i = icmp eq ptr %i.i, %i.j
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %.01235, ptr %i.i, align 8, !tbaa !52
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %.01235, i64 %i.h
  store ptr %i.l, ptr %i.k, align 8, !tbaa !98
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.m, ptr %i.a, align 8, !tbaa !97
  br label %_ZZN5folly6detail17splitByCharScalarILb0ESt6vectorINS_5RangeIPKcEESaIS6_EEEEvcS6_RT0_ENUlS5_S5_E_clES5_S5_.exit

bb.e:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %3, align 8, !tbaa !94     ; 5 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775792
  br i1 %i.r, label %bb.f, label %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.80) #29
  unreachable

_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i.i: ; preds = %bb.e
  %i.s = ashr exact i64 %i.q, 4                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 576460752303423487)
  %i.w = select i1 %i.u, i64 576460752303423487, i64 %i.v ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 4
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #30 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.q ; 2 uses
  store ptr %.01235, ptr %i.z, align 8, !tbaa !52
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.01235, i64 %i.h
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !98
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.n, %i.i
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i ], [ %i.y, %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i ], [ %i.n, %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !112, !alias.scope !113
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ac, %i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !117

_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.y, %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i.i ], [ %i.ad, %.lr.ph.i.i.i.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  %.not.i34.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i34.i.i.i, label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJRS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i.i
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !111
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.ah) #28
  br label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJRS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJRS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i.i
  store ptr %i.y, ptr %3, align 8, !tbaa !94
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !97
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.w
  store ptr %i.ai, ptr %i.b, align 8, !tbaa !111
  br label %_ZZN5folly6detail17splitByCharScalarILb0ESt6vectorINS_5RangeIPKcEESaIS6_EEEEvcS6_RT0_ENUlS5_S5_E_clES5_S5_.exit

_ZZN5folly6detail17splitByCharScalarILb0ESt6vectorINS_5RangeIPKcEESaIS6_EEEEvcS6_RT0_ENUlS5_S5_E_clES5_S5_.exit: ; preds = %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJRS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.d, %bb.b
  %.1 = phi ptr [ %.01235, %bb.b ], [ %i.c, %bb.d ], [ %i.c, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJRS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ] ; 2 uses
  %.not = icmp eq ptr %i.c, %2
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !118

._crit_edge:                                      ; preds = %_ZZN5folly6detail17splitByCharScalarILb0ESt6vectorINS_5RangeIPKcEESaIS6_EEEEvcS6_RT0_ENUlS5_S5_E_clES5_S5_.exit, %bb.a
  %.012.lcssa = phi ptr [ %1, %bb.a ], [ %.1, %_ZZN5folly6detail17splitByCharScalarILb0ESt6vectorINS_5RangeIPKcEESaIS6_EEEEvcS6_RT0_ENUlS5_S5_E_clES5_S5_.exit ] ; 5 uses
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %2, %_ZZN5folly6detail17splitByCharScalarILb0ESt6vectorINS_5RangeIPKcEESaIS6_EEEEvcS6_RT0_ENUlS5_S5_E_clES5_S5_.exit ]
  %i.aj = ptrtoint ptr %.0.lcssa to i64
  %i.ak = ptrtoint ptr %.012.lcssa to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !97 ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !111
  %.not.i.i13 = icmp eq ptr %i.an, %i.ap
  br i1 %.not.i.i13, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  store ptr %.012.lcssa, ptr %i.an, align 8, !tbaa !52
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.lcssa, i64 %i.al
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !98
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.as, ptr %i.am, align 8, !tbaa !97
  br label %_ZZN5folly6detail17splitByCharScalarILb0ESt6vectorINS_5RangeIPKcEESaIS6_EEEEvcS6_RT0_ENUlS5_S5_E_clES5_S5_.exit26

bb.i:                                             ; preds = %._crit_edge
  %i.at = load ptr, ptr %3, align 8, !tbaa !94    ; 5 uses
  %i.au = ptrtoint ptr %i.an to i64
  %i.av = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.aw = sub i64 %i.au, %i.av                    ; 3 uses
  %i.ax = icmp eq i64 %i.aw, 9223372036854775792
  br i1 %i.ax, label %bb.j, label %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i.i14

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.80) #29
  unreachable

_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i.i14: ; preds = %bb.i
  %i.ay = ashr exact i64 %i.aw, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i15 = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 1)
  %i.az = add nsw i64 %.sroa.speculated.i.i.i.i15, %i.ay ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.ay
  %i.bb = tail call i64 @llvm.umin.i64(i64 %i.az, i64 576460752303423487)
  %i.bc = select i1 %i.ba, i64 576460752303423487, i64 %i.bb ; 3 uses
  %.not.i.i.i.i16 = icmp ne i64 %i.bc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i16)
  %i.bd = shl nuw nsw i64 %i.bc, 4
  %i.be = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #30 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.aw ; 2 uses
  store ptr %.012.lcssa, ptr %i.bf, align 8, !tbaa !52
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.lcssa, i64 %i.al
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !98
  %.not10.i.i.i.i.i.i17 = icmp eq ptr %i.at, %i.an
  br i1 %.not10.i.i.i.i.i.i17, label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i.i22, label %.lr.ph.i.i.i.i.i.i18

.lr.ph.i.i.i.i.i.i18:                             ; preds = %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i.i14, %.lr.ph.i.i.i.i.i.i18
  %.012.i.i.i.i.i.i19 = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i18 ], [ %i.be, %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i.i14 ] ; 2 uses
  %.0911.i.i.i.i.i.i20 = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.i18 ], [ %i.at, %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i.i14 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i19, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i20, i64 16, i1 false), !tbaa.struct !112, !alias.scope !119
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i20, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i19, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i21 = icmp eq ptr %i.bi, %i.an
  br i1 %.not.i.i.i.i.i.i21, label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i.i22, label %.lr.ph.i.i.i.i.i.i18, !llvm.loop !117

_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i.i22: ; preds = %.lr.ph.i.i.i.i.i.i18, %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i.i14
  %.0.lcssa.i.i.i.i.i.i23 = phi ptr [ %i.be, %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i.i14 ], [ %i.bj, %.lr.ph.i.i.i.i.i.i18 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i23, i64 16
  %.not.i34.i.i.i24 = icmp eq ptr %i.at, null
  br i1 %.not.i34.i.i.i24, label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJRS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i25, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i.i22
  %i.bl = load ptr, ptr %i.ao, align 8, !tbaa !111
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = sub i64 %i.bm, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.bn) #28
  br label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJRS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i25

_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJRS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i25: ; preds = %bb.k, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i.i22
  store ptr %i.be, ptr %3, align 8, !tbaa !94
  store ptr %i.bk, ptr %i.am, align 8, !tbaa !97
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %i.bc
  store ptr %i.bo, ptr %i.ao, align 8, !tbaa !111
  br label %_ZZN5folly6detail17splitByCharScalarILb0ESt6vectorINS_5RangeIPKcEESaIS6_EEEEvcS6_RT0_ENUlS5_S5_E_clES5_S5_.exit26

_ZZN5folly6detail17splitByCharScalarILb0ESt6vectorINS_5RangeIPKcEESaIS6_EEEEvcS6_RT0_ENUlS5_S5_E_clES5_S5_.exit26: ; preds = %bb.h, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJRS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i25
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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #29
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store ptr %4, ptr %i.b, align 8, !tbaa !31
  call void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2EEEE4callIJcNS_5RangeIPKcEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpRKT_(ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.ad, %3
  br i1 %.not.i, label %_ZN5folly6detail18internalJoinAppendIcPNS_5RangeIPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_T0_SE_RT1_.exit, label %.lr.ph.i, !llvm.loop !123

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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #29
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store ptr %4, ptr %i.c, align 8, !tbaa !31
  call void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2EEEE4callIJNS_5RangeIPKcEES9_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ay, %3
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !124

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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #29
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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #29
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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #29
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
define noundef zeroext i1 @_ZNK5folly23SubstringConversionCodeeqERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %1) local_unnamed_addr #23 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !125
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i8, ptr %i.c, align 8, !tbaa !125
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN5follyeqIPKcEEbRKNS_5RangeIT_EES7_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !98   ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !52     ; 3 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !98
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
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.d, !llvm.loop !127

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
  br i1 %.not43.i, label %bb.c, label %bb.d, !llvm.loop !128

_ZN5folly6detail20delimCountTokensImplINS_5RangeIPKcEEEEmT_S5_b.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.j, %bb.b ], [ %spec.select.i, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nounwind }
attributes #28 = { builtin nounwind }
attributes #29 = { noreturn }
attributes #30 = { builtin allocsize(0) }
attributes #31 = { noreturn nounwind }
attributes #32 = { nounwind willreturn memory(read) }
attributes #33 = { cold }
attributes #34 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
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
!91 = distinct !{!91, !14}
!92 = distinct !{!92, !14}
!93 = distinct !{!93, !14}
!94 = !{!95, !96, i64 0}
!95 = !{!"_ZTSNSt12_Vector_baseIN5folly5RangeIPKcEESaIS4_EE17_Vector_impl_dataE", !96, i64 0, !96, i64 8, !96, i64 16}
!96 = !{!"p1 _ZTSN5folly5RangeIPKcEE", !21, i64 0}
!97 = !{!95, !96, i64 8}
!98 = !{!53, !20, i64 8}
!99 = distinct !{!99, !14}
!100 = distinct !{!100, !14}
!101 = distinct !{!101, !14}
!102 = distinct !{!102, !14}
!103 = distinct !{!103, !14}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_ZN5folly4joinIA2_cNS_5RangeIPNS2_IPKcEEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_: argument 0"}
!106 = distinct !{!106, !"_ZN5folly4joinIA2_cNS_5RangeIPNS2_IPKcEEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_"}
!107 = distinct !{!107, !14, !108, !109}
!108 = !{!"llvm.loop.isvectorized", i32 1}
!109 = !{!"llvm.loop.unroll.runtime.disable"}
!110 = distinct !{!110, !14, !109, !108}
!111 = !{!95, !96, i64 16}
!112 = !{i64 0, i64 8, !29, i64 8, i64 8, !29}
!113 = !{!114, !116}
!114 = distinct !{!114, !115, !"_ZSt19__relocate_object_aIN5folly5RangeIPKcEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!115 = distinct !{!115, !"_ZSt19__relocate_object_aIN5folly5RangeIPKcEES4_SaIS4_EEvPT_PT0_RT1_"}
!116 = distinct !{!116, !115, !"_ZSt19__relocate_object_aIN5folly5RangeIPKcEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!117 = distinct !{!117, !14}
!118 = distinct !{!118, !14}
!119 = !{!120, !122}
!120 = distinct !{!120, !121, !"_ZSt19__relocate_object_aIN5folly5RangeIPKcEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!121 = distinct !{!121, !"_ZSt19__relocate_object_aIN5folly5RangeIPKcEES4_SaIS4_EEvPT_PT0_RT1_"}
!122 = distinct !{!122, !121, !"_ZSt19__relocate_object_aIN5folly5RangeIPKcEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!123 = distinct !{!123, !14}
!124 = distinct !{!124, !14}
!125 = !{!126, !65, i64 16}
!126 = !{!"_ZTSN5folly23SubstringConversionCodeE", !53, i64 0, !65, i64 16}
!127 = distinct !{!127, !14}
!128 = distinct !{!128, !14}
end_hunk_0
