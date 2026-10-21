Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/util?download=true
inline.NumInlined: 2204
inline.NumDeleted: 975
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN5vcpkg4TestL13check_json_eqERKNS_4Json5ArrayES4_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  call void @__clang_call_terminate(ptr %i.ci) #23
  unreachable

_ZNK5vcpkg4Json5ArrayixEm.exit:                   ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.cj = load ptr, ptr %1, align 8, !tbaa !295
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store i32 190, ptr %4, align 8, !tbaa !147
  store <2 x ptr> <ptr @.str.70, ptr @__func__._ZNK5vcpkg4Json5ArrayixEm>, ptr %i.bp, align 8, !tbaa !23
  %i.ck = load ptr, ptr %i.v, align 8, !tbaa !294
  %i.cl = load ptr, ptr %0, align 8, !tbaa !295
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = ashr exact i64 %i.co, 3
  %i.cq = icmp ult i64 %storemerge31, %i.cp
  invoke void @_ZN5vcpkg6Checks10check_exitERKNS_8LineInfoEb(ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext %i.cq)
          to label %_ZNK5vcpkg4Json5ArrayixEm.exit22 unwind label %bb.u

bb.u:                                             ; preds = %_ZNK5vcpkg4Json5ArrayixEm.exit
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #23
  unreachable

_ZNK5vcpkg4Json5ArrayixEm.exit22:                 ; preds = %_ZNK5vcpkg4Json5ArrayixEm.exit
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %storemerge31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.cu = load ptr, ptr %0, align 8, !tbaa !295
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %storemerge31
  call fastcc void @_ZN5vcpkg4TestL13check_json_eqERKNS_4Json5ValueES4_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr noundef nonnull align 8 dereferenceable(8) %i.cv, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.bh, i8 noundef signext 0)
  %i.cw = add nuw i64 %storemerge31, 1            ; 2 uses
  %i.cx = load ptr, ptr %i.v, align 8, !tbaa !294
  %i.cy = load ptr, ptr %0, align 8, !tbaa !295
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = ashr exact i64 %i.db, 3
  %i.dd = icmp ult i64 %i.cw, %i.dc
  br i1 %i.dd, label %bb.m, label %.critedge, !llvm.loop !292

bb.v:                                             ; preds = %bb.n
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  call void @__clang_call_terminate(ptr %i.df) #23
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5vcpkg4Test21check_json_eq_orderedERKNS_4Json5ValueES4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !26
  store i8 36, ptr %i.a, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 0, ptr %i.c, align 1, !tbaa !30
  invoke fastcc void @_ZN5vcpkg4TestL13check_json_eqERKNS_4Json5ValueES4_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext true)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.d = load ptr, ptr %2, align 8, !tbaa !31     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !tbaa !30
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %2, align 8, !tbaa !31     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.a
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.b
  %i.k = load i64, ptr %i.a, align 8, !tbaa !30
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %i.h
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5vcpkg4Test21check_json_eq_orderedERKNS_4Json6ObjectES4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !26
  store i8 36, ptr %i.a, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 0, ptr %i.c, align 1, !tbaa !30
  invoke fastcc void @_ZN5vcpkg4TestL13check_json_eqERKNS_4Json6ObjectES4_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext true)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.d = load ptr, ptr %2, align 8, !tbaa !31     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !tbaa !30
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %2, align 8, !tbaa !31     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.a
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.b
  %i.k = load i64, ptr %i.a, align 8, !tbaa !30
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %i.h
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5vcpkg4Test21check_json_eq_orderedERKNS_4Json5ArrayES4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !26
  store i8 36, ptr %i.a, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 0, ptr %i.c, align 1, !tbaa !30
  invoke fastcc void @_ZN5vcpkg4TestL13check_json_eqERKNS_4Json5ArrayES4_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext true)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.d = load ptr, ptr %2, align 8, !tbaa !31     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !tbaa !30
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %2, align 8, !tbaa !31     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.a
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.b
  %i.k = load i64, ptr %i.a, align 8, !tbaa !30
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %i.h
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5vcpkg4Test10diff_linesB5cxx11ENS_10StringViewES1_(ptr dead_on_unwind noalias writable sret(%"struct.vcpkg::Optional.135") align 8 %0, ptr %1, i64 %2, ptr %3, i64 %4) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector.112", align 8   ; 14 uses
  %6 = alloca %"class.std::vector.112", align 8   ; 16 uses
  %7 = alloca %"class.std::vector.139", align 8   ; 15 uses
  %8 = alloca %"class.std::vector.112", align 8   ; 21 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @_ZN5vcpkg7Strings16split_keep_emptyB5cxx11ENS_10StringViewEc(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.112") align 8 %5, ptr %1, i64 %2, i8 noundef signext 10)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke void @_ZN5vcpkg7Strings16split_keep_emptyB5cxx11ENS_10StringViewEc(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.112") align 8 %6, ptr %3, i64 %4, i8 noundef signext 10)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  invoke void @_ZNSt6vectorIS_ImSaImEESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr null)
          to label %.noexc unwind label %.loopexit.split-lp286.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !332 ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %.pre.i, i64 -24 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !131
  %i.e = load ptr, ptr %6, align 8, !tbaa !130
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 5
  %i.j = add nsw i64 %i.i, 1                      ; 4 uses
  %i.k = getelementptr inbounds i8, ptr %.pre.i, i64 -16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !157  ; 4 uses
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !158  ; 5 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3                   ; 3 uses
  %i.r = icmp ugt i64 %i.j, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.s = sub nuw nsw i64 %i.j, %i.q
  invoke void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.s)
          to label %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge unwind label %.loopexit.split-lp286.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge:    ; preds = %bb.c
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !152
  %.pre367 = load ptr, ptr %i.k, align 8, !tbaa !152
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.d:                                             ; preds = %.noexc
  %i.t = icmp ult i64 %i.j, %i.q
  br i1 %i.t, label %bb.e, label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.j ; 3 uses
  %.not.i.i = icmp eq ptr %i.l, %i.u
  br i1 %.not.i.i, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.u, ptr %i.k, align 8, !tbaa !157
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i, %bb.e, %bb.d
  %i.v = phi ptr [ %.pre367, %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge ], [ %i.u, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i ], [ %i.l, %bb.e ], [ %i.l, %bb.d ] ; 3 uses
  %i.w = phi ptr [ %.pre, %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge ], [ %i.m, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i ], [ %i.m, %bb.e ], [ %i.m, %bb.d ] ; 5 uses
  %.not5.i = icmp eq ptr %i.w, %i.v
  br i1 %.not5.i, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.x = ptrtoaddr ptr %i.v to i64
  %i.y = ptrtoaddr ptr %i.w to i64
  %i.z = add i64 %i.x, -8
  %i.aa = sub i64 %i.z, %i.y                      ; 2 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader583, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 4 uses
  %i.ad = shl i64 %n.vec, 3
  %i.ae = getelementptr i8, ptr %i.w, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.af = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.af ; 2 uses
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !32
  store <2 x i64> %step.add, ptr %i.ag, align 8, !tbaa !32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !300

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit, label %.lr.ph.i.preheader583

.lr.ph.i.preheader583:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.06.i.ph = phi ptr [ %i.w, %.lr.ph.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader583, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader583 ] ; 2 uses
  %.sroa.02.06.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %.sroa.02.06.i.ph, %.lr.ph.i.preheader583 ] ; 2 uses
  store i64 %indvars.iv.i, ptr %.sroa.02.06.i, align 8, !tbaa !32
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 8 ; 2 uses
  %.not.i100 = icmp eq ptr %i.ai, %i.v
  br i1 %.not.i100, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !301

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit: ; preds = %.lr.ph.i, %middle.block, %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !131 ; 2 uses
  %i.al = load ptr, ptr %5, align 8, !tbaa !130   ; 2 uses
  %.not362 = icmp eq ptr %i.ak, %i.al
  br i1 %.not362, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit.._crit_edge_crit_edge, label %.lr.ph343

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit.._crit_edge_crit_edge: ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 5
  %.pre371 = load ptr, ptr %i.c, align 8, !tbaa !131 ; 2 uses
  %.pre372 = load ptr, ptr %6, align 8, !tbaa !130 ; 2 uses
  %.pre373 = load ptr, ptr %7, align 8, !tbaa !160
  %.pre387 = ptrtoint ptr %.pre371 to i64
  %.pre388 = ptrtoint ptr %.pre372 to i64
  %.pre390 = sub i64 %.pre387, %.pre388
  %.pre392 = ashr exact i64 %.pre390, 5
  br label %._crit_edge

.lr.ph343:                                        ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit
  %15 = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %.lr.ph343.a

.loopexit284:                                     ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread254, %_ZNSt6vectorImSaImEE6resizeEm.exit108
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !131
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %.pre370 to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 5                 ; 2 uses
  %i.av = icmp ult i64 %i.ck, %i.au
  br i1 %i.av, label %.lr.ph343.a, label %._crit_edge, !llvm.loop !302

._crit_edge:                                      ; preds = %.loopexit284, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit.._crit_edge_crit_edge
  %.pre-phi393 = phi i64 [ %.pre392, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit.._crit_edge_crit_edge ], [ %.pre-phi401, %.loopexit284 ] ; 3 uses
  %i.aw = phi ptr [ %.pre373, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit.._crit_edge_crit_edge ], [ %i.cf, %.loopexit284 ] ; 2 uses
  %i.ax = phi ptr [ %.pre372, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit.._crit_edge_crit_edge ], [ %i.cd, %.loopexit284 ]
  %i.ay = phi ptr [ %.pre371, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit.._crit_edge_crit_edge ], [ %i.ce, %.loopexit284 ]
  %.lcssa337 = phi i64 [ %i.ap, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit.._crit_edge_crit_edge ], [ %i.au, %.loopexit284 ] ; 4 uses
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %.lcssa337
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !158
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.pre-phi393
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !32
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %bb.o, label %bb.p

bb.f:                                             ; preds = %bb.a
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

.lr.ph343.a:                                      ; preds = %.lr.ph343, %.loopexit284
  %.068342 = phi i64 [ 0, %.lr.ph343 ], [ %i.ck, %.loopexit284 ] ; 3 uses
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !161 ; 3 uses
  %i.bg = load ptr, ptr %15, align 8, !tbaa !162
  %.not.i101 = icmp eq ptr %i.bf, %i.bg
  br i1 %.not.i101, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph343.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i8 0, i64 24, i1 false)
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !161
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 2 uses
  store ptr %i.bi, ptr %i.a, align 8, !tbaa !161
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph343.a
  invoke void @_ZNSt6vectorIS_ImSaImEESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.bf)
          to label %.noexc103 unwind label %.loopexit.split-lp286.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc103:                                        ; preds = %bb.h
  %.pre.i102 = load ptr, ptr %i.a, align 8, !tbaa !332
  br label %bb.i

bb.i:                                             ; preds = %.noexc103, %bb.g
  %i.bj = phi ptr [ %.pre.i102, %.noexc103 ], [ %i.bi, %bb.g ] ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -24 ; 2 uses
  %i.bl = load ptr, ptr %i.c, align 8, !tbaa !131 ; 4 uses
  %i.bm = load ptr, ptr %6, align 8, !tbaa !130   ; 4 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = ashr exact i64 %i.bp, 5                 ; 4 uses
  %i.br = add nsw i64 %i.bq, 1                    ; 4 uses
  %i.bs = getelementptr inbounds i8, ptr %i.bj, i64 -16 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !157 ; 2 uses
  %i.bu = load ptr, ptr %i.bk, align 8, !tbaa !158 ; 2 uses
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = ashr exact i64 %i.bx, 3                 ; 3 uses
  %i.bz = icmp ugt i64 %i.br, %i.by
  br i1 %i.bz, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ca = sub nuw nsw i64 %i.br, %i.by
  invoke void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 noundef %i.ca)
          to label %._ZNSt6vectorImSaImEE6resizeEm.exit108_crit_edge unwind label %.loopexit.split-lp286.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZNSt6vectorImSaImEE6resizeEm.exit108_crit_edge: ; preds = %bb.j
  %.pre368 = load ptr, ptr %i.c, align 8, !tbaa !131 ; 2 uses
  %.pre369 = load ptr, ptr %6, align 8, !tbaa !130 ; 2 uses
  %.pre394 = ptrtoint ptr %.pre368 to i64
  %.pre396 = ptrtoint ptr %.pre369 to i64
  %.pre398 = sub i64 %.pre394, %.pre396
  %.pre400 = ashr exact i64 %.pre398, 5
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit108

bb.k:                                             ; preds = %bb.i
  %i.cb = icmp ult i64 %i.br, %i.by
  br i1 %i.cb, label %bb.l, label %_ZNSt6vectorImSaImEE6resizeEm.exit108

bb.l:                                             ; preds = %bb.k
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.br ; 2 uses
  %.not.i.i105 = icmp eq ptr %i.bt, %i.cc
  br i1 %.not.i.i105, label %_ZNSt6vectorImSaImEE6resizeEm.exit108, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i106

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i106:     ; preds = %bb.l
  store ptr %i.cc, ptr %i.bs, align 8, !tbaa !157
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit108

_ZNSt6vectorImSaImEE6resizeEm.exit108:            ; preds = %._ZNSt6vectorImSaImEE6resizeEm.exit108_crit_edge, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i106, %bb.l, %bb.k
  %.pre-phi401 = phi i64 [ %.pre400, %._ZNSt6vectorImSaImEE6resizeEm.exit108_crit_edge ], [ %i.bq, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i106 ], [ %i.bq, %bb.l ], [ %i.bq, %bb.k ] ; 2 uses
  %i.cd = phi ptr [ %.pre369, %._ZNSt6vectorImSaImEE6resizeEm.exit108_crit_edge ], [ %i.bm, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i106 ], [ %i.bm, %bb.l ], [ %i.bm, %bb.k ] ; 3 uses
  %i.ce = phi ptr [ %.pre368, %._ZNSt6vectorImSaImEE6resizeEm.exit108_crit_edge ], [ %i.bl, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i106 ], [ %i.bl, %bb.l ], [ %i.bl, %bb.k ] ; 2 uses
  %i.cf = load ptr, ptr %7, align 8, !tbaa !160   ; 3 uses
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %.068342
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !158 ; 3 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !32
  %i.cj = add i64 %i.ci, 1                        ; 2 uses
  %i.ck = add nuw i64 %.068342, 1                 ; 3 uses
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !158 ; 2 uses
  store i64 %i.cj, ptr %i.cm, align 8, !tbaa !32
  %.not363 = icmp eq ptr %i.ce, %i.cd
  %.pre370 = load ptr, ptr %5, align 8, !tbaa !130 ; 2 uses
  br i1 %.not363, label %.loopexit284, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit108
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %.pre370, i64 %.068342 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %umax = call i64 @llvm.umax.i64(i64 %.pre-phi401, i64 1)
  br label %bb.m

.loopexit.split-lp286.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %bb.h, %bb.c, %bb.b
  %lpad.loopexit.split-lp577 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp286

bb.m:                                             ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread254
  %i.cp = phi i64 [ %i.cj, %.lr.ph ], [ %.166, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread254 ]
  %.067341 = phi i64 [ 0, %.lr.ph ], [ %i.cr, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread254 ] ; 3 uses
  %i.cq = add i64 %i.cp, 1
  %i.cr = add nuw i64 %.067341, 1                 ; 4 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cr
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !32
  %i.cu = add i64 %i.ct, 1
  %spec.select = call i64 @llvm.umin.i64(i64 %i.cu, i64 %i.cq) ; 3 uses
  %i.cv = getelementptr inbounds nuw [32 x i8], ptr %i.cd, i64 %.067341 ; 2 uses
  %i.cw = load i64, ptr %i.co, align 8, !tbaa !29 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !29
  %i.cz = icmp eq i64 %i.cw, %i.cy
  br i1 %i.cz, label %bb.n, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread254

bb.n:                                             ; preds = %bb.m
  %i.da = icmp eq i64 %i.cw, 0
  br i1 %i.da, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.n
  %i.db = load ptr, ptr %i.cv, align 8, !tbaa !31
  %i.dc = load ptr, ptr %i.cn, align 8, !tbaa !31
  %bcmp.i = call i32 @bcmp(ptr %i.dc, ptr %i.db, i64 %i.cw)
  %i.dd = icmp eq i32 %bcmp.i, 0
  br i1 %i.dd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread254

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.n, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.067341
  %i.df = load i64, ptr %i.de, align 8, !tbaa !32
  %spec.select256 = call i64 @llvm.umin.i64(i64 %i.df, i64 %spec.select)
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread254

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread254: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %bb.m, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %.166 = phi i64 [ %spec.select, %bb.m ], [ %spec.select256, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ], [ %spec.select, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cr
  store i64 %.166, ptr %i.dg, align 8, !tbaa !32
  %exitcond.not = icmp eq i64 %i.cr, %umax
  br i1 %exitcond.not, label %.loopexit284, label %bb.m, !llvm.loop !303

bb.o:                                             ; preds = %._crit_edge
  store i8 0, ptr %0, align 8, !tbaa !143
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.dh, align 8, !tbaa !30
  br label %bb.bd

bb.p:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.di = icmp ne i64 %.lcssa337, 0
  %i.dj = icmp ne ptr %i.ay, %i.ax
  %i.dk = and i1 %i.di, %i.dj
  br i1 %i.dk, label %.lr.ph347, label %.preheader263

.lr.ph347:                                        ; preds = %bb.p
  %i.dl = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 11 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  %i.do = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 11 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 6 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 11 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  br label %bb.q

.preheader263:                                    ; preds = %bb.ak, %bb.p
  %.062.lcssa = phi i64 [ %.lcssa337, %bb.p ], [ %.163, %bb.ak ] ; 2 uses
  %.0.lcssa = phi i64 [ %.pre-phi393, %bb.p ], [ %.1, %bb.ak ] ; 2 uses
  %.not350 = icmp eq i64 %.062.lcssa, 0
  br i1 %.not350, label %.preheader, label %.lr.ph352

.lr.ph352:                                        ; preds = %.preheader263
  %i.dt = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 11 uses
  %i.du = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %bb.al

bb.q:                                             ; preds = %.lr.ph347, %bb.ak
  %.0345 = phi i64 [ %.pre-phi393, %.lr.ph347 ], [ %.1, %bb.ak ] ; 4 uses
  %.062344 = phi i64 [ %.lcssa337, %.lr.ph347 ], [ %.163, %bb.ak ] ; 3 uses
  %i.dx = load ptr, ptr %7, align 8, !tbaa !160   ; 2 uses
  %i.dy = getelementptr inbounds nuw [24 x i8], ptr %i.dx, i64 %.062344
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !158
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %.0345
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !32 ; 2 uses
  %i.ec = add i64 %.062344, -1                    ; 5 uses
  %i.ed = getelementptr inbounds nuw [24 x i8], ptr %i.dx, i64 %i.ec
  %i.ee = add i64 %.0345, -1                      ; 5 uses
  %i.ef = load ptr, ptr %i.ed, align 8, !tbaa !158 ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.ee
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !32
  %i.ei = icmp eq i64 %i.eb, %i.eh
  br i1 %i.ei, label %bb.r, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit110.thread255

bb.r:                                             ; preds = %bb.q
  %i.ej = load ptr, ptr %5, align 8, !tbaa !130
  %i.ek = getelementptr inbounds nuw [32 x i8], ptr %i.ej, i64 %i.ec ; 3 uses
  %i.el = load ptr, ptr %6, align 8, !tbaa !130
  %i.em = getelementptr inbounds nuw [32 x i8], ptr %i.el, i64 %i.ee ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !29 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !29
  %i.er = icmp eq i64 %i.eo, %i.eq
  br i1 %i.er, label %bb.s, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit110.thread255

bb.s:                                             ; preds = %bb.r
  %i.es = icmp eq i64 %i.eo, 0
  br i1 %i.es, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit110.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit110

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit110: ; preds = %bb.s
  %i.et = load ptr, ptr %i.em, align 8, !tbaa !31
  %i.eu = load ptr, ptr %i.ek, align 8, !tbaa !31
  %bcmp.i109 = call i32 @bcmp(ptr %i.eu, ptr %i.et, i64 %i.eo)
  %i.ev = icmp eq i32 %bcmp.i109, 0
  br i1 %i.ev, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit110.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit110.thread255

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit110.thread: ; preds = %bb.s, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit110
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !335)
  %i.ew = load ptr, ptr %i.ek, align 8, !tbaa !31, !noalias !335
  %i.ex = load i64, ptr %i.en, align 8, !tbaa !29, !noalias !335 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN5vcpkg4Test10diff_linesB5cxx11ENS_10StringViewES1_:bb.a
  br i1 %i.lw, label %.body195, label %.body195.sink.split

.body195.sink.split:                              ; preds = %bb.aw, %.loopexit.split-lp259.loopexit.split-lp.loopexit.split-lp
  %.sink558 = phi ptr [ %i.ld, %.loopexit.split-lp259.loopexit.split-lp.loopexit.split-lp ], [ %i.lv, %bb.aw ]
  %.pn85.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp562, %.loopexit.split-lp259.loopexit.split-lp.loopexit.split-lp ], [ %i.lu, %bb.aw ]
  %i.lx = load i64, ptr %i.jb, align 8, !tbaa !30
  %i.ly = add i64 %i.lx, 1
  call void @_ZdlPvm(ptr noundef %.sink558, i64 noundef %i.ly) #22
  br label %.body195

.body195:                                         ; preds = %.body195.sink.split, %bb.aw, %.loopexit.split-lp259.loopexit.split-lp.loopexit.split-lp
  %.pn85 = phi { ptr, i32 } [ %lpad.loopexit.split-lp562, %.loopexit.split-lp259.loopexit.split-lp.loopexit.split-lp ], [ %i.lu, %bb.aw ], [ %.pn85.ph, %.body195.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.bc

._crit_edge356:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.lz = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 9 uses
  store ptr %i.lz, ptr %14, align 8, !tbaa !26
  %i.ma = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 6 uses
  store i64 0, ptr %i.ma, align 8, !tbaa !29
  store i8 0, ptr %i.lz, align 8, !tbaa !30
  %i.mb = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !127, !noalias !345 ; 2 uses
  %i.md = load ptr, ptr %8, align 8, !tbaa !127, !noalias !346 ; 2 uses
  %.not257357 = icmp eq ptr %i.mc, %i.md
  br i1 %.not257357, label %._crit_edge361.thread, label %.lr.ph360

._crit_edge361.thread:                            ; preds = %._crit_edge356
  store i8 1, ptr %0, align 8, !tbaa !143
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.mf, ptr %i.me, align 8, !tbaa !26
  br label %bb.ax

._crit_edge361:                                   ; preds = %bb.bb
  %.pre384 = load ptr, ptr %14, align 8, !tbaa !31 ; 2 uses
  store i8 1, ptr %0, align 8, !tbaa !143
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.mh, ptr %i.mg, align 8, !tbaa !26
  %i.mi = icmp eq ptr %.pre384, %i.lz
  br i1 %i.mi, label %bb.ax, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i210

bb.ax:                                            ; preds = %._crit_edge361.thread, %._crit_edge361
  %i.mj = phi ptr [ %i.mf, %._crit_edge361.thread ], [ %i.mh, %._crit_edge361 ]
  %i.mk = phi ptr [ %i.md, %._crit_edge361.thread ], [ %i.nz, %._crit_edge361 ]
  %i.ml = load i64, ptr %i.ma, align 8, !tbaa !29 ; 3 uses
  %i.mm = icmp ult i64 %i.ml, 16
  call void @llvm.assume(i1 %i.mm)
  %i.mn = add nuw nsw i64 %i.ml, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.mj, ptr noundef nonnull align 8 dereferenceable(1) %i.lz, i64 %i.mn, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i210: ; preds = %._crit_edge361
  store ptr %.pre384, ptr %i.mg, align 8, !tbaa !31
  %i.mo = load i64, ptr %i.lz, align 8, !tbaa !30
  store i64 %i.mo, ptr %i.mh, align 8, !tbaa !30
  %.pre385 = load i64, ptr %i.ma, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i210
  %i.mp = phi ptr [ %i.mk, %bb.ax ], [ %i.nz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i210 ] ; 3 uses
  %i.mq = phi i64 [ %i.ml, %bb.ax ], [ %.pre385, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i210 ]
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.mq, ptr %i.mr, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  %i.ms = load ptr, ptr %i.mb, align 8, !tbaa !131 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.mp, %i.ms
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.my, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.mp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213 ] ; 3 uses
  %i.mt = load ptr, ptr %.05.i.i.i, align 8, !tbaa !31 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.mv = icmp eq ptr %i.mt, %i.mu
  br i1 %i.mv, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.mw = load i64, ptr %i.mu, align 8, !tbaa !30
  %i.mx = add i64 %i.mw, 1
  call void @_ZdlPvm(ptr noundef %i.mt, i64 noundef %i.mx) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.my = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.my, %i.ms
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !130
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213
  %i.mz = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.mp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.mz, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.na = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !129
  %i.nc = ptrtoint ptr %i.nb to i64
  %i.nd = ptrtoint ptr %i.mz to i64
  %i.ne = sub i64 %i.nc, %i.nd
  call void @_ZdlPvm(ptr noundef nonnull %i.mz, i64 noundef %i.ne) #22
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %.pre386 = load ptr, ptr %7, align 8, !tbaa !160
  br label %bb.bd

.lr.ph360:                                        ; preds = %._crit_edge356, %bb.bb
  %.sroa.0253.0358 = phi ptr [ %i.nf, %bb.bb ], [ %i.mc, %._crit_edge356 ] ; 2 uses
  %i.nf = getelementptr inbounds i8, ptr %.sroa.0253.0358, i64 -32 ; 3 uses
  %i.ng = getelementptr inbounds i8, ptr %.sroa.0253.0358, i64 -24
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !29 ; 2 uses
  %i.ni = load i64, ptr %i.ma, align 8, !tbaa !29
  %i.nj = sub i64 4611686018427387903, %i.ni
  %i.nk = icmp ult i64 %i.nj, %i.nh
  br i1 %i.nk, label %bb.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i

bb.az:                                            ; preds = %.lr.ph360
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #21
          to label %.noexc214 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc214:                                        ; preds = %bb.az
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %.lr.ph360
  %i.nl = load ptr, ptr %i.nf, align 8, !tbaa !31
  %i.nm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef %i.nl, i64 noundef %i.nh)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %i.nn = load i64, ptr %i.ma, align 8, !tbaa !29 ; 4 uses
  %i.no = add i64 %i.nn, 1                        ; 3 uses
  %i.np = load ptr, ptr %14, align 8, !tbaa !31   ; 2 uses
  %i.nq = icmp eq ptr %i.np, %i.lz
  br i1 %i.nq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i218, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i218: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.nr = icmp ult i64 %i.nn, 16
  call void @llvm.assume(i1 %i.nr)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.ns = load i64, ptr %i.lz, align 8, !tbaa !30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i218
  %i.nt = phi i64 [ %i.ns, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i218 ]
  %i.nu = icmp ugt i64 %i.no, %i.nt
  br i1 %i.nu, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef %i.nn, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc219 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc219:                                        ; preds = %bb.ba
  %.pre.i217 = load ptr, ptr %14, align 8, !tbaa !31
  br label %bb.bb

bb.bb:                                            ; preds = %.noexc219, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.nv = phi ptr [ %.pre.i217, %.noexc219 ], [ %i.np, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 %i.nn
  store i8 10, ptr %i.nw, align 1, !tbaa !30
  store i64 %i.no, ptr %i.ma, align 8, !tbaa !29
  %i.nx = load ptr, ptr %14, align 8, !tbaa !31
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 %i.no
  store i8 0, ptr %i.ny, align 1, !tbaa !30
  %i.nz = load ptr, ptr %8, align 8, !tbaa !127, !noalias !346 ; 3 uses
  %.not257 = icmp eq ptr %i.nf, %i.nz
  br i1 %.not257, label %._crit_edge361, label %.lr.ph360, !llvm.loop !331

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %bb.az
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.oa = load ptr, ptr %14, align 8, !tbaa !31   ; 2 uses
  %i.ob = icmp eq ptr %i.oa, %i.lz
  br i1 %i.ob, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.oc = load i64, ptr %i.lz, align 8, !tbaa !30
  %i.od = add i64 %i.oc, 1
  call void @_ZdlPvm(ptr noundef %i.oa, i64 noundef %i.od) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %bb.bc

bb.bc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, %.body195, %.body172, %.body149, %.body126, %.body
  %.pn93.pn = phi { ptr, i32 } [ %.pn93, %.body ], [ %.pn91, %.body126 ], [ %.pn89, %.body149 ], [ %.pn87, %.body172 ], [ %.pn85, %.body195 ], [ %lpad.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %.loopexit.split-lp286

bb.bd:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.o
  %i.oe = phi ptr [ %.pre386, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ], [ %i.aw, %bb.o ] ; 3 uses
  %i.of = load ptr, ptr %i.a, align 8, !tbaa !161 ; 2 uses
  %.not4.i.i.i223 = icmp eq ptr %i.oe, %i.of
  br i1 %.not4.i.i.i223, label %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i224

.lr.ph.i.i.i224:                                  ; preds = %bb.bd, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i
  %.05.i.i.i225 = phi ptr [ %i.om, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i ], [ %i.oe, %bb.bd ] ; 3 uses
  %i.og = load ptr, ptr %.05.i.i.i225, align 8, !tbaa !158 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.og, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i, label %bb.be

bb.be:                                            ; preds = %.lr.ph.i.i.i224
  %i.oh = getelementptr inbounds nuw i8, ptr %.05.i.i.i225, i64 16
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !163
  %i.oj = ptrtoint ptr %i.oi to i64
  %i.ok = ptrtoint ptr %i.og to i64
  %i.ol = sub i64 %i.oj, %i.ok
  call void @_ZdlPvm(ptr noundef nonnull %i.og, i64 noundef %i.ol) #22
  br label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i:  ; preds = %bb.be, %.lr.ph.i.i.i224
  %i.om = getelementptr inbounds nuw i8, ptr %.05.i.i.i225, i64 24 ; 2 uses
  %.not.i.i.i226 = icmp eq ptr %i.om, %i.of
  br i1 %.not.i.i.i226, label %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i224, !llvm.loop !5

_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i
  %.pr.i227 = load ptr, ptr %7, align 8, !tbaa !160
  br label %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.bd
  %i.on = phi ptr [ %.pr.i227, %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.oe, %bb.bd ] ; 3 uses
  %.not.i.i1.i228 = icmp eq ptr %i.on, null
  br i1 %.not.i.i1.i228, label %_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i
  %16 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.oo = load ptr, ptr %16, align 8, !tbaa !162
  %i.op = ptrtoint ptr %i.oo to i64
  %i.oq = ptrtoint ptr %i.on to i64
  %i.or = sub i64 %i.op, %i.oq
  call void @_ZdlPvm(ptr noundef nonnull %i.on, i64 noundef %i.or) #22
  br label %_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.os = load ptr, ptr %6, align 8, !tbaa !130   ; 3 uses
  %i.ot = load ptr, ptr %i.c, align 8, !tbaa !131 ; 2 uses
  %.not4.i.i.i229 = icmp eq ptr %i.os, %i.ot
  br i1 %.not4.i.i.i229, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i237, label %.lr.ph.i.i.i230

.lr.ph.i.i.i230:                                  ; preds = %_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i233
  %.05.i.i.i231 = phi ptr [ %i.oz, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i233 ], [ %i.os, %_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev.exit ] ; 3 uses
  %i.ou = load ptr, ptr %.05.i.i.i231, align 8, !tbaa !31 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %.05.i.i.i231, i64 16 ; 2 uses
  %i.ow = icmp eq ptr %i.ou, %i.ov
  br i1 %i.ow, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i233, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i232

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i232: ; preds = %.lr.ph.i.i.i230
  %i.ox = load i64, ptr %i.ov, align 8, !tbaa !30
  %i.oy = add i64 %i.ox, 1
  call void @_ZdlPvm(ptr noundef %i.ou, i64 noundef %i.oy) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i233

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i233: ; preds = %.lr.ph.i.i.i230, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i232
  %i.oz = getelementptr inbounds nuw i8, ptr %.05.i.i.i231, i64 32 ; 2 uses
  %.not.i.i.i234 = icmp eq ptr %i.oz, %i.ot
  br i1 %.not.i.i.i234, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i235, label %.lr.ph.i.i.i230, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i235: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i233
  %.pr.i236 = load ptr, ptr %6, align 8, !tbaa !130
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i237

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i237: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i235, %_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev.exit
  %i.pa = phi ptr [ %.pr.i236, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i235 ], [ %i.os, %_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i238 = icmp eq ptr %i.pa, null
  br i1 %.not.i.i1.i238, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit240, label %bb.bg

bb.bg:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i237
  %i.pb = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !129
  %i.pd = ptrtoint ptr %i.pc to i64
  %i.pe = ptrtoint ptr %i.pa to i64
  %i.pf = sub i64 %i.pd, %i.pe
  call void @_ZdlPvm(ptr noundef nonnull %i.pa, i64 noundef %i.pf) #22
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit240

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit240: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i237, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.pg = load ptr, ptr %5, align 8, !tbaa !130   ; 3 uses
  %i.ph = load ptr, ptr %i.aj, align 8, !tbaa !131 ; 2 uses
  %.not4.i.i.i241 = icmp eq ptr %i.pg, %i.ph
  br i1 %.not4.i.i.i241, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i249, label %.lr.ph.i.i.i242

.lr.ph.i.i.i242:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit240, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i245
  %.05.i.i.i243 = phi ptr [ %i.pn, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i245 ], [ %i.pg, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit240 ] ; 3 uses
  %i.pi = load ptr, ptr %.05.i.i.i243, align 8, !tbaa !31 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %.05.i.i.i243, i64 16 ; 2 uses
  %i.pk = icmp eq ptr %i.pi, %i.pj
  br i1 %i.pk, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i245, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i244

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i244: ; preds = %.lr.ph.i.i.i242
  %i.pl = load i64, ptr %i.pj, align 8, !tbaa !30
  %i.pm = add i64 %i.pl, 1
  call void @_ZdlPvm(ptr noundef %i.pi, i64 noundef %i.pm) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i245

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i245: ; preds = %.lr.ph.i.i.i242, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i244
  %i.pn = getelementptr inbounds nuw i8, ptr %.05.i.i.i243, i64 32 ; 2 uses
  %.not.i.i.i246 = icmp eq ptr %i.pn, %i.ph
  br i1 %.not.i.i.i246, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i247, label %.lr.ph.i.i.i242, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i247: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i245
  %.pr.i248 = load ptr, ptr %5, align 8, !tbaa !130
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i249

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i249: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i247, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit240
  %i.po = phi ptr [ %.pr.i248, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i247 ], [ %i.pg, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit240 ] ; 3 uses
  %.not.i.i1.i250 = icmp eq ptr %i.po, null
  br i1 %.not.i.i1.i250, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit252, label %bb.bh

bb.bh:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i249
  %i.pp = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !129
  %i.pr = ptrtoint ptr %i.pq to i64
  %i.ps = ptrtoint ptr %i.po to i64
  %i.pt = sub i64 %i.pr, %i.ps
  call void @_ZdlPvm(ptr noundef nonnull %i.po, i64 noundef %i.pt) #22
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit252

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit252: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i249, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void

.loopexit.split-lp286:                            ; preds = %.loopexit.split-lp286.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bc
  %.pn96 = phi { ptr, i32 } [ %.pn93.pn, %bb.bc ], [ %lpad.loopexit.split-lp577, %.loopexit.split-lp286.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #20
  br label %bb.bi

bb.bi:                                            ; preds = %.loopexit.split-lp286, %bb.f
  %.pn96.pn = phi { ptr, i32 } [ %.pn96, %.loopexit.split-lp286 ], [ %i.be, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  resume { ptr, i32 } %.pn96.pn
}

declare void @_ZN5vcpkg7Strings16split_keep_emptyB5cxx11ENS_10StringViewEc(ptr dead_on_unwind writable sret(%"class.std::vector.112") align 8, ptr, i64, i8 noundef signext) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !130    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !131  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !31 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !30
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !130
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !129
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #22
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !160    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !158 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !163
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #22
  br label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i:    ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !5

_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !160
  br label %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorImSaImEESaIS2_EED2Ev.exit, label %bb.c

end_hunk_1
