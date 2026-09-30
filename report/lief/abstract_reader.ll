Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/abstract_reader?download=true
inline.NumInlined: 399
inline.NumDeleted: 255
begin_hunk_0_@main:bb.a
  %i.nw = load ptr, ptr %15, align 8, !tbaa !58   ; 2 uses
  %.not.i.i.i.i215 = icmp eq ptr %i.nw, null
  br i1 %.not.i.i.i.i215, label %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_10RelocationESaIS3_EES3_N9__gnu_cxx17__normal_iteratorIPKS3_S5_EEED2Ev.exit216, label %bb.dk

bb.dk:                                            ; preds = %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_10RelocationESaIS3_EES3_N9__gnu_cxx17__normal_iteratorIPKS3_S5_EEED2Ev.exit214
  call void @_ZdlPv(ptr noundef nonnull %i.nw) #13
  br label %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_10RelocationESaIS3_EES3_N9__gnu_cxx17__normal_iteratorIPKS3_S5_EEED2Ev.exit216

_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_10RelocationESaIS3_EES3_N9__gnu_cxx17__normal_iteratorIPKS3_S5_EEED2Ev.exit216: ; preds = %bb.dk, %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_10RelocationESaIS3_EES3_N9__gnu_cxx17__normal_iteratorIPKS3_S5_EEED2Ev.exit214, %bb.db
  %.pn46.pn.pn = phi { ptr, i32 } [ %i.mr, %bb.db ], [ %.pn46.pn, %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_10RelocationESaIS3_EES3_N9__gnu_cxx17__normal_iteratorIPKS3_S5_EEED2Ev.exit214 ], [ %.pn46.pn, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  %i.nx = load ptr, ptr %14, align 8, !tbaa !58   ; 2 uses
  %.not.i.i.i.i217 = icmp eq ptr %i.nx, null
  br i1 %.not.i.i.i.i217, label %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_10RelocationESaIS3_EES3_N9__gnu_cxx17__normal_iteratorIPKS3_S5_EEED2Ev.exit218, label %bb.dl

bb.dl:                                            ; preds = %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_10RelocationESaIS3_EES3_N9__gnu_cxx17__normal_iteratorIPKS3_S5_EEED2Ev.exit216
  call void @_ZdlPv(ptr noundef nonnull %i.nx) #13
  br label %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_10RelocationESaIS3_EES3_N9__gnu_cxx17__normal_iteratorIPKS3_S5_EEED2Ev.exit218

_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_10RelocationESaIS3_EES3_N9__gnu_cxx17__normal_iteratorIPKS3_S5_EEED2Ev.exit218: ; preds = %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_10RelocationESaIS3_EES3_N9__gnu_cxx17__normal_iteratorIPKS3_S5_EEED2Ev.exit216, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  br label %bb.dm

bb.dm:                                            ; preds = %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_10RelocationESaIS3_EES3_N9__gnu_cxx17__normal_iteratorIPKS3_S5_EEED2Ev.exit218, %bb.cr, %bb.ci, %bb.by, %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_6SymbolESaIS3_EES3_N9__gnu_cxx17__normal_iteratorIPKS3_S5_EEED2Ev.exit139, %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_7SectionESaIS3_EES3_N9__gnu_cxx17__normal_iteratorIPKS3_S5_EEED2Ev.exit114, %bb.af
  %.pn62.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn, %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_7SectionESaIS3_EES3_N9__gnu_cxx17__normal_iteratorIPKS3_S5_EEED2Ev.exit114 ], [ %.pn57.pn.pn, %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_6SymbolESaIS3_EES3_N9__gnu_cxx17__normal_iteratorIPKS3_S5_EEED2Ev.exit139 ], [ %i.it, %bb.by ], [ %i.jz, %bb.ci ], [ %i.li, %bb.cr ], [ %.pn46.pn.pn, %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_10RelocationESaIS3_EES3_N9__gnu_cxx17__normal_iteratorIPKS3_S5_EEED2Ev.exit218 ], [ %i.dq, %bb.af ] ; 2 uses
  %.not.i219 = icmp eq ptr %i.bi, null
  br i1 %.not.i219, label %_ZNSt10unique_ptrIKN4LIEF6BinaryESt14default_deleteIS2_EED2Ev.exit221, label %_ZNKSt14default_deleteIKN4LIEF6BinaryEEclEPS2_.exit.i220

_ZNKSt14default_deleteIKN4LIEF6BinaryEEclEPS2_.exit.i220: ; preds = %bb.ai, %bb.aj, %bb.bd, %bb.bt, %bb.cd, %bb.cn, %bb.da, %bb.dm
  %.pn62.pn.pn.pn.pn245 = phi { ptr, i32 } [ %.pn62.pn.pn.pn.pn, %bb.dm ], [ %i.mq, %bb.da ], [ %i.ku, %bb.cn ], [ %i.jo, %bb.cd ], [ %i.ii, %bb.bt ], [ %i.gg, %bb.bd ], [ %i.dt, %bb.aj ], [ %.pn44, %bb.ai ]
  %i.ny = load ptr, ptr %i.bi, align 8, !tbaa !12
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 24
  %i.oa = load ptr, ptr %i.nz, align 8
  call void %i.oa(ptr noundef nonnull align 8 dereferenceable(88) %i.bi) #11, !inline_history !88
  br label %_ZNSt10unique_ptrIKN4LIEF6BinaryESt14default_deleteIS2_EED2Ev.exit221

_ZNSt10unique_ptrIKN4LIEF6BinaryESt14default_deleteIS2_EED2Ev.exit221: ; preds = %_ZNKSt14default_deleteIKN4LIEF6BinaryEEclEPS2_.exit.i220, %bb.dm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103
  %.pn62.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ], [ %.pn62.pn.pn.pn.pn, %bb.dm ], [ %.pn62.pn.pn.pn.pn245, %_ZNKSt14default_deleteIKN4LIEF6BinaryEEclEPS2_.exit.i220 ]
  resume { ptr, i32 } %.pn62.pn.pn.pn.pn.pn

bb.dn:                                            ; preds = %_ZNSt10unique_ptrIKN4LIEF6BinaryESt14default_deleteIS2_EED2Ev.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit72
  %.042 = phi i32 [ -1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit72 ], [ 0, %_ZNSt10unique_ptrIKN4LIEF6BinaryESt14default_deleteIS2_EED2Ev.exit ]
  ret i32 %.042
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN4LIEF6Parser5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.2") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEFlsERSoRKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4LIEF6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4LIEF6Binary8sectionsEv(ptr dead_on_unwind noalias writable sret(%"class.LIEF::ref_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %2, ptr noundef nonnull align 8 dereferenceable(88) %1)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22   ; 2 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !23     ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i.i, label %.noexc2, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.i, 9223372036854775800
  br i1 %i.j, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIPN4LIEF7SectionEE8allocateEmPKv.exit.i.i.i.i.i, !prof !68

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #12
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIPN4LIEF7SectionEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #14
          to label %_ZNSt15__new_allocatorIPN4LIEF7SectionEE8allocateEmPKv.exit.i.i.i.i.i..noexc2_crit_edge unwind label %bb.g

_ZNSt15__new_allocatorIPN4LIEF7SectionEE8allocateEmPKv.exit.i.i.i.i.i..noexc2_crit_edge: ; preds = %_ZNSt15__new_allocatorIPN4LIEF7SectionEE8allocateEmPKv.exit.i.i.i.i.i
  %.pre = load ptr, ptr %2, align 8, !tbaa !27    ; 2 uses
  %.pre6 = load ptr, ptr %i.d, align 8, !tbaa !27
  %.pre7 = ptrtoint ptr %.pre6 to i64
  %.pre8 = ptrtoint ptr %.pre to i64
  br label %.noexc2

.noexc2:                                          ; preds = %_ZNSt15__new_allocatorIPN4LIEF7SectionEE8allocateEmPKv.exit.i.i.i.i.i..noexc2_crit_edge, %bb.a
  %.pre-phi9 = phi i64 [ %.pre8, %_ZNSt15__new_allocatorIPN4LIEF7SectionEE8allocateEmPKv.exit.i.i.i.i.i..noexc2_crit_edge ], [ %i.h, %bb.a ]
  %.pre-phi = phi i64 [ %.pre7, %_ZNSt15__new_allocatorIPN4LIEF7SectionEE8allocateEmPKv.exit.i.i.i.i.i..noexc2_crit_edge ], [ %i.g, %bb.a ]
  %i.l = phi ptr [ %.pre, %_ZNSt15__new_allocatorIPN4LIEF7SectionEE8allocateEmPKv.exit.i.i.i.i.i..noexc2_crit_edge ], [ %i.f, %bb.a ] ; 4 uses
  %i.m = phi ptr [ %i.k, %_ZNSt15__new_allocatorIPN4LIEF7SectionEE8allocateEmPKv.exit.i.i.i.i.i..noexc2_crit_edge ], [ null, %bb.a ] ; 8 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !69
  %i.q = sub i64 %.pre-phi, %.pre-phi9            ; 4 uses
  %i.r = icmp sgt i64 %i.q, 8
  br i1 %i.r, label %bb.c, label %bb.d, !prof !70

bb.c:                                             ; preds = %.noexc2
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.m, ptr align 8 %i.l, i64 %i.q, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %.noexc2
  %i.s = icmp eq i64 %i.q, 8
  br i1 %i.s, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !26
  store ptr %i.t, ptr %i.m, align 8, !tbaa !26
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.u, ptr %i.n, align 8, !tbaa !22
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.m, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.w, align 8, !tbaa !32
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.x = getelementptr inbounds i8, ptr %i.m, i64 %i.q
  store ptr %i.x, ptr %i.n, align 8, !tbaa !22
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.m, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.z, align 8, !tbaa !32
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4LIEF7SectionESaIS2_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e
  call void @_ZdlPv(ptr noundef nonnull %i.l) #13
  br label %_ZNSt6vectorIPN4LIEF7SectionESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4LIEF7SectionESaIS2_EED2Ev.exit:   ; preds = %bb.e, %bb.f
  ret void

bb.g:                                             ; preds = %_ZNSt15__new_allocatorIPN4LIEF7SectionEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %2, align 8, !tbaa !23    ; 2 uses
  %.not.i.i.i3 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIPN4LIEF7SectionESaIS2_EED2Ev.exit4, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdlPv(ptr noundef nonnull %i.ab) #13
  br label %_ZNSt6vectorIPN4LIEF7SectionESaIS2_EED2Ev.exit4

_ZNSt6vectorIPN4LIEF7SectionESaIS2_EED2Ev.exit4:  ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %i.aa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4LIEF12ref_iteratorIKSt6vectorIPNS_7SectionESaIS3_EES3_N9__gnu_cxx17__normal_iteratorIPKS3_S5_EEE5beginEv(ptr dead_on_unwind noalias writable sret(%"class.LIEF::ref_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !23     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIPN4LIEF7SectionEE8allocateEmPKv.exit.i.i.i.i, !prof !68

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #12
  unreachable

_ZNSt15__new_allocatorIPN4LIEF7SectionEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #14
  %.pre = load ptr, ptr %1, align 8, !tbaa !27    ; 3 uses
  %.pre11 = load ptr, ptr %i.a, align 8, !tbaa !27 ; 2 uses
  %.pre12 = ptrtoint ptr %.pre11 to i64
  %.pre13 = ptrtoint ptr %.pre to i64
  %i.i = icmp eq ptr %.pre11, %.pre
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIPN4LIEF7SectionEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi14 = phi i64 [ %.pre13, %_ZNSt15__new_allocatorIPN4LIEF7SectionEE8allocateEmPKv.exit.i.i.i.i ], [ %i.e, %bb.a ]
  %.pre-phi = phi i64 [ %.pre12, %_ZNSt15__new_allocatorIPN4LIEF7SectionEE8allocateEmPKv.exit.i.i.i.i ], [ %i.d, %bb.a ]
  %.not.i.i.i.i.i = phi i1 [ %i.i, %_ZNSt15__new_allocatorIPN4LIEF7SectionEE8allocateEmPKv.exit.i.i.i.i ], [ true, %bb.a ] ; 2 uses
  %i.j = phi ptr [ %.pre, %_ZNSt15__new_allocatorIPN4LIEF7SectionEE8allocateEmPKv.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.k = phi ptr [ %i.h, %_ZNSt15__new_allocatorIPN4LIEF7SectionEE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 8 uses
  %i.l = sub i64 %.pre-phi, %.pre-phi14           ; 10 uses
  %i.m = icmp sgt i64 %i.l, 8
  br i1 %i.m, label %bb.d, label %bb.e, !prof !70

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.k, ptr align 8 %i.j, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIPN4LIEF7SectionESaIS2_EEC2ERKS4_.exit

bb.e:                                             ; preds = %bb.c
  %i.n = icmp eq i64 %i.l, 8
  br i1 %i.n, label %_ZNSt6vectorIPN4LIEF7SectionESaIS2_EEC2ERKS4_.exit.thread, label %_ZNSt6vectorIPN4LIEF7SectionESaIS2_EEC2ERKS4_.exit

_ZNSt6vectorIPN4LIEF7SectionESaIS2_EEC2ERKS4_.exit: ; preds = %bb.d, %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.f

_ZNSt6vectorIPN4LIEF7SectionESaIS2_EEC2ERKS4_.exit.thread: ; preds = %bb.e
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !26
  store ptr %i.o, ptr %i.k, align 8, !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %.thread, label %_ZNSt15__new_allocatorIPN4LIEF7SectionEE8allocateEmPKv.exit.i.i.i.i.i

.thread:                                          ; preds = %_ZNSt6vectorIPN4LIEF7SectionESaIS2_EEC2ERKS4_.exit.thread, %_ZNSt6vectorIPN4LIEF7SectionESaIS2_EEC2ERKS4_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = getelementptr inbounds i8, ptr null, i64 %i.l ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.q, ptr %i.r, align 8, !tbaa !69
  br label %bb.i

bb.f:                                             ; preds = %_ZNSt6vectorIPN4LIEF7SectionESaIS2_EEC2ERKS4_.exit
  %i.s = icmp ugt i64 %i.l, 9223372036854775800
  br i1 %i.s, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIPN4LIEF7SectionEE8allocateEmPKv.exit.i.i.i.i.i, !prof !71

.noexc.i.i.i:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #12
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIPN4LIEF7SectionEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIPN4LIEF7SectionESaIS2_EEC2ERKS4_.exit.thread, %bb.f
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #14
          to label %.noexc2 unwind label %bb.k    ; 7 uses

.noexc2:                                          ; preds = %_ZNSt15__new_allocatorIPN4LIEF7SectionEE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.t, ptr %0, align 8, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.v, ptr %i.w, align 8, !tbaa !69
  %2 = icmp samesign ugt i64 %i.l, 8
  br i1 %2, label %bb.g, label %bb.h, !prof !72

bb.g:                                             ; preds = %.noexc2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.k, i64 %i.l, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %.noexc2
  %i.x = icmp eq i64 %i.l, 8
  br i1 %i.x, label %.thread9, label %bb.i

.thread9:                                         ; preds = %bb.h
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !26
  store ptr %i.y, ptr %i.t, align 8, !tbaa !26
  store ptr %i.v, ptr %i.u, align 8, !tbaa !22
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.t, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.aa, align 8, !tbaa !32
  br label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g, %.thread
  %i.ab = phi ptr [ %i.v, %bb.g ], [ %i.v, %bb.h ], [ %i.q, %.thread ]
  %i.ac = phi ptr [ %i.u, %bb.g ], [ %i.u, %bb.h ], [ %i.p, %.thread ]
  %i.ad = phi ptr [ %i.t, %bb.g ], [ %i.t, %bb.h ], [ null, %.thread ]
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !22
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ad, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.af, align 8, !tbaa !32
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4LIEF7SectionESaIS2_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.thread9, %bb.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #13
  br label %_ZNSt6vectorIPN4LIEF7SectionESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4LIEF7SectionESaIS2_EED2Ev.exit:   ; preds = %bb.i, %bb.j
  ret void

bb.k:                                             ; preds = %_ZNSt15__new_allocatorIPN4LIEF7SectionEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i3 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIPN4LIEF7SectionESaIS2_EED2Ev.exit4, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #13
  br label %_ZNSt6vectorIPN4LIEF7SectionESaIS2_EED2Ev.exit4

_ZNSt6vectorIPN4LIEF7SectionESaIS2_EED2Ev.exit4:  ; preds = %bb.k, %bb.l
  resume { ptr, i32 } %i.ag
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4LIEF12ref_iteratorIKSt6vectorIPNS_7SectionESaIS3_EES3_N9__gnu_cxx17__normal_iteratorIPKS3_S5_EEE3endEv(ptr dead_on_unwind noalias writable sret(%"class.LIEF::ref_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !23     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIPN4LIEF7SectionEE8allocateEmPKv.exit.i.i.i.i, !prof !68

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #12
  unreachable

_ZNSt15__new_allocatorIPN4LIEF7SectionEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #14
  %.pre = load ptr, ptr %1, align 8, !tbaa !27    ; 3 uses
  %.pre12 = load ptr, ptr %i.a, align 8, !tbaa !27 ; 2 uses
  %.pre13 = ptrtoint ptr %.pre12 to i64
  %.pre14 = ptrtoint ptr %.pre to i64
  %i.i = icmp eq ptr %.pre12, %.pre
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIPN4LIEF7SectionEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi15 = phi i64 [ %.pre14, %_ZNSt15__new_allocatorIPN4LIEF7SectionEE8allocateEmPKv.exit.i.i.i.i ], [ %i.e, %bb.a ]
  %.pre-phi = phi i64 [ %.pre13, %_ZNSt15__new_allocatorIPN4LIEF7SectionEE8allocateEmPKv.exit.i.i.i.i ], [ %i.d, %bb.a ]
  %.not.i.i.i.i.i = phi i1 [ %i.i, %_ZNSt15__new_allocatorIPN4LIEF7SectionEE8allocateEmPKv.exit.i.i.i.i ], [ true, %bb.a ] ; 2 uses
  %i.j = phi ptr [ %.pre, %_ZNSt15__new_allocatorIPN4LIEF7SectionEE8allocateEmPKv.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.k = phi ptr [ %i.h, %_ZNSt15__new_allocatorIPN4LIEF7SectionEE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 8 uses
  %i.l = sub i64 %.pre-phi, %.pre-phi15           ; 10 uses
  %i.m = icmp sgt i64 %i.l, 8
  br i1 %i.m, label %bb.d, label %bb.e, !prof !70

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.k, ptr align 8 %i.j, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIPN4LIEF7SectionESaIS2_EEC2ERKS4_.exit

bb.e:                                             ; preds = %bb.c
  %i.n = icmp eq i64 %i.l, 8
  br i1 %i.n, label %_ZNSt6vectorIPN4LIEF7SectionESaIS2_EEC2ERKS4_.exit.thread, label %_ZNSt6vectorIPN4LIEF7SectionESaIS2_EEC2ERKS4_.exit

_ZNSt6vectorIPN4LIEF7SectionESaIS2_EEC2ERKS4_.exit: ; preds = %bb.d, %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.f

_ZNSt6vectorIPN4LIEF7SectionESaIS2_EEC2ERKS4_.exit.thread: ; preds = %bb.e
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !26
  store ptr %i.o, ptr %i.k, align 8, !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %.thread, label %_ZNSt15__new_allocatorIPN4LIEF7SectionEE8allocateEmPKv.exit.i.i.i.i.i

.thread:                                          ; preds = %_ZNSt6vectorIPN4LIEF7SectionESaIS2_EEC2ERKS4_.exit.thread, %_ZNSt6vectorIPN4LIEF7SectionESaIS2_EEC2ERKS4_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = getelementptr inbounds i8, ptr null, i64 %i.l ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.q, ptr %i.r, align 8, !tbaa !69
  br label %bb.i

bb.f:                                             ; preds = %_ZNSt6vectorIPN4LIEF7SectionESaIS2_EEC2ERKS4_.exit
  %i.s = icmp ugt i64 %i.l, 9223372036854775800
  br i1 %i.s, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIPN4LIEF7SectionEE8allocateEmPKv.exit.i.i.i.i.i, !prof !71

.noexc.i.i.i:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #12
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIPN4LIEF7SectionEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIPN4LIEF7SectionESaIS2_EEC2ERKS4_.exit.thread, %bb.f
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #14
          to label %.noexc3 unwind label %bb.k    ; 8 uses

.noexc3:                                          ; preds = %_ZNSt15__new_allocatorIPN4LIEF7SectionEE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.t, ptr %0, align 8, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.v, ptr %i.w, align 8, !tbaa !69
  %2 = icmp samesign ugt i64 %i.l, 8
  br i1 %2, label %bb.g, label %bb.h, !prof !72

bb.g:                                             ; preds = %.noexc3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.k, i64 %i.l, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %.noexc3
  %i.x = icmp eq i64 %i.l, 8
  br i1 %i.x, label %.thread10, label %bb.i

.thread10:                                        ; preds = %bb.h
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !26
  store ptr %i.y, ptr %i.t, align 8, !tbaa !26
  store ptr %i.v, ptr %i.u, align 8, !tbaa !22
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.t, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 0, ptr %i.aa, align 8, !tbaa !32
  br label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g, %.thread
  %i.ab = phi ptr [ %i.v, %bb.g ], [ %i.v, %bb.h ], [ %i.q, %.thread ] ; 3 uses
  %i.ac = phi ptr [ %i.u, %bb.g ], [ %i.u, %bb.h ], [ %i.p, %.thread ]
  %i.ad = phi ptr [ %i.t, %bb.g ], [ %i.t, %bb.h ], [ null, %.thread ] ; 3 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !22
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.ad, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store i64 0, ptr %i.af, align 8, !tbaa !32
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4LIEF7SectionESaIS2_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.thread10, %bb.i
  %i.ag = phi ptr [ %i.aa, %.thread10 ], [ %i.af, %bb.i ]
  %i.ah = phi ptr [ %i.z, %.thread10 ], [ %i.ae, %bb.i ]
  %i.ai = phi ptr [ %i.t, %.thread10 ], [ %i.ad, %bb.i ]
  %i.aj = phi ptr [ %i.v, %.thread10 ], [ %i.ab, %bb.i ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #13
  br label %_ZNSt6vectorIPN4LIEF7SectionESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4LIEF7SectionESaIS2_EED2Ev.exit:   ; preds = %bb.i, %bb.j
  %i.ak = phi ptr [ %i.af, %bb.i ], [ %i.ag, %bb.j ]
  %i.al = phi ptr [ %i.ae, %bb.i ], [ %i.ah, %bb.j ]
  %i.am = phi ptr [ %i.ad, %bb.i ], [ %i.ai, %bb.j ]
  %i.an = phi ptr [ %i.ab, %bb.i ], [ %i.aj, %bb.j ] ; 2 uses
  store ptr %i.an, ptr %i.al, align 8, !tbaa !27
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3
  store i64 %i.ar, ptr %i.ak, align 8, !tbaa !32
  ret void

bb.k:                                             ; preds = %_ZNSt15__new_allocatorIPN4LIEF7SectionEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i4 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIPN4LIEF7SectionESaIS2_EED2Ev.exit5, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #13
  br label %_ZNSt6vectorIPN4LIEF7SectionESaIS2_EED2Ev.exit5

_ZNSt6vectorIPN4LIEF7SectionESaIS2_EED2Ev.exit5:  ; preds = %bb.k, %bb.l
  resume { ptr, i32 } %i.as
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEFlsERSoRKNS_7SectionE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4LIEF6Binary7symbolsEv(ptr dead_on_unwind noalias writable sret(%"class.LIEF::ref_iterator.26") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.27", align 8    ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.27") align 8 %2, ptr noundef nonnull align 8 dereferenceable(88) %1)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35   ; 2 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !36     ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i.i, label %.noexc2, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.i, 9223372036854775800
  br i1 %i.j, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIPN4LIEF6SymbolEE8allocateEmPKv.exit.i.i.i.i.i, !prof !68

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #12
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIPN4LIEF6SymbolEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #14
          to label %_ZNSt15__new_allocatorIPN4LIEF6SymbolEE8allocateEmPKv.exit.i.i.i.i.i..noexc2_crit_edge unwind label %bb.g

_ZNSt15__new_allocatorIPN4LIEF6SymbolEE8allocateEmPKv.exit.i.i.i.i.i..noexc2_crit_edge: ; preds = %_ZNSt15__new_allocatorIPN4LIEF6SymbolEE8allocateEmPKv.exit.i.i.i.i.i
  %.pre = load ptr, ptr %2, align 8, !tbaa !40    ; 2 uses
  %.pre6 = load ptr, ptr %i.d, align 8, !tbaa !40
  %.pre7 = ptrtoint ptr %.pre6 to i64
  %.pre8 = ptrtoint ptr %.pre to i64
  br label %.noexc2

.noexc2:                                          ; preds = %_ZNSt15__new_allocatorIPN4LIEF6SymbolEE8allocateEmPKv.exit.i.i.i.i.i..noexc2_crit_edge, %bb.a
  %.pre-phi9 = phi i64 [ %.pre8, %_ZNSt15__new_allocatorIPN4LIEF6SymbolEE8allocateEmPKv.exit.i.i.i.i.i..noexc2_crit_edge ], [ %i.h, %bb.a ]
  %.pre-phi = phi i64 [ %.pre7, %_ZNSt15__new_allocatorIPN4LIEF6SymbolEE8allocateEmPKv.exit.i.i.i.i.i..noexc2_crit_edge ], [ %i.g, %bb.a ]
  %i.l = phi ptr [ %.pre, %_ZNSt15__new_allocatorIPN4LIEF6SymbolEE8allocateEmPKv.exit.i.i.i.i.i..noexc2_crit_edge ], [ %i.f, %bb.a ] ; 4 uses
  %i.m = phi ptr [ %i.k, %_ZNSt15__new_allocatorIPN4LIEF6SymbolEE8allocateEmPKv.exit.i.i.i.i.i..noexc2_crit_edge ], [ null, %bb.a ] ; 8 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !36
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !73
  %i.q = sub i64 %.pre-phi, %.pre-phi9            ; 4 uses
  %i.r = icmp sgt i64 %i.q, 8
  br i1 %i.r, label %bb.c, label %bb.d, !prof !70

bb.c:                                             ; preds = %.noexc2
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.m, ptr align 8 %i.l, i64 %i.q, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %.noexc2
  %i.s = icmp eq i64 %i.q, 8
  br i1 %i.s, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !39
  store ptr %i.t, ptr %i.m, align 8, !tbaa !39
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.u, ptr %i.n, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.m, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.w, align 8, !tbaa !45
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.x = getelementptr inbounds i8, ptr %i.m, i64 %i.q
  store ptr %i.x, ptr %i.n, align 8, !tbaa !35
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.m, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.z, align 8, !tbaa !45
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4LIEF6SymbolESaIS2_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e
  call void @_ZdlPv(ptr noundef nonnull %i.l) #13
  br label %_ZNSt6vectorIPN4LIEF6SymbolESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4LIEF6SymbolESaIS2_EED2Ev.exit:    ; preds = %bb.e, %bb.f
  ret void

bb.g:                                             ; preds = %_ZNSt15__new_allocatorIPN4LIEF6SymbolEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %2, align 8, !tbaa !36    ; 2 uses
  %.not.i.i.i3 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIPN4LIEF6SymbolESaIS2_EED2Ev.exit4, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdlPv(ptr noundef nonnull %i.ab) #13
  br label %_ZNSt6vectorIPN4LIEF6SymbolESaIS2_EED2Ev.exit4

_ZNSt6vectorIPN4LIEF6SymbolESaIS2_EED2Ev.exit4:   ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %i.aa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4LIEF12ref_iteratorIKSt6vectorIPNS_6SymbolESaIS3_EES3_N9__gnu_cxx17__normal_iteratorIPKS3_S5_EEE5beginEv(ptr dead_on_unwind noalias writable sret(%"class.LIEF::ref_iterator.26") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !36     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIPN4LIEF6SymbolEE8allocateEmPKv.exit.i.i.i.i, !prof !68

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #12
  unreachable

_ZNSt15__new_allocatorIPN4LIEF6SymbolEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #14
  %.pre = load ptr, ptr %1, align 8, !tbaa !40    ; 3 uses
  %.pre11 = load ptr, ptr %i.a, align 8, !tbaa !40 ; 2 uses
  %.pre12 = ptrtoint ptr %.pre11 to i64
  %.pre13 = ptrtoint ptr %.pre to i64
  %i.i = icmp eq ptr %.pre11, %.pre
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIPN4LIEF6SymbolEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi14 = phi i64 [ %.pre13, %_ZNSt15__new_allocatorIPN4LIEF6SymbolEE8allocateEmPKv.exit.i.i.i.i ], [ %i.e, %bb.a ]
  %.pre-phi = phi i64 [ %.pre12, %_ZNSt15__new_allocatorIPN4LIEF6SymbolEE8allocateEmPKv.exit.i.i.i.i ], [ %i.d, %bb.a ]
  %.not.i.i.i.i.i = phi i1 [ %i.i, %_ZNSt15__new_allocatorIPN4LIEF6SymbolEE8allocateEmPKv.exit.i.i.i.i ], [ true, %bb.a ] ; 2 uses
  %i.j = phi ptr [ %.pre, %_ZNSt15__new_allocatorIPN4LIEF6SymbolEE8allocateEmPKv.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.k = phi ptr [ %i.h, %_ZNSt15__new_allocatorIPN4LIEF6SymbolEE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 8 uses
  %i.l = sub i64 %.pre-phi, %.pre-phi14           ; 10 uses
  %i.m = icmp sgt i64 %i.l, 8
  br i1 %i.m, label %bb.d, label %bb.e, !prof !70

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.k, ptr align 8 %i.j, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIPN4LIEF6SymbolESaIS2_EEC2ERKS4_.exit

bb.e:                                             ; preds = %bb.c
  %i.n = icmp eq i64 %i.l, 8
  br i1 %i.n, label %_ZNSt6vectorIPN4LIEF6SymbolESaIS2_EEC2ERKS4_.exit.thread, label %_ZNSt6vectorIPN4LIEF6SymbolESaIS2_EEC2ERKS4_.exit

_ZNSt6vectorIPN4LIEF6SymbolESaIS2_EEC2ERKS4_.exit: ; preds = %bb.d, %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.f

_ZNSt6vectorIPN4LIEF6SymbolESaIS2_EEC2ERKS4_.exit.thread: ; preds = %bb.e
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !39
  store ptr %i.o, ptr %i.k, align 8, !tbaa !39
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %.thread, label %_ZNSt15__new_allocatorIPN4LIEF6SymbolEE8allocateEmPKv.exit.i.i.i.i.i

.thread:                                          ; preds = %_ZNSt6vectorIPN4LIEF6SymbolESaIS2_EEC2ERKS4_.exit.thread, %_ZNSt6vectorIPN4LIEF6SymbolESaIS2_EEC2ERKS4_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = getelementptr inbounds i8, ptr null, i64 %i.l ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.q, ptr %i.r, align 8, !tbaa !73
  br label %bb.i

bb.f:                                             ; preds = %_ZNSt6vectorIPN4LIEF6SymbolESaIS2_EEC2ERKS4_.exit
  %i.s = icmp ugt i64 %i.l, 9223372036854775800
  br i1 %i.s, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIPN4LIEF6SymbolEE8allocateEmPKv.exit.i.i.i.i.i, !prof !71

.noexc.i.i.i:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #12
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIPN4LIEF6SymbolEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIPN4LIEF6SymbolESaIS2_EEC2ERKS4_.exit.thread, %bb.f
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #14
          to label %.noexc2 unwind label %bb.k    ; 7 uses

.noexc2:                                          ; preds = %_ZNSt15__new_allocatorIPN4LIEF6SymbolEE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.t, ptr %0, align 8, !tbaa !36
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.v, ptr %i.w, align 8, !tbaa !73
  %2 = icmp samesign ugt i64 %i.l, 8
  br i1 %2, label %bb.g, label %bb.h, !prof !72

bb.g:                                             ; preds = %.noexc2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.k, i64 %i.l, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %.noexc2
  %i.x = icmp eq i64 %i.l, 8
  br i1 %i.x, label %.thread9, label %bb.i

.thread9:                                         ; preds = %bb.h
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !39
  store ptr %i.y, ptr %i.t, align 8, !tbaa !39
  store ptr %i.v, ptr %i.u, align 8, !tbaa !35
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.t, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.aa, align 8, !tbaa !45
  br label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g, %.thread
  %i.ab = phi ptr [ %i.v, %bb.g ], [ %i.v, %bb.h ], [ %i.q, %.thread ]
  %i.ac = phi ptr [ %i.u, %bb.g ], [ %i.u, %bb.h ], [ %i.p, %.thread ]
  %i.ad = phi ptr [ %i.t, %bb.g ], [ %i.t, %bb.h ], [ null, %.thread ]
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !35
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ad, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.af, align 8, !tbaa !45
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4LIEF6SymbolESaIS2_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.thread9, %bb.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #13
  br label %_ZNSt6vectorIPN4LIEF6SymbolESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4LIEF6SymbolESaIS2_EED2Ev.exit:    ; preds = %bb.i, %bb.j
  ret void

bb.k:                                             ; preds = %_ZNSt15__new_allocatorIPN4LIEF6SymbolEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i3 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIPN4LIEF6SymbolESaIS2_EED2Ev.exit4, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #13
  br label %_ZNSt6vectorIPN4LIEF6SymbolESaIS2_EED2Ev.exit4

_ZNSt6vectorIPN4LIEF6SymbolESaIS2_EED2Ev.exit4:   ; preds = %bb.k, %bb.l
  resume { ptr, i32 } %i.ag
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4LIEF12ref_iteratorIKSt6vectorIPNS_6SymbolESaIS3_EES3_N9__gnu_cxx17__normal_iteratorIPKS3_S5_EEE3endEv(ptr dead_on_unwind noalias writable sret(%"class.LIEF::ref_iterator.26") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !36     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIPN4LIEF6SymbolEE8allocateEmPKv.exit.i.i.i.i, !prof !68

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #12
  unreachable

_ZNSt15__new_allocatorIPN4LIEF6SymbolEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #14
  %.pre = load ptr, ptr %1, align 8, !tbaa !40    ; 3 uses
  %.pre12 = load ptr, ptr %i.a, align 8, !tbaa !40 ; 2 uses
  %.pre13 = ptrtoint ptr %.pre12 to i64
  %.pre14 = ptrtoint ptr %.pre to i64
  %i.i = icmp eq ptr %.pre12, %.pre
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIPN4LIEF6SymbolEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi15 = phi i64 [ %.pre14, %_ZNSt15__new_allocatorIPN4LIEF6SymbolEE8allocateEmPKv.exit.i.i.i.i ], [ %i.e, %bb.a ]
  %.pre-phi = phi i64 [ %.pre13, %_ZNSt15__new_allocatorIPN4LIEF6SymbolEE8allocateEmPKv.exit.i.i.i.i ], [ %i.d, %bb.a ]
  %.not.i.i.i.i.i = phi i1 [ %i.i, %_ZNSt15__new_allocatorIPN4LIEF6SymbolEE8allocateEmPKv.exit.i.i.i.i ], [ true, %bb.a ] ; 2 uses
  %i.j = phi ptr [ %.pre, %_ZNSt15__new_allocatorIPN4LIEF6SymbolEE8allocateEmPKv.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.k = phi ptr [ %i.h, %_ZNSt15__new_allocatorIPN4LIEF6SymbolEE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 8 uses
  %i.l = sub i64 %.pre-phi, %.pre-phi15           ; 10 uses
  %i.m = icmp sgt i64 %i.l, 8
  br i1 %i.m, label %bb.d, label %bb.e, !prof !70

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.k, ptr align 8 %i.j, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIPN4LIEF6SymbolESaIS2_EEC2ERKS4_.exit

bb.e:                                             ; preds = %bb.c
  %i.n = icmp eq i64 %i.l, 8
  br i1 %i.n, label %_ZNSt6vectorIPN4LIEF6SymbolESaIS2_EEC2ERKS4_.exit.thread, label %_ZNSt6vectorIPN4LIEF6SymbolESaIS2_EEC2ERKS4_.exit

_ZNSt6vectorIPN4LIEF6SymbolESaIS2_EEC2ERKS4_.exit: ; preds = %bb.d, %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.f

_ZNSt6vectorIPN4LIEF6SymbolESaIS2_EEC2ERKS4_.exit.thread: ; preds = %bb.e
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !39
  store ptr %i.o, ptr %i.k, align 8, !tbaa !39
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %.thread, label %_ZNSt15__new_allocatorIPN4LIEF6SymbolEE8allocateEmPKv.exit.i.i.i.i.i

.thread:                                          ; preds = %_ZNSt6vectorIPN4LIEF6SymbolESaIS2_EEC2ERKS4_.exit.thread, %_ZNSt6vectorIPN4LIEF6SymbolESaIS2_EEC2ERKS4_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = getelementptr inbounds i8, ptr null, i64 %i.l ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.q, ptr %i.r, align 8, !tbaa !73
  br label %bb.i

bb.f:                                             ; preds = %_ZNSt6vectorIPN4LIEF6SymbolESaIS2_EEC2ERKS4_.exit
  %i.s = icmp ugt i64 %i.l, 9223372036854775800
  br i1 %i.s, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIPN4LIEF6SymbolEE8allocateEmPKv.exit.i.i.i.i.i, !prof !71

.noexc.i.i.i:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #12
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIPN4LIEF6SymbolEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIPN4LIEF6SymbolESaIS2_EEC2ERKS4_.exit.thread, %bb.f
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #14
          to label %.noexc3 unwind label %bb.k    ; 8 uses

.noexc3:                                          ; preds = %_ZNSt15__new_allocatorIPN4LIEF6SymbolEE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.t, ptr %0, align 8, !tbaa !36
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.v, ptr %i.w, align 8, !tbaa !73
  %2 = icmp samesign ugt i64 %i.l, 8
  br i1 %2, label %bb.g, label %bb.h, !prof !72

bb.g:                                             ; preds = %.noexc3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.k, i64 %i.l, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %.noexc3
  %i.x = icmp eq i64 %i.l, 8
  br i1 %i.x, label %.thread10, label %bb.i

.thread10:                                        ; preds = %bb.h
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !39
  store ptr %i.y, ptr %i.t, align 8, !tbaa !39
  store ptr %i.v, ptr %i.u, align 8, !tbaa !35
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.t, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 0, ptr %i.aa, align 8, !tbaa !45
  br label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g, %.thread
  %i.ab = phi ptr [ %i.v, %bb.g ], [ %i.v, %bb.h ], [ %i.q, %.thread ] ; 3 uses
  %i.ac = phi ptr [ %i.u, %bb.g ], [ %i.u, %bb.h ], [ %i.p, %.thread ]
  %i.ad = phi ptr [ %i.t, %bb.g ], [ %i.t, %bb.h ], [ null, %.thread ] ; 3 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !35
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.ad, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store i64 0, ptr %i.af, align 8, !tbaa !45
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4LIEF6SymbolESaIS2_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.thread10, %bb.i
  %i.ag = phi ptr [ %i.aa, %.thread10 ], [ %i.af, %bb.i ]
  %i.ah = phi ptr [ %i.z, %.thread10 ], [ %i.ae, %bb.i ]
  %i.ai = phi ptr [ %i.t, %.thread10 ], [ %i.ad, %bb.i ]
  %i.aj = phi ptr [ %i.v, %.thread10 ], [ %i.ab, %bb.i ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #13
  br label %_ZNSt6vectorIPN4LIEF6SymbolESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4LIEF6SymbolESaIS2_EED2Ev.exit:    ; preds = %bb.i, %bb.j
  %i.ak = phi ptr [ %i.af, %bb.i ], [ %i.ag, %bb.j ]
  %i.al = phi ptr [ %i.ae, %bb.i ], [ %i.ah, %bb.j ]
  %i.am = phi ptr [ %i.ad, %bb.i ], [ %i.ai, %bb.j ]
  %i.an = phi ptr [ %i.ab, %bb.i ], [ %i.aj, %bb.j ] ; 2 uses
  store ptr %i.an, ptr %i.al, align 8, !tbaa !40
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3
  store i64 %i.ar, ptr %i.ak, align 8, !tbaa !45
  ret void

bb.k:                                             ; preds = %_ZNSt15__new_allocatorIPN4LIEF6SymbolEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i4 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIPN4LIEF6SymbolESaIS2_EED2Ev.exit5, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #13
  br label %_ZNSt6vectorIPN4LIEF6SymbolESaIS2_EED2Ev.exit5

_ZNSt6vectorIPN4LIEF6SymbolESaIS2_EED2Ev.exit5:   ; preds = %bb.k, %bb.l
  resume { ptr, i32 } %i.as
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEFlsERSoRKNS_6SymbolE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEFlsERSoRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(60)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4LIEF8FunctionESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !48     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4LIEF8FunctionES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.g, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %.05.i.i) #11, !inline_history !115
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4LIEF8FunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4LIEF8FunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !48
  br label %_ZSt8_DestroyIPN4LIEF8FunctionES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN4LIEF8FunctionES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN4LIEF8FunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.h = phi ptr [ %.pr, %_ZSt8_DestroyIPN4LIEF8FunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN4LIEF8FunctionESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN4LIEF8FunctionES1_EvT_S3_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #13
  br label %_ZNSt12_Vector_baseIN4LIEF8FunctionESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN4LIEF8FunctionESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4LIEF8FunctionES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !53     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.g, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !18 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  tail call void @_ZdlPv(ptr noundef %i.d) #13
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !53
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.h = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #13
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4LIEF6Binary11relocationsEv(ptr dead_on_unwind noalias writable sret(%"class.LIEF::ref_iterator.45") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.46", align 8    ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.46") align 8 %2, ptr noundef nonnull align 8 dereferenceable(88) %1)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !57   ; 2 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !58     ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i.i, label %.noexc2, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.i, 9223372036854775800
  br i1 %i.j, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIPN4LIEF10RelocationEE8allocateEmPKv.exit.i.i.i.i.i, !prof !68

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #12
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIPN4LIEF10RelocationEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #14
          to label %_ZNSt15__new_allocatorIPN4LIEF10RelocationEE8allocateEmPKv.exit.i.i.i.i.i..noexc2_crit_edge unwind label %bb.g

_ZNSt15__new_allocatorIPN4LIEF10RelocationEE8allocateEmPKv.exit.i.i.i.i.i..noexc2_crit_edge: ; preds = %_ZNSt15__new_allocatorIPN4LIEF10RelocationEE8allocateEmPKv.exit.i.i.i.i.i
  %.pre = load ptr, ptr %2, align 8, !tbaa !62    ; 2 uses
  %.pre6 = load ptr, ptr %i.d, align 8, !tbaa !62
  %.pre7 = ptrtoint ptr %.pre6 to i64
  %.pre8 = ptrtoint ptr %.pre to i64
  br label %.noexc2

.noexc2:                                          ; preds = %_ZNSt15__new_allocatorIPN4LIEF10RelocationEE8allocateEmPKv.exit.i.i.i.i.i..noexc2_crit_edge, %bb.a
  %.pre-phi9 = phi i64 [ %.pre8, %_ZNSt15__new_allocatorIPN4LIEF10RelocationEE8allocateEmPKv.exit.i.i.i.i.i..noexc2_crit_edge ], [ %i.h, %bb.a ]
  %.pre-phi = phi i64 [ %.pre7, %_ZNSt15__new_allocatorIPN4LIEF10RelocationEE8allocateEmPKv.exit.i.i.i.i.i..noexc2_crit_edge ], [ %i.g, %bb.a ]
  %i.l = phi ptr [ %.pre, %_ZNSt15__new_allocatorIPN4LIEF10RelocationEE8allocateEmPKv.exit.i.i.i.i.i..noexc2_crit_edge ], [ %i.f, %bb.a ] ; 4 uses
  %i.m = phi ptr [ %i.k, %_ZNSt15__new_allocatorIPN4LIEF10RelocationEE8allocateEmPKv.exit.i.i.i.i.i..noexc2_crit_edge ], [ null, %bb.a ] ; 8 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !58
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !74
  %i.q = sub i64 %.pre-phi, %.pre-phi9            ; 4 uses
  %i.r = icmp sgt i64 %i.q, 8
  br i1 %i.r, label %bb.c, label %bb.d, !prof !70

bb.c:                                             ; preds = %.noexc2
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.m, ptr align 8 %i.l, i64 %i.q, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %.noexc2
  %i.s = icmp eq i64 %i.q, 8
  br i1 %i.s, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !61
  store ptr %i.t, ptr %i.m, align 8, !tbaa !61
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.u, ptr %i.n, align 8, !tbaa !57
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.m, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.w, align 8, !tbaa !67
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.x = getelementptr inbounds i8, ptr %i.m, i64 %i.q
  store ptr %i.x, ptr %i.n, align 8, !tbaa !57
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.m, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.z, align 8, !tbaa !67
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e
  call void @_ZdlPv(ptr noundef nonnull %i.l) #13
  br label %_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EED2Ev.exit: ; preds = %bb.e, %bb.f
  ret void

bb.g:                                             ; preds = %_ZNSt15__new_allocatorIPN4LIEF10RelocationEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %2, align 8, !tbaa !58    ; 2 uses
  %.not.i.i.i3 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EED2Ev.exit4, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdlPv(ptr noundef nonnull %i.ab) #13
  br label %_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EED2Ev.exit4

_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EED2Ev.exit4: ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %i.aa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4LIEF12ref_iteratorIKSt6vectorIPNS_10RelocationESaIS3_EES3_N9__gnu_cxx17__normal_iteratorIPKS3_S5_EEE5beginEv(ptr dead_on_unwind noalias writable sret(%"class.LIEF::ref_iterator.45") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !58     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIPN4LIEF10RelocationEE8allocateEmPKv.exit.i.i.i.i, !prof !68

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #12
  unreachable

_ZNSt15__new_allocatorIPN4LIEF10RelocationEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #14
  %.pre = load ptr, ptr %1, align 8, !tbaa !62    ; 3 uses
  %.pre11 = load ptr, ptr %i.a, align 8, !tbaa !62 ; 2 uses
  %.pre12 = ptrtoint ptr %.pre11 to i64
  %.pre13 = ptrtoint ptr %.pre to i64
  %i.i = icmp eq ptr %.pre11, %.pre
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIPN4LIEF10RelocationEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi14 = phi i64 [ %.pre13, %_ZNSt15__new_allocatorIPN4LIEF10RelocationEE8allocateEmPKv.exit.i.i.i.i ], [ %i.e, %bb.a ]
  %.pre-phi = phi i64 [ %.pre12, %_ZNSt15__new_allocatorIPN4LIEF10RelocationEE8allocateEmPKv.exit.i.i.i.i ], [ %i.d, %bb.a ]
  %.not.i.i.i.i.i = phi i1 [ %i.i, %_ZNSt15__new_allocatorIPN4LIEF10RelocationEE8allocateEmPKv.exit.i.i.i.i ], [ true, %bb.a ] ; 2 uses
  %i.j = phi ptr [ %.pre, %_ZNSt15__new_allocatorIPN4LIEF10RelocationEE8allocateEmPKv.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.k = phi ptr [ %i.h, %_ZNSt15__new_allocatorIPN4LIEF10RelocationEE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 8 uses
  %i.l = sub i64 %.pre-phi, %.pre-phi14           ; 10 uses
  %i.m = icmp sgt i64 %i.l, 8
  br i1 %i.m, label %bb.d, label %bb.e, !prof !70

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.k, ptr align 8 %i.j, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EEC2ERKS4_.exit

bb.e:                                             ; preds = %bb.c
  %i.n = icmp eq i64 %i.l, 8
  br i1 %i.n, label %_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EEC2ERKS4_.exit.thread, label %_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EEC2ERKS4_.exit

_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EEC2ERKS4_.exit: ; preds = %bb.d, %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.f

_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EEC2ERKS4_.exit.thread: ; preds = %bb.e
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !61
  store ptr %i.o, ptr %i.k, align 8, !tbaa !61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %.thread, label %_ZNSt15__new_allocatorIPN4LIEF10RelocationEE8allocateEmPKv.exit.i.i.i.i.i

.thread:                                          ; preds = %_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EEC2ERKS4_.exit.thread, %_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EEC2ERKS4_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = getelementptr inbounds i8, ptr null, i64 %i.l ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.q, ptr %i.r, align 8, !tbaa !74
  br label %bb.i

bb.f:                                             ; preds = %_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EEC2ERKS4_.exit
  %i.s = icmp ugt i64 %i.l, 9223372036854775800
  br i1 %i.s, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIPN4LIEF10RelocationEE8allocateEmPKv.exit.i.i.i.i.i, !prof !71

.noexc.i.i.i:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #12
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIPN4LIEF10RelocationEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EEC2ERKS4_.exit.thread, %bb.f
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #14
          to label %.noexc2 unwind label %bb.k    ; 7 uses

.noexc2:                                          ; preds = %_ZNSt15__new_allocatorIPN4LIEF10RelocationEE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.t, ptr %0, align 8, !tbaa !58
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.v, ptr %i.w, align 8, !tbaa !74
  %2 = icmp samesign ugt i64 %i.l, 8
  br i1 %2, label %bb.g, label %bb.h, !prof !72

bb.g:                                             ; preds = %.noexc2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.k, i64 %i.l, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %.noexc2
  %i.x = icmp eq i64 %i.l, 8
  br i1 %i.x, label %.thread9, label %bb.i

.thread9:                                         ; preds = %bb.h
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !61
  store ptr %i.y, ptr %i.t, align 8, !tbaa !61
  store ptr %i.v, ptr %i.u, align 8, !tbaa !57
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.t, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.aa, align 8, !tbaa !67
  br label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g, %.thread
  %i.ab = phi ptr [ %i.v, %bb.g ], [ %i.v, %bb.h ], [ %i.q, %.thread ]
  %i.ac = phi ptr [ %i.u, %bb.g ], [ %i.u, %bb.h ], [ %i.p, %.thread ]
  %i.ad = phi ptr [ %i.t, %bb.g ], [ %i.t, %bb.h ], [ null, %.thread ]
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !57
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ad, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.af, align 8, !tbaa !67
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.thread9, %bb.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #13
  br label %_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EED2Ev.exit: ; preds = %bb.i, %bb.j
  ret void

bb.k:                                             ; preds = %_ZNSt15__new_allocatorIPN4LIEF10RelocationEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i3 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EED2Ev.exit4, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #13
  br label %_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EED2Ev.exit4

_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EED2Ev.exit4: ; preds = %bb.k, %bb.l
  resume { ptr, i32 } %i.ag
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4LIEF12ref_iteratorIKSt6vectorIPNS_10RelocationESaIS3_EES3_N9__gnu_cxx17__normal_iteratorIPKS3_S5_EEE3endEv(ptr dead_on_unwind noalias writable sret(%"class.LIEF::ref_iterator.45") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !58     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIPN4LIEF10RelocationEE8allocateEmPKv.exit.i.i.i.i, !prof !68

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #12
  unreachable

_ZNSt15__new_allocatorIPN4LIEF10RelocationEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #14
  %.pre = load ptr, ptr %1, align 8, !tbaa !62    ; 3 uses
  %.pre12 = load ptr, ptr %i.a, align 8, !tbaa !62 ; 2 uses
  %.pre13 = ptrtoint ptr %.pre12 to i64
  %.pre14 = ptrtoint ptr %.pre to i64
  %i.i = icmp eq ptr %.pre12, %.pre
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIPN4LIEF10RelocationEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi15 = phi i64 [ %.pre14, %_ZNSt15__new_allocatorIPN4LIEF10RelocationEE8allocateEmPKv.exit.i.i.i.i ], [ %i.e, %bb.a ]
  %.pre-phi = phi i64 [ %.pre13, %_ZNSt15__new_allocatorIPN4LIEF10RelocationEE8allocateEmPKv.exit.i.i.i.i ], [ %i.d, %bb.a ]
  %.not.i.i.i.i.i = phi i1 [ %i.i, %_ZNSt15__new_allocatorIPN4LIEF10RelocationEE8allocateEmPKv.exit.i.i.i.i ], [ true, %bb.a ] ; 2 uses
  %i.j = phi ptr [ %.pre, %_ZNSt15__new_allocatorIPN4LIEF10RelocationEE8allocateEmPKv.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.k = phi ptr [ %i.h, %_ZNSt15__new_allocatorIPN4LIEF10RelocationEE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 8 uses
  %i.l = sub i64 %.pre-phi, %.pre-phi15           ; 10 uses
  %i.m = icmp sgt i64 %i.l, 8
  br i1 %i.m, label %bb.d, label %bb.e, !prof !70

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.k, ptr align 8 %i.j, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EEC2ERKS4_.exit

bb.e:                                             ; preds = %bb.c
  %i.n = icmp eq i64 %i.l, 8
  br i1 %i.n, label %_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EEC2ERKS4_.exit.thread, label %_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EEC2ERKS4_.exit

_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EEC2ERKS4_.exit: ; preds = %bb.d, %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.f

_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EEC2ERKS4_.exit.thread: ; preds = %bb.e
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !61
  store ptr %i.o, ptr %i.k, align 8, !tbaa !61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %.thread, label %_ZNSt15__new_allocatorIPN4LIEF10RelocationEE8allocateEmPKv.exit.i.i.i.i.i

.thread:                                          ; preds = %_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EEC2ERKS4_.exit.thread, %_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EEC2ERKS4_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = getelementptr inbounds i8, ptr null, i64 %i.l ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.q, ptr %i.r, align 8, !tbaa !74
  br label %bb.i

bb.f:                                             ; preds = %_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EEC2ERKS4_.exit
  %i.s = icmp ugt i64 %i.l, 9223372036854775800
  br i1 %i.s, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIPN4LIEF10RelocationEE8allocateEmPKv.exit.i.i.i.i.i, !prof !71

.noexc.i.i.i:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #12
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIPN4LIEF10RelocationEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EEC2ERKS4_.exit.thread, %bb.f
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #14
          to label %.noexc3 unwind label %bb.k    ; 8 uses

.noexc3:                                          ; preds = %_ZNSt15__new_allocatorIPN4LIEF10RelocationEE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.t, ptr %0, align 8, !tbaa !58
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.v, ptr %i.w, align 8, !tbaa !74
  %2 = icmp samesign ugt i64 %i.l, 8
  br i1 %2, label %bb.g, label %bb.h, !prof !72

bb.g:                                             ; preds = %.noexc3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.k, i64 %i.l, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %.noexc3
  %i.x = icmp eq i64 %i.l, 8
  br i1 %i.x, label %.thread10, label %bb.i

.thread10:                                        ; preds = %bb.h
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !61
  store ptr %i.y, ptr %i.t, align 8, !tbaa !61
  store ptr %i.v, ptr %i.u, align 8, !tbaa !57
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.t, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 0, ptr %i.aa, align 8, !tbaa !67
  br label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g, %.thread
  %i.ab = phi ptr [ %i.v, %bb.g ], [ %i.v, %bb.h ], [ %i.q, %.thread ] ; 3 uses
  %i.ac = phi ptr [ %i.u, %bb.g ], [ %i.u, %bb.h ], [ %i.p, %.thread ]
  %i.ad = phi ptr [ %i.t, %bb.g ], [ %i.t, %bb.h ], [ null, %.thread ] ; 3 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !57
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.ad, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store i64 0, ptr %i.af, align 8, !tbaa !67
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.thread10, %bb.i
  %i.ag = phi ptr [ %i.aa, %.thread10 ], [ %i.af, %bb.i ]
  %i.ah = phi ptr [ %i.z, %.thread10 ], [ %i.ae, %bb.i ]
  %i.ai = phi ptr [ %i.t, %.thread10 ], [ %i.ad, %bb.i ]
  %i.aj = phi ptr [ %i.v, %.thread10 ], [ %i.ab, %bb.i ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #13
  br label %_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EED2Ev.exit: ; preds = %bb.i, %bb.j
  %i.ak = phi ptr [ %i.af, %bb.i ], [ %i.ag, %bb.j ]
  %i.al = phi ptr [ %i.ae, %bb.i ], [ %i.ah, %bb.j ]
  %i.am = phi ptr [ %i.ad, %bb.i ], [ %i.ai, %bb.j ]
  %i.an = phi ptr [ %i.ab, %bb.i ], [ %i.aj, %bb.j ] ; 2 uses
  store ptr %i.an, ptr %i.al, align 8, !tbaa !62
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3
  store i64 %i.ar, ptr %i.ak, align 8, !tbaa !67
  ret void

bb.k:                                             ; preds = %_ZNSt15__new_allocatorIPN4LIEF10RelocationEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i4 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EED2Ev.exit5, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #13
  br label %_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EED2Ev.exit5

_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EED2Ev.exit5: ; preds = %bb.k, %bb.l
  resume { ptr, i32 } %i.as
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEFlsERSoRKNS_10RelocationE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(17)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { builtin nounwind }
attributes #14 = { builtin allocsize(0) }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !50}
!1 = distinct !{!1, !50}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"vtable pointer", !6, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!"any pointer", !7, i64 0}
!15 = !{!"p1 omnipotent char", !14, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !15, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !16, i64 0, !13, i64 8, !7, i64 16}
!18 = !{!17, !15, i64 0}
!19 = !{!"any p2 pointer", !14, i64 0}
!20 = !{!"p2 _ZTSN4LIEF7SectionE", !19, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIPN4LIEF7SectionESaIS2_EE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!22 = !{!21, !20, i64 8}
!23 = !{!21, !20, i64 0}
!24 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKPN4LIEF7SectionESt6vectorIS3_SaIS3_EEEE", !20, i64 0}
!25 = !{!"p1 _ZTSN4LIEF7SectionE", !14, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!20, !20, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseIPN4LIEF7SectionESaIS2_EE12_Vector_implE", !21, i64 0}
!29 = !{!"_ZTSSt12_Vector_baseIPN4LIEF7SectionESaIS2_EE", !28, i64 0}
!30 = !{!"_ZTSSt6vectorIPN4LIEF7SectionESaIS2_EE", !29, i64 0}
!31 = !{!"_ZTSN4LIEF12ref_iteratorIKSt6vectorIPNS_7SectionESaIS3_EES3_N9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEE", !30, i64 0, !24, i64 24, !13, i64 32}
!32 = !{!31, !13, i64 32}
!33 = !{!"p2 _ZTSN4LIEF6SymbolE", !19, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseIPN4LIEF6SymbolESaIS2_EE17_Vector_impl_dataE", !33, i64 0, !33, i64 8, !33, i64 16}
!35 = !{!34, !33, i64 8}
!36 = !{!34, !33, i64 0}
!37 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKPN4LIEF6SymbolESt6vectorIS3_SaIS3_EEEE", !33, i64 0}
!38 = !{!"p1 _ZTSN4LIEF6SymbolE", !14, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!33, !33, i64 0}
!41 = !{!"_ZTSNSt12_Vector_baseIPN4LIEF6SymbolESaIS2_EE12_Vector_implE", !34, i64 0}
!42 = !{!"_ZTSSt12_Vector_baseIPN4LIEF6SymbolESaIS2_EE", !41, i64 0}
!43 = !{!"_ZTSSt6vectorIPN4LIEF6SymbolESaIS2_EE", !42, i64 0}
!44 = !{!"_ZTSN4LIEF12ref_iteratorIKSt6vectorIPNS_6SymbolESaIS3_EES3_N9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEE", !43, i64 0, !37, i64 24, !13, i64 32}
!45 = !{!44, !13, i64 32}
!46 = !{!"p1 _ZTSN4LIEF8FunctionE", !14, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseIN4LIEF8FunctionESaIS1_EE17_Vector_impl_dataE", !46, i64 0, !46, i64 8, !46, i64 16}
!48 = !{!47, !46, i64 0}
!49 = !{!47, !46, i64 8}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !51, i64 0, !51, i64 8, !51, i64 16}
!53 = !{!52, !51, i64 0}
!54 = !{!52, !51, i64 8}
!55 = !{!"p2 _ZTSN4LIEF10RelocationE", !19, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseIPN4LIEF10RelocationESaIS2_EE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!57 = !{!56, !55, i64 8}
!58 = !{!56, !55, i64 0}
!59 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKPN4LIEF10RelocationESt6vectorIS3_SaIS3_EEEE", !55, i64 0}
!60 = !{!"p1 _ZTSN4LIEF10RelocationE", !14, i64 0}
!61 = !{!60, !60, i64 0}
!62 = !{!55, !55, i64 0}
!63 = !{!"_ZTSNSt12_Vector_baseIPN4LIEF10RelocationESaIS2_EE12_Vector_implE", !56, i64 0}
!64 = !{!"_ZTSSt12_Vector_baseIPN4LIEF10RelocationESaIS2_EE", !63, i64 0}
!65 = !{!"_ZTSSt6vectorIPN4LIEF10RelocationESaIS2_EE", !64, i64 0}
!66 = !{!"_ZTSN4LIEF12ref_iteratorIKSt6vectorIPNS_10RelocationESaIS3_EES3_N9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEE", !65, i64 0, !59, i64 24, !13, i64 32}
!67 = !{!66, !13, i64 32}
!68 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!69 = !{!21, !20, i64 16}
!70 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!71 = !{!"branch_weights", !"expected", i32 1073473, i32 2146410175}
!72 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!73 = !{!34, !33, i64 16}
!74 = !{!56, !55, i64 16}
!75 = distinct !{!75, !"_ZNK4LIEF6Binary6headerEv"}
!76 = distinct !{!76, !75, !"_ZNK4LIEF6Binary6headerEv: argument 0"}
!77 = distinct !{null}
!78 = distinct !{!78, !"_ZNK4LIEF6Binary18exported_functionsEv"}
!79 = distinct !{!79, !78, !"_ZNK4LIEF6Binary18exported_functionsEv: argument 0"}
end_hunk_0
