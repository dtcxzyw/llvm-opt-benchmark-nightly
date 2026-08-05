inline.NumInlined: 407
inline.NumDeleted: 131
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5boost10stacktrace6detail11source_lineEPKvb:bb.a
  %i.e = sub i64 %i.d, %.09
  %i.f = inttoptr i64 %i.e to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @_ZN5boost10stacktrace6detail9addr2lineB5cxx11EPKcPKv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull @.str, ptr noundef %i.f)
  %i.g = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 noundef signext 58, i64 noundef -1) #19 ; 3 uses
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.i = add nuw i64 %i.g, 1                      ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !11, !noalias !24 ; 3 uses
  %.not = icmp ult i64 %i.g, %i.k
  br i1 %.not, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i64 noundef %i.i, i64 noundef %i.k) #21
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  store ptr %i.l, ptr %3, align 8, !tbaa !19, !alias.scope !24
  %i.m = load ptr, ptr %2, align 8, !tbaa !16, !noalias !24
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.i ; 2 uses
  %i.o = sub nuw i64 %i.k, %i.i                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19, !noalias !24
  store i64 %i.o, ptr %i.b, align 8, !tbaa !23, !noalias !24
  %i.p = icmp ugt i64 %i.o, 15
  br i1 %i.p, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.q = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc11 unwind label %bb.n   ; 2 uses

.noexc11:                                         ; preds = %.noexc10.i.i
  store ptr %i.q, ptr %3, align 8, !tbaa !16, !alias.scope !24
  %i.r = load i64, ptr %i.b, align 8, !tbaa !23, !noalias !24
  store i64 %i.r, ptr %i.l, align 8, !tbaa !18, !alias.scope !24
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.s = phi ptr [ %i.q, %.noexc11 ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.o, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.t = load i8, ptr %i.n, align 1, !tbaa !18
  store i8 %i.t, ptr %i.s, align 1, !tbaa !18
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr nonnull align 1 %i.n, i64 %i.o, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i
  %i.u = load i64, ptr %i.b, align 8, !tbaa !23, !noalias !24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i64 %i.u, ptr %i.v, align 8, !tbaa !11, !alias.scope !24
  %i.w = load ptr, ptr %3, align 8, !tbaa !16, !alias.scope !24
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19, !noalias !24
  %i.y = load ptr, ptr %2, align 8, !tbaa !16     ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  %i.ab = load ptr, ptr %3, align 8, !tbaa !16    ; 5 uses
  %i.ac = icmp eq ptr %i.ab, %i.l                 ; 2 uses
  br i1 %i.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.h
  br i1 %i.ac, label %bb.i, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.h
  br i1 %i.ac, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ad = load i64, ptr %i.v, align 8, !tbaa !11  ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  call void @llvm.assume(i1 %i.ae)
  switch i64 %i.ad, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.af = load i8, ptr %i.ab, align 1, !tbaa !18
  store i8 %i.af, ptr %i.y, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.ab, i64 %i.ad, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.ag = load i64, ptr %i.v, align 8, !tbaa !11  ; 2 uses
  store i64 %i.ag, ptr %i.j, align 8, !tbaa !11
  %i.ah = load ptr, ptr %2, align 8, !tbaa !16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ag
  store i8 0, ptr %i.ai, align 1, !tbaa !18
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ab, ptr %2, align 8, !tbaa !16
  %i.aj = load <2 x i64>, ptr %i.v, align 8, !tbaa !18
  store <2 x i64> %i.aj, ptr %i.j, align 8, !tbaa !18
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ak = load i64, ptr %i.z, align 8, !tbaa !18
  store ptr %i.ab, ptr %2, align 8, !tbaa !16
  %i.al = load <2 x i64>, ptr %i.v, align 8, !tbaa !18
  store <2 x i64> %i.al, ptr %i.j, align 8, !tbaa !18
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.y, ptr %3, align 8, !tbaa !16
  store i64 %i.ak, ptr %i.l, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.l, ptr %3, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.l, %bb.m
  %i.am = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.y, %bb.l ], [ %i.l, %bb.m ]
  store i64 0, ptr %i.v, align 8, !tbaa !11
  store i8 0, ptr %i.am, align 1, !tbaa !18
  %i.an = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.l
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ap = load i64, ptr %i.l, align 8, !tbaa !18
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.ar = load ptr, ptr %2, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr null, ptr %i.a, align 8, !tbaa !27
  %i.as = call i64 @__isoc23_strtoul(ptr noundef %i.ar, ptr noundef nonnull %i.a, i32 noundef 10) #19
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.au = load i8, ptr %i.at, align 1, !tbaa !18
  %i.av = icmp eq i8 %i.au, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %spec.select = select i1 %i.av, i64 %i.as, i64 0
  br label %bb.o

bb.n:                                             ; preds = %.noexc10.i.i, %bb.e
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.ax = load ptr, ptr %2, align 8, !tbaa !16    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.n
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !18
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %i.aw

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %.0 = phi i64 [ 0, %bb.c ], [ %spec.select, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.bc = load ptr, ptr %2, align 8, !tbaa !16    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.o
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !18
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN5boost10stacktrace6detail9to_stringB5cxx11EPKNS0_5frameEm(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::stacktrace::detail::to_string_impl_base", align 8 ; 9 uses
  %4 = alloca %"struct.std::array", align 1       ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  store i64 0, ptr %i.b, align 8, !tbaa !11
  store i8 0, ptr %i.a, align 8, !tbaa !18
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %2, 6
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.d)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !11
  store i8 0, ptr %i.e, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.t
  %i.i = load ptr, ptr %3, align 8, !tbaa !16     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.e
  br i1 %i.j, label %_ZN5boost10stacktrace6detail25to_string_using_addr2lineD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.k = load i64, ptr %i.e, align 8, !tbaa !18
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #20
  br label %_ZN5boost10stacktrace6detail25to_string_using_addr2lineD2Ev.exit

_ZN5boost10stacktrace6detail25to_string_using_addr2lineD2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.y

bb.e:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.f:                                             ; preds = %bb.c, %bb.t
  %.061 = phi i64 [ 0, %bb.c ], [ %i.cl, %bb.t ]  ; 7 uses
  %i.n = icmp ult i64 %.061, 10
  br i1 %i.n, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  br label %.preheader19.i.preheader

bb.g:                                             ; preds = %bb.f
  %i.o = load i64, ptr %i.b, align 8, !tbaa !11   ; 4 uses
  %i.p = add i64 %i.o, 1                          ; 3 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.a
  br i1 %i.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i22: ; preds = %bb.g
  %i.s = icmp ult i64 %i.o, 16
  call void @llvm.assume(i1 %i.s)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21: ; preds = %bb.g
  %i.t = load i64, ptr %i.a, align 8, !tbaa !18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i22
  %i.u = phi i64 [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i22 ]
  %i.v = icmp ugt i64 %i.p, %i.u
  br i1 %i.v, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.o, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.h
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !16
  br label %bb.j

bb.i:                                             ; preds = %bb.s, %bb.o, %bb.m, %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.j:                                             ; preds = %.noexc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.x = phi ptr [ %.pre.i.i, %.noexc ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.o
  store i8 32, ptr %i.y, align 1, !tbaa !18
  store i64 %i.p, ptr %i.b, align 8, !tbaa !11
  %i.z = load ptr, ptr %0, align 8, !tbaa !16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.p
  store i8 0, ptr %i.aa, align 1, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %.not.i = icmp eq i64 %.061, 0
  br i1 %.not.i, label %bb.k, label %.preheader19.i.preheader

.preheader19.i.preheader:                         ; preds = %.thread, %bb.j
  br label %.preheader19.i

bb.k:                                             ; preds = %bb.j
  store i8 48, ptr %4, align 1, !tbaa !18, !alias.scope !28
  br label %_ZN5boost10stacktrace6detail12to_dec_arrayEm.exit

.preheader.i:                                     ; preds = %.preheader19.i
  %.not1822.i = icmp eq i64 %i.ab, 0
  br i1 %.not1822.i, label %_ZN5boost10stacktrace6detail12to_dec_arrayEm.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %umax.i = call i64 @llvm.umax.i64(i64 %indvars.iv.i, i64 2)
  %6 = add i64 %umax.i, -1                        ; 3 uses
  %xtraiter = and i64 %6, 1
  %7 = icmp ult i64 %indvars.iv.i, 3
  br i1 %7, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %6, -2
  br label %.lr.ph.i

.preheader19.i:                                   ; preds = %.preheader19.i.preheader, %.preheader19.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader19.i ], [ 2, %.preheader19.i.preheader ] ; 3 uses
  %.01321.i = phi i64 [ %i.ac, %.preheader19.i ], [ %.061, %.preheader19.i.preheader ] ; 2 uses
  %.01420.i = phi i64 [ %i.ab, %.preheader19.i ], [ 0, %.preheader19.i.preheader ] ; 2 uses
  %i.ab = add i64 %.01420.i, 1                    ; 6 uses
  %i.ac = udiv i64 %.01321.i, 10
  %.not17.i = icmp ult i64 %.01321.i, 10
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  br i1 %.not17.i, label %.preheader.i, label %.preheader19.i, !llvm.loop !31

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %.024.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %14, %.lr.ph.i ] ; 3 uses
  %.01523.i.a = phi i64 [ %.061, %.lr.ph.preheader.i.new ], [ %i.ai, %.lr.ph.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %8 = urem i64 %.01523.i.a, 10
  %9 = trunc nuw nsw i64 %8 to i8
  %10 = or disjoint i8 %9, 48
  %11 = sub nuw i64 %i.ab, %.024.i
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 %11
  store i8 %10, ptr %12, align 1, !tbaa !18, !alias.scope !28
  %13 = udiv i64 %.01523.i.a, 10
  %i.ad = urem i64 %13, 10
  %i.ae = trunc nuw nsw i64 %i.ad to i8
  %i.af = or disjoint i8 %i.ae, 48
  %i.ag = sub i64 %.01420.i, %.024.i
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 %i.ag
  store i8 %i.af, ptr %i.ah, align 1, !tbaa !18, !alias.scope !28
  %i.ai = udiv i64 %.01523.i.a, 100               ; 2 uses
  %14 = add nuw i64 %.024.i, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5boost10stacktrace6detail12to_dec_arrayEm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !33

_ZN5boost10stacktrace6detail12to_dec_arrayEm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5boost10stacktrace6detail12to_dec_arrayEm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5boost10stacktrace6detail12to_dec_arrayEm.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.024.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %14, %_ZN5boost10stacktrace6detail12to_dec_arrayEm.exit.loopexit.unr-lcssa ]
  %.01523.i.epil.init = phi i64 [ %.061, %.lr.ph.preheader.i ], [ %i.ai, %_ZN5boost10stacktrace6detail12to_dec_arrayEm.exit.loopexit.unr-lcssa ]
  %lcmp.mod77 = trunc i64 %6 to i1
  call void @llvm.assume(i1 %lcmp.mod77)
  %15 = urem i64 %.01523.i.epil.init, 10
  %16 = trunc nuw nsw i64 %15 to i8
  %17 = or disjoint i8 %16, 48
  %18 = sub nuw i64 %i.ab, %.024.i.epil.init
  %19 = getelementptr inbounds nuw i8, ptr %4, i64 %18
  store i8 %17, ptr %19, align 1, !tbaa !18, !alias.scope !28
  br label %_ZN5boost10stacktrace6detail12to_dec_arrayEm.exit

_ZN5boost10stacktrace6detail12to_dec_arrayEm.exit: ; preds = %.lr.ph.i.epil.preheader, %_ZN5boost10stacktrace6detail12to_dec_arrayEm.exit.loopexit.unr-lcssa, %bb.k, %.preheader.i
  %.lcssa.sink.i = phi i64 [ 1, %bb.k ], [ 0, %.preheader.i ], [ %i.ab, %_ZN5boost10stacktrace6detail12to_dec_arrayEm.exit.loopexit.unr-lcssa ], [ %i.ab, %.lr.ph.i.epil.preheader ]
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 %.lcssa.sink.i
  store i8 0, ptr %i.aj, align 1, !tbaa !18, !alias.scope !28
  %i.ak = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #19 ; 2 uses
  %i.al = load i64, ptr %i.b, align 8, !tbaa !11
  %i.am = sub i64 4611686018427387903, %i.al
  %i.an = icmp ult i64 %i.am, %i.ak
  br i1 %i.an, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.l:                                             ; preds = %_ZN5boost10stacktrace6detail12to_dec_arrayEm.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #21
          to label %.noexc23 unwind label %.loopexit.split-lp

.noexc23:                                         ; preds = %bb.l
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZN5boost10stacktrace6detail12to_dec_arrayEm.exit
  %i.ao = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %4, i64 noundef %i.ak)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !11  ; 4 uses
  %i.aq = add i64 %i.ap, 1                        ; 3 uses
  %i.ar = load ptr, ptr %0, align 8, !tbaa !16    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.a
  br i1 %i.as, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.at = icmp ult i64 %i.ap, 16
  call void @llvm.assume(i1 %i.at)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.au = load i64, ptr %i.a, align 8, !tbaa !18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i26: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i28
  %i.av = phi i64 [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i28 ]
  %i.aw = icmp ugt i64 %i.aq, %i.av
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ap, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc29 unwind label %bb.i

.noexc29:                                         ; preds = %bb.m
  %.pre.i.i27 = load ptr, ptr %0, align 8, !tbaa !16
  br label %bb.n

bb.n:                                             ; preds = %.noexc29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i26
  %i.ax = phi ptr [ %.pre.i.i27, %.noexc29 ], [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i26 ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ap
  store i8 35, ptr %i.ay, align 1, !tbaa !18
  store i64 %i.aq, ptr %i.b, align 8, !tbaa !11
  %i.az = load ptr, ptr %0, align 8, !tbaa !16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.aq
  store i8 0, ptr %i.ba, align 1, !tbaa !18
  %i.bb = load i64, ptr %i.b, align 8, !tbaa !11  ; 4 uses
  %i.bc = add i64 %i.bb, 1                        ; 3 uses
  %i.bd = load ptr, ptr %0, align 8, !tbaa !16    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.a
  br i1 %i.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i34: ; preds = %bb.n
  %i.bf = icmp ult i64 %i.bb, 16
  call void @llvm.assume(i1 %i.bf)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31: ; preds = %bb.n
  %i.bg = load i64, ptr %i.a, align 8, !tbaa !18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i32: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i34
  %i.bh = phi i64 [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i34 ]
  %i.bi = icmp ugt i64 %i.bc, %i.bh
  br i1 %i.bi, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bb, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc35 unwind label %bb.i

.noexc35:                                         ; preds = %bb.o
  %.pre.i.i33 = load ptr, ptr %0, align 8, !tbaa !16
  br label %bb.p

bb.p:                                             ; preds = %.noexc35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i32
  %i.bj = phi ptr [ %.pre.i.i33, %.noexc35 ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i32 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bb
  store i8 32, ptr %i.bk, align 1, !tbaa !18
  store i64 %i.bc, ptr %i.b, align 8, !tbaa !11
  %i.bl = load ptr, ptr %0, align 8, !tbaa !16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bc
  store i8 0, ptr %i.bm, align 1, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.061
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !8
  invoke void @_ZN5boost10stacktrace6detail19to_string_impl_baseINS1_25to_string_using_addr2lineEEclB5cxx11EPKv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.bo)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.bp = load i64, ptr %i.g, align 8, !tbaa !11  ; 2 uses
  %i.bq = load i64, ptr %i.b, align 8, !tbaa !11
  %i.br = sub i64 4611686018427387903, %i.bq
  %i.bs = icmp ult i64 %i.br, %i.bp
  br i1 %i.bs, label %bb.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #21
          to label %.noexc37 unwind label %.loopexit.split-lp55

.noexc37:                                         ; preds = %bb.r
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.q
  %i.bt = load ptr, ptr %5, align 8, !tbaa !16
  %i.bu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bt, i64 noundef %i.bp)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit54 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.bv = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.h
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.bx = load i64, ptr %i.h, align 8, !tbaa !18
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.bz = load i64, ptr %i.b, align 8, !tbaa !11  ; 4 uses
  %i.ca = add i64 %i.bz, 1                        ; 3 uses
  %i.cb = load ptr, ptr %0, align 8, !tbaa !16    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.a
  br i1 %i.cc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cd = icmp ult i64 %i.bz, 16
  call void @llvm.assume(i1 %i.cd)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ce = load i64, ptr %i.a, align 8, !tbaa !18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i40: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i42
  %i.cf = phi i64 [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i42 ]
  %i.cg = icmp ugt i64 %i.ca, %i.cf
  br i1 %i.cg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bz, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc43 unwind label %bb.i

.noexc43:                                         ; preds = %bb.s
  %.pre.i.i41 = load ptr, ptr %0, align 8, !tbaa !16
  br label %bb.t

bb.t:                                             ; preds = %.noexc43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i40
  %i.ch = phi ptr [ %.pre.i.i41, %.noexc43 ], [ %i.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i40 ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.bz
  store i8 10, ptr %i.ci, align 1, !tbaa !18
  store i64 %i.ca, ptr %i.b, align 8, !tbaa !11
  %i.cj = load ptr, ptr %0, align 8, !tbaa !16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ca
  store i8 0, ptr %i.ck, align 1, !tbaa !18
  %i.cl = add nuw i64 %.061, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cl, %2
  br i1 %exitcond.not, label %bb.d, label %bb.f, !llvm.loop !34

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.x

bb.v:                                             ; preds = %bb.p
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

.loopexit54:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit56 = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.loopexit.split-lp55:                             ; preds = %bb.r
  %lpad.loopexit.split-lp57 = landingpad { ptr, i32 }
          cleanup
  br label %bb.w
end_hunk_0
