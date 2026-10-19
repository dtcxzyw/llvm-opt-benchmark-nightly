Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/smt_context_pp?download=true
inline.NumInlined: 1215
inline.NumDeleted: 493
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN11ast_pp_utilD2Ev:bb.a

bb.m:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  tail call void @__clang_call_terminate(ptr %i.ar) #24
  unreachable

_ZN13stacked_valueIjED2Ev.exit3:                  ; preds = %_ZN13stacked_valueIjED2Ev.exit, %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !643 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i4, label %_ZN13stacked_valueIjED2Ev.exit5, label %bb.n

bb.n:                                             ; preds = %_ZN13stacked_valueIjED2Ev.exit3
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.au)
          to label %_ZN13stacked_valueIjED2Ev.exit5 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  tail call void @__clang_call_terminate(ptr %i.aw) #24
  unreachable

_ZN13stacked_valueIjED2Ev.exit5:                  ; preds = %_ZN13stacked_valueIjED2Ev.exit3, %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !643 ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i6, label %_ZN13stacked_valueIjED2Ev.exit7, label %bb.p

bb.p:                                             ; preds = %_ZN13stacked_valueIjED2Ev.exit5
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.az)
          to label %_ZN13stacked_valueIjED2Ev.exit7 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #24
  unreachable

_ZN13stacked_valueIjED2Ev.exit7:                  ; preds = %_ZN13stacked_valueIjED2Ev.exit5, %bb.p
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN23smt2_pp_environment_dbgD2Ev(ptr noundef nonnull align 8 dead_on_return(400) dereferenceable(400) %i.bc) #21
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !642 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN13stacked_valueIjED2Ev.exit7
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.be)
          to label %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EED2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  tail call void @__clang_call_terminate(ptr %i.bh) #24
  unreachable

_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EED2Ev.exit: ; preds = %_ZN13stacked_valueIjED2Ev.exit7, %bb.r
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZNK3smt7context28display_lemma_as_smt_problemEjPKN3sat7literalES2_RK6symbol(ptr noundef nonnull align 8 dereferenceable(10728) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::basic_ofstream", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZNK3smt7context13mk_lemma_nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(10728) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 16)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK3smt7context28display_lemma_as_smt_problemERSojPKN3sat7literalES3_RK6symbol(ptr noundef nonnull align 8 dereferenceable(10728) %0, ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %1, ptr noundef %2, i32 %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.b = invoke noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240) %i.a)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.c
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv.exit

bb.d:                                             ; preds = %.noexc
  %i.c = load ptr, ptr %6, align 8, !tbaa !528
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %6, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !537
  %i.i = or i32 %i.h, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.f, i32 noundef %i.i)
          to label %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv.exit unwind label %bb.f

_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv.exit: ; preds = %.noexc, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 7568
  %i.k = load i32, ptr %i.j, align 8, !tbaa !645
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.l = load ptr, ptr %5, align 8, !tbaa !544    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv.exit
  %i.o = load i64, ptr %i.m, align 8, !tbaa !543
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret i32 %i.k

bb.e:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %6) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.r, %bb.f ], [ %i.q, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.s = load ptr, ptr %5, align 8, !tbaa !544    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.g
  %i.v = load i64, ptr %i.t, align 8, !tbaa !543
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK3smt7context13mk_lemma_nameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(10728) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = tail call i64 @pthread_self() #25        ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.88, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.d = icmp eq i64 %i.a, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.131, i64 noundef 36)
          to label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_NSt6thread2idE.exit unwind label %bb.f ; 0 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.a)
          to label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_NSt6thread2idE.exit unwind label %bb.f

_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_NSt6thread2idE.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, ptr noundef nonnull @.str.89, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5: ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_NSt6thread2idE.exit
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 7568 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !645
  %i.j = add i32 %i.i, 1                          ; 2 uses
  store i32 %i.j, ptr %i.h, align 8, !tbaa !645
  %i.k = zext i32 %i.j to i64
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, i64 noundef %i.k)
          to label %_ZNSolsEj.exit unwind label %bb.f

_ZNSolsEj.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.90, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8: ; preds = %_ZNSolsEj.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !761)
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !762)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !647, !noalias !763 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %4 = load ptr, ptr %3, align 8, !tbaa !648, !noalias !763 ; 2 uses
  %5 = icmp ugt ptr %i.p, %4
  %.08.i9.i.i = select i1 %5, ptr %i.p, ptr %4    ; 2 uses
  %.not.i.i = icmp eq ptr %.08.i9.i.i, null
  br i1 %.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !649, !noalias !763
  %i.t = ptrtoint ptr %.08.i9.i.i to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 %i.v, ptr %i.w, align 8, !tbaa !542, !noalias !763
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !544, !noalias !763
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !543, !noalias !763
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.aa, ptr %0, align 8, !tbaa !540, !alias.scope !763
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !544, !noalias !763 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 7 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !542, !noalias !763 ; 3 uses
  %i.ag = icmp ult i64 %i.af, 16
  call void @llvm.assume(i1 %i.ag)
  %i.ah = add nuw nsw i64 %i.af, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aa, ptr noundef nonnull align 8 dereferenceable(1) %i.ac, i64 %i.ah, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.ab, ptr %0, align 8, !tbaa !544, !alias.scope !763
  %i.ai = load i64, ptr %i.ac, align 8, !tbaa !543, !noalias !763
  store i64 %i.ai, ptr %i.aa, align 8, !tbaa !543, !alias.scope !763
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 104
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !542, !noalias !763
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.d
  %i.aj = phi i64 [ %i.af, %bb.d ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aj, ptr %i.al, align 8, !tbaa !542, !alias.scope !763
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !544, !noalias !763
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ak, i8 0, i64 9, i1 false), !noalias !763
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.n, ptr noundef nonnull %i.ac, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %0, align 8, !tbaa !544, !alias.scope !763 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.aa
  br i1 %i.ao, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.ap = load i64, ptr %i.aa, align 8, !tbaa !543, !alias.scope !763
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #23
  br label %.body

_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ar = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ar, ptr %2, align 8, !tbaa !528
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.at = getelementptr i8, ptr %i.ar, i64 -24
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds i8, ptr %2, i64 %i.au
  store ptr %i.as, ptr %i.av, align 8, !tbaa !528
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.aw, ptr %i.b, align 8, !tbaa !528
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.n, align 8, !tbaa !528
  %i.ax = load ptr, ptr %i.z, align 8, !tbaa !544 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.ac
  br i1 %i.ay, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.az = load i64, ptr %i.ac, align 8, !tbaa !543
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #23
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.n, align 8, !tbaa !528
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bb) #21
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bc, ptr %2, align 8, !tbaa !528
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.be = getelementptr i8, ptr %i.bc, i64 -24
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = getelementptr inbounds i8, ptr %2, i64 %i.bf
  store ptr %i.bd, ptr %i.bg, align 8, !tbaa !528
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.bh, align 8, !tbaa !651
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bi) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

bb.f:                                             ; preds = %_ZNSolsEj.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5, %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_NSt6thread2idE.exit, %bb.c, %bb.b, %bb.a
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.bj, %bb.f ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.am, %bb.e ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248)) unnamed_addr #3 align 2

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK3smt7context28display_lemma_as_smt_problemERSojPKN3sat7literalEjPKSt4pairIPNS_5enodeES8_ES3_RK6symbolS8_S8_(ptr noundef nonnull align 8 dereferenceable(10728) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, i32 %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef readonly captures(address_is_null) %8, ptr nofree noundef readonly captures(address_is_null) %9) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %class.ast_pp_util, align 8        ; 10 uses
  %11 = alloca %class.ref_vector, align 8         ; 10 uses
  %12 = alloca %class.obj_ref, align 8            ; 13 uses
  %13 = alloca %class.obj_ref, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !546, !nonnull !547, !align !548
  call void @_ZN11ast_pp_utilC2ER11ast_manager(ptr noundef nonnull align 8 dereferenceable(760) %10, ptr noundef nonnull align 8 dereferenceable(952) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !546, !nonnull !547, !align !548
  %i.d = ptrtoint ptr %i.c to i64
  store i64 %i.d, ptr %11, align 8, !tbaa !555
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 15 uses
  store ptr null, ptr %i.e, align 8, !tbaa !545
  invoke void @_ZN11ast_pp_util7collectERK10ref_vectorI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(760) %10, ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !546, !nonnull !547, !align !548
  store ptr null, ptr %12, align 8, !tbaa !557
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !555
  %.not92 = icmp eq i32 %2, 0
  br i1 %.not92, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext i32 %2 to i64
  br label %.lr.ph

.preheader:                                       ; preds = %bb.h, %bb.b
  %.not93 = icmp eq i32 %4, 0
  br i1 %.not93, label %._crit_edge, label %.lr.ph91.preheader

.lr.ph91.preheader:                               ; preds = %.preheader
  %wide.trip.count101 = zext i32 %4 to i64
  br label %.lr.ph91

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %.sroa.010.0.copyload = load i32, ptr %i.i, align 4, !tbaa !524
  invoke void @_ZNK3smt7context12literal2exprEN3sat7literalER7obj_refI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(10728) %0, i32 %.sroa.010.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %.lr.ph
  %i.j = load ptr, ptr %12, align 8, !tbaa !557   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !559
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 4, !tbaa !559
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.e, %bb.d
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !545  ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !524  ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.n, i64 -8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !524
  %i.t = icmp eq i32 %i.q, %i.s
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  %.pre.i.i = load ptr, ptr %i.e, align 8, !tbaa !545 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !524
  br label %bb.h

bb.h:                                             ; preds = %.noexc, %bb.f
  %i.u = phi i32 [ %.pre2.i.i, %.noexc ], [ %i.q, %bb.f ] ; 2 uses
  %i.v = phi ptr [ %.pre.i.i, %.noexc ], [ %i.n, %bb.f ] ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -4
  %i.x = zext i32 %i.u to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.x
  store ptr %i.j, ptr %i.y, align 8, !tbaa !549
end_hunk_0
begin_hunk_1_@_ZN3smt7context9log_statsEv:bb.a
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !528
  %i.hp = getelementptr i8, ptr %i.ho, i64 -24
  %i.hq = load i64, ptr %i.hp, align 8
  %i.hr = getelementptr inbounds i8, ptr %i.hn, i64 %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !631
  %.not.i168 = icmp eq i64 %i.ht, 0
  br i1 %.not.i168, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNSolsEj.exit167
  %i.hu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hn, ptr noundef nonnull %i.e, i64 noundef 1)
          to label %bb.ab unwind label %bb.as

bb.aa:                                            ; preds = %_ZNSolsEj.exit167
  %i.hv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.hn, i8 noundef signext 32)
          to label %bb.ab unwind label %bb.as     ; 0 uses

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %.0.i169 = phi ptr [ %i.hu, %bb.z ], [ %i.hn, %bb.aa ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.hw = load ptr, ptr %.0.i169, align 8, !tbaa !528
  %i.hx = getelementptr i8, ptr %i.hw, i64 -24
  %i.hy = load i64, ptr %i.hx, align 8
  %i.hz = getelementptr inbounds i8, ptr %.0.i169, i64 %i.hy
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  store i64 7, ptr %i.ia, align 8, !tbaa !631
  %i.ib = load ptr, ptr %i.an, align 8, !tbaa !582 ; 2 uses
  %i.ic = icmp eq ptr %i.ib, null
  br i1 %i.ic, label %_ZNK6vectorIPN3smt6clauseELb0EjE4sizeEv.exit174, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.id = getelementptr inbounds i8, ptr %i.ib, i64 -4
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !524
  %i.if = zext i32 %i.ie to i64
  br label %_ZNK6vectorIPN3smt6clauseELb0EjE4sizeEv.exit174

_ZNK6vectorIPN3smt6clauseELb0EjE4sizeEv.exit174:  ; preds = %bb.ab, %bb.ac
  %.0.i173 = phi i64 [ %i.if, %bb.ac ], [ 0, %bb.ab ]
  %i.ig = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.0.i169, i64 noundef %.0.i173)
          to label %_ZNSolsEj.exit176 unwind label %bb.as ; 5 uses

_ZNSolsEj.exit176:                                ; preds = %_ZNK6vectorIPN3smt6clauseELb0EjE4sizeEv.exit174
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 47, ptr %i.d, align 1, !tbaa !543
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !528
  %i.ii = getelementptr i8, ptr %i.ih, i64 -24
  %i.ij = load i64, ptr %i.ii, align 8
  %i.ik = getelementptr inbounds i8, ptr %i.ig, i64 %i.ij
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %i.im = load i64, ptr %i.il, align 8, !tbaa !631
  %.not.i177 = icmp eq i64 %i.im, 0
  br i1 %.not.i177, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNSolsEj.exit176
  %i.in = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ig, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %bb.af unwind label %bb.as

bb.ae:                                            ; preds = %_ZNSolsEj.exit176
  %i.io = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ig, i8 noundef signext 47)
          to label %bb.af unwind label %bb.as     ; 0 uses

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %.0.i178 = phi ptr [ %i.in, %bb.ad ], [ %i.ig, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ip = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.0.i178, i64 noundef %.081.lcssa)
          to label %_ZNSolsEm.exit183 unwind label %bb.as ; 5 uses

_ZNSolsEm.exit183:                                ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 32, ptr %i.c, align 1, !tbaa !543
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !528
  %i.ir = getelementptr i8, ptr %i.iq, i64 -24
  %i.is = load i64, ptr %i.ir, align 8
  %i.it = getelementptr inbounds i8, ptr %i.ip, i64 %i.is
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !631
  %.not.i184 = icmp eq i64 %i.iv, 0
  br i1 %.not.i184, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZNSolsEm.exit183
  %i.iw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ip, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %bb.ai unwind label %bb.as

bb.ah:                                            ; preds = %_ZNSolsEm.exit183
  %i.ix = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ip, i8 noundef signext 32)
          to label %bb.ai unwind label %bb.as     ; 0 uses

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %.0.i185 = phi ptr [ %i.iw, %bb.ag ], [ %i.ip, %bb.ah ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.iy = load ptr, ptr %.0.i185, align 8, !tbaa !528
  %i.iz = getelementptr i8, ptr %i.iy, i64 -24
  %i.ja = load i64, ptr %i.iz, align 8
  %i.jb = getelementptr inbounds i8, ptr %.0.i185, i64 %i.ja
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  store i64 5, ptr %i.jc, align 8, !tbaa !631
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.je = load i32, ptr %i.jd, align 8, !tbaa !817
  %i.jf = zext i32 %i.je to i64
  %i.jg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.0.i185, i64 noundef %i.jf)
          to label %_ZNSolsEj.exit190 unwind label %bb.as ; 5 uses

_ZNSolsEj.exit190:                                ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 32, ptr %i.b, align 1, !tbaa !543
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !528
  %i.ji = getelementptr i8, ptr %i.jh, i64 -24
  %i.jj = load i64, ptr %i.ji, align 8
  %i.jk = getelementptr inbounds i8, ptr %i.jg, i64 %i.jj
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !631
  %.not.i191 = icmp eq i64 %i.jm, 0
  br i1 %.not.i191, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZNSolsEj.exit190
  %i.jn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jg, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %bb.al unwind label %bb.as

bb.ak:                                            ; preds = %_ZNSolsEj.exit190
  %i.jo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.jg, i8 noundef signext 32)
          to label %bb.al unwind label %bb.as     ; 0 uses

bb.al:                                            ; preds = %bb.aj, %bb.ak
  %.0.i192 = phi ptr [ %i.jn, %bb.aj ], [ %i.jg, %bb.ak ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.jp = load ptr, ptr %.0.i192, align 8, !tbaa !528
  %i.jq = getelementptr i8, ptr %i.jp, i64 -24
  %i.jr = load i64, ptr %i.jq, align 8
  %i.js = getelementptr inbounds i8, ptr %.0.i192, i64 %i.jr
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  store i64 4, ptr %i.jt, align 8, !tbaa !631
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !818
  %i.jw = zext i32 %i.jv to i64
  %i.jx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.0.i192, i64 noundef %i.jw)
          to label %_ZNSolsEj.exit197 unwind label %bb.as ; 5 uses

_ZNSolsEj.exit197:                                ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 32, ptr %i.a, align 1, !tbaa !543
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !528
  %i.jz = getelementptr i8, ptr %i.jy, i64 -24
  %i.ka = load i64, ptr %i.jz, align 8
  %i.kb = getelementptr inbounds i8, ptr %i.jx, i64 %i.ka
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !631
  %.not.i198 = icmp eq i64 %i.kd, 0
  br i1 %.not.i198, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZNSolsEj.exit197
  %i.ke = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jx, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.ao unwind label %bb.as

bb.an:                                            ; preds = %_ZNSolsEj.exit197
  %i.kf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.jx, i8 noundef signext 32)
          to label %bb.ao unwind label %bb.as     ; 0 uses

bb.ao:                                            ; preds = %bb.am, %bb.an
  %.0.i199 = phi ptr [ %i.ke, %bb.am ], [ %i.jx, %bb.an ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.kg = load ptr, ptr %.0.i199, align 8, !tbaa !528
  %i.kh = getelementptr i8, ptr %i.kg, i64 -24
  %i.ki = load i64, ptr %i.kh, align 8
  %i.kj = getelementptr inbounds i8, ptr %.0.i199, i64 %i.ki
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  store i64 7, ptr %i.kk, align 8, !tbaa !631
  %i.kl = invoke noundef i64 @_ZN6memory19get_allocation_sizeEv()
          to label %.noexc203 unwind label %bb.as

.noexc203:                                        ; preds = %bb.ao
  %i.km = uitofp i64 %i.kl to double
  %i.kn = fmul nnan double %i.km, f0x3EB0000000000000
  %i.ko = load ptr, ptr %.0.i199, align 8, !tbaa !528
  %i.kp = getelementptr i8, ptr %i.ko, i64 -24    ; 2 uses
  %i.kq = load i64, ptr %i.kp, align 8
  %i.kr = getelementptr inbounds i8, ptr %.0.i199, i64 %i.kq
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 24 ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 8, !tbaa !632
  %i.ku = and i32 %i.kt, -261
  %i.kv = or disjoint i32 %i.ku, 4
  store i32 %i.kv, ptr %i.ks, align 8, !tbaa !633
  %i.kw = load i64, ptr %i.kp, align 8
  %i.kx = getelementptr inbounds i8, ptr %.0.i199, i64 %i.kw
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  store i64 2, ptr %i.ky, align 8, !tbaa !819
  %i.kz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.0.i199, double noundef %i.kn)
          to label %_ZlsRSoRK8mem_stat.exit unwind label %bb.as

_ZlsRSoRK8mem_stat.exit:                          ; preds = %.noexc203
  %i.la = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kz, ptr noundef nonnull @.str.38, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit206 unwind label %bb.as ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit206: ; preds = %_ZlsRSoRK8mem_stat.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !820)
  %i.lb = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !821)
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !647, !noalias !822 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.ld, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit206
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %11 = load ptr, ptr %10, align 8, !tbaa !648, !noalias !822 ; 2 uses
  %12 = icmp ugt ptr %i.ld, %11
  %.08.i9.i.i = select i1 %12, ptr %i.ld, ptr %11 ; 2 uses
  %.not.i.i207 = icmp eq ptr %.08.i9.i.i, null
  br i1 %.not.i.i207, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !649, !noalias !822
  %i.lh = ptrtoint ptr %.08.i9.i.i to i64
  %i.li = ptrtoint ptr %i.lg to i64
  %i.lj = sub i64 %i.lh, %i.li                    ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 %i.lj, ptr %i.lk, align 8, !tbaa !542, !noalias !822
  %i.ll = load ptr, ptr %i.le, align 8, !tbaa !544, !noalias !822
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.lj
  store i8 0, ptr %i.lm, align 1, !tbaa !543, !noalias !822
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit206
  %i.ln = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.lo, ptr %2, align 8, !tbaa !540, !alias.scope !822
  %i.lp = load ptr, ptr %i.ln, align 8, !tbaa !544, !noalias !822 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 7 uses
  %i.lr = icmp eq ptr %i.lp, %i.lq
  br i1 %i.lr, label %bb.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.ap:                                            ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !542, !noalias !822 ; 3 uses
  %i.lu = icmp ult i64 %i.lt, 16
  call void @llvm.assume(i1 %i.lu)
  %i.lv = add nuw nsw i64 %i.lt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.lo, ptr noundef nonnull align 8 dereferenceable(1) %i.lq, i64 %i.lv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.lp, ptr %2, align 8, !tbaa !544, !alias.scope !822
  %i.lw = load i64, ptr %i.lq, align 8, !tbaa !543, !noalias !822
  store i64 %i.lw, ptr %i.lo, align 8, !tbaa !543, !alias.scope !822
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !542, !noalias !822
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.ap
  %i.lx = phi i64 [ %i.lt, %bb.ap ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.lz = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  store i64 %i.lx, ptr %i.lz, align 8, !tbaa !542, !alias.scope !822
  store ptr %i.lq, ptr %i.ln, align 8, !tbaa !544, !noalias !822
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ly, i8 0, i64 9, i1 false), !noalias !822
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.lb, ptr noundef nonnull %i.lq, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.aq

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ma = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mb = load ptr, ptr %2, align 8, !tbaa !544, !alias.scope !822 ; 2 uses
  %i.mc = icmp eq ptr %i.mb, %i.lo
  br i1 %i.mc, label %.body, label %.body.sink.split

_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr null, ptr %3, align 8, !tbaa !665
  %i.md = load i64, ptr %i.lz, align 8, !tbaa !542 ; 2 uses
  %.not415 = icmp eq i64 %i.md, 0
  br i1 %.not415, label %._crit_edge383, label %.preheader354.preheader

.preheader354.preheader:                          ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %.pre447 = load ptr, ptr %2, align 8, !tbaa !544 ; 3 uses
  br label %.preheader354

.preheader354:                                    ; preds = %.preheader354.preheader, %.critedge2
  %i.me = phi i64 [ %i.ns, %.critedge2 ], [ %i.md, %.preheader354.preheader ] ; 8 uses
  %.pre448 = phi ptr [ %.pre449, %.critedge2 ], [ %.pre447, %.preheader354.preheader ] ; 4 uses
  %i.mf = phi ptr [ %i.nt, %.critedge2 ], [ null, %.preheader354.preheader ] ; 7 uses
  %i.mg = phi ptr [ %i.nu, %.critedge2 ], [ %.pre447, %.preheader354.preheader ] ; 5 uses
  %i.mh = phi ptr [ %i.nv, %.critedge2 ], [ %.pre447, %.preheader354.preheader ] ; 3 uses
  %storemerge382 = phi i64 [ %i.nw, %.critedge2 ], [ 0, %.preheader354.preheader ] ; 2 uses
  %i.mi = add nuw i64 %storemerge382, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.me, i64 %i.mi)
  br label %bb.at

._crit_edge383:                                   ; preds = %.critedge2, %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.mj = phi ptr [ null, %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit ], [ %i.nt, %.critedge2 ] ; 5 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 9488 ; 4 uses
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !665 ; 6 uses
  %i.mm = icmp eq ptr %i.ml, null                 ; 2 uses
  br i1 %i.mm, label %_ZNK6vectorImLb0EjE4sizeEv.exit, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge383
  %i.mn = getelementptr inbounds i8, ptr %i.ml, i64 -4
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !524
  %i.mp = freeze i32 %i.mo
  br label %_ZNK6vectorImLb0EjE4sizeEv.exit

_ZNK6vectorImLb0EjE4sizeEv.exit:                  ; preds = %._crit_edge383, %bb.ar
  %.0.i208 = phi i32 [ %i.mp, %bb.ar ], [ 0, %._crit_edge383 ] ; 2 uses
  %i.mq = icmp eq ptr %i.mj, null
  br i1 %i.mq, label %_ZNK6vectorImLb0EjE4sizeEv.exit210.thread, label %_ZNK6vectorImLb0EjE4sizeEv.exit213.lr.ph

_ZNK6vectorImLb0EjE4sizeEv.exit210.thread:        ; preds = %_ZNK6vectorImLb0EjE4sizeEv.exit
  %i.mr = icmp eq i32 %.0.i208, 0
  br label %.critedge337

_ZNK6vectorImLb0EjE4sizeEv.exit213.lr.ph:         ; preds = %_ZNK6vectorImLb0EjE4sizeEv.exit
  %i.ms = getelementptr inbounds i8, ptr %i.mj, i64 -4
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !524
  %.fr545 = freeze i32 %i.mt                      ; 5 uses
  %i.mu = icmp eq i32 %.0.i208, %.fr545
  br i1 %i.mu, label %_ZNK6vectorImLb0EjE4sizeEv.exit213.lr.ph.split.split, label %.critedge337

_ZNK6vectorImLb0EjE4sizeEv.exit213.lr.ph.split.split: ; preds = %_ZNK6vectorImLb0EjE4sizeEv.exit213.lr.ph
  %.not416 = icmp eq i32 %.fr545, 0
  br i1 %.not416, label %.critedge337, label %_ZNK6vectorImLb0EjE4sizeEv.exit213.preheader

_ZNK6vectorImLb0EjE4sizeEv.exit213.preheader:     ; preds = %_ZNK6vectorImLb0EjE4sizeEv.exit213.lr.ph.split.split
  %wide.trip.count = zext i32 %.fr545 to i64      ; 2 uses
  %xtraiter612 = and i64 %wide.trip.count, 1
  %i.mv = icmp eq i32 %.fr545, 1
  br i1 %i.mv, label %_ZNK6vectorImLb0EjE4sizeEv.exit213.epil.preheader, label %_ZNK6vectorImLb0EjE4sizeEv.exit213.preheader.new

_ZNK6vectorImLb0EjE4sizeEv.exit213.preheader.new: ; preds = %_ZNK6vectorImLb0EjE4sizeEv.exit213.preheader
  %unroll_iter617 = and i64 %wide.trip.count, 4294967294
  br label %_ZNK6vectorImLb0EjE4sizeEv.exit213

bb.as:                                            ; preds = %._crit_edge376, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %_ZNK6vectorIPN3smt6clauseELb0EjE4sizeEv.exit, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %"_ZZN3smt7context9log_statsEvENK3$_0clEv.exit", %bb.z, %bb.aa, %_ZNK6vectorIPN3smt6clauseELb0EjE4sizeEv.exit174, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %_ZlsRSoRK8mem_stat.exit, %.noexc203, %bb.ao
  %i.mw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.at:                                            ; preds = %.preheader354, %bb.au
  %.0335378 = phi i64 [ %storemerge382, %.preheader354 ], [ %i.mz, %bb.au ] ; 5 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mh, i64 %.0335378
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !543
  %.not122 = icmp eq i8 %i.my, 32
  br i1 %.not122, label %.critedge, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.mz = add nuw i64 %.0335378, 1                ; 2 uses
  %i.na = icmp ult i64 %i.mz, %i.me
  br i1 %i.na, label %bb.at, label %.critedge2, !llvm.loop !789

.critedge:                                        ; preds = %bb.at
  %i.nb = icmp ult i64 %.0335378, %i.me
  br i1 %i.nb, label %.lr.ph380, label %.critedge2

.lr.ph380:                                        ; preds = %.critedge, %bb.av
  %.1336379 = phi i64 [ %i.nf, %bb.av ], [ %.0335378, %.critedge ] ; 4 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mg, i64 %.1336379
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !543
  %i.ne = icmp eq i8 %i.nd, 32
  br i1 %i.ne, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.lr.ph380
  %i.nf = add i64 %.1336379, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.nf, %i.me
  br i1 %exitcond.not, label %.critedge2, label %.lr.ph380, !llvm.loop !790

bb.aw:                                            ; preds = %.lr.ph380
  %i.ng = icmp eq ptr %i.mf, null
  br i1 %i.ng, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.nh = getelementptr inbounds i8, ptr %i.mf, i64 -4
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !524 ; 2 uses
  %i.nj = getelementptr inbounds i8, ptr %i.mf, i64 -8
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !524
  %i.nl = icmp eq i32 %i.ni, %i.nk
  br i1 %i.nl, label %bb.ay, label %_ZN6vectorImLb0EjE9push_backERKm.exit

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  invoke void @_ZN6vectorImLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc211 unwind label %.loopexit.split-lp356.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc211:                                        ; preds = %bb.ay
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !665 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !524
  %.pre.pre = load ptr, ptr %2, align 8, !tbaa !544
  br label %_ZN6vectorImLb0EjE9push_backERKm.exit

_ZN6vectorImLb0EjE9push_backERKm.exit:            ; preds = %bb.ax, %.noexc211
  %.pre = phi ptr [ %.pre.pre, %.noexc211 ], [ %.pre448, %bb.ax ] ; 3 uses
  %i.nm = phi ptr [ %.pre.i, %.noexc211 ], [ %i.mf, %bb.ax ] ; 3 uses
  %i.nn = phi i32 [ %.pre2.i, %.noexc211 ], [ %i.ni, %bb.ax ] ; 2 uses
  %i.no = getelementptr inbounds i8, ptr %i.nm, i64 -4
  %i.np = zext i32 %i.nn to i64
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.nm, i64 %i.np
  store i64 %.1336379, ptr %i.nq, align 8, !tbaa !823
  %i.nr = add i32 %i.nn, 1
  store i32 %i.nr, ptr %i.no, align 4, !tbaa !524
  %.pre451 = load i64, ptr %i.lz, align 8, !tbaa !542
  br label %.critedge2

.critedge2:                                       ; preds = %bb.au, %bb.av, %.critedge, %_ZN6vectorImLb0EjE9push_backERKm.exit
  %i.ns = phi i64 [ %.pre451, %_ZN6vectorImLb0EjE9push_backERKm.exit ], [ %i.me, %.critedge ], [ %i.me, %bb.av ], [ %i.me, %bb.au ] ; 2 uses
  %.pre449 = phi ptr [ %.pre, %_ZN6vectorImLb0EjE9push_backERKm.exit ], [ %.pre448, %.critedge ], [ %.pre448, %bb.av ], [ %.pre448, %bb.au ]
  %i.nt = phi ptr [ %i.nm, %_ZN6vectorImLb0EjE9push_backERKm.exit ], [ %i.mf, %.critedge ], [ %i.mf, %bb.av ], [ %i.mf, %bb.au ] ; 2 uses
  %i.nu = phi ptr [ %.pre, %_ZN6vectorImLb0EjE9push_backERKm.exit ], [ %i.mg, %.critedge ], [ %i.mg, %bb.av ], [ %i.mg, %bb.au ]
  %i.nv = phi ptr [ %.pre, %_ZN6vectorImLb0EjE9push_backERKm.exit ], [ %i.mh, %.critedge ], [ %i.mg, %bb.av ], [ %i.mh, %bb.au ]
  %.1336368 = phi i64 [ %.1336379, %_ZN6vectorImLb0EjE9push_backERKm.exit ], [ %.0335378, %.critedge ], [ %i.me, %bb.av ], [ %umax, %bb.au ]
  %i.nw = add i64 %.1336368, 1                    ; 2 uses
  %i.nx = icmp ult i64 %i.nw, %i.ns
  br i1 %i.nx, label %.preheader354, label %._crit_edge383, !llvm.loop !791

.critedge337.thread.unr-lcssa:                    ; preds = %_ZNK6vectorImLb0EjE4sizeEv.exit213
  %lcmp.mod614.not = icmp eq i64 %xtraiter612, 0
  br i1 %lcmp.mod614.not, label %.critedge337.thread, label %_ZNK6vectorImLb0EjE4sizeEv.exit213.epil.preheader

_ZNK6vectorImLb0EjE4sizeEv.exit213.epil.preheader: ; preds = %.critedge337.thread.unr-lcssa, %_ZNK6vectorImLb0EjE4sizeEv.exit213.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %_ZNK6vectorImLb0EjE4sizeEv.exit213.preheader ], [ %indvars.iv.next.1, %.critedge337.thread.unr-lcssa ] ; 2 uses
  %.077384392.epil.init = phi i64 [ 0, %_ZNK6vectorImLb0EjE4sizeEv.exit213.preheader ], [ %.279.1, %.critedge337.thread.unr-lcssa ]
  %lcmp.mod616 = trunc i32 %.fr545 to i1
  call void @llvm.assume(i1 %lcmp.mod616)
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %indvars.iv.epil.init
  %i.nz = load i64, ptr %i.ny, align 8, !tbaa !823 ; 2 uses
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.mj, i64 %indvars.iv.epil.init
  %i.ob = load i64, ptr %i.oa, align 8, !tbaa !823 ; 2 uses
end_hunk_1
