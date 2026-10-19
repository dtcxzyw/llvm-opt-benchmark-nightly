Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/str_replace?download=true
inline.NumInlined: 160
inline.NumDeleted: 91
begin_hunk_0_@_ZN4absl12lts_2025051216strings_internal18ApplySubstitutionsESt17basic_string_viewIcSt11char_traitsIcEEPSt6vectorINS1_18ViableSubstitutionESaIS7_EEPNSt7__cxx1112basic_stringIcS4_SaIcEEE:bb.a
  %i.ai = phi ptr [ %.pre56, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread ], [ %.pre57, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ]
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -40 ; 2 uses
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !21
  br label %.critedge

bb.m:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit
  %i.ak = load ptr, ptr %2, align 8, !tbaa !22
  %i.al = ptrtoint ptr %.pre57 to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = sdiv exact i64 %i.an, 40                ; 2 uses
  %i.ap = add nsw i64 %i.ao, -1                   ; 2 uses
  %.not4149 = icmp eq i64 %i.ap, 0
  br i1 %.not4149, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m, %bb.n
  %i.aq = phi i64 [ %i.bd, %bb.n ], [ %i.ap, %bb.m ] ; 3 uses
  %.050 = phi i64 [ %i.aq, %bb.n ], [ %i.ao, %bb.m ]
  %i.ar = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.as = getelementptr [40 x i8], ptr %i.ar, i64 %.050 ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 -80    ; 3 uses
  %i.au = getelementptr inbounds nuw [40 x i8], ptr %i.ar, i64 %i.aq ; 4 uses
  %i.av = getelementptr i8, ptr %i.as, i64 -48
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !15 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !15 ; 2 uses
  %.not.i = icmp eq i64 %i.aw, %i.ay
  %i.az = icmp ult i64 %i.aw, %i.ay
  %i.ba = load i64, ptr %i.at, align 8
  %i.bb = load i64, ptr %i.au, align 8
  %i.bc = icmp ugt i64 %i.ba, %i.bb
  %.0.i = select i1 %.not.i, i1 %i.bc, i1 %i.az
  br i1 %.0.i, label %bb.n, label %.critedge.loopexit

bb.n:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %i.au, i64 40, i1 false), !tbaa.struct !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.au, ptr noundef nonnull align 8 dereferenceable(40) %i.at, i64 40, i1 false), !tbaa.struct !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.at, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !23
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.bd = add i64 %i.aq, -1                       ; 2 uses
  %.not41 = icmp eq i64 %i.bd, 0
  br i1 %.not41, label %.critedge.loopexit, label %.lr.ph, !llvm.loop !30

.critedge.loopexit:                               ; preds = %.lr.ph, %bb.n
  %.pre58 = load ptr, ptr %i.a, align 8, !tbaa !10
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.m, %bb.l
  %i.be = phi ptr [ %.pre58, %.critedge.loopexit ], [ %.pre57, %bb.m ], [ %i.aj, %bb.l ] ; 2 uses
  %i.bf = load ptr, ptr %2, align 8, !tbaa !10
  %i.bg = icmp eq ptr %i.bf, %i.be
  br i1 %i.bg, label %._crit_edge, label %bb.b, !llvm.loop !31

._crit_edge:                                      ; preds = %.critedge, %bb.a
  %.037.lcssa = phi i64 [ 0, %bb.a ], [ %.138, %.critedge ] ; 2 uses
  %.036.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %.critedge ]
  %i.bh = sub i64 %0, %.037.lcssa                 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !26
  %i.bk = sub i64 4611686018427387903, %i.bj
  %i.bl = icmp ult i64 %i.bk, %i.bh
  br i1 %i.bl, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.o:                                             ; preds = %._crit_edge
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #13
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %._crit_edge
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 %.037.lcssa
  %i.bn = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.bm, i64 noundef %i.bh) ; 0 uses
  ret i32 %.036.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051213StrReplaceAllB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEESt16initializer_listISt4pairIS4_S4_EE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr %3, i64 %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.std::initializer_list", align 8 ; 3 uses
  store ptr %3, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %4, ptr %i.a, align 8
  call void @_ZN4absl12lts_2025051213StrReplaceAllISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES7_EEEENSt7__cxx1112basic_stringIcS6_SaIcEEES7_RKT_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(16) %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2025051213StrReplaceAllISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES7_EEEENSt7__cxx1112basic_stringIcS6_SaIcEEES7_RKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector", align 8       ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @_ZN4absl12lts_2025051216strings_internal17FindSubstitutionsISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES8_EEEESt6vectorINS1_18ViableSubstitutionESaISC_EES8_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %4, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !26
  store i8 0, ptr %i.a, align 8, !tbaa !18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef i32 @_ZN4absl12lts_2025051216strings_internal18ApplySubstitutionsESt17basic_string_viewIcSt11char_traitsIcEEPSt6vectorINS1_18ViableSubstitutionESaIS7_EEPNSt7__cxx1112basic_stringIcS4_SaIcEEE(i64 %1, ptr %2, ptr noundef nonnull %4, ptr noundef nonnull %0)
          to label %bb.e unwind label %bb.c       ; 0 uses

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.a
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.g = load i64, ptr %i.a, align 8, !tbaa !18
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.i = load ptr, ptr %4, align 8, !tbaa !22     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !29
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #14
  br label %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit

_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %4, align 8, !tbaa !22     ; 3 uses
  %.not.i.i.i5 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit6, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !29
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #14
  br label %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit6

_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit6: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN4absl12lts_2025051213StrReplaceAllESt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES6_EEPNSt7__cxx1112basic_stringIcS5_SaIcEEE(ptr %0, i64 %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.std::initializer_list", align 8 ; 3 uses
  store ptr %0, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %1, ptr %i.a, align 8
  %i.b = call noundef i32 @_ZN4absl12lts_2025051213StrReplaceAllISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES7_EEEEiRKT_PNSt7__cxx1112basic_stringIcS6_SaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2)
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN4absl12lts_2025051213StrReplaceAllISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES7_EEEEiRKT_PNSt7__cxx1112basic_stringIcS6_SaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.a = load ptr, ptr %1, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !26
  call void @_ZN4absl12lts_2025051216strings_internal17FindSubstitutionsISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES8_EEEESt6vectorINS1_18ViableSubstitutionESaISC_EES8_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %2, i64 %i.c, ptr %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.d = load ptr, ptr %2, align 8, !tbaa !10     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.i, align 8, !tbaa !26
  store i8 0, ptr %i.h, align 8, !tbaa !18
  %i.j = load i64, ptr %i.b, align 8, !tbaa !26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.j)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %1, align 8, !tbaa !28
  %i.l = load i64, ptr %i.b, align 8, !tbaa !26
  %i.m = invoke noundef i32 @_ZN4absl12lts_2025051216strings_internal18ApplySubstitutionsESt17basic_string_viewIcSt11char_traitsIcEEPSt6vectorINS1_18ViableSubstitutionESaIS7_EEPNSt7__cxx1112basic_stringIcS4_SaIcEEE(i64 %i.l, ptr %i.k, ptr noundef nonnull %2, ptr noundef nonnull %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %3) #12
  %i.n = load ptr, ptr %3, align 8, !tbaa !28     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.h
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.p = load i64, ptr %i.h, align 8, !tbaa !18
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %.pr = load ptr, ptr %2, align 8, !tbaa !22
  br label %bb.g

bb.e:                                             ; preds = %bb.b, %bb.c
  %4 = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %3, align 8, !tbaa !28     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.h
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.e
  %i.t = load i64, ptr %i.h, align 8, !tbaa !18
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.v = load ptr, ptr %2, align 8, !tbaa !22     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !29
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #14
  br label %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit

_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  resume { ptr, i32 } %4

bb.g:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = phi ptr [ %i.d, %bb.a ], [ %.pr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %.0 = phi i32 [ 0, %bb.a ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.not.i.i.i18 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit19, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !29
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #14
  br label %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit19

_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit19: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret i32 %.0
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2025051216strings_internal17FindSubstitutionsISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES8_EEEESt6vectorINS1_18ViableSubstitutionESaISC_EES8_RKT_(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.absl::lts_20250512::strings_internal::ViableSubstitution", align 8 ; 4 uses
  %.fr = freeze i64 %1                            ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !39   ; 4 uses
  %i.c = icmp ugt i64 %i.b, 230584300921369395
  br i1 %i.c, label %5, label %bb.b

5:                                                ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #13
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %5
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not98 = icmp eq i64 %i.b, 0
  br i1 %.not98, label %._crit_edge, label %_ZNSt12_Vector_baseIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %6 = mul nuw nsw i64 %i.b, 40
  %7 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %6) #15
          to label %_ZNSt12_Vector_baseIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i.a unwind label %.loopexit.split-lp ; 7 uses

_ZNSt12_Vector_baseIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i.a: ; preds = %_ZNSt12_Vector_baseIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %7, ptr %0, align 8, !tbaa !22
  store ptr %7, ptr %i.e, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %7, i64 %i.b ; 4 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !29
  %.pre = load i64, ptr %i.a, align 8, !tbaa !39  ; 2 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !40     ; 2 uses
  %.idx = shl nuw nsw i64 %.pre, 5
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx
  %.not67 = icmp eq i64 %.pre, 0
  br i1 %.not67, label %._crit_edge, label %.lr.ph70

.lr.ph70:                                         ; preds = %_ZNSt12_Vector_baseIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i.a
  %.not.i.i = icmp eq i64 %.fr, 0
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.fr
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %2 to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph70.split

.lr.ph70.split:                                   ; preds = %.lr.ph70, %.critedge
  %i.m = phi ptr [ %i.bs, %.critedge ], [ %7, %.lr.ph70 ] ; 17 uses
  %.02068 = phi ptr [ %i.bv, %.critedge ], [ %i.g, %.lr.ph70 ] ; 6 uses
  %i.n = phi ptr [ %i.bu, %.critedge ], [ %i.f, %.lr.ph70 ] ; 9 uses
  %i.o = phi ptr [ %i.bt, %.critedge ], [ %7, %.lr.ph70 ] ; 15 uses
  %.sroa.0.0.copyload45 = load i64, ptr %.02068, align 8, !tbaa !16 ; 6 uses
  %.sroa.8.0..020.sroa_idx = getelementptr inbounds nuw i8, ptr %.02068, i64 8
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..020.sroa_idx, align 8, !tbaa !17 ; 4 uses
  %i.p = add i64 %.sroa.0.0.copyload45, -1
  %or.cond53.not = icmp ult i64 %i.p, %.fr
  br i1 %or.cond53.not, label %.lr.ph.i.i, label %.critedge

.lr.ph.i.i:                                       ; preds = %.lr.ph70.split
  %i.q = load i8, ptr %.sroa.8.0.copyload, align 1, !tbaa !18
  %i.r = sext i8 %i.q to i32
  %invariant.op = sub i64 1, %.sroa.0.0.copyload45
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.033.i.i = phi i64 [ %.fr, %.lr.ph.i.i ], [ %i.x, %bb.d ]
  %.02032.i.i = phi ptr [ %2, %.lr.ph.i.i ], [ %i.v, %bb.d ]
  %.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.033.i.i, %invariant.op ; 2 uses
  %i.s = icmp eq i64 %.reass.reass.i.reass.reass.i.reass.reass.reass, 0
  br i1 %i.s, label %.critedge, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.c
  %i.t = tail call ptr @memchr(ptr noundef %.02032.i.i, i32 noundef %i.r, i64 noundef %.reass.reass.i.reass.reass.i.reass.reass.reass) #12 ; 4 uses
  %.not26.i.i = icmp eq ptr %i.t, null
  br i1 %.not26.i.i, label %.critedge, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.t, ptr nonnull %.sroa.8.0.copyload, i64 %.sroa.0.0.copyload45)
  %i.u = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.u, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.j, %i.w                       ; 2 uses
  %.not25.i.i = icmp ult i64 %i.x, %.sroa.0.0.copyload45
  br i1 %.not25.i.i, label %.critedge, label %bb.c, !llvm.loop !0

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.y = ptrtoint ptr %i.t to i64
  %i.z = sub i64 %i.y, %i.k                       ; 3 uses
  %i.aa = icmp eq i64 %i.z, -1
  br i1 %i.aa, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %.02068, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ab, align 8, !tbaa !16
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.02068, i64 24
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !17
  store i64 %.sroa.0.0.copyload45, ptr %i.m, align 8, !tbaa !16
  %.sroa.22.0..sroa_idx.i7.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.sroa.8.0.copyload, ptr %.sroa.22.0..sroa_idx.i7.i, align 8, !tbaa !17
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.ac, align 8, !tbaa !16
  %.sroa.2.0..sroa_idx.i8.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %.sroa.2.0.copyload.i.i, ptr %.sroa.2.0..sroa_idx.i8.i, align 8, !tbaa !17
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i64 %i.z, ptr %i.ad, align 8, !tbaa !15
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 2 uses
  store ptr %i.ae, ptr %i.l, align 8, !tbaa !21
  br label %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.af = ptrtoint ptr %i.m to i64
  %i.ag = ptrtoint ptr %i.o to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775800
  br i1 %i.ai, label %bb.h, label %_ZNKSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.n, ptr %i.d, align 8
  store ptr %i.o, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #13
          to label %.noexc42 unwind label %.loopexit.split-lp

.noexc42:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.g
  %i.aj = sdiv exact i64 %i.ah, 40                ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.ak = add nsw i64 %.sroa.speculated.i.i, %i.aj ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.aj
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 230584300921369395)
  %i.an = select i1 %i.al, i64 230584300921369395, i64 %i.am ; 3 uses
  %.not.i.i28 = icmp ne i64 %i.an, 0
  tail call void @llvm.assume(i1 %.not.i.i28)
  %i.ao = mul nuw nsw i64 %i.an, 40
  %i.ap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #15
          to label %.noexc43 unwind label %.loopexit ; 5 uses

.noexc43:                                         ; preds = %_ZNKSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ah ; 5 uses
  %.sroa.0.0.copyload.i.i32 = load i64, ptr %i.ab, align 8, !tbaa !16
  %.sroa.2.0..sroa_idx.i.i33 = getelementptr inbounds nuw i8, ptr %.02068, i64 24
  %.sroa.2.0.copyload.i.i34 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i33, align 8, !tbaa !17
  store i64 %.sroa.0.0.copyload45, ptr %i.aq, align 8, !tbaa !16
  %.sroa.22.0..sroa_idx.i28.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %.sroa.8.0.copyload, ptr %.sroa.22.0..sroa_idx.i28.i, align 8, !tbaa !17
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i64 %.sroa.0.0.copyload.i.i32, ptr %i.ar, align 8, !tbaa !16
  %.sroa.2.0..sroa_idx.i29.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %.sroa.2.0.copyload.i.i34, ptr %.sroa.2.0..sroa_idx.i29.i, align 8, !tbaa !17
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store i64 %i.z, ptr %i.as, align 8, !tbaa !15
  %.not10.i.i.i.i35 = icmp eq ptr %i.o, %i.m
  br i1 %.not10.i.i.i.i35, label %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit36.i, label %.lr.ph.i.i.i.i36

.lr.ph.i.i.i.i36:                                 ; preds = %.noexc43, %.lr.ph.i.i.i.i36
  %.012.i.i.i.i37 = phi ptr [ %i.au, %.lr.ph.i.i.i.i36 ], [ %i.ap, %.noexc43 ] ; 2 uses
  %.0911.i.i.i.i38 = phi ptr [ %i.at, %.lr.ph.i.i.i.i36 ], [ %i.o, %.noexc43 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i37, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i38, i64 40, i1 false), !tbaa.struct !23, !alias.scope !41
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i38, i64 40 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i37, i64 40 ; 2 uses
  %.not.i.i.i.i39 = icmp eq ptr %i.at, %i.m
  br i1 %.not.i.i.i.i39, label %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit36.i, label %.lr.ph.i.i.i.i36, !llvm.loop !35

_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit36.i: ; preds = %.lr.ph.i.i.i.i36, %.noexc43
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ap, %.noexc43 ], [ %i.au, %.lr.ph.i.i.i.i36 ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 40 ; 2 uses
  %.not.i37.i = icmp eq ptr %i.o, null
  br i1 %.not.i37.i, label %.noexc26, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit36.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.ah) #14
  br label %.noexc26

.noexc26:                                         ; preds = %bb.i, %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit36.i
  store ptr %i.av, ptr %i.l, align 8, !tbaa !21
  %i.aw = getelementptr inbounds nuw [40 x i8], ptr %i.ap, i64 %i.an
  br label %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit

_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit: ; preds = %.noexc26, %bb.f
  %i.ax = phi ptr [ %i.av, %.noexc26 ], [ %i.ae, %bb.f ] ; 4 uses
  %i.ay = phi ptr [ %i.ap, %.noexc26 ], [ %i.o, %bb.f ] ; 6 uses
  %i.az = phi ptr [ %i.aw, %.noexc26 ], [ %i.n, %bb.f ] ; 3 uses
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = sdiv exact i64 %i.bc, 40                ; 2 uses
  %i.be = add nsw i64 %i.bd, -1                   ; 2 uses
  %.not2457 = icmp eq i64 %i.be, 0
  br i1 %.not2457, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit, %bb.j
  %i.bf = phi i64 [ %i.br, %bb.j ], [ %i.be, %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit ] ; 3 uses
  %.058 = phi i64 [ %i.bf, %bb.j ], [ %i.bd, %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit ]
  %i.bg = getelementptr [40 x i8], ptr %i.ay, i64 %.058 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 -80    ; 3 uses
  %i.bi = getelementptr inbounds nuw [40 x i8], ptr %i.ay, i64 %i.bf ; 4 uses
  %i.bj = getelementptr i8, ptr %i.bg, i64 -48
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !15 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !15 ; 2 uses
  %.not.i27 = icmp eq i64 %i.bk, %i.bm
  %i.bn = icmp ult i64 %i.bk, %i.bm
  %i.bo = load i64, ptr %i.bh, align 8
  %i.bp = load i64, ptr %i.bi, align 8
  %i.bq = icmp ugt i64 %i.bo, %i.bp
  %.0.i = select i1 %.not.i27, i1 %i.bq, i1 %i.bn
  br i1 %.0.i, label %bb.j, label %.critedge

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %i.bi, i64 40, i1 false), !tbaa.struct !23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bi, ptr noundef nonnull align 8 dereferenceable(40) %i.bh, i64 40, i1 false), !tbaa.struct !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bh, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !23
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.br = add i64 %i.bf, -1                       ; 2 uses
  %.not24 = icmp eq i64 %i.br, 0
  br i1 %.not24, label %.critedge, label %.lr.ph, !llvm.loop !36

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.n, ptr %i.d, align 8
  store ptr %i.o, ptr %0, align 8
  br label %10

.loopexit.split-lp:                               ; preds = %bb.h, %_ZNSt12_Vector_baseIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i, %5
  %8 = phi ptr [ %i.m, %bb.h ], [ null, %_ZNSt12_Vector_baseIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i ], [ null, %5 ]
  %9 = phi ptr [ %i.o, %bb.h ], [ null, %_ZNSt12_Vector_baseIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i ], [ null, %5 ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %10

10:                                               ; preds = %.loopexit.split-lp, %.loopexit
  %11 = phi ptr [ %i.m, %.loopexit ], [ %8, %.loopexit.split-lp ]
  %12 = phi ptr [ %i.o, %.loopexit ], [ %9, %.loopexit.split-lp ] ; 3 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i = icmp eq ptr %12, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit, label %bb.k

.critedge:                                        ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.d, %bb.c, %bb.j, %.lr.ph, %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, %.lr.ph70.split
  %i.bs = phi ptr [ %i.ax, %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit ], [ %i.m, %.lr.ph70.split ], [ %i.m, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ %i.ax, %bb.j ], [ %i.ax, %.lr.ph ], [ %i.m, %bb.c ], [ %i.m, %bb.d ], [ %i.m, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ]
  %i.bt = phi ptr [ %i.ay, %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit ], [ %i.o, %.lr.ph70.split ], [ %i.o, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ %i.ay, %bb.j ], [ %i.ay, %.lr.ph ], [ %i.o, %bb.c ], [ %i.o, %bb.d ], [ %i.o, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ] ; 2 uses
  %i.bu = phi ptr [ %i.az, %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit ], [ %i.n, %.lr.ph70.split ], [ %i.n, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ %i.az, %bb.j ], [ %i.az, %.lr.ph ], [ %i.n, %bb.c ], [ %i.n, %bb.d ], [ %i.n, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.02068, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.bv, %i.h
  br i1 %.not, label %._crit_edge, label %.lr.ph70.split

._crit_edge:                                      ; preds = %.critedge, %bb.b, %.lr.ph70, %_ZNSt12_Vector_baseIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i.a
  %.lcssa64 = phi ptr [ %7, %_ZNSt12_Vector_baseIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i.a ], [ null, %bb.b ], [ %7, %.lr.ph70 ], [ %i.bt, %.critedge ]
  %.lcssa60 = phi ptr [ %i.f, %_ZNSt12_Vector_baseIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i.a ], [ null, %bb.b ], [ %i.f, %.lr.ph70 ], [ %i.bu, %.critedge ]
  store ptr %.lcssa60, ptr %i.d, align 8
  store ptr %.lcssa64, ptr %0, align 8
  ret void

bb.k:                                             ; preds = %10
  %i.bw = ptrtoint ptr %11 to i64
  %i.bx = ptrtoint ptr %12 to i64
  %i.by = sub i64 %i.bw, %i.bx
  tail call void @_ZdlPvm(ptr noundef nonnull %12, i64 noundef %i.by) #14
  br label %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit

_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit: ; preds = %10, %bb.k
  resume { ptr, i32 } %lpad.phi
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { noreturn }
attributes #14 = { builtin nounwind }
attributes #15 = { builtin allocsize(0) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = distinct !{!0, !19}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!"p1 _ZTSN4absl12lts_2025051216strings_internal18ViableSubstitutionE", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"p1 omnipotent char", !8, i64 0}
!13 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !11, i64 0, !12, i64 8}
!14 = !{!"_ZTSN4absl12lts_2025051216strings_internal18ViableSubstitutionE", !13, i64 0, !13, i64 16, !11, i64 32}
!15 = !{!14, !11, i64 32}
!16 = !{!11, !11, i64 0}
!17 = !{!12, !12, i64 0}
!18 = !{!5, !5, i64 0}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"_ZTSNSt12_Vector_baseIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE17_Vector_impl_dataE", !9, i64 0, !9, i64 8, !9, i64 16}
!21 = !{!20, !9, i64 8}
!22 = !{!20, !9, i64 0}
!23 = !{i64 0, i64 8, !16, i64 8, i64 8, !17, i64 16, i64 8, !16, i64 24, i64 8, !17, i64 32, i64 8, !16}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !24, i64 0, !11, i64 8, !5, i64 16}
!26 = !{!25, !11, i64 8}
!27 = !{!24, !12, i64 0}
!28 = !{!25, !12, i64 0}
!29 = !{!20, !9, i64 16}
!30 = distinct !{!30, !19}
!31 = distinct !{!31, !19}
!32 = distinct !{!32, i1 true, !"_ZSt19__relocate_object_aIN4absl12lts_2025051216strings_internal18ViableSubstitutionES3_SaIS3_EEvPT_PT0_RT1_"}
!33 = distinct !{!33, !32, !"_ZSt19__relocate_object_aIN4absl12lts_2025051216strings_internal18ViableSubstitutionES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!34 = distinct !{!34, !32, !"_ZSt19__relocate_object_aIN4absl12lts_2025051216strings_internal18ViableSubstitutionES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!35 = distinct !{!35, !19}
!36 = distinct !{!36, !19}
!37 = !{!"p1 _ZTSSt4pairISt17basic_string_viewIcSt11char_traitsIcEES3_E", !8, i64 0}
!38 = !{!"_ZTSSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES4_EE", !37, i64 0, !11, i64 8}
!39 = !{!38, !11, i64 8}
!40 = !{!38, !37, i64 0}
!41 = !{!34, !33}
end_hunk_0
