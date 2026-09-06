Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/type?download=true
inline.NumInlined: 11290
inline.NumDeleted: 4276
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZNK5arrow8DataType4HashEv:bb.a
  br i1 %.not.i, label %bb.b, label %_ZNK5arrow6detail15Fingerprintable11fingerprintB5cxx11Ev.exit, !prof !133

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow6detail15Fingerprintable19LoadFingerprintSlowB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(24) %0)
  br label %_ZNK5arrow6detail15Fingerprintable11fingerprintB5cxx11Ev.exit

_ZNK5arrow6detail15Fingerprintable11fingerprintB5cxx11Ev.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.0.i, align 8, !tbaa !119
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !113
  %i.g = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.d, i64 noundef %i.f, i64 noundef 3339675911)
          to label %_ZN5arrow8internal12hash_combineINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRmRKT_.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNK5arrow6detail15Fingerprintable11fingerprintB5cxx11Ev.exit
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #40
  unreachable

_ZN5arrow8internal12hash_combineINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRmRKT_.exit: ; preds = %_ZNK5arrow6detail15Fingerprintable11fingerprintB5cxx11Ev.exit
  %i.j = add i64 %i.g, 2654435769
  ret i64 %i.j
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrowlsERSoRKNS_8DataTypeE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  %i.a = load ptr, ptr %1, align 8, !tbaa !132
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(72) %1, i1 noundef zeroext false)
  %i.d = load ptr, ptr %2, align 8, !tbaa !119
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !113
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.d, i64 noundef %i.f)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.b ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !119    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !114
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  ret ptr %0

bb.b:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %2, align 8, !tbaa !119    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.b
  %i.q = load i64, ptr %i.o, align 8, !tbaa !114
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  resume { ptr, i32 } %i.m
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrowlsERSoRKNS_10TypeHolderE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1279)
  %i.a = load ptr, ptr %1, align 8, !tbaa !230, !noalias !1279 ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %._crit_edge.i.i.i, label %bb.b

._crit_edge.i.i.i:                                ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !111, !alias.scope !1279
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.b, ptr noundef nonnull align 1 dereferenceable(9) @.str.219, i64 9, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 9, ptr %i.c, align 8, !tbaa !113, !alias.scope !1279
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 25
  store i8 0, ptr %i.d, align 1, !tbaa !114, !alias.scope !1279
  br label %_ZNK5arrow10TypeHolder8ToStringB5cxx11Eb.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !132, !noalias !1279
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !noalias !1279
  call void %i.g(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i1 noundef zeroext false), !inline_history !1278
  %.pre = load ptr, ptr %2, align 8, !tbaa !119
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre7 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !113
  br label %_ZNK5arrow10TypeHolder8ToStringB5cxx11Eb.exit

_ZNK5arrow10TypeHolder8ToStringB5cxx11Eb.exit:    ; preds = %._crit_edge.i.i.i, %bb.b
  %i.h = phi i64 [ 9, %._crit_edge.i.i.i ], [ %.pre7, %bb.b ]
  %i.i = phi ptr [ %i.b, %._crit_edge.i.i.i ], [ %.pre, %bb.b ]
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.i, i64 noundef %i.h)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.c ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNK5arrow10TypeHolder8ToStringB5cxx11Eb.exit
  %i.k = load ptr, ptr %2, align 8, !tbaa !119    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.n = load i64, ptr %i.l, align 8, !tbaa !114
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  ret ptr %0

bb.c:                                             ; preds = %_ZNK5arrow10TypeHolder8ToStringB5cxx11Eb.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %2, align 8, !tbaa !119    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.c
  %i.t = load i64, ptr %i.r, align 8, !tbaa !114
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow10TypeHolder8ToStringB5cxx11ERKSt6vectorIS0_SaIS0_EEb(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i1 noundef zeroext %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.82, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !233
  %i.e = load ptr, ptr %1, align 8, !tbaa !234    ; 2 uses
  %.not21 = icmp eq ptr %i.d, %i.e
  br i1 %.not21, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16.peel

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !230  ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !132
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i1 noundef zeroext %2)
          to label %bb.b unwind label %.loopexit.split-lp24

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16.peel
  %i.l = load ptr, ptr %4, align 8, !tbaa !119
  %i.m = load i64, ptr %i.f, align 8, !tbaa !113
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.l, i64 noundef %i.m)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel unwind label %.loopexit.split-lp29 ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel: ; preds = %bb.b
  %i.o = load ptr, ptr %4, align 8, !tbaa !119    ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.g
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel
  %i.q = load i64, ptr %i.g, align 8, !tbaa !114
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !233
  %i.t = load ptr, ptr %1, align 8, !tbaa !234
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %5 = sdiv exact i64 %i.w, 24
  %i.x = icmp ugt i64 %5, 1
  br i1 %i.x, label %.peel.next, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.84, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15 unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge, %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.020 = phi i64 [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel ] ; 2 uses
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.83, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16 unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %.peel.next
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16: ; preds = %.peel.next
  %.pre = load ptr, ptr %1, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %.020
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !230 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !132
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(72) %i.ac, i1 noundef zeroext %2)
          to label %bb.e unwind label %.loopexit23

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  %i.ag = load ptr, ptr %4, align 8, !tbaa !119
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !113
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.ag, i64 noundef %i.ah)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit28 ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.e
  %i.aj = load ptr, ptr %4, align 8, !tbaa !119   ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.g
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.al = load i64, ptr %i.g, align 8, !tbaa !114
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  %i.an = add nuw i64 %.020, 1                    ; 2 uses
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !233
  %i.ap = load ptr, ptr %1, align 8, !tbaa !234
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = sdiv exact i64 %i.as, 24
  %i.au = icmp ult i64 %i.an, %i.at
  br i1 %i.au, label %.peel.next, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge, !llvm.loop !1280

.loopexit23:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  %lpad.loopexit25 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

.loopexit.split-lp24:                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16.peel
  %lpad.loopexit.split-lp26 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

.loopexit28:                                      ; preds = %bb.e
  %lpad.loopexit30 = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp29:                             ; preds = %bb.b
  %lpad.loopexit.split-lp31 = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp29, %.loopexit28
  %lpad.phi32 = phi { ptr, i32 } [ %lpad.loopexit30, %.loopexit28 ], [ %lpad.loopexit.split-lp31, %.loopexit.split-lp29 ] ; 2 uses
  %i.av = load ptr, ptr %4, align 8, !tbaa !119   ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.g
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.f
  %i.ax = load i64, ptr %i.g, align 8, !tbaa !114
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.f, %.loopexit23, %.loopexit.split-lp24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  %.pn = phi { ptr, i32 } [ %lpad.phi32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %lpad.loopexit.split-lp26, %.loopexit.split-lp24 ], [ %lpad.loopexit25, %.loopexit23 ], [ %lpad.phi32, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %.body

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !1285)
  call void @llvm.experimental.noalias.scope.decl(metadata !1286)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.az, ptr %0, align 8, !tbaa !111, !alias.scope !1287
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ba, align 8, !tbaa !113, !alias.scope !1287
  store i8 0, ptr %i.az, align 8, !tbaa !114, !alias.scope !1287
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !192, !noalias !1287 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.bc, null
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !1287 ; 2 uses
  %i.bf = icmp ugt ptr %i.bc, %i.be
  %.08.i.i.i = select i1 %i.bf, ptr %i.bc, ptr %i.be ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !193, !noalias !1287 ; 2 uses
  %i.bi = ptrtoint ptr %.08.i.i.i to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.bh, i64 noundef %i.bk)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = load ptr, ptr %0, align 8, !tbaa !119, !alias.scope !1287 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.az
  br i1 %i.bo, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.bp = load i64, ptr %i.az, align 8, !tbaa !114, !alias.scope !1287
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #37
  br label %.body

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.br)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.i, %bb.g
  %i.bs = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bs, ptr %3, align 8, !tbaa !132
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bu = getelementptr i8, ptr %i.bs, i64 -24
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds i8, ptr %3, i64 %i.bv
  store ptr %i.bt, ptr %i.bw, align 8, !tbaa !132
  %i.bx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bx, ptr %i.a, align 8, !tbaa !132
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.by, align 8, !tbaa !132
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !119 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !114
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #37
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.by, align 8, !tbaa !132
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cf) #38
  %i.cg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.cg, ptr %3, align 8, !tbaa !132
  %i.ch = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ci = getelementptr i8, ptr %i.cg, i64 -24
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds i8, ptr %3, i64 %i.cj
  store ptr %i.ch, ptr %i.ck, align 8, !tbaa !132
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.cl, align 8, !tbaa !195
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.cm) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  ret void

.body:                                            ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.c, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit, %bb.d ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ], [ %i.z, %bb.c ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bm, %bb.h ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow10TypeHolder9FromTypesERKSt6vectorISt10shared_ptrINS_8DataTypeEESaIS4_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.41") align 8 initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !238  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !239    ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow16FieldPathGetImpl3GetINS_14NestedSelectorINS_5FieldELb0EEES3_EENS_6ResultISt10shared_ptrIT0_EEEPKNS_9FieldPathET_Pi:bb.a

bb.y:                                             ; preds = %bb.w
  %i.bj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !114
  %.not.i.i.i.i = icmp eq i8 %i.bj, 0
  br i1 %.not.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bk = add nsw i32 %i.bb, -1
  store i32 %i.bk, ptr %i.ay, align 8, !tbaa !81
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.bl = atomicrmw volatile add ptr %i.ay, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i = phi i32 [ %i.bb, %bb.z ], [ %i.bl, %bb.aa ]
  %i.bm = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bm, label %bb.ab, label %_ZN5arrow14NestedSelectorINS_5FieldELb0EED2Ev.exit, !prof !133

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #38
  br label %_ZN5arrow14NestedSelectorINS_5FieldELb0EED2Ev.exit

_ZN5arrow14NestedSelectorINS_5FieldELb0EED2Ev.exit: ; preds = %bb.v, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  %i.bn = load ptr, ptr %5, align 8, !tbaa !117   ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.ac, label %_ZN5arrow6ResultINS_14NestedSelectorINS_5FieldELb0EEEE7DestroyEv.exit.thread.i, !prof !118

bb.ac:                                            ; preds = %_ZN5arrow14NestedSelectorINS_5FieldELb0EED2Ev.exit
  %i.bp = load ptr, ptr %i.g, align 8, !tbaa !152 ; 8 uses
  %.not.i.i.i.i.i.i34 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i.i34, label %_ZN5arrow6ResultINS_14NestedSelectorINS_5FieldELb0EEEED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 4 uses
  %i.br = load atomic i64, ptr %i.bq acquire, align 8 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 4294967297
  %i.bt = trunc i64 %i.br to i32                  ; 2 uses
  br i1 %i.bs, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.bq, align 8, !tbaa !154
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  store i32 0, ptr %i.bu, align 4, !tbaa !155
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !132
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #38, !inline_history !1610
  %i.by = load ptr, ptr %i.bp, align 8, !tbaa !132
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #38, !inline_history !1610
  br label %_ZN5arrow6ResultINS_14NestedSelectorINS_5FieldELb0EEEE7DestroyEv.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.cb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !114
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.cb, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cc = add nsw i32 %i.bt, -1
  store i32 %i.cc, ptr %i.bq, align 8, !tbaa !81
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ah:                                            ; preds = %bb.af
  %i.cd = atomicrmw volatile add ptr %i.bq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.bt, %bb.ag ], [ %i.cd, %bb.ah ]
  %i.ce = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ce, label %bb.ai, label %_ZN5arrow6ResultINS_14NestedSelectorINS_5FieldELb0EEEE7DestroyEv.exit.i, !prof !133

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #38
  br label %_ZN5arrow6ResultINS_14NestedSelectorINS_5FieldELb0EEEE7DestroyEv.exit.i

_ZN5arrow6ResultINS_14NestedSelectorINS_5FieldELb0EEEE7DestroyEv.exit.i: ; preds = %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.ae
  %.pr.i.pr = load ptr, ptr %5, align 8, !tbaa !117 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.i.pr, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultINS_14NestedSelectorINS_5FieldELb0EEEED2Ev.exit, label %_ZN5arrow6ResultINS_14NestedSelectorINS_5FieldELb0EEEE7DestroyEv.exit.thread.i, !prof !158

_ZN5arrow6ResultINS_14NestedSelectorINS_5FieldELb0EEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultINS_14NestedSelectorINS_5FieldELb0EEEE7DestroyEv.exit.i, %_ZN5arrow14NestedSelectorINS_5FieldELb0EED2Ev.exit
  %i.cf = phi ptr [ %.pr.i.pr, %_ZN5arrow6ResultINS_14NestedSelectorINS_5FieldELb0EEEE7DestroyEv.exit.i ], [ %i.bn, %_ZN5arrow14NestedSelectorINS_5FieldELb0EED2Ev.exit ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !128, !range !129, !noundef !130
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %_ZN5arrow6ResultINS_14NestedSelectorINS_5FieldELb0EEEED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZN5arrow6ResultINS_14NestedSelectorINS_5FieldELb0EEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(48) %5) #38
  br label %_ZN5arrow6ResultINS_14NestedSelectorINS_5FieldELb0EEEED2Ev.exit

_ZN5arrow6ResultINS_14NestedSelectorINS_5FieldELb0EEEED2Ev.exit: ; preds = %bb.ac, %_ZN5arrow6ResultINS_14NestedSelectorINS_5FieldELb0EEEE7DestroyEv.exit.i, %_ZN5arrow6ResultINS_14NestedSelectorINS_5FieldELb0EEEE7DestroyEv.exit.thread.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  br i1 %i.aa, label %bb.e, label %_ZNK5arrow14NestedSelectorINS_5FieldELb0EE6FinishEv.exit

.critedge31:                                      ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !1616)
  store ptr null, ptr %0, align 8, !tbaa !117, !alias.scope !1616
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ck = load ptr, ptr %i.k, align 8, !tbaa !152, !noalias !1616 ; 2 uses
  %i.cl = load <2 x ptr>, ptr %2, align 8, !tbaa !167, !noalias !1616
  store <2 x ptr> %i.cl, ptr %i.cj, align 8, !tbaa !167, !alias.scope !1616
  %.not.i.i.i.i.i.i.i35 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i.i.i.i35, label %_ZNK5arrow14NestedSelectorINS_5FieldELb0EE6FinishEv.exit, label %bb.ak

bb.ak:                                            ; preds = %.critedge31
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 3 uses
  %i.cn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !114, !noalias !1616
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.cn, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.co = load i32, ptr %i.cm, align 4, !tbaa !81, !noalias !1616
  %i.cp = add nsw i32 %i.co, 1
  store i32 %i.cp, ptr %i.cm, align 4, !tbaa !81, !noalias !1616
  br label %_ZNK5arrow14NestedSelectorINS_5FieldELb0EE6FinishEv.exit

bb.am:                                            ; preds = %bb.ak
  %i.cq = atomicrmw volatile add ptr %i.cm, i32 1 acq_rel, align 4, !noalias !1616 ; 0 uses
  br label %_ZNK5arrow14NestedSelectorINS_5FieldELb0EE6FinishEv.exit

_ZNK5arrow14NestedSelectorINS_5FieldELb0EE6FinishEv.exit: ; preds = %_ZN5arrow6ResultINS_14NestedSelectorINS_5FieldELb0EEEED2Ev.exit, %bb.am, %bb.al, %.critedge31, %.critedge, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow14NestedSelectorINS_5FieldELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !152  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !154
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !155
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !132
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #38, !inline_history !7
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !132
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #38, !inline_history !7
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !114
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !81
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !133

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #38
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow9FieldPath6GetAllERKNS_6SchemaERKSt6vectorIS0_SaIS0_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.134") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.12", align 8    ; 16 uses
  %4 = alloca %"class.arrow::Result", align 8     ; 12 uses
  %5 = alloca %"class.std::shared_ptr.27", align 16 ; 8 uses
  %6 = alloca %"class.std::vector.12", align 8    ; 7 uses
  %7 = alloca %"class.std::shared_ptr.19", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !319  ; 3 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !320    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24                  ; 3 uses
  %8 = icmp ugt i64 %i.g, 576460752303423487
  br i1 %8, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.220) #39
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE7reserveEm.exit, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.j = shl nuw nsw i64 %i.g, 4
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #36
          to label %.noexc22 unwind label %bb.f   ; 5 uses

.noexc22:                                         ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_M_allocateEm.exit.i
  %i.l = load ptr, ptr %3, align 8, !tbaa !216    ; 5 uses
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !226  ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc22, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i ], [ %i.k, %.noexc22 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i ], [ %i.l, %.noexc22 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1630)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1631)
  %i.n = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.o = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !167, !alias.scope !1631, !noalias !1630
  store ptr null, ptr %i.n, align 8, !tbaa !152, !alias.scope !1631, !noalias !1630
  store <2 x ptr> %i.o, ptr %.012.i.i.i.i, align 8, !tbaa !167, !alias.scope !1630, !noalias !1631
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !165, !alias.scope !1631, !noalias !1630
  %i.p = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.p, %i.m
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !21

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc22
  %.not.i8.i = icmp eq ptr %i.l, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !227
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.l to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.u) #37
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  store ptr %i.k, ptr %3, align 8, !tbaa !216
  store ptr %i.k, ptr %i.i, align 8, !tbaa !226
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.g ; 2 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !227
  %.pre = load ptr, ptr %2, align 8, !tbaa !321
  %.pre58 = load ptr, ptr %i.a, align 8, !tbaa !321
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE7reserveEm.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_deallocateEPS3_m.exit.i, %bb.c
  %i.w = phi ptr [ %i.v, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ null, %bb.c ]
  %i.x = phi ptr [ %i.k, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ null, %bb.c ] ; 2 uses
  %i.y = phi ptr [ %.pre58, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ %i.b, %bb.c ] ; 2 uses
  %i.z = phi ptr [ %.pre, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ %i.c, %bb.c ] ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.y
  br i1 %i.aa, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE7reserveEm.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %bb.g

bb.e:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEED2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.054.057, i64 24 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.y
  br i1 %i.ah, label %.critedge.loopexit, label %bb.g

bb.f:                                             ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_M_allocateEm.exit.i, %bb.b
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.g:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.054.057 = phi ptr [ %i.z, %.lr.ph ], [ %i.ag, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.aj = load ptr, ptr %i.ab, align 8, !tbaa !301, !noalias !1632
  invoke void @_ZNK5arrow9FieldPath3GetERKSt6vectorISt10shared_ptrINS_5FieldEESaIS4_EE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.054.057, ptr noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_ZNK5arrow9FieldPath3GetERKNS_6SchemaE.exit unwind label %bb.i

_ZNK5arrow9FieldPath3GetERKNS_6SchemaE.exit:      ; preds = %bb.g
  %i.ak = load ptr, ptr %4, align 8, !tbaa !117
  %i.al = icmp eq ptr %i.ak, null                 ; 2 uses
  br i1 %i.al, label %bb.j, label %bb.h, !prof !118

bb.h:                                             ; preds = %_ZNK5arrow9FieldPath3GetERKNS_6SchemaE.exit
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #38
  br label %bb.s

bb.i:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.j:                                             ; preds = %_ZNK5arrow9FieldPath3GetERKNS_6SchemaE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !1633)
  call void @llvm.experimental.noalias.scope.decl(metadata !1634)
  %i.an = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !167, !noalias !1635
  %i.ao = load ptr, ptr %i.ac, align 8, !tbaa !165, !noalias !1635
  store ptr null, ptr %i.ae, align 8, !tbaa !152, !noalias !1635
  store <2 x ptr> %i.an, ptr %5, align 16, !tbaa !167, !alias.scope !1635
  store ptr null, ptr %i.ac, align 8, !tbaa !165, !noalias !1635
  %i.ap = load ptr, ptr %i.af, align 8, !tbaa !226 ; 5 uses
  %i.aq = load ptr, ptr %i.h, align 8, !tbaa !227
  %.not.i.i = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !165
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !152
  %i.as = load ptr, ptr %i.ad, align 8, !tbaa !152
  store ptr null, ptr %i.ad, align 8, !tbaa !152
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !152
  store ptr null, ptr %5, align 16, !tbaa !165
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr %i.at, ptr %i.af, align 8, !tbaa !226
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE9push_backEOS3_.exit

bb.l:                                             ; preds = %bb.j
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE9push_backEOS3_.exit unwind label %bb.ab

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.k, %bb.l
  %i.au = load ptr, ptr %i.ad, align 8, !tbaa !152 ; 8 uses
  %.not.i.i25 = icmp eq ptr %i.au, null
  br i1 %.not.i.i25, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE9push_backEOS3_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967297
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.ax, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.av, align 8, !tbaa !154
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.az, align 4, !tbaa !155
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !132
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #38, !inline_history !7
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !132
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #38, !inline_history !7
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !114
  %.not.i.i.i = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = add nsw i32 %i.ay, -1
  store i32 %i.bh, ptr %i.av, align 8, !tbaa !81
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bi = atomicrmw volatile add ptr %i.av, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i = phi i32 [ %i.ay, %bb.p ], [ %i.bi, %bb.q ]
  %i.bj = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bj, label %bb.r, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !133

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #38
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE9push_backEOS3_.exit, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.h
  %i.bk = load ptr, ptr %4, align 8, !tbaa !117   ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.t, label %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit.thread.i, !prof !118

bb.t:                                             ; preds = %bb.s
  %i.bm = load ptr, ptr %i.ae, align 8, !tbaa !152 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bm, null
end_hunk_1
begin_hunk_2_@_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultISt6vectorIN5arrow9FieldPathESaIS5_EEEEZNKS4_8FieldRef7FindAllERKS3_ISt10shared_ptrINS4_5FieldEESaISC_EEE7VisitorJRKSt7variantIJS5_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_IS9_SaIS9_EEEEEEDcOT0_DpOT1_:bb.a
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store ptr %i.dt, ptr %i.dx, align 8, !tbaa !254
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store ptr %i.dt, ptr %i.dy, align 8, !tbaa !253
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  store ptr %i.dz, ptr %i.db, align 8, !tbaa !319, !alias.scope !3099
  br label %_ZN5arrow9FieldPathD2Ev.exit.i.i.i.i11

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZNSt6vectorIN5arrow9FieldPathESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.dv, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %_ZNSt6vectorIN5arrow9FieldPathESaIS1_EE9push_backEOS1_.exit.i.i.i.i unwind label %bb.as

_ZNSt6vectorIN5arrow9FieldPathESaIS1_EE9push_backEOS1_.exit.i.i.i.i: ; preds = %bb.aq
  %.pr.i.i.i.i = load ptr, ptr %10, align 8, !tbaa !252, !noalias !3099 ; 3 uses
  %.not.i.i.i.i.i.i.i.i13 = icmp eq ptr %.pr.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i13, label %_ZN5arrow9FieldPathD2Ev.exit.i.i.i.i11, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIN5arrow9FieldPathESaIS1_EE9push_backEOS1_.exit.i.i.i.i
  %i.ea = load ptr, ptr %i.cz, align 8, !tbaa !253, !noalias !3099
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = ptrtoint ptr %.pr.i.i.i.i to i64
  %i.ed = sub i64 %i.eb, %i.ec
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i.i.i.i, i64 noundef %i.ed) #37
  br label %_ZN5arrow9FieldPathD2Ev.exit.i.i.i.i11

_ZN5arrow9FieldPathD2Ev.exit.i.i.i.i11:           ; preds = %bb.ar, %_ZNSt6vectorIN5arrow9FieldPathESaIS1_EE9push_backEOS1_.exit.i.i.i.i, %_ZNSt6vectorIN5arrow9FieldPathESaIS1_EE9push_backEOS1_.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38, !noalias !3099
  %.pre.i.i.i.i12 = load ptr, ptr %1, align 8, !tbaa !3088, !noalias !3099 ; 2 uses
  %.pre16.i.i.i.i = load ptr, ptr %.pre.i.i.i.i12, align 8, !tbaa !216
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13.i.i.i.i

bb.as:                                            ; preds = %bb.aq
  %i.ee = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ef = load ptr, ptr %10, align 8, !tbaa !252, !noalias !3099 ; 2 uses
  %.not.i.i.i.i11.i.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i.i11.i.i.i.i, label %.body.i.i.i.i8, label %.body.sink.split.i.i.i.i

.body.sink.split.i.i.i.i:                         ; preds = %bb.as, %bb.ao
  %.sink25.i.i.i.i = phi ptr [ %i.ds, %bb.ao ], [ %i.ef, %bb.as ] ; 2 uses
  %.pn.ph.i.i.i.i = phi { ptr, i32 } [ %i.dr, %bb.ao ], [ %i.ee, %bb.as ]
  %i.eg = load ptr, ptr %i.cz, align 8, !tbaa !253, !noalias !3099
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = ptrtoint ptr %.sink25.i.i.i.i to i64
  %i.ej = sub i64 %i.eh, %i.ei
  call void @_ZdlPvm(ptr noundef nonnull %.sink25.i.i.i.i, i64 noundef %i.ej) #37
  br label %.body.i.i.i.i8

.body.i.i.i.i8:                                   ; preds = %.body.sink.split.i.i.i.i, %bb.as, %bb.ao
  %.pn.i.i.i.i9 = phi { ptr, i32 } [ %i.dr, %bb.ao ], [ %i.ee, %bb.as ], [ %.pn.ph.i.i.i.i, %.body.sink.split.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38, !noalias !3099
  call void @_ZNSt6vectorIN5arrow9FieldPathESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #38
  br label %common.resume

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13.i.i.i.i: ; preds = %_ZN5arrow9FieldPathD2Ev.exit.i.i.i.i11, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i, %bb.am
  %i.ek = phi ptr [ %i.dd, %bb.am ], [ %i.dd, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i ], [ %.pre16.i.i.i.i, %_ZN5arrow9FieldPathD2Ev.exit.i.i.i.i11 ] ; 2 uses
  %i.el = phi ptr [ %i.de, %bb.am ], [ %i.de, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i ], [ %.pre.i.i.i.i12, %_ZN5arrow9FieldPathD2Ev.exit.i.i.i.i11 ] ; 2 uses
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !226
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = ptrtoint ptr %i.ek to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %sext.i.i.i.i = shl i64 %i.eq, 28
  %i.er = ashr i64 %sext.i.i.i.i, 32
  %i.es = icmp slt i64 %indvars.iv.next.i.i.i.i, %i.er
  br i1 %i.es, label %bb.am, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultISt6vectorIN5arrow9FieldPathESaIS6_EEEEOZNKS5_8FieldRef7FindAllERKS4_ISt10shared_ptrINS5_5FieldEESaISD_EEE7VisitorRKSt7variantIJS6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_ISA_SaISA_EEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESJ_SV_.exit, !llvm.loop !3068

bb.at:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3100)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38, !noalias !3100
  %i.et = load ptr, ptr %2, align 8, !tbaa !386, !noalias !3100 ; 2 uses
  %i.eu = load ptr, ptr %1, align 8, !tbaa !3088, !noalias !3100, !nonnull !130, !align !485
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38, !noalias !3101
  store ptr %i.eu, ptr %5, align 8, !tbaa !401, !noalias !3101
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  %i.ew = load i8, ptr %i.ev, align 8, !tbaa !384, !noalias !3102
  %.not.i.i = icmp eq i8 %i.ew, -1
  br i1 %.not.i.i, label %bb.au, label %_ZNK5arrow8FieldRef7FindAllERKSt6vectorISt10shared_ptrINS_5FieldEESaIS4_EE.exit.i

bb.au:                                            ; preds = %bb.at
  %i.ex = tail call ptr @__cxa_allocate_exception(i64 16) #38, !noalias !3102, !inline_history !3075 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.ex, align 8, !tbaa !132, !noalias !3102
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store ptr @.str.223, ptr %i.ey, align 8, !tbaa !397, !noalias !3102
  tail call void @__cxa_throw(ptr nonnull %i.ex, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #39, !noalias !3102, !inline_history !3075
  unreachable

_ZNK5arrow8FieldRef7FindAllERKSt6vectorISt10shared_ptrINS_5FieldEESaIS4_EE.exit.i: ; preds = %bb.at
  call fastcc void @_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultISt6vectorIN5arrow9FieldPathESaIS5_EEEEZNKS4_8FieldRef7FindAllERKS3_ISt10shared_ptrINS4_5FieldEESaISC_EEE7VisitorJRKSt7variantIJS5_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_IS9_SaIS9_EEEEEEDcOT0_DpOT1_(ptr dead_on_unwind noalias nonnull writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(40) %i.et), !noalias !3100, !inline_history !3076
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38, !noalias !3101
  %i.ez = load ptr, ptr %1, align 8, !tbaa !3088, !noalias !3100, !nonnull !130, !align !485
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %6, i8 0, i64 48, i1 false), !noalias !3100
  %i.fa = load ptr, ptr %7, align 8, !tbaa !321, !noalias !3100 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !321, !noalias !3100 ; 2 uses
  %i.fd = icmp eq ptr %i.fa, %i.fc
  br i1 %i.fd, label %_ZSt8_DestroyIPN5arrow9FieldPathES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK5arrow8FieldRef7FindAllERKSt6vectorISt10shared_ptrINS_5FieldEESaIS4_EE.exit.i, %_ZN5arrow9FieldPathD2Ev.exit.i.i
  %.sroa.08.011.i.i = phi ptr [ %i.fe, %_ZN5arrow9FieldPathD2Ev.exit.i.i ], [ %i.fa, %_ZNK5arrow8FieldRef7FindAllERKSt6vectorISt10shared_ptrINS_5FieldEESaIS4_EE.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38, !noalias !3100
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !noalias !3100
  invoke fastcc void @_ZZNK5arrow8FieldRef7FindAllERKSt6vectorISt10shared_ptrINS_5FieldEESaIS4_EEEN7Visitor7Matches3AddERKNS_9FieldPathESD_S8_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.011.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ez)
          to label %_ZN5arrow9FieldPathD2Ev.exit.i.i unwind label %_ZN5arrow9FieldPathD2Ev.exit7.i.i, !noalias !3100, !inline_history !3075

_ZN5arrow9FieldPathD2Ev.exit.i.i:                 ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38, !noalias !3100
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i, i64 24 ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.fc
  br i1 %i.ff, label %_ZZNK5arrow8FieldRef7FindAllERKSt6vectorISt10shared_ptrINS_5FieldEESaIS4_EEEN7Visitor7MatchesC2ES1_INS_9FieldPathESaISB_EES8_.exit.i, label %.lr.ph.i.i

_ZN5arrow9FieldPathD2Ev.exit7.i.i:                ; preds = %.lr.ph.i.i
  %i.fg = landingpad { ptr, i32 }
          cleanup
  %i.fh = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38, !noalias !3100
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.fh) #38, !noalias !3100, !inline_history !3075
  call void @_ZNSt6vectorIN5arrow9FieldPathESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #38, !noalias !3100, !inline_history !3075
  call void @_ZNSt6vectorIN5arrow9FieldPathESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #38, !noalias !3100, !inline_history !3075
  br label %bb.bu

_ZZNK5arrow8FieldRef7FindAllERKSt6vectorISt10shared_ptrINS_5FieldEESaIS4_EEEN7Visitor7MatchesC2ES1_INS_9FieldPathESaISB_EES8_.exit.i: ; preds = %_ZN5arrow9FieldPathD2Ev.exit.i.i
  %.pre = load ptr, ptr %7, align 8, !tbaa !320, !noalias !3100 ; 3 uses
  %.pre48 = load ptr, ptr %i.fb, align 8, !tbaa !319, !noalias !3100 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %.pre, %.pre48
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN5arrow9FieldPathES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i14

.lr.ph.i.i.i.i14:                                 ; preds = %_ZZNK5arrow8FieldRef7FindAllERKSt6vectorISt10shared_ptrINS_5FieldEESaIS4_EEEN7Visitor7MatchesC2ES1_INS_9FieldPathESaISB_EES8_.exit.i, %_ZSt8_DestroyIN5arrow9FieldPathEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.fo, %_ZSt8_DestroyIN5arrow9FieldPathEEvPT_.exit.i.i.i.i ], [ %.pre, %_ZZNK5arrow8FieldRef7FindAllERKSt6vectorISt10shared_ptrINS_5FieldEESaIS4_EEEN7Visitor7MatchesC2ES1_INS_9FieldPathESaISB_EES8_.exit.i ] ; 3 uses
  %i.fi = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !252, !noalias !3100 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i15 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i15, label %_ZSt8_DestroyIN5arrow9FieldPathEEvPT_.exit.i.i.i.i, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i.i.i.i14
  %i.fj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !253, !noalias !3100
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = ptrtoint ptr %i.fi to i64
  %i.fn = sub i64 %i.fl, %i.fm
  call void @_ZdlPvm(ptr noundef nonnull %i.fi, i64 noundef %i.fn) #37, !noalias !3100, !inline_history !3075
  br label %_ZSt8_DestroyIN5arrow9FieldPathEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN5arrow9FieldPathEEvPT_.exit.i.i.i.i: ; preds = %bb.av, %.lr.ph.i.i.i.i14
  %i.fo = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fo, %.pre48
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5arrow9FieldPathES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i14, !llvm.loop !61

_ZSt8_DestroyIPN5arrow9FieldPathES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN5arrow9FieldPathEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %7, align 8, !tbaa !320, !noalias !3100
  br label %_ZSt8_DestroyIPN5arrow9FieldPathES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9FieldPathES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZNK5arrow8FieldRef7FindAllERKSt6vectorISt10shared_ptrINS_5FieldEESaIS4_EE.exit.i, %_ZSt8_DestroyIPN5arrow9FieldPathES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %_ZZNK5arrow8FieldRef7FindAllERKSt6vectorISt10shared_ptrINS_5FieldEESaIS4_EEEN7Visitor7MatchesC2ES1_INS_9FieldPathESaISB_EES8_.exit.i
  %i.fp = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN5arrow9FieldPathES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %.pre, %_ZZNK5arrow8FieldRef7FindAllERKSt6vectorISt10shared_ptrINS_5FieldEESaIS4_EEEN7Visitor7MatchesC2ES1_INS_9FieldPathESaISB_EES8_.exit.i ], [ %i.fa, %_ZNK5arrow8FieldRef7FindAllERKSt6vectorISt10shared_ptrINS_5FieldEESaIS4_EE.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.fp, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN5arrow9FieldPathESaIS1_EED2Ev.exit.i, label %bb.aw

bb.aw:                                            ; preds = %_ZSt8_DestroyIPN5arrow9FieldPathES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !400, !noalias !3100
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = ptrtoint ptr %i.fp to i64
  %i.fu = sub i64 %i.fs, %i.ft
  call void @_ZdlPvm(ptr noundef nonnull %i.fp, i64 noundef %i.fu) #37, !noalias !3100, !inline_history !3075
  br label %_ZNSt6vectorIN5arrow9FieldPathESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN5arrow9FieldPathESaIS1_EED2Ev.exit.i: ; preds = %bb.aw, %_ZSt8_DestroyIPN5arrow9FieldPathES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.fv = load ptr, ptr %2, align 8, !tbaa !386, !noalias !3100 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.024.043 = getelementptr inbounds nuw i8, ptr %i.fv, i64 40 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !386, !noalias !3100
  %i.fy = icmp eq ptr %.sroa.024.043, %i.fx
  br i1 %i.fy, label %._crit_edge47, label %.lr.ph46

.lr.ph46:                                         ; preds = %_ZNSt6vectorIN5arrow9FieldPathESaIS1_EED2Ev.exit.i
  %i.fz = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.gg = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %8, i64 40
  br label %bb.ba

._crit_edge47:                                    ; preds = %_ZZNK5arrow8FieldRef7FindAllERKSt6vectorISt10shared_ptrINS_5FieldEESaIS4_EEEN7Visitor7MatchesaSEOSA_.exit.i, %_ZNSt6vectorIN5arrow9FieldPathESaIS1_EED2Ev.exit.i
  %i.gj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !319, !noalias !3100 ; 3 uses
  %i.gl = load ptr, ptr %6, align 16, !tbaa !320, !noalias !3100 ; 3 uses
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = sub i64 %i.gm, %i.gn                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !alias.scope !3100
  %.not.i.i.i.i.i17 = icmp eq ptr %i.gk, %i.gl
  br i1 %.not.i.i.i.i.i17, label %.noexc23.i, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge47
  %14 = sdiv exact i64 %i.go, 24
  %i.gp = icmp ugt i64 %14, 384307168202282325
  br i1 %i.gp, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN5arrow9FieldPathEE8allocateEmPKv.exit.i.i.i.i.i, !prof !133

.noexc.i.i.i:                                     ; preds = %bb.ax
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #39
          to label %.noexc.i unwind label %bb.bt, !noalias !3100, !inline_history !3075

.noexc.i:                                         ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIN5arrow9FieldPathEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.ax
  %i.gq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.go) #36
          to label %_ZNSt15__new_allocatorIN5arrow9FieldPathEE8allocateEmPKv.exit.i.i.i.i.i..noexc23.i_crit_edge unwind label %bb.bt, !noalias !3100, !inline_history !3075

_ZNSt15__new_allocatorIN5arrow9FieldPathEE8allocateEmPKv.exit.i.i.i.i.i..noexc23.i_crit_edge: ; preds = %_ZNSt15__new_allocatorIN5arrow9FieldPathEE8allocateEmPKv.exit.i.i.i.i.i
  %.pre54 = load ptr, ptr %6, align 16, !tbaa !321, !noalias !3100
  %.pre55 = load ptr, ptr %i.gj, align 8, !tbaa !321, !noalias !3100
  br label %.noexc23.i

.noexc23.i:                                       ; preds = %_ZNSt15__new_allocatorIN5arrow9FieldPathEE8allocateEmPKv.exit.i.i.i.i.i..noexc23.i_crit_edge, %._crit_edge47
  %i.gr = phi ptr [ %i.gk, %._crit_edge47 ], [ %.pre55, %_ZNSt15__new_allocatorIN5arrow9FieldPathEE8allocateEmPKv.exit.i.i.i.i.i..noexc23.i_crit_edge ]
  %i.gs = phi ptr [ %i.gl, %._crit_edge47 ], [ %.pre54, %_ZNSt15__new_allocatorIN5arrow9FieldPathEE8allocateEmPKv.exit.i.i.i.i.i..noexc23.i_crit_edge ]
  %i.gt = phi ptr [ null, %._crit_edge47 ], [ %i.gq, %_ZNSt15__new_allocatorIN5arrow9FieldPathEE8allocateEmPKv.exit.i.i.i.i.i..noexc23.i_crit_edge ] ; 6 uses
  store ptr %i.gt, ptr %0, align 8, !tbaa !320, !alias.scope !3100
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.gt, ptr %i.gu, align 8, !tbaa !319, !alias.scope !3100
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.go
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.gv, ptr %i.gw, align 8, !tbaa !400, !alias.scope !3100
  %i.gx = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN5arrow9FieldPathESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %i.gs, ptr %i.gr, ptr noundef %i.gt)
          to label %_ZZNK5arrow8FieldRef7FindAllERKSt6vectorISt10shared_ptrINS_5FieldEESaIS4_EEEN7VisitorclERKS1_IS0_SaIS0_EE.exit unwind label %bb.ay, !noalias !3100, !inline_history !3075

bb.ay:                                            ; preds = %.noexc23.i
  %i.gy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i22.i = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i22.i, label %.body24.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef %i.go) #37, !noalias !3100, !inline_history !3075
  br label %.body24.i

bb.ba:                                            ; preds = %.lr.ph46, %_ZZNK5arrow8FieldRef7FindAllERKSt6vectorISt10shared_ptrINS_5FieldEESaIS4_EEEN7Visitor7MatchesaSEOSA_.exit.i
  %.sroa.024.045 = phi ptr [ %.sroa.024.043, %.lr.ph46 ], [ %.sroa.024.0, %_ZZNK5arrow8FieldRef7FindAllERKSt6vectorISt10shared_ptrINS_5FieldEESaIS4_EEEN7Visitor7MatchesaSEOSA_.exit.i ] ; 3 uses
  %.pn44 = phi ptr [ %i.fv, %.lr.ph46 ], [ %.sroa.024.045, %_ZZNK5arrow8FieldRef7FindAllERKSt6vectorISt10shared_ptrINS_5FieldEESaIS4_EEEN7Visitor7MatchesaSEOSA_.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38, !noalias !3100
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %8, i8 0, i64 48, i1 false), !noalias !3100
  %.val.i36 = load ptr, ptr %i.fz, align 8, !tbaa !216, !noalias !3100 ; 2 uses
  %.val21.i37 = load ptr, ptr %i.ga, align 16, !tbaa !226, !noalias !3100
  %.not = icmp eq ptr %.val21.i37, %.val.i36
  br i1 %.not, label %._crit_edge42, label %.lr.ph41

.lr.ph41:                                         ; preds = %bb.ba
  %i.gz = getelementptr inbounds nuw i8, ptr %.pn44, i64 72
  br label %bb.bk

._crit_edge42.loopexit:                           ; preds = %_ZNSt6vectorIN5arrow9FieldPathESaIS1_EED2Ev.exit38.i
  %i.ha = load <2 x ptr>, ptr %8, align 16, !tbaa !321, !noalias !3100
  %.pre53 = load ptr, ptr %i.gf, align 16, !tbaa !400, !noalias !3100
  br label %._crit_edge42

._crit_edge42:                                    ; preds = %._crit_edge42.loopexit, %bb.ba
  %i.hb = phi ptr [ %.pre53, %._crit_edge42.loopexit ], [ null, %bb.ba ]
  %i.hc = phi <2 x ptr> [ %i.ha, %._crit_edge42.loopexit ], [ splat (ptr null), %bb.ba ]
  %i.hd = load ptr, ptr %6, align 16, !tbaa !320, !noalias !3100 ; 5 uses
  %i.he = load ptr, ptr %i.gd, align 8, !tbaa !319, !noalias !3100 ; 2 uses
  %i.hf = load ptr, ptr %i.ge, align 16, !tbaa !400, !noalias !3100
  store <2 x ptr> %i.hc, ptr %6, align 16, !tbaa !321, !noalias !3100
  store ptr %i.hb, ptr %i.ge, align 16, !tbaa !400, !noalias !3100
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.hd, %i.he
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %8, i8 0, i64 24, i1 false), !noalias !3100
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5arrow9FieldPathES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %._crit_edge42, %_ZSt8_DestroyIN5arrow9FieldPathEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.hm, %_ZSt8_DestroyIN5arrow9FieldPathEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.hd, %._crit_edge42 ] ; 3 uses
  %i.hg = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !252, !noalias !3100 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5arrow9FieldPathEEvPT_.exit.i.i.i.i.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.hh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !253, !noalias !3100
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = ptrtoint ptr %i.hg to i64
  %i.hl = sub i64 %i.hj, %i.hk
  call void @_ZdlPvm(ptr noundef nonnull %i.hg, i64 noundef %i.hl) #37, !noalias !3100, !inline_history !3075
  br label %_ZSt8_DestroyIN5arrow9FieldPathEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIN5arrow9FieldPathEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %bb.bb, %.lr.ph.i.i.i.i.i.i.i
  %i.hm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i16 = icmp eq ptr %i.hm, %i.he
  br i1 %.not.i.i.i.i.i.i.i16, label %_ZSt8_DestroyIPN5arrow9FieldPathES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !61

_ZSt8_DestroyIPN5arrow9FieldPathES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN5arrow9FieldPathEEvPT_.exit.i.i.i.i.i.i.i, %._crit_edge42
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.hd, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZNSt6vectorIN5arrow9FieldPathESaIS1_EEaSEOS3_.exit.i.i, label %bb.bc

bb.bc:                                            ; preds = %_ZSt8_DestroyIPN5arrow9FieldPathES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i
  %i.hn = ptrtoint ptr %i.hf to i64
  %i.ho = ptrtoint ptr %i.hd to i64
  %i.hp = sub i64 %i.hn, %i.ho
  call void @_ZdlPvm(ptr noundef nonnull %i.hd, i64 noundef %i.hp) #37, !noalias !3100, !inline_history !3075
  br label %_ZNSt6vectorIN5arrow9FieldPathESaIS1_EEaSEOS3_.exit.i.i

_ZNSt6vectorIN5arrow9FieldPathESaIS1_EEaSEOS3_.exit.i.i: ; preds = %bb.bc, %_ZSt8_DestroyIPN5arrow9FieldPathES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i
  %i.hq = load ptr, ptr %i.fz, align 8, !tbaa !216, !noalias !3100 ; 5 uses
  %i.hr = load ptr, ptr %i.ga, align 16, !tbaa !226, !noalias !3100 ; 2 uses
  %i.hs = load ptr, ptr %i.gh, align 8, !tbaa !227, !noalias !3100
  %i.ht = load <2 x ptr>, ptr %i.gg, align 8, !tbaa !225, !noalias !3100
  store <2 x ptr> %i.ht, ptr %i.fz, align 8, !tbaa !225, !noalias !3100
  %i.hu = load ptr, ptr %i.gi, align 8, !tbaa !227, !noalias !3100
  store ptr %i.hu, ptr %i.gh, align 8, !tbaa !227, !noalias !3100
  %.not4.i.i.i.i.i3.i.i = icmp eq ptr %i.hq, %i.hr
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gg, i8 0, i64 24, i1 false), !noalias !3100
  br i1 %.not4.i.i.i.i.i3.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i4.i.i

.lr.ph.i.i.i.i.i4.i.i:                            ; preds = %_ZNSt6vectorIN5arrow9FieldPathESaIS1_EEaSEOS3_.exit.i.i, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i5.i.i = phi ptr [ %i.im, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.hq, %_ZNSt6vectorIN5arrow9FieldPathESaIS1_EEaSEOS3_.exit.i.i ] ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i5.i.i, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !152, !noalias !3100 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i.i.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph.i.i.i.i.i4.i.i
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8 ; 4 uses
  %i.hy = load atomic i64, ptr %i.hx acquire, align 8, !noalias !3100 ; 2 uses
  %i.hz = icmp eq i64 %i.hy, 4294967297
  %i.ia = trunc i64 %i.hy to i32                  ; 2 uses
  br i1 %i.hz, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store i32 0, ptr %i.hx, align 8, !tbaa !154, !noalias !3100
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hw, i64 12
  store i32 0, ptr %i.ib, align 4, !tbaa !155, !noalias !3100
  %i.ic = load ptr, ptr %i.hw, align 8, !tbaa !132, !noalias !3100
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %i.ie = load ptr, ptr %i.id, align 8, !noalias !3100
  call void %i.ie(ptr noundef nonnull align 8 dereferenceable(16) %i.hw) #38, !noalias !3100, !inline_history !3077
  %i.if = load ptr, ptr %i.hw, align 8, !tbaa !132, !noalias !3100
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %i.ih = load ptr, ptr %i.ig, align 8, !noalias !3100
  call void %i.ih(ptr noundef nonnull align 8 dereferenceable(16) %i.hw) #38, !noalias !3100, !inline_history !3077
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i.i.i.i.i

bb.bf:                                            ; preds = %bb.bd
  %i.ii = load i8, ptr @__libc_single_threaded, align 1, !tbaa !114, !noalias !3100
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ii, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ij = add nsw i32 %i.ia, -1
  store i32 %i.ij, ptr %i.hx, align 8, !tbaa !81, !noalias !3100
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.ik = atomicrmw volatile add ptr %i.hx, i32 -1 acq_rel, align 4, !noalias !3100
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bh, %bb.bg
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ia, %bb.bg ], [ %i.ik, %bb.bh ]
  %i.il = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.il, label %bb.bi, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i.i.i.i.i, !prof !133

bb.bi:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hw) #38, !noalias !3100, !inline_history !3075
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %bb.bi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.be, %.lr.ph.i.i.i.i.i4.i.i
  %i.im = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i5.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i6.i.i = icmp eq ptr %i.im, %i.hr
  br i1 %.not.i.i.i.i.i6.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i4.i.i, !llvm.loop !9

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i.i.i.i.i, %_ZNSt6vectorIN5arrow9FieldPathESaIS1_EEaSEOS3_.exit.i.i
  %.not.i.i1.i.i.i7.i.i = icmp eq ptr %i.hq, null
  br i1 %.not.i.i1.i.i.i7.i.i, label %_ZZNK5arrow8FieldRef7FindAllERKSt6vectorISt10shared_ptrINS_5FieldEESaIS4_EEEN7Visitor7MatchesaSEOSA_.exit.i, label %bb.bj

bb.bj:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i
  %i.in = ptrtoint ptr %i.hs to i64
  %i.io = ptrtoint ptr %i.hq to i64
  %i.ip = sub i64 %i.in, %i.io
  call void @_ZdlPvm(ptr noundef nonnull %i.hq, i64 noundef %i.ip) #37, !noalias !3100, !inline_history !3075
  br label %_ZZNK5arrow8FieldRef7FindAllERKSt6vectorISt10shared_ptrINS_5FieldEESaIS4_EEEN7Visitor7MatchesaSEOSA_.exit.i

_ZZNK5arrow8FieldRef7FindAllERKSt6vectorISt10shared_ptrINS_5FieldEESaIS4_EEEN7Visitor7MatchesaSEOSA_.exit.i: ; preds = %bb.bj, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i
  call fastcc void @_ZZNK5arrow8FieldRef7FindAllERKSt6vectorISt10shared_ptrINS_5FieldEESaIS4_EEEN7Visitor7MatchesD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #38, !noalias !3100, !inline_history !3075
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38, !noalias !3100
  %.sroa.024.0 = getelementptr inbounds nuw i8, ptr %.sroa.024.045, i64 40 ; 2 uses
  %i.iq = load ptr, ptr %i.fw, align 8, !tbaa !386, !noalias !3100
  %i.ir = icmp eq ptr %.sroa.024.0, %i.iq
  br i1 %i.ir, label %._crit_edge47, label %bb.ba, !llvm.loop !3078

bb.bk:                                            ; preds = %.lr.ph41, %_ZNSt6vectorIN5arrow9FieldPathESaIS1_EED2Ev.exit38.i
  %.val.i39 = phi ptr [ %.val.i36, %.lr.ph41 ], [ %.val.i, %_ZNSt6vectorIN5arrow9FieldPathESaIS1_EED2Ev.exit38.i ]
  %.0.i38 = phi i64 [ 0, %.lr.ph41 ], [ %i.jp, %_ZNSt6vectorIN5arrow9FieldPathESaIS1_EED2Ev.exit38.i ] ; 3 uses
  %i.is = getelementptr inbounds nuw [16 x i8], ptr %.val.i39, i64 %.0.i38
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !165, !noalias !3100
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38, !noalias !3100
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 56 ; 2 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !136, !noalias !3103
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38, !noalias !3104
end_hunk_2
