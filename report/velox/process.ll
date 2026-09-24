Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/process?download=true
inline.NumInlined: 4081
inline.NumDeleted: 1965
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN5boost7process6detail5posix12exe_cmd_initIcE9cmd_shellEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:._crit_edge.i.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !35
  store i64 %i.l, ptr %i.f, align 8, !tbaa !38
  br label %._crit_edge.i.i15

._crit_edge.i.i15:                                ; preds = %.noexc17, %._crit_edge.i.i
  %i.m = phi ptr [ %i.k, %.noexc17 ], [ %i.f, %._crit_edge.i.i ] ; 2 uses
  switch i64 %i.i, label %bb.b [
    i64 1, label %bb.a
    i64 0, label %bb.c
  ]

bb.a:                                             ; preds = %._crit_edge.i.i15
  %i.n = load i8, ptr %i.g, align 1, !tbaa !38
  store i8 %i.n, ptr %i.m, align 1, !tbaa !38
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %._crit_edge.i.i15
  %i.o = load i64, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.o, ptr %i.p, align 8, !tbaa !39
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.s = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i unwind label %.thread58 ; 4 uses

.thread58:                                        ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.v = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef nonnull %2, ptr noundef nonnull %i.u, ptr noundef nonnull %i.s)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 64) #33
  br label %.body

bb.e:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !37   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !38
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ad = load ptr, ptr %2, align 8, !tbaa !37    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !38
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.aj, ptr %0, align 8, !tbaa !33
  store i64 29400045130965551, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.ak, align 8, !tbaa !39
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.s, ptr %i.al, align 8, !tbaa !78
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.v, ptr %i.am, align 8, !tbaa !79
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ai, ptr %i.an, align 8, !tbaa !80
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  ret void

.body:                                            ; preds = %.thread58, %bb.d
  %i.ap = phi { ptr, i32 } [ %i.t, %.thread58 ], [ %i.w, %bb.d ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !37 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %.body
  %i.au = load i64, ptr %i.as, align 8, !tbaa !38
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  %i.aw = load ptr, ptr %2, align 8, !tbaa !37    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !38
  br label %.thread.sink.split

bb.f:                                             ; preds = %.noexc.i16
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %2, align 8, !tbaa !37    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.f
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !38
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  %.sink63 = phi i64 [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.1 ]
  %.sink = phi ptr [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.1 ]
  %.pn41.ph = phi { ptr, i32 } [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.1 ]
  %i.bf = add i64 %.sink63, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bf) #33
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %.pn41 = phi { ptr, i32 } [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ], [ %i.ba, %bb.f ], [ %.pn41.ph, %.thread.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %.pn41
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5boost7process6detail5posix15build_cmd_shellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOSt6vectorIS8_SaIS8_EE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::iterator_range", align 16 ; 5 uses
  %4 = alloca %"struct.boost::algorithm::detail::first_finderF", align 16 ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !33
  %i.c = load ptr, ptr %1, align 8, !tbaa !37     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !39   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.e, ptr %i.a, align 8, !tbaa !35
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !37
  %i.h = load i64, ptr %i.a, align 8, !tbaa !35
  store i64 %i.h, ptr %i.b, align 8, !tbaa !38
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !38
  store i8 %i.j, ptr %i.i, align 1, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 %i.k, ptr %i.l, align 8, !tbaa !39
  %i.m = load ptr, ptr %0, align 8, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.o = load ptr, ptr %2, align 8, !tbaa !81     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !81   ; 2 uses
  %.not53 = icmp eq ptr %i.o, %i.q
  br i1 %.not53, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %.sroa.038.054 = phi ptr [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store <2 x ptr> <ptr @.str.53, ptr getelementptr inbounds nuw (i8, ptr @.str.53, i64 1)>, ptr %4, align 16
  %i.r = load ptr, ptr %.sroa.038.054, align 8, !tbaa !37 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.038.054, i64 8 ; 5 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !39   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.t
  %.not2633.i.i.i = icmp samesign eq i64 %i.t, 0
  br i1 %.not2633.i.i.i, label %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph, %.critedge15.i.i.i
  %.pn = phi ptr [ %indvars.iv, %.critedge15.i.i.i ], [ %i.r, %.lr.ph ]
  %.sroa.018.034.i.i.i = phi ptr [ %7, %.critedge15.i.i.i ], [ %i.r, %.lr.ph ] ; 4 uses
  %indvars.iv = getelementptr i8, ptr %.pn, i64 1 ; 3 uses
  %5 = load i8, ptr %.sroa.018.034.i.i.i, align 1, !tbaa !38
  %6 = icmp eq i8 %5, 34
  br i1 %6, label %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i, label %.critedge15.i.i.i

.critedge15.i.i.i:                                ; preds = %.lr.ph.preheader.i.i.i
  %7 = getelementptr inbounds nuw i8, ptr %.sroa.018.034.i.i.i, i64 1 ; 2 uses
  %.not26.i.i.i = icmp eq ptr %7, %i.u
  br i1 %.not26.i.i.i, label %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i, label %.lr.ph.preheader.i.i.i, !llvm.loop !13

_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i: ; preds = %.critedge15.i.i.i, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  br label %bb.d

_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %.not.i9.i.i = icmp eq ptr %.sroa.018.034.i.i.i, %indvars.iv
  br i1 %.not.i9.i.i, label %bb.d, label %8

8:                                                ; preds = %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i
  store <2 x ptr> <ptr @.str.54, ptr getelementptr inbounds nuw (i8, ptr @.str.54, i64 2)>, ptr %3, align 16
  invoke void @_ZN5boost9algorithm6detail21find_format_all_impl2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13first_finderFIPKcNS0_8is_equalEEENS1_13const_formatFINS_14iterator_rangeISB_EEEENSF_IN9__gnu_cxx17__normal_iteratorIPcS8_EEEESG_EEvRT_T0_T1_T2_T3_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.038.054, ptr noundef nonnull byval(%"struct.boost::algorithm::detail::first_finderF") align 8 %4, ptr nonnull @.str.54, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 2), ptr nonnull %.sroa.018.034.i.i.i, ptr nonnull %indvars.iv, ptr noundef nonnull byval(%"class.boost::iterator_range") align 8 %3)
          to label %._crit_edge62 unwind label %bb.p

._crit_edge62:                                    ; preds = %8
  %.pre = load ptr, ptr %.sroa.038.054, align 8, !tbaa !37
  %.pre63 = load i64, ptr %i.s, align 8, !tbaa !39
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge62, %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i, %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i
  %9 = phi i64 [ %.pre63, %._crit_edge62 ], [ %i.t, %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i ], [ %i.t, %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i ] ; 3 uses
  %10 = phi ptr [ %.pre, %._crit_edge62 ], [ %i.r, %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i ], [ %i.r, %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 %9 ; 3 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ashr i64 %9, 2                           ; 2 uses
  %i.y = icmp sgt i64 %i.x, 0
  br i1 %i.y, label %.lr.ph.i.i.i20, label %._crit_edge.i.i.i

.lr.ph.i.i.i20:                                   ; preds = %bb.d
  %i.z = and i64 %9, -4
  %scevgep.i.i.i = getelementptr i8, ptr %10, i64 %i.z
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.lr.ph.i.i.i20
  %.052.i.i.i = phi i64 [ %i.x, %.lr.ph.i.i.i20 ], [ %i.am, %bb.i ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %10, %.lr.ph.i.i.i20 ], [ %i.al, %bb.i ] ; 9 uses
  %i.aa = load i8, ptr %.sroa.032.051.i.i.i, align 1, !tbaa !38
  %i.ab = icmp eq i8 %i.aa, 32
  br i1 %i.ab, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SA_SA_RKT0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !38
  %i.ae = icmp eq i8 %i.ad, 32
  br i1 %i.ae, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SA_SA_RKT0_.exit.loopexit.split.loop.exit81, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 2
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !38
  %i.ah = icmp eq i8 %i.ag, 32
  br i1 %i.ah, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SA_SA_RKT0_.exit.loopexit.split.loop.exit79, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 3
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !38
  %i.ak = icmp eq i8 %i.aj, 32
  br i1 %i.ak, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SA_SA_RKT0_.exit.loopexit.split.loop.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  %i.am = add nsw i64 %.052.i.i.i, -1
  %i.an = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.an, label %bb.e, label %._crit_edge.i.i.i, !llvm.loop !552

._crit_edge.i.i.i:                                ; preds = %bb.i, %bb.d
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %10, %bb.d ], [ %scevgep.i.i.i, %bb.i ] ; 6 uses
  %.pre-phi.i.i.i = ptrtoint ptr %.sroa.032.0.lcssa.i.i.i to i64
  %i.ao = sub i64 %i.w, %.pre-phi.i.i.i
  switch i64 %i.ao, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SA_SA_RKT0_.exit.thread [
    i64 3, label %bb.j
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.ap = load i8, ptr %.sroa.032.0.lcssa.i.i.i, align 1, !tbaa !38
  %i.aq = icmp eq i8 %i.ap, 32
  br i1 %i.aq, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SA_SA_RKT0_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 1
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.k
  %.sroa.032.1.i.i.i = phi ptr [ %i.ar, %bb.k ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.as = load i8, ptr %.sroa.032.1.i.i.i, align 1, !tbaa !38
  %i.at = icmp eq i8 %i.as, 32
  br i1 %i.at, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SA_SA_RKT0_.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 1
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.l
  %.sroa.032.2.i.i.i = phi ptr [ %i.au, %bb.l ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.av = load i8, ptr %.sroa.032.2.i.i.i, align 1, !tbaa !38
  %i.aw = icmp eq i8 %i.av, 32
  %spec.select.i.i.i = select i1 %i.aw, ptr %.sroa.032.2.i.i.i, ptr %i.v
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SA_SA_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SA_SA_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 3
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SA_SA_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SA_SA_RKT0_.exit.loopexit.split.loop.exit79: ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 2
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SA_SA_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SA_SA_RKT0_.exit.loopexit.split.loop.exit81: ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 1
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SA_SA_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SA_SA_RKT0_.exit: ; preds = %bb.e, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SA_SA_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SA_SA_RKT0_.exit.loopexit.split.loop.exit79, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SA_SA_RKT0_.exit.loopexit.split.loop.exit81, %._crit_edge._crit_edge57.i.i.i, %._crit_edge._crit_edge.i.i.i, %bb.j
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.j ], [ %i.az, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SA_SA_RKT0_.exit.loopexit.split.loop.exit81 ], [ %i.ay, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SA_SA_RKT0_.exit.loopexit.split.loop.exit79 ], [ %i.ax, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SA_SA_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.e ]
  %.not42 = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.v
  br i1 %.not42, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SA_SA_RKT0_.exit.thread, label %bb.m

bb.m:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SA_SA_RKT0_.exit
  %i.ba = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.038.054, i64 noundef 0, i64 noundef 0, i64 noundef 1, i8 noundef signext 34)
          to label %bb.n unwind label %bb.q       ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.bb = load ptr, ptr %.sroa.038.054, align 8, !tbaa !37 ; 2 uses
  %i.bc = load i64, ptr %i.s, align 8, !tbaa !39  ; 4 uses
  %i.bd = add i64 %i.bc, 1                        ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.038.054, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bb, %i.be
  br i1 %i.bf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.n
  %i.bg = icmp ult i64 %i.bc, 16
  call void @llvm.assume(i1 %i.bg)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.n
  %i.bh = load i64, ptr %i.be, align 8, !tbaa !38
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.bi = phi i64 [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.bj = icmp ugt i64 %i.bd, %i.bi
  br i1 %i.bj, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.038.054, i64 noundef %i.bc, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc22 unwind label %.loopexit

.noexc22:                                         ; preds = %bb.o
  %.pre.i.i = load ptr, ptr %.sroa.038.054, align 8, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %.noexc22
  %i.bk = phi ptr [ %.pre.i.i, %.noexc22 ], [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bc
  store i8 34, ptr %i.bl, align 1, !tbaa !38
  store i64 %i.bd, ptr %i.s, align 8, !tbaa !39
  %i.bm = load ptr, ptr %.sroa.038.054, align 8, !tbaa !37
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bd
  store i8 0, ptr %i.bn, align 1, !tbaa !38
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SA_SA_RKT0_.exit.thread

bb.p:                                             ; preds = %8
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.q:                                             ; preds = %bb.m
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.loopexit:                                        ; preds = %bb.o, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.loopexit.split-lp:                               ; preds = %bb.u
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SA_SA_RKT0_.exit.thread: ; preds = %._crit_edge.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SA_SA_RKT0_.exit
  %i.bq = load i64, ptr %i.l, align 8, !tbaa !39  ; 5 uses
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SA_SA_RKT0_.exit.thread
  %i.bs = add i64 %i.bq, 1                        ; 3 uses
  %i.bt = load ptr, ptr %0, align 8, !tbaa !37    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.b
  br i1 %i.bu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i26: ; preds = %bb.r
  %i.bv = icmp ult i64 %i.bq, 16
  call void @llvm.assume(i1 %i.bv)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23: ; preds = %bb.r
  %i.bw = load i64, ptr %i.b, align 8, !tbaa !38
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i24: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i26
  %i.bx = phi i64 [ %i.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i26 ]
  %i.by = icmp ugt i64 %i.bs, %i.bx
  br i1 %i.by, label %bb.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit28

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bq, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc27 unwind label %.loopexit

.noexc27:                                         ; preds = %bb.s
  %.pre.i.i25 = load ptr, ptr %0, align 8, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit28: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i24, %.noexc27
  %i.bz = phi ptr [ %.pre.i.i25, %.noexc27 ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i24 ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bq
  store i8 32, ptr %i.ca, align 1, !tbaa !38
  store i64 %i.bs, ptr %i.l, align 8, !tbaa !39
  %i.cb = load ptr, ptr %0, align 8, !tbaa !37
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bs
  store i8 0, ptr %i.cc, align 1, !tbaa !38
  %.pre64 = load i64, ptr %i.l, align 8, !tbaa !39
  %i.cd = sub i64 4611686018427387903, %.pre64
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit28, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SA_SA_RKT0_.exit.thread
  %i.ce = phi i64 [ %i.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit28 ], [ 4611686018427387903, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SA_SA_RKT0_.exit.thread ]
  %i.cf = load i64, ptr %i.s, align 8, !tbaa !39  ; 2 uses
  %i.cg = icmp ult i64 %i.ce, %i.cf
  br i1 %i.cg, label %bb.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #32
          to label %.noexc29 unwind label %.loopexit.split-lp

.noexc29:                                         ; preds = %bb.u
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.t
  %i.ch = load ptr, ptr %.sroa.038.054, align 8, !tbaa !37
  %i.ci = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ch, i64 noundef %i.cf)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.038.054, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.cj, %i.q
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.v:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.q, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.bo, %bb.p ], [ %i.bp, %bb.q ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ck = load ptr, ptr %0, align 8, !tbaa !37    ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.b
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.v
  %i.cm = load i64, ptr %i.b, align 8, !tbaa !38
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5boost9algorithm6detail21find_format_all_impl2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13first_finderFIPKcNS0_8is_equalEEENS1_13const_formatFINS_14iterator_rangeISB_EEEENSF_IN9__gnu_cxx17__normal_iteratorIPcS8_EEEESG_EEvRT_T0_T1_T2_T3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef byval(%"struct.boost::algorithm::detail::first_finderF") align 8 %1, ptr %2, ptr %3, ptr %4, ptr %5, ptr noundef byval(%"class.boost::iterator_range") align 8 %6) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.std::_Deque_iterator", align 8 ; 6 uses
  %8 = alloca %"struct.std::_Deque_iterator", align 8 ; 6 uses
  %9 = alloca %"struct.boost::algorithm::detail::process_segment_helper", align 1 ; 3 uses
  %10 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %11 = alloca %"struct.boost::algorithm::detail::process_segment_helper", align 1 ; 3 uses
  %12 = alloca %"class.std::deque", align 8       ; 22 uses
  %.sroa.10.16.copyload = load ptr, ptr %6, align 8
  %.sroa.13.16..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.13.16.copyload = load ptr, ptr %.sroa.13.16..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %12, i8 0, i64 80, i1 false)
  call void @_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %12, i64 noundef 0)
  %i.a = load ptr, ptr %0, align 8, !tbaa !37     ; 5 uses
  %.not.i59 = icmp eq ptr %4, %5
  br i1 %.not.i59, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !39
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %12, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeIPKcEEEESH_EaSINSE_ISC_EEEERSJ_T_.exit
  %.sroa.017.065 = phi ptr [ %i.a, %.lr.ph ], [ %i.i, %_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeIPKcEEEESH_EaSINSE_ISC_EEEERSJ_T_.exit ]
  %.sroa.016.064 = phi ptr [ %i.a, %.lr.ph ], [ %.sroa.7.061, %_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeIPKcEEEESH_EaSINSE_ISC_EEEERSJ_T_.exit ]
  %.sroa.13.063 = phi ptr [ %.sroa.13.16.copyload, %.lr.ph ], [ %spec.select52, %_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeIPKcEEEESH_EaSINSE_ISC_EEEERSJ_T_.exit ] ; 2 uses
  %.sroa.10.062 = phi ptr [ %.sroa.10.16.copyload, %.lr.ph ], [ %spec.select, %_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeIPKcEEEESH_EaSINSE_ISC_EEEERSJ_T_.exit ] ; 2 uses
  %.sroa.7.061 = phi ptr [ %5, %.lr.ph ], [ %.sroa.0.0.lcssa.ph.i, %_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeIPKcEEEESH_EaSINSE_ISC_EEEERSJ_T_.exit ] ; 7 uses
  %.sroa.040.060 = phi ptr [ %4, %.lr.ph ], [ %.sroa.018.034.i, %_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeIPKcEEEESH_EaSINSE_ISC_EEEERSJ_T_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.i = invoke ptr @_ZN5boost9algorithm6detail22process_segment_helperILb0EEclISt5dequeIcSaIcEENSt7__cxx1112basic_stringIcSt11char_traitsIcES6_EEN9__gnu_cxx17__normal_iteratorIPcSC_EEEET1_RT_RT0_SH_SH_SH_(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 8 dereferenceable(80) %12, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %.sroa.017.065, ptr %.sroa.016.064, ptr %.sroa.040.060)
          to label %bb.c unwind label %bb.f       ; 5 uses

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !213, !noalias !563
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !214, !noalias !563 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.experimental.noalias.scope.decl(metadata !564)
  store ptr %i.j, ptr %10, align 8, !tbaa !213, !alias.scope !564, !noalias !565
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !99, !noalias !566 ; 2 uses
  store ptr %i.l, ptr %i.d, align 8, !tbaa !215, !alias.scope !564, !noalias !565
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 512
  store ptr %i.m, ptr %i.e, align 8, !tbaa !216, !alias.scope !564, !noalias !565
  store ptr %i.k, ptr %i.f, align 8, !tbaa !214, !alias.scope !564, !noalias !565
  invoke void @_ZNSt5dequeIcSaIcEE19_M_range_insert_auxIPKcEEvSt15_Deque_iteratorIcRcPcET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(80) %12, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef %.sroa.10.062, ptr noundef %.sroa.13.063)
          to label %bb.d unwind label %.loopexit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.n = load ptr, ptr %0, align 8, !tbaa !37     ; 5 uses
  %i.o = load i64, ptr %i.g, align 8, !tbaa !39   ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o ; 3 uses
  %.not2633.i = icmp eq ptr %.sroa.7.061, %i.p
  br i1 %.not2633.i, label %._crit_edge, label %.lr.ph35.i

.lr.ph35.i:                                       ; preds = %bb.d
  %i.q = load ptr, ptr %1, align 8, !tbaa !179    ; 2 uses
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !180  ; 3 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %._crit_edge, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph35.i, %.critedge15.i
  %.sroa.018.034.i = phi ptr [ %i.z, %.critedge15.i ], [ %.sroa.7.061, %.lr.ph35.i ] ; 5 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %.01228.i = phi ptr [ %i.x, %bb.e ], [ %i.q, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.0.027.i = phi ptr [ %i.w, %bb.e ], [ %.sroa.018.034.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.t = load i8, ptr %.sroa.0.027.i, align 1, !tbaa !38
  %i.u = load i8, ptr %.01228.i, align 1, !tbaa !38
  %i.v = icmp eq i8 %i.t, %i.u
  br i1 %i.v, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i, i64 1 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01228.i, i64 1 ; 3 uses
  %i.y = icmp eq ptr %i.w, %i.p
  %.not.i33 = icmp eq ptr %i.x, %i.r
  %or.cond.i = select i1 %i.y, i1 true, i1 %.not.i33
  br i1 %or.cond.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !14

.critedge.i:                                      ; preds = %bb.e, %.lr.ph.i
  %.sroa.0.0.lcssa.ph.i = phi ptr [ %.sroa.0.027.i, %.lr.ph.i ], [ %i.w, %bb.e ] ; 3 uses
  %.012.lcssa.ph.i = phi ptr [ %.01228.i, %.lr.ph.i ], [ %i.x, %bb.e ]
end_hunk_0
