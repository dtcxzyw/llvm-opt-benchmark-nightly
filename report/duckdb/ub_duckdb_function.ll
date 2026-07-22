inline.NumInlined: 6549
inline.NumDeleted: 2624
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN6duckdb17InternalExceptionC2IJRKPKcEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_:bb.a
          cleanup
  %i.o = load ptr, ptr %4, align 8, !tbaa !22     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL27GetExamplesForFunctionAliasERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RNS_6vectorIS5_Lb1ESaIS5_EEE(ptr dead_on_unwind noalias nonnull writable align 8 initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !24
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !22
  %i.f = load i8, ptr %i.e, align 1, !tbaa !25    ; 4 uses
  %i.g = icmp sgt i8 %i.f, 96
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ult i8 %i.f, 123
  br i1 %i.h, label %bb.e, label %.thread

bb.d:                                             ; preds = %bb.b
  %i.i = icmp sgt i8 %i.f, 64
  br i1 %i.i, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.c, %bb.d
  %i.j = icmp samesign ugt i8 %i.f, 90
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread, %bb.c, %bb.a
  %i.k = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ true, %bb.d ], [ %i.j, %.thread ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !24
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %2, align 8, !tbaa !22
  %i.p = load i8, ptr %i.o, align 1, !tbaa !25    ; 4 uses
  %i.q = icmp sgt i8 %i.p, 96
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = icmp samesign ult i8 %i.p, 123
  br i1 %i.r, label %bb.i, label %.thread88

bb.h:                                             ; preds = %bb.f
  %i.s = icmp sgt i8 %i.p, 64
  br i1 %i.s, label %.thread88, label %bb.i

.thread88:                                        ; preds = %bb.g, %bb.h
  %i.t = icmp samesign ugt i8 %i.p, 90
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.thread88, %bb.g, %bb.e
  %i.u = phi i1 [ false, %bb.g ], [ false, %bb.e ], [ true, %bb.h ], [ %i.t, %.thread88 ]
  %i.v = load ptr, ptr %3, align 8, !tbaa !144    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !144  ; 2 uses
  %.not91113 = icmp eq ptr %i.v, %i.x
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  br i1 %.not91113, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.j

._crit_edge:                                      ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit
  %.pre = load ptr, ptr %0, align 8, !tbaa !144
  %.pre127 = load ptr, ptr %i.y, align 8, !tbaa !144
  %i.aa = icmp eq ptr %.pre, %.pre127
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  br i1 %i.aa, label %._crit_edge.thread, label %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit

bb.j:                                             ; preds = %.lr.ph, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit
  %.sroa.085.0114 = phi ptr [ %i.v, %.lr.ph ], [ %i.az, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit ] ; 8 uses
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !24  ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.085.0114, i64 8 ; 4 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !24 ; 3 uses
  %spec.select.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.ac, i64 %i.ae) ; 2 uses
  %i.af = icmp eq i64 %spec.select.i.i, 0
  br i1 %i.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i:     ; preds = %bb.j
  %i.ag = load ptr, ptr %1, align 8, !tbaa !22
  %i.ah = load ptr, ptr %.sroa.085.0114, align 8, !tbaa !22
  %bcmp94 = tail call i32 @bcmp(ptr %i.ah, ptr %i.ag, i64 %spec.select.i.i)
  %.not.i = icmp ne i32 %bcmp94, 0
  %.not95 = icmp ugt i64 %i.ac, %i.ae
  %or.cond96 = or i1 %.not95, %.not.i
  br i1 %or.cond96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread, label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit: ; preds = %bb.j
  %.not95.old = icmp ugt i64 %i.ac, %i.ae
  br i1 %.not95.old, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread, label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit
  br i1 %i.k, label %bb.k, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread
  %i.ai = load ptr, ptr %1, align 8, !tbaa !22
  %i.aj = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.085.0114, ptr noundef %i.ai, i64 noundef 0, i64 noundef %i.ac) #31
  %.not = icmp eq i64 %i.aj, -1
  br i1 %.not, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i, %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit
  %i.ak = load ptr, ptr %i.y, align 8, !tbaa !233 ; 6 uses
  %i.al = load ptr, ptr %i.z, align 8, !tbaa !331
  %.not.i49 = icmp eq ptr %i.ak, %i.al
  br i1 %.not.i49, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 3 uses
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !19
  %i.an = load ptr, ptr %.sroa.085.0114, align 8, !tbaa !22 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.085.0114, i64 16 ; 5 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.aq = load i64, ptr %i.ad, align 8, !tbaa !24 ; 2 uses
  %i.ar = icmp ult i64 %i.aq, 16
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %i.ao, i64 %i.as, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !22
  %i.at = load i64, ptr %i.ao, align 8, !tbaa !25
  store i64 %i.at, ptr %i.am, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.n
  %i.au = load i64, ptr %i.ad, align 8, !tbaa !24
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 %i.au, ptr %i.av, align 8, !tbaa !24
  store ptr %i.ao, ptr %.sroa.085.0114, align 8, !tbaa !22
  store i64 0, ptr %i.ad, align 8, !tbaa !24
  store i8 0, ptr %i.ao, align 8, !tbaa !25
  %i.aw = load ptr, ptr %i.y, align 8, !tbaa !233
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store ptr %i.ax, ptr %i.y, align 8, !tbaa !233
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

bb.o:                                             ; preds = %bb.l
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.085.0114)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i, %bb.o, %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.085.0114, i64 32 ; 2 uses
  %.not91 = icmp eq ptr %i.az, %i.x
  br i1 %.not91, label %._crit_edge, label %bb.j

._crit_edge.thread:                               ; preds = %bb.i, %._crit_edge
  %i.ba = phi ptr [ %i.ab, %._crit_edge ], [ %i.y, %bb.i ] ; 4 uses
  %i.bb = load i64, ptr %i.l, align 8, !tbaa !24
  %i.bc = icmp eq i64 %i.bb, 0
  %or.cond = select i1 %i.bc, i1 true, i1 %i.u
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.k
  br i1 %or.cond3, label %.loopexit.thread, label %bb.q

bb.q:                                             ; preds = %._crit_edge.thread
  %i.bd = load ptr, ptr %3, align 8, !tbaa !144   ; 2 uses
  %i.be = load ptr, ptr %i.w, align 8, !tbaa !144 ; 2 uses
  %.not92115 = icmp eq ptr %i.bd, %i.be
  br i1 %.not92115, label %.loopexit.thread, label %.lr.ph118

.lr.ph118:                                        ; preds = %bb.q
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph118, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit59.thread
  %.sroa.081.0116 = phi ptr [ %i.bd, %.lr.ph118 ], [ %i.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit59.thread ] ; 4 uses
  %i.bk = load i64, ptr %i.l, align 8, !tbaa !24  ; 7 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.081.0116, i64 8 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !24 ; 3 uses
  %spec.select.i.i50 = call noundef i64 @llvm.umin.i64(i64 %i.bk, i64 %i.bm) ; 2 uses
  %i.bn = icmp eq i64 %spec.select.i.i50, 0
  br i1 %i.bn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit59, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i52

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i52:   ; preds = %bb.r
  %i.bo = load ptr, ptr %2, align 8, !tbaa !22
  %i.bp = load ptr, ptr %.sroa.081.0116, align 8, !tbaa !22
  %bcmp = call i32 @bcmp(ptr %i.bp, ptr %i.bo, i64 %spec.select.i.i50)
  %.not.i53 = icmp ne i32 %bcmp, 0
  %.not93 = icmp ugt i64 %i.bk, %i.bm
  %or.cond97 = or i1 %.not93, %.not.i53
  br i1 %or.cond97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit59.thread, label %bb.s

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit59: ; preds = %bb.r
  %.not93.old = icmp ugt i64 %i.bk, %i.bm
  br i1 %.not93.old, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit59.thread, label %bb.s

bb.s:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit59
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %6 = load i64, ptr %i.bl, align 8, !tbaa !24    ; 3 uses
  %i.bq = sub i64 %6, %i.bk                       ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1353)
  %i.br = icmp ugt i64 %i.bk, %6
  br i1 %i.br, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.t:                                             ; preds = %bb.s
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.463, ptr noundef nonnull @.str.484, i64 noundef %i.bk, i64 noundef %6) #34
          to label %.noexc60 unwind label %.loopexit.split-lp

.noexc60:                                         ; preds = %bb.t
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.s
  store ptr %i.bf, ptr %5, align 8, !tbaa !19, !alias.scope !1353
  %i.bs = load ptr, ptr %.sroa.081.0116, align 8, !tbaa !22, !noalias !1353
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bk ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31, !noalias !1353
  store i64 %i.bq, ptr %i.a, align 8, !tbaa !15, !noalias !1353
  %i.bu = icmp ugt i64 %i.bq, 15
  br i1 %i.bu, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.bv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc61 unwind label %.loopexit98 ; 2 uses

.noexc61:                                         ; preds = %.noexc10.i.i
  store ptr %i.bv, ptr %5, align 8, !tbaa !22, !alias.scope !1353
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !15, !noalias !1353
  store i64 %i.bw, ptr %i.bf, align 8, !tbaa !25, !alias.scope !1353
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.bx = phi ptr [ %i.bv, %.noexc61 ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.bq, label %bb.v [
    i64 1, label %bb.u
    i64 0, label %bb.w
  ]

bb.u:                                             ; preds = %._crit_edge.i.i.i
  %i.by = load i8, ptr %i.bt, align 1, !tbaa !25
  store i8 %i.by, ptr %i.bx, align 1, !tbaa !25
  br label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bx, ptr align 1 %i.bt, i64 %i.bq, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %._crit_edge.i.i.i
  %i.bz = load i64, ptr %i.a, align 8, !tbaa !15, !noalias !1353 ; 2 uses
  store i64 %i.bz, ptr %i.bg, align 8, !tbaa !24, !alias.scope !1353
  %i.ca = load ptr, ptr %5, align 8, !tbaa !22, !alias.scope !1353
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bz
  store i8 0, ptr %i.cb, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31, !noalias !1353
  call void @llvm.experimental.noalias.scope.decl(metadata !1356)
  %i.cc = load i64, ptr %i.b, align 8, !tbaa !24, !noalias !1356
  %i.cd = load ptr, ptr %1, align 8, !tbaa !22, !noalias !1356
  %i.ce = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.cd, i64 noundef %i.cc)
          to label %.noexc64 unwind label %bb.ac  ; 6 uses

.noexc64:                                         ; preds = %bb.w
  store ptr %i.bh, ptr %4, align 8, !tbaa !19, !alias.scope !1356
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !22 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 5 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

bb.x:                                             ; preds = %.noexc64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !24 ; 3 uses
  %i.ck = icmp ult i64 %i.cj, 16
  call void @llvm.assume(i1 %i.ck)
  %i.cl = add nuw nsw i64 %i.cj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bh, ptr noundef nonnull align 8 dereferenceable(1) %i.cg, i64 %i.cl, i1 false)
  br label %bb.y

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %.noexc64
  store ptr %i.cf, ptr %4, align 8, !tbaa !22, !alias.scope !1356
  %i.cm = load i64, ptr %i.cg, align 8, !tbaa !25
  store i64 %i.cm, ptr %i.bh, align 8, !tbaa !25, !alias.scope !1356
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !24
  br label %bb.y

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62, %bb.x
  %i.cn = phi i64 [ %i.cj, %bb.x ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62 ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i64 %i.cn, ptr %i.bi, align 8, !tbaa !24, !alias.scope !1356
  store ptr %i.cg, ptr %i.ce, align 8, !tbaa !22
  store i64 0, ptr %i.co, align 8, !tbaa !24
  store i8 0, ptr %i.cg, align 8, !tbaa !25
  %i.cp = load ptr, ptr %i.ba, align 8, !tbaa !233 ; 6 uses
  %i.cq = load ptr, ptr %i.bj, align 8, !tbaa !331
  %.not.i65 = icmp eq ptr %i.cp, %i.cq
  br i1 %.not.i65, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 3 uses
  store ptr %i.cr, ptr %i.cp, align 8, !tbaa !19
  %i.cs = load ptr, ptr %4, align 8, !tbaa !22    ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.bh
  br i1 %i.ct, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

bb.aa:                                            ; preds = %bb.z
  %i.cu = load i64, ptr %i.bi, align 8, !tbaa !24 ; 3 uses
  %i.cv = icmp ult i64 %i.cu, 16
  call void @llvm.assume(i1 %i.cv)
  %i.cw = add nuw nsw i64 %i.cu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cr, ptr noundef nonnull align 8 dereferenceable(1) %i.bh, i64 %i.cw, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit69.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.z
  store ptr %i.cs, ptr %i.cp, align 8, !tbaa !22
  %i.cx = load i64, ptr %i.bh, align 8, !tbaa !25
  store i64 %i.cx, ptr %i.cr, align 8, !tbaa !25
  %.pre128 = load i64, ptr %i.bi, align 8, !tbaa !24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit69.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit69.thread: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  %i.cy = phi i64 [ %.pre128, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66 ], [ %i.cu, %bb.aa ]
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !24
  store ptr %i.bh, ptr %4, align 8, !tbaa !22
  store i64 0, ptr %i.bi, align 8, !tbaa !24
  store i8 0, ptr %i.bh, align 8, !tbaa !25
  %i.da = load ptr, ptr %i.ba, align 8, !tbaa !233
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  store ptr %i.db, ptr %i.ba, align 8, !tbaa !233
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ab:                                            ; preds = %bb.y
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.cp, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit69 unwind label %bb.ad

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit69: ; preds = %bb.ab
  %.pre129 = load ptr, ptr %4, align 8, !tbaa !22 ; 2 uses
  %i.dc = icmp eq ptr %.pre129, %i.bh
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit69
  call void @_ZdlPv(ptr noundef %.pre129) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit69, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit69.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  %i.dd = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.bf
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.dd) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit59.thread

.loopexit98:                                      ; preds = %.noexc10.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

.loopexit.split-lp:                               ; preds = %bb.t
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

bb.ac:                                            ; preds = %bb.w
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

bb.ad:                                            ; preds = %bb.ab
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dh = load ptr, ptr %4, align 8, !tbaa !22    ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.bh
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %bb.ad
  call void @_ZdlPv(ptr noundef %i.dh) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.df, %bb.ac ], [ %i.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74 ], [ %i.dg, %bb.ad ] ; 2 uses
  %i.dj = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.bf
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  call void @_ZdlPv(ptr noundef %i.dj) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %.loopexit98, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit98 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.af

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit59.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit59
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.081.0116, i64 32 ; 2 uses
  %.not92 = icmp eq ptr %i.dl, %i.be
  br i1 %.not92, label %.loopexit, label %bb.r

.loopexit:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit59.thread
  %.pre130 = load ptr, ptr %0, align 8, !tbaa !144
  %.pre131 = load ptr, ptr %i.ba, align 8, !tbaa !144
end_hunk_0
