Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3AstNodes?download=true
inline.NumInlined: 27718
inline.NumDeleted: 2557
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK6AstVar10dpiArgTypeB5cxx11Ebb:bb.a
.noexc.i.i:                                       ; preds = %bb.d
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.k     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.h, ptr %7, align 8, !tbaa !75, !alias.scope !1132
  %i.i = load i64, ptr %i.a, align 8, !tbaa !89, !noalias !1132
  store i64 %i.i, ptr %i.c, align 8, !tbaa !74, !alias.scope !1132
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.d
  %i.j = phi ptr [ %i.h, %.noexc ], [ %i.c, %bb.d ] ; 2 uses
  switch i64 %i.f, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !74
  store i8 %i.k, ptr %i.j, align 1, !tbaa !74
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !89, !noalias !1132 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !73, !alias.scope !1132
  %i.n = load ptr, ptr %7, align 8, !tbaa !75, !alias.scope !1132
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33, !noalias !1132
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.1095, i64 noundef 1)
          to label %.noexc9 unwind label %bb.l    ; 6 uses

.noexc9:                                          ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  store ptr %i.q, ptr %6, align 8, !tbaa !70, !alias.scope !1133
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !75   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.h:                                             ; preds = %.noexc9
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !73   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc9
  store ptr %i.r, ptr %6, align 8, !tbaa !75, !alias.scope !1133
  %i.y = load i64, ptr %i.s, align 8, !tbaa !74
  store i64 %i.y, ptr %i.q, align 8, !tbaa !74, !alias.scope !1133
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !73
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.h
  %i.z = phi ptr [ %i.q, %bb.h ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = phi i64 [ %i.v, %bb.h ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !73, !alias.scope !1133
  store ptr %i.s, ptr %i.p, align 8, !tbaa !75
  store i64 0, ptr %i.ab, align 8, !tbaa !73
  store i8 0, ptr %i.s, align 8, !tbaa !74
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !73
  %i.af = sub i64 4611686018427387903, %i.ae
  %i.ag = icmp ult i64 %i.af, %i.aa
  br i1 %i.ag, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1819) #35
          to label %.noexc10 unwind label %bb.m

.noexc10:                                         ; preds = %bb.j
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.i
  %i.ah = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.z, i64 noundef %i.aa)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.m ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ai = load ptr, ptr %6, align 8, !tbaa !75    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.q
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.ak = load i64, ptr %i.q, align 8, !tbaa !74
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  %i.am = load ptr, ptr %7, align 8, !tbaa !75    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.c
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ao = load i64, ptr %i.c, align 8, !tbaa !74
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %bb.n

bb.k:                                             ; preds = %.noexc.i.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

bb.l:                                             ; preds = %bb.g
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.j
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %6, align 8, !tbaa !75    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.q
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.m
  %i.av = load i64, ptr %i.q, align 8, !tbaa !74
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.l ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ %i.as, %bb.m ] ; 2 uses
  %i.ax = load ptr, ptr %7, align 8, !tbaa !75    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.c
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.az = load i64, ptr %i.c, align 8, !tbaa !74
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.aq, %bb.k ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.bb = load ptr, ptr %0, align 8, !tbaa !75    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !74
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  resume { ptr, i32 } %.pn.pn

bb.n:                                             ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK25dpiTypesToStringConverter7convertB5cxx11EPK6AstVar(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 260
  %i.b = load i64, ptr %i.a, align 4
  %i.c = and i64 %i.b, 274877906944
  %.not17 = icmp eq i64 %i.c, 0
  br i1 %.not17, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !77
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %2)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !175  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = select i1 %.not.i.i, ptr %i.i, ptr %i.g  ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !77
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 352
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(162) %i.j), !inline_history !554 ; 6 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %._crit_edge.i.i, label %3

3:                                                ; preds = %bb.c
  %4 = getelementptr inbounds nuw i8, ptr %i.n, i64 164
  %.sroa.0.0.copyload.i.i = load i8, ptr %4, align 4, !tbaa !178
  switch i8 %.sroa.0.0.copyload.i.i, label %_ZNK13AstBasicDType13isDpiLogicVecEv.exit.thread16 [
    i8 1, label %bb.d
    i8 8, label %_ZNK13AstBasicDType13isDpiLogicVecEv.exit
    i8 7, label %_ZNK13AstBasicDType13isDpiLogicVecEv.exit.thread.a
    i8 12, label %_ZNK13AstBasicDType13isDpiLogicVecEv.exit.thread.a
    i8 27, label %_ZNK13AstBasicDType13isDpiLogicVecEv.exit.thread.a
  ]

bb.d:                                             ; preds = %3
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !61
  %.not.i.i11 = icmp ne ptr %i.p, null
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 176
  %i.r = load i8, ptr %i.q, align 8, !range !149
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = select i1 %.not.i.i11, i1 true, i1 %i.s
  br i1 %i.t, label %_ZNK13AstBasicDType13isDpiLogicVecEv.exit.thread.a, label %_ZNK13AstBasicDType13isDpiLogicVecEv.exit.thread16

_ZNK13AstBasicDType13isDpiLogicVecEv.exit:        ; preds = %3
  %5 = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %.not.i.i13 = icmp ne ptr %6, null
  %7 = getelementptr inbounds nuw i8, ptr %i.n, i64 176
  %8 = load i8, ptr %7, align 8, !range !149
  %9 = trunc nuw i8 %8 to i1
  %10 = select i1 %.not.i.i13, i1 true, i1 %9
  br i1 %10, label %_ZNK13AstBasicDType13isDpiLogicVecEv.exit.thread.a, label %_ZNK13AstBasicDType13isDpiLogicVecEv.exit.thread16

_ZNK13AstBasicDType13isDpiLogicVecEv.exit.thread.a: ; preds = %bb.d, %3, %3, %3, %_ZNK13AstBasicDType13isDpiLogicVecEv.exit
  %11 = phi i1 [ false, %3 ], [ false, %_ZNK13AstBasicDType13isDpiLogicVecEv.exit ], [ false, %3 ], [ false, %3 ], [ true, %bb.d ]
  %i.u = load ptr, ptr %1, align 8, !tbaa !77
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %2, i1 noundef zeroext %11)
  br label %bb.e

_ZNK13AstBasicDType13isDpiLogicVecEv.exit.thread16: ; preds = %3, %bb.d, %_ZNK13AstBasicDType13isDpiLogicVecEv.exit
  %i.x = load ptr, ptr %1, align 8, !tbaa !77
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %2)
  br label %bb.e

._crit_edge.i.i:                                  ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.aa, ptr %0, align 8, !tbaa !70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.aa, ptr noundef nonnull align 1 dereferenceable(7) @.str.1158, i64 7, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.ab, align 8, !tbaa !73
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 0, ptr %i.ac, align 1, !tbaa !74
  br label %bb.e

bb.e:                                             ; preds = %_ZNK13AstBasicDType13isDpiLogicVecEv.exit.thread.a, %_ZNK13AstBasicDType13isDpiLogicVecEv.exit.thread16, %._crit_edge.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK6AstVar13dpiTmpVarTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(280) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %class.converter.135, align 8       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVZNK6AstVar13dpiTmpVarTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9converter, i64 16), ptr %3, align 8, !tbaa !77
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 7 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !70
  %i.d = load ptr, ptr %2, align 8, !tbaa !75     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !73   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 %i.f, ptr %i.a, align 8, !tbaa !89
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %i.b, align 8, !tbaa !75
  %i.i = load i64, ptr %i.a, align 8, !tbaa !89
  store i64 %i.i, ptr %i.c, align 8, !tbaa !74
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZZNK6AstVar13dpiTmpVarTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9converterC2ES7_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !74
  store i8 %i.k, ptr %i.j, align 1, !tbaa !74
  br label %_ZZNK6AstVar13dpiTmpVarTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9converterC2ES7_.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZZNK6AstVar13dpiTmpVarTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9converterC2ES7_.exit

_ZZNK6AstVar13dpiTmpVarTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9converterC2ES7_.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.a, align 8, !tbaa !89   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.l, ptr %i.m, align 8, !tbaa !73
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !75
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  invoke void @_ZNK25dpiTypesToStringConverter7convertB5cxx11EPK6AstVar(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZZNK6AstVar13dpiTmpVarTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9converterC2ES7_.exit
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !75   ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.c
  br i1 %i.q, label %_ZZNK6AstVar13dpiTmpVarTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9converterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.r = load i64, ptr %i.c, align 8, !tbaa !74
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #34
  br label %_ZZNK6AstVar13dpiTmpVarTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9converterD2Ev.exit

_ZZNK6AstVar13dpiTmpVarTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9converterD2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret void

bb.e:                                             ; preds = %_ZZNK6AstVar13dpiTmpVarTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9converterC2ES7_.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !75   ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.c
  br i1 %i.v, label %_ZZNK6AstVar13dpiTmpVarTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9converterD2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3: ; preds = %bb.e
  %i.w = load i64, ptr %i.c, align 8, !tbaa !74
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #34
  br label %_ZZNK6AstVar13dpiTmpVarTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9converterD2Ev.exit5

_ZZNK6AstVar13dpiTmpVarTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9converterD2Ev.exit5: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  resume { ptr, i32 } %i.t
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK6AstVar6scTypeB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(280) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  %13 = alloca %"class.std::allocator", align 1   ; 3 uses
  %14 = alloca %"class.std::allocator", align 1   ; 3 uses
  %15 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 260
  %i.f = load i64, ptr %i.e, align 4              ; 6 uses
  %i.g = and i64 %i.f, 131072
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.b, label %_ZNK6AstVar11isScBigUintEv.exit.thread161

bb.b:                                             ; preds = %bb.a
  %i.h = and i64 %i.f, 32
  %i.i = icmp ne i64 %i.h, 0                      ; 4 uses
  %i.j = load i8, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 1001), align 1, !range !149
  %i.k = trunc nuw i8 %i.j to i1
  %or.cond.i = select i1 %i.i, i1 %i.k, i1 false
  br i1 %or.cond.i, label %bb.c, label %_ZNK6AstVar11isScBigUintEv.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !175  ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZNK6AstVar11isScBigUintEv.exit.thread, label %_ZNK7AstNode5widthEv.exit.i

_ZNK7AstNode5widthEv.exit.i:                      ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 152
  %i.o = load i32, ptr %i.n, align 8, !tbaa !472  ; 2 uses
  %i.p = add i32 %i.o, -65
  %or.cond10.i = icmp ult i32 %i.p, 448
  br i1 %or.cond10.i, label %_ZNK6AstVar11isScBigUintEv.exit, label %_ZNK6AstVar11isScBigUintEv.exit.thread

_ZNK6AstVar11isScBigUintEv.exit:                  ; preds = %_ZNK7AstNode5widthEv.exit.i
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 1148), align 4, !tbaa !551
  %.not.i4.i = icmp slt i32 %i.o, %i.q
  %i.r = and i64 %i.f, 65536
  %i.s = icmp eq i64 %i.r, 0
  %.not7.i = and i1 %i.s, %.not.i4.i
  br i1 %.not7.i, label %_ZNK6AstVar11isScBigUintEv.exit.thread161, label %_ZNK6AstVar11isScBigUintEv.exit.thread

_ZNK6AstVar11isScBigUintEv.exit.thread161:        ; preds = %bb.a, %_ZNK6AstVar11isScBigUintEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.t, ptr %3, align 8, !tbaa !70, !alias.scope !1152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33, !noalias !1152
  store i64 18, ptr %i.a, align 8, !tbaa !89, !noalias !1152
  %i.u = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.u, ptr %3, align 8, !tbaa !75, !alias.scope !1152
  %i.v = load i64, ptr %i.a, align 8, !tbaa !89, !noalias !1152 ; 3 uses
  store i64 %i.v, ptr %i.t, align 8, !tbaa !74, !alias.scope !1152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.u, ptr noundef nonnull align 1 dereferenceable(18) @.str.1205, i64 18, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.v, ptr %i.w, align 8, !tbaa !73, !alias.scope !1152
  %i.x = load ptr, ptr %3, align 8, !tbaa !75, !alias.scope !1152
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33, !noalias !1152
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !175 ; 3 uses
  %.not.i18 = icmp eq ptr %i.aa, null
  br i1 %.not.i18, label %_ZNK7AstNode8widthMinEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK6AstVar11isScBigUintEv.exit.thread161
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 156
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !182 ; 2 uses
  %.not.i.i19 = icmp eq i32 %i.ac, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 152
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = select i1 %.not.i.i19, i32 %i.ae, i32 %i.ac
  br label %_ZNK7AstNode8widthMinEv.exit

_ZNK7AstNode8widthMinEv.exit:                     ; preds = %_ZNK6AstVar11isScBigUintEv.exit.thread161, %bb.d
  %i.ag = phi i32 [ %i.af, %bb.d ], [ 0, %_ZNK6AstVar11isScBigUintEv.exit.thread161 ]
  store i32 %i.ag, ptr %i.b, align 4, !tbaa !100
  invoke void @_Z8cvtToStrIiENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
end_hunk_0
