Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/hf-cache?download=true
inline.NumInlined: 1408
inline.NumDeleted: 453
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN7httplib8ResponseD2Ev:bb.a
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %i.ce to i64
  %i.cj = sub i64 %i.ch, %i.ci
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.cj) #27
  br label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEED2Ev.exit

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i.i, %bb.i
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !61 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !63 ; 2 uses
  %.not4.i.i.i.i14 = icmp eq ptr %i.cl, %i.cn
  br i1 %.not4.i.i.i.i14, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i.i24, label %.lr.ph.i.i.i.i15

.lr.ph.i.i.i.i15:                                 ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEED2Ev.exit, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i20
  %.05.i.i.i.i16 = phi ptr [ %i.cz, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i20 ], [ %i.cl, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEED2Ev.exit ] ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i16, i64 32
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !21 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i16, i64 48 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i17: ; preds = %.lr.ph.i.i.i.i15
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !20
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i18: ; preds = %.lr.ph.i.i.i.i15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i17
  %i.cu = load ptr, ptr %.05.i.i.i.i16, align 8, !tbaa !21 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i16, i64 16 ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i18
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !20
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cy) #27
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i20

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i19
  %i.cz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i16, i64 64 ; 2 uses
  %.not.i.i.i.i21 = icmp eq ptr %i.cz, %i.cn
  br i1 %.not.i.i.i.i21, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i22, label %.lr.ph.i.i.i.i15, !llvm.loop !3

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i22: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i20
  %.pr.i.i23 = load ptr, ptr %i.ck, align 8, !tbaa !61
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i.i24

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i.i24: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i22, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEED2Ev.exit
  %i.da = phi ptr [ %.pr.i.i23, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i22 ], [ %i.cl, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i25 = icmp eq ptr %i.da, null
  br i1 %.not.i.i1.i.i25, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEED2Ev.exit28, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i.i24
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !62
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = ptrtoint ptr %i.da to i64
  %i.df = sub i64 %i.dd, %i.de
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.df) #27
  br label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEED2Ev.exit28

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEED2Ev.exit28: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i.i24, %bb.j
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !21 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEED2Ev.exit28
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !20
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEED2Ev.exit28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  %i.dm = load ptr, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !20
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  ret void

bb.k:                                             ; preds = %bb.b
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #29
  unreachable
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK11common_jsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #25, !inline_history !476
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !47   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !47
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #25, !inline_history !476
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare void @_ZNSt10filesystem8absoluteERKNS_7__cxx114pathE(ptr dead_on_unwind writable sret(%"class.std::filesystem::__cxx11::path") align 8, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

declare void @_ZNKSt10filesystem7__cxx114path16lexically_normalEv(ptr dead_on_unwind writable sret(%"class.std::filesystem::__cxx11::path") align 8, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNKSt10filesystem7__cxx114path18has_root_directoryEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt10__mismatchINSt10filesystem7__cxx114path8iteratorES3_N9__gnu_cxx5__ops19_Iter_equal_to_iterEESt4pairIT_T0_ES8_S8_S9_S9_T1_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.61") align 8 %0, ptr noundef byval(%"class.std::filesystem::__cxx11::path::iterator") align 8 %1, ptr noundef byval(%"class.std::filesystem::__cxx11::path::iterator") align 8 %2, ptr noundef byval(%"class.std::filesystem::__cxx11::path::iterator") align 8 %3, ptr noundef byval(%"class.std::filesystem::__cxx11::path::iterator") align 8 %4) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.02.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !478 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !479 ; 4 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.3.0.copyload.i = load i8, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !97 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !88     ; 7 uses
  %.not.i.i = icmp eq ptr %i.a, %.sroa.02.0.copyload.i
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.02.0.copyload.i1 = load ptr, ptr %4, align 8
  %.sroa.02.0.copyload.i1.fr = freeze ptr %.sroa.02.0.copyload.i1 ; 2 uses
  %.sroa.2.0..sroa_idx.i2 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0.copyload.i3 = load ptr, ptr %.sroa.2.0..sroa_idx.i2, align 8 ; 3 uses
  %.sroa.3.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.3.0.copyload.i5 = load i8, ptr %.sroa.3.0..sroa_idx.i4, align 8 ; 3 uses
  %i.e = load ptr, ptr %3, align 8
  %.fr = freeze ptr %i.e                          ; 7 uses
  %.not.i.i6 = icmp eq ptr %.fr, %.sroa.02.0.copyload.i1.fr ; 2 uses
  %i.f = icmp eq ptr %.sroa.02.0.copyload.i1.fr, null ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.fr, i64 32 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.promoted = load i8, ptr %i.c, align 8         ; 13 uses
  %.promoted26 = load ptr, ptr %i.d, align 8      ; 14 uses
  %.promoted28 = load i8, ptr %i.h, align 8       ; 12 uses
  %.promoted30 = load ptr, ptr %i.i, align 8      ; 13 uses
  br i1 %.not.i.i, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a
  %i.j = icmp eq ptr %.sroa.02.0.copyload.i, null
  br i1 %i.j, label %.critedge, label %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.us.lr.ph

_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.us.lr.ph: ; preds = %.split.us
  br i1 %.not.i.i6, label %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.us.lr.ph.split.us, label %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.us.lr.ph.split.split

_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.us.lr.ph.split.us: ; preds = %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.us.lr.ph
  br i1 %i.f, label %.critedge, label %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.us.lr.ph.split.us.split.split

_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.us.lr.ph.split.us.split.split: ; preds = %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.us.lr.ph.split.us
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = and i64 %i.l, 3
  %i.n = icmp eq i64 %i.m, 0
  %i.o = icmp ne i8 %.promoted, %.sroa.3.0.copyload.i
  %i.p = icmp ne ptr %.promoted26, %.sroa.2.0.copyload.i
  %.0.i.i.us.us196 = select i1 %i.n, i1 %i.p, i1 %i.o
  br i1 %.0.i.i.us.us196, label %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.thread.us.us.preheader, label %.critedge

_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.thread.us.us.preheader: ; preds = %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.us.lr.ph.split.us.split.split
  %.pre223 = load ptr, ptr %i.g, align 8, !tbaa !24
  %5 = icmp ne i8 %.sroa.3.0.copyload.i, 1
  br label %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.thread.us.us

_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.thread.us.us: ; preds = %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.thread.us.us.preheader, %_ZNSt10filesystem7__cxx114path8iteratorppEv.exit.us.us
  %i.q = phi ptr [ %i.ag, %_ZNSt10filesystem7__cxx114path8iteratorppEv.exit.us.us ], [ %i.k, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.thread.us.us.preheader ]
  %i.r = phi ptr [ %i.am, %_ZNSt10filesystem7__cxx114path8iteratorppEv.exit.us.us ], [ %.pre223, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.thread.us.us.preheader ]
  %i.s = phi ptr [ %i.aq, %_ZNSt10filesystem7__cxx114path8iteratorppEv.exit.us.us ], [ %.promoted30, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.thread.us.us.preheader ] ; 5 uses
  %i.t = phi i8 [ %i.ar, %_ZNSt10filesystem7__cxx114path8iteratorppEv.exit.us.us ], [ %.promoted28, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.thread.us.us.preheader ] ; 4 uses
  %i.u = phi ptr [ %i.ak, %_ZNSt10filesystem7__cxx114path8iteratorppEv.exit.us.us ], [ %.promoted26, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.thread.us.us.preheader ] ; 4 uses
  %i.v = phi i8 [ %i.al, %_ZNSt10filesystem7__cxx114path8iteratorppEv.exit.us.us ], [ %.promoted, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.thread.us.us.preheader ] ; 3 uses
  %i.w = ptrtoint ptr %i.r to i64
  %i.x = and i64 %i.w, 3
  %i.y = icmp eq i64 %i.x, 0                      ; 2 uses
  %i.z = icmp ne i8 %i.t, %.sroa.3.0.copyload.i5
  %i.aa = icmp ne ptr %i.s, %.sroa.2.0.copyload.i3
  %.0.i.i7.us.us = select i1 %i.y, i1 %i.aa, i1 %i.z
  br i1 %.0.i.i7.us.us, label %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit8.thread.us.us, label %.critedge

_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit8.thread.us.us: ; preds = %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.thread.us.us
  %i.ab = ptrtoint ptr %i.q to i64
  %i.ac = and i64 %i.ab, 3
  %i.ad = icmp eq i64 %i.ac, 0
  %.0.i.i9.sroa.speculated.us.us = select i1 %i.ad, ptr %i.u, ptr %i.a
  %.0.i3.i.sroa.speculated.us.us = select i1 %i.y, ptr %i.s, ptr %.fr
  %i.ae = tail call noundef i32 @_ZNKSt10filesystem7__cxx114path7compareERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %.0.i.i9.sroa.speculated.us.us, ptr noundef nonnull align 8 dereferenceable(40) %.0.i3.i.sroa.speculated.us.us) #25
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZNSt10filesystem7__cxx114path8iteratorppEv.exit.us.us, label %.critedge

_ZNSt10filesystem7__cxx114path8iteratorppEv.exit.us.us: ; preds = %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit8.thread.us.us
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !24  ; 2 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = and i64 %i.ah, 3
  %i.aj = icmp eq i64 %i.ai, 0                    ; 3 uses
  %.idx206 = select i1 %i.aj, i64 48, i64 0
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx206 ; 3 uses
  %i.al = select i1 %i.aj, i8 %i.v, i8 1          ; 2 uses
  %i.am = load ptr, ptr %i.g, align 8, !tbaa !24  ; 2 uses
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = and i64 %i.an, 3
  %i.ap = icmp eq i64 %i.ao, 0                    ; 2 uses
  %.idx207 = select i1 %i.ap, i64 48, i64 0
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx207 ; 2 uses
  %i.ar = select i1 %i.ap, i8 %i.t, i8 1          ; 2 uses
  %i.as = icmp ne ptr %i.ak, %.sroa.2.0.copyload.i
  %.0.i.i.us.us = select i1 %i.aj, i1 %i.as, i1 %5
  br i1 %.0.i.i.us.us, label %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.thread.us.us, label %.critedge

_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.us.lr.ph.split.split: ; preds = %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.us.lr.ph
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !24  ; 2 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = and i64 %i.au, 3
  %i.aw = icmp eq i64 %i.av, 0
  %i.ax = icmp ne i8 %.promoted, %.sroa.3.0.copyload.i
  %i.ay = icmp ne ptr %.promoted26, %.sroa.2.0.copyload.i
  %.0.i.i.us160 = select i1 %i.aw, i1 %i.ay, i1 %i.ax
  br i1 %.0.i.i.us160, label %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.thread.us.preheader, label %.critedge

_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.thread.us.preheader: ; preds = %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.us.lr.ph.split.split
  %.pre222 = load ptr, ptr %i.g, align 8, !tbaa !24
  %6 = icmp ne i8 %.sroa.3.0.copyload.i, 1
  br label %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.thread.us

_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.thread.us: ; preds = %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.thread.us.preheader, %_ZNSt10filesystem7__cxx114path8iteratorppEv.exit.us
  %i.az = phi ptr [ %i.bt, %_ZNSt10filesystem7__cxx114path8iteratorppEv.exit.us ], [ %.pre222, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.thread.us.preheader ]
  %i.ba = phi ptr [ %i.bn, %_ZNSt10filesystem7__cxx114path8iteratorppEv.exit.us ], [ %i.at, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.thread.us.preheader ]
  %i.bb = phi ptr [ %i.bx, %_ZNSt10filesystem7__cxx114path8iteratorppEv.exit.us ], [ %.promoted30, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.thread.us.preheader ] ; 3 uses
  %i.bc = phi i8 [ %i.by, %_ZNSt10filesystem7__cxx114path8iteratorppEv.exit.us ], [ %.promoted28, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.thread.us.preheader ] ; 2 uses
  %i.bd = phi ptr [ %i.br, %_ZNSt10filesystem7__cxx114path8iteratorppEv.exit.us ], [ %.promoted26, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.thread.us.preheader ] ; 3 uses
  %i.be = phi i8 [ %i.bs, %_ZNSt10filesystem7__cxx114path8iteratorppEv.exit.us ], [ %.promoted, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.thread.us.preheader ] ; 2 uses
  %i.bf = ptrtoint ptr %i.ba to i64
  %i.bg = and i64 %i.bf, 3
  %i.bh = icmp eq i64 %i.bg, 0
  %.0.i.i9.sroa.speculated.us = select i1 %i.bh, ptr %i.bd, ptr %i.a
  %i.bi = ptrtoint ptr %i.az to i64
  %i.bj = and i64 %i.bi, 3
  %i.bk = icmp eq i64 %i.bj, 0
  %.0.i3.i.sroa.speculated.us = select i1 %i.bk, ptr %i.bb, ptr %.fr
  %i.bl = tail call noundef i32 @_ZNKSt10filesystem7__cxx114path7compareERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %.0.i.i9.sroa.speculated.us, ptr noundef nonnull align 8 dereferenceable(40) %.0.i3.i.sroa.speculated.us) #25
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %_ZNSt10filesystem7__cxx114path8iteratorppEv.exit.us, label %.critedge

_ZNSt10filesystem7__cxx114path8iteratorppEv.exit.us: ; preds = %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.thread.us
  %i.bn = load ptr, ptr %i.b, align 8, !tbaa !24  ; 2 uses
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = and i64 %i.bo, 3
  %i.bq = icmp eq i64 %i.bp, 0                    ; 3 uses
  %.idx204 = select i1 %i.bq, i64 48, i64 0
  %i.br = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx204 ; 3 uses
  %i.bs = select i1 %i.bq, i8 %i.be, i8 1         ; 2 uses
  %i.bt = load ptr, ptr %i.g, align 8, !tbaa !24  ; 2 uses
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = and i64 %i.bu, 3
  %i.bw = icmp eq i64 %i.bv, 0                    ; 2 uses
  %.idx205 = select i1 %i.bw, i64 48, i64 0
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx205 ; 2 uses
  %i.by = select i1 %i.bw, i8 %i.bc, i8 1         ; 2 uses
  %i.bz = icmp ne ptr %i.br, %.sroa.2.0.copyload.i
  %.0.i.i.us = select i1 %i.bq, i1 %i.bz, i1 %6
  br i1 %.0.i.i.us, label %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.thread.us, label %.critedge

.split:                                           ; preds = %bb.a
  br i1 %.not.i.i6, label %.split.split.us, label %.split.split

.split.split.us:                                  ; preds = %.split
  br i1 %i.f, label %.critedge, label %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit8.us39.lr.ph.split

_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit8.us39.lr.ph.split: ; preds = %.split.split.us
  %i.ca = load ptr, ptr %i.g, align 8, !tbaa !24  ; 2 uses
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = and i64 %i.cb, 3
  %i.cd = icmp eq i64 %i.cc, 0
  %i.ce = icmp ne i8 %.promoted28, %.sroa.3.0.copyload.i5
  %i.cf = icmp ne ptr %.promoted30, %.sroa.2.0.copyload.i3
  %.0.i.i7.us4083 = select i1 %i.cd, i1 %i.cf, i1 %i.ce
  br i1 %.0.i.i7.us4083, label %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit8.thread.us41.preheader, label %.critedge

_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit8.thread.us41.preheader: ; preds = %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit8.us39.lr.ph.split
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !24
  %7 = icmp ne i8 %.sroa.3.0.copyload.i5, 1
  br label %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit8.thread.us41

_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit8.thread.us41: ; preds = %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit8.thread.us41.preheader, %_ZNSt10filesystem7__cxx114path8iteratorppEv.exit.us44
  %i.cg = phi ptr [ %i.da, %_ZNSt10filesystem7__cxx114path8iteratorppEv.exit.us44 ], [ %i.ca, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit8.thread.us41.preheader ]
  %i.ch = phi ptr [ %i.cu, %_ZNSt10filesystem7__cxx114path8iteratorppEv.exit.us44 ], [ %.pre, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit8.thread.us41.preheader ]
  %i.ci = phi ptr [ %i.de, %_ZNSt10filesystem7__cxx114path8iteratorppEv.exit.us44 ], [ %.promoted30, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit8.thread.us41.preheader ] ; 3 uses
  %i.cj = phi i8 [ %i.df, %_ZNSt10filesystem7__cxx114path8iteratorppEv.exit.us44 ], [ %.promoted28, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit8.thread.us41.preheader ] ; 2 uses
  %i.ck = phi ptr [ %i.cy, %_ZNSt10filesystem7__cxx114path8iteratorppEv.exit.us44 ], [ %.promoted26, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit8.thread.us41.preheader ] ; 3 uses
  %i.cl = phi i8 [ %i.cz, %_ZNSt10filesystem7__cxx114path8iteratorppEv.exit.us44 ], [ %.promoted, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit8.thread.us41.preheader ] ; 2 uses
  %i.cm = ptrtoint ptr %i.ch to i64
  %i.cn = and i64 %i.cm, 3
  %i.co = icmp eq i64 %i.cn, 0
  %.0.i.i9.sroa.speculated.us42 = select i1 %i.co, ptr %i.ck, ptr %i.a
  %i.cp = ptrtoint ptr %i.cg to i64
  %i.cq = and i64 %i.cp, 3
  %i.cr = icmp eq i64 %i.cq, 0
  %.0.i3.i.sroa.speculated.us43 = select i1 %i.cr, ptr %i.ci, ptr %.fr
  %i.cs = tail call noundef i32 @_ZNKSt10filesystem7__cxx114path7compareERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %.0.i.i9.sroa.speculated.us42, ptr noundef nonnull align 8 dereferenceable(40) %.0.i3.i.sroa.speculated.us43) #25
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %_ZNSt10filesystem7__cxx114path8iteratorppEv.exit.us44, label %.critedge

_ZNSt10filesystem7__cxx114path8iteratorppEv.exit.us44: ; preds = %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit8.thread.us41
  %i.cu = load ptr, ptr %i.b, align 8, !tbaa !24  ; 2 uses
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = and i64 %i.cv, 3
  %i.cx = icmp eq i64 %i.cw, 0                    ; 2 uses
  %.idx202 = select i1 %i.cx, i64 48, i64 0
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.idx202 ; 2 uses
  %i.cz = select i1 %i.cx, i8 %i.cl, i8 1         ; 2 uses
  %i.da = load ptr, ptr %i.g, align 8, !tbaa !24  ; 2 uses
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = and i64 %i.db, 3
  %i.dd = icmp eq i64 %i.dc, 0                    ; 3 uses
  %.idx203 = select i1 %i.dd, i64 48, i64 0
  %i.de = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.idx203 ; 3 uses
  %i.df = select i1 %i.dd, i8 %i.cj, i8 1         ; 2 uses
  %i.dg = icmp ne ptr %i.de, %.sroa.2.0.copyload.i3
  %.0.i.i7.us40 = select i1 %i.dd, i1 %i.dg, i1 %7
  br i1 %.0.i.i7.us40, label %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit8.thread.us41, label %.critedge

.split.split:                                     ; preds = %.split
  %i.dh = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = and i64 %i.di, 3
  %i.dk = icmp eq i64 %i.dj, 0
  %.0.i.i9.sroa.speculated54 = select i1 %i.dk, ptr %.promoted26, ptr %i.a
  %i.dl = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = and i64 %i.dm, 3
  %i.do = icmp eq i64 %i.dn, 0
  %.0.i3.i.sroa.speculated55 = select i1 %i.do, ptr %.promoted30, ptr %.fr
  %i.dp = tail call noundef i32 @_ZNKSt10filesystem7__cxx114path7compareERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %.0.i.i9.sroa.speculated54, ptr noundef nonnull align 8 dereferenceable(40) %.0.i3.i.sroa.speculated55) #25
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.split.split, %.lr.ph
  %i.dr = phi i8 [ %i.ea, %.lr.ph ], [ %.promoted, %.split.split ]
  %i.ds = phi ptr [ %i.dz, %.lr.ph ], [ %.promoted26, %.split.split ]
  %i.dt = phi i8 [ %i.eg, %.lr.ph ], [ %.promoted28, %.split.split ]
  %i.du = phi ptr [ %i.ef, %.lr.ph ], [ %.promoted30, %.split.split ]
  %i.dv = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = and i64 %i.dw, 3
  %i.dy = icmp eq i64 %i.dx, 0                    ; 3 uses
  %.idx = select i1 %i.dy, i64 48, i64 0
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 %.idx ; 3 uses
  %i.ea = select i1 %i.dy, i8 %i.dr, i8 1         ; 2 uses
  %i.eb = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = and i64 %i.ec, 3
  %i.ee = icmp eq i64 %i.ed, 0                    ; 3 uses
  %.idx201 = select i1 %i.ee, i64 48, i64 0
  %i.ef = getelementptr inbounds nuw i8, ptr %i.du, i64 %.idx201 ; 3 uses
  %i.eg = select i1 %i.ee, i8 %i.dt, i8 1         ; 2 uses
  %.0.i.i9.sroa.speculated = select i1 %i.dy, ptr %i.dz, ptr %i.a
  %.0.i3.i.sroa.speculated = select i1 %i.ee, ptr %i.ef, ptr %.fr
  %i.eh = tail call noundef i32 @_ZNKSt10filesystem7__cxx114path7compareERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %.0.i.i9.sroa.speculated, ptr noundef nonnull align 8 dereferenceable(40) %.0.i3.i.sroa.speculated) #25
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %.lr.ph, label %.critedge, !llvm.loop !477

.critedge:                                        ; preds = %.lr.ph, %_ZNSt10filesystem7__cxx114path8iteratorppEv.exit.us44, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit8.thread.us41, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.thread.us, %_ZNSt10filesystem7__cxx114path8iteratorppEv.exit.us, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit8.thread.us.us, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.thread.us.us, %_ZNSt10filesystem7__cxx114path8iteratorppEv.exit.us.us, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.us.lr.ph.split.us, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit8.us39.lr.ph.split, %.split.split.us, %.split.split, %.split.us, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.us.lr.ph.split.split, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.us.lr.ph.split.us.split.split
  %.us-phi = phi ptr [ %.promoted30, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.us.lr.ph.split.us.split.split ], [ %.promoted30, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit8.us39.lr.ph.split ], [ %i.bb, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.thread.us ], [ %.promoted30, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.us.lr.ph.split.us ], [ %i.ci, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit8.thread.us41 ], [ %.promoted30, %.split.us ], [ %.promoted30, %.split.split.us ], [ %.promoted30, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.us.lr.ph.split.split ], [ %i.s, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.thread.us.us ], [ %.promoted30, %.split.split ], [ %i.s, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit8.thread.us.us ], [ %i.aq, %_ZNSt10filesystem7__cxx114path8iteratorppEv.exit.us.us ], [ %i.bx, %_ZNSt10filesystem7__cxx114path8iteratorppEv.exit.us ], [ %i.de, %_ZNSt10filesystem7__cxx114path8iteratorppEv.exit.us44 ], [ %i.ef, %.lr.ph ]
  %.us-phi32 = phi i8 [ %.promoted28, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.us.lr.ph.split.us.split.split ], [ %.promoted28, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit8.us39.lr.ph.split ], [ %i.bc, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.thread.us ], [ %.promoted28, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.us.lr.ph.split.us ], [ %i.cj, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit8.thread.us41 ], [ %.promoted28, %.split.us ], [ %.promoted28, %.split.split.us ], [ %.promoted28, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.us.lr.ph.split.split ], [ %i.t, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.thread.us.us ], [ %.promoted28, %.split.split ], [ %i.t, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit8.thread.us.us ], [ %i.ar, %_ZNSt10filesystem7__cxx114path8iteratorppEv.exit.us.us ], [ %i.by, %_ZNSt10filesystem7__cxx114path8iteratorppEv.exit.us ], [ %i.df, %_ZNSt10filesystem7__cxx114path8iteratorppEv.exit.us44 ], [ %i.eg, %.lr.ph ]
  %.us-phi33 = phi ptr [ %.promoted26, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.us.lr.ph.split.us.split.split ], [ %.promoted26, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit8.us39.lr.ph.split ], [ %i.bd, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.thread.us ], [ %.promoted26, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.us.lr.ph.split.us ], [ %i.ck, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit8.thread.us41 ], [ %.promoted26, %.split.us ], [ %.promoted26, %.split.split.us ], [ %.promoted26, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.us.lr.ph.split.split ], [ %i.u, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.thread.us.us ], [ %.promoted26, %.split.split ], [ %i.u, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit8.thread.us.us ], [ %i.ak, %_ZNSt10filesystem7__cxx114path8iteratorppEv.exit.us.us ], [ %i.br, %_ZNSt10filesystem7__cxx114path8iteratorppEv.exit.us ], [ %i.cy, %_ZNSt10filesystem7__cxx114path8iteratorppEv.exit.us44 ], [ %i.dz, %.lr.ph ]
  %.us-phi34 = phi i8 [ %.promoted, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.us.lr.ph.split.us.split.split ], [ %.promoted, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit8.us39.lr.ph.split ], [ %i.be, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.thread.us ], [ %.promoted, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.us.lr.ph.split.us ], [ %i.cl, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit8.thread.us41 ], [ %.promoted, %.split.us ], [ %.promoted, %.split.split.us ], [ %.promoted, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.us.lr.ph.split.split ], [ %i.v, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit.thread.us.us ], [ %.promoted, %.split.split ], [ %i.v, %_ZNSt10filesystem7__cxx11neERKNS0_4path8iteratorES4_.exit8.thread.us.us ], [ %i.al, %_ZNSt10filesystem7__cxx114path8iteratorppEv.exit.us.us ], [ %i.bs, %_ZNSt10filesystem7__cxx114path8iteratorppEv.exit.us ], [ %i.cz, %_ZNSt10filesystem7__cxx114path8iteratorppEv.exit.us44 ], [ %i.ea, %.lr.ph ]
  store i8 %.us-phi34, ptr %i.c, align 8
  store ptr %.us-phi33, ptr %i.d, align 8
  store i8 %.us-phi32, ptr %i.h, align 8
  store ptr %.us-phi, ptr %i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !480
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ej, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !480
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt10filesystem7__cxx114path5_List5beginEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt10filesystem7__cxx114path5_List3endEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

declare i64 @_ZNSt10filesystem6statusERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #18

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN8hf_cacheL19get_cache_directoryB5cxx11EvENK3$_0clB5cxx11Ev"() unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %0 = alloca [6 x %struct.anon.63], align 16     ; 51 uses
  %1 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %2 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %3 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %4 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %5 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %6 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %i.b = alloca ptr, align 8                      ; 21 uses
  %7 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 12 uses
  %8 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %9 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %10 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %11 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %12 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %13 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #25
  store ptr @.str.71, ptr %0, align 16, !tbaa !482
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.e, align 16, !tbaa !19
  store i8 0, ptr %i.d, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %_ZNSt10filesystem7__cxx114pathC2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #29
  unreachable

_ZNSt10filesystem7__cxx114pathC2Ev.exit:          ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr @.str.72, ptr %i.i, align 16, !tbaa !482
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.l, align 16, !tbaa !19
  store i8 0, ptr %i.k, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %_ZNSt10filesystem7__cxx114pathC2Ev.exit77 unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt10filesystem7__cxx114pathC2Ev.exit
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #29
  unreachable

_ZNSt10filesystem7__cxx114pathC2Ev.exit77:        ; preds = %_ZNSt10filesystem7__cxx114pathC2Ev.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  store ptr @.str.73, ptr %i.p, align 16, !tbaa !482
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %i.s, align 16, !tbaa !19
  store i8 0, ptr %i.r, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %_ZNSt10filesystem7__cxx114pathC2Ev.exit78 unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt10filesystem7__cxx114pathC2Ev.exit77
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #29
  unreachable

_ZNSt10filesystem7__cxx114pathC2Ev.exit78:        ; preds = %_ZNSt10filesystem7__cxx114pathC2Ev.exit77
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  store ptr @.str.74, ptr %i.w, align 16, !tbaa !482
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA4_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull align 1 dereferenceable(4) @.str.75, i8 noundef zeroext 2)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %_ZNSt10filesystem7__cxx114pathC2Ev.exit78
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 6 uses
  store ptr @.str.76, ptr %i.y, align 16, !tbaa !482
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA12_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 1 dereferenceable(12) @.str.77, i8 noundef zeroext 2)
          to label %bb.f unwind label %bb.u

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA4_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 1 dereferenceable(4) @.str.75, i8 noundef zeroext 2)
          to label %bb.g unwind label %bb.v

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNSt10filesystem7__cxx11dvERKNS0_4pathES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %i.z, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.h unwind label %bb.w

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 4 uses
  store ptr @.str.78, ptr %i.aa, align 16, !tbaa !482
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 248
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA7_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 1 dereferenceable(7) @.str.79, i8 noundef zeroext 2)
          to label %bb.i unwind label %bb.x

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA12_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 1 dereferenceable(12) @.str.77, i8 noundef zeroext 2)
          to label %bb.j unwind label %bb.y

bb.j:                                             ; preds = %bb.i
  invoke void @_ZNSt10filesystem7__cxx11dvERKNS0_4pathES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %3, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %5)
          to label %bb.k unwind label %bb.z

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA4_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 1 dereferenceable(4) @.str.75, i8 noundef zeroext 2)
          to label %bb.l unwind label %bb.aa

bb.l:                                             ; preds = %bb.k
  invoke void @_ZNSt10filesystem7__cxx11dvERKNS0_4pathES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %i.ab, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %bb.m unwind label %bb.ab

bb.m:                                             ; preds = %bb.l
end_hunk_0
begin_hunk_1_@_ZNSt10filesystem7__cxx114pathC2IA7_cS1_EERKT_NS1_6formatE:bb.a
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !20
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZZN8hf_cacheL19get_cache_directoryB5cxx11EvENK3$_0clB5cxx11EvEN3$_0D2Ev"(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.c) #25
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.b, %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !20
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #27
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2IPcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !55     ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #25 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.c, ptr %i.a, align 8, !tbaa !25
  %i.e = icmp ugt i64 %i.c, 15
  br i1 %i.e, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !21
  %i.g = load i64, ptr %i.a, align 8, !tbaa !25
  store i64 %i.g, ptr %i.d, align 8, !tbaa !20
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.h = phi ptr [ %i.f, %.noexc.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.c, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.i = load i8, ptr %i.b, align 1, !tbaa !20
  store i8 %i.i, ptr %i.h, align 1, !tbaa !20
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %i.b, i64 %i.c, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !19
  %i.l = load ptr, ptr %0, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !24   ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull %i.q) #25
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.p, %bb.h ], [ %i.p, %bb.i ]
  %i.r = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.d
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.t = load i64, ptr %i.d, align 8, !tbaa !20
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

declare ptr @getpwuid(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @getuid() local_unnamed_addr #7

declare void @_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathENS_17directory_optionsEPSt10error_code(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(40), i8 noundef zeroext, ptr noundef) unnamed_addr #1

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #4 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef, i32 noundef) unnamed_addr #0 align 2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #12

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #1

declare void @_ZNSt10filesystem7__cxx1128recursive_directory_iteratorC2ERKNS0_4pathENS_17directory_optionsEPSt10error_code(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(40), i8 noundef zeroext, ptr noundef) unnamed_addr #1

declare i64 @_ZNSt10filesystem14symlink_statusERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNKSt10filesystem7__cxx114path14generic_stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i64 0, ptr %i.b, align 8, !tbaa !19
  store i8 0, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = and i64 %i.e, 3
  %i.g = icmp eq i64 %i.f, 2
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, i64 noundef 1, i8 noundef signext 47)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b, %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.k)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !24, !noalias !489 ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.n = and i64 %i.m, 3
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZNKSt10filesystem7__cxx114path5beginEv.exit.thread, label %_ZNKSt10filesystem7__cxx114path5beginEv.exit

_ZNKSt10filesystem7__cxx114path5beginEv.exit:     ; preds = %bb.e
  %i.p = load i64, ptr %i.j, align 8, !tbaa !19, !noalias !489
  %4 = icmp ne i64 %i.p, 0                        ; 2 uses
  %i.q = and i64 %i.m, 3
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZNKSt10filesystem7__cxx114path3endEv.exit, label %_ZNKSt10filesystem7__cxx114path3endEv.exit.thread

_ZNKSt10filesystem7__cxx114path5beginEv.exit.thread: ; preds = %bb.e
  %i.s = call noundef ptr @_ZNKSt10filesystem7__cxx114path5_List5beginEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #25, !noalias !489 ; 2 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !24, !noalias !490 ; 2 uses
  %.pre35 = ptrtoint ptr %.pre to i64
  %i.t = and i64 %.pre35, 3
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_ZNKSt10filesystem7__cxx114path3endEv.exit, label %.lr.ph.preheader

_ZNKSt10filesystem7__cxx114path3endEv.exit.thread: ; preds = %_ZNKSt10filesystem7__cxx114path5beginEv.exit
  br i1 %4, label %.lr.ph.preheader, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit

_ZNKSt10filesystem7__cxx114path3endEv.exit:       ; preds = %_ZNKSt10filesystem7__cxx114path5beginEv.exit.thread, %_ZNKSt10filesystem7__cxx114path5beginEv.exit
  %.sink.i58 = phi i1 [ true, %_ZNKSt10filesystem7__cxx114path5beginEv.exit.thread ], [ %4, %_ZNKSt10filesystem7__cxx114path5beginEv.exit ]
  %.sink1.i57 = phi ptr [ %i.s, %_ZNKSt10filesystem7__cxx114path5beginEv.exit.thread ], [ null, %_ZNKSt10filesystem7__cxx114path5beginEv.exit ] ; 3 uses
  %i.v = call noundef ptr @_ZNKSt10filesystem7__cxx114path5_List3endEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #25, !noalias !490 ; 3 uses
  %.pre33 = load ptr, ptr %i.c, align 8, !tbaa !24
  %.pre33.fr = freeze ptr %.pre33                 ; 3 uses
  %.pre36 = ptrtoint ptr %.pre33.fr to i64
  %.pre38 = and i64 %.pre36, 3
  %i.w = icmp eq i64 %.pre38, 0
  br i1 %i.w, label %.split, label %bb.f

.split:                                           ; preds = %_ZNKSt10filesystem7__cxx114path3endEv.exit
  %.not65 = icmp eq ptr %.sink1.i57, %i.v
  br i1 %.not65, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit, label %.lr.ph.preheader

bb.f:                                             ; preds = %_ZNKSt10filesystem7__cxx114path3endEv.exit
  br i1 %.sink.i58, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNKSt10filesystem7__cxx114path5beginEv.exit.thread, %_ZNKSt10filesystem7__cxx114path3endEv.exit.thread, %.split, %bb.f
  %5 = phi i1 [ true, %.split ], [ true, %bb.f ], [ false, %_ZNKSt10filesystem7__cxx114path3endEv.exit.thread ], [ false, %_ZNKSt10filesystem7__cxx114path5beginEv.exit.thread ]
  %.sink1.i58 = phi ptr [ %.sink1.i57, %.split ], [ %.sink1.i57, %bb.f ], [ null, %_ZNKSt10filesystem7__cxx114path3endEv.exit.thread ], [ %i.s, %_ZNKSt10filesystem7__cxx114path5beginEv.exit.thread ]
  %i.x = phi ptr [ %.pre33.fr, %.split ], [ %.pre33.fr, %bb.f ], [ %i.l, %_ZNKSt10filesystem7__cxx114path3endEv.exit.thread ], [ %.pre, %_ZNKSt10filesystem7__cxx114path5beginEv.exit.thread ]
  %.sink1.i144852 = phi ptr [ %i.v, %.split ], [ %i.v, %bb.f ], [ null, %_ZNKSt10filesystem7__cxx114path3endEv.exit.thread ], [ null, %_ZNKSt10filesystem7__cxx114path5beginEv.exit.thread ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit
  %i.y = phi ptr [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %i.x, %.lr.ph.preheader ]
  %.032 = phi i1 [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ false, %.lr.ph.preheader ]
  %.sroa.8.030 = phi ptr [ %spec.select, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.sink1.i58, %.lr.ph.preheader ] ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = and i64 %i.z, 3
  %i.ab = icmp eq i64 %i.aa, 0
  %.0.i.sroa.speculated = select i1 %i.ab, ptr %.sroa.8.030, ptr %1 ; 3 uses
  br i1 %.032, label %bb.g, label %bb.j

bb.g:                                             ; preds = %.lr.ph
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !19  ; 4 uses
  %i.ad = add i64 %i.ac, 1                        ; 3 uses
  %i.ae = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.a
  br i1 %i.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.g
  %i.ag = icmp ult i64 %i.ac, 16
  call void @llvm.assume(i1 %i.ag)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ai = phi i64 [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.aj = icmp ugt i64 %i.ad, %i.ai
  br i1 %i.aj, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ac, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.h
  %.pre.i.i = load ptr, ptr %3, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %.noexc
  %i.ak = phi ptr [ %.pre.i.i, %.noexc ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ac
  store i8 47, ptr %i.al, align 1, !tbaa !20
  store i64 %i.ad, ptr %i.b, align 8, !tbaa !19
  %i.am = load ptr, ptr %3, align 8, !tbaa !21
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ad
  store i8 0, ptr %i.an, align 1, !tbaa !20
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %.lr.ph
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.sroa.speculated, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !19 ; 2 uses
  %i.ar = load i64, ptr %i.b, align 8, !tbaa !19
  %i.as = sub i64 4611686018427387903, %i.ar
  %i.at = icmp ult i64 %i.as, %i.aq
  br i1 %i.at, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #26
          to label %.noexc16 unwind label %.loopexit.split-lp

.noexc16:                                         ; preds = %bb.k
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i: ; preds = %bb.j
  %i.au = load ptr, ptr %.0.i.sroa.speculated, align 8, !tbaa !21
  %i.av = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.au, i64 noundef %i.aq)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i.sroa.speculated, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !24
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = and i64 %i.ay, 3
  %i.ba = icmp eq i64 %i.az, 3
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !24  ; 2 uses
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = and i64 %i.bc, 3
  %i.be = icmp eq i64 %i.bd, 0                    ; 2 uses
  %spec.select.idx = select i1 %i.be, i64 48, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %.sroa.8.030, i64 %spec.select.idx ; 2 uses
  %i.bf = icmp ne ptr %spec.select, %.sink1.i144852
  %.0.i.i = select i1 %i.be, i1 %i.bf, i1 %5
  br i1 %.0.i.i, label %.lr.ph, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit, %_ZNKSt10filesystem7__cxx114path3endEv.exit.thread, %.split, %bb.f, %bb.b
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bg, ptr %0, align 8, !tbaa !22
  %i.bh = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.a
  br i1 %i.bi, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit
  %i.bj = load i64, ptr %i.b, align 8, !tbaa !19  ; 3 uses
  %i.bk = icmp ult i64 %i.bj, 16
  call void @llvm.assume(i1 %i.bk)
  %i.bl = add nuw nsw i64 %i.bj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bg, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %i.bl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit
  store ptr %i.bh, ptr %0, align 8, !tbaa !21
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !20
  store i64 %i.bm, ptr %i.bg, align 8, !tbaa !20
  %.pre34 = load i64, ptr %i.b, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bn = phi i64 [ %i.bj, %bb.l ], [ %.pre34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.m:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.i, %bb.c
  %.pn12 = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.ao, %bb.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bp = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.a
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.m
  %i.br = load i64, ptr %i.a, align 8, !tbaa !20
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %.pn12
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() local_unnamed_addr #15

; Function Attrs: nounwind
declare noundef i32 @_ZNKSt10filesystem7__cxx114path7compareERKS1_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #7

; Function Attrs: nounwind
declare i64 @_ZNSt10filesystem6statusERKNS_7__cxx114pathERSt10error_code(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #7

declare void @_ZNSt10filesystem4copyERKNS_7__cxx114pathES3_NS_12copy_optionsERSt10error_code(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40), i16 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(192) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !53     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775680
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN8hf_cache7hf_fileESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #26
  unreachable

_ZNKSt6vectorIN8hf_cache7hf_fileESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 192                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 48038396025285290)
  %i.l = select i1 %i.j, i64 48038396025285290, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 192                ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #30 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  invoke void @_ZN8hf_cache7hf_fileC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(192) %i.q, ptr noundef nonnull align 8 dereferenceable(192) %2)
          to label %_ZNSt16allocator_traitsISaIN8hf_cache7hf_fileEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN8hf_cache7hf_fileEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN8hf_cache7hf_fileESaIS1_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN8hf_cache7hf_fileEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN8hf_cache7hf_fileEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN8hf_cache7hf_fileEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 3 uses
  tail call void @_ZN8hf_cache7hf_fileC2EOS0_(ptr noundef nonnull align 8 dereferenceable(192) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(192) %.0911.i.i.i) #25
  tail call void @_ZN8hf_cache7hf_fileD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %.0911.i.i.i) #25
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 192 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !5

_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt16allocator_traitsISaIN8hf_cache7hf_fileEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN8hf_cache7hf_fileEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ], [ %i.s, %.lr.ph.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 192 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i27
  %.012.i.i.i28 = phi ptr [ %i.v, %.lr.ph.i.i.i27 ], [ %i.t, %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  %.0911.i.i.i29 = phi ptr [ %i.u, %.lr.ph.i.i.i27 ], [ %1, %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  tail call void @_ZN8hf_cache7hf_fileC2EOS0_(ptr noundef nonnull align 8 dereferenceable(192) %.012.i.i.i28, ptr noundef nonnull align 8 dereferenceable(192) %.0911.i.i.i29) #25
  tail call void @_ZN8hf_cache7hf_fileD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %.0911.i.i.i29) #25
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 192 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 192 ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.u, %i.b
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, label %.lr.ph.i.i.i27, !llvm.loop !5

_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32: ; preds = %.lr.ph.i.i.i27, %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i31 = phi ptr [ %i.t, %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.v, %.lr.ph.i.i.i27 ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i33 = icmp eq ptr %i.c, null
  br i1 %.not.i33, label %_ZNSt12_Vector_baseIN8hf_cache7hf_fileESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !52
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.z) #27
  br label %_ZNSt12_Vector_baseIN8hf_cache7hf_fileESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN8hf_cache7hf_fileESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !53
  store ptr %.0.lcssa.i.i.i31, ptr %i.a, align 8, !tbaa !51
  %i.aa = getelementptr inbounds nuw [192 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !52
  ret void

bb.d:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorIN8hf_cache7hf_fileESaIS1_EE12_M_check_lenEmPKc.exit
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  %i.ae = tail call ptr @__cxa_begin_catch(ptr %i.ad) #25 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #27
  invoke void @__cxa_rethrow() #26
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.ab

bb.g:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #29
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8hf_cache7hf_fileC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(192) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !22
  %i.h = load ptr, ptr %1, align 8, !tbaa !21     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_1
