Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/gtest-all?download=true
inline.NumInlined: 9409
inline.NumDeleted: 2417
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN7testing12_GLOBAL__N_115IsSubstringImplINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS_15AssertionResultEbPKcSA_RKT_SD_:bb.a
          to label %bb.d unwind label %bb.z

bb.d:                                             ; preds = %bb.c
  %i.m = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIPKcEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.e unwind label %bb.z

bb.e:                                             ; preds = %bb.d
  %i.n = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA2_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 1 dereferenceable(2) @.str.20)
          to label %bb.f unwind label %bb.z

bb.f:                                             ; preds = %bb.e
  %i.o = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA11_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 1 dereferenceable(11) @.str.453)
          to label %bb.g unwind label %bb.z

bb.g:                                             ; preds = %bb.f
  %i.p = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIPKcEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.h unwind label %bb.z

bb.h:                                             ; preds = %bb.g
  %i.q = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.i unwind label %bb.z

bb.i:                                             ; preds = %bb.h
  %i.r = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA3_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 1 dereferenceable(3) @.str.365)
          to label %bb.j unwind label %bb.z

bb.j:                                             ; preds = %bb.i
  %i.s = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA11_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 1 dereferenceable(11) @.str.452)
          to label %bb.k unwind label %bb.z

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #55
  %i.t = select i1 %1, ptr @.str.4, ptr @.str.553
  store ptr %i.t, ptr %i.e, align 8, !tbaa !253
  %i.u = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIPKcEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.l unwind label %bb.aa

bb.l:                                             ; preds = %bb.k
  %i.v = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA16_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 1 dereferenceable(16) @.str.554)
          to label %bb.m unwind label %bb.aa

bb.m:                                             ; preds = %bb.l
  %i.w = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIPKcEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.n unwind label %bb.aa

bb.n:                                             ; preds = %bb.m
  %i.x = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA2_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 1 dereferenceable(2) @.str.20)
          to label %bb.o unwind label %bb.aa

bb.o:                                             ; preds = %bb.n
  %i.y = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA11_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 1 dereferenceable(11) @.str.555)
          to label %bb.p unwind label %bb.aa

bb.p:                                             ; preds = %bb.o
  %i.z = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIPKcEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.q unwind label %bb.aa

bb.q:                                             ; preds = %bb.p
  %i.aa = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.r unwind label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.ab = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA2_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 1 dereferenceable(2) @.str.185)
          to label %bb.s unwind label %bb.aa      ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !69, !range !70, !noundef !71
  store i8 %i.ac, ptr %0, align 8, !tbaa !69
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !72
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.af = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #54
          to label %.noexc unwind label %bb.aa    ; 8 uses

.noexc:                                           ; preds = %bb.t
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !72 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 3 uses
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !75
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !78 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !79 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i64 %i.ak, ptr %i.a, align 8, !tbaa !80
  %i.al = icmp ugt i64 %i.ak, 15
  br i1 %i.al, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.noexc
  %i.am = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i unwind label %bb.w   ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i
  store ptr %i.am, ptr %i.af, align 8, !tbaa !78
  %i.an = load i64, ptr %i.a, align 8, !tbaa !80
  store i64 %i.an, ptr %i.ah, align 8, !tbaa !81
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i, %.noexc
  %i.ao = phi ptr [ %i.am, %.noexc.i ], [ %i.ah, %.noexc ] ; 2 uses
  switch i64 %i.ak, label %bb.v [
    i64 1, label %bb.u
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.u:                                             ; preds = %._crit_edge.i.i.i
  %i.ap = load i8, ptr %i.ai, align 1, !tbaa !81
  store i8 %i.ap, ptr %i.ao, align 1, !tbaa !81
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.v:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr align 1 %i.ai, i64 %i.ak, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.v, %bb.u, %._crit_edge.i.i.i
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !80  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !79
  %i.as = load ptr, ptr %i.af, align 8, !tbaa !78
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  store i8 0, ptr %i.at, align 1, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %bb.x

bb.w:                                             ; preds = %.noexc.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 32) #56
  br label %.body

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.s
  %i.av = phi ptr [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ null, %bb.s ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #55
  %i.ax = load ptr, ptr %i.k, align 8, !tbaa !72  ; 4 uses
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !78 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.y
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !81
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #56
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef 32) #56
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.x, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #55
  br label %bb.ac

bb.z:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.t, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.w, %bb.aa
  %eh.lpad-body = phi { ptr, i32 } [ %i.be, %bb.aa ], [ %i.au, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #55
  br label %bb.ab

bb.ab:                                            ; preds = %.body, %bb.z
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.bd, %bb.z ]
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #55
  resume { ptr, i32 } %.pn

bb.ac:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7testing14IsNotSubstringEPKcS1_RKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES9_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.testing::AssertionResult") align 8 captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @_ZN7testing12_GLOBAL__N_115IsSubstringImplINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS_15AssertionResultEbPKcSA_RKT_SD_(ptr dead_on_unwind noalias writable align 8 %0, i1 noundef zeroext false, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7testing8internal15CodePointToUtf8B5cxx11Ej(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = alloca [5 x i8], align 1                 ; 15 uses
  %i.c = icmp ugt i32 %1, 2097151
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  call void @_ZN7testing8internal6String15FormatHexUInt32B5cxx11Ej(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i32 noundef %1)
  %i.d = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.187, i64 noundef 19)
          to label %.noexc unwind label %bb.g     ; 8 uses

.noexc:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !75, !alias.scope !1174
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !78   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 7 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %.thread, label %bb.c

.thread:                                          ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !79   ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.j, ptr %i.n, align 8, !tbaa !79, !alias.scope !1174
  store ptr %i.g, ptr %i.d, align 8, !tbaa !78
  store i64 0, ptr %i.m, align 8, !tbaa !79
  store i8 0, ptr %i.g, align 8, !tbaa !81
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.c:                                             ; preds = %.noexc
  store ptr %i.f, ptr %2, align 8, !tbaa !78, !alias.scope !1174
  %i.o = load i64, ptr %i.g, align 8, !tbaa !81
  store i64 %i.o, ptr %i.e, align 8, !tbaa !81, !alias.scope !1174
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !79 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.pre.i, ptr %i.q, align 8, !tbaa !79, !alias.scope !1174
  store ptr %i.g, ptr %i.d, align 8, !tbaa !78
  store i64 0, ptr %i.p, align 8, !tbaa !79
  store i8 0, ptr %i.g, align 8, !tbaa !81
  %i.r = icmp eq i64 %.pre.i, 4611686018427387903
  br i1 %i.r, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.440) #57
          to label %.noexc9 unwind label %bb.h

.noexc9:                                          ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %.thread, %bb.c
  %i.s = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.11, i64 noundef 1)
          to label %.noexc10 unwind label %bb.h   ; 6 uses

.noexc10:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !75, !alias.scope !1175
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !78   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 5 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

bb.e:                                             ; preds = %.noexc10
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !79   ; 3 uses
  %i.z = icmp ult i64 %i.y, 16
  call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %.noexc10
  store ptr %i.u, ptr %0, align 8, !tbaa !78, !alias.scope !1175
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !81
  store i64 %i.ab, ptr %i.t, align 8, !tbaa !81, !alias.scope !1175
  %.phi.trans.insert.i7 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.pre.i8 = load i64, ptr %.phi.trans.insert.i7, align 8, !tbaa !79
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6, %bb.e
  %i.ac = phi i64 [ %i.y, %bb.e ], [ %.pre.i8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6 ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ac, ptr %i.ae, align 8, !tbaa !79, !alias.scope !1175
  store ptr %i.v, ptr %i.s, align 8, !tbaa !78
  store i64 0, ptr %i.ad, align 8, !tbaa !79
  store i8 0, ptr %i.v, align 8, !tbaa !81
  %i.af = load ptr, ptr %2, align 8, !tbaa !78    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.e
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.f
  %i.ah = load i64, ptr %i.e, align 8, !tbaa !81
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  %i.aj = load ptr, ptr %3, align 8, !tbaa !78    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !81
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  br label %bb.t

bb.g:                                             ; preds = %bb.b
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.d
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %2, align 8, !tbaa !78    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.e
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.h
  %i.as = load i64, ptr %i.e, align 8, !tbaa !81
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.g ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ], [ %i.ap, %bb.h ]
  %i.au = load ptr, ptr %3, align 8, !tbaa !78    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !81
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  resume { ptr, i32 } %.pn

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  %i.az = icmp samesign ult i32 %1, 128
  br i1 %i.az, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 0, ptr %i.ba, align 1, !tbaa !81
  %i.bb = trunc nuw nsw i32 %1 to i8
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  %i.bc = icmp samesign ult i32 %1, 2048
  br i1 %i.bc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 0, ptr %i.bd, align 1, !tbaa !81
  %i.be = lshr i32 %1, 6
  %i.bf = trunc i32 %1 to i8
  %i.bg = and i8 %i.bf, 63
  %i.bh = or disjoint i8 %i.bg, -128
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !81
  %i.bj = trunc nuw nsw i32 %i.be to i8
  %i.bk = or disjoint i8 %i.bj, -64
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.bl = icmp samesign ult i32 %1, 65536
  %i.bm = lshr i32 %1, 6
  %i.bn = trunc i32 %1 to i8
  %i.bo = and i8 %i.bn, 63
  %i.bp = or disjoint i8 %i.bo, -128              ; 2 uses
  %i.bq = lshr i32 %1, 12                         ; 2 uses
  %i.br = trunc i32 %i.bm to i8
  %i.bs = and i8 %i.br, 63
  %i.bt = or disjoint i8 %i.bs, -128              ; 2 uses
  br i1 %i.bl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 0, ptr %i.bu, align 1, !tbaa !81
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.bp, ptr %i.bv, align 1, !tbaa !81
  %4 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.bt, ptr %4, align 1, !tbaa !81
  %5 = trunc nuw nsw i32 %i.bq to i8
  %6 = or disjoint i8 %5, -32
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 0, ptr %i.bw, align 1, !tbaa !81
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.bp, ptr %i.bx, align 1, !tbaa !81
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.bt, ptr %i.by, align 1, !tbaa !81
  %i.bz = lshr i32 %1, 18
  %i.ca = trunc i32 %i.bq to i8
  %i.cb = and i8 %i.ca, 63
  %7 = or disjoint i8 %i.cb, -128
  %8 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %7, ptr %8, align 1, !tbaa !81
  %9 = trunc nuw nsw i32 %i.bz to i8
  %i.cc = or disjoint i8 %9, -16
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %bb.o, %bb.n, %bb.j
  %.sink = phi i8 [ %i.bk, %bb.l ], [ %i.cc, %bb.o ], [ %6, %bb.n ], [ %i.bb, %bb.j ] ; 2 uses
  store i8 %.sink, ptr %i.b, align 1, !tbaa !81
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cd, ptr %0, align 8, !tbaa !75
  %i.ce = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #55 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i64 %i.ce, ptr %i.a, align 8, !tbaa !80
  %i.cf = icmp ugt i64 %i.ce, 15
  br i1 %i.cf, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.p
  %i.cg = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.cg, ptr %0, align 8, !tbaa !78
  %i.ch = load i64, ptr %i.a, align 8, !tbaa !80
  store i64 %i.ch, ptr %i.cd, align 8, !tbaa !81
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.p
  %i.ci = phi ptr [ %i.cg, %.noexc.i ], [ %i.cd, %bb.p ] ; 2 uses
  switch i64 %i.ce, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i
  store i8 %.sink, ptr %i.ci, align 1, !tbaa !81
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ci, ptr nonnull align 1 %i.b, i64 %i.ce, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %._crit_edge.i.i
  %i.cj = load i64, ptr %i.a, align 8, !tbaa !80  ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !79
  %i.cl = load ptr, ptr %0, align 8, !tbaa !78
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cj
  store i8 0, ptr %i.cm, align 1, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7testing8internal6String15FormatHexUInt32B5cxx11Ej(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.c = getelementptr i8, ptr %i.b, i64 -24      ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !309
  %i.h = and i32 %i.g, -75
  %i.i = or disjoint i32 %i.h, 8
  store i32 %i.i, ptr %i.f, align 8, !tbaa !310
  %i.j = load i64, ptr %i.c, align 8
  %i.k = getelementptr inbounds i8, ptr %i.a, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !309
  %i.n = or i32 %i.m, 16384
  store i32 %i.n, ptr %i.l, align 8, !tbaa !310
  %i.o = zext i32 %1 to i64
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.o)
          to label %_ZNSolsEj.exit unwind label %bb.e ; 0 uses

_ZNSolsEj.exit:                                   ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !1180)
  call void @llvm.experimental.noalias.scope.decl(metadata !1181)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !75, !alias.scope !1182
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !79, !alias.scope !1182
  store i8 0, ptr %i.q, align 8, !tbaa !81, !alias.scope !1182
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !232, !noalias !1182 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.t, null
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !noalias !1182 ; 2 uses
  %i.w = icmp ugt ptr %i.t, %i.v
  %.08.i.i.i = select i1 %i.w, ptr %i.t, ptr %i.v ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSolsEj.exit
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !233, !noalias !1182 ; 2 uses
  %i.z = ptrtoint ptr %.08.i.i.i to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.y, i64 noundef %i.ab)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !78, !alias.scope !1182 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.q
  br i1 %i.af, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.ag = load i64, ptr %i.q, align 8, !tbaa !81, !alias.scope !1182
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #56
  br label %.body

bb.d:                                             ; preds = %_ZNSolsEj.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.aj = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.aj, ptr %2, align 8, !tbaa !87
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.al = getelementptr i8, ptr %i.aj, i64 -24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds i8, ptr %2, i64 %i.am
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !87
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !87
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ap, align 8, !tbaa !87
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !78 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.au = load i64, ptr %i.as, align 8, !tbaa !81
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #56
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ap, align 8, !tbaa !87
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aw) #55
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ax, ptr %2, align 8, !tbaa !87
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.az = getelementptr i8, ptr %i.ax, i64 -24
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = getelementptr inbounds i8, ptr %2, i64 %i.ba
  store ptr %i.ay, ptr %i.bb, align 8, !tbaa !87
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.bc, align 8, !tbaa !438
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bd) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  ret void

bb.e:                                             ; preds = %bb.a
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.be, %bb.e ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ad, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7testing8internal16WideStringToUtf8B5cxx11EPKwi(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 18 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = icmp eq i32 %2, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @wcslen(ptr noundef %1) #62
  %i.c = trunc i64 %i.b to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.029 = phi i32 [ %i.c, %bb.b ], [ %2, %bb.a ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.d = icmp sgt i32 %.029, 0
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %wide.trip.count = zext nneg i32 %.029 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
end_hunk_0
